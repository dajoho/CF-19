/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembly of iASL0pbG9I.aml, Mon Jul 24 18:49:00 2017
 *
 * ACPI Data Table [FACP]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "FACP"    [Fixed ACPI Description Table (FADT)]
[004h 0004   4]                 Table Length : 00000084
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : AA
[00Ah 0010   6]                       Oem ID : "MATBIO"
[010h 0016   8]                 Oem Table ID : "CF19-5  "
[018h 0024   4]                 Oem Revision : 06222004
[01Ch 0028   4]              Asl Compiler ID : "MSFT"
[020h 0032   4]        Asl Compiler Revision : 00010013

[024h 0036   4]                 FACS Address : CAFE5E40
[028h 0040   4]                 DSDT Address : CAFF0018
[02Ch 0044   1]                        Model : 01
[02Dh 0045   1]                   PM Profile : 02 [Mobile]
[02Eh 0046   2]                SCI Interrupt : 0009
[030h 0048   4]             SMI Command Port : 000000B2
[034h 0052   1]            ACPI Enable Value : A0
[035h 0053   1]           ACPI Disable Value : A1
[036h 0054   1]               S4BIOS Command : 00
[037h 0055   1]              P-State Control : 80
[038h 0056   4]     PM1A Event Block Address : 00000400
[03Ch 0060   4]     PM1B Event Block Address : 00000000
[040h 0064   4]   PM1A Control Block Address : 00000404
[044h 0068   4]   PM1B Control Block Address : 00000000
[048h 0072   4]    PM2 Control Block Address : 00000450
[04Ch 0076   4]       PM Timer Block Address : 00000408
[050h 0080   4]           GPE0 Block Address : 00000420
[054h 0084   4]           GPE1 Block Address : 00000000
[058h 0088   1]       PM1 Event Block Length : 04
[059h 0089   1]     PM1 Control Block Length : 02
[05Ah 0090   1]     PM2 Control Block Length : 01
[05Bh 0091   1]        PM Timer Block Length : 04
[05Ch 0092   1]            GPE0 Block Length : 10
[05Dh 0093   1]            GPE1 Block Length : 00
[05Eh 0094   1]             GPE1 Base Offset : 00
[05Fh 0095   1]                 _CST Support : 85
[060h 0096   2]                   C2 Latency : 0065
[062h 0098   2]                   C3 Latency : 0039
[064h 0100   2]               CPU Cache Size : 0400
[066h 0102   2]           Cache Flush Stride : 0010
[068h 0104   1]            Duty Cycle Offset : 01
[069h 0105   1]             Duty Cycle Width : 03
[06Ah 0106   1]          RTC Day Alarm Index : 0D
[06Bh 0107   1]        RTC Month Alarm Index : 00
[06Ch 0108   1]            RTC Century Index : 32
[06Dh 0109   2]   Boot Flags (decoded below) : 0013
               Legacy Devices Supported (V2) : 1
            8042 Present on ports 60/64 (V2) : 1
                        VGA Not Present (V4) : 0
                      MSI Not Supported (V4) : 0
                PCIe ASPM Not Supported (V4) : 1
                   CMOS RTC Not Present (V5) : 0
[06Fh 0111   1]                     Reserved : 00
[070h 0112   4]        Flags (decoded below) : 000386A5
      WBINVD instruction is operational (V1) : 1
              WBINVD flushes all caches (V1) : 0
                    All CPUs support C1 (V1) : 1
                  C2 works on MP system (V1) : 0
            Control Method Power Button (V1) : 0
            Control Method Sleep Button (V1) : 1
        RTC wake not in fixed reg space (V1) : 0
            RTC can wake system from S4 (V1) : 1
                        32-bit PM Timer (V1) : 0
                      Docking Supported (V1) : 1
               Reset Register Supported (V2) : 1
                            Sealed Case (V3) : 0
                    Headless - No Video (V3) : 0
        Use native instr after SLP_TYPx (V3) : 0
              PCIEXP_WAK Bits Supported (V4) : 0
                     Use Platform Timer (V4) : 1
               RTC_STS valid on S4 wake (V4) : 1
                Remote Power-on capable (V4) : 1
                 Use APIC Cluster Model (V4) : 0
     Use APIC Physical Destination Mode (V4) : 0
                       Hardware Reduced (V5) : 0
                      Low Power S0 Idle (V5) : 0

[074h 0116  12]               Reset Register : [Generic Address Structure]
[074h 0116   1]                     Space ID : 01 [SystemIO]
[075h 0117   1]                    Bit Width : 08
[076h 0118   1]                   Bit Offset : 00
[077h 0119   1]         Encoded Access Width : 00 [Undefined/Legacy]
[078h 0120   8]                      Address : 00000000000000B2

[080h 0128   1]         Value to cause reset : E4
[081h 0129   2]                     Reserved : 0000
[083h 0131   1]                     Reserved : 00

Raw Table Data: Length 132 (0x84)

  0000: 46 41 43 50 84 00 00 00 02 AA 4D 41 54 42 49 4F  // FACP......MATBIO
  0010: 43 46 31 39 2D 35 20 20 04 20 22 06 4D 53 46 54  // CF19-5  . ".MSFT
  0020: 13 00 01 00 40 5E FE CA 18 00 FF CA 01 02 09 00  // ....@^..........
  0030: B2 00 00 00 A0 A1 00 80 00 04 00 00 00 00 00 00  // ................
  0040: 04 04 00 00 00 00 00 00 50 04 00 00 08 04 00 00  // ........P.......
  0050: 20 04 00 00 00 00 00 00 04 02 01 04 10 00 00 85  //  ...............
  0060: 65 00 39 00 00 04 10 00 01 03 0D 00 32 13 00 00  // e.9.........2...
  0070: A5 86 03 00 01 08 00 00 B2 00 00 00 00 00 00 00  // ................
  0080: E4 00 00 00                                      // ....
