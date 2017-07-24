/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160930-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT.aml, Mon Jul 24 18:55:05 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000C1C2 (49602)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x1B
 *     OEM ID           "MATBIO"
 *     OEM Table ID     "CF19-5  "
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "DSDT", 1, "MATBIO", "CF19-5  ", 0x00000000)
{
    /*
     * iASL Warning: There were 19 external control methods found during
     * disassembly, but only 9 were resolved (10 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
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
    External (_PR_.CPU0._PPC, IntObj)
    External (_SB_.CETP, MethodObj)    // 0 Arguments
    External (_SB_.DPPM, UnknownObj)
    External (_SB_.DPPM.IECD, MethodObj)    // 0 Arguments
    External (_SB_.DPPM.IOSD, MethodObj)    // 0 Arguments
    External (_SB_.DPPM.SOSD, MethodObj)    // 0 Arguments
    External (_SB_.DPPM.WA0E, IntObj)
    External (_SB_.DPPM.WAM0, MethodObj)    // 0 Arguments
    External (_SB_.DPPM.WAN0, IntObj)
    External (_SB_.PCI0.LPCB.TSK1, UnknownObj)
    External (_SB_.PCI0.LPCB.TSK2, UnknownObj)
    External (_SB_.PCI0.TMCP.OPPC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.TMEM, UnknownObj)
    External (_SB_.PCI0.TTAU, FieldUnitObj)
    External (_SB_.PTMD.EDCF, IntObj)
    External (_SB_.PTMD.EDPF, IntObj)
    External (_SB_.PTMD.EDPM, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PTMD.IECD, MethodObj)    // Warning: Unknown method, guessing 6 arguments
    External (_SB_.PTMD.IOSD, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PTMD.OPPC, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PTMD.PM23, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PTMD.PM24, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PTMD.PM25, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PTMD.SOSD, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.RSAX, MethodObj)    // 0 Arguments
    External (_TZ_.DPME, IntObj)
    External (_TZ_.DPPM, IntObj)
    External (CFGD, IntObj)
    External (HDOS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (HWID, IntObj)
    External (IDAB, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)
    External (TNT0, MethodObj)    // 0 Arguments
    External (TNT1, MethodObj)    // 0 Arguments

Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03                                           
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00                                           
            }, Arg4)
        Return (Zero)
    }

    Name (SS1, 0x01)
    Name (SS2, 0x00)
    Name (SS3, 0x01)
    Name (SS4, 0x01)
    Name (IOST, 0x5403)
    Name (TOPM, 0xCF9FFFFF)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, 0x01)
    Name (MG1B, 0x00000000)
    Name (MG1L, 0x00000000)
    Name (MG2B, 0xCFA00000)
    Name (MG2L, 0x2CB0C000)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (SMBL, 0x10)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, 0x00)
    Name (AOTB, 0x00)
    Name (AAXB, 0x00)
    Name (PEHP, 0x00)
    Name (SHPC, 0x01)
    Name (PEPM, 0x00)
    Name (PEER, 0x00)
    Name (PECS, 0x00)
    Name (ITKE, 0x00)
    Name (DSSP, 0x00)
    Name (FHPP, 0x00)
    Name (FMBL, 0x01)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (BSH, 0x00)
    Name (BEL, 0x01)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELS, 0x09)
    Name (BRHS, 0x0A)
    Name (BTFS, 0x0B)
    Name (BEHS, 0x0C)
    Name (BPHS, 0x0D)
    Name (BTL, 0x10)
    Name (BSR, 0x14)
    Name (BSC, 0x1B)
    Name (BCC, 0x1C)
    Name (BOF, 0x20)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (BLLS, 0x25)
    Name (BLLP, 0x26)
    Name (BLLD, 0x27)
    Name (BHBE, 0x30)
    Name (BHBC, 0x31)
    Name (BHBN, 0x32)
    Name (BHBM, 0x33)
    Name (SPIO, 0x2E)
    Name (IO1B, 0x0A00)
    Name (IO1L, 0x20)
    Name (SMIT, 0xB2)
    Name (OFST, 0x35)
    Name (TPMF, 0x00)
    Name (TMF1, 0x00)
    Name (TMF2, 0x00)
    Name (TMF3, 0x00)
    Name (TRTP, 0x01)
    Name (WDTE, 0x01)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, 0x01)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (MBEC, 0x00)
    OperationRegion (GNVS, SystemMemory, 0xCAF9C918, 0x03DC)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        ISGM,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        GBAS,   16, 
        Offset (0x19D), 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        RSV2,   8, 
        RSV3,   8, 
        ANVL,   16, 
        ARET,   16, 
        AFNN,   32, 
        AG_1,   32, 
        AG_2,   32, 
        ARBF,   3968, 
        BLLT,   176, 
        DEVF,   8, 
        DBF0,   16, 
        DBF1,   16, 
        DBF2,   16, 
        DBF3,   16, 
        DMD0,   8, 
        ODST,   8, 
        ODOS,   8, 
        ODFL,   8, 
        FNMK,   16, 
        CLST,   8, 
        WOLE,   8, 
        APEG,   8, 
        SGMD,   8, 
        SGPS,   8, 
        PLST,   8, 
        BRCM,   8, 
        SODS,   8, 
        TBTF,   8, 
        PPL1,   8, 
        PTAU,   8, 
        PPL2,   8, 
        FDSS,   8, 
        HBST,   8, 
        DPLE,   8
    }

    Scope (\_SB)
    {
        Name (PR00, Package (0x1E)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x00, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x01, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x00, 
                LNKF, 
                0x00
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x00, 
                LNKH, 
                0x00
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x00, 
                LNKG, 
                0x00
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x00, 
                LNKE, 
                0x00
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                0x00, 
                LNKE, 
                0x00
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                0x00
            }
        })
        Name (AR00, Package (0x1E)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x00, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x01, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x00, 
                0x00, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x00, 
                0x00, 
                0x17
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x00, 
                0x00, 
                0x16
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x00, 
                0x00, 
                0x14
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                0x00, 
                0x00, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                0x00, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                0x00
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x13
            }
        })
        Name (PR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                0x00
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x10
            }
        })
        Name (PR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                0x00
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x11
            }
        })
        Name (PR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                0x00
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x12
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                0x00
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                0x00
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                0x00
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                0x00
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                0x00
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                0x00
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x10
            }
        })
        Name (PR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                0x00
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x11
            }
        })
        Name (PR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                0x00
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x12
            }
        })
        Name (PR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKF, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKG, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                0x00
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x00, 
                LNKG, 
                0x00
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x01, 
                LNKF, 
                0x00
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                0x00
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                0x00
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x00, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x01, 
                LNKE, 
                0x00
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                0x00
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                0x00
            }
        })
        Name (AR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x00, 
                0x00, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x01, 
                0x00, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                0x00, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                0x00, 
                0x17
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x00, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x01, 
                0x00, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                0x00, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                0x00, 
                0x15
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, 0x00)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (0x00)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, 0x00, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00005000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                PBMX = Subtract ((\PELN >> 0x14), 0x02)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                PBLN = Subtract ((\PELN >> 0x14), 0x01)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If (PM1L == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If (PM1H == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If (PM2L == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If (PM2H == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If (PM3L == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If (PM3H == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If (PM4L == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If (PM4H == 0x01)
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y09._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y09._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, M1LN)  // _LEN: Length
                M1MN = (TLUD << 0x14)
                M1LN = ((M1MX - M1MN) + 0x01)
                Return (BUF0) /* \_SB_.PCI0.BUF0 */
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, 0x00, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If ((Arg0 == GUID) && NEXP)
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & 0x01))
                    {
                        If (CTRL & 0x01)
                        {
                            NHPG ()
                        }

                        If (CTRL & 0x04)
                        {
                            NPME ()
                        }
                    }

                    If (Arg1 != One)
                    {
                        CDW1 |= 0x08
                    }

                    If (CDW3 != CTRL)
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Device (OPRM)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x1000)  // _UID: Unique ID
                Name (RSRC, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        )
                })
                Method (ISSD, 1, NotSerialized)
                {
                    Local0 = 0x03
                    If (Arg0 & 0x4000)
                    {
                        Local0 = 0x30
                    }

                    Local1 = ShiftRight ((Arg0 - 0x000C0000), 0x0F)
                    If (Local1 == 0x00)
                    {
                        Local2 = ((\_SB.PCI0.PM1H * 0x10) + \_SB.PCI0.PM1L)
                    }

                    If (Local1 == 0x01)
                    {
                        Local2 = ((\_SB.PCI0.PM2H * 0x10) + \_SB.PCI0.PM2L)
                    }

                    If (Local1 == 0x02)
                    {
                        Local2 = ((\_SB.PCI0.PM3H * 0x10) + \_SB.PCI0.PM3L)
                    }

                    If (Local1 == 0x03)
                    {
                        Local2 = ((\_SB.PCI0.PM4H * 0x10) + \_SB.PCI0.PM4L)
                    }

                    If (Local1 == 0x04)
                    {
                        Local2 = ((\_SB.PCI0.PM5H * 0x10) + \_SB.PCI0.PM5L)
                    }

                    If (Local1 == 0x05)
                    {
                        Local2 = ((\_SB.PCI0.PM6H * 0x10) + \_SB.PCI0.PM6L)
                    }

                    Return ((Local2 & Local0))
                }

                Method (ROMS, 1, NotSerialized)
                {
                    If (ISSD (Arg0))
                    {
                        OperationRegion (XROM, SystemMemory, Arg0, 0x04)
                        Field (XROM, ByteAcc, NoLock, Preserve)
                        {
                            SIG,    16, 
                            SIZ,    8
                        }

                        If (SIG == 0xAA55)
                        {
                            Return ((SIZ * 0x0200))
                        }
                    }

                    Return (Zero)
                }

                Method (MRSC, 2, Serialized)
                {
                    Name (BUFF, Buffer (SizeOf (Arg0) - 0x02) {})
                    Local0 = Zero
                    While (Local0 < (SizeOf (Arg0) - 0x02))
                    {
                        BUFF [Local0] = DerefOf (Arg0 [Local0])
                        Local0++
                    }

                    Concatenate (BUFF, Arg1, Local1)
                    Return (Local1)
                }

                Method (RSVA, 3, Serialized)
                {
                    Name (FXRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0A)
                    })
                    CreateDWordField (FXRS, \_SB.PCI0.OPRM.RSVA._Y0A._BAS, ROMB)  // _BAS: Base Address
                    CreateDWordField (FXRS, \_SB.PCI0.OPRM.RSVA._Y0A._LEN, ROML)  // _LEN: Length
                    ROMB = Arg1
                    ROML = (Arg2 - Arg1)
                    CreateDWordField (Arg0, 0x04, ABAS)
                    CreateDWordField (Arg0, 0x08, ALEN)
                    If ((ABAS == Zero) && (ALEN == Zero))
                    {
                        Return (FXRS) /* \_SB_.PCI0.OPRM.RSVA.FXRS */
                    }

                    Return (MRSC (Arg0, FXRS))
                }

                Method (ALAD, 2, NotSerialized)
                {
                    Return (((((Arg0 + Arg1) - One) / Arg1) * 
                        Arg1))
                }

                Method (OPRR, 1, NotSerialized)
                {
                    Local7 = Arg0
                    Local0 = 0x000C0000
                    While (Local0 < 0x000E0000)
                    {
                        Local1 = ROMS (Local0)
                        If (Local1 == Zero)
                        {
                            Local2 = ALAD (Local0, 0x4000)
                            Local3 = ALAD (Local0, 0x0800)
                            If (Local0 != Local2)
                            {
                                If ((Local0 != Local3) && ROMS (Local3))
                                {
                                    Local7 = RSVA (Local7, Local0, Local3)
                                    Local0 = Local3
                                }
                                Else
                                {
                                    Local7 = RSVA (Local7, Local0, Local2)
                                    Local0 = 0x000E0000
                                }
                            }
                            Else
                            {
                                Local0 = 0x000E0000
                            }
                        }
                        Else
                        {
                            Local0 += Local1
                        }
                    }

                    Return (Local7)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (OPRR (RSRC))
                }
            }

            Scope (\_SB)
            {
                Device (BEXA)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x0100)  // _UID: Unique ID
                    Name (RSVD, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00010000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x000F0000,         // Address Base
                            0x00010000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (RSVD) /* \_SB_.BEXA.RSVD */
                    }
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (\_SB.AR00)
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (\_SB.PR00)
                }

                Method (AR01, 0, NotSerialized)
                {
                    Return (\_SB.AR01)
                }

                Method (PR01, 0, NotSerialized)
                {
                    Return (\_SB.PR01)
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (\_SB.AR02)
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (\_SB.PR02)
                }

                Method (AR04, 0, NotSerialized)
                {
                    Return (\_SB.AR04)
                }

                Method (PR04, 0, NotSerialized)
                {
                    Return (\_SB.PR04)
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (\_SB.AR05)
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (\_SB.PR05)
                }

                Method (AR06, 0, NotSerialized)
                {
                    Return (\_SB.AR06)
                }

                Method (PR06, 0, NotSerialized)
                {
                    Return (\_SB.PR06)
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (\_SB.AR07)
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (\_SB.PR07)
                }

                Method (AR08, 0, NotSerialized)
                {
                    Return (\_SB.AR08)
                }

                Method (PR08, 0, NotSerialized)
                {
                    Return (\_SB.PR08)
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (\_SB.AR09)
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (\_SB.PR09)
                }

                Method (AR0A, 0, NotSerialized)
                {
                    Return (\_SB.AR0A)
                }

                Method (PR0A, 0, NotSerialized)
                {
                    Return (\_SB.PR0A)
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (\_SB.AR0B)
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (\_SB.PR0B)
                }
            }

            Device (PEG0)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02 ())
                    }

                    Return (PR02 ())
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }
                }
            }

            Device (PEG1)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A ())
                    }

                    Return (PR0A ())
                }
            }

            Device (PEG2)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B ())
                    }

                    Return (PR0B ())
                }
            }

            Device (PEG3)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C) /* \_SB_.AR0C */
                    }

                    Return (PR0C) /* \_SB_.PR0C */
                }
            }

            Device (TMCP)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (\_SB.PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (\_SB.PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x01)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y0B)
                                    {}
                            })
                            CreateWordField (RTLA, \_SB.LNKA._CRS._Y0B._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PARC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y0C)
                                    {}
                            })
                            CreateWordField (RTLB, \_SB.LNKB._CRS._Y0C._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PBRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y0D)
                                    {}
                            })
                            CreateWordField (RTLC, \_SB.LNKC._CRS._Y0D._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PCRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y0E)
                                    {}
                            })
                            CreateWordField (RTLD, \_SB.LNKD._CRS._Y0E._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PDRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y0F)
                                    {}
                            })
                            CreateWordField (RTLE, \_SB.LNKE._CRS._Y0F._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PERC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y10)
                                    {}
                            })
                            CreateWordField (RTLF, \_SB.LNKF._CRS._Y10._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PFRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y11)
                                    {}
                            })
                            CreateWordField (RTLG, \_SB.LNKG._CRS._Y11._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PGRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, _Y12)
                                    {}
                            })
                            CreateWordField (RTLH, \_SB.LNKH._CRS._Y12._INT, IRQ0)  // _INT: Interrupts
                            IRQ0 = Zero
                            IRQ0 = (0x01 << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, 0x01, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PHRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    CAEN,   1, 
                    CBEN,   1, 
                    LPEN,   1, 
                    Offset (0x4C), 
                    GEN3,   32, 
                    Offset (0x60), 
                        ,   2, 
                    CLKR,   1, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Name (OPNA, Zero)
                Name (OPNB, Zero)
                Name (OPNC, Zero)
                Method (CREN, 2, Serialized)
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Local0 = Arg0
                    Local1 = Arg1
                    If (Local1 == One)
                    {
                        While (One)
                        {
                            _T_0 = Local0
                            If (_T_0 == 0x00)
                            {
                                OPNA = One
                            }
                            ElseIf (_T_0 == 0x01)
                            {
                                OPNB = One
                            }
                            ElseIf (_T_0 == 0x02)
                            {
                                OPNC = One
                            }
                            Else
                            {
                                Return (Ones)
                            }

                            Break
                        }

                        CLKR = Zero
                        Return (Zero)
                    }

                    While (One)
                    {
                        _T_1 = Local0
                        If (_T_1 == 0x00)
                        {
                            OPNA = Zero
                        }
                        ElseIf (_T_1 == 0x01)
                        {
                            OPNB = Zero
                        }
                        ElseIf (_T_1 == 0x02)
                        {
                            OPNC = Zero
                        }
                        Else
                        {
                            Return (Ones)
                        }

                        Break
                    }

                    If (OPNA)
                    {
                        Return (Zero)
                    }

                    If (OPNB)
                    {
                        Return (Zero)
                    }

                    If (OPNC)
                    {
                        Return (Zero)
                    }

                    CLKR = One
                }

                Method (DGLE, 0, NotSerialized)
                {
                    Field (LPC0, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        GPLE,   1
                    }

                    If (GPLE == One)
                    {
                        GPLE = Zero
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (RGLE, 1, NotSerialized)
                {
                    Field (LPC0, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        GPLE,   1
                    }

                    If (Arg0 == One)
                    {
                        GPLE = One
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y13)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (OSYS >= 0x07D1)
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (0x00)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y13._BAS, HPT0)  // _BAS: Base Address
                            If (HPAS == 0x01)
                            {
                                HPT0 = 0xFED01000
                            }

                            If (HPAS == 0x02)
                            {
                                HPT0 = 0xFED02000
                            }

                            If (HPAS == 0x03)
                            {
                                HPT0 = 0xFED03000
                            }
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x54,               // Length
                            )
                        IO (Decode16,
                            0x0458,             // Range Minimum
                            0x0458,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0900,             // Range Minimum
                            0x0900,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D") /* ACPI Motherboard Resources */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0) /* \_SB_.PCI0.LPCB.CWDT.BUF0 */
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ASRV (0x03, 0x00, 0x00) != 0x01)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (K106)
                {
                    Name (_HID, EisaId ("PNP0320"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ASRV (0x03, 0x00, 0x00) == 0x01)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("FJC6001"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = \_SB.ASRV (0x06, 0x00, 0x00)
                        If (Local0 != 0x01)
                        {
                            Return (0x00)
                        }

                        OperationRegion (BDA, SystemMemory, 0x0400, 0x0100)
                        Field (BDA, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0x10), 
                                ,   2, 
                            MFLG,   1
                        }

                        If (MFLG)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }
                }

                Device (PS2E)
                {
                    Name (_HID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = \_SB.ASRV (0x06, 0x00, 0x00)
                        If (Local0 == 0x01)
                        {
                            Return (0x00)
                        }

                        Return (0x0F)
                    }
                }

                Device (SIOR)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        Return (SPIO) /* \SPIO */
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y14)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y15)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateWordField (CRS, \_SB.PCI0.LPCB.SIOR._Y14._MIN, GP10)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.LPCB.SIOR._Y14._MAX, GP11)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.LPCB.SIOR._Y14._LEN, GPL1)  // _LEN: Length
                        GP10 = SPIO /* \SPIO */
                        GP11 = SPIO /* \SPIO */
                        GPL1 = 0x02
                        If (0x0A00)
                        {
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIOR._Y15._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.LPCB.SIOR._Y15._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.LPCB.SIOR._Y15._LEN, GPL2)  // _LEN: Length
                            GP20 = 0x0A00
                            GP21 = 0x0A00
                            GPL2 = 0x20
                        }

                        Return (CRS) /* \_SB_.PCI0.LPCB.SIOR.CRS_ */
                    }
                }

                Name (DCAT, Package (0x15)
                {
                    0x03, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0x06, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF
                })
                Mutex (MUT0, 0x00)
                Method (ENFG, 0, NotSerialized)
                {
                    Acquire (MUT0, 0x0FFF)
                    INDX = 0x55
                }

                Method (EXFG, 0, NotSerialized)
                {
                    INDX = 0xAA
                    Release (MUT0)
                }

                Method (SIOS, 1, NotSerialized)
                {
                    Debug = "SIOS"
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Debug = "SIOW"
                }

                Method (SIOH, 0, NotSerialized)
                {
                    Debug = "SIOH"
                }

                OperationRegion (IOID, SystemIO, SPIO, 0x02)
                Field (IOID, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    CR00,   8, 
                    CR01,   8, 
                    CR02,   8, 
                    CR03,   8, 
                    CR04,   8, 
                    CR05,   8, 
                    CR06,   8, 
                    CR07,   8, 
                    CR08,   8, 
                    CR09,   8, 
                    CR0A,   8, 
                    CR0B,   8, 
                    CR0C,   8, 
                    CR0D,   8, 
                    CR0E,   8, 
                    CR0F,   8, 
                    CR10,   8, 
                    CR11,   8, 
                    CR12,   8, 
                    CR13,   8, 
                    CR14,   8, 
                    CR15,   8, 
                    CR16,   8, 
                    CR17,   8, 
                    CR18,   8, 
                    CR19,   8, 
                    CR1A,   8, 
                    CR1B,   8, 
                    CR1C,   8, 
                    CR1D,   8, 
                    CR1E,   8, 
                    CR1F,   8, 
                    CR20,   8, 
                    CR21,   8, 
                    CR22,   8, 
                    CR23,   8, 
                    CR24,   8, 
                    CR25,   8, 
                    CR26,   8, 
                    CR27,   8, 
                    CR28,   8, 
                    CR29,   8, 
                    CR2A,   8, 
                    CR2B,   8, 
                    CR2C,   8, 
                    CR2D,   8, 
                    CR2E,   8, 
                    CR2F,   8, 
                    CR30,   8, 
                    CR31,   8, 
                    CR32,   8, 
                    CR33,   8, 
                    CR34,   8, 
                    CR35,   8, 
                    CR36,   8, 
                    CR37,   8, 
                    CR38,   8, 
                    CR39,   8, 
                    CR3A,   8, 
                    CR3B,   8, 
                    CR3C,   8, 
                    CR3D,   8, 
                    CR3E,   8, 
                    CR3F,   8, 
                    CR40,   8, 
                    CR41,   8, 
                    CR42,   8, 
                    CR43,   8, 
                    CR44,   8, 
                    CR45,   8, 
                    CR46,   8, 
                    CR47,   8, 
                    CR48,   8, 
                    CR49,   8, 
                    CR4A,   8, 
                    CR4B,   8, 
                    CR4C,   8, 
                    CR4D,   8, 
                    CR4E,   8, 
                    CR4F,   8, 
                    CR50,   8, 
                    CR51,   8, 
                    CR52,   8, 
                    CR53,   8, 
                    CR54,   8
                }

                OperationRegion (SIGP, SystemIO, 0x0A00, 0x20)
                Field (SIGP, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    GP1X,   8, 
                    GP2X,   8, 
                    GP3X,   8, 
                    Offset (0x10), 
                    GP5X,   8
                }

                Name (CRS1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y16)
                    IRQNoFlags (_Y17)
                        {}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y18)
                        {}
                })
                CreateWordField (CRS1, \_SB.PCI0.LPCB._Y16._MIN, IO11)  // _MIN: Minimum Base Address
                CreateWordField (CRS1, \_SB.PCI0.LPCB._Y16._MAX, IO12)  // _MAX: Maximum Base Address
                CreateByteField (CRS1, \_SB.PCI0.LPCB._Y16._ALN, ALM1)  // _ALN: Alignment
                CreateByteField (CRS1, \_SB.PCI0.LPCB._Y16._LEN, LEN1)  // _LEN: Length
                CreateWordField (CRS1, \_SB.PCI0.LPCB._Y17._INT, IRQM)  // _INT: Interrupts
                CreateByteField (CRS1, \_SB.PCI0.LPCB._Y18._DMA, DMAM)  // _DMA: Direct Memory Access
                Name (CRS2, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y19)
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y1A)
                    IRQNoFlags (_Y1B)
                        {6}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y1C)
                        {2}
                })
                CreateWordField (CRS2, \_SB.PCI0.LPCB._Y19._MIN, IO21)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.LPCB._Y19._MAX, IO22)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.LPCB._Y19._ALN, ALM2)  // _ALN: Alignment
                CreateByteField (CRS2, \_SB.PCI0.LPCB._Y19._LEN, LEN2)  // _LEN: Length
                CreateWordField (CRS2, \_SB.PCI0.LPCB._Y1A._MIN, IO31)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.LPCB._Y1A._MAX, IO32)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.LPCB._Y1A._ALN, ALM3)  // _ALN: Alignment
                CreateByteField (CRS2, \_SB.PCI0.LPCB._Y1A._LEN, LEN3)  // _LEN: Length
                CreateWordField (CRS2, \_SB.PCI0.LPCB._Y1B._INT, IRQE)  // _INT: Interrupts
                CreateByteField (CRS2, \_SB.PCI0.LPCB._Y1C._DMA, DMAE)  // _DMA: Direct Memory Access
                OperationRegion (SMPM, SystemIO, 0x0A00, 0x20)
                Field (SMPM, ByteAcc, Lock, Preserve)
                {
                    Offset (0x0C), 
                    SMG1,   8, 
                    SMG2,   8
                }

                Method (SMGS, 2, Serialized)
                {
                    Divide (Arg0, 0x0A, Local1, Local0)
                    Local1 = (One << Local1)
                    If (Local0 == One)
                    {
                        If (Arg1)
                        {
                            SMG1 |= Local1
                        }
                        Else
                        {
                            SMG1 &= ~Local1
                        }
                    }

                    If (Local0 == 0x02)
                    {
                        If (Arg1)
                        {
                            SMG2 |= Local1
                        }
                        Else
                        {
                            SMG2 &= ~Local1
                        }
                    }
                }

                Device (UAR1)
                {
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (_DDN, "COM1")  // _DDN: DOS Device Name
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ENFG ()
                        Local0 = (CR02 & 0x08)
                        Local1 = CR24 /* \_SB_.PCI0.LPCB.CR24 */
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf (Local1)
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        SMGS (0x0C, One)
                        CAEN = 0x00
                        ENFG ()
                        CR02 &= 0xF7
                        EXFG ()
                        CREN (0x00, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        ENFG ()
                        IO11 = (CR24 << 0x02)
                        IO12 = IO11 /* \_SB_.PCI0.LPCB.IO11 */
                        Local0 = (CR28 >> 0x04)
                        If (Local0)
                        {
                            IRQM = (0x01 << Local0)
                        }
                        Else
                        {
                            IRQM = 0x00
                        }

                        DMAM = 0x00
                        EXFG ()
                        Return (CRS1) /* \_SB_.PCI0.LPCB.CRS1 */
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CREN (0x00, One)
                        SMGS (0x0C, One)
                        CreateWordField (Arg0, 0x02, IO11)
                        CreateWordField (Arg0, 0x09, IRQM)
                        CAEN = 0x01
                        Local0 = IOD0 /* \_SB_.PCI0.LPCB.IOD0 */
                        Local0 &= 0xF0
                        If (IO11 == 0x03F8)
                        {
                            Local0 |= 0x00
                        }
                        ElseIf (IO11 == 0x02F8)
                        {
                            Local0 |= 0x01
                        }
                        ElseIf (IO11 == 0x03E8)
                        {
                            Local0 |= 0x07
                        }
                        ElseIf (IO11 == 0x02E8)
                        {
                            Local0 |= 0x05
                        }

                        IOD0 = Local0
                        ENFG ()
                        CR24 = (IO11 >> 0x02)
                        If (IRQM)
                        {
                            FindSetRightBit (IRQM, Local0)
                            Local0 -= 0x01
                            Local0 <<= 0x04
                            CR28 &= 0x0F
                            CR28 |= Local0
                        }
                        Else
                        {
                            CR28 &= 0x0F
                        }

                        CR02 |= 0x08
                        EXFG ()
                        SMGS (0x0C, Zero)
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }

                Device (UAR2)
                {
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_DDN, "COM2")  // _DDN: DOS Device Name
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        ENFG ()
                        Local0 = (CR0C & 0x18)
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x1005D041)
                        }
                        Else
                        {
                            Return (0x0105D041)
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ENFG ()
                        Local0 = (CR02 & 0x80)
                        Local1 = CR25 /* \_SB_.PCI0.LPCB.CR25 */
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf (Local1)
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        SMGS (0x0D, One)
                        CBEN = 0x00
                        ENFG ()
                        CR02 &= 0x7F
                        EXFG ()
                        CREN (0x01, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        ENFG ()
                        IO11 = (CR25 << 0x02)
                        IO12 = IO11 /* \_SB_.PCI0.LPCB.IO11 */
                        Local0 = (CR28 & 0x0F)
                        If (Local0)
                        {
                            IRQM = (0x01 << Local0)
                        }
                        Else
                        {
                            IRQM = 0x00
                        }

                        DMAM = 0x00
                        EXFG ()
                        Return (CRS1) /* \_SB_.PCI0.LPCB.CRS1 */
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CREN (0x01, One)
                        SMGS (0x0D, One)
                        CreateWordField (Arg0, 0x02, IO11)
                        CreateWordField (Arg0, 0x09, IRQM)
                        CBEN = 0x01
                        Local0 = IOD0 /* \_SB_.PCI0.LPCB.IOD0 */
                        Local0 &= 0x0F
                        If (IO11 == 0x03F8)
                        {
                            Local0 |= 0x00
                        }
                        ElseIf (IO11 == 0x02F8)
                        {
                            Local0 |= 0x10
                        }
                        ElseIf (IO11 == 0x03E8)
                        {
                            Local0 |= 0x70
                        }
                        ElseIf (IO11 == 0x02E8)
                        {
                            Local0 |= 0x50
                        }

                        IOD0 = Local0
                        ENFG ()
                        CR25 = (IO11 >> 0x02)
                        If (IRQM)
                        {
                            FindSetRightBit (IRQM, Local0)
                            Local0 -= 0x01
                            CR28 &= 0xF0
                            CR28 |= Local0
                        }
                        Else
                        {
                            CR28 &= 0xF0
                        }

                        CR02 |= 0x80
                        EXFG ()
                        SMGS (0x0D, Zero)
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }

                Device (UAR3)
                {
                    Name (_UID, 0x0A)  // _UID: Unique ID
                    Name (_DDN, "COM3")  // _DDN: DOS Device Name
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ENFG ()
                        Local0 = (CR02 & 0x02)
                        Local1 = CR1B /* \_SB_.PCI0.LPCB.CR1B */
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        ElseIf (Local1)
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        GEN3 = 0x00
                        ENFG ()
                        CR02 &= 0xFD
                        EXFG ()
                        CREN (0x02, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        ENFG ()
                        IO11 = (CR1B << 0x02)
                        IO12 = IO11 /* \_SB_.PCI0.LPCB.IO11 */
                        Local0 = (CR1D >> 0x04)
                        If (Local0)
                        {
                            IRQM = (0x01 << Local0)
                        }
                        Else
                        {
                            IRQM = 0x00
                        }

                        DMAM = 0x00
                        EXFG ()
                        Return (CRS1) /* \_SB_.PCI0.LPCB.CRS1 */
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CREN (0x02, One)
                        CreateWordField (Arg0, 0x02, IO11)
                        CreateWordField (Arg0, 0x09, IRQM)
                        Local0 = 0x01
                        Local0 |= IO11 /* \_SB_.PCI0.LPCB.UAR3._SRS.IO11 */
                        Local0 |= 0x00040000
                        GEN3 = Local0
                        ENFG ()
                        CR1B = (IO11 >> 0x02)
                        If (IRQM)
                        {
                            FindSetRightBit (IRQM, Local0)
                            Local0 -= 0x01
                            Local0 <<= 0x04
                            CR1D &= 0x0F
                            CR1D |= Local0
                        }
                        Else
                        {
                            CR1D &= 0x0F
                        }

                        CR02 |= 0x02
                        EXFG ()
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }
            }

            Device (SBUS)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
                Field (SMBP, DWordAcc, NoLock, Preserve)
                {
                        ,   2, 
                    I2CE,   1
                }

                OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
                Field (SMPB, DWordAcc, NoLock, Preserve)
                {
                        ,   5, 
                    SBAR,   11
                }

                OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
                Field (SMBI, ByteAcc, NoLock, Preserve)
                {
                    HSTS,   8, 
                    Offset (0x02), 
                    HCON,   8, 
                    HCOM,   8, 
                    TXSA,   8, 
                    DAT0,   8, 
                    DAT1,   8, 
                    HBDR,   8, 
                    PECR,   8, 
                    RXSA,   8, 
                    SDAT,   16
                }

                Method (SSXB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0x00)
                    }

                    I2CE = 0x00
                    HSTS = 0xBF
                    TXSA = Arg0
                    HCOM = Arg1
                    HCON = 0x48
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (SRXB, 1, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    I2CE = 0x00
                    HSTS = 0xBF
                    TXSA = Or (Arg0, 0x01)
                    HCON = 0x44
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    }

                    Return (0xFFFF)
                }

                Method (SWRB, 3, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0x00)
                    }

                    I2CE = 0x00
                    HSTS = 0xBF
                    TXSA = Arg0
                    HCOM = Arg1
                    DAT0 = Arg2
                    HCON = 0x48
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (SRDB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    I2CE = 0x00
                    HSTS = 0xBF
                    TXSA = Or (Arg0, 0x01)
                    HCOM = Arg1
                    HCON = 0x48
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    }

                    Return (0xFFFF)
                }

                Method (SWRW, 3, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0x00)
                    }

                    I2CE = 0x00
                    HSTS = 0xBF
                    TXSA = Arg0
                    HCOM = Arg1
                    DAT1 = (Arg2 & 0xFF)
                    DAT0 = ((Arg2 >> 0x08) & 0xFF)
                    HCON = 0x4C
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (SRDW, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    I2CE = 0x00
                    HSTS = 0xBF
                    TXSA = Or (Arg0, 0x01)
                    HCOM = Arg1
                    HCON = 0x4C
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (((DAT0 << 0x08) | DAT1))
                    }

                    Return (0xFFFFFFFF)
                }

                Method (SBLW, 4, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0x00)
                    }

                    I2CE = Arg3
                    HSTS = 0xBF
                    TXSA = Arg0
                    HCOM = Arg1
                    DAT0 = SizeOf (Arg2)
                    Local1 = 0x00
                    HBDR = DerefOf (Arg2 [0x00])
                    HCON = 0x54
                    While (SizeOf (Arg2) > Local1)
                    {
                        Local0 = 0x0FA0
                        While (!(HSTS & 0x80) && Local0)
                        {
                            Local0--
                            Stall (0x32)
                        }

                        If (!Local0)
                        {
                            KILL ()
                            Return (0x00)
                        }

                        HSTS = 0x80
                        Local1++
                        If (SizeOf (Arg2) > Local1)
                        {
                            HBDR = DerefOf (Arg2 [Local1])
                        }
                    }

                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (SBLR, 3, Serialized)
                {
                    Name (TBUF, Buffer (0x0100) {})
                    If (STRT ())
                    {
                        Return (0x00)
                    }

                    I2CE = Arg2
                    HSTS = 0xBF
                    TXSA = Or (Arg0, 0x01)
                    HCOM = Arg1
                    HCON = 0x54
                    Local0 = 0x0FA0
                    While (!(HSTS & 0x80) && Local0)
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (0x00)
                    }

                    TBUF [0x00] = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                    HSTS = 0x80
                    Local1 = 0x01
                    While (Local1 < DerefOf (TBUF [0x00]))
                    {
                        Local0 = 0x0FA0
                        While (!(HSTS & 0x80) && Local0)
                        {
                            Local0--
                            Stall (0x32)
                        }

                        If (!Local0)
                        {
                            KILL ()
                            Return (0x00)
                        }

                        TBUF [Local1] = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                        HSTS = 0x80
                        Local1++
                    }

                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                    }

                    Return (0x00)
                }

                Method (STRT, 0, Serialized)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        If (HSTS & 0x40)
                        {
                            Local0--
                            Sleep (0x01)
                            If (Local0 == 0x00)
                            {
                                Return (0x01)
                            }
                        }
                        Else
                        {
                            Local0 = 0x00
                        }
                    }

                    Local0 = 0x0FA0
                    While (Local0)
                    {
                        If (HSTS & 0x01)
                        {
                            Local0--
                            Stall (0x32)
                            If (Local0 == 0x00)
                            {
                                KILL ()
                            }
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Return (0x01)
                }

                Method (COMP, 0, Serialized)
                {
                    Local0 = 0x0FA0
                    While (Local0)
                    {
                        If (HSTS & 0x02)
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            Local0--
                            Stall (0x32)
                            If (Local0 == 0x00)
                            {
                                KILL ()
                            }
                        }
                    }

                    Return (0x00)
                }

                Method (KILL, 0, Serialized)
                {
                    HCON |= 0x02
                    HSTS |= 0xFF
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (UPSW, 0x00)
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (UPSW, 0x00)
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
                Field (HDAR, WordAcc, NoLock, Preserve)
                {
                    DCKA,   1, 
                    Offset (0x01), 
                    DCKM,   1, 
                        ,   6, 
                    DCKS,   1, 
                    Offset (0x08), 
                        ,   15, 
                    PMES,   1
                }

                Name (MPSW, 0x00)
                Method (HDMP, 0, NotSerialized)
                {
                    If (MPSW)
                    {
                        \_SB.PCI0.LPCB.EC0.C5F0 (0x01)
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.C5F0 (0x00)
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    PMPD,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = 0x01
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = 0x00
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09 ())
                    }

                    Return (PR09 ())
                }
            }

            Device (GLAN)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Name (PWST, 0x00)
                Method (STPS, 0, NotSerialized)
                {
                    If (PWST)
                    {
                        \WOLE = 0x01
                    }
                    Else
                    {
                        \WOLE = 0x00
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    PWST = Arg0
                    STPS ()
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    PMPD,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = 0x01
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = 0x00
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08 ())
                    }

                    Return (PR08 ())
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    PMPD,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = 0x01
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = 0x00
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0E) /* \_SB_.AR0E */
                    }

                    Return (PR0E) /* \_SB_.PR0E */
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    PMPD,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = 0x01
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = 0x00
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0F) /* \_SB_.AR0F */
                    }

                    Return (PR0F) /* \_SB_.PR0F */
                }
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x01)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04 ())
                    }

                    Return (PR04 ())
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    PMPD,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Local0 = 0xC8
                        While (Local0)
                        {
                            PMSX = 0x01
                            If (PMSX)
                            {
                                Local0--
                            }
                            Else
                            {
                                Local0 = 0x00
                            }
                        }

                        Notify (PXSX, 0x02) // Device Wake
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06 ())
                    }

                    Return (PR06 ())
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    L0SE,   1, 
                    Offset (0x11), 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07 ())
                    }

                    Return (PR07 ())
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.PEG0, 0x02) // Device Wake
                Notify (\_SB.PCI0.PEG0.PEGP, 0x02) // Device Wake
                Notify (\_SB.PCI0.PEG1, 0x02) // Device Wake
                Notify (\_SB.PCI0.PEG2, 0x02) // Device Wake
                Notify (\_SB.PCI0.PEG3, 0x02) // Device Wake
                Notify (\_SB.PCI0.TMCP, 0x02) // Device Wake
                Notify (\_SB.PCI0.RP06, 0x02) // Device Wake
            }
        }
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If (Arg0 == 0x00)
        {
            P80D = Or ((P80D & 0xFFFFFF00), Arg1)
        }

        If (Arg0 == 0x01)
        {
            P80D = Or ((P80D & 0xFFFF00FF), (Arg1 << 0x08))
        }

        If (Arg0 == 0x02)
        {
            P80D = Or ((P80D & 0xFF00FFFF), (Arg1 << 0x10))
        }

        If (Arg0 == 0x03)
        {
            P80D = Or ((P80D & 0x00FFFFFF), (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (\_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Name (STBF, 0x00)
    Name (TTSV, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = 0x00
        P8XH (0x00, Arg0)
        If (CondRefOf (\_TZ.DPPM))
        {
            TTSV = \_SB.PCI0.TTAU /* External reference */
        }

        If (Arg0 != 0x05)
        {
            \_SB.ASRV (0x0A, Zero, Zero)
        }

        If ((Arg0 == 0x03) || (Arg0 == 0x04))
        {
            SSDP (Arg0)
        }

        If (Arg0 == 0x03)
        {
            If (DTSE && (TCNT > 0x01))
            {
                TRAP (\TRTD, 0x1E)
            }

            \_SB.PCI0.GLAN.STPS ()
        }
        ElseIf (Arg0 == 0x04)
        {
            \_SB.PCI0.GLAN.STPS ()
        }

        If ((Arg0 >= 0x03) && (Arg0 <= 0x05))
        {
            \_SB.HKEY.HSAV ()
            If (CondRefOf (\_OSI, Local7))
            {
                If (\_OSI ("Windows 2009"))
                {
                    \_SB.HKEY.HRST ()
                }
            }
        }

        \_SB.SVAC ()
        \_SB.PCI0.LPCB.EC0.CDF0 (0x01)
        STBF = TBTF /* \TBTF */
    }

    Method (RTBS, 0, NotSerialized)
    {
        TBTF = STBF /* \STBF */
        TBTF &= ~0x02
        Local1 = \_SB.PCI0.LPCB.EC0.EC47 (0xCF, Zero, Zero)
        If ((Local1 & 0xFFFF) == 0x0100)
        {
            TBTF |= 0x02
        }

        \_SB.ASRV (0x13, 0x00, TBTF)
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (0x01, 0xAB)
        If (CondRefOf (\_TZ.DPPM))
        {
            \_SB.PCI0.TTAU = TTSV /* \TTSV */
        }

        \_SB.CFSR ()
        \BEXT ()
        Notify (\_SB.BAT1, 0x81) // Information Change
        \_SB.ADAC ()
        RTBS ()
        If (NEXP)
        {
            If (OSCC & 0x01)
            {
                \_SB.PCI0.NHPG ()
            }

            If (OSCC & 0x04)
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (Arg0 == 0x03)
        {
            Local0 = \_SB.ASRV (0x04, 0x01, Zero)
            \_SB.PCI0.LPCB.EC0.CDF0 (Local0)
        }

        If ((Arg0 == 0x03) || (Arg0 == 0x04))
        {
            Local0 = \_SB.ASRV (0x0B, 0x00, Zero)
            Local0 = \_SB.ASRV (0x0B, 0x00, 0x00)
            If ((Local0 == 0x06) || (Local0 == 0x02))
            {
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If (DTSE)
            {
                TRAP (\TRTD, 0x14)
            }

            If (OSYS == 0x07D2)
            {
                If (CFGD & 0x01)
                {
                    If (\_PR.CPU0._PPC > 0x00)
                    {
                        \_PR.CPU0._PPC -= 0x01
                        PNOT ()
                        \_PR.CPU0._PPC += 0x01
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += 0x01
                        PNOT ()
                        \_PR.CPU0._PPC -= 0x01
                        PNOT ()
                    }
                }
            }

            If (RP1D == 0x00)
            {
                Notify (\_SB.PCI0.RP01, 0x00) // Bus Check
            }

            If (RP2D == 0x00)
            {
                Notify (\_SB.PCI0.RP02, 0x00) // Bus Check
            }

            If (RP3D == 0x00)
            {
                Notify (\_SB.PCI0.RP03, 0x00) // Bus Check
            }

            If (RP4D == 0x00)
            {
                Notify (\_SB.PCI0.RP04, 0x00) // Bus Check
            }

            If (RP5D == 0x00)
            {
                Notify (\_SB.PCI0.RP05, 0x00) // Bus Check
            }

            If (RP7D == 0x00)
            {
                Notify (\_SB.PCI0.RP07, 0x00) // Bus Check
            }

            If (RP8D == 0x00)
            {
                Notify (\_SB.PCI0.RP08, 0x00) // Bus Check
            }
        }

        If ((Arg0 >= 0x03) && (Arg0 <= 0x05))
        {
            \_SB.HKEY.HRES ()
        }

        If (CondRefOf (\_TZ.DPPM))
        {
            Notify (\_SB.DPPM, 0x83) // Device-Specific Change
        }

        Local0 = \_SB.PCI0.LPCB.EC0.GJF1 ()
        If (Local0)
        {
            DMD0 = 0x00
        }
        Else
        {
            DMD0 = 0x02
        }

        \_SB.CETP ()
        If (CondRefOf (\_TZ.PTMD))
        {
            \_SB.PTMD.IECD (\_SB.PTMD.PM23 (), \_SB.PTMD.PM24 (), \_SB.PTMD.PM25 (), \_SB.PTMD.EDPM (), \_SB.PTMD.IOSD (\_SB.PTMD.SOSD ()))
            If (CondRefOf (\_TZ.DPPM))
            {
                \_SB.DPPM.IECD ()
                \_SB.RSAX ()
                \_SB.DPPM.IOSD ()
                \_SB.DPPM.SOSD ()
                If (\_SB.DPPM.WA0E)
                {
                    \_SB.DPPM.WAN0 = 0x01
                    \_SB.DPPM.WAM0 ()
                }
            }
        }

        \_SB.PCI0.LPCB.EC0.EC48 ()
        \_SB.DOCK ()
        Return (Package (0x02)
        {
            0x00, 
            0x00
        })
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3) /* \GETB.TBF3 */
    }

    Method (PNOT, 0, Serialized)
    {
        If (TCNT > 0x01)
        {
            If (PDC0 & 0x08)
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If (PDC0 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If (PDC1 & 0x08)
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If (PDC1 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If (PDC2 & 0x08)
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If (PDC2 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If (PDC3 & 0x08)
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If (PDC3 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }

            If (PDC4 & 0x08)
            {
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                If (PDC4 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81) // C-State Change
                }
            }

            If (PDC5 & 0x08)
            {
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                If (PDC5 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81) // C-State Change
                }
            }

            If (PDC6 & 0x08)
            {
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                If (PDC6 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81) // C-State Change
                }
            }

            If (PDC7 & 0x08)
            {
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
                If (PDC7 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If (Arg0 == \TRTP)
        {
            TRP0 = 0x00
        }

        If (Arg0 == \TRTD)
        {
            DTSF = Arg1
            TRPD = 0x00
            Return (DTSF) /* \DTSF */
        }

        Return (SMIF) /* \SMIF */
    }

    Scope (\_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\LDTB, Local0))
            {
                \LDTB ()
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            OSYS = 0x07D0
            If (CondRefOf (\_OSI, Local0))
            {
                If (\_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                }

                If (\_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (\_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (\_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (\_OSI ("Windows 2001.1"))
                {
                    OSYS = 0x07D3
                }

                If (\_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (\_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }

                \_SB.ASRV (0x07, 0x02, OSYS)
            }
        }

        Method (NHPG, 0, Serialized)
        {
            If (\RP1D == Zero)
            {
                ^RP01.HPEX = Zero
                ^RP01.HPSX = One
            }

            If (\RP2D == Zero)
            {
                ^RP02.HPEX = Zero
                ^RP02.HPSX = One
            }

            If (\RP3D == Zero)
            {
                ^RP03.HPEX = Zero
                ^RP03.HPSX = One
            }

            If (\RP4D == Zero)
            {
                ^RP04.HPEX = Zero
                ^RP04.HPSX = One
            }

            If (\RP5D == Zero)
            {
                ^RP05.HPEX = Zero
                ^RP05.HPSX = One
            }

            If (\RP7D == Zero)
            {
                ^RP07.HPEX = Zero
                ^RP07.HPSX = One
            }

            If (\RP8D == Zero)
            {
                ^RP08.HPEX = Zero
                ^RP08.HPSX = One
            }
        }

        Method (NPME, 0, Serialized)
        {
            If (\RP1D == Zero)
            {
                ^RP01.PMEX = Zero
                ^RP01.PMSX = One
            }

            If (\RP2D == Zero)
            {
                ^RP02.PMEX = Zero
                ^RP02.PMSX = One
            }

            If (\RP3D == Zero)
            {
                ^RP03.PMEX = Zero
                ^RP03.PMSX = One
            }

            If (\RP4D == Zero)
            {
                ^RP04.PMEX = Zero
                ^RP04.PMSX = One
            }

            If (\RP5D == Zero)
            {
                ^RP05.PMEX = Zero
                ^RP05.PMSX = One
            }

            If (\RP7D == Zero)
            {
                ^RP07.PMEX = Zero
                ^RP07.PMSX = One
            }

            If (\RP8D == Zero)
            {
                ^RP08.PMEX = Zero
                ^RP08.PMSX = One
            }
        }
    }

    Scope (\)
    {
        Name (PICM, 0x00)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            PRWP [0x00] = Arg0
            Local0 = ShiftLeft (SS1, 0x01)
            Local0 |= (SS2 << 0x02)
            Local0 |= (SS3 << 0x03)
            Local0 |= (SS4 << 0x04)
            If ((0x01 << Arg1) & Local0)
            {
                PRWP [0x01] = Arg1
            }
            Else
            {
                Local0 >>= 0x01
                FindSetLeftBit (Local0, PRWP [0x01])
            }

            Return (PRWP) /* \PRWP */
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x1E)
                    {
                        "device_type", 
                        Buffer (0x08)
                        {
                            "display"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x01                                           
                        }, 

                        "AAPL00,backlight-control", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "AAPL,snb-platform-id", 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x01, 0x00                         
                        }, 

                        "AAPL00,blackscreen-preferences", 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x08                         
                        }, 

                        "VRAM,totalsize", 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x20                         
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x26, 0x01, 0x00, 0x00                         
                        }, 

                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        }, 

                        "model", 
                        Buffer (0x17)
                        {
                            "Intel HD Graphics 3000"
                        }, 

                        "AAPL,HasLid", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "AAPL,HasPanel", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "AAPL,NumDisplays", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                         
                        }, 

                        "AAPL,NumFramebuffers", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "AAPL,DualLink", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "AAPL00,override-no-edid", 
                        Buffer (0x80)
                        {
                            /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
                            /* 0008 */  0x36, 0x7F, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00,
                            /* 0010 */  0x00, 0x15, 0x01, 0x03, 0x80, 0x15, 0x10, 0xFF,
                            /* 0018 */  0x2F, 0x00, 0x00, 0xA0, 0x57, 0x49, 0x9B, 0x26,
                            /* 0020 */  0x10, 0x48, 0x4F, 0x00, 0x00, 0x00, 0x01, 0x01,
                            /* 0028 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                            /* 0030 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x64, 0x19,
                            /* 0038 */  0x00, 0x20, 0x41, 0x00, 0x3A, 0x30, 0x18, 0x88,
                            /* 0040 */  0x36, 0x00, 0xD2, 0x9E, 0x00, 0x00, 0x00, 0x18,
                            /* 0048 */  0x00, 0x00, 0x00, 0xFC, 0x00, 0x31, 0x30, 0x32,
                            /* 0050 */  0x34, 0x78, 0x37, 0x36, 0x38, 0x0A, 0x20, 0x20,
                            /* 0058 */  0x20, 0x20, 0x00, 0x00, 0x00, 0xFD, 0x00, 0x00,
                            /* 0060 */  0x3C, 0x00, 0x86, 0x07, 0x00, 0x00, 0x00, 0x00,
                            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD1 
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
            
            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                DSEN = And (Arg0, 0x07)
                If ((Arg0 & 0x03) == 0x00)
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (CondRefOf (IDAB))
                {
                    IDAB ()
                }
                Else
                {
                    NDID = 0x00
                    If (DIDL != Zero)
                    {
                        DID1 = SDDL (DIDL)
                    }

                    If (DDL2 != Zero)
                    {
                        DID2 = SDDL (DDL2)
                    }

                    If (DDL3 != Zero)
                    {
                        DID3 = SDDL (DDL3)
                    }

                    If (DDL4 != Zero)
                    {
                        DID4 = SDDL (DDL4)
                    }

                    If (DDL5 != Zero)
                    {
                        DID5 = SDDL (DDL5)
                    }

                    If (DDL6 != Zero)
                    {
                        DID6 = SDDL (DDL6)
                    }

                    If (DDL7 != Zero)
                    {
                        DID7 = SDDL (DDL7)
                    }

                    If (DDL8 != Zero)
                    {
                        DID8 = SDDL (DDL8)
                    }
                }

                If (NDID == 0x01)
                {
                    Name (TMP1, Package (0x01)
                    {
                        0xFFFFFFFF
                    })
                    TMP1 [0x00] = Or (0x00010000, DID1)
                    Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                }

                If (NDID == 0x02)
                {
                    Name (TMP2, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP2 [0x00] = Or (0x00010000, DID1)
                    TMP2 [0x01] = Or (0x00010000, DID2)
                    Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                }

                If (NDID == 0x03)
                {
                    Name (TMP3, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP3 [0x00] = Or (0x00010000, DID1)
                    TMP3 [0x01] = Or (0x00010000, DID2)
                    TMP3 [0x02] = Or (0x00010000, DID3)
                    Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                }

                If (NDID == 0x04)
                {
                    Name (TMP4, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP4 [0x00] = Or (0x00010000, DID1)
                    TMP4 [0x01] = Or (0x00010000, DID2)
                    TMP4 [0x02] = Or (0x00010000, DID3)
                    TMP4 [0x03] = Or (0x00010000, DID4)
                    Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                }

                If (NDID == 0x05)
                {
                    Name (TMP5, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP5 [0x00] = Or (0x00010000, DID1)
                    TMP5 [0x01] = Or (0x00010000, DID2)
                    TMP5 [0x02] = Or (0x00010000, DID3)
                    TMP5 [0x03] = Or (0x00010000, DID4)
                    TMP5 [0x04] = Or (0x00010000, DID5)
                    Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                }

                If (NDID == 0x06)
                {
                    Name (TMP6, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP6 [0x00] = Or (0x00010000, DID1)
                    TMP6 [0x01] = Or (0x00010000, DID2)
                    TMP6 [0x02] = Or (0x00010000, DID3)
                    TMP6 [0x03] = Or (0x00010000, DID4)
                    TMP6 [0x04] = Or (0x00010000, DID5)
                    TMP6 [0x05] = Or (0x00010000, DID6)
                    Return (TMP6) /* \_SB_.PCI0.GFX0._DOD.TMP6 */
                }

                If (NDID == 0x07)
                {
                    Name (TMP7, Package (0x07)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP7 [0x00] = Or (0x00010000, DID1)
                    TMP7 [0x01] = Or (0x00010000, DID2)
                    TMP7 [0x02] = Or (0x00010000, DID3)
                    TMP7 [0x03] = Or (0x00010000, DID4)
                    TMP7 [0x04] = Or (0x00010000, DID5)
                    TMP7 [0x05] = Or (0x00010000, DID6)
                    TMP7 [0x06] = Or (0x00010000, DID7)
                    Return (TMP7) /* \_SB_.PCI0.GFX0._DOD.TMP7 */
                }

                If (NDID == 0x08)
                {
                    Name (TMP8, Package (0x08)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP8 [0x00] = Or (0x00010000, DID1)
                    TMP8 [0x01] = Or (0x00010000, DID2)
                    TMP8 [0x02] = Or (0x00010000, DID3)
                    TMP8 [0x03] = Or (0x00010000, DID4)
                    TMP8 [0x04] = Or (0x00010000, DID5)
                    TMP8 [0x05] = Or (0x00010000, DID6)
                    TMP8 [0x06] = Or (0x00010000, DID7)
                    TMP8 [0x07] = Or (0x00010000, DID8)
                    Return (TMP8) /* \_SB_.PCI0.GFX0._DOD.TMP8 */
                }

                If (NDID == 0x09)
                {
                    If (CondRefOf (HWID))
                    {
                        Return (HWID) /* External reference */
                    }
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID1 == 0x00)
                    {
                        Return (0x01)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD1) /* \NXD1 */
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID2 == 0x00)
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD2) /* \NXD2 */
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID3 == 0x00)
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID3 == 0x00)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD3) /* \NXD3 */
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID4 == 0x00)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID4 == 0x00)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD4) /* \NXD4 */
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID5 == 0x00)
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID5 == 0x00)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD5) /* \NXD5 */
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID6 == 0x00)
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID6 == 0x00)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD6) /* \NXD6 */
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID7 == 0x00)
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID7 == 0x00)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD7) /* \NXD7 */
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (DID8 == 0x00)
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID8 == 0x00)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (CondRefOf (SNXD))
                    {
                        Return (NXD8) /* \NXD8 */
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                NDID++
                Local0 = And (Arg0, 0x0F0F)
                Local1 = (0x80000000 | Local0)
                If (DIDL == Local0)
                {
                    Return (Local1)
                }

                If (DDL2 == Local0)
                {
                    Return (Local1)
                }

                If (DDL3 == Local0)
                {
                    Return (Local1)
                }

                If (DDL4 == Local0)
                {
                    Return (Local1)
                }

                If (DDL5 == Local0)
                {
                    Return (Local1)
                }

                If (DDL6 == Local0)
                {
                    Return (Local1)
                }

                If (DDL7 == Local0)
                {
                    Return (Local1)
                }

                If (DDL8 == Local0)
                {
                    Return (Local1)
                }

                Return (0x00)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Local0 = And (Arg0, 0x0F0F)
                If (0x00 == Local0)
                {
                    Return (0x1D)
                }

                If (CADL == Local0)
                {
                    Return (0x1F)
                }

                If (CAL2 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL3 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL4 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL5 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL6 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL7 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL8 == Local0)
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Local0 = And (Arg0, 0x0F0F)
                If (0x00 == Local0)
                {
                    Return (0x00)
                }

                If (NADL == Local0)
                {
                    Return (0x01)
                }

                If (NDL2 == Local0)
                {
                    Return (0x01)
                }

                If (NDL3 == Local0)
                {
                    Return (0x01)
                }

                If (NDL4 == Local0)
                {
                    Return (0x01)
                }

                If (NDL5 == Local0)
                {
                    Return (0x01)
                }

                If (NDL6 == Local0)
                {
                    Return (0x01)
                }

                If (NDL7 == Local0)
                {
                    Return (0x01)
                }

                If (NDL8 == Local0)
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Scope (\_SB.PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB4), 
                LBES,   8, 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                0x00, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                0x00, 
                0x00, 
                0x00, 
                0x00, 
                0x00, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0x00, 
                    0x00
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, 0x01)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (GESF == 0x00)
                    {
                        PARM = 0x0679
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x01)
                    {
                        PARM = 0x0240
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x04)
                    {
                        PARM &= 0xEFFF0000
                        PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                        PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x05)
                    {
                        PARM = IPSC /* \IPSC */
                        PARM |= (IPAT << 0x08)
                        PARM += 0x0100
                        PARM |= (LIDS << 0x10)
                        PARM += 0x00010000
                        PARM |= (IBIA << 0x14)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x06)
                    {
                        PARM = ITVF /* \ITVF */
                        PARM |= (ITVM << 0x04)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x07)
                    {
                        PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                        PARM ^= 0x01
                        PARM |= (GMFN << 0x01)
                        PARM |= (0x03 << 0x0B)
                        PARM |= (IDMS << 0x11)
                        PARM |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                            0x15) /* \_SB_.PCI0.GFX0.PARM */
                        GESF = 0x01
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x0A)
                    {
                        PARM = 0x00
                        If (ISSC)
                        {
                            PARM |= 0x03
                        }

                        GESF = 0x00
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x0B)
                    {
                        PARM = KSV0 /* \KSV0 */
                        GESF = KSV1 /* \KSV1 */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                }

                Method (SBCB, 0, Serialized)
                {
                    If (GESF == 0x00)
                    {
                        PARM = 0x00
                        PARM = 0x000F87FD
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x01)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x03)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x04)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x05)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x06)
                    {
                        ITVF = And (PARM, 0x0F)
                        ITVM = ShiftRight ((PARM & 0xF0), 0x04)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x07)
                    {
                        If (PARM == 0x00)
                        {
                            Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                            If (0x80000000 & Local0)
                            {
                                CLID &= 0x0F
                                GLID (CLID)
                            }
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x08)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x09)
                    {
                        IBTT = (PARM & 0xFF)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x0A)
                    {
                        IPSC = (PARM & 0xFF)
                        If ((PARM >> 0x08) & 0xFF)
                        {
                            IPAT = ((PARM >> 0x08) & 0xFF)
                            IPAT--
                        }

                        IBIA = ((PARM >> 0x14) & 0x07)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x0B)
                    {
                        IF1E = ((PARM >> 0x01) & 0x01)
                        If (PARM & (0x0F << 0x0D))
                        {
                            IDMS = ((PARM >> 0x0D) & 0x0F)
                        }
                        Else
                        {
                            IDMS = ((PARM >> 0x11) & 0x0F)
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x10)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x11)
                    {
                        PARM = ShiftLeft (LIDS, 0x08)
                        PARM += 0x0100
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x12)
                    {
                        If (PARM & 0x01)
                        {
                            If ((PARM >> 0x01) == 0x01)
                            {
                                ISSC = 0x01
                            }
                            Else
                            {
                                GESF = Zero
                                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                            }
                        }
                        Else
                        {
                            ISSC = 0x00
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x13)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x14)
                    {
                        PAVP = (PARM & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (GEFC == 0x04)
                {
                    GXFC = GBDA ()
                }

                If (GEFC == 0x06)
                {
                    GXFC = SBCB ()
                }

                GEFC = 0x00
                SCIS = 0x01
                GSSE = 0x00
                SCIE = 0x00
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (!DRDY)
                {
                    Sleep (ASLP)
                }

                Return (!DRDY)
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (CSTS > 0x02)
                {
                    Sleep (ASLP)
                }

                Return ((CSTS == 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (0x01)
                }

                CEVT = Arg0
                CSTS = 0x03
                If ((CHPD == 0x00) && (Arg1 == 0x00))
                {
                    If ((OSYS > 0x07D0) || (OSYS < 0x07D6))
                    {
                        Notify (\_SB.PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.GFX0, Arg1)
                    }
                }

                Notify (\_SB.PCI0.GFX0, 0x80) // Status Change
                Return (0x00)
            }

            Method (GHDS, 1, NotSerialized)
            {
                TIDX = Arg0
                Return (GNOT (0x01, 0x00))
            }

            Method (GLID, 1, NotSerialized)
            {
                If (Arg0 == 0x01)
                {
                    CLID = 0x03
                }
                Else
                {
                    CLID = Arg0
                }

                Return (GNOT (0x02, 0x00))
            }

            Method (GDCK, 1, NotSerialized)
            {
                CDCK = Arg0
                Return (GNOT (0x04, 0x00))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (!ARDY)
                {
                    Sleep (ASLP)
                }

                Return (!ARDY)
            }

            Method (AINT, 2, NotSerialized)
            {
                If (!(TCHE & (0x01 << Arg0)))
                {
                    Return (0x01)
                }

                If (PARD ())
                {
                    Return (0x01)
                }

                If (Arg0 == 0x02)
                {
                    If (CPFM)
                    {
                        Local0 = (CPFM & 0x0F)
                        Local1 = (EPFM & 0x0F)
                        If (Local0 == 0x01)
                        {
                            If (Local1 & 0x06)
                            {
                                PFIT = 0x06
                            }
                            ElseIf (Local1 & 0x08)
                            {
                                PFIT = 0x08
                            }
                            Else
                            {
                                PFIT = 0x01
                            }
                        }

                        If (Local0 == 0x06)
                        {
                            If (Local1 & 0x08)
                            {
                                PFIT = 0x08
                            }
                            ElseIf (Local1 & 0x01)
                            {
                                PFIT = 0x01
                            }
                            Else
                            {
                                PFIT = 0x06
                            }
                        }

                        If (Local0 == 0x08)
                        {
                            If (Local1 & 0x01)
                            {
                                PFIT = 0x01
                            }
                            ElseIf (Local1 & 0x06)
                            {
                                PFIT = 0x06
                            }
                            Else
                            {
                                PFIT = 0x08
                            }
                        }
                    }
                    Else
                    {
                        PFIT ^= 0x07
                    }

                    PFIT |= 0x80000000
                    ASLC = 0x04
                }
                ElseIf (Arg0 == 0x01)
                {
                    BCLP = Arg1
                    BCLP |= 0x80000000
                    ASLC = 0x02
                }
                ElseIf (Arg0 == 0x00)
                {
                    ALSI = Arg1
                    ASLC = 0x01
                }
                Else
                {
                    Return (0x01)
                }

                ASLE = 0x01
                Return (0x00)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (OVER != 0x00)
                {
                    Return (!GSMI)
                }

                Return (0x00)
            }

            Device (\_SB.MEM2)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (IGDS)
                    {
                        Return (CRS) /* \_SB_.MEM2.CRS_ */
                    }
                }
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (PMIO, SystemIO, \PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
            Offset (0x3C), 
                ,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, \GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GL00,   8, 
            GL01,   8, 
            GL02,   8, 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   8, 
            GL05,   8, 
            GL06,   8, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        Method (SGPO, 3, Serialized)
        {
            Field (GPIO, DWordAcc, NoLock, Preserve)
            {
                Offset (0x0C), 
                GPL0,   32, 
                Offset (0x38), 
                GPL1,   32, 
                Offset (0x48), 
                GPL2,   32
            }

            Local2 = \_SB.PCI0.LPCB.DGLE ()
            If (Arg0 < 0x20)
            {
                Local0 = (Arg1 << Arg0)
                Local1 = (Arg2 << Arg0)
                GPL0 = ((GPL0 & ~Local1) | Local0)
            }
            ElseIf (Arg0 < 0x40)
            {
                Local0 = (Arg1 << (Arg0 - 0x20))
                Local1 = (Arg2 << (Arg0 - 0x20))
                GPL1 = ((GPL1 & ~Local1) | Local0)
            }
            ElseIf (Arg0 < 0x60)
            {
                Local0 = (Arg1 << (Arg0 - 0x40))
                Local1 = (Arg2 << (Arg0 - 0x40))
                GPL2 = ((GPL2 & ~Local1) | Local0)
            }

            \_SB.PCI0.LPCB.RGLE (Local2)
        }

        Method (GGPI, 2, NotSerialized)
        {
            Field (GPIO, DWordAcc, NoLock, Preserve)
            {
                Offset (0x0C), 
                GPL0,   32, 
                Offset (0x38), 
                GPL1,   32, 
                Offset (0x48), 
                GPL2,   32
            }

            If (Arg0 < 0x20)
            {
                Return (((GPL0 >> Arg0) & Arg1))
            }
            ElseIf (Arg0 < 0x40)
            {
                Return (((GPL1 >> (Arg0 - 0x20)) & Arg1))
            }
            ElseIf (Arg0 < 0x60)
            {
                Return (((GPL2 >> (Arg0 - 0x40)) & Arg1))
            }

            Return (0x00)
        }

        OperationRegion (RCRB, SystemMemory, \SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            OperationRegion (SACS, PCI_Config, 0x40, 0xC0)
            Field (SACS, DWordAcc, NoLock, Preserve)
            {
                PRIT,   16, 
                SECT,   16, 
                PSIT,   4, 
                SSIT,   4, 
                Offset (0x08), 
                SYNC,   4, 
                Offset (0x0A), 
                SDT0,   2, 
                    ,   2, 
                SDT1,   2, 
                Offset (0x0B), 
                SDT2,   2, 
                    ,   2, 
                SDT3,   2, 
                Offset (0x14), 
                ICR0,   4, 
                ICR1,   4, 
                ICR2,   4, 
                ICR3,   4, 
                ICR4,   4, 
                ICR5,   4, 
                Offset (0x50), 
                    ,   6, 
                SAMS,   2, 
                Offset (0x52), 
                PC0E,   1, 
                PC1E,   1, 
                PC2E,   1, 
                PC3E,   1, 
                PC4E,   1, 
                PC5E,   1, 
                Offset (0x53), 
                PC0P,   1, 
                PC1P,   1, 
                PC2P,   1, 
                PC3P,   1, 
                PC4P,   1, 
                PC5P,   1
            }
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
            OperationRegion (SACS, PCI_Config, 0x40, 0xC0)
            Field (SACS, DWordAcc, NoLock, Preserve)
            {
                PRIT,   16, 
                SECT,   16, 
                PSIT,   4, 
                SSIT,   4, 
                Offset (0x08), 
                SYNC,   4, 
                Offset (0x0A), 
                SDT0,   2, 
                    ,   2, 
                SDT1,   2, 
                Offset (0x0B), 
                SDT2,   2, 
                    ,   2, 
                SDT3,   2, 
                Offset (0x14), 
                ICR0,   4, 
                ICR1,   4, 
                ICR2,   4, 
                ICR3,   4, 
                ICR4,   4, 
                ICR5,   4, 
                Offset (0x50), 
                    ,   6, 
                SAMS,   2, 
                Offset (0x52), 
                PC0E,   1, 
                PC1E,   1, 
                PC2E,   1, 
                PC3E,   1, 
                PC4E,   1, 
                PC5E,   1, 
                Offset (0x53), 
                PC0P,   1, 
                PC1P,   1, 
                PC2P,   1, 
                PC3P,   1, 
                PC4P,   1, 
                PC5P,   1
            }
        }
    }

    Scope (\)
    {
        Name (OSTB, Package (0x06)
        {
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xCAFE5C18, 
            0x00000073, 
            0xFFFFFFFF, 
            0xFFFFFFFF
        })
        Method (LDTB, 0, Serialized)
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (\_OSI ("Windows 2001"))
                {
                    Local1 = DerefOf (OSTB [0x00])
                    If (Local1 != Ones)
                    {
                        OperationRegion (TBXP, SystemMemory, Local1, DerefOf (OSTB [0x01]))
                        Load (TBXP, Local2)
                        OSTB [0x00] = Ones
                    }
                }

                If (\_OSI ("Windows 2006"))
                {
                    Local1 = DerefOf (OSTB [0x02])
                    If (Local1 != Ones)
                    {
                        OperationRegion (TBVI, SystemMemory, Local1, DerefOf (OSTB [0x03]))
                        Load (TBVI, Local2)
                        OSTB [0x02] = Ones
                    }
                }

                If (\_OSI ("Windows 2009"))
                {
                    Local1 = DerefOf (OSTB [0x04])
                    If (Local1 != Ones)
                    {
                        OperationRegion (TBSE, SystemMemory, Local1, DerefOf (OSTB [0x05]))
                        Load (TBSE, Local2)
                        OSTB [0x04] = Ones
                    }
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (MISC)
        {
            Name (_HID, EisaId ("MAT0021"))  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB)
    {
        Method (DOCK, 0, NotSerialized)
        {
            If (CondRefOf (\_TZ.PTMD))
            {
                \_SB.PTMD.OPPC ()
            }

            If (CondRefOf (\_TZ.DPPM))
            {
                \_SB.PCI0.TMCP.OPPC ()
            }
        }

        Method (GPLT, 0, Serialized)
        {
            If (0x00 == \_SB.PCI0.LPCB.EC0.GAF1 ())
            {
                If (0x00 == \_SB.PCI0.LPCB.EC0.GAF6 ())
                {
                    Return (0x03)
                }
                Else
                {
                    Return (0x00)
                }
            }
            ElseIf (0x00 == \_SB.PCI0.LPCB.EC0.GAF6 ())
            {
                Return (0x03)
            }
            Else
            {
                Return (0x00)
            }
        }

        Method (GDPL, 0, Serialized)
        {
            Local1 = 0x00
            If (0x01 == \_SB.PCI0.LPCB.EC0.GAF0 ())
            {
                Local0 = GPLT ()
                If (Local0 & 0x01)
                {
                    Local1 = 0x04
                }
            }

            If (DPLE)
            {
                If (Local1 < 0x04)
                {
                    Local1 = 0x04
                }
            }

            Return (Local1)
        }
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Name (ECST, 0x00)
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
            })
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (Arg0 == 0x03)
                {
                    ECST = Arg1
                    If (Arg1 == 0x01)
                    {
                        PWRS = EC01 ()
                        \PNOT ()
                        \BNOT ()
                        \_SB.PCI0.GFX0.GLID (0x01)
                        \_SB.PCI0.INIG ()
                    }

                    B1PU = ER10 /* \_SB_.PCI0.LPCB.EC0_.ER10 */
                    B2PU = ER48 /* \_SB_.PCI0.LPCB.EC0_.ER48 */
                    \BEXT ()
                    \_SB.DOCK ()
                }
            }

            Name (_GPE, 0x17)  // _GPE: General Purpose Events
            OperationRegion (ECR, EmbeddedControl, 0x00, 0xFF)
            Field (ECR, ByteAcc, Lock, Preserve)
            {
                ER00,   8, 
                ER01,   8, 
                Offset (0x04), 
                ER04,   8, 
                ER05,   8, 
                ER06,   8, 
                ER07,   8, 
                ER08,   8, 
                ER09,   8, 
                ER0A,   8, 
                ER0B,   8, 
                Offset (0x10), 
                ER10,   8, 
                ER11,   8, 
                ER12,   8, 
                ER13,   8, 
                ER14,   8, 
                ER15,   8, 
                ER16,   8, 
                ER17,   8, 
                ER18,   8, 
                ER19,   8, 
                ER1A,   8, 
                ER1B,   8, 
                ER1C,   8, 
                ER1D,   8, 
                ER1E,   8, 
                ER1F,   8, 
                ER20,   8, 
                ER21,   8, 
                ER22,   8, 
                ER23,   8, 
                ER24,   8, 
                ER25,   8, 
                ER26,   8, 
                ER27,   8, 
                ER28,   8, 
                ER29,   8, 
                ER2A,   8, 
                ER2B,   8, 
                ER2C,   8, 
                ER2D,   8, 
                ER2E,   8, 
                ER2F,   8, 
                ER30,   8, 
                ER31,   8, 
                ER32,   8, 
                ER33,   8, 
                ER34,   8, 
                ER35,   8, 
                ER36,   8, 
                ER37,   8, 
                ER38,   8, 
                ER39,   8, 
                ER3A,   8, 
                ER3B,   8, 
                ER3C,   8, 
                ER3D,   8, 
                ER3E,   8, 
                ER3F,   8, 
                Offset (0x48), 
                ER48,   8, 
                ER49,   8, 
                ER4A,   8, 
                ER4B,   8, 
                ER4C,   8, 
                ER4D,   8, 
                ER4E,   8, 
                ER4F,   8, 
                ER50,   8, 
                ER51,   8, 
                ER52,   8, 
                ER53,   8, 
                ER54,   8, 
                ER55,   8, 
                ER56,   8, 
                ER57,   8, 
                ER58,   8, 
                ER59,   8, 
                ER5A,   8, 
                ER5B,   8, 
                ER5C,   8, 
                ER5D,   8, 
                ER5E,   8, 
                ER5F,   8, 
                ER60,   8, 
                ER61,   8, 
                ER62,   8, 
                ER63,   8, 
                ER64,   8, 
                ER65,   8, 
                ER66,   8, 
                ER67,   8, 
                ER68,   8, 
                ER69,   8, 
                ER6A,   8, 
                ER6B,   8, 
                ER6C,   8, 
                ER6D,   8, 
                ER6E,   8, 
                ER6F,   8, 
                ER70,   8, 
                ER71,   8, 
                ER72,   8, 
                ER73,   8, 
                ER74,   8, 
                ER75,   8, 
                ER76,   8, 
                ER77,   8, 
                Offset (0x80), 
                ER80,   8, 
                ER81,   8, 
                ER82,   8, 
                ER83,   8, 
                ER84,   8, 
                ER85,   8, 
                ER86,   8, 
                ER87,   8, 
                ER88,   8, 
                ER89,   8, 
                ER8A,   8, 
                ER8B,   8, 
                ER8C,   8, 
                ER8D,   8, 
                ER8E,   8, 
                ER8F,   8, 
                ER90,   8, 
                ER91,   8, 
                ER92,   8, 
                ER93,   8, 
                Offset (0xA0), 
                ERA0,   8, 
                ERA1,   8, 
                ERA2,   8, 
                ERA3,   8, 
                ERA4,   8, 
                ERA5,   8, 
                ERA6,   8, 
                ERA7,   8, 
                ERA8,   8, 
                ERA9,   8, 
                ERAA,   8, 
                ERAB,   8, 
                ERAC,   8, 
                ERAD,   8, 
                ERAE,   8, 
                ERAF,   8, 
                ERB0,   8, 
                ERB1,   8, 
                ERB2,   8, 
                ERB3,   8, 
                ERB4,   8, 
                ERB5,   8, 
                ERB6,   8, 
                ERB7,   8, 
                ERB8,   8, 
                Offset (0xBA), 
                ERBA,   8, 
                Offset (0xC0), 
                ERC0,   8, 
                ERC1,   8, 
                ERC2,   8, 
                ERC3,   8, 
                ERC4,   8, 
                ERC5,   8, 
                ERC6,   8, 
                ERC7,   8, 
                ERC8,   8, 
                ERC9,   8, 
                ERCA,   8, 
                ERCB,   8, 
                ERCC,   8, 
                ERCD,   8, 
                ERCE,   8, 
                ERCF,   8, 
                ERD0,   8, 
                ERD1,   8, 
                ERD2,   8, 
                ERD3,   8, 
                ERD4,   8, 
                ERD5,   8, 
                ERD6,   8, 
                ERD7,   8, 
                ERD8,   8, 
                ERD9,   8, 
                ERDA,   8, 
                ERDB,   8, 
                ERDC,   8, 
                Offset (0xE8), 
                ERE8,   8, 
                ERE9,   8, 
                EREA,   8
            }

            Name (B1PU, One)
            Name (B2PU, One)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Name (LHKQ, Ones)
            Method (HKCV, 1, NotSerialized)
            {
                Local0 = Arg0
                If (Local0 >= 0x90)
                {
                    If (Local0 <= 0x93)
                    {
                        Local0 += 0x8C
                        Local0 -= 0x90
                        Local0 += 0x01
                    }
                }

                Local0 &= 0x7F
                Return (Local0)
            }

            Method (HKMN, 1, Serialized)
            {
                Local0 = HKCV (Arg0)
                If ((0x00 & (0x01 << Local0)) == 0x00)
                {
                    If (LHKQ)
                    {
                        LHKQ = ERB6 /* \_SB_.PCI0.LPCB.EC0_.ERB6 */
                    }

                    If ((LHKQ && (LHKQ != Local0)) == 0x00)
                    {
                        HKNF (Arg0)
                    }
                }
            }

            Method (HKBN, 1, Serialized)
            {
                If ((0x00 & (0x01 << Arg0)) == 0x00)
                {
                    HKNF (Arg0)
                }
            }

            Method (HKNF, 1, Serialized)
            {
                \_SB.HKEY.HIND (Arg0)
                Notify (\_SB.HKEY, 0x80) // Status Change
            }

            Method (_Q0A, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x01)
            }

            Method (_Q0B, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x02)
            }

            Method (_Q0C, 0, Serialized)  // _Qxx: EC Query
            {
                If (APEG) {}
                ElseIf (\_SB.PCI0.GFX0.SCIP ())
                {
                    \_SB.IDSL ()
                }
                Else
                {
                }
            }

            Method (_Q0D, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x04)
            }

            Method (_Q0E, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x05)
            }

            Method (_Q0F, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x06)
            }

            Method (_Q10, 0, Serialized)  // _Qxx: EC Query
            {
                If (\FNMK & (0x01 << (0x07 - 0x01)))
                {
                    HKBN (0x07)
                }
            }

            Method (_Q11, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x08)
            }

            Method (_Q12, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x09)
            }

            Method (_Q13, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x0A)
            }

            Method (_Q14, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x0B)
            }

            Method (_Q15, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x0C)
            }

            Method (_Q16, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x10)
            }

            Method (_Q17, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x11)
            }

            Method (_Q18, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x12)
            }

            Method (_Q19, 0, Serialized)  // _Qxx: EC Query
            {
                HKBN (0x13)
            }

            Method (_Q70, 0, Serialized)  // _Qxx: EC Query
            {
                If (IBLC () >= 0x01)
                {
                    Return (Zero)
                }

                HKMN (0x81)
                If (CondRefOf (\_OSI, Local6))
                {
                    If (\_OSI ("Windows 2006"))
                    {
                        If (APEG) {}
                        Else
                        {
                            Notify (\_SB.PCI0.GFX0.DD02, 0x87) // Device-Specific
                        }
                    }
                }
            }

            Method (_Q71, 0, Serialized)  // _Qxx: EC Query
            {
                If (IBLC () >= 0x01)
                {
                    Return (Zero)
                }

                HKMN (0x82)
                If (CondRefOf (\_OSI, Local6))
                {
                    If (\_OSI ("Windows 2006"))
                    {
                        If (APEG) {}
                        Else
                        {
                            Notify (\_SB.PCI0.GFX0.DD02, 0x86) // Device-Specific
                        }
                    }
                }
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
            {
            }

            Method (_Q73, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x84)
            }

            Method (_Q74, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x85)
            }

            Method (_Q75, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x86)
            }

            Method (_Q76, 0, Serialized)  // _Qxx: EC Query
            {
                If (\FNMK & (0x01 << (0x07 - 0x01)))
                {
                    HKMN (0x87)
                }
            }

            Method (_Q77, 0, Serialized)  // _Qxx: EC Query
            {
                TGCM ()
                HKMN (0x88)
            }

            Method (_Q78, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x89)
            }

            Method (_Q79, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x8A)
            }

            Method (_Q7A, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x8B)
            }

            Method (_Q7B, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x8C)
            }

            Method (_Q7C, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x90)
            }

            Method (_Q7D, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x91)
            }

            Method (_Q7E, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x92)
            }

            Method (_Q7F, 0, Serialized)  // _Qxx: EC Query
            {
                HKMN (0x93)
            }

            Method (_QA2, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.HKEY.HIND (0x30)
                Notify (\_SB.HKEY, 0x80) // Status Change
            }

            Method (_QA3, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.HKEY.HIND (0x31)
                Notify (\_SB.HKEY, 0x80) // Status Change
            }

            Method (TRDF, 0, Serialized)
            {
                Local0 = \_SB.ASRV (0x0F, 0x00, Zero)
                If (0x01 == Local0)
                {
                    \_SB.HKEY.HIND (0x50)
                    Notify (\_SB.HKEY, 0x80) // Status Change
                }
                Else
                {
                    SSMP = 0xE8
                }
            }

            Method (_Q93, 0, Serialized)  // _Qxx: EC Query
            {
                Local0 = \_SB.PCI0.LPCB.EC0.EC45 (0x04, 0x00)
                If ((Local0 & 0x0100) && (Local0 & 0x8000))
                {
                    If (Local0 & 0x0800)
                    {
                        Return (Zero)
                    }
                }

                TRDF ()
            }

            Method (_Q95, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x3A)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q96, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x3B)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q97, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x36)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q98, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x37)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q99, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x34)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q9A, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x35)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q9B, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x38)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q9C, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x39)
                Notify (\_SB.TBTN, 0x80) // Status Change
            }

            Method (_Q9D, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x32)
                Notify (\_SB.TBTN, 0x80) // Status Change
                If (CondRefOf (\_TZ.DPPM))
                {
                    Notify (\_SB.DPPM, 0x83) // Device-Specific Change
                }

                Local0 = \_SB.PCI0.LPCB.EC0.GJF1 ()
                If (Local0)
                {
                    DMD0 = 0x00
                }
                Else
                {
                    DMD0 = 0x02
                }

                \_SB.CETP ()
            }

            Method (_Q9E, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.TBTN.HIND (0x33)
                Notify (\_SB.TBTN, 0x80) // Status Change
                If (CondRefOf (\_TZ.DPPM))
                {
                    Notify (\_SB.DPPM, 0x83) // Device-Specific Change
                }

                Local0 = \_SB.PCI0.LPCB.EC0.GJF1 ()
                If (Local0)
                {
                    DMD0 = 0x00
                }
                Else
                {
                    DMD0 = 0x02
                }

                \_SB.CETP ()
            }

            Method (_Q9F, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.HKEY.HIND (0x40)
                Notify (\_SB.HKEY, 0x80) // Status Change
            }

            Method (_QA0, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.HKEY.HIND (0x41)
                Notify (\_SB.HKEY, 0x80) // Status Change
            }

            Method (_Q87, 0, Serialized)  // _Qxx: EC Query
            {
                \BEXT ()
                \PNOT ()
                Notify (\_SB.BAT1, 0x81) // Information Change
            }

            Method (_Q88, 0, Serialized)  // _Qxx: EC Query
            {
                \PNOT ()
                Notify (\_SB.BAT1, 0x80) // Status Change
            }

            Method (_Q89, 0, Serialized)  // _Qxx: EC Query
            {
                \PNOT ()
                Notify (\_SB.BAT1, 0x80) // Status Change
            }

            Method (_Q8A, 0, Serialized)  // _Qxx: EC Query
            {
                \BEXT ()
                \PNOT ()
            }

            Method (_Q8B, 0, Serialized)  // _Qxx: EC Query
            {
                \PNOT ()
            }

            Method (_Q8C, 0, Serialized)  // _Qxx: EC Query
            {
                \PNOT ()
            }

            Method (_Q8D, 0, Serialized)  // _Qxx: EC Query
            {
                If (CondRefOf (\_TZ.DPPM))
                {
                    If (\_SB.DPPM.WA0E)
                    {
                        \_SB.DPPM.WAM0 ()
                    }

                    \TNT0 ()
                    \TNT1 ()
                }

                If (CondRefOf (\_TZ.PTMD))
                {
                    Notify (\_TZ.TZ00, 0x80) // Thermal Status Change
                    Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
                }
            }

            Method (_Q84, 0, Serialized)  // _Qxx: EC Query
            {
                PWRS = EC01 ()
                \PNOT ()
                \BNOT ()
                Notify (\_SB.AC, 0x80) // Status Change
            }

            Method (_Q85, 0, Serialized)  // _Qxx: EC Query
            {
                Notify (\_SB.LID, 0x80) // Status Change
            }

            Method (_Q8E, 0, Serialized)  // _Qxx: EC Query
            {
                \_SB.DOCK ()
                \_SB.HKEY.HIND (0x60)
                Notify (\_SB.HKEY, 0x80) // Status Change
            }

            Method (ECGE, 0, Serialized)
            {
                Local0 = \_SB.PCI0.LPCB.EC0.EC44 (0x6D, 0x00, 0x00)
                If (Local0 == 0xFFFF)
                {
                    Local0 = 0xFF00
                }
                Else
                {
                    Local0 &= 0xFFFF
                }

                Local1 = And ((Local0 >> 0x08), 0xFF)
                Return (Local1)
            }

            Method (_QA1, 0, Serialized)  // _Qxx: EC Query
            {
                Local0 = \_SB.PCI0.LPCB.EC0.ECGE ()
                While (Local0)
                {
                    If (Local0 & 0x01)
                    {
                        If (CondRefOf (\_TZ.PTMD))
                        {
                            \_SB.PTMD.PM24 ()
                        }

                        If (CondRefOf (\_TZ.DPPM))
                        {
                            Notify (\_SB.PCI0.LPCB.TSK1, 0x90) // Device-Specific
                        }
                    }

                    If (Local0 & 0x02)
                    {
                        If (CondRefOf (\_TZ.PTMD))
                        {
                            \_SB.PTMD.PM25 ()
                        }

                        If (CondRefOf (\_TZ.DPPM))
                        {
                            Notify (\_SB.PCI0.LPCB.TSK2, 0x90) // Device-Specific
                        }
                    }

                    If (Local0 & 0x04)
                    {
                        If (CondRefOf (\_TZ.PTMD))
                        {
                            \_SB.PTMD.PM23 ()
                        }

                        If (CondRefOf (\_TZ.DPPM, Local1))
                        {
                            Notify (\_SB.PCI0.TMEM, 0x90) // Device-Specific
                        }
                    }

                    If (CondRefOf (\_TZ.PTMD))
                    {
                        If (Local0 != 0x00)
                        {
                            \_SB.PTMD.EDPM ()
                        }
                    }

                    \_SB.PCI0.LPCB.EC0.EC44 (0x6E, Local0, 0x00)
                    Local0 = \_SB.PCI0.LPCB.EC0.ECGE ()
                }
            }

            Method (EC01, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x08)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x01
                    }
                }
                Else
                {
                    Local0 = ER08 /* \_SB_.PCI0.LPCB.EC0_.ER08 */
                }

                Return ((Local0 & 0x01))
            }

            Method (EC02, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x08)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x02
                    }
                }
                Else
                {
                    Local0 = ER08 /* \_SB_.PCI0.LPCB.EC0_.ER08 */
                }

                If (Local0 & 0x02)
                {
                    Local0 = 0x01
                }
                Else
                {
                    Local0 = 0x00
                }

                Return (Local0)
            }

            Method (EC15, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x08)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER08 /* \_SB_.PCI0.LPCB.EC0_.ER08 */
                }

                If (Local0 & 0x04)
                {
                    Local0 = 0x01
                }
                Else
                {
                    Local0 = 0x00
                }

                Return (Local0)
            }

            Method (EC03, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x10)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER10 /* \_SB_.PCI0.LPCB.EC0_.ER10 */
                }

                B1PU = Local0
                Return (B1PU) /* \_SB_.PCI0.LPCB.EC0_.B1PU */
            }

            Method (EC16, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x48)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER48 /* \_SB_.PCI0.LPCB.EC0_.ER48 */
                }

                B2PU = Local0
                Return (B2PU) /* \_SB_.PCI0.LPCB.EC0_.B2PU */
            }

            Method (EC04, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x12)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER12 /* \_SB_.PCI0.LPCB.EC0_.ER12 */
                    Local1 = ER13 /* \_SB_.PCI0.LPCB.EC0_.ER13 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (Local0 == Zero)
                {
                    Local0 = 0xFFFFFFFF
                }

                If ((B1PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC17, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x4A)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER4A /* \_SB_.PCI0.LPCB.EC0_.ER4A */
                    Local1 = ER4B /* \_SB_.PCI0.LPCB.EC0_.ER4B */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (Local0 == Zero)
                {
                    Local0 = 0xFFFFFFFF
                }

                If ((B2PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC05, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x1A)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER1A /* \_SB_.PCI0.LPCB.EC0_.ER1A */
                    Local1 = ER1B /* \_SB_.PCI0.LPCB.EC0_.ER1B */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (Local0 == 0xFFFF)
                {
                    Local0 = 0xFFFFFFFF
                }

                If ((B1PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC18, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x52)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER52 /* \_SB_.PCI0.LPCB.EC0_.ER52 */
                    Local1 = ER53 /* \_SB_.PCI0.LPCB.EC0_.ER53 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (Local0 == 0xFFFF)
                {
                    Local0 = 0xFFFFFFFF
                }

                If ((B2PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC06, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x11)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = One
                    }
                }
                Else
                {
                    Local0 = ER11 /* \_SB_.PCI0.LPCB.EC0_.ER11 */
                }

                Return (Local0)
            }

            Method (EC19, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x49)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = One
                    }
                }
                Else
                {
                    Local0 = ER49 /* \_SB_.PCI0.LPCB.EC0_.ER49 */
                }

                Return (Local0)
            }

            Method (EC07, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x14)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER14 /* \_SB_.PCI0.LPCB.EC0_.ER14 */
                    Local1 = ER15 /* \_SB_.PCI0.LPCB.EC0_.ER15 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC1A, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x4C)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER4C /* \_SB_.PCI0.LPCB.EC0_.ER4C */
                    Local1 = ER4D /* \_SB_.PCI0.LPCB.EC0_.ER4D */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC08, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x16)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER16 /* \_SB_.PCI0.LPCB.EC0_.ER16 */
                    Local1 = ER17 /* \_SB_.PCI0.LPCB.EC0_.ER17 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (B1PU == Zero)
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC1B, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x4E)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER4E /* \_SB_.PCI0.LPCB.EC0_.ER4E */
                    Local1 = ER4F /* \_SB_.PCI0.LPCB.EC0_.ER4F */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (B2PU == Zero)
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC09, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x18)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER18 /* \_SB_.PCI0.LPCB.EC0_.ER18 */
                    Local1 = ER19 /* \_SB_.PCI0.LPCB.EC0_.ER19 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (B1PU == Zero)
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC1C, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x50)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER50 /* \_SB_.PCI0.LPCB.EC0_.ER50 */
                    Local1 = ER51 /* \_SB_.PCI0.LPCB.EC0_.ER51 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (B2PU == Zero)
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC0A, 0, Serialized)
            {
                Local0 = Ones
                If (B1PU == Zero)
                {
                    Local0 = 0x0A
                }

                Return (Local0)
            }

            Method (EC1D, 0, Serialized)
            {
                Local0 = Ones
                If (B1PU == Zero)
                {
                    Local0 = 0x0A
                }

                Return (Local0)
            }

            Method (EC0B, 0, Serialized)
            {
                Local0 = Ones
                If (B1PU == Zero)
                {
                    Local0 = 0x0A
                }

                Return (Local0)
            }

            Method (EC1E, 0, Serialized)
            {
                Local0 = Ones
                If (B1PU == Zero)
                {
                    Local0 = 0x0A
                }

                Return (Local0)
            }

            Method (EC0C, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                If (ECST == Zero)
                {
                    Local1 = 0x00
                    While (Local1 < 0x0C)
                    {
                        Local0 = EC81 ((0x1C + Local1))
                        If (Local0 == 0xFFFFFFFF)
                        {
                            Local0 = 0x20
                        }

                        BUF [Local1] = Local0
                        Local1++
                    }
                }
                Else
                {
                    BUF [0x00] = ER1C /* \_SB_.PCI0.LPCB.EC0_.ER1C */
                    BUF [0x01] = ER1D /* \_SB_.PCI0.LPCB.EC0_.ER1D */
                    BUF [0x02] = ER1E /* \_SB_.PCI0.LPCB.EC0_.ER1E */
                    BUF [0x03] = ER1F /* \_SB_.PCI0.LPCB.EC0_.ER1F */
                    BUF [0x04] = ER20 /* \_SB_.PCI0.LPCB.EC0_.ER20 */
                    BUF [0x05] = ER21 /* \_SB_.PCI0.LPCB.EC0_.ER21 */
                    BUF [0x06] = ER22 /* \_SB_.PCI0.LPCB.EC0_.ER22 */
                    BUF [0x07] = ER23 /* \_SB_.PCI0.LPCB.EC0_.ER23 */
                    BUF [0x08] = ER24 /* \_SB_.PCI0.LPCB.EC0_.ER24 */
                    BUF [0x09] = ER25 /* \_SB_.PCI0.LPCB.EC0_.ER25 */
                    BUF [0x0A] = ER26 /* \_SB_.PCI0.LPCB.EC0_.ER26 */
                    BUF [0x0B] = ER27 /* \_SB_.PCI0.LPCB.EC0_.ER27 */
                }

                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC0C.BUF_ */
            }

            Method (EC1F, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                If (ECST == Zero)
                {
                    Local1 = 0x00
                    While (Local1 < 0x0C)
                    {
                        Local0 = EC81 ((0x54 + Local1))
                        If (Local0 == 0xFFFFFFFF)
                        {
                            Local0 = 0x20
                        }

                        BUF [Local1] = Local0
                        Local1++
                    }
                }
                Else
                {
                    BUF [0x00] = ER54 /* \_SB_.PCI0.LPCB.EC0_.ER54 */
                    BUF [0x01] = ER55 /* \_SB_.PCI0.LPCB.EC0_.ER55 */
                    BUF [0x02] = ER56 /* \_SB_.PCI0.LPCB.EC0_.ER56 */
                    BUF [0x03] = ER57 /* \_SB_.PCI0.LPCB.EC0_.ER57 */
                    BUF [0x04] = ER58 /* \_SB_.PCI0.LPCB.EC0_.ER58 */
                    BUF [0x05] = ER59 /* \_SB_.PCI0.LPCB.EC0_.ER59 */
                    BUF [0x06] = ER5A /* \_SB_.PCI0.LPCB.EC0_.ER5A */
                    BUF [0x07] = ER5B /* \_SB_.PCI0.LPCB.EC0_.ER5B */
                    BUF [0x08] = ER5C /* \_SB_.PCI0.LPCB.EC0_.ER5C */
                    BUF [0x09] = ER5D /* \_SB_.PCI0.LPCB.EC0_.ER5D */
                    BUF [0x0A] = ER5E /* \_SB_.PCI0.LPCB.EC0_.ER5E */
                    BUF [0x0B] = ER5F /* \_SB_.PCI0.LPCB.EC0_.ER5F */
                }

                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC1F.BUF_ */
            }

            Method (EC0D, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x2A)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER2A /* \_SB_.PCI0.LPCB.EC0_.ER2A */
                    Local1 = ER2B /* \_SB_.PCI0.LPCB.EC0_.ER2B */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                BUF = EC80 (Local0, 0x05)
                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC0D.BUF_ */
            }

            Method (EC20, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x62)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER62 /* \_SB_.PCI0.LPCB.EC0_.ER62 */
                    Local1 = ER63 /* \_SB_.PCI0.LPCB.EC0_.ER63 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                BUF = EC80 (Local0, 0x05)
                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC20.BUF_ */
            }

            Method (EC0E, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                If (ECST == Zero)
                {
                    Local1 = 0x00
                    While (Local1 < 0x04)
                    {
                        Local0 = EC81 ((0x2C + Local1))
                        If (Local0 == 0xFFFFFFFF)
                        {
                            Local0 = 0x20
                        }

                        BUF [Local1] = Local0
                        Local1++
                    }
                }
                Else
                {
                    BUF [0x00] = ER2C /* \_SB_.PCI0.LPCB.EC0_.ER2C */
                    BUF [0x01] = ER2D /* \_SB_.PCI0.LPCB.EC0_.ER2D */
                    BUF [0x02] = ER2E /* \_SB_.PCI0.LPCB.EC0_.ER2E */
                    BUF [0x03] = ER2F /* \_SB_.PCI0.LPCB.EC0_.ER2F */
                }

                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC0E.BUF_ */
            }

            Method (EC21, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                If (ECST == Zero)
                {
                    Local1 = 0x00
                    While (Local1 < 0x04)
                    {
                        Local0 = EC81 ((0x64 + Local1))
                        If (Local0 == 0xFFFFFFFF)
                        {
                            Local0 = 0x20
                        }

                        BUF [Local1] = Local0
                        Local1++
                    }
                }
                Else
                {
                    BUF [0x00] = ER64 /* \_SB_.PCI0.LPCB.EC0_.ER64 */
                    BUF [0x01] = ER65 /* \_SB_.PCI0.LPCB.EC0_.ER65 */
                    BUF [0x02] = ER66 /* \_SB_.PCI0.LPCB.EC0_.ER66 */
                    BUF [0x03] = ER67 /* \_SB_.PCI0.LPCB.EC0_.ER67 */
                }

                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC21.BUF_ */
            }

            Method (EC0F, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                BUF = "Panasonic"
                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC0F.BUF_ */
            }

            Method (EC22, 0, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                BUF = "Panasonic"
                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC22.BUF_ */
            }

            Method (EC10, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x32)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER32 /* \_SB_.PCI0.LPCB.EC0_.ER32 */
                    Local1 = ER33 /* \_SB_.PCI0.LPCB.EC0_.ER33 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC23, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x6A)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER6A /* \_SB_.PCI0.LPCB.EC0_.ER6A */
                    Local1 = ER6B /* \_SB_.PCI0.LPCB.EC0_.ER6B */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC11, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x34)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER34 /* \_SB_.PCI0.LPCB.EC0_.ER34 */
                    Local1 = ER35 /* \_SB_.PCI0.LPCB.EC0_.ER35 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If ((B1PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC24, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x6C)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER6C /* \_SB_.PCI0.LPCB.EC0_.ER6C */
                    Local1 = ER6D /* \_SB_.PCI0.LPCB.EC0_.ER6D */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If ((B2PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC12, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x38)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER38 /* \_SB_.PCI0.LPCB.EC0_.ER38 */
                    Local1 = ER39 /* \_SB_.PCI0.LPCB.EC0_.ER39 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (Local0 == 0xFFFF)
                {
                    Local0 = 0xFFFFFFFF
                }

                If ((B1PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC25, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x70)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER70 /* \_SB_.PCI0.LPCB.EC0_.ER70 */
                    Local1 = ER71 /* \_SB_.PCI0.LPCB.EC0_.ER71 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                If (Local0 == 0xFFFF)
                {
                    Local0 = 0xFFFFFFFF
                }

                If ((B2PU == Zero) && (Local0 != 0xFFFFFFFF))
                {
                    Local0 *= 0x0A
                }

                Return (Local0)
            }

            Method (EC13, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x36)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER36 /* \_SB_.PCI0.LPCB.EC0_.ER36 */
                    Local1 = ER37 /* \_SB_.PCI0.LPCB.EC0_.ER37 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC26, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x6E)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0xFFFFFFFF
                    }
                }
                Else
                {
                    Local0 = ER6E /* \_SB_.PCI0.LPCB.EC0_.ER6E */
                    Local1 = ER6F /* \_SB_.PCI0.LPCB.EC0_.ER6F */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC14, 1, Serialized)
            {
                If (B1PU)
                {
                    Local0 = Arg0
                }
                Else
                {
                    Local0 = Divide (Arg0, 0x0A)
                }

                If (Local0 >= 0x00010000)
                {
                    Local0 = Zero
                }

                If (ECST == Zero)
                {
                    EC84 (0x3A, Local0)
                }
                Else
                {
                    ER3A = And (Local0, 0xFF)
                    ER3B = ShiftRight (Local0, 0x08)
                }
            }

            Method (EC27, 1, Serialized)
            {
                If (B2PU)
                {
                    Local0 = Arg0
                }
                Else
                {
                    Local0 = Divide (Arg0, 0x0A)
                }

                If (Local0 >= 0x00010000)
                {
                    Local0 = Zero
                }

                If (ECST == Zero)
                {
                    EC84 (0x72, Local0)
                }
                Else
                {
                    ER72 = And (Local0, 0xFF)
                    ER73 = ShiftRight (Local0, 0x08)
                }
            }

            Method (EC28, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x3E)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x00
                    }
                }
                Else
                {
                    Local0 = ER3E /* \_SB_.PCI0.LPCB.EC0_.ER3E */
                    Local1 = ER3F /* \_SB_.PCI0.LPCB.EC0_.ER3F */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC29, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x76)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x00
                    }
                }
                Else
                {
                    Local0 = ER76 /* \_SB_.PCI0.LPCB.EC0_.ER76 */
                    Local1 = ER77 /* \_SB_.PCI0.LPCB.EC0_.ER77 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC34, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x80)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x0BD6
                    }
                }
                Else
                {
                    Local0 = ER80 /* \_SB_.PCI0.LPCB.EC0_.ER80 */
                    Local1 = ER81 /* \_SB_.PCI0.LPCB.EC0_.ER81 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC35, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x82)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x0E92
                    }
                }
                Else
                {
                    Local0 = ER82 /* \_SB_.PCI0.LPCB.EC0_.ER82 */
                    Local1 = ER83 /* \_SB_.PCI0.LPCB.EC0_.ER83 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC49, 1, Serialized)
            {
                Local0 = Arg0
                If (ECST == Zero)
                {
                    EC84 (0x82, Local0)
                }
                Else
                {
                    ER82 = And (Local0, 0xFF)
                    ER83 = ShiftRight (Local0, 0x08)
                }
            }

            Method (EC36, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x84)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x1086
                    }
                }
                Else
                {
                    Local0 = ER84 /* \_SB_.PCI0.LPCB.EC0_.ER84 */
                    Local1 = ER85 /* \_SB_.PCI0.LPCB.EC0_.ER85 */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC3B, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC82 (0x8E)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x127A
                    }
                }
                Else
                {
                    Local0 = ER8E /* \_SB_.PCI0.LPCB.EC0_.ER8E */
                    Local1 = ER8F /* \_SB_.PCI0.LPCB.EC0_.ER8F */
                    Local1 <<= 0x08
                    Local0 += Local1
                }

                Return (Local0)
            }

            Method (EC3D, 1, Serialized)
            {
                If (Arg0 == 0x01)
                {
                    Local0 = 0x01
                }
                Else
                {
                    Local0 = Zero
                }

                If (ECST == Zero)
                {
                    EC85 (0xB8, 0x02, 0x02)
                    EC85 (0xB8, 0x01, Local0)
                }
                Else
                {
                    ERB8 |= 0x02
                    ERB8 = ((ERB8 & ~0x01) | Local0)
                }
            }

            Method (EC3E, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0x09)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ER09 /* \_SB_.PCI0.LPCB.EC0_.ER09 */
                }

                Local0 = And (Local0, 0xE0)
                Return ((Local0 >> 0x05))
            }

            Method (EC3F, 0, NotSerialized)
            {
                Return (One)
            }

            Method (EC41, 1, Serialized)
            {
                If (Arg0 == 0x01)
                {
                    Local0 = 0x90
                }
                ElseIf (Arg0 == 0x00)
                {
                    Local0 = 0x80
                }

                If (ECST == Zero)
                {
                    EC83 (0xC1, Local0)
                }
                Else
                {
                    ERC1 = Local0
                }
            }

            Method (EC43, 1, Serialized)
            {
                If (Arg0 == 0x01)
                {
                    Local0 = 0x90
                }
                ElseIf (Arg0 == 0x00)
                {
                    Local0 = 0x9F
                }

                If (ECST == Zero)
                {
                    EC83 (0xC9, Local0)
                }
                Else
                {
                    ERC9 = Local0
                }
            }

            Method (C1F0, 2, Serialized)
            {
                If (ECST == Zero) {}
                Else
                {
                    Local0 = And (Arg0, 0xFF)
                    If (Arg1 == 0x00)
                    {
                        ERA0 = And (ERA0, ~Local0)
                    }
                    ElseIf (Arg1 == 0x01)
                    {
                        ERA0 = Or (ERA0, Local0)
                    }
                    ElseIf (Arg1 == 0x02)
                    {
                        ERA0 = Local0
                    }

                    Local0 = ShiftRight (Arg0, 0x08)
                    If (Arg1 == 0x00)
                    {
                        ERA1 = And (ERA1, ~Local0)
                    }
                    ElseIf (Arg1 == 0x01)
                    {
                        ERA1 = Or (ERA1, Local0)
                    }
                    ElseIf (Arg1 == 0x02)
                    {
                        ERA1 = Local0
                    }
                }
            }

            Method (G3F0, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xA3)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x01
                    }
                }
                Else
                {
                    Local0 = ERA3 /* \_SB_.PCI0.LPCB.EC0_.ERA3 */
                }

                If (Local0 & 0x01)
                {
                    Local1 = 0x01
                }
                Else
                {
                    Local1 = 0x00
                }

                Return (Local1)
            }

            Method (C4F0, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC85 (0xA4, 0x01, Arg0)
                }
                ElseIf (Arg0 == 0x01)
                {
                    ERA4 |= 0x01
                }
                Else
                {
                    ERA4 &= ~0x01
                }
            }

            Method (C5F0, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC85 (0xA5, 0x01, Arg0)
                }
                ElseIf (Arg0 == 0x01)
                {
                    ERA5 |= 0x01
                }
                Else
                {
                    ERA5 &= ~0x01
                }
            }

            Method (G6F0, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xA6)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Ones
                    }
                }
                Else
                {
                    Local0 = ERA6 /* \_SB_.PCI0.LPCB.EC0_.ERA6 */
                }

                Local1 = Zero
                If (Local0 & 0x01)
                {
                    Local1 = 0x01
                }

                Return (Local1)
            }

            Method (G6F1, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xA6)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ERA6 /* \_SB_.PCI0.LPCB.EC0_.ERA6 */
                }

                If (Local0 & 0x02)
                {
                    Local0 = 0x00
                }
                Else
                {
                    Local0 = 0x01
                }

                Return (Local0)
            }

            Method (G6F3, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xA6)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x04
                    }
                }
                Else
                {
                    Local0 = ERA6 /* \_SB_.PCI0.LPCB.EC0_.ERA6 */
                }

                If (Local0 & 0x04)
                {
                    Local0 = 0x01
                }
                Else
                {
                    Local0 = 0x00
                }

                Return (Local0)
            }

            Method (G6F6, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xA6)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ERA6 /* \_SB_.PCI0.LPCB.EC0_.ERA6 */
                }

                If (Local0 & 0x40)
                {
                    Local0 = 0x01
                }
                Else
                {
                    Local0 = 0x00
                }

                Return (Local0)
            }

            Method (G6F7, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xA6)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ERA6 /* \_SB_.PCI0.LPCB.EC0_.ERA6 */
                }

                If (Local0 & 0x40)
                {
                    Local0 = 0x01
                }
                Else
                {
                    Local0 = 0x00
                }

                Return (Local0)
            }

            Method (C6F7, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC85 (0xA6, 0x80, Arg0)
                }
                ElseIf (Arg0 == 0x01)
                {
                    ERA6 |= 0x80
                }
                Else
                {
                    ERA6 &= ~0x80
                }
            }

            Method (C7F3, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC85 (0xA7, 0x08, Arg0)
                }
                ElseIf (Arg0 == 0x01)
                {
                    ERA7 |= 0x08
                }
                Else
                {
                    ERA7 &= ~0x08
                }
            }

            Method (GAF0, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xAA)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x01
                    }
                }
                Else
                {
                    Local0 = ERAA /* \_SB_.PCI0.LPCB.EC0_.ERAA */
                }

                If (Local0 & 0x01)
                {
                    Local0 = 0x00
                }
                Else
                {
                    Local0 = 0x01
                }

                Return (Local0)
            }

            Method (GAF1, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xAA)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ERAA /* \_SB_.PCI0.LPCB.EC0_.ERAA */
                }

                Return (((Local0 & 0x02) >> 0x01))
            }

            Method (GAF3, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xAA)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ERAA /* \_SB_.PCI0.LPCB.EC0_.ERAA */
                }

                Return (((Local0 & 0x0C) >> 0x02))
            }

            Method (CAF3, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xAA)
                    If (Local0 != 0xFFFFFFFF)
                    {
                        Local0 = ((Local0 & ~0x0C) | (Arg0 << 0x02))
                        EC83 (0xAA, Local0)
                    }
                }
                Else
                {
                    ERAA = ((ERAA & ~0x0C) | (Arg0 << 0x02))
                }
            }

            Method (GAF5, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xAA)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x01
                    }
                }
                Else
                {
                    Local0 = ERAA /* \_SB_.PCI0.LPCB.EC0_.ERAA */
                }

                Return (((Local0 & 0x10) >> 0x04))
            }

            Method (CAF5, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC85 (0xAA, 0x10, Arg0)
                }
                Else
                {
                    ERAA = ((ERAA & ~0x10) | (Arg0 << 0x04))
                }
            }

            Method (GAF6, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xAA)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = Zero
                    }
                }
                Else
                {
                    Local0 = ERAA /* \_SB_.PCI0.LPCB.EC0_.ERAA */
                }

                Return (((Local0 & 0x40) >> 0x06))
            }

            Method (CDF0, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC85 (0xAD, 0x01, Arg0)
                }
                ElseIf (Arg0 == 0x01)
                {
                    ERAD |= 0x01
                }
                Else
                {
                    ERAD &= ~0x01
                }
            }

            Method (CDF1, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC85 (0xAD, 0x02, Arg0)
                }
                ElseIf (Arg0 == 0x01)
                {
                    ERAD |= 0x02
                }
                Else
                {
                    ERAD &= ~0x02
                }
            }

            Method (CFF0, 1, Serialized)
            {
                If (ECST == Zero)
                {
                    EC83 (0xAF, Arg0)
                }
                Else
                {
                    ERAF = Arg0
                }
            }

            Method (CGF0, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xB0)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x01
                    }
                }
                Else
                {
                    Local0 = ERB0 /* \_SB_.PCI0.LPCB.EC0_.ERB0 */
                }

                Return ((Local0 & 0x01))
            }

            Method (CGF1, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xB0)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x02
                    }
                }
                Else
                {
                    Local0 = ERB0 /* \_SB_.PCI0.LPCB.EC0_.ERB0 */
                }

                Return (((Local0 & 0x02) >> 0x01))
            }

            Method (GHF0, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xB1)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x01
                    }
                }
                Else
                {
                    Local0 = ERB1 /* \_SB_.PCI0.LPCB.EC0_.ERB1 */
                }

                Return ((Local0 & 0x01))
            }

            Method (GJF1, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xB4)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x02
                    }
                }
                Else
                {
                    Local0 = ERB4 /* \_SB_.PCI0.LPCB.EC0_.ERB4 */
                }

                Return (((Local0 & 0x02) >> 0x01))
            }

            Method (GJF2, 0, Serialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC81 (0xB4)
                    If (Local0 == 0xFFFFFFFF)
                    {
                        Local0 = 0x04
                    }
                }
                Else
                {
                    Local0 = ERB4 /* \_SB_.PCI0.LPCB.EC0_.ERB4 */
                }

                Return (((Local0 & 0x04) >> 0x02))
            }

            Method (GKF0, 0, Serialized)
            {
                EC88 (0x8C, Zero, Zero, Zero)
            }

            Method (GLF0, 1, Serialized)
            {
                If (CondRefOf (\_OSI, Local7))
                {
                    If (\_OSI ("Windows 2009") && !FDSS)
                    {
                        Local0 = Arg0
                        If (Local0 & 0x01)
                        {
                            If (Local0 & 0x02)
                            {
                                EC88 (0xC0, 0x57, 0x01, Zero)
                            }
                            Else
                            {
                                EC88 (0xC0, 0x57, 0x00, Zero)
                            }
                        }
                        Else
                        {
                            EC88 (0xC0, 0x57, 0x00, Zero)
                        }
                    }
                }
            }

            Method (EC44, 3, Serialized)
            {
                Local0 = EC88 (0xB5, Arg0, (Arg1 & 0xFF), ((Arg1 >> 
                    0x08) & 0xFF))
                Local2 = 0x00
                If (Arg0 == 0x62)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x63)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x64)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x65)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x67)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x68)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x69)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x71)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x72)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x9E)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x9F)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0xA2)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0xA3)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0xA6)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0xA7)
                {
                    Local2 = 0x01
                }

                If (Arg0 == 0x6F)
                {
                    Local2 = 0x02
                }

                If (Arg0 == 0x77)
                {
                    Local2 = 0x02
                }

                If (Arg0 == 0x79)
                {
                    Local2 = 0x02
                }

                If (Local2 == 0x01)
                {
                    Local3 = 0x00
                    While (((Arg1 & 0xFF) != ((Local0 >> 0x08
                        ) & 0xFF)) || (((Arg1 >> 0x08) & 0xFF) != (
                        (Local0 >> 0x10) & 0xFF)))
                    {
                        Local0 = EC88 (0xB5, Arg0, (Arg1 & 0xFF), ((Arg1 >> 
                            0x08) & 0xFF))
                        Local3++
                        If (Local3 == 0x64)
                        {
                            Break
                        }
                    }
                }

                If (Local2 == 0x02)
                {
                    Local3 = 0x00
                    While ((Arg1 & 0xFF) != ((Local0 >> 0x08) & 
                        0xFF))
                    {
                        Local0 = EC88 (0xB5, Arg0, (Arg1 & 0xFF), ((Arg1 >> 
                            0x08) & 0xFF))
                        Local3++
                        If (Local3 == 0x64)
                        {
                            Break
                        }
                    }
                }

                If (Local0 == 0xFFFFFFFF) {}
                ElseIf (Arg2 == 0x00)
                {
                    Local0 = ((Local0 >> 0x08) & 0xFFFF)
                }
                Else
                {
                    Local0 = ((Local0 >> 0x10) & 0xFFFF)
                }

                Return (Local0)
            }

            Method (C6F9, 1, Serialized)
            {
                EC88 (0xC0, 0x85, Arg0, Zero)
                Return (0x00)
            }

            Method (EC47, 3, Serialized)
            {
                Return (EC88 (0xB5, Arg0, Arg1, Arg2))
            }

            Method (EC45, 2, Serialized)
            {
                Local0 = ((Arg1 & 0xFF) >> 0x00)
                Local1 = ((Arg1 & 0xFF00) >> 0x08)
                Local2 = EC88 (0xEE, Arg0, Local0, Local1)
                If (Arg0 == 0x05)
                {
                    Sleep (0x3C)
                }

                Return (Local2)
            }

            Method (EC48, 0, Serialized)
            {
                EC88 (0xB5, 0xCA, \PPL1, \PTAU)
                EC88 (0xB5, 0xCB, \PPL2, 0x00)
                Return (0x00)
            }

            Method (EC4A, 2, Serialized)
            {
                EC88 (0xB5, 0xC9, Arg0, Arg1)
                Return (0x00)
            }

            Method (EC88, 4, NotSerialized)
            {
                If (ECST == Zero)
                {
                    Local0 = EC86 (Arg0, Arg1, Arg2, Arg3)
                }
                Else
                {
                    Local0 = EC87 (Arg0, Arg1, Arg2, Arg3)
                }

                Return (Local0)
            }

            Method (EC87, 4, Serialized)
            {
                ER05 = Arg1
                ER06 = Arg2
                ER07 = Arg3
                ER04 = Arg0
                Local1 = 0x0FA0
                Local2 = ER04 /* \_SB_.PCI0.LPCB.EC0_.ER04 */
                While ((Local1 != 0x00) && ((Local2 != 0x00) && 
                    (Local2 != 0xFF)))
                {
                    Stall (0x19)
                    Local2 = ER04 /* \_SB_.PCI0.LPCB.EC0_.ER04 */
                    Local1--
                }

                Local0 = 0x00
                If (Local2 == 0xFF)
                {
                    Local0 = 0xFFFFFFFF
                }
                Else
                {
                    Local0 = ER07 /* \_SB_.PCI0.LPCB.EC0_.ER07 */
                    Local0 = ((Local0 << 0x08) + ER06) /* \_SB_.PCI0.LPCB.EC0_.ER06 */
                    Local0 = ((Local0 << 0x08) + ER05) /* \_SB_.PCI0.LPCB.EC0_.ER05 */
                    Local0 = ((Local0 << 0x08) + Local2)
                }

                Return (Local0)
            }

            Method (EC81, 1, Serialized)
            {
                Local0 = 0xFFFFFFFF
                Local1 = 0x00
                While ((Local0 == 0xFFFFFFFF) && (Local1 < 0x0A))
                {
                    Local0 = \_SB.ASRV (0x11, 0x00, Arg0)
                    Local1++
                }

                Return (Local0)
            }

            Method (EC82, 1, Serialized)
            {
                Local0 = 0xFFFFFFFF
                Local1 = 0x00
                While ((Local0 == 0xFFFFFFFF) && (Local1 < 0x0A))
                {
                    Local0 = \_SB.ASRV (0x11, 0x01, Arg0)
                    Local1++
                }

                Return (Local0)
            }

            Method (EC83, 2, Serialized)
            {
                Local1 = (Arg0 + (Arg1 << 0x10))
                Local0 = 0xFFFFFFFF
                Local2 = 0x00
                While ((Local0 == 0xFFFFFFFF) && (Local2 < 0x0A))
                {
                    Local0 = \_SB.ASRV (0x11, 0x10, Local1)
                    Local2++
                }

                Return (Local0)
            }

            Method (EC84, 2, Serialized)
            {
                Local1 = (Arg0 + (Arg1 << 0x10))
                Local0 = 0xFFFFFFFF
                Local2 = 0x00
                While ((Local0 == 0xFFFFFFFF) && (Local2 < 0x0A))
                {
                    Local0 = \_SB.ASRV (0x11, 0x11, Local1)
                    Local2++
                }

                Return (Local0)
            }

            Method (EC85, 3, Serialized)
            {
                Local1 = Arg0
                Local1 += (Arg1 << 0x10)
                If (Arg2 == Zero)
                {
                    Local2 = Zero
                }
                Else
                {
                    Local2 = One
                }

                Local1 += (Local2 << 0x18)
                Local0 = 0xFFFFFFFF
                Local3 = 0x00
                While ((Local0 == 0xFFFFFFFF) && (Local3 < 0x0A))
                {
                    Local0 = \_SB.ASRV (0x11, 0x20, Local1)
                    Local3++
                }

                Return (Local0)
            }

            Method (EC86, 4, Serialized)
            {
                Local1 = (Arg0 + (Arg1 << 0x08))
                Local1 += (Arg2 << 0x10)
                Local1 += (Arg3 << 0x18)
                Local0 = 0xFFFFFFFF
                Local2 = 0x00
                While ((Local0 == 0xFFFFFFFF) && (Local2 < 0x64))
                {
                    Local0 = \_SB.ASRV (0x11, 0x30, Local1)
                    Local2++
                }

                Return (Local0)
            }

            Method (EC80, 2, Serialized)
            {
                Name (BUF, Buffer (0x10) {})
                BUF = 0x00
                If ((Arg1 < 0x01) || (Arg1 > 0x10))
                {
                    Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC80.BUF_ */
                }

                Local0 = Arg0
                Local1 = 0x00
                While (Local1 < Arg1)
                {
                    Divide (Local0, 0x0A, Local2, Local0)
                    Local3 = (Arg1 - Local1)
                    Local3--
                    BUF [Local3] = (Local2 + 0x30)
                    Local1++
                }

                Return (BUF) /* \_SB_.PCI0.LPCB.EC0_.EC80.BUF_ */
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (GCBL, 1, Serialized)
        {
            Local2 = Arg0
            Local0 = \_SB.PCI0.LPCB.EC0.EC45 (0x04, Zero)
            If (((Local0 & 0xFF000000) == Zero) && ((Local0 & 0xFF
                ) == Zero))
            {
                If ((Local0 & 0x0100) && (\CLST == 0x02))
                {
                    Local2 = 0x01
                }
            }

            Return (Local2)
        }

        Method (IBLC, 0, Serialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC0.EC45 (0x04, Zero)
            If (((Local0 & 0xFF000000) == Zero) && ((Local0 & 0xFF
                ) == Zero))
            {
                If (Local0 & 0x0100)
                {
                    If (\CLST == 0x02)
                    {
                        Return (0x02)
                    }

                    If (Local0 & 0x0200)
                    {
                        Return (0x01)
                    }
                }
            }

            Return (0x00)
        }

        Method (TGCM, 0, Serialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC0.EC45 (0x04, Zero)
            If (((Local0 & 0xFF000000) != Zero) || ((
                Local0 & 0xFF) != Zero))
            {
                Return (Zero)
            }

            If (!(Local0 & 0x8000))
            {
                Return (Zero)
            }

            Local1 = ((Local0 & 0x00FFFF00) >> 0x08)
            Local2 = \_SB.PCI0.LPCB.EC0.EC45 (0x05, (Local1 ^ 0x01))
            If (((Local2 & 0xFF000000) != Zero) || ((
                Local2 & 0xFF) != Zero))
            {
                Return (Zero)
            }

            If (Local0 & 0x0100)
            {
                If (\CLST == 0x02)
                {
                    If (CondRefOf (\_OSI, Local6))
                    {
                        If (\_OSI ("Windows 2006"))
                        {
                            Local1 = \CUBL
                        }
                        ElseIf (\_SB.PCI0.LPCB.EC0.EC01 ())
                        {
                            Local1 = DerefOf (\_SB.HKEY.SIFR [0x04])
                        }
                        Else
                        {
                            Local1 = DerefOf (\_SB.HKEY.SIFR [0x07])
                        }

                        If (APEG) {}
                        Else
                        {
                            \_SB.PCI0.GFX0.AINT (0x01, DerefOf (\BLTB [Local1]))
                            \_SB.HKEY.BSET (Local1)
                        }
                    }
                }

                If (Local0 & 0x0800)
                {
                    If (\_SB.PCI0.LPCB.EC0.G6F0 ())
                    {
                        \_SB.PCI0.LPCB.EC0.TRDF ()
                    }
                }
            }
            Else
            {
                If (\CLST == 0x02)
                {
                    If (APEG) {}
                    Else
                    {
                        \_SB.PCI0.GFX0.AINT (0x01, DerefOf (\BLTB [0x01]))
                        \_SB.HKEY.BSET (0x01)
                    }
                }

                If (Local0 & 0x0800)
                {
                    If (\_SB.PCI0.LPCB.EC0.G6F0 ())
                    {
                        \_SB.PCI0.LPCB.EC0.TRDF ()
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (\_SB)
    {
        Device (HKEY)
        {
            Name (_HID, EisaId ("MAT0019"))  // _HID: Hardware ID
            Name (SIFR, Package (0x1A)
            {
                0x01, 
                0x00, 
                0x15, 
                0x01, 
                0xFF, 
                0x15, 
                0x01, 
                0x7F, 
                0x00, 
                0x01, 
                0x00, 
                0x00, 
                0x03, 
                0xFF, 
                0x00, 
                0x00, 
                0x00, 
                0x00, 
                0x00, 
                Ones, 
                Ones, 
                0x00, 
                0x00, 
                0x00, 
                0x80, 
                0x00
            })
            Mutex (HDMX, 0x00)
            Name (HDAT, Buffer (0x20) {})
            Name (HINP, Zero)
            Name (HOUP, Zero)
            Name (HBLF, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                HRES ()
            }

            Method (HBLR, 0, Serialized)
            {
                If (HBLF == Zero)
                {
                    Local0 = \_SB.ASRV (0x01, 0x01, Zero)
                    SIFR [0x07] = And ((Local0 >> 0x08), 0xFF)
                    SIFR [0x04] = And (Local0, 0xFF)
                    HBLF = One
                }
            }

            Method (HRES, 0, Serialized)
            {
                Acquire (HDMX, 0xFFFF)
                HBLR ()
                SIFR [0x08] = \_SB.ASRV (0x04, 0x01, Zero)
                Local0 = \_SB.PCI0.LPCB.EC0.EC3E ()
                If (Local0 == 0x02)
                {
                    Local0 = 0x80
                }
                ElseIf (Local0 & 0x01)
                {
                    Local0 = 0x80
                }
                Else
                {
                    Local0 = 0x00
                }

                SIFR [0x0A] = (Local0 | 0x01)
                SIFR [0x0F] = 0x00
                SIFR [0x10] = 0x00
                If (\_SB.PCI0.LPCB.EC0.GAF0 () == 0x00)
                {
                    SIFR [0x0E] = 0x00
                }
                Else
                {
                    SIFR [0x0E] = 0x01
                }

                If (\_SB.PCI0.LPCB.EC0.EC3F ())
                {
                    SIFR [0x12] = (DerefOf (SIFR [0x12]) | 0x02)
                }

                If (CondRefOf (\_OSI, Local6))
                {
                    If (\_OSI ("Windows 2006"))
                    {
                        SIFR [0x12] = (DerefOf (SIFR [0x12]) | 0x01)
                    }
                }

                Release (HDMX)
            }

            Method (HSAV, 0, Serialized)
            {
                Acquire (HDMX, 0xFFFF)
                If (HBLF == One)
                {
                    Local0 = DerefOf (SIFR [0x04])
                    Local0 += (DerefOf (SIFR [0x07]) << 0x08)
                    \_SB.ASRV (0x01, 0x02, Local0)
                }

                HBLF = Zero
                Local0 = And (DerefOf (SIFR [0x08]), 0x01)
                \_SB.ASRV (0x04, 0x02, Local0)
                Release (HDMX)
            }

            Method (HRST, 0, Serialized)
            {
                If (CondRefOf (\_OSI, Local7))
                {
                    If (\_OSI ("Windows 2009"))
                    {
                        Acquire (HDMX, 0xFFFF)
                        If (FDSS)
                        {
                            SIFR [0x18] = 0x00
                        }
                        Else
                        {
                            SIFR [0x18] = 0x80
                        }

                        Release (HDMX)
                    }
                }
            }

            Method (HIND, 1, Serialized)
            {
                Acquire (HDMX, 0xFFFF)
                HDAT [HINP] = Arg0
                HINP++
                Divide (HINP, 0x20, HINP)
                If (HINP == HOUP)
                {
                    HOUP++
                    Divide (HOUP, 0x20, HOUP)
                }

                Release (HDMX)
            }

            Method (HINF, 0, Serialized)
            {
                Acquire (HDMX, 0xFFFF)
                If (HINP == HOUP)
                {
                    Local0 = Zero
                }
                Else
                {
                    Local0 = DerefOf (HDAT [HOUP])
                    HOUP++
                    Divide (HOUP, 0x20, HOUP)
                }

                Local1 = (HINP != HOUP)
                Release (HDMX)
                If (Local1)
                {
                    Notify (\_SB.HKEY, 0x80) // Status Change
                }

                Return (Local0)
            }

            Method (SQTY, 0, NotSerialized)
            {
                Return (0x1A)
            }

            Method (SINF, 0, NotSerialized)
            {
                Local0 = \_SB.PCI0.LPCB.EC0.EC3E ()
                If (Local0 == 0x02)
                {
                    Local0 = 0x80
                }
                ElseIf (Local0 & 0x01)
                {
                    Local0 = 0x80
                }
                Else
                {
                    Local0 = 0x00
                }

                SIFR [0x0A] = (Local0 | 0x01)
                Local0 = \_SB.PCI0.LPCB.EC0.G6F0 ()
                If (Local0 & 0x01)
                {
                    Local1 = 0xC0
                }
                Else
                {
                    Local1 = 0x80
                }

                SIFR [0x0B] = Local1
                SIFR [0x0F] = 0x00
                SIFR [0x10] = 0x00
                If (\_SB.PCI0.LPCB.EC0.GAF0 () == 0x00)
                {
                    SIFR [0x0E] = 0x00
                }
                Else
                {
                    SIFR [0x0E] = 0x01
                }

                HBLR ()
                If (CondRefOf (\_OSI, Local6))
                {
                    If (\_OSI ("Windows 2006"))
                    {
                        SIFR [0x13] = \CUBL
                    }
                }

                Return (SIFR) /* \_SB_.HKEY.SIFR */
            }

            Method (SSET, 2, Serialized)
            {
                If ((Arg0 == 0x04) || (Arg0 == 0x07))
                {
                    HBLR ()
                    SIFR [Arg0] = Arg1
                    If (APEG) {}
                    ElseIf (CondRefOf (\_OSI, Local6))
                    {
                        If (!\_OSI ("Windows 2006"))
                        {
                            Local2 = Arg1
                            Local0 = \_SB.PCI0.LPCB.EC0.IBLC ()
                            If (Local0 == 0x02)
                            {
                                Local2 = 0x01
                            }

                            \_SB.PCI0.GFX0.AINT (0x01, DerefOf (\BLTB [Local2]))
                            BSET (Local2)
                        }
                    }
                    Else
                    {
                        \_SB.PCI0.GFX0.AINT (0x01, DerefOf (\BLTB [Arg1]))
                        BSET (Arg1)
                    }
                }

                If (Arg0 == 0x08)
                {
                    SIFR [Arg0] = Arg1
                    \_SB.PCI0.LPCB.EC0.CDF0 (Arg1)
                }

                If (Arg0 == 0x80)
                {
                    \_SB.PCI0.LPCB.EC0.EC3D (Arg1)
                }

                If (Arg0 == 0x0D)
                {
                    SIFR [Arg0] = Arg1
                    \_SB.PCI0.LPCB.EC0.CFF0 (Arg1)
                }

                If (Arg0 == 0x18)
                {
                    If (CondRefOf (\_OSI, Local7))
                    {
                        If (\_OSI ("Windows 2009") && !FDSS)
                        {
                            Local0 = DerefOf (SIFR [Arg0])
                            Local0 &= 0x80
                            Local1 = (Arg1 & ~0x80)
                            Local0 |= Local1
                            SIFR [Arg0] = Local0
                            \_SB.PCI0.LPCB.EC0.GLF0 (Arg1)
                        }
                    }
                }

                \_SB.RFDS ()
            }

            Method (BSET, 1, NotSerialized)
            {
                \_SB.PCI0.LPCB.EC0.CFF0 (DerefOf (\BLTB [Arg0]))
                \_SB.ASRV (0x01, 0x03, DerefOf (\BLTB [Arg0]))
            }

            Method (CRHN, 0, NotSerialized)
            {
                \_SB.PCI0.LPCB.EC0.HKNF (0x52)
            }
        }
    }

    Scope (\)
    {
        Name (CUBL, Ones)
        Name (BLTB, Buffer (0x16) {})
    }

    Scope (\_SB.PCI0)
    {
        Method (INIG, 0, Serialized)
        {
            \BLTB = BLLT /* \BLLT */
            If (CondRefOf (\_OSI, Local6))
            {
                If (\_OSI ("Windows 2006"))
                {
                    Local0 = \_SB.ASRV (0x01, 0x01, Zero)
                    If (PWRS)
                    {
                        Local0 &= 0xFF
                    }
                    Else
                    {
                        Local0 = ((Local0 >> 0x08) & 0xFF)
                    }

                    \CUBL = Local0
                }
            }
        }

        Method (BLOF, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }
    }

    If (CondRefOf (\_OSI))
    {
        If (\_OSI ("Windows 2006"))
        {
            Scope (\_SB.PCI0.GFX0.DD02)
            {
                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Name (BCLD, Package (0x17)
                    {
                        0x64, 
                        0x00, 
                        0x00, 
                        0x05, 
                        0x0A, 
                        0x0F, 
                        0x14, 
                        0x19, 
                        0x1E, 
                        0x23, 
                        0x28, 
                        0x2D, 
                        0x32, 
                        0x37, 
                        0x3C, 
                        0x41, 
                        0x46, 
                        0x4B, 
                        0x50, 
                        0x55, 
                        0x5A, 
                        0x5F, 
                        0x64
                    })
                    Return (BCLD) /* \_SB_.PCI0.GFX0.DD02._BCL.BCLD */
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    Local0 = Arg0
                    Local0 = HBCM (Local0)
                    \CUBL = Local0
                    Local0 = \_SB.PCI0.LPCB.EC0.GCBL (Local0)
                    If (APEG) {}
                    Else
                    {
                        Local1 = 0x03
                        While (Local1)
                        {
                            If (!\_SB.PCI0.GFX0.AINT (0x01, DerefOf (\BLTB [Local0])))
                            {
                                Break
                            }

                            Local1--
                            Sleep (0x64)
                        }

                        \_SB.HKEY.BSET (Local0)
                    }

                    Notify (\_SB.HKEY, 0x81) // Information Change
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Local0 = \CUBL
                    Local0 = HBQC (Local0)
                    Return (Local0)
                }

                Method (HBCM, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If (Local0 == 0x00)
                    {
                        If (BLOF () == 0x00)
                        {
                            Local0 = 0x01
                        }
                    }
                    Else
                    {
                        Divide (Local0, 0x05, Local1, Local0)
                        Local0++
                    }

                    Return (Local0)
                }

                Method (HBQC, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If (Local0 == Zero)
                    {
                        Local0 = Zero
                    }
                    Else
                    {
                        Local0--
                        Local0 *= 0x05
                    }

                    Return (Local0)
                }
            }
        }
    }

    Scope (\_SB)
    {
        Name (ACST, Ones)
        Device (AC)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Return (\_SB.PCI0.LPCB.EC0.EC01 ())
            }

            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                \_SB
            })
        }

        Method (ADAC, 0, Serialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC0.EC01 ()
            PWRS = Local0
            If (Local0 != ACST)
            {
                If ((OSYS != 0x07D2) || !(CFGD & 0x01))
                {
                    PNOT ()
                }
            }

            \BNOT ()
        }

        Method (SVAC, 0, Serialized)
        {
            ACST = \_SB.PCI0.LPCB.EC0.EC01 ()
        }
    }

    Scope (\_SB)
    {
        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (B1ST, 0x1F)
            Method (_BIF, 0, Serialized)  // _BIF: Battery Information
            {
                Name (BIFR, Package (0x0D)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    Buffer (0x10) {}, 
                    Buffer (0x10) {}, 
                    Buffer (0x10) {}, 
                    Buffer (0x10) {}
                })
                BIFR [0x00] = \_SB.PCI0.LPCB.EC0.EC03 ()
                BIFR [0x01] = \_SB.PCI0.LPCB.EC0.EC04 ()
                BIFR [0x02] = \_SB.PCI0.LPCB.EC0.EC05 ()
                BIFR [0x03] = \_SB.PCI0.LPCB.EC0.EC06 ()
                BIFR [0x04] = \_SB.PCI0.LPCB.EC0.EC07 ()
                BIFR [0x05] = \_SB.PCI0.LPCB.EC0.EC08 ()
                BIFR [0x06] = \_SB.PCI0.LPCB.EC0.EC09 ()
                BIFR [0x07] = \_SB.PCI0.LPCB.EC0.EC0A ()
                BIFR [0x08] = \_SB.PCI0.LPCB.EC0.EC0B ()
                BIFR [0x09] = \_SB.PCI0.LPCB.EC0.EC0C ()
                BIFR [0x0A] = \_SB.PCI0.LPCB.EC0.EC0D ()
                BIFR [0x0B] = \_SB.PCI0.LPCB.EC0.EC0E ()
                BIFR [0x0C] = \_SB.PCI0.LPCB.EC0.EC0F ()
                Return (BIFR) /* \_SB_.BAT1._BIF.BIFR */
            }

            Method (_BST, 0, Serialized)  // _BST: Battery Status
            {
                Name (BSTR, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                BSTR [0x00] = \_SB.PCI0.LPCB.EC0.EC10 ()
                BSTR [0x01] = \_SB.PCI0.LPCB.EC0.EC11 ()
                BSTR [0x02] = \_SB.PCI0.LPCB.EC0.EC12 ()
                BSTR [0x03] = \_SB.PCI0.LPCB.EC0.EC13 ()
                Return (BSTR) /* \_SB_.BAT1._BST.BSTR */
            }

            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                \_SB
            })
            Method (B1EX, 0, Serialized)
            {
                If (\_SB.PCI0.LPCB.EC0.EC02 () == 0x01)
                {
                    B1ST = 0x1F
                }
                Else
                {
                    B1ST = 0x0F
                }
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (B1ST) /* \_SB_.BAT1.B1ST */
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                \_SB.PCI0.LPCB.EC0.EC14 (Arg0)
            }
        }
    }

    Scope (\)
    {
        Method (\BNOT, 0, Serialized)
        {
            Notify (\_SB.BAT1, 0x80) // Status Change
        }

        Method (\BEXT, 0, Serialized)
        {
            \_SB.BAT1.B1EX ()
        }
    }

    Scope (\_SB)
    {
        Mutex (ASMX, 0x00)
        Method (ASCF, 0, NotSerialized)
        {
            SSMP = 0xE1
            Local2 = ARBF /* \ARBF */
            Local1 = ARET /* \ARET */
            If (Local1 == 0x00)
            {
                Local0 = Zero
            }
            ElseIf (Local1 == 0x01)
            {
                CreateByteField (Local2, 0x00, ARBB)
                Local0 = ARBB /* \_SB_.ASCF.ARBB */
            }
            ElseIf (Local1 == 0x02)
            {
                CreateWordField (Local2, 0x00, ARBW)
                Local0 = ARBW /* \_SB_.ASCF.ARBW */
            }
            ElseIf (Local1 == 0x04)
            {
                CreateDWordField (Local2, 0x00, ARBD)
                Local0 = ARBD /* \_SB_.ASCF.ARBD */
            }
            ElseIf (Local1 == 0x08)
            {
                CreateQWordField (Local2, 0x00, ARBQ)
                Local0 = ARBQ /* \_SB_.ASCF.ARBQ */
            }
            Else
            {
                Local0 = Local2
            }

            Return (Local0)
        }

        Method (ASRV, 3, Serialized)
        {
            Acquire (ASMX, 0xFFFF)
            AFNN = Arg0
            AG_1 = Arg1
            AG_2 = Arg2
            Local0 = ASCF ()
            Release (ASMX)
            Return (Local0)
        }

        Method (ASRB, 3, Serialized)
        {
            Acquire (ASMX, 0xFFFF)
            AFNN = Arg0
            ARBF = Arg1
            AG_1 = SizeOf (Arg1)
            AG_2 = Arg2
            Local0 = ASCF ()
            Release (ASMX)
            Return (Local0)
        }
    }

    If (CondRefOf (\_OSI))
    {
        If (\_OSI ("Windows 2006"))
        {
            Scope (\_SB.PCI0.EHC1)
            {
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    UPSW = Arg0
                }
            }

            Scope (\_SB.PCI0.EHC2)
            {
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    UPSW = Arg0
                }
            }
        }
    }

    Name (\_SB.PCI0.GLAN._PRW, Package (0x02)  // _PRW: Power Resources for Wake
    {
        0x0D, 
        0x04
    })
    Scope (\_SB.PCI0.HDEF)
    {
        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
        {
            0x0D, 
            0x03
        })
        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
        {
            MPSW = Arg0
            HDMP ()
        }
    }

    Scope (\)
    {
        OperationRegion (CCRG, SystemMemory, \SRCB, 0x4000)
        Field (CCRG, DWordAcc, Lock, Preserve)
        {
            Offset (0x359C), 
            PDOX,   32
        }

        Method (SSDP, 1, NotSerialized)
        {
            Local0 = 0x00
            If (\_SB.PCI0.EHC1.UPSW)
            {
                Local1 = And (0x0A46, 0xFF)
                Local0 |= Local1
            }

            If (\_SB.PCI0.EHC2.UPSW)
            {
                Local1 = And (0x0A46, 0xFF00)
                Local0 |= Local1
            }

            Local0 &= ~PDOX
            \_SB.PCI0.LPCB.EC0.C1F0 (Local0, 0x02)
            \_SB.PCI0.HDEF.HDMP ()
        }
    }

    Scope (\_SB)
    {
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (\_SB.PCI0.LPCB.EC0.CGF0 ())
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x1B, 
                0x04
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                \_SB.PCI0.LPCB.EC0.EC41 (Arg0)
            }
        }
    }

    Scope (\_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB)
    {
        Device (TBTN)
        {
            Mutex (HDMX, 0x00)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If (GGPI (0x01, 0x01) == 0x01)
                {
                    If (\_SB.ASRV (0x07, 0x03, OSYS) == 0x00)
                    {
                        Return (0x1F003434)
                    }
                    Else
                    {
                        Return (0x20003434)
                    }
                }

                If (\_SB.PCI0.LPCB.EC0.GHF0 () == 0x00)
                {
                    Return (0x1F003434)
                }
                Else
                {
                    Return (0x20003434)
                }
            }

            Name (HINP, Zero)
            Name (HOUP, Zero)
            Name (HDAT, Buffer (0x20) {})
            Name (SIFR, Package (0x01)
            {
                0x00
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (SQTY, 0, NotSerialized)
            {
                Return (0x01)
            }

            Method (HIND, 1, Serialized)
            {
                Acquire (HDMX, 0xFFFF)
                HDAT [HINP] = Arg0
                HINP++
                Divide (HINP, 0x20, HINP)
                If (HINP == HOUP)
                {
                    HOUP++
                    Divide (HOUP, 0x20, HOUP)
                }

                Release (HDMX)
            }

            Method (HINF, 0, Serialized)
            {
                Acquire (HDMX, 0xFFFF)
                If (HINP == HOUP)
                {
                    Local0 = Zero
                }
                Else
                {
                    Local0 = DerefOf (HDAT [HOUP])
                    HDAT [HOUP] = Zero
                    HOUP++
                    Divide (HOUP, 0x20, HOUP)
                }

                Local1 = (HINP != HOUP)
                Release (HDMX)
                If (Local1)
                {
                    Notify (\_SB.TBTN, 0x80) // Status Change
                }

                Return (Local0)
            }

            Method (SINF, 0, Serialized)
            {
                Local0 = \_SB.PCI0.LPCB.EC0.GJF1 ()
                Local0 ^= 0x01
                SIFR [0x00] = Local0
                Return (SIFR) /* \_SB_.TBTN.SIFR */
            }
        }
    }

    If (CondRefOf (\_OSI))
    {
        If (\_OSI ("Windows 2009"))
        {
            Method (UPCP, 2, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (PACK, Package (0x04)
                {
                    0x00, 
                    0xFF, 
                    0x00, 
                    0x00
                })
                Local0 = CASP (Arg0, Arg1)
                While (One)
                {
                    _T_0 = Local0
                    If (_T_0 == 0x01)
                    {
                        PACK [0x00] = 0xFF
                        PACK [0x01] = 0x00
                    }
                    ElseIf (_T_0 == 0x02)
                    {
                        PACK [0x00] = 0xFF
                        PACK [0x01] = 0x02
                    }
                    ElseIf (_T_0 == 0x03)
                    {
                        PACK [0x00] = 0xFF
                        PACK [0x01] = 0xFF
                    }

                    Break
                }

                Return (PACK) /* \UPCP.PACK */
            }

            Method (PLDP, 2, Serialized)
            {
                Name (BUFF, Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* 0....... */
                })
                Local0 = CASP (Arg0, Arg1)
                If ((Local0 == 0x01) || (Local0 == 0x02))
                {
                    BUFF [0x08] = (DerefOf (BUFF [0x08]) | One)
                }

                Return (BUFF) /* \PLDP.BUFF */
            }

            Method (CASP, 2, Serialized)
            {
                Local0 = ((Arg0 >> (Arg1 * 0x02)) & 0x03)
                Return (Local0)
            }

            Scope (\_SB.PCI0.EHC1)
            {
                Device (RHUB)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        Device (PRT1)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x00))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x00))
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x01))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x01))
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x02))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x02))
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x03))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x03))
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x04))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x04))
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x05))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x05))
                            }
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x06))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x06))
                            }
                        }

                        Device (PRT8)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x07))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x07))
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                    }
                }
            }

            Scope (\_SB.PCI0.EHC2)
            {
                Device (RHUB)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                        Device (PRT1)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x08))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x08))
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x09))
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x0A))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x0A))
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x0B))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x0B))
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x0C))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x0C))
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCP (0x0F7F3E14, 0x0D))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDP (0x0F7F3E14, 0x0D))
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)
)  // _PLD: Physical Location of Device
                    }
                }
            }
        }
    }

    Scope (\_SB)
    {
        Name (FDSR, Zero)
        Method (CFSR, 0, Serialized)
        {
            \_SB.FDSR = 0x00
        }

        Method (IDSL, 0, Serialized)
        {
            Local0 = 0x00
            If (FDSS)
            {
                Local1 = Or (\_SB.PCI0.GFX0.NADL, \_SB.PCI0.GFX0.NDL2)
                Local2 = Or (\_SB.PCI0.GFX0.DIDL, \_SB.PCI0.GFX0.DDL2)
                If (Local1 != Local2)
                {
                    \_SB.PCI0.GFX0.NADL = \_SB.PCI0.GFX0.DIDL
                    \_SB.PCI0.GFX0.NDL2 = \_SB.PCI0.GFX0.DDL2
                }

                Local0 = 0x01
            }

            \_SB.PCI0.GFX0.GHDS (Local0)
        }

        Method (RFDS, 0, Serialized)
        {
            If (!FDSS)
            {
                Return (Zero)
            }

            If (\_SB.FDSR >= 0x03)
            {
                Return (Zero)
            }

            \_SB.FDSR++
            Local0 = 0x00
            While (Local0 < 0x03)
            {
                Local0++
                If (APEG) {}
                Else
                {
                    Local0 = \_SB.IRFD (Local0)
                }
            }

            Return (Zero)
        }

        Method (IRFD, 1, Serialized)
        {
            Local0 = Arg0
            If (\_SB.PCI0.GFX0.DRDY != 0x01)
            {
                Return (Local0)
            }

            Local1 = Or (\_SB.PCI0.GFX0.DIDL, \_SB.PCI0.GFX0.DDL2)
            Local2 = 0x00
            Local2 |= \_SB.PCI0.GFX0.CADL
            Local2 |= \_SB.PCI0.GFX0.CAL2
            Local2 |= \_SB.PCI0.GFX0.CAL3
            Local2 |= \_SB.PCI0.GFX0.CAL4
            Local2 |= \_SB.PCI0.GFX0.CAL5
            Local2 |= \_SB.PCI0.GFX0.CAL6
            Local2 |= \_SB.PCI0.GFX0.CAL7
            Local2 |= \_SB.PCI0.GFX0.CAL8
            Local3 = 0x00
            Local3 |= \_SB.PCI0.GFX0.NADL
            Local3 |= \_SB.PCI0.GFX0.NDL2
            Local3 |= \_SB.PCI0.GFX0.NDL3
            Local3 |= \_SB.PCI0.GFX0.NDL4
            Local3 |= \_SB.PCI0.GFX0.NDL5
            Local3 |= \_SB.PCI0.GFX0.NDL6
            Local3 |= \_SB.PCI0.GFX0.NDL7
            Local3 |= \_SB.PCI0.GFX0.NDL8
            If ((Local2 == 0x00) || (Local3 == 0x00))
            {
                Return (Local0)
            }

            If (Local1 == Local2)
            {
                \_SB.FDSR = 0x03
                Local0 = 0x03
                Return (Local0)
            }

            If (FDSR == 0x01)
            {
                \_SB.IDSL ()
                Sleep (0x64)
                Local0 = 0x03
            }
            Else
            {
                Local3 = 0x00
                Local3 |= \_SB.PCI0.GFX0.CPDL
                Local3 |= \_SB.PCI0.GFX0.CPL2
                Local3 |= \_SB.PCI0.GFX0.CPL3
                Local3 |= \_SB.PCI0.GFX0.CPL4
                Local3 |= \_SB.PCI0.GFX0.CPL5
                Local3 |= \_SB.PCI0.GFX0.CPL6
                Local3 |= \_SB.PCI0.GFX0.CPL7
                Local3 |= \_SB.PCI0.GFX0.CPL8
                If ((Local3 & Local1) == Local1)
                {
                    \_SB.IDSL ()
                    Sleep (0x64)
                    Local0 = 0x03
                }
            }

            Return (Local0)
        }
    }

    Device (\_SB.PCI0.LPCB.TPM)
    {
        Name (_HID, EisaId ("IFX0102"))  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_UID, 0x01)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IO (Decode16,
                0x004E,             // Range Minimum
                0x004E,             // Range Maximum
                0x01,               // Alignment
                0x02,               // Length
                )
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            ACCS,   8, 
            Offset (0x18), 
            TSTA,   8, 
            TBCA,   8, 
            Offset (0xF00), 
            TVID,   16, 
            TDID,   16
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (TPMF)
            {
                Return (0x0F)
            }

            Return (0x00)
        }
    }

    Device (\_SB.PCI0.LPCB.TPMD)
    {
        Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
        Name (_UID, 0x0101)  // _UID: Unique ID
        Name (RSVD, ResourceTemplate ()
        {
            IO (Decode16,
                0x004E,             // Range Minimum
                0x004E,             // Range Maximum
                0x01,               // Alignment
                0x02,               // Length
                )
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            Return (RSVD) /* \_SB_.PCI0.LPCB.TPMD.RSVD */
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (TPMF)
            {
                Return (0x00)
            }

            Return (0x0F)
        }
    }

    Scope (\_SB.PCI0.LPCB.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */)
            {
                While (One)
                {
                    _T_0 = ToInteger (Arg2)
                    If (_T_0 == 0x00)
                    {
                        Return (Buffer (0x01)
                        {
                             0x7F                                             /* . */
                        })
                    }
                    ElseIf (_T_0 == 0x01)
                    {
                        Return ("1.0")
                    }
                    ElseIf (_T_0 == 0x02)
                    {
                        ToInteger (DerefOf (Arg3 [0x00]), TMF2) /* \TMF2 */
                        TMF1 = 0x12
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        DAT = TMF2 /* \TMF2 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        Return (Zero)
                    }
                    ElseIf (_T_0 == 0x03)
                    {
                        Name (PPI1, Package (0x02)
                        {
                            0x00, 
                            0x00
                        })
                        DAT = 0x11
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x01)
                        }

                        PPI1 [0x01] = DAT /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                        Return (PPI1) /* \_SB_.PCI0.LPCB.TPM_._DSM.PPI1 */
                    }
                    ElseIf (_T_0 == 0x04)
                    {
                        Return (One)
                    }
                    ElseIf (_T_0 == 0x05)
                    {
                        Name (PPI2, Package (0x03)
                        {
                            0x00, 
                            0x00, 
                            0x00
                        })
                        DAT = 0x21
                        INQ = OFST /* \OFST */
                        PPI2 [0x01] = DAT /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        PPI2 [0x01] = DAT /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                        DAT = 0x31
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        If (DAT == 0xFFF0)
                        {
                            PPI2 [0x02] = 0xFFFFFFF0
                        }
                        ElseIf (DAT == 0xFFF1)
                        {
                            PPI2 [0x02] = 0xFFFFFFF1
                        }
                        Else
                        {
                            PPI2 [0x02] = DAT /* \_SB_.PCI0.LPCB.TPM_.DAT_ */
                        }

                        Return (PPI2) /* \_SB_.PCI0.LPCB.TPM_._DSM.PPI2 */
                    }
                    ElseIf (_T_0 == 0x06)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                    }

                    Break
                }
            }
            ElseIf (Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d"))
            {
                While (One)
                {
                    _T_1 = ToInteger (Arg2)
                    If (_T_1 == 0x00)
                    {
                        Return (Buffer (0x01)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf (_T_1 == 0x01)
                    {
                        TMF1 = 0x22
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        ToInteger (DerefOf (Arg3 [0x00]), TMF1) /* \TMF1 */
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        Return (Zero)
                    }
                    Else
                    {
                    }

                    Break
                }
            }

            Return (Buffer (0x01)
            {
                 0x00                                             /* . */
            })
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (ITPD, PCI_Config, 0xE8, 0x04)
        Field (ITPD, DWordAcc, NoLock, Preserve)
        {
                ,   15, 
            TPDI,   1
        }

        OperationRegion (TVID, SystemMemory, 0xFED40F00, 0x02)
        Field (TVID, WordAcc, NoLock, Preserve)
        {
            VIDT,   16
        }
    }

    Device (\_SB.PCI0.ITPM)
    {
        Name (_HID, "INTC0102")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
        Field (TPMR, AnyAcc, NoLock, Preserve)
        {
            ACC0,   8
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (ACC0 != 0xFF)
            {
                If (\_SB.PCI0.VIDT == 0x8086)
                {
                    If (TPMF)
                    {
                        Return (0x0F)
                    }

                    Return (0x00)
                }
            }

            Return (0x00)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */)
            {
                While (One)
                {
                    _T_0 = ToInteger (Arg2)
                    If (_T_0 == 0x00)
                    {
                        Return (Buffer (0x01)
                        {
                             0x7F                                             /* . */
                        })
                    }
                    ElseIf (_T_0 == 0x01)
                    {
                        Return ("1.0")
                    }
                    ElseIf (_T_0 == 0x02)
                    {
                        ToInteger (DerefOf (Arg3 [0x00]), TMF2) /* \TMF2 */
                        TMF1 = 0x12
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        DAT = TMF2 /* \TMF2 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        Return (Zero)
                    }
                    ElseIf (_T_0 == 0x03)
                    {
                        Name (PPI1, Package (0x02)
                        {
                            0x00, 
                            0x00
                        })
                        DAT = 0x11
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x01)
                        }

                        PPI1 [0x01] = DAT /* \_SB_.PCI0.ITPM.DAT_ */
                        Return (PPI1) /* \_SB_.PCI0.ITPM._DSM.PPI1 */
                    }
                    ElseIf (_T_0 == 0x04)
                    {
                        Return (One)
                    }
                    ElseIf (_T_0 == 0x05)
                    {
                        Name (PPI2, Package (0x03)
                        {
                            0x00, 
                            0x00, 
                            0x00
                        })
                        DAT = 0x21
                        INQ = OFST /* \OFST */
                        PPI2 [0x01] = DAT /* \_SB_.PCI0.ITPM.DAT_ */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        PPI2 [0x01] = DAT /* \_SB_.PCI0.ITPM.DAT_ */
                        DAT = 0x31
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        If (DAT == 0xFFF0)
                        {
                            PPI2 [0x02] = 0xFFFFFFF0
                        }
                        ElseIf (DAT == 0xFFF1)
                        {
                            PPI2 [0x02] = 0xFFFFFFF1
                        }
                        Else
                        {
                            PPI2 [0x02] = DAT /* \_SB_.PCI0.ITPM.DAT_ */
                        }

                        Return (PPI2) /* \_SB_.PCI0.ITPM._DSM.PPI2 */
                    }
                    ElseIf (_T_0 == 0x06)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                    }

                    Break
                }
            }
            ElseIf (Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d"))
            {
                While (One)
                {
                    _T_1 = ToInteger (Arg2)
                    If (_T_1 == 0x00)
                    {
                        Return (Buffer (0x01)
                        {
                             0x03                                             /* . */
                        })
                    }
                    ElseIf (_T_1 == 0x01)
                    {
                        TMF1 = 0x22
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        ToInteger (DerefOf (Arg3 [0x00]), TMF1) /* \TMF1 */
                        DAT = TMF1 /* \TMF1 */
                        INQ = OFST /* \OFST */
                        If (DAT == 0xFF)
                        {
                            Return (0x02)
                        }

                        Return (Zero)
                    }
                    Else
                    {
                    }

                    Break
                }
            }

            Return (Buffer (0x01)
            {
                 0x00                                             /* . */
            })
        }
    }

    Scope (\_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Scope (\_TZ)
    {
        ThermalZone (TZ00)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return ((0x0AAC + (CRTT * 0x0A)))
            }

            Method (RTMP, 0, Serialized)
            {
                Local0 = \_SB.PCI0.LPCB.EC0.EC34 ()
                If (CondRefOf (\_TZ.PTMD))
                {
                    Local1 = Add (0x0AB6, (CRTT * 0x0A))
                    If (\_SB.PTMD.EDCF)
                    {
                        If (Local1 > Local0)
                        {
                            Local0 = Local1
                        }
                    }
                }

                If (Local0 >= (0x0AAC + (CRTT * 0x0A)))
                {
                    \_TZ.TZ00.CCCS ()
                }

                Return (Local0)
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\_TZ.DPME)
                {
                    Return (0x0BD8)
                }
                Else
                {
                    Return (RTMP ())
                }
            }

            Name (FCCS, 0x01)
            Method (CCCS, 0, NotSerialized)
            {
                If (\_TZ.TZ00.FCCS)
                {
                    Local1 = \_SB.ASRV (0x0D, 0x00, Zero)
                    If (Local1 >= 0xFF)
                    {
                        Local1 = 0xFF
                    }
                    Else
                    {
                        Local1++
                    }

                    \_SB.ASRV (0x0D, 0x01, Local1)
                    \_TZ.TZ00.FCCS = 0x00
                }
            }
        }

        ThermalZone (TZ01)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x0FC0)
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                CTYP = Arg0
            }

            Method (RTMP, 0, Serialized)
            {
                Local0 = \_SB.PCI0.LPCB.EC0.EC34 ()
                If (CondRefOf (\_TZ.PTMD))
                {
                    Local1 = Add (0x0AB6, (PSVT * 0x0A))
                    If (\_SB.PTMD.EDPF)
                    {
                        If (Local1 > Local0)
                        {
                            Local0 = Local1
                        }
                    }
                }

                Return (Local0)
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\_TZ.DPME)
                {
                    Return (0x0BD8)
                }
                Else
                {
                    Return (RTMP ())
                }
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (TCNT == 0x08)
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If (TCNT == 0x04)
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (TCNT == 0x02)
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return ((0x0AAC + (PSVT * 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1V) /* \TC1V */
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2V) /* \TC2V */
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (TSPV) /* \TSPV */
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y1D)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y1F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y20)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y21)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y22)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1E)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1D._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (\_SB.PCI0.LPCB.RCBA << 0x0E)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1E._BAS, TBR0)  // _BAS: Base Address
                TBR0 = TBAB /* \TBAB */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1E._LEN, TBLN)  // _LEN: Length
                If (TBAB == 0x00)
                {
                    TBLN = 0x00
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1F._BAS, MBR0)  // _BAS: Base Address
                MBR0 = (\_SB.PCI0.MHBR << 0x0F)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y20._BAS, DBR0)  // _BAS: Base Address
                DBR0 = (\_SB.PCI0.DIBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y21._BAS, EBR0)  // _BAS: Base Address
                EBR0 = (\_SB.PCI0.EPBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y22._BAS, XBR0)  // _BAS: Base Address
                XBR0 = (\_SB.PCI0.PXBR << 0x1A)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y22._LEN, XSZ0)  // _LEN: Length
                XSZ0 = (0x10000000 >> \_SB.PCI0.PXSZ)
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Scope (\_GPE)
    {
        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
            Notify (\_SB.PCI0.EHC2, 0x02) // Device Wake
            Notify (\_SB.PCI0.HDEF, 0x02) // Device Wake
            Notify (\_SB.PCI0.GLAN, 0x02) // Device Wake
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            L01C += 0x01
            P8XH (0x00, 0x01)
            P8XH (0x01, L01C)
            If ((RP1D == 0x00) && \_SB.PCI0.RP01.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = 0x01
                    \_SB.PCI0.RP01.HPSX = 0x01
                    Notify (\_SB.PCI0.RP01, 0x00) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = 0x01
                }
            }

            If ((RP2D == 0x00) && \_SB.PCI0.RP02.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = 0x01
                    \_SB.PCI0.RP02.HPSX = 0x01
                    Notify (\_SB.PCI0.RP02, 0x00) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = 0x01
                }
            }

            If ((RP3D == 0x00) && \_SB.PCI0.RP03.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = 0x01
                    \_SB.PCI0.RP03.HPSX = 0x01
                    Notify (\_SB.PCI0.RP03, 0x00) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = 0x01
                }
            }

            If ((RP4D == 0x00) && \_SB.PCI0.RP04.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = 0x01
                    \_SB.PCI0.RP04.HPSX = 0x01
                    Notify (\_SB.PCI0.RP04, 0x00) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = 0x01
                }
            }

            If ((RP5D == 0x00) && \_SB.PCI0.RP05.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    \_SB.PCI0.RP05.PDCX = 0x01
                    \_SB.PCI0.RP05.HPSX = 0x01
                    Notify (\_SB.PCI0.RP05, 0x00) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP05.HPSX = 0x01
                }
            }

            If ((RP7D == 0x00) && \_SB.PCI0.RP07.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    \_SB.PCI0.RP07.PDCX = 0x01
                    \_SB.PCI0.RP07.HPSX = 0x01
                    Notify (\_SB.PCI0.RP07, 0x00) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP07.HPSX = 0x01
                }
            }

            If ((RP8D == 0x00) && \_SB.PCI0.RP08.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    \_SB.PCI0.RP08.PDCX = 0x01
                    \_SB.PCI0.RP08.HPSX = 0x01
                    Notify (\_SB.PCI0.RP08, 0x00) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP08.HPSX = 0x01
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GPEC = 0x00
            If (DEVF & 0x01)
            {
                \_SB.CETP ()
                DEVF &= 0xFE
            }
            Else
            {
                If (CondRefOf (\_TZ.PTMD))
                {
                    Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
                }

                If (CondRefOf (\_TZ.DPPM))
                {
                    \TNT1 ()
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.GFX0.GSSE && !GSMI)
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.LID, 0x02) // Device Wake
            Notify (\_SB.LID, 0x80) // Status Change
        }
    }

    Name (CPUL, 0x5A)
    Name (PCHL, 0x4B)
    Name (DIML, 0x4B)
    If (TBAB != Zero)
    {
        OperationRegion (TBLK, SystemMemory, TBAB, 0x4000)
        Field (TBLK, AnyAcc, NoLock, Preserve)
        {
            Offset (0x24), 
            MMCH,   1, 
            MCPU,   1, 
            MBUD,   2, 
            Offset (0x26), 
            Offset (0x50), 
                ,   1, 
            MMTL,   7, 
            MGTD,   1, 
            MCTD,   1, 
            MPOL,   2, 
            MGPL,   9, 
            MCPL,   10, 
            Offset (0x54), 
            MMPL,   10, 
            Offset (0x56), 
            MTL,    16, 
            Offset (0x64), 
            MMPC,   16, 
            MPPC,   16, 
            MCPC,   16, 
            Offset (0x98), 
                ,   1, 
            NMTL,   7, 
            NGTD,   1, 
            NCTD,   1, 
            NPOL,   2, 
            NGPL,   9, 
            NCPL,   10, 
            Offset (0x9C), 
            Offset (0xA8), 
            Offset (0xAA), 
            TMPL,   10, 
            Offset (0xAC)
        }
    }

    If (TBAB != Zero)
    {
        OperationRegion (PTBA, SystemMemory, TBAB, 0x4000)
        Field (PTBA, AnyAcc, NoLock, Preserve)
        {
            Offset (0x1A), 
            PTRC,   16, 
            Offset (0x30), 
            CTV1,   16, 
            CTV2,   16, 
            Offset (0x60), 
            PMCP,   16, 
            Offset (0xD8), 
            PCTV,   8, 
            MCTV,   8
        }
    }

    Name (\_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    If (SS3)
    {
        Name (\_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            0x00, 
            0x00, 
            0x00
        })
    }

    If (SS4)
    {
        Name (\_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            0x00, 
            0x00, 
            0x00
        })
    }

    Name (\_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x00, 
        0x00, 
        0x00
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0) {}
    }

    Method (WAK, 1, NotSerialized)
    {
    }
}

