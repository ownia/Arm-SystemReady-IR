# Clear files
rm -rf CRT.crt CRT.esl CRT.key test.its tests.itb \
	signed_capsule.bin unauth.bin tampered.bin \
	signature.dts signature.dtbo signature.dts qemu.dtb

# Generate tests.itb
cat << EOF > test.its
/dts-v1/;
/ {
     description = "Automatic U-Boot update";
     \#address-cells = <1>;
     images {
             u-boot.bin {
                     description = "U-Boot binary";
                     data = /incbin/("/home/weiouy01/code/buildroot/output/build/uboot-2023.01/u-boot.bin");
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
/home/weiouy01/code/u-boot/tools/mkimage -f test.its tests.itb

# Create keys and certificate files
openssl req -x509 -sha256 -newkey rsa:2048 -subj /CN=CRT/ -keyout CRT.key -out CRT.crt -nodes -days 365
cert-to-efi-sig-list CRT.crt CRT.esl

# Generate signed capsule.bin
/home/weiouy01/code/u-boot/tools/mkeficapsule --monotonic-count 1 \
	--private-key "CRT.key" \
	--certificate "CRT.crt" \
	--index 1 \
	--guid 058B7D83-50D5-4C47-A195-60D86AD341C4 \
	"tests.itb" \
	"signed_capsule.bin"

# Generate unsigned capsule.bin and tampered capsule.bin
python3 /home/weiouy01/code/systemready-scripts/capsule-tool.py --de-authenticate --output unauth.bin signed_capsule.bin
python3 /home/weiouy01/code/systemready-scripts/capsule-tool.py --tamper --output tampered.bin signed_capsule.bin

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
/home/weiouy01/code/buildroot/output/host/bin/qemu-system-aarch64 -M virt,secure=on,acpi=off,dumpdtb=qemu.dtb -cpu cortex-a57
dtc -@ -I dts -O dtb -o signature.dtbo signature.dts
fdtoverlay -i qemu.dtb -o qemu.dtb -v signature.dtbo

# Copy files to storage
mkdir tmp/
sudo mount /home/weiouy01/code/disk.img tmp/
sudo cp signed_capsule.bin unauth.bin tampered.bin tmp/
sync tmp/
sudo umount tmp/
rm -rf tmp/

