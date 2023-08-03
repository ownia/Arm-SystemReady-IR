#uefi firmware image
cp $PWD/edk2/Build/ArmVirtQemu-AARCH64/RELEASE_GCC5/FV/QEMU_EFI.fd flash0.img
truncate -s 64M flash0.img
#empty the flash for efi var store
truncate -s 64M flash1.img
