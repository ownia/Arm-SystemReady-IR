# SCT Summary

|Result|Test(s)|
|--|--|
|Dropped:|0|
|Failure:|0|
|Ignored:|34|
|Known U-Boot Limitation:|1|
|Pass:|16064|
|Warning:|0|


## 1. Dropped by group

## 2. Failure by group

## 3. Ignored by group

### BootServicesTest

|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|name|guid|log|result|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|BootServicesTest|MiscBootServicesTest|SetWatchdogTimer_Conf|FF388AE5-4C51-45C6-9D37-6DE04BF9219A|0|01-08-2023|08:35:30|0x00010001|Misc. Boot Services Test|No device path||||IGNORED|Force false-positive misc boot services skipped as ignored EBBR does not require watchdog timer|


### ConsoleSupportTest

|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|name|guid|log|result|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|ConsoleSupportTest|SimpleTextInputExProtocolTest|ReadKeyStrokeExFunctionAuto|2C3CA282-5644-41B6-AFC9-4387F25389BD|0|01-08-2023|08:4294967351:15|0x00010000|Simple Text Input Ex Protocol Test|No device path||||IGNORED|Force simple text input ex protocol skipped as ignored EBBR does not specifically require that a console device be always bound to the Simple Text Input Ex Protocol.|
|ConsoleSupportTest|SimpleTextInputExProtocolTest|ReadKeyStrokeExFunctionAuto|2C3CA282-5644-41B6-AFC9-4387F25389BD|0|01-08-2023|08:55:16|0x00010000|Simple Text Input Ex Protocol Test|VenHw(D3987D4B-971A-435F-8CAF-4967EB627241)/Uart(38400 N81)/VenMsg(7D916D80-5BB1-458C-A48F-E25FDD51EF94)||||IGNORED|Force simple text input ex protocol skipped as ignored EBBR does not specifically require that a console device be always bound to the Simple Text Input Ex Protocol.|


### GenericTest

|name|result|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|guid|log|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|UEFI Compliant - Graphic Console Device|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|72BA0E86-58E5-48DD-8529-88C68383118D|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 1254 GOP - No, EDID Discovered - No, EDID Active - No|Force false-positive uefi compliant warning (30) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - UEFI V6 General Network Application required|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|4C82EB2D-C785-410C-95D1-AE27122144C8|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 1949 Dhcp6SB-N, Tcp6SB-N, Ip6SB-N, Udp6SB-N, Ip6Config-N|Force false-positive uefi compliant warning (34) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - USB Bus support protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|0CCD5843-5BB5-4FC2-A732-DB17C414A43D|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 2370 USB HC - No, USB IO - No|Force false-positive uefi compliant warning (37) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - NVM Express Pass Thru protocol must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|5AEA7246-BCF9-4BA4-81D2-832C984146F3|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 2442 NVM Express Pass Thru protocol - No|Force false-positive uefi compliant warning (38) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - Boot from block-oriented NVMe peripheral|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|5CB0CDB5-AC80-4983-B710-4B0BF0191563|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 2567 NVMExpressPassThru - No|Force false-positive uefi compliant warning (39) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - Ext SCSI Pass Thru protocol must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|2B83418F-E7FB-4528-B6FF-C9D487AE2EFF|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 2642 Ext SCSI Pass Thru - No|Force false-positive uefi compliant warning (40) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - Boot from SCSI peripheral|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|28C068F2-F398-488A-B059-534E982D9C85|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 2744 SCSI IO - No, Block IO - Yes|Force false-positive uefi compliant warning (41) as ignored (Table 2.3 UEFI Platform-Specific Required Elements|
|UEFI Compliant - Boot from iSCSI peripheral|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|6B7077A6-4B13-4E13-9B1F-0C4B3A8669E2|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 2873  Iscsi Initiator Name - No, Authentication Info - No|Force false-positive uefi compliant warning (42) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - Debug support protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|3EE22696-0875-46F4-8884-BA124C7EAFF0|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 2964 Debug Support - No, Debug Port - No|Force false-positive uefi compliant warning (43) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - Platform Driver Override protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|329027CE-406E-48C8-8AC1-A02C1A6E3983|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3036 Platform Driver Override - No|Force false-positive uefi compliant warning (44) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - Ata Pass Thru protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|563F654F-ABA8-4539-804B-506305072623|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3107 Ata Pass Thru - No|Force false-positive uefi compliant warning (45) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - EBC Interpreter protocol is optional in this platform|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|1D0A2F2A-0924-4B8C-9FC7-B185CC22E118|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3181 Status - Success, Expected - Success|Force false-positive uefi compliant warning (46) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - DNS4 support is required|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|2E6D1733-6D39-49AB-A886-1B6DE44566A8|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3272 DNS4SB-N|Force false-positive uefi compliant warning (47) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - DNS6 support is required|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|E02A6EF3-4B70-40EC-AA23-50B7B972B065|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3405 DNS6SB-N|Force false-positive uefi compliant warning (48) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - TLS support is required|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|CB6F7B77-0B15-43F7-A95B-8C7F9FD70B21|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3551 TLSSB-N, TLSConfig-N|Force false-positive uefi compliant warning (49) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - HTTP support is required|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|77FDDB95-5969-4FB4-A218-5C0C760B0564|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3701 HTTPSB-N, HTTP Utilities-N|Force false-positive uefi compliant warning (50) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2) This test checks the availability of the http service binding protocol and the http utilities protocol. Even though EBBR requires HTTP Boot when the platform supports network booting, EBBR does no require those specific protocols.|
|UEFI Compliant - EAP Support protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|F0DC12FA-3C4B-43F7-A69E-A5BE6FCC90A1|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3863 EAP - No, EAP Config - No, EAP Management2 - No|Force false-positive uefi compliant warning (51) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|UEFI Compliant - BlueTooth Classic Support protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|87E50392-F5A2-42B8-8112-68BEC902B9BC|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 3962 BLUETOOTH HC - No, BLUETOOTH Service Binding - No, BLUETOOTH Config - No|Force false-positive uefi compliant warning (52) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - BlueTooth LE Support protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|EFF461EB-4F56-44A5-895E-EE5EE42AD309|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 4129 BLUETOOTH HC - No, BLUETOOTH Attribute - No, BLUETOOTH LE Config - No|Force false-positive uefi compliant warning (53) as ignored (Table 2.3 UEFI Platform-Specific Required Elements)|
|UEFI Compliant - IPsec protocols must be implemented|IGNORED|GenericTest|EFICompliantTest|PlatformSpecificElements|A0A8BED3-3D6F-4AD8-907A-84D52EE1543B|0|01-08-2023|08:22:22|0x00010001|UEFI Compliant Test|No device path|B27660E2-0E87-4794-82F1-E6BDBD8B7442|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/Generic/EfiCompliant/BlackBoxTest/EfiCompliantBBTestPlatform_uefi.c 4222 IPSEC_CONFIG - No, IPSEC2 - No|Force false-positive uefi compliant warning (54) as ignored (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|


### NetworkSupportTest

|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|name|guid|log|result|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|NetworkSupportTest|SimpleNetworkProtocolTest|Reset_Func|BA628A58-E318-4E4A-BAC2-A7833ADF42D9|0|01-08-2023|08:4294967350:44|0x00010001|Simple Network Protocol Test|Acpi(PNP0A03,0)/Pci(1|0)/Mac(525400123456)||||IGNORED|Force skipped simple network protocol test (3) as ignored A full implementation of the UEFI general purpose networking ABIs is not required (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|
|NetworkSupportTest|SimpleNetworkProtocolTest|Reset_Func|BA628A58-E318-4E4A-BAC2-A7833ADF42D9|0|01-08-2023|08:54:45|0x00010001|Simple Network Protocol Test|Acpi(PNP0A03,0)/Pci(1|0)/Mac(525400123456)/IPv4(0.0.0.0:0)||||IGNORED|Force skipped simple network protocol test (3) as ignored A full implementation of the UEFI general purpose networking ABIs is not required (EBBR Table 2.4 Notable Deviations from UEFI § 2.6.2)|


### RuntimeServicesTest

|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|name|guid|log|result|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|RuntimeServicesTest|VariableServicesTest|HardwareErrorRecord_Conf|CF94F695-7917-4F78-A0A8-F0B509099297|0|01-08-2023|08:40:44|0x00010000|Variable Services Test|No device path||||IGNORED|Force variable services skipped as ignored EBBR does not require Hardware Error Record Persistence (2.2 UEFI Compliance); the HwErrRecSupport variable may not be present|
|RuntimeServicesTest|VariableServicesTest|HardwareErrorRecord_Func|EFABA332-13E8-4730-97CB-48CE9F0826C5|0|01-08-2023|08:40:47|0x00010000|Variable Services Test|No device path||||IGNORED|Force variable services (2) skipped as ignored EBBR does not require Hardware Error Record Persistence (2.2 UEFI Compliance); the HwErrRecSupport variable may not be present|
|RuntimeServicesTest|TimeServicesTest|GetWakeupTime_Func|F508572D-74F7-4C6C-9CEF-DBA49C56F7AE|0|01-08-2023|08:42:25|0x00010000|Time Services Test|No device path|RT.GetWakeupTime - Unsupported|6A8CAA83-B9DA-46C7-98F6-D4969DABDAA0|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/TimeServices/BlackBoxTest/TimeServicesBBTestFunction.c 807 Status - Unsupported|IGNORED|Force false-positive time services warnings (4) as ignored (EBBR Table 2.6 EFI_RUNTIME_SERVICES Implementation Requirements)|
|RuntimeServicesTest|TimeServicesTest|SetWakeupTime_Conf|8721B500-F13A-40FA-8217-70ACDDDC67BF|0|01-08-2023|08:42:31|0x00010000|Time Services Test|No device path|RT.SetWakeupTime - Unsupported|6A8CAA83-B9DA-46C7-98F6-D4969DABDAA0|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/TimeServices/BlackBoxTest/TimeServicesBBTestConformance.c 833 Status - Unsupported|IGNORED|Force false-positive time services warnings (2) as ignored (EBBR Table 2.6 EFI_RUNTIME_SERVICES Implementation Requirements)|
|RuntimeServicesTest|TimeServicesTest|SetWakeupTime_Func|8A878BFB-6BE1-4226-8F69-4EBF7A1FF9A5|0|01-08-2023|08:42:32|0x00010000|Time Services Test|No device path|RT.SetWakeupTime - Unsupported|6A8CAA83-B9DA-46C7-98F6-D4969DABDAA0|/home/edhcha01/IR2.0/arm-systemready/IR/Yocto/meta-woden/build/tmp/work/armv8a-oe-linux/ebbr-sct/1.0-r0/edk2-test/SctPkg/TestCase/UEFI/EFI/RuntimeServices/TimeServices/BlackBoxTest/TimeServicesBBTestFunction.c 979 Status - Unsupported|IGNORED|Force false-positive time services warnings (3) as ignored (EBBR Table 2.6 EFI_RUNTIME_SERVICES Implementation Requirements)|


### Unknown

|descr|device path|guid|iteration|log|name|start date|start time|test set|sub set|set guid|revision|group|result|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
||||||||||GetInfo_Func|39FF9C71-4B41-4E5B-AED7-87C794187D66|0x10000|Unknown|IGNORED|Force dropped RNG as ignored (Table 2.3 UEFI Platform-Specific Required Elements) The EFI_RNG_PROTOCOL is required only if the platform has a hardware entropy source|
||||||||||GetRNG_Func|DC5B2884-EDFB-4078-A288-4DFDA849A08D|0x10000|Unknown|IGNORED|Force dropped RNG (3) as ignored (Table 2.3 UEFI Platform-Specific Required Elements) The EFI_RNG_PROTOCOL is required only if the platform has a hardware entropy source|
||||||||||GetInfo_Conf|861F4A3B-8125-4A5A-99CC-DA7779C2B020|0x10000|Unknown|IGNORED|Force dropped RNG (2) as ignored (Table 2.3 UEFI Platform-Specific Required Elements) The EFI_RNG_PROTOCOL is required only if the platform has a hardware entropy source|
||||||||||GetRNG_Conf|DDBBE5AB-206E-4F35-9556-186DA87C2A86|0x10000|Unknown|IGNORED|Force dropped RNG (4) as ignored (Table 2.3 UEFI Platform-Specific Required Elements) The EFI_RNG_PROTOCOL is required only if the platform has a hardware entropy source|


## 4. Known U-Boot Limitation by group

### HIITest

|group|test set|sub set|set guid|iteration|start date|start time|revision|descr|device path|name|guid|log|result|Updated by|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|HIITest|HIIDatabaseProtocolTest|SetKeyboardLayoutFunction|D0126067-99CD-46C5-839F-43B0A90B79C5|0|01-08-2023|08:58:12|0x00010000|HII Database Protocol Test|No device path||||KNOWN U-BOOT LIMITATION|Force hii database protocol test skipped (3) as known U-Boot limitation The SetKeyboardLayout functional test depends on the NewPackageList function, whose implementation in U-Boot does not handle many packages types, such as simple fonts, causing an error resulting in a skipped test|


## 5. Warning by group

## Meta-data

|  |  |
|--|--|
|command-line:|parser.py ../test/acs_results/sct_results/Overall/Summary.ekl ../test/acs_results/sct_results/Sequence/EBBR.seq|
|date:|Tue Aug  1 09:32:44 2023 UTC|
|git-commit:|v2023.04-1-gbfdde87c3a53|
|seq-file-ident:|EBBR.seq from ACS-IR v22.10_2.0.0_BETA-1 .. v23.03_2.0.0|
