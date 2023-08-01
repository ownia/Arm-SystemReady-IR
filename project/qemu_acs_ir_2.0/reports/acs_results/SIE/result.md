# SCT Summary

|Result|Test(s)|
|--|--|
|Dropped:|0|
|Failure:|4|
|Pass:|101|
|Warning:|0|


## 1. Dropped by group

## 2. Failure by group

### 

|name|result|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|guid|log|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|TCG2_PROTOCOL.HashLogExtendEvent - HashLogExtendEvent() Test|FAILURE||TCG2ProtocolTest|HashLogExtendEvent_Conf|907A7878-B294-F147-E90A-6543AB557646|0|01-08-2023|09:25:50|0x00010000|Testing For EFI TCG2 Protocol|No device path|4D1D9985-91E2-4948-8916-BB981362391D| HashLogExtendEvent should return EFI_SUCCESS /home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Protocol/TCG2Protocol/BlackBoxTest/TCG2ProtocolBBTestConformance.c 798  Status - Volume Full|
|TCG2_PROTOCOL.GetEventLog - GetEventLog() should record Event from Checkpoint2 as last EventLogEntry|FAILURE||TCG2ProtocolTest|HashLogExtendEvent_Conf|907A7878-B294-F147-E90A-6543AB557646|0|01-08-2023|09:25:50|0x00010000|Testing For EFI TCG2 Protocol|No device path|45FA1A42-912A-5124-84F4-4167ABB58990|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Protocol/TCG2Protocol/BlackBoxTest/TCG2ProtocolBBTestConformance.c 1019  Status - Success|


### RuntimeServicesTest

|name|result|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|guid|log|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|SecureBoot - TestImage1.bin in Image Execution Info Table with SIG_NOT_FOUND.|FAILURE|RuntimeServicesTest|SecureBootTest|ImageLoading|BA4A8DD9-2D6A-43A6-96CF-7947892B7359|0|01-08-2023|09:25:54|0x00010000|Secure Boot Test|No device path|B3A670AA-0FBA-48CA-9D01-0EE9700965A9|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/ImageLoadingBBTest.c 1079 Status - Success|
|SecureBoot - Verify load of TestImage10.bin recorded in Image Execution Info Table.|FAILURE|RuntimeServicesTest|SecureBootTest|ImageLoading|BA4A8DD9-2D6A-43A6-96CF-7947892B7359|0|01-08-2023|09:25:54|0x00010000|Secure Boot Test|No device path|26D2B894-37C3-44D5-8BF3-6CA6011AB462|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/SecureBoot/BlackBoxTest/ImageLoadingBBTest.c 1181 Status - Success|


## 3. Warning by group

## Meta-data

|  |  |
|--|--|
|command-line:|parser.py ../test/acs_results/SIE/sct_results/Overall/Summary.ekl ../test/acs_results/SIE/sct_results/Sequence/BBSR.seq|
|date:|Tue Aug  1 09:32:14 2023 UTC|
|git-commit:|v2023.04-1-gbfdde87c3a53|
|seq-file-ident:|BBSR.seq from SIE ACS v21.10_SIE_REL1.0 / ACS-IR v22.10_2.0.0_BETA-1 .. v23.03_2.0.0|
