/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLFAlDZv.aml, Mon Jul 24 18:49:00 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00004FE6 (20454)
 *     Revision         0x01
 *     Checksum         0xBA
 *     OEM ID           "DppmRe"
 *     OEM Table ID     "OemDppm"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "SSDT", 1, "DppmRe", "OemDppm", 0x00001000)
{
    /*
     * iASL Warning: There were 3 external control methods found during
     * disassembly, but only 0 were resolved (3 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU0._PPC, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU0._PSS, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._PTC, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._TPC, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._TSD, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._TSS, IntObj)    // Warning: Unknown object
    External (_PR_.CPU1, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU2, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU3, UnknownObj)    // Warning: Unknown object
    External (_SB_.GDPL, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.EC34, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.EC35, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.EC44, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.PCI0.LPCB.EC0_.EC49, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.LPCB.EC0_.ERD6, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.GJF1, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.MHBR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.TMCP, DeviceObj)    // Warning: Unknown object
    External (_TZ_.TZ00, UnknownObj)    // Warning: Unknown object
    External (_TZ_.TZ00.CCCS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_TZ_.TZ01, UnknownObj)    // Warning: Unknown object
    External (DEVF, UnknownObj)    // Warning: Unknown object
    External (DMD0, IntObj)    // Warning: Unknown object
    External (MCPU, UnknownObj)    // Warning: Unknown object
    External (MHBR, UnknownObj)    // Warning: Unknown object
    External (MMCH, UnknownObj)    // Warning: Unknown object
    External (MTL_, UnknownObj)    // Warning: Unknown object
    External (PCTV, UnknownObj)    // Warning: Unknown object
    External (PDC0, UnknownObj)    // Warning: Unknown object
    External (PPCM, UnknownObj)    // Warning: Unknown object
    External (TCNT, UnknownObj)    // Warning: Unknown object

    Name (\_TZ.DPPM, 0x01)
    Name (\_TZ.DPME, Zero)
    Scope (\)
    {
        Method (TNT0, 0, NotSerialized)
        {
            If (\_TZ.DPME) {}
            Else
            {
                Notify (\_TZ.TZ00, 0x80)
            }
        }

        Method (TNT1, 0, NotSerialized)
        {
            If (\_TZ.DPME)
            {
                Notify (\_SB.PCI0.TMCP, 0x90)
            }
            Else
            {
                Notify (\_TZ.TZ01, 0x80)
            }
        }
    }

    Scope (\_SB.PCI0.TMCP)
    {
        Name (CINT, 0x01)
        Name (CTYP, 0x00)
        Name (LSTM, 0x00)
        Name (_STR, Unicode ("MCP"))  // _STR: Description String
        Name (PTYP, 0x09)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Name (NMPS, 0x0C)
        Name (NPS1, Package (0x01)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS2, Package (0x02)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS3, Package (0x03)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS4, Package (0x04)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS5, Package (0x05)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS6, Package (0x06)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS7, Package (0x07)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS8, Package (0x08)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPS9, Package (0x09)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPSA, Package (0x0A)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPSB, Package (0x0B)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPSC, Package (0x0C)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPSD, Package (0x0D)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPSE, Package (0x0E)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPSF, Package (0x0F)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (NPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS1, Package (0x01)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS2, Package (0x02)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS3, Package (0x03)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS4, Package (0x04)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS5, Package (0x05)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS6, Package (0x06)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS7, Package (0x07)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS8, Package (0x08)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPS9, Package (0x09)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPSA, Package (0x0A)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPSB, Package (0x0B)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPSC, Package (0x0C)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPSD, Package (0x0D)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPSE, Package (0x0E)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPSF, Package (0x0F)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (SPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_PR.CPU0._PSS, Local6))
            {
                Return (\_PR.CPU0._PSS)
            }
            ElseIf (And (PDC0, 0x01))
            {
                If (LEqual (NMPS, 0x01))
                {
                    Return (NPS1)
                }

                If (LEqual (NMPS, 0x02))
                {
                    Return (NPS2)
                }

                If (LEqual (NMPS, 0x03))
                {
                    Return (NPS3)
                }

                If (LEqual (NMPS, 0x04))
                {
                    Return (NPS4)
                }

                If (LEqual (NMPS, 0x05))
                {
                    Return (NPS5)
                }

                If (LEqual (NMPS, 0x06))
                {
                    Return (NPS6)
                }

                If (LEqual (NMPS, 0x07))
                {
                    Return (NPS7)
                }

                If (LEqual (NMPS, 0x08))
                {
                    Return (NPS8)
                }

                If (LEqual (NMPS, 0x09))
                {
                    Return (NPS9)
                }

                If (LEqual (NMPS, 0x0A))
                {
                    Return (NPSA)
                }

                If (LEqual (NMPS, 0x0B))
                {
                    Return (NPSB)
                }

                If (LEqual (NMPS, 0x0C))
                {
                    Return (NPSC)
                }

                If (LEqual (NMPS, 0x0D))
                {
                    Return (NPSD)
                }

                If (LEqual (NMPS, 0x0E))
                {
                    Return (NPSE)
                }

                If (LEqual (NMPS, 0x0F))
                {
                    Return (NPSF)
                }

                If (LEqual (NMPS, 0x10))
                {
                    Return (NPSS)
                }
            }
            Else
            {
                If (LEqual (NMPS, 0x01))
                {
                    Return (SPS1)
                }

                If (LEqual (NMPS, 0x02))
                {
                    Return (SPS2)
                }

                If (LEqual (NMPS, 0x03))
                {
                    Return (SPS3)
                }

                If (LEqual (NMPS, 0x04))
                {
                    Return (SPS4)
                }

                If (LEqual (NMPS, 0x05))
                {
                    Return (SPS5)
                }

                If (LEqual (NMPS, 0x06))
                {
                    Return (SPS6)
                }

                If (LEqual (NMPS, 0x07))
                {
                    Return (SPS7)
                }

                If (LEqual (NMPS, 0x08))
                {
                    Return (SPS8)
                }

                If (LEqual (NMPS, 0x09))
                {
                    Return (SPS9)
                }

                If (LEqual (NMPS, 0x0A))
                {
                    Return (SPSA)
                }

                If (LEqual (NMPS, 0x0B))
                {
                    Return (SPSB)
                }

                If (LEqual (NMPS, 0x0C))
                {
                    Return (SPSC)
                }

                If (LEqual (NMPS, 0x0D))
                {
                    Return (SPSD)
                }

                If (LEqual (NMPS, 0x0E))
                {
                    Return (SPSE)
                }

                If (LEqual (NMPS, 0x0F))
                {
                    Return (SPSF)
                }

                If (LEqual (NMPS, 0x10))
                {
                    Return (SPSS)
                }
            }
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (0x00)
        }

        Name (BPPC, 0x00)
        Name (CPPC, 0x00)
        Method (OPPC, 0, Serialized)
        {
            Store (0x00, CPPC)
            Store (\_SB.GDPL, Local0)
            If (LGreater (Local0, \_SB.PCI0.TMCP.CPPC))
            {
                Store (Local0, \_SB.PCI0.TMCP.CPPC)
            }

            \_SB.PCI0.TMCP.SPPC (\_SB.PCI0.TMCP.BPPC)
        }

        Name (LPPC, 0x00)
        Name (FFPS, 0x00)
        Name (RPPC, 0x00)
        Method (SPPC, 1, NotSerialized)
        {
            Store (Arg0, \_SB.PCI0.TMCP.BPPC)
            If (LGreater (\_SB.PCI0.TMCP.CPPC, Arg0))
            {
                Store (\_SB.PCI0.TMCP.CPPC, Arg0)
            }

            If (LNotEqual (NMPS, 0x01))
            {
                If (LEqual (\_SB.DPPM.WA0E, 0x00))
                {
                    Store (Arg0, PPCM)
                    Store (Arg0, \_PR.CPU0._PPC)
                }
                Else
                {
                    Store (NMPS, Local0)
                    Decrement (Local0)
                    If (LLess (\_SB.DPPM.DP0F, Local0))
                    {
                        Store (\_SB.DPPM.DP0F, Local0)
                    }

                    Store (Arg0, RPPC)
                    If (LAnd (FFPS, LLess (RPPC, Local0)))
                    {
                        Store (Local0, LPPC)
                        Store (Local0, PPCM)
                        Store (Local0, \_PR.CPU0._PPC)
                    }
                    Else
                    {
                        If (LLessEqual (Arg0, LPPC))
                        {
                            Store (Arg0, Local2)
                        }
                        ElseIf (LLess (Arg0, Local0))
                        {
                            Store (Local0, Local2)
                        }
                        Else
                        {
                            Store (Arg0, Local2)
                        }

                        Store (Arg0, LPPC)
                        Store (Local2, PPCM)
                        Store (Local2, \_PR.CPU0._PPC)
                    }
                }

                If (LEqual (TCNT, 0x04))
                {
                    Notify (\_PR.CPU0, 0x80)
                    Notify (\_PR.CPU1, 0x80)
                    Notify (\_PR.CPU2, 0x80)
                    Notify (\_PR.CPU3, 0x80)
                }
                ElseIf (LEqual (TCNT, 0x02))
                {
                    Notify (\_PR.CPU0, 0x80)
                    Notify (\_PR.CPU1, 0x80)
                }
                Else
                {
                    Notify (\_PR.CPU0, 0x80)
                }
            }
        }

        Name (TSSI, Package (0x08)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x05)
            {
                0x58, 
                0x036B, 
                0x00, 
                0x0F, 
                0x00
            }, 

            Package (0x05)
            {
                0x4B, 
                0x02EE, 
                0x00, 
                0x0E, 
                0x00
            }, 

            Package (0x05)
            {
                0x3F, 
                0x0271, 
                0x00, 
                0x0D, 
                0x00
            }, 

            Package (0x05)
            {
                0x32, 
                0x01F4, 
                0x00, 
                0x0C, 
                0x00
            }, 

            Package (0x05)
            {
                0x26, 
                0x0177, 
                0x00, 
                0x0B, 
                0x00
            }, 

            Package (0x05)
            {
                0x19, 
                0xFA, 
                0x00, 
                0x0A, 
                0x00
            }, 

            Package (0x05)
            {
                0x0D, 
                0x7D, 
                0x00, 
                0x09, 
                0x00
            }
        })
        Name (TSSM, Package (0x08)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x05)
            {
                0x58, 
                0x036B, 
                0x00, 
                0x1E, 
                0x00
            }, 

            Package (0x05)
            {
                0x4B, 
                0x02EE, 
                0x00, 
                0x1C, 
                0x00
            }, 

            Package (0x05)
            {
                0x3F, 
                0x0271, 
                0x00, 
                0x1A, 
                0x00
            }, 

            Package (0x05)
            {
                0x32, 
                0x01F4, 
                0x00, 
                0x18, 
                0x00
            }, 

            Package (0x05)
            {
                0x26, 
                0x0177, 
                0x00, 
                0x16, 
                0x00
            }, 

            Package (0x05)
            {
                0x19, 
                0xFA, 
                0x00, 
                0x14, 
                0x00
            }, 

            Package (0x05)
            {
                0x0D, 
                0x7D, 
                0x00, 
                0x12, 
                0x00
            }
        })
        Name (TSSF, 0x00)
        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_PR.CPU0._TSS, Local6))
            {
                Return (\_PR.CPU0._TSS)
            }
            Else
            {
                If (LNot (TSSF))
                {
                    Store (NMPS, Local1)
                    Decrement (Local1)
                    Store (DerefOf (Index (DerefOf (Index (\_SB.PCI0.TMCP._PSS (), Local1)), 0x01)), Local2)
                    Store (0x00, Local3)
                    While (LLess (Local3, SizeOf (TSSI)))
                    {
                        Store (Divide (Multiply (Local2, Subtract (0x08, Local3)), 0x08, ), Local4)
                        Store (Local4, Index (DerefOf (Index (TSSM, Local3)), 0x01))
                        Store (Local4, Index (DerefOf (Index (TSSI, Local3)), 0x01))
                        Increment (Local3)
                    }

                    Store (Ones, TSSF)
                }

                If (And (PDC0, 0x04))
                {
                    Return (TSSM)
                }
                Else
                {
                    Return (TSSI)
                }
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_PR.CPU0._TPC, Local6))
            {
                Store (\_PR.CPU0._TPC, Local0)
                Return (Local0)
            }
            Else
            {
                Return (0x00)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (CondRefOf (\_PR.CPU0._PTC, Local6))
            {
                Return (\_PR.CPU0._PTC)
            }
            Else
            {
                Return (Package (0x01)
                {
                    0x00
                })
            }
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_PR.CPU0._TSD, Local6))
            {
                Return (\_PR.CPU0._TSD)
            }
            Else
            {
                Return (Package (0x01)
                {
                    0x00
                })
            }
        }

        Method (_TDL, 0, Serialized)  // _TDL: T-State Depth Limit
        {
            If (LEqual (0x01, \_SB.FDVS))
            {
                Return (0x00)
            }

            Store (0x01, Local0)
            If (LEqual (\_SB.DPPM.DP02, 0x02))
            {
                Store (0x08, Local0)
            }

            If (LEqual (\_SB.DPPM.DP02, 0x05))
            {
                Store (0x01, Local0)
            }

            Store (Local0, \_SB.DPPM.DP00)
            Return (Local0)
        }

        Name (MPCI, Package (0x06)
        {
            0x012C, 
            0x00, 
            0x00, 
            0x00, 
            0x00, 
            0x00
        })
        Method (GPCI, 0, NotSerialized)
        {
            Return (MPCI)
        }

        Name (PTMP, 0x0BD8)
        Name (LTMC, 0x0BD8)
        Method (TMPC, 0, NotSerialized)
        {
            Store (\_SB.PCI0.LPCB.EC0.EC34, Local0)
            And (Local0, 0xFFFF, Local0)
            If (LLess (Local0, Add (0x0AAC, Multiply (0x0A, 0x96))))
            {
                Store (Local0, LTMC)
            }

            Return (LTMC)
        }

        Name (LTMG, 0x0BD8)
        Method (TMPG, 0, NotSerialized)
        {
            Return (LTMG)
        }

        Method (_TPT, 1, NotSerialized)  // _TPT: Trip Point Temperature
        {
            Store (Arg0, LSTM)
            Notify (\_SB.PCI0.TMCP, 0x91)
        }

        Name (CRTV, 0x73)
        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
        {
            Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP1A)), Local0)
            If (LEqual (\_SB.DPPM.DP02, 0x02))
            {
                Store (Add (0x0AAC, Multiply (0x0A, 0x73)), Local0)
            }

            If (LEqual (\_SB.DPPM.DP02, 0x05))
            {
                Store (Add (0x0AAC, Multiply (0x0A, 0x73)), Local0)
            }

            Store (Local0, \_SB.PCI0.TMCP.CRTV)
            Return (Local0)
        }

        Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
        {
            Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP1B)), Local0)
            If (LEqual (\_SB.DPPM.DP02, 0x02))
            {
                Store (Add (0x0AAC, Multiply (0x0A, 0x6E)), Local0)
            }

            If (LEqual (\_SB.DPPM.DP02, 0x05))
            {
                Store (Add (0x0AAC, Multiply (0x0A, 0x6E)), Local0)
            }

            Return (Local0)
        }

        Name (PSVV, 0x0E1C)
        Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
        {
            Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP1C)), Local0)
            If (LEqual (\_SB.DPPM.DP02, 0x02))
            {
                Store (Add (0x0AAC, Multiply (0x0A, 0x55)), Local0)
            }

            If (LEqual (\_SB.DPPM.DP02, 0x05))
            {
                Store (Add (0x0AAC, Multiply (0x0A, 0x58)), Local0)
            }

            Store (Local0, \_SB.PCI0.TMCP.PSVV)
            Return (Local0)
        }

        Method (PGMB, 0, NotSerialized)
        {
            Return (\_SB.PCI0.MHBR)
        }
    }

    Scope (\_SB)
    {
        Name (TCAP, Zero)
        Name (DPPB, 0xFED98000)
        Name (DPPL, 0x8000)
        Device (DDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xFED98000,         // Address Base
                    0x00008000,         // Address Length
                    _Y00)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.DDRC._Y00._BAS, DBAS)  // _BAS: Base Address
                Store (DPPB, DBAS)
                CreateDWordField (BUF0, \_SB.DDRC._Y00._LEN, DLEN)  // _LEN: Length
                Store (DPPL, DLEN)
                Return (BUF0)
            }
        }

        Device (DPPM)
        {
            Name (_HID, EisaId ("INT3400"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (IDSP, Package (0x04)
            {
                ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3"), 
                ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae"), 
                ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a"), 
                ToUUID ("16caf1b7-dd38-40ed-b1c1-1b8a1913d531")
            })
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Name (UID2, ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3"))
                CreateDWordField (Arg3, 0x00, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                CreateDWordField (Arg0, 0x00, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                CreateDWordField (UID2, 0x00, EID0)
                CreateDWordField (UID2, 0x04, EID1)
                CreateDWordField (UID2, 0x08, EID2)
                CreateDWordField (UID2, 0x0C, EID3)
                Store (CAP1, \_SB.TCAP)
                If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3)))))
                {
                    Store (0x06, Index (STS1, 0x00))
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, 0x01))
                {
                    Store (0x0A, Index (STS1, 0x00))
                    Return (Arg3)
                }

                If (LNotEqual (Arg2, 0x02))
                {
                    Store (0x03, Index (STS1, 0x00))
                    Return (Arg3)
                }

                If (Not (And (STS1, 0x01)))
                {
                    If (And (CAP1, 0x01))
                    {
                        Store (0x01, \_TZ.DPME)
                        Or (DEVF, 0x02, DEVF)
                        Notify (\_TZ.TZ00, 0x80)
                        Notify (\_TZ.TZ01, 0x80)
                        Store (0x01, \_SB.DPPM.WA0E)
                    }
                    Else
                    {
                        Store (0x00, \_TZ.DPME)
                        Notify (\_TZ.TZ00, 0x80)
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    \_SB.DPPM.IECD ()
                    \_SB.DPPM.IOSD ()
                    \_SB.DPPM.WAM0 ()
                }

                Return (Arg3)
            }

            Method (IECD, 0, NotSerialized)
            {
                If (And (\_SB.TCAP, 0x01))
                {
                    \_SB.PCI0.LPCB.EC0.EC44 (0x6E, \_SB.PCI0.LPCB.EC0.EC44 (0x6D, 0x00))
                    0x00
                    0x00
                    Store (0x80, \_SB.PCI0.LPCB.EC0.ERD6)
                }
                Else
                {
                    Store (0x9F, \_SB.PCI0.LPCB.EC0.ERD6)
                }
            }

            Name (ETRM, Package (0x05)
            {
                Package (0x04)
                {
                    \_SB.PCI0.TMEM, 
                    "INT3402", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.PCI0.LPCB.TSK1, 
                    "INT3403", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.PCI0.LPCB.TSK2, 
                    "INT3403", 
                    0x06, 
                    "1"
                }, 

                Package (0x04)
                {
                    \_SB.PCI0.TMCP, 
                    "8086_0103", 
                    0x00, 
                    "0x00040000"
                }, 

                Package (0x04)
                {
                    \_SB.PCI0.TPCH, 
                    "8086_1C24", 
                    0x00, 
                    "0x001F0006"
                }
            })
            Name (DP00, 0x01)
            Name (DP02, 0x00)
            Name (DP03, 0x28)
            Name (DP04, 0xFA)
            Name (DP05, 0x32)
            Name (DP06, 0xC8)
            Name (DP07, 0x3C)
            Name (DP08, 0x64)
            Name (DP0F, 0x00)
            Name (DP10, 0x00)
            Name (DP11, 0x00)
            Name (DP12, 0x00)
            Name (DP13, 0x00)
            Name (DP14, 0x00)
            Name (DP15, 0x00)
            Name (DP16, 0x00)
            Name (DP17, 0x00)
            Name (DP18, 0x00)
            Name (DP19, 0x00)
            Name (DP1A, 0x73)
            Name (DP1B, 0x6E)
            Name (DP1C, 0x58)
            Name (DP1D, 0x03)
            Name (DP1E, 0x00)
            Name (DP1F, 0x65)
            Name (DP1G, 0x6E)
            Name (DP20, 0x00)
            Name (DP21, 0x00)
            Name (DP22, 0x00)
            Name (DP23, 0x00)
            Name (DP24, 0x00)
            Name (DP25, 0x00)
            Name (DP26, 0x00)
            Name (DP27, 0x00)
            Name (DP28, 0x00)
            Name (DP29, 0x00)
            Name (DP2A, 0x78)
            Name (DP2B, 0x73)
            Name (DP2C, 0x64)
            Name (DP2D, 0x03)
            Name (DP2E, 0x00)
            Name (DP30, 0x00)
            Name (DP31, 0x00)
            Name (DP32, 0x00)
            Name (DP33, 0x00)
            Name (DP34, 0x00)
            Name (DP35, 0x00)
            Name (DP36, 0x00)
            Name (DP37, 0x00)
            Name (DP38, 0x00)
            Name (DP39, 0x00)
            Name (DP3A, 0x6E)
            Name (DP3B, 0x69)
            Name (DP3C, 0x64)
            Name (DP3D, 0x03)
            Name (DP3E, 0x00)
            Name (DP40, 0x00)
            Name (DP41, 0x00)
            Name (DP42, 0x00)
            Name (DP43, 0x00)
            Name (DP44, 0x00)
            Name (DP45, 0x00)
            Name (DP46, 0x00)
            Name (DP47, 0x00)
            Name (DP48, 0x00)
            Name (DP49, 0x00)
            Name (DP4A, 0x78)
            Name (DP4B, 0x73)
            Name (DP4C, 0x64)
            Name (DP4D, 0x03)
            Name (DP4E, 0x00)
            Name (DP50, 0x00)
            Name (DP51, 0x00)
            Name (DP52, 0x00)
            Name (DP53, 0x00)
            Name (DP54, 0x00)
            Name (DP55, 0x00)
            Name (DP56, 0x00)
            Name (DP57, 0x00)
            Name (DP58, 0x00)
            Name (DP59, 0x00)
            Name (DP5A, 0x78)
            Name (DP5B, 0x6E)
            Name (DP5C, 0x64)
            Name (DP5D, 0x03)
            Name (DP5E, 0x00)
            Name (DP60, 0x00)
            Name (DP61, 0x00)
            Name (DP62, 0x00)
            Name (DP63, 0x00)
            Name (DP64, 0x00)
            Name (DP65, 0x00)
            Name (DP66, 0x00)
            Name (DP67, 0x00)
            Name (DP68, 0x00)
            Name (DP69, 0x00)
            Name (DP6A, 0x00)
            Name (DP6B, 0x00)
            Name (DP6C, 0x00)
            Name (DP6D, 0x00)
            Name (DP6E, 0x00)
            Name (DP70, 0x00)
            Name (DP71, 0x00)
            Name (DP72, 0x00)
            Name (DP73, 0x00)
            Name (DP74, 0x00)
            Name (DP75, 0x00)
            Name (DP76, 0x00)
            Name (DP77, 0x00)
            Name (DP78, 0x00)
            Name (DP79, 0x00)
            Name (DP7A, 0x00)
            Name (DP7B, 0x00)
            Name (DP7C, 0x00)
            Name (DP7D, 0x00)
            Name (DP7E, 0x00)
            Name (DP80, 0x00)
            Name (DP81, 0x00)
            Name (DP82, 0x00)
            Name (DP83, 0x00)
            Name (DP84, 0x00)
            Name (DP85, 0x00)
            Name (DP86, 0x00)
            Name (DP87, 0x00)
            Name (DP88, 0x00)
            Name (DP89, 0x00)
            Name (DP8A, 0x00)
            Name (DP8B, 0x00)
            Name (DP8C, 0x00)
            Name (DP8D, 0x00)
            Name (DP8E, 0x00)
            Name (DP90, 0x00)
            Name (DP91, 0x00)
            Name (DP92, 0x00)
            Name (DP93, 0x00)
            Name (DP94, 0x00)
            Name (DP95, 0x00)
            Name (DP96, 0x00)
            Name (DP97, 0x00)
            Name (DP98, 0x00)
            Name (DP99, 0x00)
            Name (DP9A, 0x00)
            Name (DP9B, 0x00)
            Name (DP9C, 0x00)
            Name (DP9D, 0x00)
            Name (DP9E, 0x00)
            Name (DPA0, 0x00)
            Name (DPA1, 0x00)
            Name (DPA2, 0x00)
            Name (DPA3, 0x00)
            Name (DPA4, 0x00)
            Name (DPA5, 0x00)
            Name (DPA6, 0x00)
            Name (DPA7, 0x00)
            Name (DPA8, 0x00)
            Name (DPA9, 0x00)
            Name (DPAA, 0x00)
            Name (DPAB, 0x00)
            Name (DPAC, 0x00)
            Name (DPAD, 0x00)
            Name (DPAE, 0x00)
            Name (WA0E, 0x00)
            Method (IOSD, 0, NotSerialized)
            {
                If (And (\_SB.TCAP, 0x01))
                {
                    Store (\_SB.DPPM.DP1F, Local0)
                    If (LEqual (\_SB.DPPM.DP02, 0x02))
                    {
                        Store (0x65, Local0)
                    }

                    If (LEqual (\_SB.DPPM.DP02, 0x05))
                    {
                        Store (0x65, Local0)
                    }

                    Store (Local0, MTL)
                }
                Else
                {
                }
            }

            Method (SOSD, 0, NotSerialized)
            {
                Store (\_SB.FDVS, MCPU)
                Store (\_SB.FDVS, MMCH)
            }

            Name (WAN0, 0x01)
            Method (WAM0, 0, Serialized)
            {
                If (\_SB.DPPM.WA0E)
                {
                    Store (\_SB.PCI0.LPCB.EC0.EC34, Local2)
                    And (Local2, 0xFFFF, Local2)
                    Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP1G)), Local1)
                    If (\_SB.DPPM.WAN0)
                    {
                        Store (\_SB.PCI0.LPCB.EC0.EC35, Local0)
                        If (LNotEqual (Local0, Local1))
                        {
                            \_SB.PCI0.LPCB.EC0.EC49 (Local1)
                            Store (0x00, \_SB.DPPM.WAN0)
                        }
                    }

                    If (LAnd (LGreater (Local2, Local1), LEqual (\_SB.PCI0.TMCP.FFPS, 0x00)))
                    {
                        Store (0x01, \_SB.PCI0.TMCP.FFPS)
                        \_SB.PCI0.TMCP.SPPC (\_SB.PCI0.TMCP.RPPC)
                    }
                    ElseIf (LAnd (LLess (Local2, Local1), LEqual (\_SB.PCI0.TMCP.FFPS, 0x01)))
                    {
                        Store (0x00, \_SB.PCI0.TMCP.FFPS)
                        \_SB.PCI0.TMCP.SPPC (\_SB.PCI0.TMCP.RPPC)
                    }
                }
            }

            Name (PMCP, 0x00)
            Name (PPCH, 0x00)
            Name (PMEM, 0x00)
            Name (PSK1, 0x00)
            Name (PSK2, 0x00)
            Name (P_VR, 0x00)
            Name (PDGF, 0x00)
            Name (PFP0, 0x00)
            Name (PCG1, 0x00)
            Name (PCG2, 0x00)
        }

        Name (DCMS, 0x00)
        Method (CHK1, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.TMCP, 0x80)
            Return (0x00)
        }

        Method (CHK2, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.TMCP, 0x82)
            Return (0x00)
        }

        Method (CETP, 0, NotSerialized)
        {
            Store (DMD0, DCMS)
            Store (DMD0, \_SB.DPPM.DP02)
            Notify (\_SB.PCI0.TMCP, 0x91)
            Notify (\_SB.PCI0.TPCH, 0x91)
            Notify (\_SB.PCI0.TMEM, 0x91)
            Notify (\_SB.PCI0.LPCB.TSK1, 0x91)
            Notify (\_SB.PCI0.LPCB.TSK2, 0x91)
            Notify (\_SB.PCI0.TMCP, 0x82)
            \_SB.DPPM.IOSD ()
        }

        Name (FDVS, 0x00)
        Name (DLMS, 0x00)
        Name (FDT2, 0x00)
        Name (CCS2, 0x00)
        Name (FDET, 0x00)
        Method (RSAX, 0, NotSerialized)
        {
            \_SB.PCI0.TMEM.SLAX ()
            Notify (\_SB.PCI0.TMEM, 0x91)
            \_SB.PCI0.LPCB.TSK1.SLAX ()
            Notify (\_SB.PCI0.LPCB.TSK1, 0x91)
            \_SB.PCI0.LPCB.TSK2.SLAX ()
            Notify (\_SB.PCI0.LPCB.TSK2, 0x91)
        }

        Name (CW07, 0x00)
        Method (WA07, 0, Serialized)
        {
            If (LEqual (CW07, 0x00))
            {
                Store (0x00, Local0)
                Store (0x00, Local1)
                Add (0x02, Local0, Local0)
                Add (\_SB.PCI0.TMEM.CAX0, Local1, Local1)
                Add (\_SB.PCI0.TMEM.CAX1, Local1, Local1)
                Add (0x02, Local0, Local0)
                Add (\_SB.PCI0.LPCB.TSK1.CAX0, Local1, Local1)
                Add (\_SB.PCI0.LPCB.TSK1.CAX1, Local1, Local1)
                Add (0x02, Local0, Local0)
                Add (\_SB.PCI0.LPCB.TSK2.CAX0, Local1, Local1)
                Add (\_SB.PCI0.LPCB.TSK2.CAX1, Local1, Local1)
                If (LEqual (Local0, Local1))
                {
                    Sleep (0x32)
                    Notify (\_SB.PCI0.TMEM, 0x91)
                    Notify (\_SB.PCI0.LPCB.TSK1, 0x91)
                    Notify (\_SB.PCI0.LPCB.TSK2, 0x91)
                    Notify (\_SB.PCI0.TMCP, 0x91)
                    Notify (\_SB.PCI0.TPCH, 0x91)
                    Store (0x01, CW07)
                }
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (TBTX, SystemMemory, Add (ShiftLeft (MHBR, 0x0F), 0x59A0), 0x04)
        Field (TBTX, DWordAcc, NoLock, Preserve)
        {
                ,   17, 
            TTAU,   7
        }

        Device (TMEM)
        {
            Name (_HID, EisaId ("INT3402"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (LSTM, 0x00)
            Name (_STR, Unicode ("Memory"))  // _STR: Description String
            Name (PTYP, 0x02)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (MTMP, 0x0BD8)
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Store (\_SB.PCI0.LPCB.EC0.EC44 (0x66, 0x00), 0x00)
                Local0
                And (Local0, 0xFFFF, Local0)
                If (LNotEqual (Local0, 0xFFFF))
                {
                    If (LLess (Local0, Add (0x0AAC, Multiply (0x0A, 0x96))))
                    {
                        Store (Local0, MTMP)
                    }
                }

                If (LLess (MTMP, 0x0AAC))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, Add (\_SB.DPPM.DP3D, 0x02))), MTMP)
                }

                Store (\_SB.PCI0.TMEM.PSVV, Local0)
                Subtract (Local0, Multiply (\_SB.DPPM.DP3E, 0x0A), Local1)
                If (LAnd (LEqual (\_SB.DPPM.PMEM, 0x00), LGreaterEqual (MTMP, Local0)))
                {
                    Store (0x01, \_SB.DPPM.PMEM)
                    Notify (\_SB.PCI0.TMEM, 0x91)
                }

                If (LAnd (LEqual (\_SB.DPPM.PMEM, 0x01), LLess (MTMP, Local1)))
                {
                    Store (0x00, \_SB.DPPM.PMEM)
                    Notify (\_SB.PCI0.TMEM, 0x91)
                }

                If (LGreaterEqual (MTMP, \_SB.PCI0.TMEM.CRTV))
                {
                    \_TZ.TZ00.CCCS ()
                }

                Return (MTMP)
            }

            Method (_TPT, 1, NotSerialized)  // _TPT: Trip Point Temperature
            {
                Store (Arg0, LSTM)
                Notify (\_SB.PCI0.TMEM, 0x91)
            }

            Name (PATC, 0x02)
            Name (LAX0, 0x1024)
            Name (CAX0, 0x00)
            Method (PAT0, 1, Serialized)
            {
                Store (Arg0, LAX0)
                \_SB.PCI0.LPCB.EC0.EC44 (0x67, Arg0)
                0x00
                If (LEqual (CAX0, 0x00))
                {
                    Store (0x01, CAX0)
                }

                \_SB.WA07 ()
            }

            Name (LAX1, 0x0FC0)
            Name (CAX1, 0x00)
            Method (PAT1, 1, Serialized)
            {
                Store (Arg0, LAX1)
                \_SB.PCI0.LPCB.EC0.EC44 (0x68, Arg0)
                0x00
                If (LEqual (CAX1, 0x00))
                {
                    Store (0x01, CAX1)
                }

                \_SB.WA07 ()
            }

            Method (SLAX, 0, NotSerialized)
            {
                \_SB.PCI0.LPCB.EC0.EC44 (0x67, LAX0)
                0x00
                \_SB.PCI0.LPCB.EC0.EC44 (0x68, LAX1)
                0x00
            }

            Name (CRTV, 0x6E)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP3A)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x6E)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x6E)), Local0)
                }

                Store (Local0, \_SB.PCI0.TMEM.CRTV)
                Return (Local0)
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP3B)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x69)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x69)), Local0)
                }

                Return (Local0)
            }

            Name (PSVV, 0x0E94)
            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP3C)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                Store (Local0, \_SB.PCI0.TMEM.PSVV)
                If (LEqual (\_SB.DPPM.PMEM, 0x01))
                {
                    Subtract (Local0, Multiply (\_SB.DPPM.DP3E, 0x0A), Local0)
                }

                Return (Local0)
            }

            Method (GTSH, 0, NotSerialized)
            {
                Return (Multiply (0x0A, \_SB.DPPM.DP3D))
            }

            Method (PGMB, 0, NotSerialized)
            {
                Return (\_SB.PCI0.MHBR)
            }
        }

        Device (TPCH)
        {
            Name (_ADR, 0x001F0006)  // _ADR: Address
            Name (_STR, Unicode ("PCH"))  // _STR: Description String
            Name (PTYP, 0x05)
            Name (CTYP, 0x00)
            Name (LSTM, 0x00)
            OperationRegion (PCHT, PCI_Config, 0x10, 0x08)
            Field (PCHT, DWordAcc, NoLock, Preserve)
            {
                STYP,   1, 
                ADRG,   2, 
                PREF,   1, 
                    ,   8, 
                TBAR,   52
            }

            Name (CRTV, 0x78)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP2A)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x78)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x78)), Local0)
                }

                Store (Local0, \_SB.PCI0.TPCH.CRTV)
                Return (Local0)
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP2B)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x73)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x73)), Local0)
                }

                Return (Local0)
            }

            Name (PSVV, 0x0E94)
            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP2C)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                Store (Local0, \_SB.PCI0.TPCH.PSVV)
                Return (Local0)
            }

            Name (GTSH, 0x1E)
            Method (_TPT, 1, NotSerialized)  // _TPT: Trip Point Temperature
            {
                Store (Arg0, LSTM)
                Notify (\_SB.PCI0.TPCH, 0x91)
            }

            Name (PTMP, 0x0BD8)
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (And (DEVF, 0x04))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x1E)), PTMP)
                    Store (\_SB.PCI0.LPCB.EC0.EC44 (0x61, 0x00), 0x00)
                    Local0
                    And (Local0, 0xFFFF, Local0)
                    If (LNotEqual (Local0, 0xFFFF))
                    {
                        If (LLess (Local0, Add (0x0AAC, Multiply (0x0A, 0x96))))
                        {
                            Store (Local0, PTMP)
                        }
                    }
                }
                Else
                {
                    Store (Add (0x0AAC, Multiply (0x0A, PCTV)), Local0)
                    And (Local0, 0xFFFF, Local0)
                    If (LNotEqual (Local0, 0xFFFF))
                    {
                        If (LLess (Local0, Add (0x0AAC, Multiply (0x0A, 0x78))))
                        {
                            Store (Local0, PTMP)
                        }
                    }
                }

                If (LLess (PTMP, 0x0AAC))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, Add (\_SB.DPPM.DP2D, 0x02))), PTMP)
                }

                Return (PTMP)
            }
        }
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Device (TSK1)
        {
            Name (_HID, EisaId ("INT3403"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (LSTM, 0x00)
            Name (CTYP, 0x00)
            Name (_STR, Unicode ("Skin 1"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (TTSL, 0x0BD8)
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Store (\_SB.PCI0.LPCB.EC0.EC44 (0x60, 0x00), 0x00)
                Local0
                And (Local0, 0xFFFF, Local0)
                If (LNotEqual (Local0, 0xFFFF))
                {
                    If (LLess (Local0, Add (0x0AAC, Multiply (0x0A, 0x96))))
                    {
                        Store (Local0, TTSL)
                    }
                }

                If (LLess (TTSL, 0x0AAC))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, Add (\_SB.DPPM.DP4D, 0x02))), TTSL)
                }

                Store (\_SB.PCI0.LPCB.TSK1.PSVV, Local0)
                Subtract (Local0, Multiply (\_SB.DPPM.DP4E, 0x0A), Local1)
                If (LAnd (LEqual (\_SB.DPPM.PSK1, 0x00), LGreaterEqual (TTSL, Local0)))
                {
                    Store (0x01, \_SB.DPPM.PSK1)
                    Notify (\_SB.PCI0.LPCB.TSK1, 0x91)
                }

                If (LAnd (LEqual (\_SB.DPPM.PSK1, 0x01), LLess (TTSL, Local1)))
                {
                    Store (0x00, \_SB.DPPM.PSK1)
                    Notify (\_SB.PCI0.LPCB.TSK1, 0x91)
                }

                If (LGreaterEqual (TTSL, \_SB.PCI0.LPCB.TSK1.CRTV))
                {
                    \_TZ.TZ00.CCCS ()
                }

                Return (TTSL)
            }

            Method (_TPT, 1, NotSerialized)  // _TPT: Trip Point Temperature
            {
                Store (Arg0, LSTM)
                Notify (\_SB.PCI0.LPCB.TSK1, 0x91)
            }

            Name (PATC, 0x02)
            Name (LAX0, 0x1024)
            Name (CAX0, 0x00)
            Method (PAT0, 1, Serialized)
            {
                Store (Arg0, LAX0)
                \_SB.PCI0.LPCB.EC0.EC44 (0x62, Arg0)
                0x00
                If (LEqual (CAX0, 0x00))
                {
                    Store (0x01, CAX0)
                }

                \_SB.WA07 ()
            }

            Name (LAX1, 0x0FC0)
            Name (CAX1, 0x00)
            Method (PAT1, 1, Serialized)
            {
                Store (Arg0, LAX1)
                \_SB.PCI0.LPCB.EC0.EC44 (0x63, Arg0)
                0x00
                If (LEqual (CAX1, 0x00))
                {
                    Store (0x01, CAX1)
                }

                \_SB.WA07 ()
            }

            Method (SLAX, 0, NotSerialized)
            {
                \_SB.PCI0.LPCB.EC0.EC44 (0x62, LAX0)
                0x00
                \_SB.PCI0.LPCB.EC0.EC44 (0x63, LAX1)
                0x00
            }

            Name (CRTV, 0x78)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP4A)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x78)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x78)), Local0)
                }

                Store (Local0, \_SB.PCI0.LPCB.TSK1.CRTV)
                Return (Local0)
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP4B)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x73)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x73)), Local0)
                }

                Return (Local0)
            }

            Name (PSVV, 0x0E94)
            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP4C)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                Store (Local0, \_SB.PCI0.LPCB.TSK1.PSVV)
                If (LEqual (\_SB.DPPM.PSK1, 0x01))
                {
                    Subtract (Local0, Multiply (\_SB.DPPM.DP4E, 0x0A), Local0)
                }

                Return (Local0)
            }

            Method (GTSH, 0, NotSerialized)
            {
                Return (Multiply (0x0A, \_SB.DPPM.DP4D))
            }
        }

        Device (TSK2)
        {
            Name (_HID, EisaId ("INT3403"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (LSTM, 0x00)
            Name (CTYP, 0x00)
            Name (_STR, Unicode ("Skin 2"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (TTSL, 0x0BD8)
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Store (\_SB.PCI0.LPCB.EC0.EC44 (0x61, 0x00), 0x00)
                Local0
                And (Local0, 0xFFFF, Local0)
                If (LNotEqual (Local0, 0xFFFF))
                {
                    If (LLess (Local0, Add (0x0AAC, Multiply (0x0A, 0x96))))
                    {
                        Store (Local0, TTSL)
                    }
                }

                If (LLess (TTSL, 0x0AAC))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, Add (\_SB.DPPM.DP5D, 0x02))), TTSL)
                }

                Store (\_SB.PCI0.LPCB.TSK2.PSVV, Local0)
                Subtract (Local0, Multiply (\_SB.DPPM.DP5E, 0x0A), Local1)
                If (LAnd (LEqual (\_SB.DPPM.PSK2, 0x00), LGreaterEqual (TTSL, Local0)))
                {
                    Store (0x01, \_SB.DPPM.PSK2)
                    Notify (\_SB.PCI0.LPCB.TSK2, 0x91)
                }

                If (LAnd (LEqual (\_SB.DPPM.PSK2, 0x01), LLess (TTSL, Local1)))
                {
                    Store (0x00, \_SB.DPPM.PSK2)
                    Notify (\_SB.PCI0.LPCB.TSK2, 0x91)
                }

                If (LGreaterEqual (TTSL, \_SB.PCI0.LPCB.TSK2.CRTV))
                {
                    \_TZ.TZ00.CCCS ()
                }

                Return (TTSL)
            }

            Method (_TPT, 1, NotSerialized)  // _TPT: Trip Point Temperature
            {
                Store (Arg0, LSTM)
                Notify (\_SB.PCI0.LPCB.TSK2, 0x91)
            }

            Name (PATC, 0x02)
            Name (LAX0, 0x1024)
            Name (CAX0, 0x00)
            Method (PAT0, 1, Serialized)
            {
                Store (Arg0, LAX0)
                \_SB.PCI0.LPCB.EC0.EC44 (0x64, Arg0)
                0x00
                If (LEqual (CAX0, 0x00))
                {
                    Store (0x01, CAX0)
                }

                \_SB.WA07 ()
            }

            Name (LAX1, 0x0FC0)
            Name (CAX1, 0x00)
            Method (PAT1, 1, Serialized)
            {
                Store (Arg0, LAX1)
                \_SB.PCI0.LPCB.EC0.EC44 (0x65, Arg0)
                0x00
                If (LEqual (CAX1, 0x00))
                {
                    Store (0x01, CAX1)
                }

                \_SB.WA07 ()
            }

            Method (SLAX, 0, NotSerialized)
            {
                \_SB.PCI0.LPCB.EC0.EC44 (0x64, LAX0)
                0x00
                \_SB.PCI0.LPCB.EC0.EC44 (0x65, LAX1)
                0x00
            }

            Name (CRTV, 0x78)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP5A)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x78)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x78)), Local0)
                }

                Store (Local0, \_SB.PCI0.LPCB.TSK2.CRTV)
                Return (Local0)
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP5B)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x6E)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x6E)), Local0)
                }

                Return (Local0)
            }

            Name (PSVV, 0x0E94)
            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Store (Add (0x0AAC, Multiply (0x0A, \_SB.DPPM.DP5C)), Local0)
                If (LEqual (\_SB.DPPM.DP02, 0x02))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                If (LEqual (\_SB.DPPM.DP02, 0x05))
                {
                    Store (Add (0x0AAC, Multiply (0x0A, 0x64)), Local0)
                }

                Store (Local0, \_SB.PCI0.LPCB.TSK2.PSVV)
                If (LEqual (\_SB.DPPM.PSK2, 0x01))
                {
                    Subtract (Local0, Multiply (\_SB.DPPM.DP5E, 0x0A), Local0)
                }

                Return (Local0)
            }

            Method (GTSH, 0, NotSerialized)
            {
                Return (Multiply (0x0A, \_SB.DPPM.DP5D))
            }
        }
    }

    Scope (\_SB.DPPM)
    {
        Name (TRT1, Package (0x0A)
        {
            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.LPCB.TSK1, 
                0x10, 
                0x0258, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.LPCB.TSK2, 
                0x0E, 
                0x0258, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.TMCP, 
                0x34, 
                0x1E, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.TPCH, 
                0x0A, 
                0x012C, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.TMEM, 
                0x03, 
                0x012C, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.LPCB.TSK1, 
                0x0A, 
                0x0258, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.LPCB.TSK2, 
                0x13, 
                0x0258, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.TMCP, 
                0x0C, 
                0x012C, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.TPCH, 
                0x1E, 
                0x012C, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.TMEM, 
                0x32, 
                0x1E, 
                0x01, 
                0x00, 
                0x00, 
                0x00
            }
        })
        Name (TRT0, Package (0x0A)
        {
            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.LPCB.TSK1, 
                0x0C, 
                0x0258, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.LPCB.TSK2, 
                0x0B, 
                0x0258, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.TMCP, 
                0x2D, 
                0x1E, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.TPCH, 
                0x0C, 
                0x012C, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMCP, 
                \_SB.PCI0.TMEM, 
                0x0B, 
                0x0258, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.LPCB.TSK1, 
                0x0C, 
                0x0258, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.LPCB.TSK2, 
                0x0E, 
                0x0258, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.TMCP, 
                0x0C, 
                0x012C, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.TPCH, 
                0x1A, 
                0x012C, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }, 

            Package (0x08)
            {
                \_SB.PCI0.TMEM, 
                \_SB.PCI0.TMEM, 
                0x29, 
                0x1E, 
                0x00, 
                0x00, 
                0x00, 
                0x00
            }
        })
        Method (_TRT, 0, NotSerialized)  // _TRT: Thermal Relationship Table
        {
            Store (\_SB.PCI0.LPCB.EC0.GJF1, Local0)
            If (Local0)
            {
                Return (TRT0)
            }
            Else
            {
                Return (TRT1)
            }
        }
    }
}

