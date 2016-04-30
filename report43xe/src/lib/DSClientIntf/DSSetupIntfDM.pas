unit DSSetupIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, DSSetupIntf, SqlExpr,
  DBXDataSnap, DBXCommon, DBXPool, frxClass, frxDBSet, frxExportPDF, frxRich,
  IndyPeerImpl, DbxDevartMySql, Data.FMTBcd, Datasnap.Provider;

type
  TActionMode = (amView, amEdit, amAppend, amRemove);

  TDSSetupDM = class(TDSMainDM)
    CdsStCdeGet: TClientDataSet;
    CdsStCdeGetDtl: TClientDataSet;
    CdsStNb1Get: TClientDataSet;
    CdsStVm1Get: TClientDataSet;
    CdsSTVm1GetAddr01: TClientDataSet;
    CdsSTVm1GetAddr02: TClientDataSet;
    CdsSTVm1GetAddr03: TClientDataSet;
    CdsSTVm1GetAddr04: TClientDataSet;
    CdsSTVm1GetAddr02TA1VMA: TStringField;
    CdsSTVm1GetAddr02TA2VMA: TStringField;
    CdsSTVm1GetAddr02CHGVMA: TStringField;
    CdsSTVm1GetAddr02CTYVMA: TStringField;
    CdsSTVm1GetAddr02ZIPVMA: TStringField;
    CdsSTVm1GetAddr02TELVMA: TStringField;
    CdsSTVm1GetAddr02MOBVMA: TStringField;
    CdsSTVm1GetAddr02FAXVMA: TStringField;
    CdsSTVm1GetAddr02EMAVMA: TStringField;
    CdsSTVm1GetAddr02WEBVMA: TStringField;
    CdsSTVm1GetAddr03TA1VMA: TStringField;
    CdsSTVm1GetAddr03TA2VMA: TStringField;
    CdsSTVm1GetAddr03CHGVMA: TStringField;
    CdsSTVm1GetAddr03CTYVMA: TStringField;
    CdsSTVm1GetAddr03ZIPVMA: TStringField;
    CdsSTVm1GetAddr03TELVMA: TStringField;
    CdsSTVm1GetAddr03MOBVMA: TStringField;
    CdsSTVm1GetAddr03FAXVMA: TStringField;
    CdsSTVm1GetAddr03EMAVMA: TStringField;
    CdsSTVm1GetAddr03WEBVMA: TStringField;
    CdsSTVm1GetAddr04TA1VMA: TStringField;
    CdsSTVm1GetAddr04TA2VMA: TStringField;
    CdsSTVm1GetAddr04CHGVMA: TStringField;
    CdsSTVm1GetAddr04CTYVMA: TStringField;
    CdsSTVm1GetAddr04ZIPVMA: TStringField;
    CdsSTVm1GetAddr04TELVMA: TStringField;
    CdsSTVm1GetAddr04MOBVMA: TStringField;
    CdsSTVm1GetAddr04FAXVMA: TStringField;
    CdsSTVm1GetAddr04EMAVMA: TStringField;
    CdsSTVm1GetAddr04WEBVMA: TStringField;
    CdsStNb1GetSTSNB1: TStringField;
    CdsStNb1GetCMPNB1: TStringField;
    CdsStNb1GetBRNNB1: TStringField;
    CdsStNb1GetDCDNB1: TStringField;
    CdsStNb1GetYARNB1: TIntegerField;
    CdsStNb1GetN01NB1: TStringField;
    CdsStNb1GetN02NB1: TStringField;
    CdsStNb1GetN03NB1: TStringField;
    CdsStNb1GetN04NB1: TStringField;
    CdsStNb1GetN05NB1: TStringField;
    CdsStNb1GetN06NB1: TStringField;
    CdsStNb1GetN07NB1: TStringField;
    CdsStNb1GetN08NB1: TStringField;
    CdsStNb1GetN09NB1: TStringField;
    CdsStNb1GetN10NB1: TStringField;
    CdsStNb1GetN11NB1: TStringField;
    CdsStNb1GetN12NB1: TStringField;
    CdsStNb1GetPR1NB1: TStringField;
    CdsStNb1GetPR2NB1: TStringField;
    CdsStNb1GetENMCDE: TStringField;
    CdsStNb1GetTNMCDE: TStringField;
    CdsStNb1GetFORMAT_DOC: TStringField;
    CdsSTVm1GetAddr01TA1VMA: TStringField;
    CdsSTVm1GetAddr01TA2VMA: TStringField;
    CdsSTVm1GetAddr01CHGVMA: TStringField;
    CdsSTVm1GetAddr01CTYVMA: TStringField;
    CdsSTVm1GetAddr01ZIPVMA: TStringField;
    CdsSTVm1GetAddr01TELVMA: TStringField;
    CdsSTVm1GetAddr01MOBVMA: TStringField;
    CdsSTVm1GetAddr01FAXVMA: TStringField;
    CdsSTVm1GetAddr01EMAVMA: TStringField;
    CdsSTVm1GetAddr01WEBVMA: TStringField;
    CdsStVm1GetSTSVM1: TStringField;
    CdsStVm1GetVNOVM1: TStringField;
    CdsStVm1GetTNMVM1: TStringField;
    CdsStVm1GetENMVM1: TStringField;
    CdsStVm1GetCPSVM1: TStringField;
    CdsStVm1GetVTPVM1: TStringField;
    CdsStVm1GetACCVM1: TStringField;
    CdsStVm1GetOTPVM1: TStringField;
    CdsStVm1GetVIAVM1: TStringField;
    CdsStVm1GetPSNVM1: TStringField;
    CdsStVm1GetTAXVM1: TStringField;
    CdsStVm1GetTTXVM1: TStringField;
    CdsStVm1GetTPIVM1: TStringField;
    CdsStVm1GetVPCVM1: TFMTBCDField;
    CdsStCdeGetDtlSTSCDE: TStringField;
    CdsStCdeGetDtlFMTCDE: TStringField;
    CdsStCdeGetDtlCIDCDE: TStringField;
    CdsStCdeGetDtlCNOCDE: TStringField;
    CdsStCdeGetDtlENMCDE: TStringField;
    CdsStCdeGetDtlTNMCDE: TStringField;
    CdsStCdeGetDtlABBCDE: TStringField;
    CdsStCdeGetDtlVA1CDE: TFMTBCDField;
    CdsStCdeGetDtlVA2CDE: TFMTBCDField;
    CdsStCdeGetDtlDT1CDE: TDateField;
    CdsStCdeGetDtlDT2CDE: TDateField;
    CdsStCdeGetDtlAC1CDE: TStringField;
    CdsStCdeGetDtlAC2CDE: TStringField;
    CdsStCdeGetDtlDESCDE: TStringField;
    CdsStCm1Get: TClientDataSet;
    CdsSTCm1GetAddr01: TClientDataSet;
    CdsSTCm1GetAddr02: TClientDataSet;
    CdsSTCm1GetAddr03: TClientDataSet;
    CdsSTCm1GetAddr04: TClientDataSet;
    CdsStCm1GetSTSCM1: TStringField;
    CdsStCm1GetTYPCM1: TStringField;
    CdsStCm1GetCTPCM1: TStringField;
    CdsStCm1GetCNOCM1: TStringField;
    CdsStCm1GetTNMCM1: TStringField;
    CdsStCm1GetENMCM1: TStringField;
    CdsStCm1GetACCCM1: TStringField;
    CdsStCm1GetTAXCM1: TStringField;
    CdsStCm1GetCPSCM1: TStringField;
    CdsStCm1GetCCMCM1: TStringField;
    CdsStCm1GetPOSCM1: TStringField;
    CdsStCm1GetCTLCM1: TStringField;
    CdsStCm1GetCMBCM1: TStringField;
    CdsStCm1GetCFACM1: TStringField;
    CdsStCm1GetCEMCM1: TStringField;
    CdsStCm1GetVIACM1: TStringField;
    CdsStCm1GetSMNCM1: TStringField;
    CdsStCm1GetPDPCM1: TStringField;
    CdsStCm1GetDOPCM1: TStringField;
    CdsStCm1GetMEMCM1: TStringField;
    CdsSTCm1GetAddr01TA1CMA: TStringField;
    CdsSTCm1GetAddr01TA2CMA: TStringField;
    CdsSTCm1GetAddr01CHGCMA: TStringField;
    CdsSTCm1GetAddr01CTYCMA: TStringField;
    CdsSTCm1GetAddr01ZIPCMA: TStringField;
    CdsSTCm1GetAddr01TELCMA: TStringField;
    CdsSTCm1GetAddr01MOBCMA: TStringField;
    CdsSTCm1GetAddr01FAXCMA: TStringField;
    CdsSTCm1GetAddr01EMACMA: TStringField;
    CdsSTCm1GetAddr01WEBCMA: TStringField;
    CdsSTCm1GetAddr02TA1CMA: TStringField;
    CdsSTCm1GetAddr02TA2CMA: TStringField;
    CdsSTCm1GetAddr02CHGCMA: TStringField;
    CdsSTCm1GetAddr02CTYCMA: TStringField;
    CdsSTCm1GetAddr02ZIPCMA: TStringField;
    CdsSTCm1GetAddr02TELCMA: TStringField;
    CdsSTCm1GetAddr02MOBCMA: TStringField;
    CdsSTCm1GetAddr02FAXCMA: TStringField;
    CdsSTCm1GetAddr02EMACMA: TStringField;
    CdsSTCm1GetAddr02WEBCMA: TStringField;
    CdsSTCm1GetAddr03TA1CMA: TStringField;
    CdsSTCm1GetAddr03TA2CMA: TStringField;
    CdsSTCm1GetAddr03CHGCMA: TStringField;
    CdsSTCm1GetAddr03CTYCMA: TStringField;
    CdsSTCm1GetAddr03ZIPCMA: TStringField;
    CdsSTCm1GetAddr03TELCMA: TStringField;
    CdsSTCm1GetAddr03MOBCMA: TStringField;
    CdsSTCm1GetAddr03FAXCMA: TStringField;
    CdsSTCm1GetAddr03EMACMA: TStringField;
    CdsSTCm1GetAddr03WEBCMA: TStringField;
    CdsSTCm1GetAddr04TA1CMA: TStringField;
    CdsSTCm1GetAddr04TA2CMA: TStringField;
    CdsSTCm1GetAddr04CHGCMA: TStringField;
    CdsSTCm1GetAddr04CTYCMA: TStringField;
    CdsSTCm1GetAddr04ZIPCMA: TStringField;
    CdsSTCm1GetAddr04TELCMA: TStringField;
    CdsSTCm1GetAddr04MOBCMA: TStringField;
    CdsSTCm1GetAddr04FAXCMA: TStringField;
    CdsSTCm1GetAddr04EMACMA: TStringField;
    CdsSTCm1GetAddr04WEBCMA: TStringField;
    CdsStVm1GetPOPVM1: TStringField;
    CdsStVm1GetPAPVM1: TStringField;
    CdsStVm1GetDOPVM1: TStringField;
    CdsStVm1GetMEMVM1: TStringField;
    CdsStPm1Get: TClientDataSet;
    CdsStPm1GetSTSPM1: TStringField;
    CdsStPm1GetITCPM1: TStringField;
    CdsStPm1GetITNPM1: TStringField;
    CdsStPm1GetENMPM1: TStringField;
    CdsStPm1GetTNMPM1: TStringField;
    CdsStPm1GetMNMPM1: TStringField;
    CdsStPm1GetUT1PM1: TStringField;
    CdsStPm1GetUT2PM1: TStringField;
    CdsStPm1GetUE1PM1: TStringField;
    CdsStPm1GetUE2PM1: TStringField;
    CdsStPm1GetCVTPM1: TFMTBCDField;
    CdsStPm1GetWHSPM1: TStringField;
    CdsStPm1GetUC1PM1: TFMTBCDField;
    CdsStPm1GetUC2PM1: TFMTBCDField;
    CdsStPm1GetUP1PM1: TFMTBCDField;
    CdsStPm1GetUP2PM1: TFMTBCDField;
    CdsStPm1GetUF1PM1: TFMTBCDField;
    CdsStPm1GetUF2PM1: TFMTBCDField;
    CdsStPm1GetFAMPM1: TFMTBCDField;
    CdsStPm1GetCT1PM1: TFMTBCDField;
    CdsStPm1GetCT2PM1: TFMTBCDField;
    CdsStPm1GetITSPM1: TStringField;
    CdsStPm1GetBRDPM1: TStringField;
    CdsStPm1GetSRSPM1: TStringField;
    CdsStPm1GetGEAPM1: TStringField;
    CdsStPm1GetCASPM1: TIntegerField;
    CdsStPm1GetPWRPM1: TIntegerField;
    CdsStPm1GetSTKPM1: TStringField;
    CdsStPm1GetDPCPM1: TIntegerField;
    CdsStPm1GetACCPM1: TStringField;
    CdsStBgGet: TClientDataSet;
    CdsStBgGetSTSBG2: TStringField;
    CdsStBgGetYARBG2: TIntegerField;
    CdsStBgGetCMPBG2: TStringField;
    CdsStBgGetBRNBG2: TStringField;
    CdsStBgGetITNBG2: TStringField;
    CdsStBgGetSMNBG2: TStringField;
    CdsStBgGetQ01BG2: TFMTBCDField;
    CdsStBgGetQ02BG2: TFMTBCDField;
    CdsStBgGetQ03BG2: TFMTBCDField;
    CdsStBgGetQ04BG2: TFMTBCDField;
    CdsStBgGetQ05BG2: TFMTBCDField;
    CdsStBgGetQ06BG2: TFMTBCDField;
    CdsStBgGetQ07BG2: TFMTBCDField;
    CdsStBgGetQ08BG2: TFMTBCDField;
    CdsStBgGetQ09BG2: TFMTBCDField;
    CdsStBgGetQ10BG2: TFMTBCDField;
    CdsStBgGetQ11BG2: TFMTBCDField;
    CdsStBgGetQ12BG2: TFMTBCDField;
    CdsStBgGetA01BG2: TFMTBCDField;
    CdsStBgGetA02BG2: TFMTBCDField;
    CdsStBgGetA03BG2: TFMTBCDField;
    CdsStBgGetA04BG2: TFMTBCDField;
    CdsStBgGetA05BG2: TFMTBCDField;
    CdsStBgGetA06BG2: TFMTBCDField;
    CdsStBgGetA07BG2: TFMTBCDField;
    CdsStBgGetA08BG2: TFMTBCDField;
    CdsStBgGetA09BG2: TFMTBCDField;
    CdsStBgGetA10BG2: TFMTBCDField;
    CdsStBgGetA11BG2: TFMTBCDField;
    CdsStBgGetA12BG2: TFMTBCDField;
    CdsStBgGetTNMPM1: TStringField;
    CdsStBgGetSMNTNM: TStringField;
    CdsStBgGetFLG_BG: TStringField;
    CdsStStyGet: TClientDataSet;
    CdsStShpGet: TClientDataSet;
    CdsStStyGetSTSSTY: TStringField;
    CdsStStyGetSERSTY: TStringField;
    CdsStStyGetCNOSTY: TStringField;
    CdsStStyGetTNMCM1: TStringField;
    CdsStStyGetENGSTY: TStringField;
    CdsStStyGetSRSSTY: TStringField;
    CdsStStyGetITNSTY: TStringField;
    CdsStStyGetTNMPM1: TStringField;
    CdsStStyGetCOLSTY: TStringField;
    CdsStStyGetCOLTNM: TStringField;
    CdsStShpGetSTSSHP: TStringField;
    CdsStShpGetCNOSHP: TStringField;
    CdsStShpGetCNOTNM: TStringField;
    CdsStShpGetSEQSHP: TIntegerField;
    CdsStShpGetFBNSHP: TStringField;
    CdsStShpGetFBNTNM: TStringField;
    CdsStShpGetTBNSHP: TStringField;
    CdsStShpGetTBNTNM: TStringField;
    CdsStShpGetAMTSHP: TFMTBCDField;
    CdsStCm1GetAm3: TClientDataSet;
    CdsStCm1GetAm3STSAM3: TStringField;
    CdsStCm1GetAm3CMPAM3: TStringField;
    CdsStCm1GetAm3BRNAM3: TStringField;
    CdsStCm1GetAm3CNOAM3: TStringField;
    CdsStCm1GetAm3CRTAM3: TIntegerField;
    CdsStCm1GetAm3CRLAM3: TFMTBCDField;
    CdsStCm1GetAm3BFIAM3: TFMTBCDField;
    CdsStCm1GetAm3MINAM3: TFMTBCDField;
    CdsStCm1GetAm3MPYAM3: TFMTBCDField;
    CdsStCm1GetAm3MCMAM3: TFMTBCDField;
    CdsStCm1GetAm3MDNAM3: TFMTBCDField;
    CdsStCm1GetAm3MCNAM3: TFMTBCDField;
    CdsStCm1GetAm3MAJAM3: TFMTBCDField;
    CdsStCm1GetAm3MDSAM3: TFMTBCDField;
    CdsStCm1GetAm3MITAM3: TFMTBCDField;
    CdsStCm1GetAm3PDCAM3: TFMTBCDField;
    CdsStCm1GetAm3UNCAM3: TFMTBCDField;
    CdsStCm1GetAm3CQRAM3: TFMTBCDField;
    CdsStCm1GetAm3ADNAM3: TFMTBCDField;
    CdsStCm1GetAm3ACNAM3: TFMTBCDField;
    CdsStCm1GetAm3APYAM3: TFMTBCDField;
    CdsStCm1GetAm3YPYAM3: TFMTBCDField;
    CdsStCm1GetAm3YPCAM3: TFMTBCDField;
    CdsStCm1GetAm3TNMCM3: TStringField;
    CdsStCm3Get: TClientDataSet;
    CdsStCm3GetSTSCM3: TStringField;
    CdsStCm3GetCMPCM3: TStringField;
    CdsStCm3GetBRNCM3: TStringField;
    CdsStCm3GetENMCM3: TStringField;
    CdsStCm3GetTNMCM3: TStringField;
    CdsStCm3GetTA1CM3: TStringField;
    CdsStCm3GetTA2CM3: TStringField;
    CdsStCm3GetTIDCM3: TStringField;
    CdsStRm1Get: TClientDataSet;
    CdsStRm1GetSTSRM1: TStringField;
    CdsStRm1GetCMPRM1: TStringField;
    CdsStRm1GetBRNRM1: TStringField;
    CdsStRm1GetREGRM1: TStringField;
    CdsStRm1GetRGNRM1: TIntegerField;
    CdsStRm1GetRNORM1: TStringField;
    CdsStRm1GetPRVRM1: TStringField;
    CdsStRm1GetPRVTNM: TStringField;
    CdsStRm1GetPDTRM1: TDateField;
    CdsStRm1GetPATRM1: TFMTBCDField;
    CdsStRm1GetOATRM1: TFMTBCDField;
    CdsStRm1GetAVLRM1: TStringField;
    CdsStRm1GetNARRM1: TStringField;
    CdsStRm1GetSUMRM1: TFMTBCDField;
    CdsStRegGet: TClientDataSet;
    CdsStRegGetPm1: TClientDataSet;
    CdsStRegGetSTSREG: TStringField;
    CdsStRegGetCMPREG: TStringField;
    CdsStRegGetBRNREG: TStringField;
    CdsStRegGetCNOREG: TStringField;
    CdsStRegGetCNOTNM: TStringField;
    CdsStRegGetSEQREG: TIntegerField;
    CdsStRegGetITNREG: TStringField;
    CdsStRegGetTNMPM1: TStringField;
    CdsStRegGetAMTREG: TFMTBCDField;
    CdsStRegGetSUMREG: TFMTBCDField;
    CdsStRegGetNARREG: TStringField;
    CdsStRegGetCNOITN: TStringField;
    CdsStRegGetOTHREG: TFMTBCDField;
    CdsStRegGetPm1STSREG: TStringField;
    CdsStRegGetPm1ITNREG: TStringField;
    CdsStRegGetPm1TNMPM1: TStringField;
    CdsStRegGetPm1AMTREG: TFMTBCDField;
    CdsStRegGetPm1OTHREG: TFMTBCDField;
    CdsStRegGetPm1SUMREG: TFMTBCDField;
    CdsStRegGetPm1NARREG: TStringField;
    CdsStRegGetExtra: TClientDataSet;
    CdsStRegGetExtraSTSREG: TStringField;
    CdsStRegGetExtraCMPREG: TStringField;
    CdsStRegGetExtraBRNREG: TStringField;
    CdsStRegGetExtraCNOREG: TStringField;
    CdsStRegGetExtraCNOTNM: TStringField;
    CdsStRegGetExtraSEQREG: TIntegerField;
    CdsStRegGetExtraITNREG: TStringField;
    CdsStRegGetExtraTNMPM1: TStringField;
    CdsStRegGetExtraAMTREG: TFMTBCDField;
    CdsStRegGetExtraOTHREG: TFMTBCDField;
    CdsStRegGetExtraSUMREG: TFMTBCDField;
    CdsStRegGetExtraNARREG: TStringField;
    CdsStRegGetExtraCNOITN: TStringField;
    CdsStRegGetPm1SEQREG: TIntegerField;
    CdsStAm1Get: TClientDataSet;
    CdsStAm1GetSTSAM1: TStringField;
    CdsStAm1GetYARAM1: TIntegerField;
    CdsStAm1GetCMPAM1: TStringField;
    CdsStAm1GetBRNAM1: TStringField;
    CdsStAm1GetCNOAM1: TStringField;
    CdsStAm1GetIDTAM1: TDateField;
    CdsStAm1GetDCDAM1: TStringField;
    CdsStAm1GetDNOAM1: TStringField;
    CdsStAm1GetSEQAM1: TIntegerField;
    CdsStAm1GetDEPAM1: TStringField;
    CdsStAm1GetPRTAM1: TStringField;
    CdsStAm1GetPRCAM1: TStringField;
    CdsStAm1GetCQPAM1: TStringField;
    CdsStAm1GetCQSAM1: TStringField;
    CdsStAm1GetATPAM1: TStringField;
    CdsStAm1GetCYTAM1: TStringField;
    CdsStAm1GetCYRAM1: TFMTBCDField;
    CdsStAm1GetACYAM1: TFMTBCDField;
    CdsStAm1GetBCYAM1: TFMTBCDField;
    CdsStAm1GetAMTAM1: TFMTBCDField;
    CdsStAm1GetBALAM1: TFMTBCDField;
    CdsStAm1GetBILAM1: TStringField;
    CdsStAm1GetSHPAM1: TStringField;
    CdsStAm1GetSDTAM1: TDateField;
    CdsStAm1GetCDTAM1: TDateField;
    CdsStAm1GetBNKAM1: TStringField;
    CdsStAm1GetNTEAM1: TStringField;
    CdsStAm1GetPAYAM1: TStringField;
    CdsStAm1GetNTYAM1: TStringField;
    CdsStAm1GetCPDAM1: TDateField;
    CdsStAm1GetFLGAM1: TStringField;
    CdsStAm1GetORDAM1: TFMTBCDField;
    CdsStAm1GetDDTAM1: TDateField;
    CdsStAm1GetINVAM1: TFMTBCDField;
    CdsStAm1GetITPAM1: TStringField;
    CdsStAm1GetABBAM1: TStringField;
    CdsStAm1GetSERAM1: TStringField;
    CdsStAm1GetSMNCM1: TStringField;
    CdsStAm1GetTNMCM1: TStringField;
    CdsStAm1GetCTPCM1: TStringField;
    CdsStCm1GetUsedBrn: TClientDataSet;
    CdsStVm1GetYm3: TClientDataSet;
    CdsStVm1GetYm3STSYM3: TStringField;
    CdsStVm1GetYm3CMPYM3: TStringField;
    CdsStVm1GetYm3BRNYM3: TStringField;
    CdsStVm1GetYm3TNMCM3: TStringField;
    CdsStVm1GetYm3VNOYM3: TStringField;
    CdsStVm1GetYm3CRTYM3: TIntegerField;
    CdsStVm1GetYm3CRLYM3: TFMTBCDField;
    CdsStVm1GetYm3DSDYM3: TIntegerField;
    CdsStVm1GetYm3DSAYM3: TFMTBCDField;
    CdsStVm1GetYm3BFIYM3: TFMTBCDField;
    CdsStVm1GetYm3MINYM3: TFMTBCDField;
    CdsStVm1GetYm3MPYYM3: TFMTBCDField;
    CdsStVm1GetYm3MCMYM3: TFMTBCDField;
    CdsStVm1GetYm3MDNYM3: TFMTBCDField;
    CdsStVm1GetYm3MCNYM3: TFMTBCDField;
    CdsStVm1GetYm3MAJYM3: TFMTBCDField;
    CdsStVm1GetYm3MDSYM3: TFMTBCDField;
    CdsStVm1GetYm3MITYM3: TFMTBCDField;
    CdsStVm1GetYm3PDCYM3: TFMTBCDField;
    CdsStVm1GetYm3UNCYM3: TFMTBCDField;
    CdsStVm1GetYm3CQRYM3: TFMTBCDField;
    CdsStVm1GetYm3ADNYM3: TFMTBCDField;
    CdsStVm1GetYm3ACNYM3: TFMTBCDField;
    CdsStVm1GetYm3APYYM3: TFMTBCDField;
    CdsStVm1GetYm3YPYYM3: TFMTBCDField;
    CdsStVm1GetYm3YPCYM3: TFMTBCDField;
    CdsStYm1Get: TClientDataSet;
    CdsStYm1GetSTSYM1: TStringField;
    CdsStYm1GetDCDYM1: TStringField;
    CdsStYm1GetCMPYM1: TStringField;
    CdsStYm1GetBRNYM1: TStringField;
    CdsStYm1GetVNOYM1: TStringField;
    CdsStYm1GetTNMVM1: TStringField;
    CdsStYm1GetVTPVM1: TStringField;
    CdsStYm1GetIDTYM1: TDateField;
    CdsStYm1GetDNOYM1: TStringField;
    CdsStYm1GetDEPYM1: TStringField;
    CdsStYm1GetABTYM1: TFMTBCDField;
    CdsStYm1GetVATYM1: TStringField;
    CdsStYm1GetAVTYM1: TFMTBCDField;
    CdsStYm1GetPOYM1: TFMTBCDField;
    CdsStYm1GetSERYM1: TStringField;
    CdsStYm1GetDDTYM1: TDateField;
    CdsStYm1GetAMTYM1: TFMTBCDField;
    CdsStYm1GetBALYM1: TFMTBCDField;
    CdsStYm1GetYARYM1: TIntegerField;
    CdsStZipGet: TClientDataSet;
    CdsStZipGetIDZIP: TIntegerField;
    CdsStZipGetCODZIP: TStringField;
    CdsStZipGetTAMZIP: TStringField;
    CdsStZipGetAMPZIP: TStringField;
    CdsStZipGetCHGZIP: TStringField;
    CdsStZipGetCNMZIP: TStringField;
    CdsStCm1GetUsedBrnCMPAM3: TStringField;
    CdsStCm1GetUsedBrnBRNAM3: TStringField;
    CdsStCm1GetUsedBrnSTSCM1: TStringField;
    CdsStCm1GetUsedBrnTYPCM1: TStringField;
    CdsStCm1GetUsedBrnCTPCM1: TStringField;
    CdsStCm1GetUsedBrnCNOCM1: TStringField;
    CdsStCm1GetUsedBrnTNMCM1: TStringField;
    CdsStCm1GetUsedBrnENMCM1: TStringField;
    CdsStCm1GetUsedBrnACCCM1: TStringField;
    CdsStCm1GetUsedBrnTAXCM1: TStringField;
    CdsStCm1GetUsedBrnCPSCM1: TStringField;
    CdsStCm1GetUsedBrnCCMCM1: TStringField;
    CdsStCm1GetUsedBrnPOSCM1: TStringField;
    CdsStCm1GetUsedBrnCTLCM1: TStringField;
    CdsStCm1GetUsedBrnCMBCM1: TStringField;
    CdsStCm1GetUsedBrnCFACM1: TStringField;
    CdsStCm1GetUsedBrnCEMCM1: TStringField;
    CdsStCm1GetUsedBrnVIACM1: TStringField;
    CdsStCm1GetUsedBrnSMNCM1: TStringField;
    CdsStCm1GetUsedBrnPDPCM1: TStringField;
    CdsStCm1GetUsedBrnDOPCM1: TStringField;
    CdsStCm1GetUsedBrnMEMCM1: TStringField;
    CdsStVm1GetUsedBrn: TClientDataSet;
    CdsStVm1GetUsedBrnCMPYM3: TStringField;
    CdsStVm1GetUsedBrnBRNYM3: TStringField;
    CdsStVm1GetUsedBrnSTSVM1: TStringField;
    CdsStVm1GetUsedBrnVNOVM1: TStringField;
    CdsStVm1GetUsedBrnTNMVM1: TStringField;
    CdsStVm1GetUsedBrnENMVM1: TStringField;
    CdsStVm1GetUsedBrnCPSVM1: TStringField;
    CdsStVm1GetUsedBrnVTPVM1: TStringField;
    CdsStVm1GetUsedBrnACCVM1: TStringField;
    CdsStVm1GetUsedBrnOTPVM1: TStringField;
    CdsStVm1GetUsedBrnVIAVM1: TStringField;
    CdsStVm1GetUsedBrnPSNVM1: TStringField;
    CdsStVm1GetUsedBrnTAXVM1: TStringField;
    CdsStVm1GetUsedBrnTTXVM1: TStringField;
    CdsStVm1GetUsedBrnTPIVM1: TStringField;
    CdsStVm1GetUsedBrnVPCVM1: TFMTBCDField;
    CdsStVm1GetUsedBrnPOPVM1: TStringField;
    CdsStVm1GetUsedBrnPAPVM1: TStringField;
    CdsStVm1GetUsedBrnDOPVM1: TStringField;
    CdsStVm1GetUsedBrnMEMVM1: TStringField;
    CdsStVm1GetUsedBrnCRTYM3: TIntegerField;
    CdsStCm1GetUsedBrnCRTAM3: TIntegerField;
    CdsStPm1GetImage: TClientDataSet;
    CdsStPm1GetImageITNPM1: TStringField;
    CdsStPm1GetImageIMGPM1: TBlobField;
    CdsStIm2Get: TClientDataSet;
    CdsStIm2GetSTSIM2: TStringField;
    CdsStIm2GetCMPIM2: TStringField;
    CdsStIm2GetBRNIM2: TStringField;
    CdsStIm2GetFWHIM2: TStringField;
    CdsStIm2GetTWHIM2: TStringField;
    CdsStIm2GetITNIM2: TStringField;
    CdsStIm2GetSERIM2: TStringField;
    CdsStIm2GetENGIM2: TStringField;
    CdsStIm2GetCOLIM2: TStringField;
    CdsStIm2GetIDTIM2: TDateField;
    CdsStIm2GetMOVIM2: TStringField;
    CdsStIm2GetDCDIM2: TStringField;
    CdsStIm2GetDNOIM2: TLargeintField;
    CdsStIm2GetSEQIM2: TIntegerField;
    CdsStIm2GetDEPIM2: TStringField;
    CdsStIm2GetDESIM2: TStringField;
    CdsStIm2GetQT1IM2: TIntegerField;
    CdsStIm2GetQT2IM2: TIntegerField;
    CdsStIm2GetCT1IM2: TFMTBCDField;
    CdsStIm2GetCT2IM2: TFMTBCDField;
    CdsStIm2GetAT1IM2: TFMTBCDField;
    CdsStIm2GetAT2IM2: TFMTBCDField;
    CdsStIm2GetUC1IM2: TFMTBCDField;
    CdsStIm2GetUC2IM2: TFMTBCDField;
    CdsStIm2GetUP1IM2: TFMTBCDField;
    CdsStIm2GetUP2IM2: TFMTBCDField;
    CdsStIm2GetTNMFWH: TStringField;
    CdsStIm2GetTNMCOL: TStringField;
    CdsStIm2GetORCIM2: TStringField;
    CdsStIm2GetORNIM2: TIntegerField;
    CdsStIm2GetORDIM2: TLargeintField;
    CdsStIm2GetVNOIM2: TStringField;
    CdsStIm2GetCOCIM2: TStringField;
    CdsStIm2GetCONIM2: TIntegerField;
    CdsStIm2GetCODIM2: TLargeintField;
    CdsStIm2GetCNOIM2: TStringField;
    CdsStIm2GetPRTIM2: TStringField;
    CdsStIm2GetABBIM2: TStringField;
    CdsStIm2GetTNMPM1: TStringField;
    CdsStIm2GetYARIM2: TIntegerField;
    CdsStAc1Get: TClientDataSet;
    CdsStAc1GetSTSAC1: TStringField;
    CdsStAc1GetCMPAC1: TStringField;
    CdsStAc1GetAGPAC1: TStringField;
    CdsStAc1GetASGAC1: TStringField;
    CdsStAc1GetATPAC1: TStringField;
    CdsStAc1GetARNAC1: TStringField;
    CdsStAc1GetACCAC1: TStringField;
    CdsStAc1GetENMAC1: TStringField;
    CdsStAc1GetTNMAC1: TStringField;
    CdsStAc1GetACTAC1: TStringField;
    CdsStAc1GetSTTAC1: TStringField;
    CdsStIm1GetByItn: TClientDataSet;
    CdsStIm1GetByItnSTSIM1: TStringField;
    CdsStIm1GetByItnCMPIM1: TStringField;
    CdsStIm1GetByItnBRNIM1: TStringField;
    CdsStIm1GetByItnWHSIM1: TStringField;
    CdsStIm1GetByItnITNIM1: TStringField;
    CdsStIm1GetByItnSERIM1: TStringField;
    CdsStIm1GetByItnENGIM1: TStringField;
    CdsStIm1GetByItnCOLIM1: TStringField;
    CdsStIm1GetByItnTNMWHS: TStringField;
    CdsStIm1GetByItnTNMCOL: TStringField;
    CdsStIm1GetByItnDNOYM1: TStringField;
    CdsStIm1GetByItnIDTYM1: TDateField;
    CdsStPm1GetByItc: TClientDataSet;
    CdsStPm1GetByItcSTSPM1: TStringField;
    CdsStPm1GetByItcITCPM1: TStringField;
    CdsStPm1GetByItcITNPM1: TStringField;
    CdsStPm1GetByItcENMPM1: TStringField;
    CdsStPm1GetByItcTNMPM1: TStringField;
    CdsStPm1GetByItcMNMPM1: TStringField;
    CdsStPm1GetByItcUT1PM1: TStringField;
    CdsStPm1GetByItcUT2PM1: TStringField;
    CdsStPm1GetByItcUE1PM1: TStringField;
    CdsStPm1GetByItcUE2PM1: TStringField;
    CdsStPm1GetByItcCVTPM1: TFMTBCDField;
    CdsStPm1GetByItcWHSPM1: TStringField;
    CdsStPm1GetByItcUC1PM1: TFMTBCDField;
    CdsStPm1GetByItcUC2PM1: TFMTBCDField;
    CdsStPm1GetByItcUP1PM1: TFMTBCDField;
    CdsStPm1GetByItcUP2PM1: TFMTBCDField;
    CdsStPm1GetByItcUF1PM1: TFMTBCDField;
    CdsStPm1GetByItcUF2PM1: TFMTBCDField;
    CdsStPm1GetByItcFAMPM1: TFMTBCDField;
    CdsStPm1GetByItcCT1PM1: TFMTBCDField;
    CdsStPm1GetByItcCT2PM1: TFMTBCDField;
    CdsStPm1GetByItcITSPM1: TStringField;
    CdsStPm1GetByItcBRDPM1: TStringField;
    CdsStPm1GetByItcSRSPM1: TStringField;
    CdsStPm1GetByItcGEAPM1: TStringField;
    CdsStPm1GetByItcCASPM1: TIntegerField;
    CdsStPm1GetByItcPWRPM1: TIntegerField;
    CdsStPm1GetByItcSTKPM1: TStringField;
    CdsStPm1GetByItcDPCPM1: TIntegerField;
    CdsStPm1GetByItcACCPM1: TStringField;
    CdsStPm1GetByItcIMGPM1: TBlobField;
    CdsStRedCardGet: TClientDataSet;
    CdsStRedCardGetSTSRM1: TStringField;
    CdsStRedCardGetCMPRM1: TStringField;
    CdsStRedCardGetBRNRM1: TStringField;
    CdsStRedCardGetREGRM1: TStringField;
    CdsStRedCardGetRGNRM1: TIntegerField;
    CdsStRedCardGetREGFULL: TStringField;
    CdsStRedCardGetPRVRM1: TStringField;
    CdsStRedCardGetPRVTNM: TStringField;
    CdsStRedCardGetPDTRM1: TDateField;
    CdsStRedCardGetPATRM1: TFMTBCDField;
    CdsStRedCardGetOATRM1: TFMTBCDField;
    CdsStRedCardGetAVLRM1: TStringField;
    CdsStRedCardGetNARRM1: TStringField;
    CdsStRedCardGetADD: TFMTBCDField;
    CdsStFg1GetList: TClientDataSet;
    CdsStFg1GetDtl: TClientDataSet;
    CdsStFg1GetUsed: TClientDataSet;
    CdsStFg1GetListYARFG1: TIntegerField;
    CdsStFg1GetListCMPFG1: TIntegerField;
    CdsStFg1GetListBRNFG1: TStringField;
    CdsStFg1GetListPRDFG1: TStringField;
    CdsStFg1GetListTNMPM1: TStringField;
    CdsStFg1GetListFDTFG1: TDateField;
    CdsStFg1GetListTDTFG1: TDateField;
    CdsStFg1GetListCOUNT_ITEM: TIntegerField;
    CdsStFg1GetListSUMAMT: TFMTBCDField;
    CdsStFg1GetDtlYARFG1: TIntegerField;
    CdsStFg1GetDtlCMPFG1: TIntegerField;
    CdsStFg1GetDtlBRNFG1: TStringField;
    CdsStFg1GetDtlPRDFG1: TStringField;
    CdsStFg1GetDtlTNMPM1: TStringField;
    CdsStFg1GetDtlFDTFG1: TDateField;
    CdsStFg1GetDtlTDTFG1: TDateField;
    CdsStFg1GetDtlSEQFG1: TIntegerField;
    CdsStFg1GetDtlFGDFG1: TStringField;
    CdsStFg1GetDtlTNMFGD: TStringField;
    CdsStFg1GetDtlFCLFG1: TStringField;
    CdsStFg1GetDtlFQ1FG1: TIntegerField;
    CdsStFg1GetDtlFQ2FG1: TIntegerField;
    CdsStFg1GetDtlFDSFG1: TFMTBCDField;
    CdsStFg1GetDtlFPAFG1: TFMTBCDField;
    CdsStFg1GetDtlFU1FG1: TFMTBCDField;
    CdsStFg1GetDtlFU2FG1: TFMTBCDField;
    CdsStFg1GetDtlFAMFG1: TFMTBCDField;
    CdsStFg1GetDtlABBFG1: TStringField;
    CdsStFg1GetUsedYARFG1: TIntegerField;
    CdsStFg1GetUsedCMPFG1: TIntegerField;
    CdsStFg1GetUsedBRNFG1: TStringField;
    CdsStFg1GetUsedPRDFG1: TStringField;
    CdsStFg1GetUsedTNMPM1: TStringField;
    CdsStFg1GetUsedFDTFG1: TDateField;
    CdsStFg1GetUsedTDTFG1: TDateField;
    CdsStFg1GetUsedSEQFG1: TIntegerField;
    CdsStFg1GetUsedFGDFG1: TStringField;
    CdsStFg1GetUsedTNMFGD: TStringField;
    CdsStFg1GetUsedFCLFG1: TStringField;
    CdsStFg1GetUsedFQ1FG1: TIntegerField;
    CdsStFg1GetUsedFQ2FG1: TIntegerField;
    CdsStFg1GetUsedFDSFG1: TFMTBCDField;
    CdsStFg1GetUsedFPAFG1: TFMTBCDField;
    CdsStFg1GetUsedFU1FG1: TFMTBCDField;
    CdsStFg1GetUsedFU2FG1: TFMTBCDField;
    CdsStFg1GetUsedFAMFG1: TFMTBCDField;
    CdsStFg1GetUsedABBFG1: TStringField;
    CdsStFg1GetDtlAM1FG1: TFMTBCDField;
    CdsStFg1GetDtlAM2FG1: TFMTBCDField;
    CdsStCdeGetREPORTID: TIntegerField;
    CdsStCdeGetHOSPCODE: TWideStringField;
    CdsStCdeGetPID: TWideStringField;
    CdsStCdeGetADDRESSTYPE: TWideStringField;
    CdsStCdeGetHOUSE_ID: TWideStringField;
    CdsStCdeGetHOUSETYPE: TWideStringField;
    CdsStCdeGetROOMNO: TWideStringField;
    CdsStCdeGetCONDO: TWideStringField;
    CdsStCdeGetHOUSENO: TWideStringField;
    CdsStCdeGetSOISUB: TWideStringField;
    CdsStCdeGetSOIMAIN: TWideStringField;
    CdsStCdeGetROAD: TWideStringField;
    CdsStCdeGetVILLANAME: TWideStringField;
    CdsStCdeGetVILLAGE: TWideStringField;
    CdsStCdeGetTAMBON: TWideStringField;
    CdsStCdeGetAMPUR: TWideStringField;
    CdsStCdeGetCHANGWAT: TWideStringField;
    CdsStCdeGetTELEPHONE: TWideStringField;
    CdsStCdeGetMOBILE: TWideStringField;
    CdsStCdeGetD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Person: TClientDataSet;
    cdsGetReport43PersonREPORTID: TIntegerField;
    cdsGetReport43PersonHOSPCODE: TWideStringField;
    cdsGetReport43PersonCID: TWideStringField;
    cdsGetReport43PersonPID: TWideStringField;
    cdsGetReport43PersonHID: TWideStringField;
    cdsGetReport43PersonPRENAME: TWideStringField;
    cdsGetReport43PersonNAME: TWideStringField;
    cdsGetReport43PersonLNAME: TWideStringField;
    cdsGetReport43PersonHN: TWideStringField;
    cdsGetReport43PersonSEX: TWideStringField;
    cdsGetReport43PersonBIRTH: TDateField;
    cdsGetReport43PersonMSTATUS: TWideStringField;
    cdsGetReport43PersonOCCUPATION_OLD: TWideStringField;
    cdsGetReport43PersonOCCUPATION_NEW: TWideStringField;
    cdsGetReport43PersonRACE: TWideStringField;
    cdsGetReport43PersonNATION: TWideStringField;
    cdsGetReport43PersonRELIGION: TWideStringField;
    cdsGetReport43PersonEDUCATION: TWideStringField;
    cdsGetReport43PersonFSTATUS: TWideStringField;
    cdsGetReport43PersonFATHER: TWideStringField;
    cdsGetReport43PersonMOTHER: TWideStringField;
    cdsGetReport43PersonCOUPLE: TWideStringField;
    cdsGetReport43PersonVSTATUS: TWideStringField;
    cdsGetReport43PersonMOVEIN: TDateField;
    cdsGetReport43PersonDISCHARGE: TWideStringField;
    cdsGetReport43PersonDDISCHARGE: TDateField;
    cdsGetReport43PersonABOGROUP: TWideStringField;
    cdsGetReport43PersonRHGROUP: TWideStringField;
    cdsGetReport43PersonLABOR: TWideStringField;
    cdsGetReport43PersonPASSPORT: TWideStringField;
    cdsGetReport43PersonTYPEAREA: TWideStringField;
    cdsGetReport43PersonD_UPDATE: TSQLTimeStampField;
    cdsGetReport43PersonEXPORT_DATE: TSQLTimeStampField;
    cdsGetReport43Service: TClientDataSet;
    cdsGetReport43ServiceREPORTID: TIntegerField;
    cdsGetReport43ServiceHOSPCODE: TWideStringField;
    cdsGetReport43ServicePID: TWideStringField;
    cdsGetReport43ServiceHN: TWideStringField;
    cdsGetReport43ServiceSEQ: TWideStringField;
    cdsGetReport43ServiceDATE_SERV: TDateField;
    cdsGetReport43ServiceTIME_SERV: TTimeField;
    cdsGetReport43ServiceLOCATION: TWideStringField;
    cdsGetReport43ServiceINTIME: TWideStringField;
    cdsGetReport43ServiceINSTYPE: TWideStringField;
    cdsGetReport43ServiceINSID: TWideStringField;
    cdsGetReport43ServiceMAIN: TWideStringField;
    cdsGetReport43ServiceTYPEIN: TWideStringField;
    cdsGetReport43ServiceREFERINHOSP: TWideStringField;
    cdsGetReport43ServiceCAUSEIN: TWideStringField;
    cdsGetReport43ServiceCHIEFCOMP: TWideStringField;
    cdsGetReport43ServiceSERVPLACE: TWideStringField;
    cdsGetReport43ServiceBTEMP: TIntegerField;
    cdsGetReport43ServiceSBP: TIntegerField;
    cdsGetReport43ServiceDBP: TIntegerField;
    cdsGetReport43ServicePR: TIntegerField;
    cdsGetReport43ServiceRR: TIntegerField;
    cdsGetReport43ServiceTYPEOUT: TWideStringField;
    cdsGetReport43ServiceREFEROUTHOSP: TWideStringField;
    cdsGetReport43ServiceCAUSEOUT: TWideStringField;
    cdsGetReport43ServiceCOST: TIntegerField;
    cdsGetReport43ServicePRICE: TIntegerField;
    cdsGetReport43ServicePAYPRICE: TIntegerField;
    cdsGetReport43ServiceACTUALPAY: TIntegerField;
    cdsGetReport43ServiceD_UPDATE: TSQLTimeStampField;
    procedure GetFmtDate(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStRm1GetPDTRM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStAm1GetDDTAM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStAm1GetIDTAM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStYm1GetDDTYM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStYm1GetIDTYM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStIm2GetCT1IM2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStShpGetAMTSHPGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStRegGetAMTREGGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStRm1GetPATRM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlDT1CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlAC1CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlAC2CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlVA1CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetListSUMAMTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetDtlAM1FG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetDtlFAMFG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetDtlFU1FG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FAccMode : TActionMode;
    FSysTableMode : TActionMode;

    function GetDSProxy(): TDSSetupClient; inline;

  public

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property SetupProxy: TDSSetupClient read GetDSProxy;

    function StAccGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function SstmSam(msg: string): string;
    function HisGetReport43Person(PID: integer): Boolean;
    function HisGetReport43Service(PID: integer): Boolean;
    function HisSamUpdate(PID,CID,HOSPCODE, HID, PRENAME, NAME, LNAME, HN, SEX: string;BIRTH:double): Boolean;
    function HisInsUpdReport43Person(CID:string;REPORTID: integer;
      HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string; BIRTH: tdate;
      MSTATUS, OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION,
      EDUCATION, FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: string;
      MOVEIN: tdate; DISCHARGE: string; DDISCHARGE: tdate; ABOGROUP, RHGROUP,
      LABOR, PASSPORT, TYPEAREA: string; D_UPDATE,
      EXPORT_DATE: tdate): Boolean;

    function HISInsUpdPerson(CID: string; REPORTID: integer;
  HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string): Boolean;

    function SamInt():integer;


    function StCidGet(CRITERIA: string; ORDERFIELD: string; I_FMTCDE: string; I_CIDCDE: string): Boolean;
    function StCidInsUpd(STSCDE: string; FMTCDE: string; CIDCDE: string; CNOCDE: string; ENMCDE: string; TNMCDE: string; VA1CDE: Double; VA2CDE: Double; DT1CDE: Double; DT2CDE: Double; AC1CDE: string; AC2CDE: string; DESCDE: string; ABBCDE: string; ENTUSR: string): Boolean;
    function StCidDel(FMTCDE: string; CIDCDE: string; CNOCDE: string): Boolean;

    function StNb1Get(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;
    function StNb1BrnGenDoc(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string): Boolean;
    function StNB1InsUpd(STSNB1: string; CMPNB1: string; BRNNB1: string; DCDNB1: string; YARNB1: Integer; N01NB1: Integer; N02NB1: Integer; N03NB1: Integer; N04NB1: Integer; N05NB1: Integer; N06NB1: Integer; N07NB1: Integer; N08NB1: Integer; N09NB1: Integer; N10NB1: Integer; N11NB1: Integer; N12NB1: Integer; PR1NB1: string; PR2NB1: string): Boolean;
    function StNb1Del(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;

    function StVm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StVm1GetAddr(VNOVMA: string; LNKVMA: string): Boolean;
    function StVm1InsUpd(stsvm1: string; vnovm1: string; tnmvm1: string; enmvm1: string; cpsvm1: string; vtpvm1: string; accvm1: string; otpvm1: string; viavm1: string; psnvm1: string; taxvm1: string; ttxvm1: string; tpivm1: string; vpcvm1: Double; popvm1: string; papvm1: string; dopvm1: string; memvm1: string; md: string): Boolean;
    function StVmaInsUpd(vnovma: string; lnkvma: string; ta1vma: string; ta2vma: string; chgvma: string; ctyvma: string; zipvma: string; telvma: string; mobvma: string; faxvma: string; emavma: string; webvma: string): Boolean;
    function StVm1Del(VNOVM1: string): Boolean;

    function StVm1GetYm3(IVNOYM3: string): Boolean;
    function ttYm3Del(ICMPYm3: string; IBRNYm3: string; IVNOYm3: string): Boolean;
    function ttYm3InsUpd(stsYm3: string; cmpYm3: string; brnYm3: string; VnoYm3: string; crtYm3: Integer; crlYm3: Double; dsdym3: Integer; dsaym3: Double; bfiYm3: Double; minYm3: Double; mpyYm3: Double; mcmYm3: Double; mdnYm3: Double; mcnYm3: Double; majYm3: Double; mdsYm3: Double; mitYm3: Double; pdcYm3: Double; uncYm3: Double; cqrYm3: Double; adnYm3: Double; acnYm3: Double; apyYm3: Double; ypyYm3: Double; ypcYm3: Double): Boolean;
    function StVm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;

    function StCm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StCm1GetAddr(CNOCMA: string; LNKCMA: string): Boolean;
    function StCm1InsUpd(ICMPAM3: string; IBRNAM3: string; stscm1: string; typcm1: string; ctpcm1: string; cnocm1: string; tnmcm1: string; enmcm1: string; acccm1: string; taxcm1: string; cpscm1: string; ccmcm1: string; poscm1: string; ctlcm1: string; cmbcm1: string; cfacm1: string; cemcm1: string; viacm1: string; smncm1: string; pdpcm1: string; dopcm1: string; memcm1: string; md: string): Boolean;
    function StCmaInsUpd(cnocma: string; lnkcma: string; ta1cma: string; ta2cma: string; chgcma: string; ctycma: string; zipcma: string; telcma: string; mobcma: string; faxcma: string; emacma: string; webcma: string): Boolean;
    function StCm1Del(CNOCM1: string): Boolean;

    function StCm1GetAm3(ICNOAM3: string): Boolean;
    function ttAm3InsUpd(stsam3: string; cmpam3: string; brnam3: string; cnoam3: string; crtam3: Integer; crlam3: Double; bfiam3: Double; minam3: Double; mpyam3: Double; mcmam3: Double; mdnam3: Double; mcnam3: Double; majam3: Double; mdsam3: Double; mitam3: Double; pdcam3: Double; uncam3: Double; cqram3: Double; adnam3: Double; acnam3: Double; apyam3: Double; ypyam3: Double; ypcam3: Double): Boolean;
    function ttAm3Del(ICMPAM3: string; IBRNAM3: string; ICNOAM3: string): Boolean;
    function StCm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; ICTY: string): Boolean;

    function StPm1Get(CRITERIA: string; ORDERFIELD: string; ISRSPM1: string): Boolean;
    function StPm1InsUpd(stspm1: string; itcpm1: string; itnpm1: string; enmpm1: string; tnmpm1: string; mnmpm1: string; ut1pm1: string; ut2pm1: string; ue1pm1: string; ue2pm1: string; cvtpm1: Double; whspm1: string; md: string): Boolean;
    function StPm1InsUpd2(itnpm1: string; uc1pm1: Double; uc2pm1: Double; up1pm1: Double; up2pm1: Double; uf1pm1: Double; uf2pm1: Double; fampm1: Double; ct1pm1: Double; ct2pm1: Double; itspm1: string; brdpm1: string; srspm1: string; geapm1: string; caspm1: Integer; pwrpm1: Integer; stkpm1: string; dpcpm1: Integer; accpm1: string): Boolean;
    function StPm1Del(ITNPM1: string): Boolean;

    function StBgGet(I_YARBG: Integer; I_CMPBG: string; I_BRNBG: string; CRITERIA: string; ORDERFIELD: string; FLGBG: string): Boolean;
    function StBgInsUpd(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; q01bg2: Double; q02bg2: Double; q03bg2: Double; q04bg2: Double; q05bg2: Double; q06bg2: Double; q07bg2: Double; q08bg2: Double; q09bg2: Double; q10bg2: Double; q11bg2: Double; q12bg2: Double; md: string): Boolean;
    function StBgInsUpd2(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; a01bg2: Double; a02bg2: Double; a03bg2: Double; a04bg2: Double; a05bg2: Double; a06bg2: Double; a07bg2: Double; a08bg2: Double; a09bg2: Double; a10bg2: Double; a11bg2: Double; a12bg2: Double): Boolean;
    function StBgDel(FLGBG: string; YARBG2: string; CMPBG2: string; BRNBG2: string; ITNBG2: string; SMNBG2: string): Boolean;

    function StStyGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StStyInsUpd(STSSTY: string; SERSTY: string; CNOSTY: string; ENGSTY: string; ITNSTY: string; SRSSTY: string; COLSTY: string; MD: string): Boolean;
    function StStyDel(SERSTY: string): Boolean;

    function StShpGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StShpInsUpd(STSSHP: string; CNOSHP: string; SEQSHP: Integer; FBNSHP: string; TBNSHP: string; AMTSHP: Double; MD: string): Boolean;
    function StShpDel(CNOSHP: string; SEQSHP: Integer): Boolean;

    function StCm3Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StCm3InsUpd(stscm3: string; cmpcm3: string; brncm3: string; enmcm3: string; tnmcm3: string; ta1cm3: string; ta2cm3: string; tidcm3: string; MD: string): Boolean;
    function StCm3Del(CMPCM3: string; BRNCM3: string): Boolean;

    function StRm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StRm1InsUpd(stsrm1: string; cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: Integer; prvrm1: string; pdtrm1: Double; patrm1: Double; oatrm1: Double; avlrm1: string; narrm1: string; md: string): Boolean;
    function StRm1Del(cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: string; prvrm1: string): Boolean;

    function StRegGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StRegGetPm1(CNOREG: string; MD: string): Boolean;
    function StRegInsUpd(stsreg: string; cmpreg: string; brnreg: string; cnoreg: string; SeqREG: Integer; itnreg: string; amtreg: Double; othreg: Double; narreg: string; md: string): Boolean;
    function StRegDel(CMPREG: string; BRNREG: string; CNOREG: string; SEQREG: Integer): Boolean;

    function StAm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StAm1InsUpd(stsam1: string; cmpam1: string; brnam1: string; cnoam1: string; idtam1: Double; dnoam1: string; depam1: string; SERAM1: string; DDTAM1: Double; amtam1: Double; balam1: Double; MD: string): Boolean;
    function StAm1Del(yaram1: Integer; cmpam1: string; brnam1: string; cnoam1: string; dnoam1: string): Boolean;

    function StYm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StYm1InsUpd(stsYM1: string; DCDYM1: string; cmpYM1: string; brnYM1: string; VnoYM1: string; idtYM1: Double; dnoYM1: string; depYM1: string; ABTYM1: Double; VATYM1: string; AVTYM1: Double; POYM1: Integer; SERYM1: string; DDTYM1: Double; amtYM1: Double; balYM1: Double; MD: string): Boolean;
    function StYm1Del(yarYM1: Integer; cmpYM1: string; brnYM1: string; VnoYM1: string; dnoYM1: string): Boolean;

    function StZipGet(CRITERIA: string; ORDERFIELD: string): Boolean;

    function StPm1GetImage(ITNPM1: string): Boolean;
    function StPm1DelImage(ITNPM1: string): Boolean;

    function StIm2Get(CRITERIA: string; ORDERFIELD: string; IYARIM2: Integer; ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;
    function StIm2InsUpd(stsim2: string; cmpim2: string; brnim2: string; fwhim2: string; twhim2: string; itnim2: string; serim2: string; engim2: string; colim2: string; idtim2: Double; movim2: string; dcdim2: string; dnoim2: Int64; seqim2: Integer; depim2: string; desim2: string; qt1im2: Integer; qt2im2: Integer; ct1im2: Double; ct2im2: Double; at1im2: Double; at2im2: Double; uc1im2: Double; uc2im2: Double; up1im2: Double; up2im2: Double; md: string): Boolean;
    function StIm2Del(dnoim2: Int64): Boolean;

    function STIm1GetByItn(CRITERIA: string; ORDERFIELD: string; ITNIM1: string; COLIM1: string): Boolean;
    function StPm1GetByItc(CRITERIA: string; ORDERFIELD: string; ITCPM1: string): Boolean;

    function StRedCardGet(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;

    function StFg1GetList(CRITERIA: string; ORDERFIELD: string; IYAR: Integer; ICMP: string; IBRN: string): Boolean;
    function StFg1GetDtl(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
    function StFg1Del(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
    function StFg1InsUpd(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double; SEQFG1: Integer; FGDFG1: string; FCLFG1: string; FQ1FG1: Integer; FQ2FG1: Integer; FDSFG1: Double; FPAFG1: Double; FU1FG1: Double; FU2FG1: Double; FAMFG1: Double; ABBFG1: string; ENTUSR: string; md: string): Boolean;
    function StFg1GetUsed(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; ITRN: Double): Boolean;


    property AccMode: TActionMode read FAccMode write FAccMode;
    property SysTableMode: TActionMode read FSysTableMode write FSysTableMode;
  end;

var
  DSSetupDM: TDSSetupDM;

implementation

{$R *.dfm}

function TDSSetupDM.GetDSProxy(): TDSSetupClient;
begin
  Result := TDSSetupClient(DSProxy);
end;

procedure TDSSetupDM.GetFmtDate(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

function TDSSetupDM.HisGetReport43Person(PID: integer): Boolean;
begin
  result := SetupProxy.HisGetReport43Person(PID);
end;

function TDSSetupDM.HisGetReport43Service(PID: integer): Boolean;
begin
 result := SetupProxy.HisGetReport43Service(PID);
end;



function TDSSetupDM.HISInsUpdPerson(CID: string; REPORTID: integer;
  HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string): Boolean;
begin
//
end;

function TDSSetupDM.HisInsUpdReport43Person(CID:string;REPORTID: integer; HOSPCODE,
  PID, HID, PRENAME, NAME, LNAME, HN, SEX: string; BIRTH: tdate; MSTATUS,
  OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION, EDUCATION,
  FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: string; MOVEIN: tdate;
  DISCHARGE: string; DDISCHARGE: tdate; ABOGROUP, RHGROUP, LABOR, PASSPORT,
  TYPEAREA: string; D_UPDATE, EXPORT_DATE: tdate): Boolean;
begin
  result := SetupProxy.HisInsUpdReport43Person(CID,REPORTID, HOSPCODE,
  PID, HID, PRENAME, NAME, LNAME, HN, SEX, BIRTH,MSTATUS,
  OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION, EDUCATION,
  FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS,MOVEIN,
  DISCHARGE,DDISCHARGE, ABOGROUP, RHGROUP, LABOR, PASSPORT,
  TYPEAREA,D_UPDATE, EXPORT_DATE)
end;

function TDSSetupDM.HisSamUpdate(PID,CID,HOSPCODE, HID, PRENAME, NAME, LNAME, HN, SEX: string;BIRTH:double): Boolean;
begin
  result := SetupProxy.HisSamUpdate(PID,CID,HOSPCODE, HID, PRENAME, NAME, LNAME, HN, SEX,BIRTH);
end;

procedure TDSSetupDM.CdsStAm1GetDDTAM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSSetupDM.CdsStAm1GetIDTAM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSSetupDM.CdsStCdeGetDtlAC1CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
 
begin
    if Length(Sender.AsString) = 6 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,3)  
    else if Length(Sender.AsString) = 7 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,4)   
    else 
      Text := Sender.AsString;
  
end;

procedure TDSSetupDM.CdsStCdeGetDtlAC2CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
    if Length(Sender.AsString) = 6 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,3)  
    else if Length(Sender.AsString) = 7 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,4)   
    else
      Text := Sender.AsString;

end;

procedure TDSSetupDM.CdsStCdeGetDtlDT1CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSSetupDM.CdsStCdeGetDtlVA1CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsFloat > 0 then
    Text := FormatFloat('#,##0.00',Sender.AsFloat)
  else 
    Text := '';

end;

procedure TDSSetupDM.CdsStFg1GetDtlAM1FG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStFg1GetDtlFAMFG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStFg1GetDtlFU1FG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStFg1GetListSUMAMTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStIm2GetCT1IM2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStRegGetAMTREGGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStRm1GetPATRM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStRm1GetPDTRM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);
end;

procedure TDSSetupDM.CdsStShpGetAMTSHPGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSSetupDM.CdsStYm1GetDDTYM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSSetupDM.CdsStYm1GetIDTYM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

function TDSSetupDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSSetupClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSSetupDM.SamInt: integer;
begin
  result := SetupProxy.SamInt();
end;

function TDSSetupDM.SstmSam(msg: string): string;
begin
  result := SetupProxy.SstmSam(msg);
end;

function TDSSetupDM.StAccGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StAccGet(CRITERIA, ORDERFIELD);
end;

function TDSSetupDM.StCidGet(CRITERIA: string; ORDERFIELD: string; I_FMTCDE: string; I_CIDCDE: string): Boolean;
begin
  result := SetupProxy.StCidGet(CRITERIA, ORDERFIELD, I_FMTCDE, I_CIDCDE);
end;

function TDSSetupDM.StCidInsUpd(STSCDE: string; FMTCDE: string; CIDCDE: string; CNOCDE: string; ENMCDE: string; TNMCDE: string; VA1CDE: Double; VA2CDE: Double; DT1CDE: Double; DT2CDE: Double; AC1CDE: string; AC2CDE: string; DESCDE: string; ABBCDE: string; ENTUSR: string): Boolean;
begin
  result := SetupProxy.StCidInsUpd(STSCDE, FMTCDE, CIDCDE, CNOCDE, ENMCDE, TNMCDE, VA1CDE, VA2CDE, DT1CDE, DT2CDE, AC1CDE, AC2CDE, DESCDE, ABBCDE, ENTUSR) ;
end;

function TDSSetupDM.StCidDel(FMTCDE: string; CIDCDE: string; CNOCDE: string): Boolean;
begin
  result := SetupProxy.StCidDel(FMTCDE, CIDCDE, CNOCDE);
end;

function TDSSetupDM.StNb1Get(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;
begin
  result := SetupProxy.StNb1Get(I_YARNB1,I_CMPNB1, I_BRNNB1,I_DCDNB1);
end;

function TDSSetupDM.StNb1BrnGenDoc(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string): Boolean;
begin
  result := SetupProxy.StNb1BrnGenDoc(I_YARNB1,I_CMPNB1, I_BRNNB1);
end;

function TDSSetupDM.StNB1InsUpd(STSNB1: string; CMPNB1: string; BRNNB1: string; DCDNB1: string; YARNB1: Integer; N01NB1: Integer; N02NB1: Integer; N03NB1: Integer; N04NB1: Integer; N05NB1: Integer; N06NB1: Integer; N07NB1: Integer; N08NB1: Integer; N09NB1: Integer; N10NB1: Integer; N11NB1: Integer; N12NB1: Integer; PR1NB1: string; PR2NB1: string): Boolean;
begin
  result := SetupProxy.StNB1InsUpd(STSNB1, CMPNB1, BRNNB1,DCDNB1, YARNB1, N01NB1, N02NB1, N03NB1, N04NB1, N05NB1,N06NB1, N07NB1, N08NB1,N09NB1, N10NB1, N11NB1,N12NB1, PR1NB1, PR2NB1);
end;

function TDSSetupDM.StNb1Del(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;
begin
  result := SetupProxy.StNb1Del(I_YARNB1, I_CMPNB1, I_BRNNB1,I_DCDNB1);
end;

function TDSSetupDM.StVm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StVm1Get(CRITERIA, ORDERFIELD);
end;

function TDSSetupDM.StVm1GetAddr(VNOVMA: string; LNKVMA: string): Boolean;
begin
  result := SetupProxy.StVm1GetAddr(VNOVMA, LNKVMA);
end;

function TDSSetupDM.StVm1InsUpd(stsvm1: string; vnovm1: string; tnmvm1: string; enmvm1: string; cpsvm1: string; vtpvm1: string; accvm1: string; otpvm1: string; viavm1: string; psnvm1: string; taxvm1: string; ttxvm1: string; tpivm1: string; vpcvm1: Double; popvm1: string; papvm1: string; dopvm1: string; memvm1: string; md: string): Boolean;
begin
  result := SetupProxy.StVm1InsUpd(stsvm1,vnovm1,tnmvm1,enmvm1,cpsvm1,vtpvm1,accvm1,otpvm1,viavm1,psnvm1,taxvm1,
             ttxvm1,tpivm1,vpcvm1,popvm1,papvm1,dopvm1,memvm1,md);
end;

function TDSSetupDM.StVmaInsUpd(vnovma: string; lnkvma: string; ta1vma: string; ta2vma: string; chgvma: string; ctyvma: string; zipvma: string; telvma: string; mobvma: string; faxvma: string; emavma: string; webvma: string): Boolean;
begin
  result := SetupProxy.StVmaInsUpd(vnovma, lnkvma, ta1vma, ta2vma, chgvma, ctyvma, zipvma, telvma, mobvma, faxvma, emavma, webvma);
end;

function TDSSetupDM.StVm1Del(VNOVM1: string): Boolean;
begin
  result := SetupProxy.StVm1Del(VNOVM1);
end;

function TDSSetupDM.StVm1GetYm3(IVNOYM3: string): Boolean;
begin
  result := SetupProxy.StVm1GetYm3(IVNOYM3);
end;

function TDSSetupDM.ttYm3Del(ICMPYm3: string; IBRNYm3: string; IVNOYm3: string): Boolean;
begin
  result := SetupProxy.ttYm3Del(ICMPYm3,IBRNYm3,IVNOYm3);
end;

function TDSSetupDM.ttYm3InsUpd(stsYm3: string; cmpYm3: string; brnYm3: string; VnoYm3: string; crtYm3: Integer; crlYm3: Double; dsdym3: Integer; dsaym3: Double; bfiYm3: Double; minYm3: Double; mpyYm3: Double; mcmYm3: Double; mdnYm3: Double; mcnYm3: Double; majYm3: Double; mdsYm3: Double; mitYm3: Double; pdcYm3: Double; uncYm3: Double; cqrYm3: Double; adnYm3: Double; acnYm3: Double; apyYm3: Double; ypyYm3: Double; ypcYm3: Double): Boolean;
begin
  result := SetupProxy.ttYm3InsUpd(stsym3,cmpym3,brnym3,vnoym3,crtym3,crlym3,dsdym3,dsaym3,bfiym3,minym3,mpyym3,mcmym3,
            mdnym3,mcnym3,majym3,mdsym3,mitym3,pdcym3,uncym3,cqrym3,adnym3,acnym3,apyym3,ypyym3,ypcym3);
end;

function TDSSetupDM.StVm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;
begin
    result := SetupProxy.StVm1GetUsedBrn(CRITERIA,ORDERFIELD,ICMP,IBRN);
end;

function TDSSetupDM.StCm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StCm1Get(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StCm1GetAddr(CNOCMA: string; LNKCMA: string): Boolean;
begin
  result := SetupProxy.StCm1GetAddr(CNOCMA,LNKCMA);
end;

function TDSSetupDM.StCm1InsUpd(ICMPAM3: string; IBRNAM3: string; stscm1: string; typcm1: string; ctpcm1: string; cnocm1: string; tnmcm1: string; enmcm1: string; acccm1: string; taxcm1: string; cpscm1: string; ccmcm1: string; poscm1: string; ctlcm1: string; cmbcm1: string; cfacm1: string; cemcm1: string; viacm1: string; smncm1: string; pdpcm1: string; dopcm1: string; memcm1: string; md: string): Boolean;
begin
  result := SetupProxy.StCm1InsUpd(ICMPAM3,IBRNAM3,stscm1,typcm1,ctpcm1,cnocm1,tnmcm1,enmcm1,acccm1,taxcm1,cpscm1,ccmcm1,poscm1,ctlcm1,cmbcm1,cfacm1,cemcm1,viacm1,smncm1,pdpcm1,dopcm1,memcm1,md);
end;

function TDSSetupDM.StCmaInsUpd(cnocma: string; lnkcma: string; ta1cma: string; ta2cma: string; chgcma: string; ctycma: string; zipcma: string; telcma: string; mobcma: string; faxcma: string; emacma: string; webcma: string): Boolean;
begin
  result := SetupProxy.StCmaInsUpd(CnoCMA,lnkCMA,ta1CMA,ta2CMA,chgCMA,ctyCMA,zipCMA,telCMA,mobCMA,faxCMA,emaCMA,webCMA);
end;

function TDSSetupDM.StCm1Del(CNOCM1: string): Boolean;
begin
  result := SetupProxy.StCm1Del(CNOCM1);
end;

function TDSSetupDM.StCm1GetAm3(ICNOAM3: string): Boolean;
begin
  result := SetupProxy.StCm1GetAm3(ICNOAM3);
end;

function TDSSetupDM.ttAm3InsUpd(stsam3: string; cmpam3: string; brnam3: string; cnoam3: string; crtam3: Integer; crlam3: Double; bfiam3: Double; minam3: Double; mpyam3: Double; mcmam3: Double; mdnam3: Double; mcnam3: Double; majam3: Double; mdsam3: Double; mitam3: Double; pdcam3: Double; uncam3: Double; cqram3: Double; adnam3: Double; acnam3: Double; apyam3: Double; ypyam3: Double; ypcam3: Double): Boolean;
begin
  result := SetupProxy.ttAm3InsUpd(stsam3,cmpam3,brnam3,cnoam3,
            crtam3,crlam3,bfiam3,minam3,mpyam3,mcmam3,mdnam3,mcnam3,majam3,
            mdsam3,mitam3,pdcam3,uncam3,cqram3,adnam3,acnam3,apyam3,ypyam3,ypcam3);
end;

function TDSSetupDM.ttAm3Del(ICMPAM3: string; IBRNAM3: string; ICNOAM3: string): Boolean;
begin
  result := SetupProxy.ttAm3Del(ICMPAM3,IBRNAM3,ICNOAM3);
end;

function TDSSetupDM.StCm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; ICTY: string): Boolean;
begin
    result := SetupProxy.StCm1GetUsedBrn(CRITERIA,ORDERFIELD,ICMP,IBRN,ICTY);
end;

function TDSSetupDM.StPm1Get(CRITERIA: string; ORDERFIELD: string; ISRSPM1: string): Boolean;
begin
  result := SetupProxy.StPm1Get(CRITERIA,ORDERFIELD,ISRSPM1);
end;

function TDSSetupDM.StPm1InsUpd(stspm1: string; itcpm1: string; itnpm1: string; enmpm1: string; tnmpm1: string; mnmpm1: string; ut1pm1: string; ut2pm1: string; ue1pm1: string; ue2pm1: string; cvtpm1: Double; whspm1: string; md: string): Boolean;
begin
   result := SetupProxy.StPm1InsUpd(stspm1,itcpm1,itnpm1,enmpm1,tnmpm1,mnmpm1,ut1pm1,ut2pm1,ue1pm1,ue2pm1,cvtpm1,whspm1,md);
end;

function TDSSetupDM.StPm1InsUpd2(itnpm1: string; uc1pm1: Double; uc2pm1: Double; up1pm1: Double; up2pm1: Double; uf1pm1: Double; uf2pm1: Double; fampm1: Double; ct1pm1: Double; ct2pm1: Double; itspm1: string; brdpm1: string; srspm1: string; geapm1: string; caspm1: Integer; pwrpm1: Integer; stkpm1: string; dpcpm1: Integer; accpm1: string): Boolean;
begin
   result := SetupProxy.StPm1InsUpd2(itnpm1,uc1pm1,uc2pm1,up1pm1,up2pm1,uf1pm1,uf2pm1,fampm1,ct1pm1,ct2pm1,itspm1,brdpm1,srspm1,geapm1,caspm1,pwrpm1,stkpm1,dpcpm1,accpm1);
end;

function TDSSetupDM.StPm1Del(ITNPM1: string): Boolean;
begin
  result := SetupProxy.StPm1Del(ITNPM1);
end;

function TDSSetupDM.StBgGet(I_YARBG: Integer; I_CMPBG: string; I_BRNBG: string; CRITERIA: string; ORDERFIELD: string; FLGBG: string): Boolean;
begin
  result := SetupProxy.StBgGet(I_YARBG,I_CMPBG,I_BRNBG,CRITERIA,ORDERFIELD,FLGBG);
end;

function TDSSetupDM.StBgInsUpd(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; q01bg2: Double; q02bg2: Double; q03bg2: Double; q04bg2: Double; q05bg2: Double; q06bg2: Double; q07bg2: Double; q08bg2: Double; q09bg2: Double; q10bg2: Double; q11bg2: Double; q12bg2: Double; md: string): Boolean;
begin
  result := SetupProxy.StBgInsUpd(flgbg,stsbg2,yarbg2,cmpbg2,brnbg2,itnbg2,smnbg2,q01bg2,q02bg2,q03bg2,q04bg2,q05bg2,q06bg2,q07bg2,q08bg2,q09bg2,q10bg2,q11bg2,q12bg2,md);
end;

function TDSSetupDM.StBgInsUpd2(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; a01bg2: Double; a02bg2: Double; a03bg2: Double; a04bg2: Double; a05bg2: Double; a06bg2: Double; a07bg2: Double; a08bg2: Double; a09bg2: Double; a10bg2: Double; a11bg2: Double; a12bg2: Double): Boolean;
begin
  result := SetupProxy.StBgInsUpd2(flgbg,stsbg2,yarbg2,cmpbg2,brnbg2,itnbg2,smnbg2,a01bg2,a02bg2,a03bg2,a04bg2,a05bg2,a06bg2,a07bg2,a08bg2,a09bg2,a10bg2,a11bg2,a12bg2);
end;

function TDSSetupDM.StBgDel(FLGBG: string; YARBG2: string; CMPBG2: string; BRNBG2: string; ITNBG2: string; SMNBG2: string): Boolean;
begin
  result := SetupProxy.StBgDel(FLGBG,YARBG2,CMPBG2,BRNBG2,ITNBG2,SMNBG2);
end;

function TDSSetupDM.StStyGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StStyGet(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StStyInsUpd(STSSTY: string; SERSTY: string; CNOSTY: string; ENGSTY: string; ITNSTY: string; SRSSTY: string; COLSTY: string; MD: string): Boolean;
begin
  result := SetupProxy.StStyInsUpd(STSSTY, SERSTY ,CNOSTY ,ENGSTY ,ITNSTY ,SRSSTY,COLSTY ,MD);
end;

function TDSSetupDM.StStyDel(SERSTY: string): Boolean;
begin
  result := SetupProxy.StStyDel(SERSTY);
end;

function TDSSetupDM.StShpGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StShpGet(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StShpInsUpd(STSSHP: string; CNOSHP: string; SEQSHP: Integer; FBNSHP: string; TBNSHP: string; AMTSHP: Double; MD: string): Boolean;
begin
  result := SetupProxy.StShpInsUpd(STSSHP, CNOSHP ,SEQSHP ,FBNSHP ,TBNSHP ,AMTSHP,MD);
end;

function TDSSetupDM.StShpDel(CNOSHP: string; SEQSHP: Integer): Boolean;
begin
  result := SetupProxy.StShpDel(CNOSHP,SEQSHP);
end;

function TDSSetupDM.StCm3Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StCm3Get(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StCm3InsUpd(stscm3: string; cmpcm3: string; brncm3: string; enmcm3: string; tnmcm3: string; ta1cm3: string; ta2cm3: string; tidcm3: string; MD: string): Boolean;
begin
  result := SetupProxy.StCm3InsUpd(stscm3,cmpcm3,brncm3,enmcm3,tnmcm3,ta1cm3,ta2cm3,tidcm3,md);
end;

function TDSSetupDM.StCm3Del(CMPCM3: string; BRNCM3: string): Boolean;
begin
  result := SetupProxy.StCm3Del(CMPCM3,BRNCM3);
end;

function TDSSetupDM.StRm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StRm1Get(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StRm1InsUpd(stsrm1: string; cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: Integer; prvrm1: string; pdtrm1: Double; patrm1: Double; oatrm1: Double; avlrm1: string; narrm1: string; md: string): Boolean;
begin
  result := SetupProxy.StRm1InsUpd(stsrm1,cmprm1,brnrm1,regrm1,rgnrm1,prvrm1,pdtrm1,patrm1,oatrm1,avlrm1,narrm1,md);
end;

function TDSSetupDM.StRm1Del(cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: string; prvrm1: string): Boolean;
begin
  result := SetupProxy.StRm1Del(cmprm1,brnrm1,regrm1,rgnrm1,prvrm1);
end;

function TDSSetupDM.StRegGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StRegGet(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StRegGetPm1(CNOREG: string; MD: string): Boolean;
begin
  result := SetupProxy.StRegGetPm1(CNOREG,MD);
end;

function TDSSetupDM.StRegInsUpd(stsreg: string; cmpreg: string; brnreg: string; cnoreg: string; SeqREG: Integer; itnreg: string; amtreg: Double; othreg: Double; narreg: string; md: string): Boolean;
begin
  result := SetupProxy.StRegInsUpd(stsreg,cmpreg,brnreg,cnoreg,SEqREG,itnreg,amtreg,othreg,narreg,md);
end;

function TDSSetupDM.StRegDel(CMPREG: string; BRNREG: string; CNOREG: string; SEQREG: Integer): Boolean;
begin
  result := SetupProxy.StRegDel(CMPREG,BRNREG,CNOREG,SEQREG);
end;

function TDSSetupDM.StAm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StAm1Get(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StAm1InsUpd(stsam1: string; cmpam1: string; brnam1: string; cnoam1: string; idtam1: Double; dnoam1: string; depam1: string; SERAM1: string; DDTAM1: Double; amtam1: Double; balam1: Double; MD: string): Boolean;
begin
  result := SetupProxy.StAm1InsUpd(stsam1,cmpam1,brnam1,cnoam1,idtam1,dnoam1,depam1,SERAM1,DDTAM1 ,amtam1,balam1,md);
end;

function TDSSetupDM.StAm1Del(yaram1: Integer; cmpam1: string; brnam1: string; cnoam1: string; dnoam1: string): Boolean;
begin
  result := SetupProxy.StAm1Del(yaram1,cmpam1,brnam1,cnoam1,dnoam1);
end;

function TDSSetupDM.StYm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StYm1Get(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StYm1InsUpd(stsYM1: string; DCDYM1: string; cmpYM1: string; brnYM1: string; VnoYM1: string; idtYM1: Double; dnoYM1: string; depYM1: string; ABTYM1: Double; VATYM1: string; AVTYM1: Double; POYM1: Integer; SERYM1: string; DDTYM1: Double; amtYM1: Double; balYM1: Double; MD: string): Boolean;
begin
  result := SetupProxy.StYm1InsUpd(stsym1,DCDYM1,cmpym1,brnym1,vnoym1,idtym1,dnoym1,depym1,ABTYM1,VATYM1,AVTYM1,POYM1,SERym1,DDTym1 ,amtym1,balym1,md);
end;

function TDSSetupDM.StYm1Del(yarYM1: Integer; cmpYM1: string; brnYM1: string; VnoYM1: string; dnoYM1: string): Boolean;
begin
  result := SetupProxy.StYm1Del(yarym1,cmpym1,brnym1,vnoym1,dnoym1);
end;

function TDSSetupDM.StZipGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  result := SetupProxy.StZipGet(CRITERIA,ORDERFIELD);
end;

function TDSSetupDM.StPm1GetImage(ITNPM1: string): Boolean;
begin
   result := SetupProxy.StPm1GetImage(ITNPM1);
end;

function TDSSetupDM.StPm1DelImage(ITNPM1: string): Boolean;
begin
   result := SetupProxy.StPm1DelImage(ITNPM1);
end;

function TDSSetupDM.StIm2Get(CRITERIA: string; ORDERFIELD: string; IYARIM2: Integer; ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;
begin
   result := SetupProxy.StIm2Get(CRITERIA,ORDERFIELD,IYARIM2,ICMPIM2,IBRNIM2,IDCDIM2);
end;

function TDSSetupDM.StIm2InsUpd(stsim2: string; cmpim2: string; brnim2: string; fwhim2: string; twhim2: string; itnim2: string; serim2: string; engim2: string; colim2: string; idtim2: Double; movim2: string; dcdim2: string; dnoim2: Int64; seqim2: Integer; depim2: string; desim2: string; qt1im2: Integer; qt2im2: Integer; ct1im2: Double; ct2im2: Double; at1im2: Double; at2im2: Double; uc1im2: Double; uc2im2: Double; up1im2: Double; up2im2: Double; md: string): Boolean;
begin
   result := SetupProxy.StIm2InsUpd(stsim2,cmpim2,brnim2,fwhim2,twhim2,itnim2,
              serim2,engim2,colim2,idtim2,movim2,dcdim2,dnoim2,seqim2,depim2,desim2,
              qt1im2,qt2im2,ct1im2,ct2im2,at1im2,at2im2,uc1im2,uc2im2,up1im2,up2im2,md);
end;

function TDSSetupDM.StIm2Del(dnoim2: Int64): Boolean;
begin
   result := SetupProxy.StIm2Del(dnoim2);
end;

function TDSSetupDM.STIm1GetByItn(CRITERIA: string; ORDERFIELD: string; ITNIM1: string; COLIM1: string): Boolean;
begin
  result := SetupProxy.STIm1GetByItn(CRITERIA,ORDERFIELD,ITNIM1,COLIM1);
end;

function TDSSetupDM.StPm1GetByItc(CRITERIA: string; ORDERFIELD: string; ITCPM1: string): Boolean;
begin
  result := SetupProxy.StPm1GetByItc(CRITERIA,ORDERFIELD,ITCPM1);
end;

function TDSSetupDM.StRedCardGet(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;
begin
  result := SetupProxy.StRedCardGet(CRITERIA,ORDERFIELD,ICMP,IBRN);
end;

function TDSSetupDM.StFg1GetList(CRITERIA: string; ORDERFIELD: string; IYAR: Integer; ICMP: string; IBRN: string): Boolean;
begin
  result := SetupProxy.StFg1GetList(CRITERIA,ORDERFIELD,IYAR,ICMP,IBRN);
end;

function TDSSetupDM.StFg1GetDtl(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
begin
  result := SetupProxy.StFg1GetDtl(IYAR,ICMP,IBRN,IPRD,IFDT,ITDT);
end;

function TDSSetupDM.StFg1Del(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
begin
  result := SetupProxy.StFg1Del(IYAR,ICMP,IBRN,IPRD,IFDT,ITDT);
end;

function TDSSetupDM.StFg1InsUpd(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double; SEQFG1: Integer; FGDFG1: string; FCLFG1: string;
  FQ1FG1: Integer; FQ2FG1: Integer; FDSFG1: Double; FPAFG1: Double; FU1FG1: Double; FU2FG1: Double; FAMFG1: Double; ABBFG1: string; ENTUSR: string; md: string): Boolean;
begin
  result := SetupProxy.StFg1InsUpd(IYAR,ICMP,IBRN,IPRD,IFDT,ITDT,SEQFG1,FGDFG1,FCLFG1,
  FQ1FG1,FQ2FG1,FDSFG1,FPAFG1,FU1FG1,FU2FG1, FAMFG1, ABBFG1,ENTUSR,md);
end;

function TDSSetupDM.StFg1GetUsed(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; ITRN: Double): Boolean;
begin
  result := SetupProxy.StFg1GetUsed(IYAR,ICMP,IBRN,IPRD,ITRN);
end;

end.
