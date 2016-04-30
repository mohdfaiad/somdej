unit DSCarsaleIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, DSCarsaleIntf, SqlExpr,
  DBXDataSnap, DBXCommon, DBXPool, frxClass, frxDBSet, frxExportPDF, frxRich,
  IndyPeerImpl, DSSetupIntfDM;

type
  TDSCarsaleDM = class(TDSMainDM)
    CdsMtCsmGet: TClientDataSet;
    CdsMtCsmGetCMPCSM: TStringField;
    CdsMtCsmGetBRNCSM: TStringField;
    CdsMtCsmGetCTYCSM: TStringField;
    CdsMtCsmGetCCNCSM: TLargeintField;
    CdsMtCsmGetPRECSM: TStringField;
    CdsMtCsmGetFNMCSM: TStringField;
    CdsMtCsmGetLNMCSM: TStringField;
    CdsMtCsmGetSEXCSM: TStringField;
    CdsMtCsmGetSSMCSM: TStringField;
    CdsMtCsmGetBDTCSM: TDateField;
    CdsMtCsmGetNTNCSM: TStringField;
    CdsMtCsmGetNTVCSM: TStringField;
    CdsMtCsmGetRELCSM: TStringField;
    CdsMtCsmGetSTACSM: TStringField;
    CdsMtCsmGetCPNCSM: TStringField;
    CdsMtCsmGetCPSCSM: TStringField;
    CdsMtCsmGetCBNCSM: TDateField;
    CdsMtCsmGetCPWCSM: TStringField;
    CdsMtCsmGetCINCSM: TFMTBCDField;
    CdsMtCsmGetCCHCSM: TIntegerField;
    CdsMtCsmGetHTPCSM: TStringField;
    CdsMtCsmGetPBTCSM: TStringField;
    CdsMtCsmGetPSTCSM: TStringField;
    CdsMtCsmGetBUSCSM: TStringField;
    CdsMtCsmGetSALCSM: TFMTBCDField;
    CdsMtCsmGetBONCSM: TFMTBCDField;
    CdsMtCsmGetOTHCSM: TFMTBCDField;
    CdsMtCsmGetEXPCSM: TFMTBCDField;
    CdsMtCsmGetPCMCSM: TStringField;
    CdsMtCsmGetHDTCSM: TDateField;
    CdsMtCsmGetPDPCSM: TStringField;
    CdsMtCsmGetDOPCSM: TStringField;
    CdsMtCsmGetENTUSR: TStringField;
    CdsMtCsmGetENTDTE: TSQLTimeStampField;
    CdsMtCsmGetEDTUSR: TStringField;
    CdsMtCsmGetEDTDTE: TSQLTimeStampField;
    CdsMtCsmGetAddr01: TClientDataSet;
    CdsMtCsmGetAddr01TA1CSM: TStringField;
    CdsMtCsmGetAddr01TA2CSM: TStringField;
    CdsMtCsmGetAddr01CHGCSM: TStringField;
    CdsMtCsmGetAddr01CTYCSM: TStringField;
    CdsMtCsmGetAddr01ZIPCSM: TStringField;
    CdsMtCsmGetAddr01TELCSM: TStringField;
    CdsMtCsmGetAddr01MOBCSM: TStringField;
    CdsMtCsmGetAddr01FAXCSM: TStringField;
    CdsMtCsmGetAddr01EMACSM: TStringField;
    CdsMtCsmGetAddr01WEBCSM: TStringField;
    CdsMtCsmGetCard: TClientDataSet;
    CdsMtCsmGetCardCCNCSI: TLargeintField;
    CdsMtCsmGetCardCDCCSI: TStringField;
    CdsMtCsmGetCardTNMCDC: TStringField;
    CdsMtCsmGetCardCDNCSI: TStringField;
    CdsMtCsmGetCardISDCSI: TDateField;
    CdsMtCsmGetCardEPDCSI: TDateField;
    CdsMtCsmGetCardISWCSI: TStringField;
    CdsMtCsmGetAddr02: TClientDataSet;
    CdsMtCsmGetAddr03: TClientDataSet;
    CdsMtCsmGetAddr04: TClientDataSet;
    CdsMtCsmGetAddr02TA1CSM: TStringField;
    CdsMtCsmGetAddr02TA2CSM: TStringField;
    CdsMtCsmGetAddr02CHGCSM: TStringField;
    CdsMtCsmGetAddr02CTYCSM: TStringField;
    CdsMtCsmGetAddr02ZIPCSM: TStringField;
    CdsMtCsmGetAddr02TELCSM: TStringField;
    CdsMtCsmGetAddr02MOBCSM: TStringField;
    CdsMtCsmGetAddr02FAXCSM: TStringField;
    CdsMtCsmGetAddr02EMACSM: TStringField;
    CdsMtCsmGetAddr02WEBCSM: TStringField;
    CdsMtCsmGetAddr03TA1CSM: TStringField;
    CdsMtCsmGetAddr03TA2CSM: TStringField;
    CdsMtCsmGetAddr03CHGCSM: TStringField;
    CdsMtCsmGetAddr03CTYCSM: TStringField;
    CdsMtCsmGetAddr03ZIPCSM: TStringField;
    CdsMtCsmGetAddr03TELCSM: TStringField;
    CdsMtCsmGetAddr03MOBCSM: TStringField;
    CdsMtCsmGetAddr03FAXCSM: TStringField;
    CdsMtCsmGetAddr03EMACSM: TStringField;
    CdsMtCsmGetAddr03WEBCSM: TStringField;
    CdsMtCsmGetAddr04TA1CSM: TStringField;
    CdsMtCsmGetAddr04TA2CSM: TStringField;
    CdsMtCsmGetAddr04CHGCSM: TStringField;
    CdsMtCsmGetAddr04CTYCSM: TStringField;
    CdsMtCsmGetAddr04ZIPCSM: TStringField;
    CdsMtCsmGetAddr04TELCSM: TStringField;
    CdsMtCsmGetAddr04MOBCSM: TStringField;
    CdsMtCsmGetAddr04FAXCSM: TStringField;
    CdsMtCsmGetAddr04EMACSM: TStringField;
    CdsMtCsmGetAddr04WEBCSM: TStringField;
    CdsMtCsmGetCFGCSM: TStringField;
    CdsMtCsmGetMEMCSM: TStringField;
    CdsMtCsmGetCDNCSI: TStringField;
    CdsMtCsmGetFULLNAME: TStringField;
    CdsMtAppGetList: TClientDataSet;
    CdsMtAppGetListSTSOT5: TStringField;
    CdsMtAppGetListYAROT5: TIntegerField;
    CdsMtAppGetListCMPOT5: TStringField;
    CdsMtAppGetListBRNOT5: TStringField;
    CdsMtAppGetListDEPOT5: TStringField;
    CdsMtAppGetListDCDOT5: TStringField;
    CdsMtAppGetListDNOOT5: TIntegerField;
    CdsMtAppGetListSEQOT5: TSmallintField;
    CdsMtAppGetListIDTOT5: TDateField;
    CdsMtAppGetListSMNOT5: TStringField;
    CdsMtAppGetListCNOOT5: TLargeintField;
    CdsMtAppGetListFULLNAME: TStringField;
    CdsMtAppGetListITNPM1: TStringField;
    CdsMtAppGetListTNMPM1: TStringField;
    CdsMtAppGetListTNMCOL: TStringField;
    CdsMtAppGetListSEROT5: TStringField;
    CdsMtAppGetListSTPOT5: TStringField;
    CdsMtAppGetListEPDOT5: TDateField;
    CdsMtAppGetListASDOT5: TDateField;
    CdsMtAppGet: TClientDataSet;
    CdsMtAppGetAccessory: TClientDataSet;
    CdsMtAppGetCard: TClientDataSet;
    CdsMtAppGetEXP: TClientDataSet;
    CdsMtAppGetSTSOT5: TStringField;
    CdsMtAppGetYAROT5: TIntegerField;
    CdsMtAppGetCMPOT5: TStringField;
    CdsMtAppGetBRNOT5: TStringField;
    CdsMtAppGetDCDOT5: TStringField;
    CdsMtAppGetDNOOT5: TIntegerField;
    CdsMtAppGetSEQOT5: TSmallintField;
    CdsMtAppGetIDTOT5: TDateField;
    CdsMtAppGetDEPOT5: TStringField;
    CdsMtAppGetCNOOT5: TLargeintField;
    CdsMtAppGetCTYOT5: TSmallintField;
    CdsMtAppGetCRTOT5: TIntegerField;
    CdsMtAppGetSMNOT5: TStringField;
    CdsMtAppGetPNOOT5: TStringField;
    CdsMtAppGetRPDOT5: TDateField;
    CdsMtAppGetRSNOT5: TStringField;
    CdsMtAppGetRSDOT5: TDateField;
    CdsMtAppGetPSTOT5: TStringField;
    CdsMtAppGetBRKOT5: TStringField;
    CdsMtAppGetGNOOT5: TStringField;
    CdsMtAppGetCYTOT5: TStringField;
    CdsMtAppGetCYROT5: TFMTBCDField;
    CdsMtAppGetWHSOT5: TStringField;
    CdsMtAppGetRDYOT5: TStringField;
    CdsMtAppGetPRCOT5: TStringField;
    CdsMtAppGetPTYOT5: TStringField;
    CdsMtAppGetPRDOT5: TStringField;
    CdsMtAppGetCOLOT5: TStringField;
    CdsMtAppGetSEROT5: TStringField;
    CdsMtAppGetENGOT5: TStringField;
    CdsMtAppGetUSEOT5: TStringField;
    CdsMtAppGetBNOOT5: TStringField;
    CdsMtAppGetKEYOT5: TStringField;
    CdsMtAppGetQO1OT5: TIntegerField;
    CdsMtAppGetQO2OT5: TIntegerField;
    CdsMtAppGetPDCOT5: TFMTBCDField;
    CdsMtAppGetPDAOT5: TFMTBCDField;
    CdsMtAppGetUP1OT5: TFMTBCDField;
    CdsMtAppGetUP2OT5: TFMTBCDField;
    CdsMtAppGetNETOT5: TFMTBCDField;
    CdsMtAppGetPPYOT5: TFMTBCDField;
    CdsMtAppGetTAXOT5: TFMTBCDField;
    CdsMtAppGetSTPOT5: TStringField;
    CdsMtAppGetFCDOT5: TStringField;
    CdsMtAppGetDWTOT5: TFMTBCDField;
    CdsMtAppGetNLEOT5: TIntegerField;
    CdsMtAppGetRATOT5: TFMTBCDField;
    CdsMtAppGetPMMOT5: TFMTBCDField;
    CdsMtAppGetCM1OT5: TFMTBCDField;
    CdsMtAppGetCM2OT5: TFMTBCDField;
    CdsMtAppGetAPCOT5: TFMTBCDField;
    CdsMtAppGetAFEOT5: TFMTBCDField;
    CdsMtAppGetDDTOT5: TDateField;
    CdsMtAppGetAPPOT5: TStringField;
    CdsMtAppGetAPNOT5: TIntegerField;
    CdsMtAppGetAPDOT5: TDateField;
    CdsMtAppGetREJOT5: TStringField;
    CdsMtAppGetICDOT5: TStringField;
    CdsMtAppGetCN1OT5: TStringField;
    CdsMtAppGetITSOT5: TFMTBCDField;
    CdsMtAppGetSDTOT5: TDateField;
    CdsMtAppGetEDTOT5: TDateField;
    CdsMtAppGetISDOT5: TStringField;
    CdsMtAppGetIVSOT5: TFMTBCDField;
    CdsMtAppGetINTOT5: TFMTBCDField;
    CdsMtAppGetBDTOT5: TDateField;
    CdsMtAppGetAccessorySTSOT6: TStringField;
    CdsMtAppGetAccessoryYAROT6: TIntegerField;
    CdsMtAppGetAccessoryCMPOT6: TStringField;
    CdsMtAppGetAccessoryBRNOT6: TStringField;
    CdsMtAppGetAccessoryDCDOT6: TStringField;
    CdsMtAppGetAccessoryDNOOT6: TIntegerField;
    CdsMtAppGetAccessorySEQOT6: TSmallintField;
    CdsMtAppGetAccessoryFGDOT6: TStringField;
    CdsMtAppGetAccessoryFRDOT6: TStringField;
    CdsMtAppGetAccessoryFSROT6: TStringField;
    CdsMtAppGetAccessoryTNMPM1: TStringField;
    CdsMtAppGetAccessoryFWHOT6: TStringField;
    CdsMtAppGetAccessoryFPDOT6: TStringField;
    CdsMtAppGetAccessoryFCLOT6: TStringField;
    CdsMtAppGetAccessoryFQ1OT6: TIntegerField;
    CdsMtAppGetAccessoryFQ2OT6: TIntegerField;
    CdsMtAppGetAccessoryTDSOT6: TStringField;
    CdsMtAppGetAccessoryFDSOT6: TFMTBCDField;
    CdsMtAppGetAccessoryFU1OT6: TFMTBCDField;
    CdsMtAppGetAccessoryFU2OT6: TFMTBCDField;
    CdsMtAppGetAccessoryPRTOT6: TStringField;
    CdsMtAppGetAccessoryABBOT6: TStringField;
    CdsMtAppGetCardSTSOMI: TStringField;
    CdsMtAppGetCardYAROMI: TIntegerField;
    CdsMtAppGetCardCMPOMI: TStringField;
    CdsMtAppGetCardBRNOMI: TStringField;
    CdsMtAppGetCardDCDOMI: TStringField;
    CdsMtAppGetCardDNOOMI: TIntegerField;
    CdsMtAppGetCardCNOOMI: TLargeintField;
    CdsMtAppGetCardCDCOMI: TStringField;
    CdsMtAppGetCardTNMCDC: TStringField;
    CdsMtAppGetCardRDTOMI: TDateField;
    CdsMtAppGetCardRTMOMI: TStringField;
    CdsMtAppGetCardPSNOMI: TStringField;
    CdsMtAppGetCardFLGOMI: TStringField;
    CdsMtAppGetEXPSTSEXP: TStringField;
    CdsMtAppGetEXPYAREXP: TIntegerField;
    CdsMtAppGetEXPCMPEXP: TStringField;
    CdsMtAppGetEXPBRNEXP: TStringField;
    CdsMtAppGetEXPDCDEXP: TStringField;
    CdsMtAppGetEXPDNOEXP: TIntegerField;
    CdsMtAppGetEXPSEQEXP: TSmallintField;
    CdsMtAppGetEXPCDCEXP: TStringField;
    CdsMtAppGetEXPTNMCDC: TStringField;
    CdsMtAppGetEXPAMTEXP: TFMTBCDField;
    CdsMtAppGetEXPTP1EXP: TStringField;
    CdsMtAppGetEXPTP2EXP: TStringField;
    CdsMtAppGetEXPDCREXP: TStringField;
    CdsMtAppGetDown: TClientDataSet;
    CdsMtAppGetFollowup: TClientDataSet;
    CdsMtAppGetFollowupSTSOM8: TStringField;
    CdsMtAppGetFollowupYAROM8: TIntegerField;
    CdsMtAppGetFollowupCMPOM8: TStringField;
    CdsMtAppGetFollowupBRNOM8: TStringField;
    CdsMtAppGetFollowupDCDOM8: TStringField;
    CdsMtAppGetFollowupDNOOM8: TIntegerField;
    CdsMtAppGetFollowupSEQOM8: TSmallintField;
    CdsMtAppGetFollowupOCDOM8: TStringField;
    CdsMtAppGetFollowupODTOM8: TDateField;
    CdsMtAppGetFollowupPSNOM8: TFMTBCDField;
    CdsMtCsmGetTNMSTA: TStringField;
    CdsMtCsmGetTNMCTY: TStringField;
    CdsMtCsmGetSTSCSM: TStringField;
    CdsMtAppGetCardTNMPSN: TStringField;
    CdsMtAppGetEXPTNMTP1: TStringField;
    CdsMtAppGetEXPTNMTP2: TStringField;
    CdsMtAppGetAccessoryAM1OT6: TFloatField;
    CdsMtAppGetAccessoryAM2OT6: TFloatField;
    CdsMtAppGetAccessoryAMTOT6: TFloatField;
    CdsMtAppGetAccessoryNETOT6: TFloatField;
    CdsMtAppGetAccessoryFP1OT6: TFMTBCDField;
    CdsMtAppGetAccessoryFP2OT6: TFMTBCDField;
    CdsMtAppGetAccessoryFP3OT6: TFMTBCDField;
    CdsMtAppGetAccessoryFP4OT6: TFMTBCDField;
    CdsMtAppGetAccessoryFPAOT6: TFMTBCDField;
    CdsMtAppGetTNMCSM: TStringField;
    CdsMtAppGetTNMBRK: TStringField;
    CdsMtAppGetTELBRK: TStringField;
    CdsMtAppGetTNMGNO: TStringField;
    CdsMtAppGetTELGNO: TStringField;
    CdsMtAppGetTNMWHS: TStringField;
    CdsMtAppGetSRSPM1: TStringField;
    CdsMtAppGetMNMPM1: TStringField;
    CdsMtAppGetFAMPM1: TFMTBCDField;
    CdsMtAppGetTNMPM1: TStringField;
    CdsMtAppGetDNOYM1: TStringField;
    CdsMtAppGetIDTYM1: TDateField;
    CdsMtAppGetTNMFCD: TStringField;
    CdsMtAppGetESDOT5: TStringField;
    CdsMtAppGetTNMICD: TStringField;
    CdsMtAppGetTNMISD: TStringField;
    CdsMtAppGetFDTOT5: TDateField;
    CdsMtAppGetRDTOT5: TDateField;
    CdsMtAppGetINOOT5: TStringField;
    CdsMtAppGetPSROT5: TStringField;
    CdsMtAppGetPAYOT5: TStringField;
    CdsMtAppGetEXDOT5: TDateField;
    CdsMtAppGetPLCOT5: TStringField;
    CdsMtAppGetTMDOT5: TStringField;
    CdsMtAppGetEPDOT5: TDateField;
    CdsMtAppGetEPTOT5: TStringField;
    CdsMtAppGetEPSOT5: TStringField;
    CdsMtAppGetMEMOT5: TStringField;
    CdsMtAppGetENTUSR: TStringField;
    CdsMtAppGetENTDTE: TSQLTimeStampField;
    CdsMtAppGetEDTUSR: TStringField;
    CdsMtAppGetEDTDTE: TSQLTimeStampField;
    CdsMtAppGetSUMOT5: TFloatField;
    CdsMtAppGetHPOT5: TFloatField;
    CdsMtAppGetDownSTSOM7: TStringField;
    CdsMtAppGetDownYAROM7: TIntegerField;
    CdsMtAppGetDownCMPOM7: TStringField;
    CdsMtAppGetDownBRNOM7: TStringField;
    CdsMtAppGetDownDCDOM7: TStringField;
    CdsMtAppGetDownDNOOM7: TIntegerField;
    CdsMtAppGetDownSEQOM7: TSmallintField;
    CdsMtAppGetDownPPDOM7: TStringField;
    CdsMtAppGetDownPDTOM7: TDateField;
    CdsMtAppGetDownPATOM7: TFMTBCDField;
    CdsMtAppGetDownPTPOM7: TStringField;
    CdsMtAppGetDownTNMPTP: TStringField;
    CdsMtAppGetDownNOTOM7: TStringField;
    CdsMtAppGetDownNAROM7: TStringField;
    CdsMtAppGetDownPRTOM7: TStringField;
    CdsMtAppGetDownRDTOM7: TDateField;
    CdsMtAppGetDownRDCOM7: TStringField;
    CdsMtAppGetDownRDNOM7: TIntegerField;
    CdsMtAppGetDownRSQOM7: TIntegerField;
    CdsMtAppGetDownABBOM7: TStringField;
    CdsSetupAccessoryGetList: TClientDataSet;
    CdsMtAppGetAccessoryFLAG: TBooleanField;
    CdsSetupAccessoryGetListORDOM3: TIntegerField;
    CdsSetupAccessoryGetListIDTOM3: TDateField;
    CdsSetupAccessoryGetListSTSOT5: TStringField;
    CdsSetupAccessoryGetListYAROM3: TIntegerField;
    CdsSetupAccessoryGetListCMPOM3: TStringField;
    CdsSetupAccessoryGetListBRNOM3: TStringField;
    CdsSetupAccessoryGetListDEPOM3: TStringField;
    CdsSetupAccessoryGetListDCDOM3: TStringField;
    CdsSetupAccessoryGetListDNOOT5: TIntegerField;
    CdsSetupAccessoryGetListDCDOT5: TStringField;
    CdsSetupAccessoryGetListSEQOT5: TSmallintField;
    CdsSetupAccessoryGetListIDTOT5: TDateField;
    CdsSetupAccessoryGetListSMNOT5: TStringField;
    CdsSetupAccessoryGetListCNOOT5: TLargeintField;
    CdsSetupAccessoryGetListFULLNAME: TStringField;
    CdsSetupAccessoryGetListITNPM1: TStringField;
    CdsSetupAccessoryGetListTNMPM1: TStringField;
    CdsSetupAccessoryGetListTNMCOL: TStringField;
    CdsSetupAccessoryGetListSEROT5: TStringField;
    CdsSetupAccessoryGetListSTPOT5: TStringField;
    CdsSetupAccessoryGetListEPDOT5: TDateField;
    CdsSetupAccessoryGetListASDOT5: TDateField;
    CdsSetupAccessoryGetListBRDPM1: TStringField;
    CdsSetupAccessoryGetListTWHOM3: TStringField;
    CdsSetupAccessoryGetListDSEOM3: TStringField;
    CdsSetupAccessoryGetListVNOOM3: TStringField;
    CdsSetupAccessoryGetListTNMVNO: TStringField;
    CdsSetupAccessoryGetListTA1VNO: TStringField;
    CdsMtAppGetAccessoryFLAG_SELECT: TStringField;
    CdsSetupAccessoryGet: TClientDataSet;
    CdsSetupAccessoryGetYAROM3: TIntegerField;
    CdsSetupAccessoryGetCMPOM3: TStringField;
    CdsSetupAccessoryGetBRNOM3: TStringField;
    CdsSetupAccessoryGetDCDOM3: TStringField;
    CdsSetupAccessoryGetORDOM3: TIntegerField;
    CdsSetupAccessoryGetSEQOM3: TIntegerField;
    CdsSetupAccessoryGetFSROM3: TStringField;
    CdsSetupAccessoryGetIDTOM3: TDateField;
    CdsSetupAccessoryGetDEPOM3: TStringField;
    CdsSetupAccessoryGetVNOOM3: TStringField;
    CdsSetupAccessoryGetVTPOM3: TStringField;
    CdsSetupAccessoryGetCPSOM3: TStringField;
    CdsSetupAccessoryGetCRTOM3: TIntegerField;
    CdsSetupAccessoryGetRDCOM3: TStringField;
    CdsSetupAccessoryGetRDNOM3: TStringField;
    CdsSetupAccessoryGetRSQOM3: TIntegerField;
    CdsSetupAccessoryGetRDTOM3: TDateField;
    CdsSetupAccessoryGetPRDOM3: TStringField;
    CdsSetupAccessoryGetTNMPM1: TStringField;
    CdsSetupAccessoryGetCOLOM3: TStringField;
    CdsSetupAccessoryGetSEROM3: TStringField;
    CdsSetupAccessoryGetENGOM3: TStringField;
    CdsSetupAccessoryGetQO1OM3: TIntegerField;
    CdsSetupAccessoryGetQO2OM3: TIntegerField;
    CdsSetupAccessoryGetQR1OM3: TIntegerField;
    CdsSetupAccessoryGetQR2OM3: TIntegerField;
    CdsSetupAccessoryGetUC1OM3: TFMTBCDField;
    CdsSetupAccessoryGetUC2OM3: TFMTBCDField;
    CdsSetupAccessoryGetAMTOM3: TFMTBCDField;
    CdsSetupAccessoryGetTWHOM3: TStringField;
    CdsSetupAccessoryGetNTEOM3: TStringField;
    CdsSetupAccessoryGetDSEOM3: TStringField;
    CdsSetupAccessoryGetListVTPOM3: TStringField;
    CdsSetupAccessoryGetListCPSOM3: TStringField;
    CdsSetupAccessoryGetListCRTOM3: TIntegerField;
    CdsMtAppGetAccessoryBRDPM1: TStringField;
    CdsSetupAccessoryGetAMT_CAL: TFloatField;
    CdsMtAppGetListTNMSTP: TStringField;
    CdsMtAppGetListPSTOT5: TStringField;
    CdsMtApprGetList: TClientDataSet;
    CdsMtApprGetListDNOST3: TIntegerField;
    CdsMtApprGetListIDTST3: TDateField;
    CdsMtApprGetListSTSOT5: TStringField;
    CdsMtApprGetListYAROT5: TIntegerField;
    CdsMtApprGetListCMPOT5: TStringField;
    CdsMtApprGetListBRNOT5: TStringField;
    CdsMtApprGetListDEPOT5: TStringField;
    CdsMtApprGetListDCDOT5: TStringField;
    CdsMtApprGetListDNOOT5: TIntegerField;
    CdsMtApprGetListSEQOT5: TSmallintField;
    CdsMtApprGetListIDTOT5: TDateField;
    CdsMtApprGetListSMNOT5: TStringField;
    CdsMtApprGetListCNOOT5: TLargeintField;
    CdsMtApprGetListFULLNAME: TStringField;
    CdsMtApprGetListITNPM1: TStringField;
    CdsMtApprGetListTNMPM1: TStringField;
    CdsMtApprGetListTNMCOL: TStringField;
    CdsMtApprGetListSEROT5: TStringField;
    CdsMtApprGetListSTPOT5: TStringField;
    CdsMtApprGetListTNMSTP: TStringField;
    CdsMtApprGetListEPDOT5: TDateField;
    CdsMtApprGetListASDOT5: TDateField;
    CdsMtApprGetListPSTOT5: TStringField;
    CdsMtApprGetListFCDOT5: TStringField;
    CdsMtApprGetListTNMFCD: TStringField;
    CdsMtApprGetListDWTOT5: TFMTBCDField;
    CdsMtAppGetAccessoryMs: TClientDataSet;
    CdsMtAppGetAccessoryMsSTSOT6: TStringField;
    CdsMtAppGetAccessoryMsYAROT6: TIntegerField;
    CdsMtAppGetAccessoryMsCMPOT6: TStringField;
    CdsMtAppGetAccessoryMsBRNOT6: TStringField;
    CdsMtAppGetAccessoryMsDCDOT6: TStringField;
    CdsMtAppGetAccessoryMsDNOOT6: TIntegerField;
    CdsMtAppGetAccessoryMsSEQOT6: TSmallintField;
    CdsMtAppGetAccessoryMsFGDOT6: TStringField;
    CdsMtAppGetAccessoryMsFRDOT6: TStringField;
    CdsMtAppGetAccessoryMsFSROT6: TStringField;
    CdsMtAppGetAccessoryMsTNMPM1: TStringField;
    CdsMtAppGetAccessoryMsFWHOT6: TStringField;
    CdsMtAppGetAccessoryMsFPDOT6: TStringField;
    CdsMtAppGetAccessoryMsFCLOT6: TStringField;
    CdsMtAppGetAccessoryMsFQ1OT6: TIntegerField;
    CdsMtAppGetAccessoryMsFQ2OT6: TIntegerField;
    CdsMtAppGetAccessoryMsTDSOT6: TStringField;
    CdsMtAppGetAccessoryMsFDSOT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFPAOT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFP1OT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFP2OT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFP3OT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFP4OT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFU1OT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFU2OT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsPRTOT6: TStringField;
    CdsMtAppGetAccessoryMsABBOT6: TStringField;
    CdsMtAppGetAccessoryMsAMTOT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsNETOT6: TFMTBCDField;
    CdsMtAppGetAccessoryMsFLAG_SELECT: TStringField;
    CdsMtAppGetAccessoryMsBRDPM1: TStringField;
    CdsMtAppGetAccessoryMsAM1OT6: TFloatField;
    CdsMtAppGetAccessoryMsAM2OT6: TFloatField;
    CdsMtAppGetAccessoryMsAMMOT6: TFloatField;
    CdsMtAppGetAccessoryMsNEEOT6: TFloatField;
    CdsSetupAccessoryGetListTNMSMN: TStringField;
    CdsMtApprGetDoc: TClientDataSet;
    CdsMtApprGetDocCMPRTH: TIntegerField;
    CdsMtApprGetDocBRNRTH: TIntegerField;
    CdsMtApprGetDocYARRTH: TIntegerField;
    CdsMtApprGetDocPRDRTH: TIntegerField;
    CdsMtApprGetDocDCDRTH: TIntegerField;
    CdsMtApprGetDocDNORTH: TIntegerField;
    CdsMtApprGetDocSEQRTH: TIntegerField;
    CdsMtAppGetListAPP_STS: TIntegerField;
    CdsMtAppGetListAPPR_TEXT: TStringField;
    CdsMtApprGetDocTEXT_DOC: TStringField;
    CdsMtApprGetDocREF_DOC: TStringField;
    procedure CdsMtCsmGetDDTPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsMtCsmGetIDTPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsMtCsmGetRDVPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsMtCsmGetYARPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure GetFmtDate(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsMtAppGetCalcFields(DataSet: TDataSet);
    procedure CdsMtAppGetAccessoryCalcFields(DataSet: TDataSet);
    procedure CdsMtAppGetEXPAMTEXPGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsSetupAccessoryGetCalcFields(DataSet: TDataSet);
    procedure CdsSetupAccessoryGetAMT_CALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CdsSetupAccessoryGetUC1OM3GetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CdsMtApprGetListIDTST3GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsMtApprGetListDWTOT5GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsMtAppGetAccessoryMsCalcFields(DataSet: TDataSet);
    procedure CdsMtAppGetAccessoryAM1OT6GetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CdsMtApprGetListEPDOT5GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

  private
    function GetDSProxy(): TDSCarsaleClient; inline;

  public

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property PurchaseProxy: TDSCarsaleClient read GetDSProxy;

    function MtCsmGet(CRITERIA: string; ORDERFIELD: string; ICMPCSM: string; IBRNCSM: string; ICFGCSM: string): Boolean;
    function MtCsmGetAddr(CCNCSM: Int64; LNKCSM: string): Boolean;
    function MtCsmGetCard(CCNCSM: Int64): Boolean;
    function MtCsmInsUpd(STSCSM: string; CMPCSM: string; BRNCSM: string; CTYCSM: string; CFGCSM: string; CCNCSM: Int64; PRECSM: string; FNMCSM: string; LNMCSM: string; SEXCSM: string; SSMCSM: string; BDTCSM: Double; NTNCSM: string; NTVCSM: string; RELCSM: string; STACSM: string): Boolean;
    function MtCsmInsUpdFamilyAndWork(CPNCSM: string; CPSCSM: string; CBNCSM: Double; CPWCSM: string; CINCSM: Double; CCHCSM: Integer; HTPCSM: string; PBTCSM: string; PSTCSM: string; BUSCSM: string; SALCSM: Double; BONCSM: Double; OTHCSM: Double; EXPCSM: Double; PCMCSM: string; HDTCSM: Double; PDPCSM: string; DOPCSM: string; MEMCSM: string; ENTUSR: string; MD: string): Boolean;
    function MtCsmInsUpdCommit(var OUT_CCNCSM: Int64): Boolean;
    function MtCsmInsUpdAddr(CCNCSM: Int64; lnkcsm: string; ta1csm: string; ta2csm: string; chgcsm: string; ctycsm: string; zipcsm: string; telcsm: string; mobcsm: string; faxcsm: string; emacsm: string; webcsm: string; ENTUSR: string): Boolean;
    function MtCsmInsUpdCard(CCNCSI: Int64; CDCCSI: string; CDNCSI: string; ISDCSI: Double; EPDCSI: Double; ISWCSI: string; ENTUSR: string): Boolean;
    function MtCsmDel(CCNCSM: Int64): Boolean;

    function MtAppGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; APPSTS: string): Boolean;
    function MtAppGet(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppGetAccessory(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; IMOD: string): Boolean;
    function MtAppGetCard(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; ICNO: Int64): Boolean;
    function MtAppGetExp(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppGetDown(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppGetFollowup(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppInsUpd(STSOT5: string; YAROT5: Integer; CMPOT5: string; BRNOT5: string; DCDOT5: string; DNOOT5: Integer; SEQOT5: Integer; IDTOT5: Double; DEPOT5: string; CNOOT5: Int64; CTYOT5: string; CRTOT5: Integer; SMNOT5: string; PNOOT5: string; RPDOT5: Double; RSNOT5: string; RSDOT5: Double; PSTOT5: string; BRKOT5: string; GNOOT5: Int64; EXDOT5: Double; TMDOT5: string; PLCOT5: string; EPDOT5: Double; EPTOT5: string; EPSOT5: string; MEMOT5: string): Boolean;
    function MtAppInsUpdProduct(PRDOT5: string; COLOT5: string; SEROT5: string; ENGOT5: string; WHSOT5: string; USEOT5: string; BNOOT5: string; KEYOT5: string; QO1OT5: Integer; QO2OT5: Integer; PDCOT5: Double; PDAOT5: Double; UP1OT5: Double; UP2OT5: Double; NETOT5: Double; PPYOT5: Double; TAXOT5: Double; APCOT5: Double; AFEOT5: Double): Boolean;
    function MtAppInsUpdCondition(STPOT5: string; FCDOT5: string; DWTOT5: Double; NLEOT5: Integer; RATOT5: Double; PMMOT5: Double; CM1OT5: Double; CM2OT5: Double; DDTOT5: Double; ESDOT5: Integer): Boolean;
    function MtAppInsUpdInsurance(ICDOT5: string; CN1OT5: string; ITSOT5: Double; SDTOT5: Double; EDTOT5: Double; ISDOT5: string; IVSOT5: Double; INTOT5: Double; BDTOT5: Double; FDTOT5: Double; RDTOT5: Double; INOOT5: string; PSROT5: string): Boolean;
    function MtAppInsUpd_Commit(ENTUSR: string; MD: string; var OUT_DNO: Integer): Boolean;
    function MtAppInsUpdAccessory(STSOT6: string; YAROT6: Integer; CMPOT6: string; BRNOT6: string; DCDOT6: string; DNOOT6: Integer; SEQOT6: Integer; FGDOT6: string; FRDOT6: string; FSROT6: string; FWHOT6: string; FPDOT6: string; FCLOT6: string; FQ1OT6: Integer; FQ2OT6: Integer; TDSOT6: string; FDSOT6: Double; FPAOT6: Double; FU1OT6: Double; FU2OT6: Double; PRTOT6: string; ABBOT6: string; ENTUSR: string): Boolean;
    function MtAppInsUpdCard(STSOMI: string; YAROMI: Integer; CMPOMI: string; BRNOMI: string; DCDOMI: string; DNOOMI: Integer; CNOOMI: Int64; CDCOMI: string; RDTOMI: Double; RTMOMI: string; PSNOMI: string; FLGOMI: string; ENTUSR: string): Boolean;
    function MtAppInsUpdExp(STSEXP: string; YAREXP: Integer; CMPEXP: string; BRNEXP: string; DCDEXP: string; DNOEXP: Integer; SEQEXP: Integer; CDCEXP: string; AMTEXP: Double; TP1EXP: string; TP2EXP: string; DCREXP: string; ENTUSR: string): Boolean;
    function MtAppInsUpdDown(STSOM7: string; YAROM7: Integer; CMPOM7: string; BRNOM7: string; DCDOM7: string; DNOOM7: Integer; SEQOM7: Integer; PPDOM7: string; PTPOM7: string; NOTOM7: string; PDTOM7: Double; PATOM7: Double; NAROM7: string; ENTUSR: string): Boolean;
    function MtAppInsUpdFollowup(STSOM8: string; YAROM8: Integer; CMPOM8: string; BRNOM8: string; DCDOM8: string; DNOOM8: Integer; SEQOM8: Integer; OCDOM8: string; ODTOM8: Double; PSNOM8: Double; ENTUSR: string): Boolean;
    function MtAppDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtSetupAccessoryGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; BRD: string): Boolean;
    function MtSetupAccessoryGet(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
    function MtSetupAccessoryInsUpd(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer; seqom3: Integer; fsrom3: string; idtom3: Double; depom3: string; vnoom3: string; vtpom3: string; cpsom3: string; crtom3: Integer; rdcom3: string; rdnom3: Integer; rsqom3: Integer; rdtom3: Double; prdom3: string; qo1om3: Integer; qo2om3: Integer; qr1om3: Integer; qr2om3: Integer; uc1om3: Double; uc2om3: Double; twhom3: string; nteom3: string; dseom3: string; serom3: string; engom3: string; entusr: string): Boolean;
    function MtSetupAccessoryDel(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
    function MtApprGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double): Boolean;
    function MtApprInsUpd(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; IDTST3: Double; ENTUSR: string; var DNOST3: Integer): Boolean;
    function MtApprDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtApprGetCheck(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): string;
    function MtApprGetDoc(RDNRTH: Integer): Boolean;
  end;

var
  DSCarsaleDM: TDSCarsaleDM;

implementation

{$R *.dfm}


function TDSCarsaleDM.GetDSProxy(): TDSCarsaleClient;
begin
  Result := TDSCarsaleClient(DSProxy);
end;


procedure TDSCarsaleDM.GetFmtDate(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);
end;

procedure TDSCarsaleDM.CdsMtAppGetAccessoryAM1OT6GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSCarsaleDM.CdsMtAppGetAccessoryCalcFields(DataSet: TDataSet);
begin
  CdsMtAppGetAccessoryAM1OT6.AsFloat := CdsMtAppGetAccessoryFQ1OT6.AsInteger * CdsMtAppGetAccessoryFU1OT6.AsFloat;
  CdsMtAppGetAccessoryAM2OT6.AsFloat := CdsMtAppGetAccessoryFQ2OT6.AsInteger * CdsMtAppGetAccessoryFU2OT6.AsFloat;
  CdsMtAppGetAccessoryAMTOT6.AsFloat := CdsMtAppGetAccessoryAM1OT6.AsFloat + CdsMtAppGetAccessoryAM2OT6.AsFloat;
  CdsMtAppGetAccessoryNETOT6.AsFloat := CdsMtAppGetAccessoryAMTOT6.AsFloat -
                                        CdsMtAppGetAccessoryFPAOT6.AsFloat;
  if CdsMtAppGetAccessoryFLAG.Value then
     CdsMtAppGetAccessoryFLAG_SELECT.AsString := 'Y'
  else
     CdsMtAppGetAccessoryFLAG_SELECT.AsString := 'N';

end;

procedure TDSCarsaleDM.CdsMtAppGetAccessoryMsCalcFields(DataSet: TDataSet);
begin
  CdsMtAppGetAccessoryMsAM1OT6.AsFloat := CdsMtAppGetAccessoryMsFQ1OT6.AsInteger * CdsMtAppGetAccessoryMsFU1OT6.AsFloat;
  CdsMtAppGetAccessoryMsAM2OT6.AsFloat := CdsMtAppGetAccessoryMsFQ2OT6.AsInteger * CdsMtAppGetAccessoryMsFU2OT6.AsFloat;
  CdsMtAppGetAccessoryMsAMMOT6.AsFloat := CdsMtAppGetAccessoryMsAM1OT6.AsFloat + CdsMtAppGetAccessoryMsAM2OT6.AsFloat;
  CdsMtAppGetAccessoryMsNEEOT6.AsFloat := CdsMtAppGetAccessoryMsAMMOT6.AsFloat -  CdsMtAppGetAccessoryMsFPAOT6.AsFloat;

end;

procedure TDSCarsaleDM.CdsMtAppGetCalcFields(DataSet: TDataSet);
begin
  CdsMtAppGetSUMOT5.AsFloat := CdsMtAppGetNETOT5.AsFloat - CdsMtAppGetDWTOT5.AsFloat +
                               CdsMtAppGetCM1OT5.AsFloat + CdsMtAppGetCM2OT5.AsFloat;

  CdsMtAppGetHPOT5.AsFloat := CdsMtAppGetDWTOT5.AsFloat +
                              (CdsMtAppGetNLEOT5.AsFloat * CdsMtAppGetPMMOT5.AsFloat);
end;

procedure TDSCarsaleDM.CdsMtAppGetEXPAMTEXPGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSCarsaleDM.CdsMtApprGetListDWTOT5GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSCarsaleDM.CdsMtApprGetListEPDOT5GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSCarsaleDM.CdsMtApprGetListIDTST3GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSCarsaleDM.CdsMtCsmGetDDTPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSCarsaleDM.CdsMtCsmGetIDTPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSCarsaleDM.CdsMtCsmGetRDVPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSCarsaleDM.CdsMtCsmGetYARPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := IntToStr(Sender.AsInteger + 543);

end;

procedure TDSCarsaleDM.CdsSetupAccessoryGetAMT_CALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSCarsaleDM.CdsSetupAccessoryGetCalcFields(DataSet: TDataSet);
begin
    CdsSetupAccessoryGetAMT_CAL.AsFloat :=
       CdsSetupAccessoryGetuc1om3.AsFloat * CdsSetupAccessoryGetQR1OM3.AsInteger;

end;

procedure TDSCarsaleDM.CdsSetupAccessoryGetUC1OM3GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

function TDSCarsaleDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSCarsaleClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSCarsaleDM.MtCsmGet(CRITERIA: string; ORDERFIELD: string; ICMPCSM: string; IBRNCSM: string; ICFGCSM: string): Boolean;
begin
  result := GetDSProxy.MtCsmGet(CRITERIA,ORDERFIELD,ICMPCSM,IBRNCSM,ICFGCSM);
end;

function TDSCarsaleDM.MtCsmGetAddr(CCNCSM: Int64; LNKCSM: string): Boolean;
begin
  result := GetDSProxy.MtCsmGetAddr(CCNCSM,LNKCSM);
end;

function TDSCarsaleDM.MtCsmGetCard(CCNCSM: Int64): Boolean;
begin
  result := GetDSProxy.MtCsmGetCard(CCNCSM);
end;

function TDSCarsaleDM.MtCsmInsUpd(STSCSM: string; CMPCSM: string; BRNCSM: string; CTYCSM: string; CFGCSM: string; CCNCSM: Int64; PRECSM: string; FNMCSM: string; LNMCSM: string; SEXCSM: string; SSMCSM: string; BDTCSM: Double; NTNCSM: string; NTVCSM: string; RELCSM: string; STACSM: string): Boolean;
begin
  result := GetDSProxy.MtCsmInsUpd(STSCSM,CMPCSM,BRNCSM,CTYCSM,CFGCSM,CCNCSM,PRECSM,FNMCSM,LNMCSM,SEXCSM,SSMCSM,BDTCSM,NTNCSM,NTVCSM,RELCSM,STACSM);
end;

function TDSCarsaleDM.MtCsmInsUpdFamilyAndWork(CPNCSM: string; CPSCSM: string; CBNCSM: Double; CPWCSM: string; CINCSM: Double; CCHCSM: Integer; HTPCSM: string; PBTCSM: string; PSTCSM: string; BUSCSM: string; SALCSM: Double; BONCSM: Double; OTHCSM: Double; EXPCSM: Double; PCMCSM: string; HDTCSM: Double; PDPCSM: string; DOPCSM: string; MEMCSM: string; ENTUSR: string; MD: string): Boolean;
begin
  result := GetDSProxy.MtCsmInsUpdFamilyAndWork(CPNCSM,CPSCSM,CBNCSM,CPWCSM,CINCSM,CCHCSM,HTPCSM,PBTCSM,PSTCSM,BUSCSM,SALCSM,BONCSM,OTHCSM,EXPCSM,PCMCSM,HDTCSM,PDPCSM,DOPCSM,MEMCSM,ENTUSR,MD);
end;

function TDSCarsaleDM.MtCsmInsUpdCommit(var OUT_CCNCSM: Int64): Boolean;
begin
  result := GetDSProxy.MtCsmInsUpdCommit(OUT_CCNCSM);
end;

function TDSCarsaleDM.MtCsmInsUpdAddr(CCNCSM: Int64; lnkcsm: string; ta1csm: string; ta2csm: string; chgcsm: string; ctycsm: string; zipcsm: string; telcsm: string; mobcsm: string; faxcsm: string; emacsm: string; webcsm: string; ENTUSR: string): Boolean;
begin
  result := GetDSProxy.MtCsmInsUpdAddr(CCNCSM,lnkcsm,ta1csm,ta2csm,chgcsm,ctycsm,zipcsm,telcsm,mobcsm,faxcsm,emacsm,webcsm,ENTUSR);
end;

function TDSCarsaleDM.MtCsmInsUpdCard(CCNCSI: Int64; CDCCSI: string; CDNCSI: string; ISDCSI: Double; EPDCSI: Double; ISWCSI: string; ENTUSR: string): Boolean;
begin
  result := GetDSProxy.MtCsmInsUpdCard(CCNCSI,CDCCSI,CDNCSI,ISDCSI,EPDCSI,ISWCSI,ENTUSR);
end;

function TDSCarsaleDM.MtCsmDel(CCNCSM: Int64): Boolean;
begin
  result := GetDSProxy.MtCsmDel(CCNCSM);
end;

function TDSCarsaleDM.MtAppGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; APPSTS: string): Boolean;
begin
  result := GetDSProxy.MtAppGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP,IFRM,ITO,APPSTS);
end;

function TDSCarsaleDM.MtAppGet(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  result := GetDSProxy.MtAppGet(IYAR,ICMP,IBRN,IDCD,IDNO);
end;

function TDSCarsaleDM.MtAppGetAccessory(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer;IMOD : STRING): Boolean;
begin
  result := GetDSProxy.MtAppGetAccessory(IYAR,ICMP,IBRN,IDCD,IDNO,IMOD);
end;

function TDSCarsaleDM.MtAppGetCard(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; ICNO: Int64): Boolean;
begin
  result := GetDSProxy.MtAppGetCard(IYAR,ICMP,IBRN,IDCD,IDNO,ICNO);
end;

function TDSCarsaleDM.MtAppGetExp(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  result := GetDSProxy.MtAppGetExp(IYAR,ICMP,IBRN,IDCD,IDNO);
end;

function TDSCarsaleDM.MtAppGetDown(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  result := GetDSProxy.MtAppGetDown(IYAR,ICMP,IBRN,IDCD,IDNO);
end;

function TDSCarsaleDM.MtAppGetFollowup(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  result := GetDSProxy.MtAppGetFollowup(IYAR,ICMP,IBRN,IDCD,IDNO);
end;

function TDSCarsaleDM.MtAppInsUpd(STSOT5: string; YAROT5: Integer; CMPOT5: string; BRNOT5: string; DCDOT5: string; DNOOT5: Integer; SEQOT5: Integer; IDTOT5: Double; DEPOT5: string; CNOOT5: Int64; CTYOT5: string; CRTOT5: Integer; SMNOT5: string; PNOOT5: string; RPDOT5: Double; RSNOT5: string; RSDOT5: Double; PSTOT5: string; BRKOT5: string; GNOOT5: Int64; EXDOT5: Double; TMDOT5: string; PLCOT5: string; EPDOT5: Double; EPTOT5: string; EPSOT5: string; MEMOT5: string): Boolean;
begin
  result := GetDSProxy.MtAppInsUpd(STSOT5,  YAROT5,  CMPOT5,  BRNOT5,  DCDOT5,  DNOOT5,  SEQOT5,  IDTOT5,  DEPOT5,  CNOOT5, CTYOT5,  CRTOT5,  SMNOT5,  PNOOT5,  RPDOT5,  RSNOT5,  RSDOT5,  PSTOT5,  BRKOT5,  GNOOT5, EXDOT5,  TMDOT5,  PLCOT5,  EPDOT5,  EPTOT5,  EPSOT5,  MEMOT5);
end;

function TDSCarsaleDM.MtAppInsUpdProduct(PRDOT5: string; COLOT5: string; SEROT5: string; ENGOT5: string; WHSOT5: string; USEOT5: string; BNOOT5: string; KEYOT5: string; QO1OT5: Integer; QO2OT5: Integer; PDCOT5: Double; PDAOT5: Double; UP1OT5: Double; UP2OT5: Double; NETOT5: Double; PPYOT5: Double; TAXOT5: Double; APCOT5: Double; AFEOT5: Double): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdProduct(PRDOT5,  COLOT5,  SEROT5,  ENGOT5, WHSOT5, USEOT5,  BNOOT5,  KEYOT5,  QO1OT5,  QO2OT5,  PDCOT5,  PDAOT5,  UP1OT5,  UP2OT5,  NETOT5,  PPYOT5,  TAXOT5,  APCOT5,  AFEOT5);
end;

function TDSCarsaleDM.MtAppInsUpdCondition(STPOT5: string; FCDOT5: string; DWTOT5: Double; NLEOT5: Integer; RATOT5: Double; PMMOT5: Double; CM1OT5: Double; CM2OT5: Double; DDTOT5: Double; ESDOT5: Integer): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdCondition(STPOT5,  FCDOT5,  DWTOT5,  NLEOT5,  RATOT5,  PMMOT5,  CM1OT5,  CM2OT5,  DDTOT5,  ESDOT5);
end;

function TDSCarsaleDM.MtAppInsUpdInsurance(ICDOT5: string; CN1OT5: string; ITSOT5: Double; SDTOT5: Double; EDTOT5: Double; ISDOT5: string; IVSOT5: Double; INTOT5: Double; BDTOT5: Double; FDTOT5: Double; RDTOT5: Double; INOOT5: string; PSROT5: string): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdInsurance(ICDOT5,CN1OT5,ITSOT5,SDTOT5,EDTOT5,ISDOT5,IVSOT5,INTOT5,BDTOT5, FDTOT5, RDTOT5,INOOT5,PSROT5);
end;

function TDSCarsaleDM.MtAppInsUpd_Commit(ENTUSR: string; MD: string; var OUT_DNO: Integer): Boolean;
begin
  result := GetDSProxy.MtAppInsUpd_Commit(ENTUSR,MD,OUT_DNO);
end;

function TDSCarsaleDM.MtAppInsUpdAccessory(STSOT6: string; YAROT6: Integer; CMPOT6: string; BRNOT6: string; DCDOT6: string; DNOOT6: Integer; SEQOT6: Integer; FGDOT6: string; FRDOT6: string; FSROT6: string; FWHOT6: string; FPDOT6: string; FCLOT6: string; FQ1OT6: Integer; FQ2OT6: Integer; TDSOT6: string; FDSOT6: Double; FPAOT6: Double; FU1OT6: Double; FU2OT6: Double; PRTOT6: string; ABBOT6: string; ENTUSR: string): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdAccessory(STSOT6,  YAROT6,  CMPOT6,  BRNOT6,  DCDOT6,  DNOOT6,  SEQOT6,  FGDOT6,  FRDOT6,  FSROT6,  FWHOT6,  FPDOT6,  FCLOT6,  FQ1OT6,  FQ2OT6,  TDSOT6,  FDSOT6,  FPAOT6,  FU1OT6,  FU2OT6,  PRTOT6,  ABBOT6,  ENTUSR);
end;

function TDSCarsaleDM.MtAppInsUpdCard(STSOMI: string; YAROMI: Integer; CMPOMI: string; BRNOMI: string; DCDOMI: string; DNOOMI: Integer; CNOOMI: Int64; CDCOMI: string; RDTOMI: Double; RTMOMI: string; PSNOMI: string; FLGOMI: string; ENTUSR: string): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdCard(STSOMI,  YAROMI,  CMPOMI,  BRNOMI,  DCDOMI,  DNOOMI,  CNOOMI,  CDCOMI,  RDTOMI,  RTMOMI,  PSNOMI,  FLGOMI,  ENTUSR);
end;

function TDSCarsaleDM.MtAppInsUpdExp(STSEXP: string; YAREXP: Integer; CMPEXP: string; BRNEXP: string; DCDEXP: string; DNOEXP: Integer; SEQEXP: Integer; CDCEXP: string; AMTEXP: Double; TP1EXP: string; TP2EXP: string; DCREXP: string; ENTUSR: string): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdExp(STSEXP,  YAREXP,  CMPEXP,  BRNEXP,  DCDEXP,  DNOEXP,  SEQEXP,  CDCEXP,  AMTEXP,  TP1EXP,  TP2EXP,  DCREXP,  ENTUSR);
end;

function TDSCarsaleDM.MtAppInsUpdDown(STSOM7: string; YAROM7: Integer; CMPOM7: string; BRNOM7: string; DCDOM7: string; DNOOM7: Integer; SEQOM7: Integer; PPDOM7: string; PTPOM7: string; NOTOM7: string; PDTOM7: Double; PATOM7: Double; NAROM7: string; ENTUSR: string): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdDown(STSOM7,YAROM7,CMPOM7,BRNOM7,DCDOM7,DNOOM7,SEQOM7,PPDOM7,PTPOM7, NOTOM7,PDTOM7,PATOM7,NAROM7, ENTUSR);
end;

function TDSCarsaleDM.MtAppInsUpdFollowup(STSOM8: string; YAROM8: Integer; CMPOM8: string; BRNOM8: string; DCDOM8: string; DNOOM8: Integer; SEQOM8: Integer; OCDOM8: string; ODTOM8: Double; PSNOM8: Double; ENTUSR: string): Boolean;
begin
  result := GetDSProxy.MtAppInsUpdFollowup(STSOM8,YAROM8,CMPOM8,BRNOM8,DCDOM8,DNOOM8,SEQOM8,OCDOM8,ODTOM8,PSNOM8,  ENTUSR);
end;

function TDSCarsaleDM.MtAppDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  result := GetDSProxy.MtAppDel(IYAR,ICMP,IBRN,IDCD,IDNO);
end;

function TDSCarsaleDM.MtSetupAccessoryGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; BRD: string): Boolean;
begin
  result := GetDSProxy.MtSetupAccessoryGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP,IFRM,ITO,BRD);
end;

function TDSCarsaleDM.MtSetupAccessoryGet(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
begin
  result := GetDSProxy.MtSetupAccessoryGet(yarom3,cmpom3,brnom3,dcdom3,ordom3);
end;

function TDSCarsaleDM.MtSetupAccessoryInsUpd(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer; seqom3: Integer; fsrom3: string; idtom3: Double; depom3: string; vnoom3: string; vtpom3: string; cpsom3: string; crtom3: Integer; rdcom3: string; rdnom3: Integer; rsqom3: Integer; rdtom3: Double; prdom3: string; qo1om3: Integer; qo2om3: Integer; qr1om3: Integer; qr2om3: Integer; uc1om3: Double; uc2om3: Double; twhom3: string; nteom3: string; dseom3: string; serom3: string; engom3: string; entusr: string): Boolean;
begin
  result := GetDSProxy.MtSetupAccessoryInsUpd(yarom3,  cmpom3,  brnom3,  dcdom3,  ordom3,  seqom3,  fsrom3,  idtom3,  depom3,  vnoom3,  vtpom3,  cpsom3,  crtom3,  rdcom3,  rdnom3, rsqom3,
            rdtom3,prdom3, qo1om3,  qo2om3,  qr1om3,  qr2om3,  uc1om3,  uc2om3,  twhom3,  nteom3,  dseom3,  serom3, engom3, entusr);
end;

function TDSCarsaleDM.MtSetupAccessoryDel(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
begin
  result := GetDSProxy.MtSetupAccessoryDel(yarom3,  cmpom3,  brnom3,  dcdom3,  ordom3);
end;

function TDSCarsaleDM.MtApprGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double): Boolean;
begin
  result := GetDSProxy.MtApprGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP,IFRM,ITO);
end;


function TDSCarsaleDM.MtApprInsUpd(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; IDTST3: Double; ENTUSR: string; var DNOST3: Integer): Boolean;
begin
  result := GetDSProxy.MtApprInsUpd(IYAR,ICMP,IBRN,IDCD,IDNO,IDTST3,ENTUSR,DNOST3);
end;


function TDSCarsaleDM.MtApprDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  result := GetDSProxy.MtApprDel(IYAR,ICMP,IBRN,IDCD,IDNO);
end;

function TDSCarsaleDM.MtApprGetCheck(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): string;
begin
  result := GetDSProxy.MtApprGetCheck(IYAR,ICMP,IBRN,IDCD,IDNO);
end;

function TDSCarsaleDM.MtApprGetDoc(RDNRTH: Integer): Boolean;
begin
  result := GetDSProxy.MtApprGetDoc(RDNRTH);
end;


end.
