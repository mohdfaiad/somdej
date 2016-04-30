unit DSAssignWorkIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, DSAssignWorkIntf, SqlExpr,
  DBXDataSnap, DBXCommon, DBXPool, frxClass, frxDBSet, frxExportPDF, frxRich,
  IndyPeerImpl, DSSetupIntfDM;

type
  TDSAssignWorkDM = class(TDSMainDM)
    CdsTtSchGet: TClientDataSet;
    CdsTtSchOptGet: TClientDataSet;
    CdsTtSchOptGetSTSOPT: TStringField;
    CdsTtSchOptGetCMPOPT: TStringField;
    CdsTtSchOptGetBRNOPT: TStringField;
    CdsTtSchOptGetYAROPT: TIntegerField;
    CdsTtSchOptGetPRDOPT: TIntegerField;
    CdsTtSchOptGetWEKOPT: TSmallintField;
    CdsTtSchOptGetOPTOPT: TStringField;
    CdsTtSchOptGetDATOPT: TDateField;
    CdsTtSchOptGetMEMOPT: TStringField;
    CdsTtSchOptGetENTUSR: TStringField;
    CdsTtSchOptGetENTDTE: TSQLTimeStampField;
    CdsTtSchOptGetEDTUSR: TStringField;
    CdsTtSchOptGetEDTDTE: TSQLTimeStampField;
    CdsTtSchGetSTSSCH: TStringField;
    CdsTtSchGetCMPSCH: TStringField;
    CdsTtSchGetBRNSCH: TStringField;
    CdsTtSchGetYARSCH: TIntegerField;
    CdsTtSchGetPRDSCH: TIntegerField;
    CdsTtSchGetDFRSCH: TDateField;
    CdsTtSchGetDTOSCH: TDateField;
    CdsTtSchGetFR1SCH: TDateField;
    CdsTtSchGetTO1SCH: TDateField;
    CdsTtSchGetFR2SCH: TDateField;
    CdsTtSchGetTO2SCH: TDateField;
    CdsTtSchGetFR3SCH: TDateField;
    CdsTtSchGetTO3SCH: TDateField;
    CdsTtSchGetFR4SCH: TDateField;
    CdsTtSchGetTO4SCH: TDateField;
    CdsTtSchGetENTUSR: TStringField;
    CdsTtSchGetENTDTE: TSQLTimeStampField;
    CdsTtSchGetEDTUSR: TStringField;
    CdsTtSchGetEDTDTE: TSQLTimeStampField;
    CdsTtSchGetW1: TStringField;
    CdsTtSchGetW2: TStringField;
    CdsTtSchGetW3: TStringField;
    CdsTtSchGetW4: TStringField;
    CdsTtSchGetDDDDMMYYYY: TStringField;
    CdsTtSchGetFD1: TSmallintField;
    CdsTtSchGetTD1: TSmallintField;
    CdsTtSchGetFD2: TSmallintField;
    CdsTtSchGetTD2: TSmallintField;
    CdsTtSchGetFD3: TSmallintField;
    CdsTtSchGetTD3: TSmallintField;
    CdsTtSchGetFD4: TSmallintField;
    CdsTtSchGetTD4: TSmallintField;
    CdsTtRdwGet: TClientDataSet;
    CdsTtRdwGetSTSRDW: TStringField;
    CdsTtRdwGetCMPRDW: TStringField;
    CdsTtRdwGetBRNRDW: TStringField;
    CdsTtRdwGetYARRDW: TIntegerField;
    CdsTtRdwGetPRDRDW: TIntegerField;
    CdsTtRdwGetDCDRDW: TStringField;
    CdsTtRdwGetDNORDW: TIntegerField;
    CdsTtRdwGetSEQRDW: TIntegerField;
    CdsTtRdwGetOPTRDW: TStringField;
    CdsTtRdwGetRWKRDW: TIntegerField;
    CdsTtRdwGetRDTRDW: TDateField;
    CdsTtRdwGetRNORDW: TStringField;
    CdsTtRdwGetITNRDW: TStringField;
    CdsTtRdwGetCOLRDW: TStringField;
    CdsTtRdwGetQ11RDW: TIntegerField;
    CdsTtRdwGetQ12RDW: TIntegerField;
    CdsTtRdwGetQ21RDW: TIntegerField;
    CdsTtRdwGetQ22RDW: TIntegerField;
    CdsTtRdwGetQ31RDW: TIntegerField;
    CdsTtRdwGetQ32RDW: TIntegerField;
    CdsTtRdwGetQ41RDW: TIntegerField;
    CdsTtRdwGetQ42RDW: TIntegerField;
    CdsTtRdwGetQ51RDW: TIntegerField;
    CdsTtRdwGetQ52RDW: TIntegerField;
    CdsTtRdwGetENTUSR: TStringField;
    CdsTtRdwGetENTDTE: TSQLTimeStampField;
    CdsTtRdwGetEDTUSR: TStringField;
    CdsTtRdwGetEDTDTE: TSQLTimeStampField;
    CdsTtRdwGetTNMOPT: TStringField;
    CdsTtRdwGetSRSPM1: TStringField;
    CdsTtRdwGetSUMRDW: TFloatField;
    CdsTtRdwGetTNMPM1: TStringField;
    CdsTtRdwGetTNMSRS: TStringField;
    CdsTtSchGetNextMM: TClientDataSet;
    CdsTtSchGetNextMMW1: TStringField;
    CdsTtSchGetNextMMW2: TStringField;
    CdsTtSchGetNextMMW3: TStringField;
    CdsTtSchGetNextMMW4: TStringField;
    CdsTtPasGetByDate: TClientDataSet;
    CdsTtPasGet: TClientDataSet;
    CdsTtPasGetByDateDNOPAS: TIntegerField;
    CdsTtPasGetSTSPAS: TStringField;
    CdsTtPasGetCMPPAS: TStringField;
    CdsTtPasGetBRNPAS: TStringField;
    CdsTtPasGetYARPAS: TIntegerField;
    CdsTtPasGetPRDPAS: TIntegerField;
    CdsTtPasGetDCDPAS: TStringField;
    CdsTtPasGetDNOPAS: TIntegerField;
    CdsTtPasGetSEQPAS: TIntegerField;
    CdsTtPasGetIWKPAS: TIntegerField;
    CdsTtPasGetIDTPAS: TDateField;
    CdsTtPasGetRWKPAS: TIntegerField;
    CdsTtPasGetRDTPAS: TDateField;
    CdsTtPasGetRDNPAS: TIntegerField;
    CdsTtPasGetRNOPAS: TStringField;
    CdsTtPasGetITNPAS: TStringField;
    CdsTtPasGetCOLPAS: TStringField;
    CdsTtPasGetTNMSRS: TStringField;
    CdsTtPasGetTNMPM1: TStringField;
    CdsTtAsnGet: TClientDataSet;
    CdsTtAsnGetSTSASN: TStringField;
    CdsTtAsnGetCMPASN: TStringField;
    CdsTtAsnGetBRNASN: TStringField;
    CdsTtAsnGetYARASN: TIntegerField;
    CdsTtAsnGetPRDASN: TIntegerField;
    CdsTtAsnGetDCDASN: TStringField;
    CdsTtAsnGetDNOASN: TIntegerField;
    CdsTtAsnGetSEQASN: TIntegerField;
    CdsTtAsnGetIWKASN: TIntegerField;
    CdsTtAsnGetIDTASN: TDateField;
    CdsTtAsnGetRWKASN: TIntegerField;
    CdsTtAsnGetRDTASN: TDateField;
    CdsTtAsnGetRDNASN: TIntegerField;
    CdsTtAsnGetRNOASN: TStringField;
    CdsTtAsnGetTNMSRS: TStringField;
    CdsTtAsnGetITNASN: TStringField;
    CdsTtAsnGetTNMPM1: TStringField;
    CdsTtAsnGetCOLASN: TStringField;
    CdsTtAsnGetSO1ASN: TIntegerField;
    CdsTtAsnGetSO2ASN: TIntegerField;
    CdsTtAsnGetSN1ASN: TIntegerField;
    CdsTtAsnGetSN2ASN: TIntegerField;
    CdsTtAsnGetA11ASN: TIntegerField;
    CdsTtAsnGetA12ASN: TIntegerField;
    CdsTtAsnGetA21ASN: TIntegerField;
    CdsTtAsnGetA22ASN: TIntegerField;
    CdsTtAsnGetA31ASN: TIntegerField;
    CdsTtAsnGetA32ASN: TIntegerField;
    CdsTtAsnGetA41ASN: TIntegerField;
    CdsTtAsnGetA42ASN: TIntegerField;
    CdsTtAsnGetODTASN: TDateField;
    CdsTtAsnGetOYRASN: TIntegerField;
    CdsTtAsnGetODCASN: TStringField;
    CdsTtAsnGetODNASN: TIntegerField;
    CdsTtAsnGetOSQASN: TIntegerField;
    CdsTtAsnGetCNOOM5: TLargeintField;
    CdsTtAsnGetTNMCNO: TStringField;
    CdsTtAsnGetTNMSMN: TStringField;
    CdsTtAsnGetEXDOM5: TDateField;
    CdsTtAsnGetSSMASN: TIntegerField;
    CdsTtAsnGetASMASN: TIntegerField;
    CdsTtAsnGetALLASN: TIntegerField;
    CdsTtAsnGetREMASN: TIntegerField;
    CdsTtPasGetSO1PAS: TIntegerField;
    CdsTtPasGetSO2PAS: TIntegerField;
    CdsTtPasGetSN1PAS: TIntegerField;
    CdsTtPasGetSN2PAS: TIntegerField;
    CdsTtPasGetP11PAS: TIntegerField;
    CdsTtPasGetP12PAS: TIntegerField;
    CdsTtPasGetP21PAS: TIntegerField;
    CdsTtPasGetP22PAS: TIntegerField;
    CdsTtPasGetP31PAS: TIntegerField;
    CdsTtPasGetP32PAS: TIntegerField;
    CdsTtPasGetP41PAS: TIntegerField;
    CdsTtPasGetP42PAS: TIntegerField;
    CdsTtPasGetBM1PAS: TIntegerField;
    CdsTtPasGetBM2PAS: TIntegerField;
    CdsTtPasGetBN1PAS: TIntegerField;
    CdsTtPasGetBN2PAS: TIntegerField;
    CdsTtPasGetSB1PAS: TIntegerField;
    CdsTtPasGetSB2PAS: TIntegerField;
    CdsTtPasGetSSMPAS: TIntegerField;
    CdsTtPasGetPSMPAS: TIntegerField;
    CdsTtPasGetBSMPAS: TIntegerField;
    CdsTtPasGetALLPAS: TIntegerField;
    CdsTtAswGet: TClientDataSet;
    CdsTtAswGetSTSASW: TStringField;
    CdsTtAswGetCMPASW: TStringField;
    CdsTtAswGetBRNASW: TStringField;
    CdsTtAswGetYARASW: TIntegerField;
    CdsTtAswGetPRDASW: TIntegerField;
    CdsTtAswGetDCDASW: TStringField;
    CdsTtAswGetDNOASW: TIntegerField;
    CdsTtAswGetSEQASW: TIntegerField;
    CdsTtAswGetIWKASW: TIntegerField;
    CdsTtAswGetIDTASW: TDateField;
    CdsTtAswGetRWKASW: TIntegerField;
    CdsTtAswGetRDTASW: TDateField;
    CdsTtAswGetRDNASW: TIntegerField;
    CdsTtAswGetRNOASW: TStringField;
    CdsTtAswGetTNMSRS: TStringField;
    CdsTtAswGetITNASW: TStringField;
    CdsTtAswGetTNMPM1: TStringField;
    CdsTtAswGetCOLASW: TStringField;
    CdsTtAswGetSO1ASW: TIntegerField;
    CdsTtAswGetSO2ASW: TIntegerField;
    CdsTtAswGetSN1ASW: TIntegerField;
    CdsTtAswGetSN2ASW: TIntegerField;
    CdsTtAswGetA11ASW: TIntegerField;
    CdsTtAswGetA12ASW: TIntegerField;
    CdsTtAswGetA21ASW: TIntegerField;
    CdsTtAswGetA22ASW: TIntegerField;
    CdsTtAswGetA31ASW: TIntegerField;
    CdsTtAswGetA32ASW: TIntegerField;
    CdsTtAswGetA41ASW: TIntegerField;
    CdsTtAswGetA42ASW: TIntegerField;
    CdsTtAswGetODTASW: TDateField;
    CdsTtAswGetOYRASW: TIntegerField;
    CdsTtAswGetODCASW: TStringField;
    CdsTtAswGetODNASW: TIntegerField;
    CdsTtAswGetOSQASW: TIntegerField;
    CdsTtAswGetCNOOM5: TLargeintField;
    CdsTtAswGetTNMCNO: TStringField;
    CdsTtAswGetSMNOM5: TStringField;
    CdsTtAswGetTNMSMN: TStringField;
    CdsTtAswGetEXDOM5: TDateField;
    CdsTtAswGetASS_SO1ASW: TIntegerField;
    CdsTtAswGetASS_SO2ASW: TIntegerField;
    CdsTtAswGetASS_SN1ASW: TIntegerField;
    CdsTtAswGetASS_SN2ASW: TIntegerField;
    CdsTtAswGetASS_A11ASW: TIntegerField;
    CdsTtAswGetASS_A12ASW: TIntegerField;
    CdsTtAswGetASS_A21ASW: TIntegerField;
    CdsTtAswGetASS_A22ASW: TIntegerField;
    CdsTtAswGetASS_A31ASW: TIntegerField;
    CdsTtAswGetASS_A32ASW: TIntegerField;
    CdsTtAswGetASS_A41ASW: TIntegerField;
    CdsTtAswGetASS_A42ASW: TIntegerField;
    CdsTtAswGetREM_SO1ASW: TIntegerField;
    CdsTtAswGetREM_SO2ASW: TIntegerField;
    CdsTtAswGetREM_SN1ASW: TIntegerField;
    CdsTtAswGetREM_SN2ASW: TIntegerField;
    CdsTtAswGetREM_A11ASW: TIntegerField;
    CdsTtAswGetREM_A12ASW: TIntegerField;
    CdsTtAswGetREM_A21ASW: TIntegerField;
    CdsTtAswGetREM_A22ASW: TIntegerField;
    CdsTtAswGetREM_A31ASW: TIntegerField;
    CdsTtAswGetREM_A32ASW: TIntegerField;
    CdsTtAswGetREM_A41ASW: TIntegerField;
    CdsTtAswGetREM_A42ASW: TIntegerField;
    CdsTtAswGetSSMASW: TIntegerField;
    CdsTtAswGetASMASW: TIntegerField;
    CdsTtAswGetALLASW: TIntegerField;
    CdsTtAswGetREMASW: TIntegerField;
    CdsTtAswGetREM_MONTH: TIntegerField;
    CdsTtAswGetTNMCOL: TStringField;
    CdsTtColGet: TClientDataSet;
    CdsTtColGetSTSCOL: TStringField;
    CdsTtColGetCMPCOL: TStringField;
    CdsTtColGetBRNCOL: TStringField;
    CdsTtColGetYARCOL: TIntegerField;
    CdsTtColGetPRDCOL: TIntegerField;
    CdsTtColGetDCDCOL: TStringField;
    CdsTtColGetDNOCOL: TIntegerField;
    CdsTtColGetSEQCOL: TIntegerField;
    CdsTtColGetIWKCOL: TIntegerField;
    CdsTtColGetIDTCOL: TDateField;
    CdsTtColGetRWKCOL: TIntegerField;
    CdsTtColGetRDTCOL: TDateField;
    CdsTtColGetRDNCOL: TIntegerField;
    CdsTtColGetTNMSRS: TStringField;
    CdsTtColGetITNCOL: TStringField;
    CdsTtColGetTNMPM1: TStringField;
    CdsTtColGetCOLCOL: TStringField;
    CdsTtColGetTNMCOL: TStringField;
    CdsTtColGetQT1COL: TIntegerField;
    CdsTtColGetQT2COL: TIntegerField;
    CdsTtAd1Get: TClientDataSet;
    CdsTtAd1GetSTSAD1: TStringField;
    CdsTtAd1GetCMPAD1: TStringField;
    CdsTtAd1GetBRNAD1: TStringField;
    CdsTtAd1GetYARAD1: TIntegerField;
    CdsTtAd1GetPRDAD1: TIntegerField;
    CdsTtAd1GetDCDAD1: TStringField;
    CdsTtAd1GetDNOAD1: TIntegerField;
    CdsTtAd1GetSEQAD1: TIntegerField;
    CdsTtAd1GetIWKAD1: TIntegerField;
    CdsTtAd1GetIDTAD1: TDateField;
    CdsTtAp1Get: TClientDataSet;
    CdsTtAp1GetSTSAP1: TStringField;
    CdsTtAp1GetCMPAP1: TStringField;
    CdsTtAp1GetBRNAP1: TStringField;
    CdsTtAp1GetYARAP1: TIntegerField;
    CdsTtAp1GetPRDAP1: TIntegerField;
    CdsTtAp1GetDCDAP1: TStringField;
    CdsTtAp1GetDNOAP1: TIntegerField;
    CdsTtAp1GetSEQAP1: TIntegerField;
    CdsTtAp1GetIWKAP1: TIntegerField;
    CdsTtAp1GetIDTAP1: TDateField;
    CdsTtAp1GetRWKAP1: TIntegerField;
    CdsTtAp1GetRDTAP1: TDateField;
    CdsTtAp1GetRDNAP1: TIntegerField;
    CdsTtAp1GetTNMITC: TStringField;
    CdsTtAp1GetTNMSRS: TStringField;
    CdsTtAp1GetITNAP1: TIntegerField;
    CdsTtAp1GetTNMPM1: TStringField;
    CdsTtAp1GetTNMCOL: TStringField;
    CdsTtAp1GetQT1AP1: TIntegerField;
    CdsTtAp1GetQT2AP1: TIntegerField;
    CdsTtAp1GetWISAP1: TIntegerField;
    CdsTtAp1GetISDAP1: TDateField;
    CdsTtAp1GetEXDOM5: TDateField;
    CdsTtAp1GetRPDOM5: TDateField;
    CdsTtAp1GetDNOOM5: TIntegerField;
    CdsTtAp1GetTNMCNO: TStringField;
    CdsTtAp1GetTNMSMN: TStringField;
    CdsTtPasGetTALPAS: TIntegerField;
    CdsTtAd1GetEDTAD1: TDateField;
    CdsTtAd1GetWISAD1: TIntegerField;
    CdsTtAd1GetCOLAD1: TStringField;
    CdsTtAd1GetQT1AD1: TIntegerField;
    CdsTtAd1GetITNAD1: TStringField;
    CdsTtSchGetDay: TClientDataSet;
    CdsTtSchGetDaySTSSCH: TStringField;
    CdsTtSchGetDayCMPSCH: TStringField;
    CdsTtSchGetDayBRNSCH: TStringField;
    CdsTtSchGetDayYARSCH: TIntegerField;
    CdsTtSchGetDayPRDSCH: TIntegerField;
    CdsTtSchGetDayDFRSCH: TDateField;
    CdsTtSchGetDayDTOSCH: TDateField;
    CdsTtSchGetDayFR1SCH: TDateField;
    CdsTtSchGetDayTO1SCH: TDateField;
    CdsTtSchGetDayFR2SCH: TDateField;
    CdsTtSchGetDayTO2SCH: TDateField;
    CdsTtSchGetDayFR3SCH: TDateField;
    CdsTtSchGetDayTO3SCH: TDateField;
    CdsTtSchGetDayFR4SCH: TDateField;
    CdsTtSchGetDayTO4SCH: TDateField;
    CdsTtSchGetDayENTUSR: TStringField;
    CdsTtSchGetDayENTDTE: TSQLTimeStampField;
    CdsTtSchGetDayEDTUSR: TStringField;
    CdsTtSchGetDayEDTDTE: TSQLTimeStampField;
    CdsTtSchGetDayW1: TStringField;
    CdsTtSchGetDayW2: TStringField;
    CdsTtSchGetDayW3: TStringField;
    CdsTtSchGetDayW4: TStringField;
    CdsTtSchGetDayFD1: TSmallintField;
    CdsTtSchGetDayTD1: TSmallintField;
    CdsTtSchGetDayFD2: TSmallintField;
    CdsTtSchGetDayTD2: TSmallintField;
    CdsTtSchGetDayFD3: TSmallintField;
    CdsTtSchGetDayTD3: TSmallintField;
    CdsTtSchGetDayFD4: TSmallintField;
    CdsTtSchGetDayTD4: TSmallintField;
    CdsTtAd1GetTNMCOL: TStringField;
    CdsTtAd1GetList: TClientDataSet;
    CdsTtAd1GetListCMPAD1: TStringField;
    CdsTtAd1GetListBRNAD1: TStringField;
    CdsTtAd1GetListYARAD1: TIntegerField;
    CdsTtAd1GetListPRDAD1: TIntegerField;
    CdsTtAd1GetListDCDAD1: TStringField;
    CdsTtAd1GetListDNOAD1: TIntegerField;
    CdsTtAd1GetListIWKAD1: TIntegerField;
    CdsTtAd1GetListIDTAD1: TDateField;
    CdsTtAd1GetListQT1AD1: TIntegerField;
    procedure CdsTtSchGetDDTPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtSchGetIDTPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtSchGetRDVPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtSchGetYARPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtSchGetCalcFields(DataSet: TDataSet);
    procedure CdsTtRdwGetCalcFields(DataSet: TDataSet);
    procedure CdsTtAd1GetIDTAD1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

  private

    function GetDSProxy(): TDSAssignWorkClient; inline;
  public

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property AssignWorkProxy: TDSAssignWorkClient read GetDSProxy;

    function TtSchGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
    function TtSchInsUpd(STSSCH: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DFRSCH: Double; DTOSCH: Double; FR1SCH: Double; TO1SCH: Double; FR2SCH: Double; TO2SCH: Double; FR3SCH: Double; TO3SCH: Double; FR4SCH: Double; TO4SCH: Double; ENTUSR: string): Boolean;
    function TtSchDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
    function TtSchOptGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
    function TtSchOptInsUpd(STSSCH: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; WEKOPT: Integer; OPTOPT: string; DATOPT: Double; MEMOPT: string; ENTUSR: string): Boolean;
    function TtSchOptDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; WEKOPT: Integer; OPTOPT: string; DATOPT: Double): Boolean;

    function TtRdwGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDRDW: string; RDTRDW: Double): Boolean;
    function TtRdwCopy(CMPRDW: string; BRNRDW: string; YARRDW: Integer; PRDRDW: Integer; DCDRDW: string; RDTRDW: Double; ENTUSR: string; var OUT_DNORDW: Integer): Boolean;
    function TtRdwInsUpd(STSRDW: string; CMPRDW: string; BRNRDW: string; YARRDW: Integer; PRDRDW: Integer; DCDRDW: string; DNORDW: Integer; SEQRDW: Integer; OPTRDW: string; RWKRDW: Integer; RDTRDW: Double; RNORDW: string; ITNRDW: string; COLRDW: string; Q11RDW: Integer; Q12RDW: Integer; Q21RDW: Integer; Q22RDW: Integer; Q31RDW: Integer; Q32RDW: Integer; Q41RDW: Integer; Q42RDW: Integer; Q51RDW: Integer; Q52RDW: Integer; ENTUSR: string; var OUT_DNORDW: Integer): Boolean;
    function TtRdwDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDRDW: string; DNORDW: Integer; SEQRDW: Integer; ITNRDW: string): Boolean;

    function TtPasGetByDat(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDPAS: string; IDTPAS: Double; FLAG: string): Boolean;
    function TtPasGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOPAS: Integer; RDTPAS: Double; IWKPAS: Integer; NEW_MOD: string): Boolean;
    function TtPasInsUpd(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNORDW: Integer; RDTPAS: Double; IWKPAS: Integer; NEW_MOD: string; ENTUSR: string; var OUT_DNOPAS: Integer): Boolean;

    function TtAsnGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOASN: Integer; RDTASN: Double; IWKASN: Integer; NEW_MOD: string): Boolean;
    function TtAswGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOASW: Integer; RDTASW: Double; IWKASW: Integer; NEW_MOD: string): Boolean;
    function TtColGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOCOL: Integer; RDTCOL: Double; IWKCOL: Integer; RDNCOL: Integer; NEW_MOD: string): Boolean;
    function TtAd1GetList(CRITERIA: string; ORDERFIELD: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAd1: Integer; IDTAd1: Double): Boolean;
    function TtAd1Get(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAd1: Integer; RDTAd1: Double; IWKAd1: Integer; RDNAd1: Integer; NEW_MOD: string): Boolean;
    function TtAP1Get(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAP1: Integer; RDTAP1: Double; IWKAP1: Integer; RDNAP1: Integer; NEW_MOD: string): Boolean;
    function TtGenDoc(CMP: string; BRN: string; YAR: Integer; PRD: Integer; DCD: string; var OUT_DNO: string): Boolean;
    function TtAD1InsUpd(CMPAD1: string; BRNAD1: string; YARAD1: Integer; PRDAD1: Integer; DCDAD1: string; DNOAD1: Integer; SEQAD1: Integer; iwkad1: Integer; idtad1: Double; edtad1: Double; wisad1: Integer; ITNAD1: string; colad1: string; qt1ad1: Double; entusr: string; md: string): Boolean;
    function TtAD1Del(CMPAD1: string; BRNAD1: string; YARAD1: Integer; PRDAD1: Integer; DCDAD1: string; DNOAD1: Integer; SEQAD1: Integer; ITNAD1: string): Boolean;
  end;

var
  DSAssignWorkDM: TDSAssignWorkDM;

implementation

{$R *.dfm}


function TDSAssignWorkDM.GetDSProxy(): TDSAssignWorkClient;
begin
  Result := TDSAssignWorkClient(DSProxy);
end;


procedure TDSAssignWorkDM.CdsTtAd1GetIDTAD1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSAssignWorkDM.CdsTtRdwGetCalcFields(DataSet: TDataSet);
begin
  CdsTtRdwGetSUMRDW.AsFloat :=  CdsTtRdwGetQ11RDW.AsFloat +
                                CdsTtRdwGetQ21RDW.AsFloat +
                                CdsTtRdwGetQ31RDW.AsFloat +
                                CdsTtRdwGetQ41RDW.AsFloat +
                                CdsTtRdwGetQ51RDW.AsFloat;

end;

procedure TDSAssignWorkDM.CdsTtSchGetCalcFields(DataSet: TDataSet);
begin
  CdsTtSchGetDDDDMMYYYY.AsString := FormatDateTime('DD',CdsTtSchGetDFRSCH.AsDateTime) + '-' +
                                    FormatDateTime('DD',CdsTtSchGetDTOSCH.AsDateTime) + '  ' +
                                    FormatDateTime('mmm yyyy',CdsTtSchGetDFRSCH.AsDateTime);

end;

procedure TDSAssignWorkDM.CdsTtSchGetDDTPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSAssignWorkDM.CdsTtSchGetIDTPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSAssignWorkDM.CdsTtSchGetRDVPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSAssignWorkDM.CdsTtSchGetYARPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := IntToStr(Sender.AsInteger + 543);

end;

function TDSAssignWorkDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSAssignWorkClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSAssignWorkDM.TtSchGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
begin
   result := AssignWorkProxy.TtSchGet(CMPSCH,BRNSCH,YARSCH,PRDSCH);
end;

function TDSAssignWorkDM.TtSchInsUpd(STSSCH: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DFRSCH: Double; DTOSCH: Double; FR1SCH: Double; TO1SCH: Double; FR2SCH: Double; TO2SCH: Double; FR3SCH: Double; TO3SCH: Double; FR4SCH: Double; TO4SCH: Double; ENTUSR: string): Boolean;
begin
   result := AssignWorkProxy.TtSchInsUpd(STSSCH,CMPSCH,BRNSCH,YARSCH,PRDSCH,DFRSCH,DTOSCH,FR1SCH,TO1SCH,FR2SCH,TO2SCH,FR3SCH,TO3SCH,FR4SCH,TO4SCH,ENTUSR);
end;

function TDSAssignWorkDM.TtSchDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
begin
   result := AssignWorkProxy.TtSchDel(CMPSCH, BRNSCH,YARSCH,PRDSCH);
end;

function TDSAssignWorkDM.TtSchOptGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
begin
   result := AssignWorkProxy.TtSchOptGet(CMPSCH, BRNSCH,YARSCH,PRDSCH);
end;

function TDSAssignWorkDM.TtSchOptInsUpd(STSSCH: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; WEKOPT: Integer; OPTOPT: string; DATOPT: Double; MEMOPT: string; ENTUSR: string): Boolean;
begin
   result := AssignWorkProxy.TtSchOptInsUpd(STSSCH,CMPSCH,BRNSCH,YARSCH,PRDSCH,WEKOPT,OPTOPT,DATOPT,MEMOPT,ENTUSR);
end;

function TDSAssignWorkDM.TtSchOptDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; WEKOPT: Integer; OPTOPT: string; DATOPT: Double): Boolean;
begin
   result := AssignWorkProxy.TtSchOptDel(CMPSCH, BRNSCH,YARSCH,PRDSCH,WEKOPT,OPTOPT,DATOPT);
end;

function TDSAssignWorkDM.TtRdwGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDRDW: string; RDTRDW: Double): Boolean;
begin
   result := AssignWorkProxy.TtRdwGet(CMPSCH, BRNSCH,YARSCH,PRDSCH,DCDRDW,RDTRDW);
end;

function TDSAssignWorkDM.TtRdwCopy(CMPRDW: string; BRNRDW: string; YARRDW: Integer; PRDRDW: Integer; DCDRDW: string; RDTRDW: Double; ENTUSR: string; var OUT_DNORDW: Integer): Boolean;
begin
   result := AssignWorkProxy.TtRdwCopy(CMPRDW, BRNRDW, YARRDW, PRDRDW, DCDRDW, RDTRDW, ENTUSR, OUT_DNORDW);
end;

function TDSAssignWorkDM.TtRdwInsUpd(STSRDW: string; CMPRDW: string; BRNRDW: string; YARRDW: Integer; PRDRDW: Integer; DCDRDW: string; DNORDW: Integer; SEQRDW: Integer; OPTRDW: string; RWKRDW: Integer; RDTRDW: Double; RNORDW: string; ITNRDW: string; COLRDW: string; Q11RDW: Integer; Q12RDW: Integer; Q21RDW: Integer; Q22RDW: Integer; Q31RDW: Integer; Q32RDW: Integer; Q41RDW: Integer; Q42RDW: Integer; Q51RDW: Integer; Q52RDW: Integer; ENTUSR: string; var OUT_DNORDW: Integer): Boolean;
begin
   result := AssignWorkProxy.TtRdwInsUpd(STSRDW,CMPRDW,BRNRDW,YARRDW,PRDRDW,
              DCDRDW,DNORDW,SEQRDW,OPTRDW,RWKRDW,RDTRDW,RNORDW,ITNRDW,COLRDW,
              Q11RDW,Q12RDW,Q21RDW,Q22RDW,Q31RDW,Q32RDW,Q41RDW,Q42RDW,Q51RDW,Q52RDW,ENTUSR,OUT_DNORDW);
end;

function TDSAssignWorkDM.TtRdwDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDRDW: string; DNORDW: Integer; SEQRDW: Integer; ITNRDW: string): Boolean;
begin
   result := AssignWorkProxy.TtRdwDel(CMPSCH, BRNSCH,YARSCH,PRDSCH,DCDRDW,DNORDW,SEQRDW,ITNRDW);
end;

function TDSAssignWorkDM.TtPasGetByDat(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDPAS: string; IDTPAS: Double; FLAG: string): Boolean;
begin
   result := AssignWorkProxy.TtPasGetByDat(CMPSCH, BRNSCH, YARSCH, PRDSCH, DCDPAS,IDTPAS,FLAG);
end;

function TDSAssignWorkDM.TtPasGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOPAS: Integer; RDTPAS: Double; IWKPAS: Integer; NEW_MOD: string): Boolean;
begin
   result := AssignWorkProxy.TtPasGet(CMPSCH, BRNSCH, YARSCH, PRDSCH, DNOPAS, RDTPAS, IWKPAS, NEW_MOD);
end;

function TDSAssignWorkDM.TtPasInsUpd(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNORDW: Integer; RDTPAS: Double; IWKPAS: Integer; NEW_MOD: string; ENTUSR: string; var OUT_DNOPAS: Integer): Boolean;
begin
   result := AssignWorkProxy.TtPasInsUpd(CMPSCH, BRNSCH, YARSCH, PRDSCH, DNORDW, RDTPAS, IWKPAS, NEW_MOD, ENTUSR, OUT_DNOPAS);
end;

function TDSAssignWorkDM.TtAsnGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOASN: Integer; RDTASN: Double; IWKASN: Integer; NEW_MOD: string): Boolean;
begin
   result := AssignWorkProxy.TtAsnGet(CMPSCH, BRNSCH, YARSCH, PRDSCH, DNOASN,RDTASN,IWKASN,NEW_MOD);
end;

function TDSAssignWorkDM.TtAswGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOASW: Integer; RDTASW: Double; IWKASW: Integer; NEW_MOD: string): Boolean;
begin
   result := AssignWorkProxy.TtAswGet(CMPSCH, BRNSCH, YARSCH, PRDSCH, DNOASW,RDTASW,IWKASW,NEW_MOD);
end;

function TDSAssignWorkDM.TtColGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOCOL: Integer; RDTCOL: Double; IWKCOL: Integer; RDNCOL: Integer; NEW_MOD: string): Boolean;
BEGIN
   result := AssignWorkProxy.TtColGet(CMPSCH, BRNSCH, YARSCH, PRDSCH, DNOCOL,RDTCOL,IWKCOL,RDNCOL,NEW_MOD);
END;

function TDSAssignWorkDM.TtAd1GetList(CRITERIA: string; ORDERFIELD: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAd1: Integer; IDTAd1: Double): Boolean;
begin
  result := AssignWorkProxy.TtAd1GetList(CRITERIA,ORDERFIELD,CMPSCH, BRNSCH, YARSCH, PRDSCH, DNOAD1,IDTAD1);
end;


function TDSAssignWorkDM.TtAd1Get(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAd1: Integer; RDTAd1: Double; IWKAd1: Integer; RDNAd1: Integer; NEW_MOD: string): Boolean;
begin
  result := AssignWorkProxy.TtAd1Get(CMPSCH, BRNSCH, YARSCH, PRDSCH, DNOAD1,RDTAD1,IWKAD1,RDNAD1,NEW_MOD);
end;

function TDSAssignWorkDM.TtAP1Get(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAP1: Integer; RDTAP1: Double; IWKAP1: Integer; RDNAP1: Integer; NEW_MOD: string): Boolean;
begin
  result := AssignWorkProxy.TtAP1Get(CMPSCH, BRNSCH, YARSCH, PRDSCH, DNOAP1,RDTAP1,IWKAP1,RDNAP1,NEW_MOD);
end;

function TDSAssignWorkDM.TtGenDoc(CMP: string; BRN: string; YAR: Integer; PRD: Integer; DCD: string; var OUT_DNO: string): Boolean;
begin
  result := AssignWorkProxy.TtGenDoc(CMP, BRN, YAR, PRD, DCD,OUT_DNO);
end;

function TDSAssignWorkDM.TtAD1InsUpd(CMPAD1: string; BRNAD1: string; YARAD1: Integer; PRDAD1: Integer; DCDAD1: string; DNOAD1: Integer; SEQAD1: Integer; iwkad1: Integer; idtad1: Double; edtad1: Double; wisad1: Integer; ITNAD1: string; colad1: string; qt1ad1: Double; entusr: string; md: string): Boolean;
begin
  result := AssignWorkProxy.TtAD1InsUpd(CMPAD1, BRNAD1, YARAD1, PRDAD1, DCDAD1, DNOAD1,SEQAD1,iwkad1, idtad1,EDTAD1,WISAD1,ITNAD1,colad1, QT1AD1,entusr, md);
end;

function TDSAssignWorkDM.TtAD1Del(CMPAD1: string; BRNAD1: string; YARAD1: Integer; PRDAD1: Integer; DCDAD1: string; DNOAD1: Integer; SEQAD1: Integer; ITNAD1: string): Boolean;
begin
  result := AssignWorkProxy.TtAD1Del(CMPAD1, BRNAD1, YARAD1, PRDAD1, DCDAD1,DNOAD1,SEQAD1,ITNAD1);
end;

end.
