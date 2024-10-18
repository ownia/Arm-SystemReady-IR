#!/bin/sh

DPATH=/data_sda

# Clear files
rm -rf CRT.crt CRT.esl CRT.key test.its tests.itb \
	capsule1.bin signed_capsule.bin unauth.bin tampered.bin \
	signature.dts signature.dtbo signature.dts qemu.dtb

# Generate tests.itb
cat << EOF > test.its
/dts-v1/;
/ {
     description = "Automatic U-Boot update";
     \#address-cells = <1>;
     images {
             flash.bin {
                     description = "U-Boot binary";
                     data = /incbin/("$DPATH/buildroot/output/images/flash.bin");
                     compression = "none";
                     type = "firmware";
                     arch = "arm64";
                     load = <0>;
                     hash-1 {
                             algo = "sha1";
                     };
             };
     };
};
EOF
$DPATH/u-boot/tools/mkimage -f test.its tests.itb

# Create keys and certificate files
openssl req -x509 -sha256 -newkey rsa:2048 -subj /CN=CRT/ -keyout CRT.key -out CRT.crt -nodes -days 365
cert-to-efi-sig-list CRT.crt CRT.esl

# Generate signed capsule.bin
mkeficapsule \
	--index 1 \
	--instance 0 \
	--guid 058B7D83-50D5-4C47-A195-60D86AD341C4 \
	"tests.itb" \
	"capsule1.bin"
mkeficapsule \
	--monotonic-count 1 \
	--private-key "CRT.key" \
	--certificate "CRT.crt" \
	--index 1 \
	--guid 058B7D83-50D5-4C47-A195-60D86AD341C4 \
	"tests.itb" \
	"signed_capsule.bin"

# Generate unsigned capsule.bin and tampered capsule.bin
python3 $DPATH/systemready-scripts/capsule-tool.py --de-authenticate --output unauth.bin signed_capsule.bin
python3 $DPATH/systemready-scripts/capsule-tool.py --tamper --output tampered.bin signed_capsule.bin

# Overlay signature to qemu.dtb
cat << EOF > signature.dts
/dts-v1/;
/plugin/;
&{/} {
     signature {
                capsule-key = /incbin/("CRT.esl");
     };
};
EOF
$DPATH/acs/qemu-system-aarch64 -M virt,secure=on,acpi=off,dumpdtb=qemu.dtb -cpu cortex-a57
dtc -@ -I dts -O dtb -o signature.dtbo signature.dts
fdtoverlay -i qemu.dtb -o qemu.dtb -v signature.dtbo

# Copy files to storage
mkdir tmp/
sudo mount $DPATH/acs/trans.img tmp/
sudo cp -f capsule1.bin signed_capsule.bin unauth.bin tampered.bin tmp/
sync tmp/
sudo umount tmp/
rm -rf tmp/

