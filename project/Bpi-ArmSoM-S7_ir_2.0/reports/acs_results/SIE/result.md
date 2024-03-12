# SCT Summary

|Result|Test(s)|
|--|--|
|Dropped:|0|
|Failure:|4|
|Ignored:|4|
|Known Size Limitation:|2|
|Pass:|60|
|Warning:|0|


## 1. Dropped by group

## 2. Failure by group

### RuntimeServicesTest

|name|result|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|guid|log|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|SecureBoot - Verify signed KEK append update|FAILURE|RuntimeServicesTest|SecureBootTest|VariableUpdates|495CB6D7-0817-4015-A479-0DB4C2308626|0|11-03-2024|02:20:16|0x00010000|Secure Boot Test|No device path|6F4FE39C-DAA0-4A4E-BF44-CAFB05372B53|/data_sda/rk3588/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/VariableUpdatesBBTest.c 1113 Status - 800000000000001A|
|SecureBoot - Verify signed DB append update|FAILURE|RuntimeServicesTest|SecureBootTest|VariableUpdates|495CB6D7-0817-4015-A479-0DB4C2308626|0|11-03-2024|02:20:16|0x00010000|Secure Boot Test|No device path|63BA72D3-9089-AC63-F089-AD902467DBD3|/data_sda/rk3588/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/VariableUpdatesBBTest.c 1189 Status - 800000000000001A|
|RT.SetVariable - Create one Time Base Auth Variable, the expect return status should be EFI_SUCCESS|FAILURE|RuntimeServicesTest|VariableServicesTest|AuthVar_Func|9338D0EC-807B-4750-986A-8F2A91BB3616|0|11-03-2024|1145084456306999298:-7079087594029449195:-7152562114958196717|0x00010000|Variable Services Test|No device path|008E18A5-C345-48AE-9134-61A692E30B87|/data_sda/rk3588/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/VariableServices/BlackBoxTest/AuthVariableServicesBBTestFunction.c 635 Status - 800000000000001A|
|Secure Boot - ImageLoadingTest|FAILURE|RuntimeServicesTest|SecureBootTest|ImageLoading|BA4A8DD9-2D6A-43A6-96CF-7947892B7359|0|11-03-2024|02:24:8589934597|0x00010000|Secure Boot Test|No device path|6A8CAA83-B9DA-46C7-98F6-D4969DABDAA0| EFI Image Execution Info Table not found /data_sda/rk3588/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/ImageLoadingBBTest.c 1063 Status - Not Found|


## 3. Ignored by group

### Unknown

|descr|device path|guid|iteration|log|name|start date|start time|test set|sub set|set guid|revision|group|result|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
||||||||||GetCapability_Conf|39FF9C71-4B41-4E5B-AED7-87C794187D67|0x10000|Unknown|IGNORED|Force dropped TPM as ignored BBSR v1.1 does not mandate use of a TPM; the requirements of section 2.4 "TPMs and measured boot" must be followed only if a TPM is implemented.|
||||||||||GetActivePcrBanks_Conf|847F1AE0-B429-49F1-9E0C-8F43FB553454|0x10000|Unknown|IGNORED|Force dropped TPM (2) as ignored BBSR v1.1 does not mandate use of a TPM; the requirements of section 2.4 "TPMs and measured boot" must be followed only if a TPM is implemented.|
||||||||||HashLogExtendEvent_Conf|907A7878-B294-F147-E90A-6543AB557646|0x10000|Unknown|IGNORED|Force dropped TPM (3) as ignored BBSR v1.1 does not mandate use of a TPM; the requirements of section 2.4 "TPMs and measured boot" must be followed only if a TPM is implemented.|
||||||||||SubmitCommand_Conf|9087AD78-9AD2-4172-9ABC-982308F56D26|0x10000|Unknown|IGNORED|Force dropped TPM (4) as ignored BBSR v1.1 does not mandate use of a TPM; the requirements of section 2.4 "TPMs and measured boot" must be followed only if a TPM is implemented.|


## 4. Known Size Limitation by group

### RuntimeServicesTest

|name|result|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|guid|log|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|RT.SecurityVariableSizeTest - BBSR Variable Size test|KNOWN SIZE LIMITATION|RuntimeServicesTest|BBSRVariableSizeTest|BBSRVariableSizeTest_func|19A9EDCF-EEB9-43E4-86A0-F28734FED429|0|11-03-2024|1145084456306999298:-7079087594029449195:-7152562114958196689|0x00010000|BBSR Variable Size Test|No device path|B6DC17CA-71E1-4BD5-9E76-F9A0847D9AE4|/data_sda/rk3588/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/BBSRVariableSizeTest/BlackBoxTest/BBSRVariableSizeBBTestFunction.c 164 |Force BBSR variable size test failure as known size limitation. The SIE ACS checks that MaxVariableStorageSize is larger than 128kb as per rule R040_BBSR of BBSR v1.1. That is typically not the case when using OP-TEE's secure storage.|
|RT.SecurityVariableSizeTest - BBSR Variable Size test|KNOWN SIZE LIMITATION|RuntimeServicesTest|BBSRVariableSizeTest|BBSRVariableSizeTest_func|19A9EDCF-EEB9-43E4-86A0-F28734FED429|0|11-03-2024|1145084456306999298:-7079087594029449195:-7152562114958196689|0x00010000|BBSR Variable Size Test|No device path|9B37033F-53AF-4097-AAE3-73FD28D267D5|/data_sda/rk3588/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/BBSRVariableSizeTest/BlackBoxTest/BBSRVariableSizeBBTestFunction.c 191 |Force BBSR variable size test failure (2) as known size limitation. The SIE ACS checks that MaxVariableSize is larger than 64kb as per rule R050_BBSR of BBSR v1.1. That is typically not the case when using OP-TEE's secure storage.|


## 5. Warning by group

## Meta-data

|  |  |
|--|--|
|command-line:|parser.py /home/weiouy01/code/Arm-SystemReady-IoT/project/Bpi-ArmSoM-S7_ir_2.0/reports/acs_results/SIE/sct_results/Overall/Summary.ekl /home/weiouy01/code/Arm-SystemReady-IoT/project/Bpi-ArmSoM-S7_ir_2.0/reports/acs_results/SIE/sct_results/Sequence/BBSR.seq|
|date:|Mon Mar 11 06:39:34 2024 UTC|
|git-commit:|v2023.04-23-g88f6283bc400|
|seq-file-ident:|BBSR.seq from SIE ACS v21.10_SIE_REL1.0 / ACS-IR v22.10_2.0.0_BETA-1 .. v23.03_2.0.0|
