export WORKSPACE=$PWD/edk2
export PACKAGES_PATH=$PWD/edk2:$PWD/edk2-platforms:$PWD/edk2-non-osi
. edk2/edksetup.sh
make -C edk2/BaseTools
NUM_CPUS=$((`getconf _NPROCESSORS_ONLN` + 2))
export GCC5_AARCH64_PREFIX=aarch64-linux-gnu-
build -n $NUM_CPUS -a AARCH64 -t GCC5 -p ArmVirtPkg/ArmVirtQemu.dsc -b RELEASE -D TTY_TERMINAL -D SECURE_BOOT_ENABLE -D TPM2_ENABLE -D TTY_TERMINAL all
