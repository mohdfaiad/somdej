unit DSRegistationIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, DSRegistationIntf, SqlExpr,
  DBXDataSnap, DBXCommon, DBXPool, frxClass, frxDBSet, frxExportPDF, frxRich,
  IndyPeerImpl, DSSetupIntfDM;

type
  TDSRegistationDM = class(TDSMainDM)
    CdsAm6GetList: TClientDataSet;
    CdsAm6GetYm4: TClientDataSet;
    CdsAm6GetByNo: TClientDataSet;
    CdsAm6GetListYARAM6: TIntegerField;
    CdsAm6GetListPRDAM6: TIntegerField;
    CdsAm6GetListCMPAM6: TStringField;
    CdsAm6GetListBRNAM6: TStringField;
    CdsAm6GetListDEPAM6: TStringField;
    CdsAm6GetListDCDAM6: TStringField;
    CdsAm6GetListDNOAM6: TIntegerField;
    CdsAm6GetListIDTAM6: TDateField;
    CdsAm6GetListTYPAM6: TStringField;
    CdsAm6GetListTOTALAM6: TFMTBCDField;
    CdsAm6GetListRETURNAM6: TFMTBCDField;
    CdsAm6GetListDIFAM6: TFMTBCDField;
    CdsAm6GetYm4YARYM4: TIntegerField;
    CdsAm6GetYm4PRDYM4: TIntegerField;
    CdsAm6GetYm4CMPYM4: TStringField;
    CdsAm6GetYm4BRNYM4: TStringField;
    CdsAm6GetYm4DEPYM4: TStringField;
    CdsAm6GetYm4DCDYM4: TStringField;
    CdsAm6GetYm4DNOYM4: TIntegerField;
    CdsAm6GetYm4SEQYM4: TIntegerField;
    CdsAm6GetYm4IDTYM4: TDateField;
    CdsAm6GetYm4RDNYM4: TIntegerField;
    CdsAm6GetYm4RDTYM4: TDateField;
    CdsAm6GetYm4TNMSMN: TStringField;
    CdsAm6GetYm4CTYOM5: TSmallintField;
    CdsAm6GetYm4CNOOM5: TLargeintField;
    CdsAm6GetYm4TNMCSM: TStringField;
    CdsAm6GetYm4TNMSRS: TStringField;
    CdsAm6GetYm4TNMCOL: TStringField;
    CdsAm6GetYm4SEROM5: TStringField;
    CdsAm6GetYm4REGRT7: TStringField;
    CdsAm6GetYm4RENRT7: TIntegerField;
    CdsAm6GetYm4PRVRT7: TStringField;
    CdsAm6GetYm4TNMPRV: TStringField;
    CdsAm6GetYm4REGFULL: TStringField;
    CdsAm6GetYm4AMTYM4: TFMTBCDField;
    CdsAm6GetByNoYARYM4: TIntegerField;
    CdsAm6GetByNoPRDYM4: TIntegerField;
    CdsAm6GetByNoCMPYM4: TStringField;
    CdsAm6GetByNoBRNYM4: TStringField;
    CdsAm6GetByNoDEPYM4: TStringField;
    CdsAm6GetByNoDCDYM4: TStringField;
    CdsAm6GetByNoDNOYM4: TIntegerField;
    CdsAm6GetByNoSEQYM4: TIntegerField;
    CdsAm6GetByNoIDTYM4: TDateField;
    CdsAm6GetByNoRDNYM4: TIntegerField;
    CdsAm6GetByNoRDTYM4: TDateField;
    CdsAm6GetByNoTNMSMN: TStringField;
    CdsAm6GetByNoCTYOM5: TSmallintField;
    CdsAm6GetByNoCNOOM5: TLargeintField;
    CdsAm6GetByNoTNMCSM: TStringField;
    CdsAm6GetByNoTNMSRS: TStringField;
    CdsAm6GetByNoTNMCOL: TStringField;
    CdsAm6GetByNoSEROM5: TStringField;
    CdsAm6GetByNoREGRT7: TStringField;
    CdsAm6GetByNoRENRT7: TIntegerField;
    CdsAm6GetByNoPRVRT7: TStringField;
    CdsAm6GetByNoTNMPRV: TStringField;
    CdsAm6GetByNoREGFULL: TStringField;
    CdsAm6GetByNoARSAM6: TFMTBCDField;
    CdsAm6GetYm4RDCYM4: TStringField;
    CdsAm6GetByNoRDCYM4: TStringField;
    CdsAm6GetByNoARGAM6: TFMTBCDField;
    CdsAm6GetByNoBALYM4: TFMTBCDField;
    CdsAm6GetYm4ARGAM6: TFMTBCDField;
    CdsAm6GetYm4BALYM4: TFMTBCDField;
    CdsAm6GetYm4FLAG: TBooleanField;
    CdsAm7GetList: TClientDataSet;
    CdsAm7GetListYARAM7: TIntegerField;
    CdsAm7GetListPRDAM7: TIntegerField;
    CdsAm7GetListCMPAM7: TStringField;
    CdsAm7GetListBRNAM7: TStringField;
    CdsAm7GetListDEPAM7: TStringField;
    CdsAm7GetListDCDAM7: TStringField;
    CdsAm7GetListDNOAM7: TIntegerField;
    CdsAm7GetListIDTAM7: TDateField;
    CdsAm7GetListTYPAM7: TStringField;
    CdsAm7GetListTOTALAM7: TFMTBCDField;
    CdsAm7GetByNo: TClientDataSet;
    CdsAm7GetByNoYARYM4: TIntegerField;
    CdsAm7GetByNoPRDYM4: TIntegerField;
    CdsAm7GetByNoCMPYM4: TStringField;
    CdsAm7GetByNoBRNYM4: TStringField;
    CdsAm7GetByNoDEPYM4: TStringField;
    CdsAm7GetByNoDCDYM4: TStringField;
    CdsAm7GetByNoDNOYM4: TIntegerField;
    CdsAm7GetByNoSEQYM4: TIntegerField;
    CdsAm7GetByNoIDTYM4: TDateField;
    CdsAm7GetByNoRDCYM4: TStringField;
    CdsAm7GetByNoRDNYM4: TIntegerField;
    CdsAm7GetByNoRDTYM4: TDateField;
    CdsAm7GetByNoTNMSMN: TStringField;
    CdsAm7GetByNoCTYOM5: TSmallintField;
    CdsAm7GetByNoCNOOM5: TLargeintField;
    CdsAm7GetByNoTNMCSM: TStringField;
    CdsAm7GetByNoTNMSRS: TStringField;
    CdsAm7GetByNoTNMCOL: TStringField;
    CdsAm7GetByNoSEROM5: TStringField;
    CdsAm7GetByNoREGRT7: TStringField;
    CdsAm7GetByNoRENRT7: TIntegerField;
    CdsAm7GetByNoPRVRT7: TStringField;
    CdsAm7GetByNoTNMPRV: TStringField;
    CdsAm7GetByNoREGFULL: TStringField;
    CdsAm7GetByNoARSAM6: TFMTBCDField;
    CdsAm7GetListRDCAM7: TStringField;
    CdsAm7GetListRDNAM7: TIntegerField;
    CdsAm7GetListRDTAM7: TDateField;
    CdsAm6GetByNoPRCAM6: TStringField;
    CdsAm6GetByNoSEQAM6: TIntegerField;
    CdsAm7GetByNoSEQAM6: TIntegerField;
    CdsRg1GetList: TClientDataSet;
    CdsRg1GetListYARRG1: TIntegerField;
    CdsRg1GetListPRDRG1: TIntegerField;
    CdsRg1GetListCMPRG1: TStringField;
    CdsRg1GetListBRNRG1: TStringField;
    CdsRg1GetListDEPRG1: TStringField;
    CdsRg1GetListDCDRG1: TStringField;
    CdsRg1GetListDNORG1: TIntegerField;
    CdsRg1GetListIDTRG1: TDateField;
    CdsRg1GetListTYPRG1: TStringField;
    CdsRg1GetListTNMVM1: TStringField;
    CdsRg1GetListEDTRG1: TDateField;
    CdsRg1GetListTOTALRG1: TFMTBCDField;
    CdsRg1GetOm5: TClientDataSet;
    CdsRg1GetOm5YAROM5: TIntegerField;
    CdsRg1GetOm5CMPOM5: TStringField;
    CdsRg1GetOm5BRNOM5: TStringField;
    CdsRg1GetOm5DCDOM5: TStringField;
    CdsRg1GetOm5DNOOM5: TIntegerField;
    CdsRg1GetOm5SEQOM5: TSmallintField;
    CdsRg1GetOm5IDTOM5: TDateField;
    CdsRg1GetOm5APNOM5: TIntegerField;
    CdsRg1GetOm5TNMSMN: TStringField;
    CdsRg1GetOm5CTYOM5: TSmallintField;
    CdsRg1GetOm5CNOOM5: TLargeintField;
    CdsRg1GetOm5TNMCSM: TStringField;
    CdsRg1GetOm5PRDOM5: TStringField;
    CdsRg1GetOm5TNMPM1: TStringField;
    CdsRg1GetOm5TNMSRS: TStringField;
    CdsRg1GetOm5TNMCOL: TStringField;
    CdsRg1GetOm5SEROM5: TStringField;
    CdsRg1GetOm5ENGOM5: TStringField;
    CdsRg1GetOm5AMTAMT: TFMTBCDField;
    CdsRg1GetByNo: TClientDataSet;
    CdsRg1GetByNoYARRG1: TIntegerField;
    CdsRg1GetByNoPRDRG1: TIntegerField;
    CdsRg1GetByNoCMPRG1: TStringField;
    CdsRg1GetByNoBRNRG1: TStringField;
    CdsRg1GetByNoDEPRG1: TStringField;
    CdsRg1GetByNoDCDRG1: TStringField;
    CdsRg1GetByNoDNORG1: TIntegerField;
    CdsRg1GetByNoSEQRG1: TIntegerField;
    CdsRg1GetByNoIDTRG1: TDateField;
    CdsRg1GetByNoRDCRG1: TStringField;
    CdsRg1GetByNoRDNRG1: TIntegerField;
    CdsRg1GetByNoRDTRG1: TDateField;
    CdsRg1GetByNoTNMSMN: TStringField;
    CdsRg1GetByNoCTYOM5: TSmallintField;
    CdsRg1GetByNoCNOOM5: TLargeintField;
    CdsRg1GetByNoTNMCSM: TStringField;
    CdsRg1GetByNoTNMSRS: TStringField;
    CdsRg1GetByNoTNMCOL: TStringField;
    CdsRg1GetByNoSEROM5: TStringField;
    CdsRg1GetByNoARSRG1: TFMTBCDField;
    CdsRg1GetByNoRSQRG1: TIntegerField;
    CdsRg1GetOm5PRT: TStringField;
    CdsRg1GetByNoAPNOM5: TIntegerField;
    CdsRg1GetByNoPRDOM5: TStringField;
    CdsRg1GetByNoTNMPM1: TStringField;
    CdsRg1GetByNoENGOM5: TStringField;
    CdsRg1GetListVNORG1: TStringField;
    CdsRg1GetByNoPRVRG2: TStringField;
    CdsRg1GetByNoTNMPRV: TStringField;
    CdsRg1GetByNoREGRG2: TStringField;
    CdsRg1GetByNoRENRG2: TIntegerField;
    CdsRg1GetByNoRVDRG2: TDateField;
    CdsRg1GetByNoRVNRG2: TFMTBCDField;
    CdsRg1GetByNoARARG2: TFMTBCDField;
    CdsRg1GetByNoAOARG2: TFMTBCDField;
    CdsRg1GetByNoPRT: TStringField;
    CdsRg1GetByNoTOTALAMT: TFloatField;
    CdsRg1GetByNoREGFULL: TStringField;
    CdsRg1GetByNoAPDOM5: TDateField;
    CdsRg2GetList: TClientDataSet;
    CdsRg2GetListYARRG2: TIntegerField;
    CdsRg2GetListPRDRG2: TIntegerField;
    CdsRg2GetListCMPRG2: TStringField;
    CdsRg2GetListBRNRG2: TStringField;
    CdsRg2GetListDEPRG2: TStringField;
    CdsRg2GetListDCDRG2: TStringField;
    CdsRg2GetListDNORG2: TIntegerField;
    CdsRg2GetListIDTRG2: TDateField;
    CdsRg2GetListRDCRG2: TStringField;
    CdsRg2GetListRDNRG2: TIntegerField;
    CdsRg2GetListRDTRG2: TDateField;
    CdsRg2GetListTYPRG2: TStringField;
    CdsRg2GetListVNORG2: TStringField;
    CdsRg2GetListTNMVM1: TStringField;
    CdsRg2GetListEDTRG2: TDateField;
    CdsRg2GetListBDTRG2: TDateField;
    CdsRg2GetListTOTALARARG2: TFMTBCDField;
    CdsRg2GetListTOTALAOARG2: TFMTBCDField;
    CdsRg2GetListTOTALABLRG2: TFMTBCDField;
    CdsRg2GetByNo: TClientDataSet;
    CdsRg2GetByNoYARRG2: TIntegerField;
    CdsRg2GetByNoPRDRG2: TIntegerField;
    CdsRg2GetByNoCMPRG2: TStringField;
    CdsRg2GetByNoBRNRG2: TStringField;
    CdsRg2GetByNoDEPRG2: TStringField;
    CdsRg2GetByNoDCDRG2: TStringField;
    CdsRg2GetByNoDNORG2: TIntegerField;
    CdsRg2GetByNoSEQRG2: TIntegerField;
    CdsRg2GetByNoIDTRG2: TDateField;
    CdsRg2GetByNoAPNOM5: TIntegerField;
    CdsRg2GetByNoAPDOM5: TDateField;
    CdsRg2GetByNoRDCRG2: TStringField;
    CdsRg2GetByNoRDNRG2: TIntegerField;
    CdsRg2GetByNoRSQRG2: TIntegerField;
    CdsRg2GetByNoRDTRG2: TDateField;
    CdsRg2GetByNoTNMSMN: TStringField;
    CdsRg2GetByNoCTYOM5: TSmallintField;
    CdsRg2GetByNoCNOOM5: TLargeintField;
    CdsRg2GetByNoTNMCSM: TStringField;
    CdsRg2GetByNoPRDOM5: TStringField;
    CdsRg2GetByNoTNMPM1: TStringField;
    CdsRg2GetByNoTNMSRS: TStringField;
    CdsRg2GetByNoTNMCOL: TStringField;
    CdsRg2GetByNoSEROM5: TStringField;
    CdsRg2GetByNoENGOM5: TStringField;
    CdsRg2GetByNoARSRG2: TFMTBCDField;
    CdsRg2GetByNoPRVRG2: TStringField;
    CdsRg2GetByNoTNMPRV: TStringField;
    CdsRg2GetByNoREGRG2: TStringField;
    CdsRg2GetByNoRENRG2: TIntegerField;
    CdsRg2GetByNoREGFULL: TStringField;
    CdsRg2GetByNoRVDRG2: TDateField;
    CdsRg2GetByNoRVNRG2: TFMTBCDField;
    CdsRg2GetByNoARARG2: TFMTBCDField;
    CdsRg2GetByNoAOARG2: TFMTBCDField;
    CdsRg2GetByNoPRT: TStringField;
    CdsRg2GetByNoTOTALAMT: TFloatField;
    CdsRg2BookGetList: TClientDataSet;
    CdsRg2BookGetListYARRG2: TIntegerField;
    CdsRg2BookGetListPRDRG2: TIntegerField;
    CdsRg2BookGetListCMPRG2: TStringField;
    CdsRg2BookGetListBRNRG2: TStringField;
    CdsRg2BookGetListDEPRG2: TStringField;
    CdsRg2BookGetListDCDRG2: TStringField;
    CdsRg2BookGetListDNORG2: TIntegerField;
    CdsRg2BookGetListSEQRG2: TIntegerField;
    CdsRg2BookGetListIDTRG2: TDateField;
    CdsRg2BookGetListAPNOM5: TIntegerField;
    CdsRg2BookGetListAPDOM5: TDateField;
    CdsRg2BookGetListRDCRG2: TStringField;
    CdsRg2BookGetListRDNRG2: TIntegerField;
    CdsRg2BookGetListRSQRG2: TIntegerField;
    CdsRg2BookGetListRDTRG2: TDateField;
    CdsRg2BookGetListTNMSMN: TStringField;
    CdsRg2BookGetListCTYOM5: TSmallintField;
    CdsRg2BookGetListCNOOM5: TLargeintField;
    CdsRg2BookGetListTNMCSM: TStringField;
    CdsRg2BookGetListPRDOM5: TStringField;
    CdsRg2BookGetListTNMPM1: TStringField;
    CdsRg2BookGetListTNMSRS: TStringField;
    CdsRg2BookGetListTNMCOL: TStringField;
    CdsRg2BookGetListSEROM5: TStringField;
    CdsRg2BookGetListENGOM5: TStringField;
    CdsRg2BookGetListARSRG2: TFMTBCDField;
    CdsRg2BookGetListPRVRG2: TStringField;
    CdsRg2BookGetListTNMPRV: TStringField;
    CdsRg2BookGetListREGRG2: TStringField;
    CdsRg2BookGetListRENRG2: TIntegerField;
    CdsRg2BookGetListREGFULL: TStringField;
    CdsRg2BookGetListRVDRG2: TDateField;
    CdsRg2BookGetListRVNRG2: TFMTBCDField;
    CdsRg2BookGetListARARG2: TFMTBCDField;
    CdsRg2BookGetListAOARG2: TFMTBCDField;
    CdsRg2BookGetListBDTRG2: TDateField;
    CdsRg2BookGetListBRDRG2: TDateField;
    CdsRg2BookGetListBST: TStringField;
    CdsRg2BookGetListTNMVM1: TStringField;
    CdsRg2BookGetByNo: TClientDataSet;
    CdsRg2BookGetByNoYARRG2: TIntegerField;
    CdsRg2BookGetByNoPRDRG2: TIntegerField;
    CdsRg2BookGetByNoCMPRG2: TStringField;
    CdsRg2BookGetByNoBRNRG2: TStringField;
    CdsRg2BookGetByNoDEPRG2: TStringField;
    CdsRg2BookGetByNoDCDRG2: TStringField;
    CdsRg2BookGetByNoDNORG2: TIntegerField;
    CdsRg2BookGetByNoSEQRG2: TIntegerField;
    CdsRg2BookGetByNoIDTRG2: TDateField;
    CdsRg2BookGetByNoAPNOM5: TIntegerField;
    CdsRg2BookGetByNoAPDOM5: TDateField;
    CdsRg2BookGetByNoRDCRG2: TStringField;
    CdsRg2BookGetByNoRDNRG2: TIntegerField;
    CdsRg2BookGetByNoRSQRG2: TIntegerField;
    CdsRg2BookGetByNoRDTRG2: TDateField;
    CdsRg2BookGetByNoTNMSMN: TStringField;
    CdsRg2BookGetByNoCTYOM5: TSmallintField;
    CdsRg2BookGetByNoCNOOM5: TLargeintField;
    CdsRg2BookGetByNoTNMCSM: TStringField;
    CdsRg2BookGetByNoPRDOM5: TStringField;
    CdsRg2BookGetByNoTNMPM1: TStringField;
    CdsRg2BookGetByNoTNMSRS: TStringField;
    CdsRg2BookGetByNoTNMCOL: TStringField;
    CdsRg2BookGetByNoSEROM5: TStringField;
    CdsRg2BookGetByNoENGOM5: TStringField;
    CdsRg2BookGetByNoARSRG2: TFMTBCDField;
    CdsRg2BookGetByNoPRVRG2: TStringField;
    CdsRg2BookGetByNoTNMPRV: TStringField;
    CdsRg2BookGetByNoREGRG2: TStringField;
    CdsRg2BookGetByNoRENRG2: TIntegerField;
    CdsRg2BookGetByNoREGFULL: TStringField;
    CdsRg2BookGetByNoRVDRG2: TDateField;
    CdsRg2BookGetByNoRVNRG2: TFMTBCDField;
    CdsRg2BookGetByNoARARG2: TFMTBCDField;
    CdsRg2BookGetByNoAOARG2: TFMTBCDField;
    CdsRg2BookGetByNoBDTRG2: TDateField;
    CdsRg2BookGetByNoBST: TStringField;
    CdsRg2GetByNoBDTRG2: TDateField;
    CdsRg2GetByNoBST: TStringField;
    CdsRg2BookGetByNoPRT: TStringField;
    CdsRg1GetOm5SELECT_FLAG: TBooleanField;
    CdsAm6GetByNoFLAG: TBooleanField;
    CdsRg2GetByNoFLAG: TBooleanField;
    CdsRg1GetOm5FLAG: TStringField;
    CdsRg1GetOm5APDOM5: TDateField;
    procedure CdsAm6GetListIDTAM6GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm6GetListTOTALAM6GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm6GetYm4AMTYM4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm6GetYm4IDTYM4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm6GetByNoARSAM6GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm6GetByNoIDTYM4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm7GetByNoARSAM6GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm7GetByNoIDTYM4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAm7GetListTOTALAM7GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetListIDTRG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetListTOTALRG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetOm5IDTOM5GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetOm5AMTAMTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetByNoIDTRG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetByNoARSRG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2GetListIDTRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2GetListTOTALARARG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2GetByNoIDTRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2GetByNoARSRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetByNoCalcFields(DataSet: TDataSet);
    procedure CdsRg1GetByNoARARG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2GetByNoTOTALAMTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2GetByNoCalcFields(DataSet: TDataSet);
    procedure CdsRg2GetListEDTRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2BookGetListIDTRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2BookGetListARSRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2BookGetByNoIDTRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg2BookGetByNoARSRG2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsRg1GetOm5CalcFields(DataSet: TDataSet);
    procedure CdsRg1GetOm5APDOM5GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

  private
    function GetDSProxy(): TDSRegistationClient; inline;

  public
    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property RegistationProxy: TDSRegistationClient read GetDSProxy;

    function TtAm6GetList(CRITERIA: string; ORDERFIELD: string; ICMPAM6: string; IBRNAM6: string; IDEPAM6: string; IDCDAM6: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
    function TtAm6GetYm4(CRITERIA: string; ORDERFIELD: string; IYARAM6: Integer; ICMPAM6: string): Boolean;
    function TtAm6GetByNo(IYARAM6: Integer; IPRDAM6: Integer; ICMPAM6: string; IBRNAM6: string; IDCDAM6: string; IDNOAM6: Integer; PRC: string): Boolean;
    function TtAm6InsUpd(CMPAM6: string; BRNAM6: string; YARAM6: Integer; PRDAM6: Integer; DCDAM6: string; DNOAM6: Integer; SEQAM6: Integer; IDTAM6: Double; RDCAM6: string; RDNAM6: Integer; RSQAM6: Integer; RDTAM6: Double; DEPAM6: string; CTYAM6: string; CNOAM6: Int64; TYPAM6: string; ARSAM6: Double; REFNO: string; ENTUSR: string): Boolean;
    function TtAm6Del(YARAM6: Integer; PRDAM6: Integer; CMPAM6: string; BRNAM6: string; DCDAM6: string; DNOAM6: Integer; ENTUSR: string): Boolean;

    function TtAM7GetList(CRITERIA: string; ORDERFIELD: string; ICMPAM7: string; IBRNAM7: string; IDEPAM7: string; IDCDAM7: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
    function TtAm7GetByNo(IYARAM7: Integer; IPRDAM7: Integer; ICMPAM7: string; IBRNAM7: string; IDCDAM7: string; IDNOAM7: Integer; PRC: string): Boolean;
    function TtAM7InsUpd(CMPAM7: string; BRNAM7: string; YARAM7: Integer; PRDAM7: Integer; DCDAM7: string; DNOAM7: Integer; SEQAM7: Integer; IDTAM7: Double; RDCAM7: string; RDNAM7: Integer; RSQAM7: Integer; RDTAM7: Double; DEPAM7: string; CTYAM7: string; CNOAM7: Int64; TYPAM7: string; ARSAM7: Double; REFNO: string; REGAM7: string; RENAM7: Integer; PRVAM7: string; ENTUSR: string): Boolean;
    function TtAM7Del(YARAM7: Integer; PRDAM7: Integer; CMPAM7: string; BRNAM7: string; DCDAM7: string; DNOAM7: Integer; ENTUSR: string): Boolean;

    function TtRG1GetList(CRITERIA: string; ORDERFIELD: string; ICMPRG1: string; IBRNRG1: string; IDEPRG1: string; IDCDRG1: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
    function TtRG1GetOm5(ICMPRG1: string; IBRNRG1: string; TYP: string): Boolean;
    function TtRG1GetByNo(IYARRG1: Integer; IPRDRG1: Integer; ICMPRG1: string; IBRNRG1: string; IDCDRG1: string; IDNORG1: Integer; PRC: string): Boolean;
    function TtRG1InsUpd(CMPRG1: string; BRNRG1: string; YARRG1: Integer; PRDRG1: Integer; DCDRG1: string; DNORG1: Integer; SEQRG1: Integer; IDTRG1: Double; RDCRG1: string; RDNRG1: Integer; RSQRG1: Integer; RDTRG1: Double; DEPRG1: string; EDTRG1: Double; VNORG1: string; TYPRG1: string; ARSRG1: Double; REFNO: string; ENTUSR: string): Boolean;
    function TtRG1Del(YARRG1: Integer; PRDRG1: Integer; CMPRG1: string; BRNRG1: string; DCDRG1: string; DNORG1: Integer; ENTUSR: string): Boolean;

    function TtRG2GetList(CRITERIA: string; ORDERFIELD: string; ICMPRG2: string; IBRNRG2: string; IDEPRG2: string; IDCDRG2: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
    function TtRG2GetByNo(IYARRG2: Integer; IPRDRG2: Integer; ICMPRG2: string; IBRNRG2: string; IDCDRG2: string; IDNORG2: Integer; PRC: string): Boolean;
    function TtRG2InsUpd(CMPRG2: string; BRNRG2: string; YARRG2: Integer; PRDRG2: Integer; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; IDTRG2: Double; RDCRG2: string; RDNRG2: Integer; RSQRG2: Integer; RDTRG2: Double; DEPRG2: string; EDTRG2: Double; BDTRG2: Double; VNORG2: string; TYPRG2: string; ARSRG2: Double; REFNO: string; SEROM5: string; PRVRG2: string; REGRG2: string; RENRG2: Integer; RVDRG2: Double; RVNRG2: Integer; ARARG2: Double; AOARG2: Double; ENTUSR: string): Boolean;
    function TtRG2Del(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; ENTUSR: string): Boolean;

    function TtRG2BookGetList(CRITERIA: string; ORDERFIELD: string; ICMPRG2: string; IBRNRG2: string; IDEPRG2: string; IDCDRG2: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
    function TtRG2BookInsUpd(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; BRDRG2: Double; ENTUSR: string): Boolean;
    function TtRG2BookDel(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; BRDRG2: Double; ENTUSR: string): Boolean;

  end;

var
  DSRegistationDM: TDSRegistationDM;

implementation

{$R *.dfm}

function TDSRegistationDM.GetDSProxy(): TDSRegistationClient;
begin
  Result := TDSRegistationClient(DSProxy);
end;

procedure TDSRegistationDM.CdsAm6GetByNoARSAM6GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsAm6GetByNoIDTYM4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsAm6GetListIDTAM6GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsAm6GetListTOTALAM6GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsAm6GetYm4AMTYM4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsAm6GetYm4IDTYM4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsAm7GetByNoARSAM6GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)
end;

procedure TDSRegistationDM.CdsAm7GetByNoIDTYM4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsAm7GetListTOTALAM7GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)
end;

procedure TDSRegistationDM.CdsRg1GetByNoARARG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsRg1GetByNoARSRG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsRg1GetByNoCalcFields(DataSet: TDataSet);
begin
  CdsRg1GetByNoTOTALAMT.AsFloat :=  CdsRg1GetByNoARARG2.AsFloat + CdsRg1GetByNoAOARG2.AsFloat;
end;

procedure TDSRegistationDM.CdsRg1GetByNoIDTRG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);
end;

procedure TDSRegistationDM.CdsRg1GetListIDTRG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);
end;

procedure TDSRegistationDM.CdsRg1GetListTOTALRG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsRg1GetOm5AMTAMTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsRg1GetOm5APDOM5GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsRg1GetOm5CalcFields(DataSet: TDataSet);
begin
 // CdsRg1GetOm5SELECT_FLAG.Value := (CdsRg1GetOm5FLAG.AsString = '1');

end;

procedure TDSRegistationDM.CdsRg1GetOm5IDTOM5GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsRg2BookGetByNoARSRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)
end;

procedure TDSRegistationDM.CdsRg2BookGetByNoIDTRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsRg2BookGetListARSRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)
end;

procedure TDSRegistationDM.CdsRg2BookGetListIDTRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsRg2GetByNoARSRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSRegistationDM.CdsRg2GetByNoCalcFields(DataSet: TDataSet);
begin
  CdsRg2GetByNoTOTALAMT.AsFloat :=  CdsRg2GetByNoARARG2.AsFloat + CdsRg2GetByNoAOARG2.AsFloat;
end;

procedure TDSRegistationDM.CdsRg2GetByNoIDTRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsRg2GetByNoTOTALAMTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)
end;

procedure TDSRegistationDM.CdsRg2GetListEDTRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsRg2GetListIDTRG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSRegistationDM.CdsRg2GetListTOTALARARG2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

function TDSRegistationDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSRegistationClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSRegistationDM.TtAm6GetList(CRITERIA: string; ORDERFIELD: string; ICMPAM6: string; IBRNAM6: string; IDEPAM6: string; IDCDAM6: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  result := RegistationProxy.TtAm6GetList(CRITERIA,  ORDERFIELD, ICMPam6,  IBRNam6, IDEPam6, IDCDam6, IFRMDATE,ITODATE,FG ) ;
end;

function TDSRegistationDM.TtAm6GetYm4(CRITERIA: string; ORDERFIELD: string; IYARAM6: Integer; ICMPAM6: string): Boolean;
begin
  result := RegistationProxy.TtAm6GetYm4(CRITERIA,  ORDERFIELD, IYARAM6, ICMPam6) ;
end;

function TDSRegistationDM.TtAm6GetByNo(IYARAM6: Integer; IPRDAM6: Integer; ICMPAM6: string; IBRNAM6: string; IDCDAM6: string; IDNOAM6: Integer; PRC: string): Boolean;
begin
  result := RegistationProxy.TtAm6GetByNo(IYARam6,IPRDam6,ICMPam6, IBRNam6,IDCDam6,IDNOam6,PRC);
end;

function TDSRegistationDM.TtAm6InsUpd(CMPAM6: string; BRNAM6: string; YARAM6: Integer; PRDAM6: Integer; DCDAM6: string; DNOAM6: Integer; SEQAM6: Integer; IDTAM6: Double; RDCAM6: string; RDNAM6: Integer; RSQAM6: Integer; RDTAM6: Double; DEPAM6: string; CTYAM6: string; CNOAM6: Int64; TYPAM6: string; ARSAM6: Double; REFNO: string; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtAm6InsUpd(CMPAM6,  BRNAM6,  YARAM6,  PRDAM6,  DCDAM6,  DNOAM6,  SEQAM6,  IDTAM6,  RDCAM6,  RDNAM6,  RSQAM6,  RDTAM6, DEPAM6,  CTYAM6,  CNOAM6, TYPAM6,  ARSAM6, REFNO, ENTUSR)
end;

function TDSRegistationDM.TtAm6Del(YARAM6: Integer; PRDAM6: Integer; CMPAM6: string; BRNAM6: string; DCDAM6: string; DNOAM6: Integer; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtAm6Del(YARAM6,  PRDAM6,  CMPAM6,  BRNAM6,  DCDAM6,  DNOAM6,  ENTUSR);
end;

function TDSRegistationDM.TtAM7GetList(CRITERIA: string; ORDERFIELD: string; ICMPAM7: string; IBRNAM7: string; IDEPAM7: string; IDCDAM7: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  result := RegistationProxy.TtAM7GetList(CRITERIA,  ORDERFIELD, ICMPAM7,  IBRNAM7, IDEPAM7, IDCDAM7, IFRMDATE,ITODATE,FG ) ;
end;

function TDSRegistationDM.TtAM7GetByNo(IYARAM7: Integer; IPRDAM7: Integer; ICMPAM7: string; IBRNAM7: string; IDCDAM7: string; IDNOAM7: Integer; PRC: string): Boolean;
begin
  result := RegistationProxy.TtAM7GetByNo(IYARAM7,IPRDAM7,ICMPAM7, IBRNAM7,IDCDAM7,IDNOAM7,PRC);
end;

function TDSRegistationDM.TtAM7InsUpd(CMPAM7: string; BRNAM7: string; YARAM7: Integer; PRDAM7: Integer; DCDAM7: string; DNOAM7: Integer; SEQAM7: Integer; IDTAM7: Double; RDCAM7: string; RDNAM7: Integer; RSQAM7: Integer; RDTAM7: Double; DEPAM7: string; CTYAM7: string; CNOAM7: Int64; TYPAM7: string; ARSAM7: Double; REFNO: string; REGAM7: string; RENAM7: Integer; PRVAM7: string; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtAM7InsUpd(CMPAM7,  BRNAM7,  YARAM7,  PRDAM7,  DCDAM7,  DNOAM7,  SEQAM7,  IDTAM7,  RDCAM7,  RDNAM7,  RSQAM7,  RDTAM7, DEPAM7,  CTYAM7,  CNOAM7, TYPAM7,  ARSAM7, REFNO, REGAM7, RENAM7, PRVAM7,ENTUSR)
end;

function TDSRegistationDM.TtAM7Del(YARAM7: Integer; PRDAM7: Integer; CMPAM7: string; BRNAM7: string; DCDAM7: string; DNOAM7: Integer; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtAM7Del(YARAM7,  PRDAM7,  CMPAM7,  BRNAM7,  DCDAM7,  DNOAM7,  ENTUSR);
end;

function TDSRegistationDM.TtRG1GetList(CRITERIA: string; ORDERFIELD: string; ICMPRG1: string; IBRNRG1: string; IDEPRG1: string; IDCDRG1: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  result := RegistationProxy.TtRG1GetList(CRITERIA,  ORDERFIELD, ICMPRG1,  IBRNRG1, IDEPRG1, IDCDRG1, IFRMDATE,ITODATE,FG ) ;
end;

function TDSRegistationDM.TtRG1GetOm5(ICMPRG1: string; IBRNRG1: string; TYP: string): Boolean;
begin
  result := RegistationProxy.TtRG1GetOm5(ICMPRG1, IBRNRG1,TYP);
end;

function TDSRegistationDM.TtRG1GetByNo(IYARRG1: Integer; IPRDRG1: Integer; ICMPRG1: string; IBRNRG1: string; IDCDRG1: string; IDNORG1: Integer; PRC: string): Boolean;
begin
  result := RegistationProxy.TtRG1GetByNo(IYARRG1,IPRDRG1,ICMPRG1, IBRNRG1,IDCDRG1,IDNORG1,PRC);
end;

function TDSRegistationDM.TtRG1InsUpd(CMPRG1: string; BRNRG1: string; YARRG1: Integer; PRDRG1: Integer; DCDRG1: string; DNORG1: Integer; SEQRG1: Integer; IDTRG1: Double; RDCRG1: string; RDNRG1: Integer; RSQRG1: Integer; RDTRG1: Double; DEPRG1: string; EDTRG1: Double; VNORG1: string; TYPRG1: string; ARSRG1: Double; REFNO: string; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtRG1InsUpd(CMPRG1,  BRNRG1,  YARRG1,  PRDRG1,  DCDRG1,  DNORG1,  SEQRG1,  IDTRG1,  RDCRG1,  RDNRG1,  RSQRG1,  RDTRG1, DEPRG1,  EDTRG1,  VNORG1, TYPRG1,  ARSRG1, REFNO, ENTUSR)
end;

function TDSRegistationDM.TtRG1Del(YARRG1: Integer; PRDRG1: Integer; CMPRG1: string; BRNRG1: string; DCDRG1: string; DNORG1: Integer; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtRG1Del(YARRG1,  PRDRG1,  CMPRG1,  BRNRG1,  DCDRG1,  DNORG1,  ENTUSR);
end;

function TDSRegistationDM.TtRG2GetList(CRITERIA: string; ORDERFIELD: string; ICMPRG2: string; IBRNRG2: string; IDEPRG2: string; IDCDRG2: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  result := RegistationProxy.TtRG2GetList(CRITERIA,  ORDERFIELD, ICMPRG2,  IBRNRG2, IDEPRG2, IDCDRG2, IFRMDATE,ITODATE,FG ) ;
end;

function TDSRegistationDM.TtRG2GetByNo(IYARRG2: Integer; IPRDRG2: Integer; ICMPRG2: string; IBRNRG2: string; IDCDRG2: string; IDNORG2: Integer; PRC: string): Boolean;
begin
  result := RegistationProxy.TtRG2GetByNo(IYARRG2,IPRDRG2,ICMPRG2, IBRNRG2,IDCDRG2,IDNORG2,PRC);
end;

function TDSRegistationDM.TtRG2InsUpd(CMPRG2: string; BRNRG2: string; YARRG2: Integer; PRDRG2: Integer; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; IDTRG2: Double; RDCRG2: string; RDNRG2: Integer; RSQRG2: Integer; RDTRG2: Double; DEPRG2: string; EDTRG2: Double; BDTRG2: Double; VNORG2: string; TYPRG2: string; ARSRG2: Double; REFNO: string; SEROM5: string; PRVRG2: string; REGRG2: string; RENRG2: Integer; RVDRG2: Double; RVNRG2: Integer; ARARG2: Double; AOARG2: Double; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtRG2InsUpd(CMPRG2,  BRNRG2,  YARRG2,  PRDRG2,  DCDRG2,  DNORG2,  SEQRG2,  IDTRG2,  RDCRG2,  RDNRG2,  RSQRG2,  RDTRG2, DEPRG2,  EDTRG2,BDTRG2,  VNORG2, TYPRG2,  ARSRG2, REFNO,SEROM5, prvrg2 ,regrg2 ,renrg2 ,rvdrg2 ,rvnrg2,ararg2,aoarg2,ENTUSR)
end;

function TDSRegistationDM.TtRG2Del(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtRG2Del(YARRG2,  PRDRG2,  CMPRG2,  BRNRG2,  DCDRG2,  DNORG2,  ENTUSR);
end;

function TDSRegistationDM.TtRG2BookGetList(CRITERIA: string; ORDERFIELD: string; ICMPRG2: string; IBRNRG2: string; IDEPRG2: string; IDCDRG2: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  result := RegistationProxy.TtRG2BookGetList(CRITERIA,  ORDERFIELD, ICMPRG2,  IBRNRG2, IDEPRG2, IDCDRG2, IFRMDATE,ITODATE,FG ) ;
end;

function TDSRegistationDM.TtRG2BookInsUpd(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; BRDRG2: Double; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtRG2BookInsUpd(YARRG2,  PRDRG2,  CMPRG2,  BRNRG2,  DCDRG2,  DNORG2,SEQRG2, BRDRG2, ENTUSR);
end;

function TDSRegistationDM.TtRG2BookDel(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; BRDRG2: Double; ENTUSR: string): Boolean;
begin
  result := RegistationProxy.TtRG2BookDel(YARRG2,  PRDRG2,  CMPRG2,  BRNRG2,  DCDRG2,  DNORG2,SEQRG2, BRDRG2, ENTUSR);
end;


end.

