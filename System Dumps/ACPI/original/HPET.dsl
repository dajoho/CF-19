/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembly of iASLdwgHfe.aml, Mon Jul 24 18:49:00 2017
 *
 * ACPI Data Table [HPET]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "HPET"    [High Precision Event Timer table]
[004h 0004   4]                 Table Length : 00000038
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 50
[00Ah 0010   6]                       Oem ID : "MATBIO"
[010h 0016   8]                 Oem Table ID : "CF19-5  "
[018h 0024   4]                 Oem Revision : 06222004
[01Ch 0028   4]              Asl Compiler ID : "AMI."
[020h 0032   4]        Asl Compiler Revision : 00000003

[024h 0036   4]            Hardware Block ID : 8086A701

[028h 0040  12]         Timer Block Register : [Generic Address Structure]
[028h 0040   1]                     Space ID : 00 [SystemMemory]
[029h 0041   1]                    Bit Width : 00
[02Ah 0042   1]                   Bit Offset : 00
[02Bh 0043   1]         Encoded Access Width : 00 [Undefined/Legacy]
[02Ch 0044   8]                      Address : 00000000FED00000

[034h 0052   1]              Sequence Number : 00
[035h 0053   2]          Minimum Clock Ticks : 37EE
[037h 0055   1]        Flags (decoded below) : 00
                             4K Page Protect : 0
                            64K Page Protect : 0

Raw Table Data: Length 56 (0x38)

  0000: 48 50 45 54 38 00 00 00 01 50 4D 41 54 42 49 4F  // HPET8....PMATBIO
  0010: 43 46 31 39 2D 35 20 20 04 20 22 06 41 4D 49 2E  // CF19-5  . ".AMI.
  0020: 03 00 00 00 01 A7 86 80 00 00 00 00 00 00 D0 FE  // ................
  0030: 00 00 00 00 00 EE 37 00                          // ......7.
