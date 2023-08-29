# SCT Summary

|Result|Test(s)|
|--|--|
|Dropped:|0|
|Failure:|3|
|Pass:|70|
|Warning:|0|


## 1. Dropped by group

## 2. Failure by group

### RuntimeServicesTest

|name|result|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|guid|log|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|SecureBoot - VariableAttributesBBTest|FAILURE|RuntimeServicesTest|SecureBootTest|VariableAttributes|E39747C4-22D0-4D52-9C15-3C4EFA80E6C8|0|29-08-2023|02:51:37|0x00010000|Secure Boot Test|No device path|6A8CAA83-B9DA-46C7-98F6-D4969DABDAA0| SecureBoot not enabled /home/runner/work/arm-systemready/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/VariableAttributesBBTest.c 124 Status - Success|
|SecureBoot - VariableUpdatesBBTest|FAILURE|RuntimeServicesTest|SecureBootTest|VariableUpdates|495CB6D7-0817-4015-A479-0DB4C2308626|0|29-08-2023|02:51:38|0x00010000|Secure Boot Test|No device path|6A8CAA83-B9DA-46C7-98F6-D4969DABDAA0| SecureBootVariableCleanup() failed /home/runner/work/arm-systemready/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/VariableUpdatesBBTest.c 137 Status - Not Found|
|SecureBoot - ImageLoadingTest|FAILURE|RuntimeServicesTest|SecureBootTest|ImageLoading|BA4A8DD9-2D6A-43A6-96CF-7947892B7359|0|29-08-2023|02:51:51|0x00010000|Secure Boot Test|No device path|6A8CAA83-B9DA-46C7-98F6-D4969DABDAA0| SecureBoot not enabled /home/runner/work/arm-systemready/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/ImageLoadingBBTest.c 250 Status - Success|


## 3. Warning by group

## Meta-data

|  |  |
|--|--|
|command-line:|parser.py ../Arm-SystemReady-IoT/project/qemu_acs_ir_2.0/reports/acs_results/SIE/sct_results/Overall/Summary.ekl ../Arm-SystemReady-IoT/project/qemu_acs_ir_2.0/reports/acs_results/SIE/sct_results/Sequence/BBSR.seq|
|date:|Tue Aug 29 03:14:50 2023 UTC|
|git-commit:|v2023.04-3-g54e8cb99f346|
|seq-file-ident:|BBSR.seq from SIE ACS v21.10_SIE_REL1.0 / ACS-IR v22.10_2.0.0_BETA-1 .. v23.03_2.0.0|
