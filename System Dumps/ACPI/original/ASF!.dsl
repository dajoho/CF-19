/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembly of iASLB0ue3D.aml, Mon Jul 24 18:49:00 2017
 *
 * ACPI Data Table [ASF!]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "ASF!"    [Alert Standard Format table]
[004h 0004   4]                 Table Length : 00000074
[008h 0008   1]                     Revision : 20
[009h 0009   1]                     Checksum : 92
[00Ah 0010   6]                       Oem ID : "MATBIO"
[010h 0016   8]                 Oem Table ID : "CF19-5  "
[018h 0024   4]                 Oem Revision : 06222004
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 000F4240

[024h 0036   1]                Subtable Type : 00 [ASF Information]
[025h 0037   1]                     Reserved : 00
[026h 0038   2]                       Length : 0010
[028h 0040   1]          Minimum Reset Value : FF
[029h 0041   1]     Minimum Polling Interval : FF
[02Ah 0042   2]                    System ID : 003D
[02Ch 0044   4]              Manufacturer ID : 02010000
[030h 0048   1]                        Flags : 00
[031h 0049   3]                     Reserved : 000000

[034h 0052   1]                Subtable Type : 02 [ASF Remote Control]
[035h 0053   1]                     Reserved : 00
[036h 0054   2]                       Length : 0018
[038h 0056   1]                Control Count : 04
[039h 0057   1]          Control Data Length : 04
[03Ah 0058   2]                     Reserved : 0000

[03Ch 0060   1]                     Function : 00
[03Dh 0061   1]                      Address : 44
[03Eh 0062   1]                      Command : 00
[03Fh 0063   1]                        Value : 03

[040h 0064   1]                     Function : 01
[041h 0065   1]                      Address : 44
[042h 0066   1]                      Command : 00
[043h 0067   1]                        Value : 02

[044h 0068   1]                     Function : 02
[045h 0069   1]                      Address : 44
[046h 0070   1]                      Command : 00
[047h 0071   1]                        Value : 01

[048h 0072   1]                     Function : 03
[049h 0073   1]                      Address : 44
[04Ah 0074   1]                      Command : 00
[04Bh 0075   1]                        Value : 04

[04Ch 0076   1]                Subtable Type : 03 [ASF RMCP Boot Options]
[04Dh 0077   1]                     Reserved : 00
[04Eh 0078   2]                       Length : 0017
[050h 0080   7]                 Capabilities : 20 00 00 00 00 0B 0F
[057h 0087   1]              Completion Code : 01
[058h 0088   4]                Enterprise ID : 00000000
[05Ch 0092   1]                      Command : 00
[05Dh 0093   2]                    Parameter : 0000
[05Fh 0095   2]                 Boot Options : 0000
[061h 0097   2]               Oem Parameters : 0000

[063h 0099   1]                Subtable Type : 84 [ASF Address]
[064h 0100   1]                     Reserved : 00
[065h 0101   2]                       Length : 0011
[067h 0103   1]                Eprom Address : 00
[068h 0104   1]                 Device Count : 00



Raw Table Data: Length 116 (0x74)

  0000: 41 53 46 21 74 00 00 00 20 92 4D 41 54 42 49 4F  // ASF!t... .MATBIO
  0010: 43 46 31 39 2D 35 20 20 04 20 22 06 49 4E 54 4C  // CF19-5  . ".INTL
  0020: 40 42 0F 00 00 00 10 00 FF FF 3D 00 00 00 01 02  // @B........=.....
  0030: 00 00 00 00 02 00 18 00 04 04 00 00 00 44 00 03  // .............D..
  0040: 01 44 00 02 02 44 00 01 03 44 00 04 03 00 17 00  // .D...D...D......
  0050: 20 00 00 00 00 0B 0F 01 00 00 00 00 00 00 00 00  //  ...............
  0060: 00 00 00 84 00 11 00 00 00 00 00 00 00 00 00 00  // ................
  0070: 00 00 00 00                                      // ....
