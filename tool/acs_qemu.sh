QEMU=/home/weiouy01/code/qemu/build/qemu-system-aarch64
BIOS=/home/weiouy01/code/norflash/nor_flash.bin
FLASH0=/home/weiouy01/code/sie_edk2/flash0.img
FLASH1=/home/weiouy01/code/sie_edk2/flash1.img
IMAGE=/home/weiouy01/code/ir-acs-live-image-generic-arm64.wic
ESP=/home/weiouy01/code/esp.img
TRANS=/home/weiouy01/code/disk.img
PWD=`pwd`
TPMSOCK=/tmp/swtpm-sock$$


if [ $1 = "sie" ]
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
	#-nographic
elif [ $1 = "check" ]
then
	echo "Check SR results"
	python3 systemready-scripts/check-sr-results.py --dir test --debug 2>&1 | tee check-sr-result.log
else
echo "Running QEMU"
$QEMU \
	-bios $BIOS\
	-drive file=$IMAGE,if=virtio,format=raw,id=hd0 \
	-cpu cortex-a57 -smp 2 -m 2048 -M virt,secure=on \
	-monitor null -nodefaults -nographic \
	-machine acpi=off \
	-device virtio-net-pci,netdev=net0,romfile="" \
	-netdev type=user,id=net0 \
	-rtc base=utc,clock=host \
	-serial stdio -d unimp,guest_errors \
	-machine virtualization=on \
	-drive file=$ESP,if=none,format=raw,id=hd1 \
	-drive file=$TRANS,format=raw \
	-object rng-random,filename=/dev/urandom,id=rng0
fi

