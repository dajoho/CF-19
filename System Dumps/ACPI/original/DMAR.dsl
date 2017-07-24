/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembly of iASL7ToaHS.aml, Mon Jul 24 18:49:00 2017
 *
 * ACPI Data Table [DMAR]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "DMAR"    [DMA Remapping table]
[004h 0004   4]                 Table Length : 000000E8
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 7C
[00Ah 0010   6]                       Oem ID : "INTEL "
[010h 0016   8]                 Oem Table ID : "SNB "
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   1]           Host Address Width : 23
[025h 0037   1]                        Flags : 01
[026h 0038  10]                     Reserved : 00 00 00 00 00 00 00 00 00 00

[030h 0048   2]                Subtable Type : 0000 [Hardware Unit Definition]
[032h 0050   2]                       Length : 0018

[034h 0052   1]                        Flags : 00
[035h 0053   1]                     Reserved : 00
[036h 0054   2]           PCI Segment Number : 0000
[038h 0056   8]        Register Base Address : 00000000FED90000

[040h 0064   1]            Device Scope Type : 01 [PCI Endpoint Device]
[041h 0065   1]                 Entry Length : 08
[042h 0066   2]                     Reserved : 0000
[044h 0068   1]               Enumeration ID : 00
[045h 0069   1]               PCI Bus Number : 00

[046h 0070   2]                     PCI Path : 02,00


[048h 0072   2]                Subtable Type : 0000 [Hardware Unit Definition]
[04Ah 0074   2]                       Length : 0058

[04Ch 0076   1]                        Flags : 01
[04Dh 0077   1]                     Reserved : 00
[04Eh 0078   2]           PCI Segment Number : 0000
[050h 0080   8]        Register Base Address : 00000000FED91000

[058h 0088   1]            Device Scope Type : 03 [IOAPIC Device]
[059h 0089   1]                 Entry Length : 08
[05Ah 0090   2]                     Reserved : 0000
[05Ch 0092   1]               Enumeration ID : 02
[05Dh 0093   1]               PCI Bus Number : F0

[05Eh 0094   2]                     PCI Path : 1F,00


[060h 0096   1]            Device Scope Type : 04 [Message-capable HPET Device]
[061h 0097   1]                 Entry Length : 08
[062h 0098   2]                     Reserved : 0000
[064h 0100   1]               Enumeration ID : 00
[065h 0101   1]               PCI Bus Number : F0

[066h 0102   2]                     PCI Path : 0F,00


[068h 0104   1]            Device Scope Type : 04 [Message-capable HPET Device]
[069h 0105   1]                 Entry Length : 08
[06Ah 0106   2]                     Reserved : 0000
[06Ch 0108   1]               Enumeration ID : 00
[06Dh 0109   1]               PCI Bus Number : F0

[06Eh 0110   2]                     PCI Path : 0F,01


[070h 0112   1]            Device Scope Type : 04 [Message-capable HPET Device]
[071h 0113   1]                 Entry Length : 08
[072h 0114   2]                     Reserved : 0000
[074h 0116   1]               Enumeration ID : 00
[075h 0117   1]               PCI Bus Number : F0

[076h 0118   2]                     PCI Path : 0F,02


[078h 0120   1]            Device Scope Type : 04 [Message-capable HPET Device]
[079h 0121   1]                 Entry Length : 08
[07Ah 0122   2]                     Reserved : 0000
[07Ch 0124   1]               Enumeration ID : 00
[07Dh 0125   1]               PCI Bus Number : F0

[07Eh 0126   2]                     PCI Path : 0F,03


[080h 0128   1]            Device Scope Type : 04 [Message-capable HPET Device]
[081h 0129   1]                 Entry Length : 08
[082h 0130   2]                     Reserved : 0000
[084h 0132   1]               Enumeration ID : 00
[085h 0133   1]               PCI Bus Number : F0

[086h 0134   2]                     PCI Path : 0F,04


[088h 0136   1]            Device Scope Type : 04 [Message-capable HPET Device]
[089h 0137   1]                 Entry Length : 08
[08Ah 0138   2]                     Reserved : 0000
[08Ch 0140   1]               Enumeration ID : 00
[08Dh 0141   1]               PCI Bus Number : F0

[08Eh 0142   2]                     PCI Path : 0F,05


[090h 0144   1]            Device Scope Type : 04 [Message-capable HPET Device]
[091h 0145   1]                 Entry Length : 08
[092h 0146   2]                     Reserved : 0000
[094h 0148   1]               Enumeration ID : 00
[095h 0149   1]               PCI Bus Number : F0

[096h 0150   2]                     PCI Path : 0F,06


[098h 0152   1]            Device Scope Type : 04 [Message-capable HPET Device]
[099h 0153   1]                 Entry Length : 08
[09Ah 0154   2]                     Reserved : 0000
[09Ch 0156   1]               Enumeration ID : 00
[09Dh 0157   1]               PCI Bus Number : F0

[09Eh 0158   2]                     PCI Path : 0F,07


[0A0h 0160   2]                Subtable Type : 0001 [Reserved Memory Region]
[0A2h 0162   2]                       Length : 0028

[0A4h 0164   2]                     Reserved : 0000
[0A6h 0166   2]           PCI Segment Number : 0000
[0A8h 0168   8]                 Base Address : 00000000CADCD000
[0B0h 0176   8]          End Address (limit) : 00000000CADE3FFF

[0B8h 0184   1]            Device Scope Type : 01 [PCI Endpoint Device]
[0B9h 0185   1]                 Entry Length : 08
[0BAh 0186   2]                     Reserved : 0000
[0BCh 0188   1]               Enumeration ID : 00
[0BDh 0189   1]               PCI Bus Number : 00

[0BEh 0190   2]                     PCI Path : 1D,00


[0C0h 0192   1]            Device Scope Type : 01 [PCI Endpoint Device]
[0C1h 0193   1]                 Entry Length : 08
[0C2h 0194   2]                     Reserved : 0000
[0C4h 0196   1]               Enumeration ID : 00
[0C5h 0197   1]               PCI Bus Number : 00

[0C6h 0198   2]                     PCI Path : 1A,00


[0C8h 0200   2]                Subtable Type : 0001 [Reserved Memory Region]
[0CAh 0202   2]                       Length : 0020

[0CCh 0204   2]                     Reserved : 0000
[0CEh 0206   2]           PCI Segment Number : 0000
[0D0h 0208   8]                 Base Address : 00000000CB800000
[0D8h 0216   8]          End Address (limit) : 00000000CF9FFFFF

[0E0h 0224   1]            Device Scope Type : 01 [PCI Endpoint Device]
[0E1h 0225   1]                 Entry Length : 08
[0E2h 0226   2]                     Reserved : 0000
[0E4h 0228   1]               Enumeration ID : 00
[0E5h 0229   1]               PCI Bus Number : 00

[0E6h 0230   2]                     PCI Path : 02,00


Raw Table Data: Length 232 (0xE8)

  0000: 44 4D 41 52 E8 00 00 00 01 7C 49 4E 54 45 4C 20  // DMAR.....|INTEL 
  0010: 53 4E 42 20 00 00 00 00 01 00 00 00 49 4E 54 4C  // SNB ........INTL
  0020: 01 00 00 00 23 01 00 00 00 00 00 00 00 00 00 00  // ....#...........
  0030: 00 00 18 00 00 00 00 00 00 00 D9 FE 00 00 00 00  // ................
  0040: 01 08 00 00 00 00 02 00 00 00 58 00 01 00 00 00  // ..........X.....
  0050: 00 10 D9 FE 00 00 00 00 03 08 00 00 02 F0 1F 00  // ................
  0060: 04 08 00 00 00 F0 0F 00 04 08 00 00 00 F0 0F 01  // ................
  0070: 04 08 00 00 00 F0 0F 02 04 08 00 00 00 F0 0F 03  // ................
  0080: 04 08 00 00 00 F0 0F 04 04 08 00 00 00 F0 0F 05  // ................
  0090: 04 08 00 00 00 F0 0F 06 04 08 00 00 00 F0 0F 07  // ................
  00A0: 01 00 28 00 00 00 00 00 00 D0 DC CA 00 00 00 00  // ..(.............
  00B0: FF 3F DE CA 00 00 00 00 01 08 00 00 00 00 1D 00  // .?..............
  00C0: 01 08 00 00 00 00 1A 00 01 00 20 00 00 00 00 00  // .......... .....
  00D0: 00 00 80 CB 00 00 00 00 FF FF 9F CF 00 00 00 00  // ................
  00E0: 01 08 00 00 00 00 02 00                          // ........
