/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLeK4cjd.aml, Mon Jul 24 18:49:00 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003C6 (966)
 *     Revision         0x01
 *     Checksum         0xCF
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApTst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "ApTst", 0x00003000)
{
    External (_PR_.CPU0._PTC, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._TSS, IntObj)    // Warning: Unknown object
    External (_PR_.CPU1, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU2, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU3, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU4, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU5, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU6, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU7, DeviceObj)    // Warning: Unknown object
    External (PDC0, UnknownObj)    // Warning: Unknown object
    External (TCNT, IntObj)    // Warning: Unknown object

    Scope (\_PR.CPU1)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            Store (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                }, Local0)
            If (LNot (And (PDC0, 0x04)))
            {
                Store (Zero, Local1)
                Store (0xFD, Local2)
            }
            Else
            {
                Store (One, Local1)
                Store (0xFC, Local2)
            }

            Store (Local1, Index (DerefOf (Index (Local0, Zero)), 0x02))
            Store (Local2, Index (DerefOf (Index (Local0, Zero)), 0x03))
            Store (TCNT, Index (DerefOf (Index (Local0, Zero)), 0x04))
            Return (Local0)
        }
    }

    Scope (\_PR.CPU2)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            Store (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                }, Local0)
            If (LNot (And (PDC0, 0x04)))
            {
                Store (Zero, Local1)
                Store (0xFD, Local2)
            }
            Else
            {
                Store (0x02, Local1)
                Store (0xFC, Local2)
            }

            Store (Local1, Index (DerefOf (Index (Local0, Zero)), 0x02))
            Store (Local2, Index (DerefOf (Index (Local0, Zero)), 0x03))
            Store (TCNT, Index (DerefOf (Index (Local0, Zero)), 0x04))
            Return (Local0)
        }
    }

    Scope (\_PR.CPU3)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            Store (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                }, Local0)
            If (LNot (And (PDC0, 0x04)))
            {
                Store (Zero, Local1)
                Store (0xFD, Local2)
            }
            Else
            {
                Store (0x03, Local1)
                Store (0xFC, Local2)
            }

            Store (Local1, Index (DerefOf (Index (Local0, Zero)), 0x02))
            Store (Local2, Index (DerefOf (Index (Local0, Zero)), 0x03))
            Store (TCNT, Index (DerefOf (Index (Local0, Zero)), 0x04))
            Return (Local0)
        }
    }

    Scope (\_PR.CPU4)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x04, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU5)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x05, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU6)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x06, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }

    Scope (\_PR.CPU7)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x07, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }
}

