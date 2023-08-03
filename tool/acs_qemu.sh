<< EOF
- Deprecated QEMU Build

1. Build qemu-system-aarch64
	git clone https://github.com/qemu/qemu.git
	cd qemu/
	./configure --enable-slirp
	make
2. Get nor_flash.bin
	mkdir -p ~/.bin
	PATH="${HOME}/.bin:${PATH}"
	curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
	chmod a+rx ~/.bin/repo
	# download toolchian from https://developer.arm.com/downloads/-/gnu-a
	mkdir norflash
	cd norflash
	repo init -u https://github.com/glikely/u-boot-manifest
	repo sync
	export CROSS_COMPILE=<path to gcc-arm-xxxx-x86_64-aarch64-none-elf/bin/aarch64-none-elf->
	cd u-boot
	git checkout v2023.01
	cd ..
	make qemu_arm64_defconfig
	make

QEMU=/home/weiouy01/code/qemu/build/qemu-system-aarch64
BIOS=/home/weiouy01/code/norflash/nor_flash.bin


- Using Buildroot Instructions

	git clone https://git.buildroot.net/buildroot -b 2023.05.x
	cd buildroot
	make qemu_aarch64_ebbr_defconfig
	make

When the build completes, it generates the firmware file output/images/flash.bin, comprising TF-A, OP-TEE and the U-Boot bootloader
A QEMU executable is also generated at output/host/bin/qemu-system-aarch64
Specific information for this Buildroot configuration is available in board/qemu/aarch64-ebbr/readme.txt
EOF

QEMU=/home/weiouy01/code/tmp/buildroot/output/host/bin/qemu-system-aarch64
BIOS=/home/weiouy01/code/tmp/buildroot/output/images/flash.bin
ESP=/home/weiouy01/code/tmp/buildroot/output/images/disk.img
FLASH0=/home/weiouy01/code/sie_edk2/flash0.img
FLASH1=/home/weiouy01/code/sie_edk2/flash1.img
IMAGE=/home/weiouy01/code/ir-acs-live-image-generic-arm64.wic
#ESP=/home/weiouy01/code/esp.img
TRANS=/home/weiouy01/code/disk.img
PWD=`pwd`
TPMSOCK=/tmp/swtpm-sock$$


if [ "$1" = "sie" ];
then
echo "Creating TPM Emulator socket"
[ -e $PWD/tpm ] || mkdir $PWD/tpm
swtpm socket --tpm2 -t -d --tpmstate dir=$PWD/tpm --ctrl type=unixio,path=$TPMSOCK
echo $TPMSOCK
echo "Running QEMU on SIE"
$QEMU \
	-cpu cortex-a57 -smp 2 -m 2048 -M virt \
	-machine acpi=off \
	-device virtio-net-pci,netdev=net0,romfile="" \
	-netdev type=user,id=net0 \
	-drive file=$FLASH0,if=pflash,format=raw,readonly=on \
	-drive file=$FLASH1,if=pflash,format=raw \
	-chardev socket,id=chrtpm,path=$TPMSOCK \
	-tpmdev emulator,id=tpm0,chardev=chrtpm \
	-device tpm-tis-device,tpmdev=tpm0 \
	-device virtio-blk-pci,drive=hd0 \
	-drive file=$IMAGE,if=none,format=raw,id=hd0 \
	-drive file=$TRANS,format=raw \
	-chardev stdio,id=char0,logfile=console.log,signal=on \
	-serial chardev:char0 \
	# -display none -nographic
elif [ "$1" = "sie_new" ];
then
echo "Creating TPM Emulator socket"
[ -e $PWD/tpm ] || mkdir $PWD/tpm
swtpm socket --tpm2 -t -d --tpmstate dir=$PWD/tpm --ctrl type=unixio,path=$TPMSOCK
echo $TPMSOCK
echo "Running QEMU on SIE"
$QEMU \
	-cpu cortex-a57 -smp 2 -m 2048 -M virt \
	-d unimp,guest_errors \
	-device virtio-blk-pci,drive=hd0 \
	-device virtio-blk-pci,drive=hd1 \
	-device virtio-net-pci,netdev=net0,romfile="" \
	-device virtio-rng-device,rng=rng0 \
	-netdev type=user,id=net0 \
	-object rng-random,filename=/dev/urandom,id=rng0 \
	-drive file=$IMAGE,if=none,format=raw,id=hd0 \
	-drive file=$ESP,if=none,format=raw,id=hd1 \
	-machine secure=on,acpi=off \
	-display none \
	-rtc base=utc,clock=host \
	-drive file=$FLASH0,if=pflash,format=raw,readonly=on \
	-drive file=$FLASH1,if=pflash,format=raw \
	-chardev socket,id=chrtpm,path=$TPMSOCK \
	-tpmdev emulator,id=tpm0,chardev=chrtpm, \
	-device tpm-tis-device,tpmdev=tpm0 \
	-drive file=$TRANS,format=raw \
	-monitor null -nodefaults \
	-serial stdio \
	#-chardev stdio,id=char0,logfile=console.log,signal=on \
	#-serial chardev:char0 \
elif [ "$1" = "check" ];
then
	echo "Check SR results"
	python3 systemready-scripts/check-sr-results.py --dir test --debug 2>&1 | tee check-sr-result.log
else
echo "Running QEMU"
$QEMU \
	-bios $BIOS \
	-cpu cortex-a57 -smp 2 -m 2048 -M virt,secure=on,acpi=off \
	-d unimp,guest_errors \
	-device virtio-blk-device,drive=hd1 \
	-device virtio-blk-device,drive=hd0 \
	-device virtio-net-device,netdev=eth0 \
	-device virtio-rng-device,rng=rng0 \
	-drive file=$IMAGE,if=none,format=raw,id=hd0 \
	-drive file=$ESP,if=none,format=raw,id=hd1 \
	-monitor null \
	-netdev user,id=eth0 \
	-nodefaults \
	-nographic \
	-object rng-random,filename=/dev/urandom,id=rng0 \
	-rtc base=utc,clock=host \
	-drive file=$TRANS,format=raw \
	-chardev stdio,id=char0,logfile=console.log,signal=on \
	-serial chardev:char0
fi
