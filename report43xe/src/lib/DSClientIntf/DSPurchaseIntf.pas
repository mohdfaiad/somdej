unit DSPurchaseIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSPurchaseClient = class(TDSMainClient)
  private
    FTtPt1GetCommand: TDBXCommand;
    FTtPt1InsUpdCommand: TDBXCommand;
    FTtPt1DelCommand: TDBXCommand;
    FTT_AD2_GET_DNOCommand: TDBXCommand;
    FTT_AD2_GET_SRSCommand: TDBXCommand;
    FTT_AD2_GET_ITNCommand: TDBXCommand;
    FTT_AD2_GET_COLCommand: TDBXCommand;
    FTT_AD2_GET_BY_DNOCommand: TDBXCommand;
    FTtAd2InsUpdCommand: TDBXCommand;
    FTtPtXInsUpdCommand: TDBXCommand;
    FTtPtX2InsUpdCommand: TDBXCommand;
    FTtPtXGetCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

    function TtPt1Get(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;
    function TtPt1InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
    function TtPt1Del(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer): Boolean;
    function TT_AD2_GET_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer): Boolean;
    function TT_AD2_GET_SRS(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
    function TT_AD2_GET_ITN(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
    function TT_AD2_GET_COL(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
    function TT_AD2_GET_BY_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer; IRDNAD2: string): Boolean;
    function TtAd2InsUpd(cmpad2: string; brnad2: string; yarad2: Integer; prdad2: Integer; dcdad2: string; dnoad2: Integer; seqad2: Integer; ssbad2: Integer; isdad2: Double; itnad1: string; colad1: string; qt1ad2: Integer; qt2ad2: Integer; serad2: string; engad2: string; rdnad2: string; entusr: string): Boolean;
    function TtPtXInsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
    function TtPtX2InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string): Boolean;
    function TtPtXGet(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;
  end;

implementation

constructor TDSPurchaseClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSPurchase';
end;

constructor TDSPurchaseClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSPurchase';
end;

destructor TDSPurchaseClient.Destroy;
begin
    FreeAndNil(FTtPt1GetCommand);
    FreeAndNil(FTtPt1InsUpdCommand);
    FreeAndNil(FTtPt1DelCommand);
    FreeAndNil(FTT_AD2_GET_DNOCommand);
    FreeAndNil(FTT_AD2_GET_SRSCommand);
    FreeAndNil(FTT_AD2_GET_ITNCommand);
    FreeAndNil(FTT_AD2_GET_COLCommand);
    FreeAndNil(FTT_AD2_GET_BY_DNOCommand);
    FreeAndNil(FTtAd2InsUpdCommand);
    FreeAndNil(FTtPtXGetCommand);
    inherited;

end;

function TDSPurchaseClient.TtPt1Get(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;
begin
  if FTtPt1GetCommand = nil then
  begin
    FTtPt1GetCommand := FDBXConnection.CreateCommand;
    FTtPt1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPt1GetCommand.Text := 'TDSPurchase.TtPt1Get';
    FTtPt1GetCommand.Prepare;
  end;
  FTtPt1GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtPt1GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtPt1GetCommand.Parameters[2].Value.SetInt32(IYARPT1);
  FTtPt1GetCommand.Parameters[3].Value.SetWideString(ICMPPT1);
  FTtPt1GetCommand.Parameters[4].Value.SetWideString(IBRNPT1);
  FTtPt1GetCommand.Parameters[5].Value.SetWideString(IDCDPT1);
  FTtPt1GetCommand.ExecuteUpdate;
  Result := FTtPt1GetCommand.Parameters[6].Value.GetBoolean;
end;

function TDSPurchaseClient.TtPt1InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
begin
  if FTtPt1InsUpdCommand = nil then
  begin
    FTtPt1InsUpdCommand := FDBXConnection.CreateCommand;
    FTtPt1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPt1InsUpdCommand.Text := 'TDSPurchase.TtPt1InsUpd';
    FTtPt1InsUpdCommand.Prepare;
  end;
  FTtPt1InsUpdCommand.Parameters[0].Value.SetInt32(YARPT1);
  FTtPt1InsUpdCommand.Parameters[1].Value.SetWideString(CMPPT1);
  FTtPt1InsUpdCommand.Parameters[2].Value.SetWideString(BRNPT1);
  FTtPt1InsUpdCommand.Parameters[3].Value.SetWideString(DCDPT1);
  FTtPt1InsUpdCommand.Parameters[4].Value.SetWideString(DNOPT1);
  FTtPt1InsUpdCommand.Parameters[5].Value.SetInt32(SEQPT1);
  FTtPt1InsUpdCommand.Parameters[6].Value.SetDouble(IDTPT1);
  FTtPt1InsUpdCommand.Parameters[7].Value.SetWideString(DEPPT1);
  FTtPt1InsUpdCommand.Parameters[8].Value.SetWideString(VNOPT1);
  FTtPt1InsUpdCommand.Parameters[9].Value.SetInt32(CRTPT1);
  FTtPt1InsUpdCommand.Parameters[10].Value.SetWideString(RNOPT1);
  FTtPt1InsUpdCommand.Parameters[11].Value.SetDouble(RDVPT1);
  FTtPt1InsUpdCommand.Parameters[12].Value.SetDouble(RATPT1);
  FTtPt1InsUpdCommand.Parameters[13].Value.SetWideString(VTPPT1);
  FTtPt1InsUpdCommand.Parameters[14].Value.SetWideString(VATPT1);
  FTtPt1InsUpdCommand.Parameters[15].Value.SetDouble(VPCPT1);
  FTtPt1InsUpdCommand.Parameters[16].Value.SetDouble(VAMPT1);
  FTtPt1InsUpdCommand.Parameters[17].Value.SetWideString(VTEPT1);
  FTtPt1InsUpdCommand.Parameters[18].Value.SetWideString(SRSPT1);
  FTtPt1InsUpdCommand.Parameters[19].Value.SetWideString(ITNPT1);
  FTtPt1InsUpdCommand.Parameters[20].Value.SetWideString(COLPT1);
  FTtPt1InsUpdCommand.Parameters[21].Value.SetWideString(SERPT1);
  FTtPt1InsUpdCommand.Parameters[22].Value.SetWideString(ENGPT1);
  FTtPt1InsUpdCommand.Parameters[23].Value.SetInt32(QR1PT1);
  FTtPt1InsUpdCommand.Parameters[24].Value.SetWideString(FWHPT1);
  FTtPt1InsUpdCommand.Parameters[25].Value.SetDouble(DDTPT1);
  FTtPt1InsUpdCommand.Parameters[26].Value.SetWideString(ENTUSR);
  FTtPt1InsUpdCommand.Parameters[27].Value.SetWideString(MD);
  FTtPt1InsUpdCommand.Parameters[28].Value.SetWideString(out_dnopt1);
  FTtPt1InsUpdCommand.ExecuteUpdate;
  out_dnopt1 := FTtPt1InsUpdCommand.Parameters[28].Value.GetWideString;
  Result := FTtPt1InsUpdCommand.Parameters[29].Value.GetBoolean;
end;


function TDSPurchaseClient.TtPt1Del(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer): Boolean;
begin
  if FTtPt1DelCommand = nil then
  begin
    FTtPt1DelCommand := FDBXConnection.CreateCommand;
    FTtPt1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPt1DelCommand.Text := 'TDSPurchase.TtPt1Del';
    FTtPt1DelCommand.Prepare;
  end;
  FTtPt1DelCommand.Parameters[0].Value.SetInt32(YARPT1);
  FTtPt1DelCommand.Parameters[1].Value.SetWideString(CMPPT1);
  FTtPt1DelCommand.Parameters[2].Value.SetWideString(BRNPT1);
  FTtPt1DelCommand.Parameters[3].Value.SetWideString(DCDPT1);
  FTtPt1DelCommand.Parameters[4].Value.SetWideString(DNOPT1);
  FTtPt1DelCommand.Parameters[5].Value.SetInt32(SEQPT1);
  FTtPt1DelCommand.ExecuteUpdate;
  Result := FTtPt1DelCommand.Parameters[6].Value.GetBoolean;
end;

function TDSPurchaseClient.TT_AD2_GET_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer): Boolean;
begin
  if FTT_AD2_GET_DNOCommand = nil then
  begin
    FTT_AD2_GET_DNOCommand := FDBXConnection.CreateCommand;
    FTT_AD2_GET_DNOCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTT_AD2_GET_DNOCommand.Text := 'TDSPurchase.TT_AD2_GET_DNO';
    FTT_AD2_GET_DNOCommand.Prepare;
  end;
  FTT_AD2_GET_DNOCommand.Parameters[0].Value.SetWideString(ICMPAD1);
  FTT_AD2_GET_DNOCommand.Parameters[1].Value.SetWideString(IBRNAD1);
  FTT_AD2_GET_DNOCommand.Parameters[2].Value.SetInt32(IYARAD1);
  FTT_AD2_GET_DNOCommand.Parameters[3].Value.SetInt32(IPRDAD1);
  FTT_AD2_GET_DNOCommand.ExecuteUpdate;
  Result := FTT_AD2_GET_DNOCommand.Parameters[4].Value.GetBoolean;
end;

function TDSPurchaseClient.TT_AD2_GET_SRS(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
begin
  if FTT_AD2_GET_SRSCommand = nil then
  begin
    FTT_AD2_GET_SRSCommand := FDBXConnection.CreateCommand;
    FTT_AD2_GET_SRSCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTT_AD2_GET_SRSCommand.Text := 'TDSPurchase.TT_AD2_GET_SRS';
    FTT_AD2_GET_SRSCommand.Prepare;
  end;
  FTT_AD2_GET_SRSCommand.Parameters[0].Value.SetWideString(ICMPAD1);
  FTT_AD2_GET_SRSCommand.Parameters[1].Value.SetWideString(IBRNAD1);
  FTT_AD2_GET_SRSCommand.Parameters[2].Value.SetInt32(IYARAD1);
  FTT_AD2_GET_SRSCommand.Parameters[3].Value.SetInt32(IPRDAD1);
  FTT_AD2_GET_SRSCommand.Parameters[4].Value.SetWideString(IDCDAD1);
  FTT_AD2_GET_SRSCommand.Parameters[5].Value.SetInt32(IDNOAD1);
  FTT_AD2_GET_SRSCommand.ExecuteUpdate;
  Result := FTT_AD2_GET_SRSCommand.Parameters[6].Value.GetBoolean;
end;

function TDSPurchaseClient.TT_AD2_GET_ITN(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
begin
  if FTT_AD2_GET_ITNCommand = nil then
  begin
    FTT_AD2_GET_ITNCommand := FDBXConnection.CreateCommand;
    FTT_AD2_GET_ITNCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTT_AD2_GET_ITNCommand.Text := 'TDSPurchase.TT_AD2_GET_ITN';
    FTT_AD2_GET_ITNCommand.Prepare;
  end;
  FTT_AD2_GET_ITNCommand.Parameters[0].Value.SetWideString(ICMPAD1);
  FTT_AD2_GET_ITNCommand.Parameters[1].Value.SetWideString(IBRNAD1);
  FTT_AD2_GET_ITNCommand.Parameters[2].Value.SetInt32(IYARAD1);
  FTT_AD2_GET_ITNCommand.Parameters[3].Value.SetInt32(IPRDAD1);
  FTT_AD2_GET_ITNCommand.Parameters[4].Value.SetWideString(IDCDAD1);
  FTT_AD2_GET_ITNCommand.Parameters[5].Value.SetInt32(IDNOAD1);
  FTT_AD2_GET_ITNCommand.ExecuteUpdate;
  Result := FTT_AD2_GET_ITNCommand.Parameters[6].Value.GetBoolean;
end;

function TDSPurchaseClient.TT_AD2_GET_COL(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
begin
  if FTT_AD2_GET_COLCommand = nil then
  begin
    FTT_AD2_GET_COLCommand := FDBXConnection.CreateCommand;
    FTT_AD2_GET_COLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTT_AD2_GET_COLCommand.Text := 'TDSPurchase.TT_AD2_GET_COL';
    FTT_AD2_GET_COLCommand.Prepare;
  end;
  FTT_AD2_GET_COLCommand.Parameters[0].Value.SetWideString(ICMPAD1);
  FTT_AD2_GET_COLCommand.Parameters[1].Value.SetWideString(IBRNAD1);
  FTT_AD2_GET_COLCommand.Parameters[2].Value.SetInt32(IYARAD1);
  FTT_AD2_GET_COLCommand.Parameters[3].Value.SetInt32(IPRDAD1);
  FTT_AD2_GET_COLCommand.Parameters[4].Value.SetWideString(IDCDAD1);
  FTT_AD2_GET_COLCommand.Parameters[5].Value.SetInt32(IDNOAD1);
  FTT_AD2_GET_COLCommand.ExecuteUpdate;
  Result := FTT_AD2_GET_COLCommand.Parameters[6].Value.GetBoolean;
end;

function TDSPurchaseClient.TT_AD2_GET_BY_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer; IRDNAD2: string): Boolean;
begin
  if FTT_AD2_GET_BY_DNOCommand = nil then
  begin
    FTT_AD2_GET_BY_DNOCommand := FDBXConnection.CreateCommand;
    FTT_AD2_GET_BY_DNOCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTT_AD2_GET_BY_DNOCommand.Text := 'TDSPurchase.TT_AD2_GET_BY_DNO';
    FTT_AD2_GET_BY_DNOCommand.Prepare;
  end;
  FTT_AD2_GET_BY_DNOCommand.Parameters[0].Value.SetWideString(ICMPAD1);
  FTT_AD2_GET_BY_DNOCommand.Parameters[1].Value.SetWideString(IBRNAD1);
  FTT_AD2_GET_BY_DNOCommand.Parameters[2].Value.SetInt32(IYARAD1);
  FTT_AD2_GET_BY_DNOCommand.Parameters[3].Value.SetInt32(IPRDAD1);
  FTT_AD2_GET_BY_DNOCommand.Parameters[4].Value.SetWideString(IDCDAD1);
  FTT_AD2_GET_BY_DNOCommand.Parameters[5].Value.SetInt32(IDNOAD1);
  FTT_AD2_GET_BY_DNOCommand.Parameters[6].Value.SetWideString(IRDNAD2);
  FTT_AD2_GET_BY_DNOCommand.ExecuteUpdate;
  Result := FTT_AD2_GET_BY_DNOCommand.Parameters[7].Value.GetBoolean;
end;

function TDSPurchaseClient.TtAd2InsUpd(cmpad2: string; brnad2: string; yarad2: Integer; prdad2: Integer; dcdad2: string; dnoad2: Integer; seqad2: Integer; ssbad2: Integer; isdad2: Double; itnad1: string; colad1: string; qt1ad2: Integer; qt2ad2: Integer; serad2: string; engad2: string; rdnad2: string; entusr: string): Boolean;
begin
  if FTtAd2InsUpdCommand = nil then
  begin
    FTtAd2InsUpdCommand := FDBXConnection.CreateCommand;
    FTtAd2InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAd2InsUpdCommand.Text := 'TDSPurchase.TtAd2InsUpd';
    FTtAd2InsUpdCommand.Prepare;
  end;
  FTtAd2InsUpdCommand.Parameters[0].Value.SetWideString(cmpad2);
  FTtAd2InsUpdCommand.Parameters[1].Value.SetWideString(brnad2);
  FTtAd2InsUpdCommand.Parameters[2].Value.SetInt32(yarad2);
  FTtAd2InsUpdCommand.Parameters[3].Value.SetInt32(prdad2);
  FTtAd2InsUpdCommand.Parameters[4].Value.SetWideString(dcdad2);
  FTtAd2InsUpdCommand.Parameters[5].Value.SetInt32(dnoad2);
  FTtAd2InsUpdCommand.Parameters[6].Value.SetInt32(seqad2);
  FTtAd2InsUpdCommand.Parameters[7].Value.SetInt32(ssbad2);
  FTtAd2InsUpdCommand.Parameters[8].Value.SetDouble(isdad2);
  FTtAd2InsUpdCommand.Parameters[9].Value.SetWideString(itnad1);
  FTtAd2InsUpdCommand.Parameters[10].Value.SetWideString(colad1);
  FTtAd2InsUpdCommand.Parameters[11].Value.SetInt32(qt1ad2);
  FTtAd2InsUpdCommand.Parameters[12].Value.SetInt32(qt2ad2);
  FTtAd2InsUpdCommand.Parameters[13].Value.SetWideString(serad2);
  FTtAd2InsUpdCommand.Parameters[14].Value.SetWideString(engad2);
  FTtAd2InsUpdCommand.Parameters[15].Value.SetWideString(rdnad2);
  FTtAd2InsUpdCommand.Parameters[16].Value.SetWideString(entusr);
  FTtAd2InsUpdCommand.ExecuteUpdate;
  Result := FTtAd2InsUpdCommand.Parameters[17].Value.GetBoolean;
end;

function TDSPurchaseClient.TtPtXInsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
begin
  if FTtPtXInsUpdCommand = nil then
  begin
    FTtPtXInsUpdCommand := FDBXConnection.CreateCommand;
    FTtPtXInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPtXInsUpdCommand.Text := 'TDSPurchase.TtPtXInsUpd';
    FTtPtXInsUpdCommand.Prepare;
  end;
  FTtPtXInsUpdCommand.Parameters[0].Value.SetInt32(YARPT1);
  FTtPtXInsUpdCommand.Parameters[1].Value.SetWideString(CMPPT1);
  FTtPtXInsUpdCommand.Parameters[2].Value.SetWideString(BRNPT1);
  FTtPtXInsUpdCommand.Parameters[3].Value.SetWideString(DCDPT1);
  FTtPtXInsUpdCommand.Parameters[4].Value.SetWideString(DNOPT1);
  FTtPtXInsUpdCommand.Parameters[5].Value.SetInt32(SEQPT1);
  FTtPtXInsUpdCommand.Parameters[6].Value.SetDouble(IDTPT1);
  FTtPtXInsUpdCommand.Parameters[7].Value.SetWideString(DEPPT1);
  FTtPtXInsUpdCommand.Parameters[8].Value.SetWideString(VNOPT1);
  FTtPtXInsUpdCommand.Parameters[9].Value.SetInt32(CRTPT1);
  FTtPtXInsUpdCommand.Parameters[10].Value.SetWideString(RNOPT1);
  FTtPtXInsUpdCommand.Parameters[11].Value.SetDouble(RDVPT1);
  FTtPtXInsUpdCommand.Parameters[12].Value.SetDouble(RATPT1);
  FTtPtXInsUpdCommand.Parameters[13].Value.SetWideString(VTPPT1);
  FTtPtXInsUpdCommand.Parameters[14].Value.SetWideString(VATPT1);
  FTtPtXInsUpdCommand.Parameters[15].Value.SetDouble(VPCPT1);
  FTtPtXInsUpdCommand.Parameters[16].Value.SetDouble(VAMPT1);
  FTtPtXInsUpdCommand.Parameters[17].Value.SetWideString(VTEPT1);
  FTtPtXInsUpdCommand.Parameters[18].Value.SetWideString(SRSPT1);
  FTtPtXInsUpdCommand.Parameters[19].Value.SetWideString(ITNPT1);
  FTtPtXInsUpdCommand.Parameters[20].Value.SetWideString(COLPT1);
  FTtPtXInsUpdCommand.Parameters[21].Value.SetWideString(SERPT1);
  FTtPtXInsUpdCommand.Parameters[22].Value.SetWideString(ENGPT1);
  FTtPtXInsUpdCommand.Parameters[23].Value.SetInt32(QR1PT1);
  FTtPtXInsUpdCommand.Parameters[24].Value.SetWideString(FWHPT1);
  FTtPtXInsUpdCommand.Parameters[25].Value.SetDouble(DDTPT1);
  FTtPtXInsUpdCommand.Parameters[26].Value.SetWideString(ENTUSR);
  FTtPtXInsUpdCommand.Parameters[27].Value.SetWideString(MD);
  FTtPtXInsUpdCommand.Parameters[28].Value.SetWideString(out_dnopt1);
  FTtPtXInsUpdCommand.ExecuteUpdate;
  out_dnopt1 := FTtPtXInsUpdCommand.Parameters[28].Value.GetWideString;
  Result := FTtPtXInsUpdCommand.Parameters[29].Value.GetBoolean;
end;

function TDSPurchaseClient.TtPtX2InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string): Boolean;
begin
  if FTtPtX2InsUpdCommand = nil then
  begin
    FTtPtX2InsUpdCommand := FDBXConnection.CreateCommand;
    FTtPtX2InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPtX2InsUpdCommand.Text := 'TDSPurchase.TtPtX2InsUpd';
    FTtPtX2InsUpdCommand.Prepare;
  end;
  FTtPtX2InsUpdCommand.Parameters[0].Value.SetInt32(YARPT1);
  FTtPtX2InsUpdCommand.Parameters[1].Value.SetWideString(CMPPT1);
  FTtPtX2InsUpdCommand.Parameters[2].Value.SetWideString(BRNPT1);
  FTtPtX2InsUpdCommand.Parameters[3].Value.SetWideString(DCDPT1);
  FTtPtX2InsUpdCommand.Parameters[4].Value.SetWideString(DNOPT1);
  FTtPtX2InsUpdCommand.Parameters[5].Value.SetInt32(SEQPT1);
  FTtPtX2InsUpdCommand.Parameters[6].Value.SetDouble(IDTPT1);
  FTtPtX2InsUpdCommand.Parameters[7].Value.SetWideString(DEPPT1);
  FTtPtX2InsUpdCommand.Parameters[8].Value.SetWideString(VNOPT1);
  FTtPtX2InsUpdCommand.Parameters[9].Value.SetInt32(CRTPT1);
  FTtPtX2InsUpdCommand.Parameters[10].Value.SetWideString(RNOPT1);
  FTtPtX2InsUpdCommand.Parameters[11].Value.SetDouble(RDVPT1);
  FTtPtX2InsUpdCommand.Parameters[12].Value.SetDouble(RATPT1);
  FTtPtX2InsUpdCommand.Parameters[13].Value.SetWideString(VTPPT1);
  FTtPtX2InsUpdCommand.Parameters[14].Value.SetWideString(VATPT1);
  FTtPtX2InsUpdCommand.Parameters[15].Value.SetDouble(VPCPT1);
  FTtPtX2InsUpdCommand.Parameters[16].Value.SetDouble(VAMPT1);
  FTtPtX2InsUpdCommand.Parameters[17].Value.SetWideString(VTEPT1);
  FTtPtX2InsUpdCommand.Parameters[18].Value.SetWideString(SRSPT1);
  FTtPtX2InsUpdCommand.Parameters[19].Value.SetWideString(ITNPT1);
  FTtPtX2InsUpdCommand.Parameters[20].Value.SetWideString(COLPT1);
  FTtPtX2InsUpdCommand.Parameters[21].Value.SetWideString(SERPT1);
  FTtPtX2InsUpdCommand.Parameters[22].Value.SetWideString(ENGPT1);
  FTtPtX2InsUpdCommand.Parameters[23].Value.SetInt32(QR1PT1);
  FTtPtX2InsUpdCommand.Parameters[24].Value.SetWideString(FWHPT1);
  FTtPtX2InsUpdCommand.Parameters[25].Value.SetDouble(DDTPT1);
  FTtPtX2InsUpdCommand.Parameters[26].Value.SetWideString(ENTUSR);
  FTtPtX2InsUpdCommand.Parameters[27].Value.SetWideString(MD);
  FTtPtX2InsUpdCommand.ExecuteUpdate;
  Result := FTtPtX2InsUpdCommand.Parameters[28].Value.GetBoolean;
end;

function TDSPurchaseClient.TtPtXGet(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;
begin
  if FTtPtXGetCommand = nil then
  begin
    FTtPtXGetCommand := FDBXConnection.CreateCommand;
    FTtPtXGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPtXGetCommand.Text := 'TDSPurchase.TtPtXGet';
    FTtPtXGetCommand.Prepare;
  end;
  FTtPtXGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtPtXGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtPtXGetCommand.Parameters[2].Value.SetInt32(IYARPT1);
  FTtPtXGetCommand.Parameters[3].Value.SetWideString(ICMPPT1);
  FTtPtXGetCommand.Parameters[4].Value.SetWideString(IBRNPT1);
  FTtPtXGetCommand.Parameters[5].Value.SetWideString(IDCDPT1);
  FTtPtXGetCommand.ExecuteUpdate;
  Result := FTtPtXGetCommand.Parameters[6].Value.GetBoolean;
end;

end.
