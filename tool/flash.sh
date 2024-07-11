BUILDROOT=/data_sda/buildroot/
TARGET=/home/weiouy01/code

# update image/binary
cp -f $BUILDROOT/output/host/bin/qemu-system-aarch64 $TARGET/qemu-system-aarch64
cp -f $BUILDROOT/output/images/flash.bin $TARGET/flash.bin
cp -f $BUILDROOT/output/images/disk.img $TARGET/disk.img

# clear source image/binary
rm -f $BUILDROOT/output/images/u-boot.bin
rm -f $BUILDROOT/output/images/flash.bin
rm -f $BUILDROOT/output/images/disk.img
