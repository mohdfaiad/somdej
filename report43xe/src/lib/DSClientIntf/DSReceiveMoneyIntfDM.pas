unit DSReceiveMoneyIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, DSReceiveMoneyIntf, SqlExpr,
  DBXDataSnap, DBXCommon, DBXPool, frxClass, frxDBSet, frxExportPDF, frxRich,
  IndyPeerImpl, DSSetupIntfDM;

type
  TDSReceiveMoneyDM = class(TDSMainDM)
    CdsTtRcvGet: TClientDataSet;
    CdsTtRcvGetAm4: TClientDataSet;
    CdsTtRcvGetAm4YARAM4: TIntegerField;
    CdsTtRcvGetAm4CMPAM4: TStringField;
    CdsTtRcvGetAm4BRNAM4: TStringField;
    CdsTtRcvGetAm4DCDAM4: TStringField;
    CdsTtRcvGetAm4DNOAM4: TIntegerField;
    CdsTtRcvGetAm4SEQAM4: TSmallintField;
    CdsTtRcvGetAm4IDTAM4: TDateField;
    CdsTtRcvGetAm4DEPAM4: TStringField;
    CdsTtRcvGetAm4PRDAM4: TStringField;
    CdsTtRcvGetAm4TNMSRS: TStringField;
    CdsTtRcvGetAm4SERAM4: TStringField;
    CdsTtRcvGetAm4TYPRT4: TStringField;
    CdsTtRcvGetAm4AMTAM4: TFMTBCDField;
    CdsTtRcvGetAm4AMTRT4: TFMTBCDField;
    CdsTtRcvGetAm4BALAM4: TFMTBCDField;
    CdsTtRcvGetRt4: TClientDataSet;
    CdsTtRcvGetRt4STSRT4: TStringField;
    CdsTtRcvGetRt4YARRT4: TIntegerField;
    CdsTtRcvGetRt4PRDRT4: TIntegerField;
    CdsTtRcvGetRt4CMPRT4: TStringField;
    CdsTtRcvGetRt4BRNRT4: TStringField;
    CdsTtRcvGetRt4DCDRT4: TStringField;
    CdsTtRcvGetRt4DNORT4: TIntegerField;
    CdsTtRcvGetRt4SEQRT4: TIntegerField;
    CdsTtRcvGetRt4IDTRT4: TDateField;
    CdsTtRcvGetRt4RDCRT4: TStringField;
    CdsTtRcvGetRt4RDNRT4: TIntegerField;
    CdsTtRcvGetRt4RSQRT4: TIntegerField;
    CdsTtRcvGetRt4RDTRT4: TDateField;
    CdsTtRcvGetRt4RTPRT4: TStringField;
    CdsTtRcvGetRt4DEPRT4: TStringField;
    CdsTtRcvGetRt4CTYRT4: TStringField;
    CdsTtRcvGetRt4CNORT4: TLargeintField;
    CdsTtRcvGetRt4PTPRT4: TStringField;
    CdsTtRcvGetRt4TNMPTP: TStringField;
    CdsTtRcvGetRt4CYTRT4: TStringField;
    CdsTtRcvGetRt4CYRRT4: TFMTBCDField;
    CdsTtRcvGetRt4TYPRT4: TStringField;
    CdsTtRcvGetRt4ATPRT4: TStringField;
    CdsTtRcvGetRt4AMTRT4: TFMTBCDField;
    CdsTtRcvGetRt4PINRT4: TStringField;
    CdsTtRcvGetRt4BAKRT4: TStringField;
    CdsTtRcvGetRt4BBRRT4: TStringField;
    CdsTtRcvGetRt4NOTRT4: TStringField;
    CdsTtRcvGetRt4DDTRT4: TDateField;
    CdsTtRcvGetRt4BCMRT4: TStringField;
    CdsTtRcvGetRt4ENTUSR: TStringField;
    CdsTtRcvGetRt4ENTDTE: TSQLTimeStampField;
    CdsTtRcvGetRt4EDTUSR: TStringField;
    CdsTtRcvGetRt4EDTDTE: TSQLTimeStampField;
    CdsTtRcvGetAm4TYPAM4: TStringField;
    CdsTtRcvGetAm4TNMTYP: TStringField;
    CdsTtRcvGetRt4TNMBAK: TStringField;
    CdsTtRcvGetRt4TNMBCM: TStringField;
    CdsTtRcvGetRt4TNMCSM: TStringField;
    CdsTtRcvGetRt4TNMTYP: TStringField;
    CdsTtRcvGetRt4REGRT7: TStringField;
    CdsTtRcvGetRt4RENRT7: TIntegerField;
    CdsTtRcvGetRt4PRVRT7: TStringField;
    CdsTtRcvGetRt4TNMPRV: TStringField;
    CdsTtRcvGetAm4PRVRT7: TStringField;
    CdsTtRcvGetAm4TNMPRV: TStringField;
    CdsTtRcvGetAm4REGRT7: TStringField;
    CdsTtRcvGetAm4RENRT7: TIntegerField;
    CdsTtRcvGetAm4REGFULL: TStringField;
    CdsTtRcvGetRt4REGFULL: TStringField;
    CdsTtRcvGetAm4TMPAM4: TFMTBCDField;
    CdsTtRcvGetAm4FLAG: TIntegerField;
    CdsTtRcvGetAm4TNMRT4: TStringField;
    CdsTtRcvGetSTSRT4: TStringField;
    CdsTtRcvGetYARRT4: TIntegerField;
    CdsTtRcvGetPRDRT4: TIntegerField;
    CdsTtRcvGetCMPRT4: TStringField;
    CdsTtRcvGetBRNRT4: TStringField;
    CdsTtRcvGetDCDRT4: TStringField;
    CdsTtRcvGetDNORT4: TIntegerField;
    CdsTtRcvGetIDTRT4: TDateField;
    CdsTtRcvGetRDCRT4: TStringField;
    CdsTtRcvGetRDNRT4: TIntegerField;
    CdsTtRcvGetRDTRT4: TDateField;
    CdsTtRcvGetDEPRT4: TStringField;
    CdsTtRcvGetCTYRT4: TStringField;
    CdsTtRcvGetCNORT4: TLargeintField;
    CdsTtRcvGetTNMCSM: TStringField;
    CdsTtRcvGetPTPRT4: TStringField;
    CdsTtRcvGetTNMPTP: TStringField;
    CdsTtRcvGetCYTRT4: TStringField;
    CdsTtRcvGetCYRRT4: TFMTBCDField;
    CdsTtRcvGetATPRT4: TStringField;
    CdsTtRcvGetAMTRT4: TFMTBCDField;
    CdsTtRcvGetPINRT4: TStringField;
    CdsTtRcvGetBAKRT4: TStringField;
    CdsTtRcvGetTNMBAK: TStringField;
    CdsTtRcvGetBBRRT4: TStringField;
    CdsTtRcvGetNOTRT4: TStringField;
    CdsTtRcvGetDDTRT4: TDateField;
    CdsTtRcvGetBCMRT4: TStringField;
    CdsTtRcvGetTNMBCM: TStringField;
    CdsTtRcvGetTGLRT4: TStringField;
    CdsTtRcvGetMEMRT4: TStringField;
    CdsTtRcvGetREGRT7: TStringField;
    CdsTtRcvGetRENRT7: TIntegerField;
    CdsTtRcvGetPRVRT7: TStringField;
    CdsTtRcvGetTNMPRV: TStringField;
    CdsTtRcvGetREGFULL: TStringField;
    CdsTtRcvGetENTUSR: TStringField;
    CdsTtRcvGetENTDTE: TSQLTimeStampField;
    CdsTtRcvGetEDTUSR: TStringField;
    CdsTtRcvGetEDTDTE: TSQLTimeStampField;
    CdsTtRrRcvGetAm4: TClientDataSet;
    CdsTtRrRcvGetAm4YARAM4: TIntegerField;
    CdsTtRrRcvGetAm4CMPAM4: TStringField;
    CdsTtRrRcvGetAm4BRNAM4: TStringField;
    CdsTtRrRcvGetAm4DCDAM4: TStringField;
    CdsTtRrRcvGetAm4DNOAM4: TIntegerField;
    CdsTtRrRcvGetAm4SEQAM4: TSmallintField;
    CdsTtRrRcvGetAm4IDTAM4: TDateField;
    CdsTtRrRcvGetAm4DEPAM4: TStringField;
    CdsTtRrRcvGetAm4PRDAM4: TStringField;
    CdsTtRrRcvGetAm4TNMSRS: TStringField;
    CdsTtRrRcvGetAm4SERAM4: TStringField;
    CdsTtRrRcvGetAm4TYPRT4: TStringField;
    CdsTtRrRcvGetAm4TNMRT4: TStringField;
    CdsTtRrRcvGetAm4TYPAM4: TStringField;
    CdsTtRrRcvGetAm4TNMTYP: TStringField;
    CdsTtRrRcvGetAm4AMTAM4: TFMTBCDField;
    CdsTtRrRcvGetAm4AMTRT4: TFMTBCDField;
    CdsTtRrRcvGetAm4BALAM4: TFMTBCDField;
    CdsTtRrRcvGetAm4TMPAM4: TFMTBCDField;
    CdsTtRrRcvGetAm4PRVRT7: TStringField;
    CdsTtRrRcvGetAm4TNMPRV: TStringField;
    CdsTtRrRcvGetAm4REGRT7: TStringField;
    CdsTtRrRcvGetAm4RENRT7: TIntegerField;
    CdsTtRrRcvGetAm4REGFULL: TStringField;
    CdsTtRrRcvGetAm4FLAG: TIntegerField;
    procedure CdsTtRcvGetAMTRT4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtRcvGetIDTRT4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtRcvGetAm4AMTAM4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtRcvGetAm4IDTAM4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtRcvGetRt4IDTRT4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtRcvGetRt4AMTRT4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtRrRcvGetAm4AMTAM4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

  private
    Fmd : String;
    function GetDSProxy(): TDSReceiveMoneyClient; inline;

  public

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property ReceiveMoneyProxy: TDSReceiveMoneyClient read GetDSProxy;

    property Rmd: String read Fmd write Fmd;

    function TtRcvGet(CRITERIA: string; ORDERFIELD: string; ICMPRt4: string; IBRNRt4: string; IDEPRT4: string; IDCDRt4: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
    function TtRcvGetAm4(IYARAM4: Integer; ICMPAM4: string; IBRNAM4: string; IDCDAM4: string; ICTYAM4: string; ICNOAM4: Int64; FG: string): Boolean;
    function TtRcvGetRt4(IYARRt4: Integer; IPRDRT4: Integer; ICMPRt4: string; IBRNRt4: string; IDCDRt4: string; IDNORT4: Integer; FG: string): Boolean;
    function TtRcvInsUpd(CMPRT4: string; BRNRT4: string; YARRT4: Integer; PRDRT4: Integer; DCDRT4: string; DNORT4: Integer; SEQRT4: Integer; IDTRT4: Double; RDCRT4: string; RDNRT4: Integer; RSQRT4: Integer; RDTRT4: Double; RTPRT4: string; DEPRT4: string; CTYRT4: string; CNORT4: Int64; PTPRT4: string; TYPRT4: string; AMTRT4: Double; BCMRT4: string; PINRT4: string; BAKRT4: string; BBRRT4: string; NOTRT4: string; DDTRT4: Double; MEMRT4: string; REGRT7: string; RENRT7: Integer; PRVRT7: string; ENTUSR: string): Boolean;
    function TtRcvDel(YARRt4: Integer; PRDRT4: Integer; CMPRt4: string; BRNRt4: string; DCDRt4: string; DNORt4: Integer; ENTUSR: string): Boolean;

  end;

var
  DSReceiveMoneyDM: TDSReceiveMoneyDM;

implementation

{$R *.dfm}


function TDSReceiveMoneyDM.GetDSProxy(): TDSReceiveMoneyClient;
begin
  Result := TDSReceiveMoneyClient(DSProxy);
end;


procedure TDSReceiveMoneyDM.CdsTtRcvGetAm4AMTAM4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSReceiveMoneyDM.CdsTtRcvGetAm4IDTAM4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSReceiveMoneyDM.CdsTtRcvGetAMTRT4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSReceiveMoneyDM.CdsTtRcvGetIDTRT4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSReceiveMoneyDM.CdsTtRcvGetRt4AMTRT4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat);

end;

procedure TDSReceiveMoneyDM.CdsTtRcvGetRt4IDTRT4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);
end;

procedure TDSReceiveMoneyDM.CdsTtRrRcvGetAm4AMTAM4GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat);

end;

function TDSReceiveMoneyDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSReceiveMoneyClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSReceiveMoneyDM.TtRcvGet(CRITERIA: string; ORDERFIELD: string; ICMPRt4: string; IBRNRt4: string; IDEPRT4: string; IDCDRt4: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  result := ReceiveMoneyProxy.TtRcvGet(CRITERIA,  ORDERFIELD, ICMPRt4,  IBRNRt4, IDEPRT4, IDCDRt4, IFRMDATE,ITODATE,FG ) ;
end;

function TDSReceiveMoneyDM.TtRcvGetAm4(IYARAM4: Integer; ICMPAM4: string; IBRNAM4: string; IDCDAM4: string; ICTYAM4: string; ICNOAM4: Int64; FG: string): Boolean;
begin
  result := ReceiveMoneyProxy.TtRcvGetAm4(IYARAM4,ICMPAM4,IBRNAM4,IDCDAM4, ICTYAM4, ICNOAM4,FG);
end;

function TDSReceiveMoneyDM.TtRcvGetRt4(IYARRt4: Integer; IPRDRT4: Integer; ICMPRt4: string; IBRNRt4: string; IDCDRt4: string; IDNORT4: Integer; FG: string): Boolean;
begin
  result := ReceiveMoneyProxy.TtRcvGetRt4(IYARRt4,IPRDRT4,ICMPRt4, IBRNRt4,IDCDRt4,IDNORT4,FG);
end;

function TDSReceiveMoneyDM.TtRcvInsUpd(CMPRT4: string; BRNRT4: string; YARRT4: Integer; PRDRT4: Integer; DCDRT4: string; DNORT4: Integer; SEQRT4: Integer; IDTRT4: Double; RDCRT4: string; RDNRT4: Integer; RSQRT4: Integer; RDTRT4: Double; RTPRT4: string; DEPRT4: string; CTYRT4: string; CNORT4: Int64; PTPRT4: string; TYPRT4: string; AMTRT4: Double; BCMRT4: string; PINRT4: string; BAKRT4: string; BBRRT4: string; NOTRT4: string; DDTRT4: Double; MEMRT4: string; REGRT7: string; RENRT7: Integer; PRVRT7: string; ENTUSR: string): Boolean;
begin
  result := ReceiveMoneyProxy.TtRcvInsUpd(CMPRT4,  BRNRT4,  YARRT4,  PRDRT4,  DCDRT4,  DNORT4,  SEQRT4,  IDTRT4,  RDCRT4,  RDNRT4,  RSQRT4,  RDTRT4, RTPRT4,  DEPRT4,  CTYRT4,  CNORT4, PTPRT4,  TYPRT4,  AMTRT4,  BCMRT4,  PINRT4,  BAKRT4,  BBRRT4,  NOTRT4,  DDTRT4,  MEMRT4,REGRT7, RENRT7, PRVRT7,  ENTUSR)
end;

function TDSReceiveMoneyDM.TtRcvDel(YARRt4: Integer; PRDRT4: Integer; CMPRt4: string; BRNRt4: string; DCDRt4: string; DNORt4: Integer; ENTUSR: string): Boolean;
begin
  result := ReceiveMoneyProxy.TtRcvDel(YARRt4,  PRDRT4,  CMPRt4,  BRNRt4,  DCDRt4,  DNORt4,  ENTUSR);
end;

end.
