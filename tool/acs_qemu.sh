#!/bin/sh

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

ACS_PATH=/data_nvme0n1/acs

# QEMU
QEMU=$ACS_PATH/qemu-system-aarch64
# U-Boot, TF-A, OP-TEE
BIOS=$ACS_PATH/flash.bin
# GPT, ESP, rootfs
DISK=$ACS_PATH/disk.img
# IR ACS image
IMAGE=$ACS_PATH/ir-acs-live-image-genericarm64.wic
# flash0 for QEMU_EFI.fd
FLASH0=$ACS_PATH/flash0.img
# flash1 for efi var install
FLASH1=$ACS_PATH/flash1.img
# An Ext4 partition for file transfer
TRANS=$ACS_PATH/trans.img
# A simulated raw partition
MMCBLK0=$ACS_PATH/mmcblk0.bin
PWD=`pwd`
TPMSOCK=/tmp/swtpm-sock$$

if [ -e qemu.dtb ];
then
echo "qemu.dtb exist"
DTB="--dtb qemu.dtb"
else
echo "qemu.dtb not exist"
fi

if [ "$1" = "sie" ];
then
echo "Creating TPM Emulator socket"
[ -e /tmp/tpm ] || mkdir /tmp/tpm
swtpm socket --tpm2 -t -d --tpmstate dir=/tmp/tpm --ctrl type=unixio,path=$TPMSOCK --log level=20
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
	-nographic \
	-drive file=$TRANS,format=raw \
	#-chardev stdio,id=char0,logfile=qemu-console.log,signal=on \
	#-serial chardev:char0 \
	# -display none
elif [ "$1" = "sie_new" ];
then
echo "Creating TPM Emulator socket"
[ -e /tmp/tpm ] || mkdir /tmp/tpm
swtpm socket --tpm2 -t -d --tpmstate dir=/tmp/tpm --ctrl type=unixio,path=$TPMSOCK --log level=20
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
	-drive file=$DISK,if=none,format=raw,id=hd1 \
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
	#-chardev stdio,id=char0,logfile=qemu-console.log,signal=on \
	#-serial chardev:char0 \
else
echo "Creating TPM Emulator socket"
[ -e /tmp/tpm ] || mkdir /tmp/tpm
swtpm socket --tpm2 -t -d --tpmstate dir=/tmp/tpm --ctrl type=unixio,path=$TPMSOCK --log level=20
echo $TPMSOCK
echo "Running QEMU"
$QEMU \
	-bios $BIOS \
	-cpu cortex-a57 -smp 2 -m 2048 -M virt,secure=on,acpi=off \
	$DTB \
	-d unimp \
	-device virtio-blk-device,drive=hd1 \
	-device virtio-blk-device,drive=hd0 \
	-device virtio-net-device,netdev=eth0 \
	-device virtio-rng-device,rng=rng0 \
	-drive file=$IMAGE,if=none,format=raw,id=hd0 \
	-drive file=$DISK,if=none,format=raw,id=hd1 \
	-device sdhci-pci \
	-device sd-card,drive=sd0 \
	-drive id=sd0,if=none,format=raw,file=$MMCBLK0 \
	-chardev socket,id=chrtpm,path=$TPMSOCK \
	-tpmdev emulator,id=tpm0,chardev=chrtpm \
	-device tpm-tis-device,tpmdev=tpm0 \
	-monitor null \
	-netdev user,id=eth0 \
	-nodefaults \
	-nographic \
	-object rng-random,filename=/dev/urandom,id=rng0 \
	-rtc base=utc,clock=host \
	-drive file=$TRANS,format=raw \
	-chardev stdio,id=char0,logfile=qemu-console.log,signal=on \
	-serial chardev:char0
fi
