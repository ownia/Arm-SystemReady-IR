# Arm SystemReady IoT

## Arm SystemReady IR

2.x <br>
3.0 --> Base-D

## Notes

### Enrolling keys in U-Boot on QEMU
```
load virtio 0 ${loadaddr} security-interface-extension-keys/TestPK1.auth && setenv -e -nv -bs -rt -at -i ${loadaddr}:$filesize PK
load virtio 0 ${loadaddr} security-interface-extension-keys/TestKEK1.auth && setenv -e -nv -bs -rt -at -i ${loadaddr}:$filesize KEK
load virtio 0 ${loadaddr} security-interface-extension-keys/TestDB1.auth && setenv -e -nv -bs -rt -at -i ${loadaddr}:$filesize db
load virtio 0 ${loadaddr} security-interface-extension-keys/TestDBX1.auth && setenv -e -nv -bs -rt -at -i ${loadaddr}:$filesize dbx
```

## Related Links
* https://www.arm.com/architecture/system-architectures/systemready-certification-program/ir
* https://developer.arm.com/documentation/den0022/latest
* https://developer.arm.com/documentation/den0028/latest
* https://developer.arm.com/documentation/den0044/latest
* https://developer.arm.com/documentation/den0094/latest
* https://developer.arm.com/documentation/den0107/latest
* https://developer.arm.com/documentation/den0109/latest
* https://developer.arm.com/documentation/den0098/latest
* https://developer.arm.com/documentation/den0118/latest
* https://developer.arm.com/documentation/den0072/latest
* https://developer.arm.com/documentation/DUI1101/latest
* https://developer.arm.com/documentation/ihi0062/latest
* https://developer.arm.com/documentation/102872/latest
* https://developer.arm.com/documentation/107981/latest
* https://developer.arm.com/documentation/102858/latest
* https://developer.arm.com/documentation/107981/latest
* https://pcisig.com/pci-express-6.0-specification
* https://uefi.org/specifications
* https://github.com/ARM-software/arm-systemready
* https://github.com/ARM-software/bsa-acs
* https://github.com/ARM-software/bbr-acs
* https://github.com/ARM-software/ebbr
* https://gitlab.arm.com/systemready/systemready-ir-template
* https://gitlab.arm.com/systemready/systemready-scripts
* https://gitlab.arm.com/linux-arm/linux-acs
* https://gitlab.arm.com/systemready/edk2-test-parser
* https://gitlab.arm.com/systemready/systemready-ir-template
* https://gitlab.arm.com/systemready/systemready-scripts
* https://gitlab.com/Linaro/trustedsubstrate/mbfw/-/releases
* https://github.com/riscv-non-isa/riscv-brs
