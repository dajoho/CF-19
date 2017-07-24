/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLOTtTtL.aml, Mon Jul 24 18:49:00 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000029D (669)
 *     Revision         0x01
 *     Checksum         0xD0
 *     OEM ID           "SataRe"
 *     OEM Table ID     "SataTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "SSDT", 1, "SataRe", "SataTabl", 0x00001000)
{
    External (_SB_.PCI0.SAT0, DeviceObj)    // Warning: Unknown object
    External (DSSP, UnknownObj)    // Warning: Unknown object
    External (FHPP, UnknownObj)    // Warning: Unknown object

    Scope (\)
    {
        Name (STFE, Buffer (0x07)
        {
             0x10, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF       
        })
        Name (STFD, Buffer (0x07)
        {
             0x90, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF       
        })
        Name (FZTF, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5       
        })
        Name (SCBF, Buffer (0x0E) {})
        Name (CMDC, 0x00)
        Method (GTFB, 2, Serialized)
        {
            Multiply (CMDC, 0x38, Local0)
            CreateField (SCBF, Local0, 0x38, CMDX)
            Multiply (CMDC, 0x07, Local0)
            CreateByteField (SCBF, Add (Local0, 0x01), A001)
            Store (Arg0, CMDX)
            Store (Arg1, A001)
            Increment (CMDC)
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Device (SPT0)
        {
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (0x00, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, 0x00)
                Return (SCBF)
            }
        }

        Device (SPT1)
        {
            Name (_ADR, 0x0001FFFF)  // _ADR: Address
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (0x00, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, 0x00)
                Return (SCBF)
            }
        }

        Device (SPT2)
        {
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (0x00, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, 0x00)
                Return (SCBF)
            }
        }

        Device (SPT3)
        {
            Name (_ADR, 0x0003FFFF)  // _ADR: Address
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (0x00, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, 0x00)
                Return (SCBF)
            }
        }

        Device (SPT4)
        {
            Name (_ADR, 0x0004FFFF)  // _ADR: Address
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (0x00, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, 0x00)
                Return (SCBF)
            }
        }

        Device (SPT5)
        {
            Name (_ADR, 0x0005FFFF)  // _ADR: Address
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (0x00, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, 0x00)
                Return (SCBF)
            }
        }
    }
}

