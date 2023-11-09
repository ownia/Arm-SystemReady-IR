export WORKSPACE=$PWD/edk2
export PACKAGES_PATH=$PWD/edk2:$PWD/edk2-platforms:$PWD/edk2-non-osi
. edk2/edksetup.sh
make -C edk2/BaseTools
NUM_CPUS=$((`getconf _NPROCESSORS_ONLN` + 2))
export GCC5_AARCH64_PREFIX=/home/weiouy01/code/prebuilts/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-
build -n $NUM_CPUS -a AARCH64 -t GCC5 -p ArmVirtPkg/ArmVirtQemu.dsc -b RELEASE -D TTY_TERMINAL -D SECURE_BOOT_ENABLE -D TPM2_ENABLE -D TTY_TERMINAL all
