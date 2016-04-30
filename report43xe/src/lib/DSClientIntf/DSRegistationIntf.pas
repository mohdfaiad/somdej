unit DSRegistationIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSRegistationClient = class(TDSMainClient)
  private
    FTtAm6GetListCommand: TDBXCommand;
    FTtAm6GetYm4Command: TDBXCommand;
    FTtAm6GetByNoCommand: TDBXCommand;
    FTtAm6InsUpdCommand: TDBXCommand;
    FTtAm6DelCommand: TDBXCommand;
    FTtAM7GetListCommand: TDBXCommand;
    FTtAm7GetByNoCommand: TDBXCommand;
    FTtAM7InsUpdCommand: TDBXCommand;
    FTtAM7DelCommand: TDBXCommand;

    FTtRG1GetListCommand: TDBXCommand;
    FTtRG1GetOm5Command: TDBXCommand;
    FTtRG1GetByNoCommand: TDBXCommand;
    FTtRG1InsUpdCommand: TDBXCommand;
    FTtRG1DelCommand: TDBXCommand;

    FTtRG2GetListCommand: TDBXCommand;
    FTtRG2GetByNoCommand: TDBXCommand;
    FTtRG2InsUpdCommand: TDBXCommand;
    FTtRG2DelCommand: TDBXCommand;

    FTtRG2BookGetListCommand: TDBXCommand;
    FTtRG2BookInsUpdCommand: TDBXCommand;
    FTtRG2BookDelCommand: TDBXCommand;

  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

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

implementation

constructor TDSRegistationClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSRegistation';
end;

constructor TDSRegistationClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSRegistation';
end;

destructor TDSRegistationClient.Destroy;
begin

    FreeAndNil(FTtAm6GetListCommand);
    FreeAndNil(FTtAm6GetYm4Command);
    FreeAndNil(FTtAm6GetByNoCommand);
    FreeAndNil(FTtAm6InsUpdCommand);
    FreeAndNil(FTtAm6DelCommand);
    FreeAndNil(FTtAM7GetListCommand);
    FreeAndNil(FTtAm7GetByNoCommand);
    FreeAndNil(FTtAM7InsUpdCommand);
    FreeAndNil(FTtAM7DelCommand);
    FreeAndNil(FTtRG1GetListCommand);
    FreeAndNil(FTtRG1GetOm5Command);
    FreeAndNil(FTtRG1GetByNoCommand);
    FreeAndNil(FTtRG1InsUpdCommand);
    FreeAndNil(FTtRG1DelCommand);

    FreeAndNil(FTtRG2GetListCommand);
    FreeAndNil(FTtRG2GetByNoCommand);
    FreeAndNil(FTtRG2InsUpdCommand);
    FreeAndNil(FTtRG2DelCommand);

    FreeAndNil(FTtRG2BookGetListCommand);
    FreeAndNil(FTtRG2BookInsUpdCommand);
    FreeAndNil(FTtRG2BookDelCommand);

    inherited;

end;

function TDSRegistationClient.TtAm6GetList(CRITERIA: string; ORDERFIELD: string; ICMPAM6: string; IBRNAM6: string; IDEPAM6: string; IDCDAM6: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  if FTtAm6GetListCommand = nil then
  begin
    FTtAm6GetListCommand := FDBXConnection.CreateCommand;
    FTtAm6GetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAm6GetListCommand.Text := 'TDSRegistation.TtAm6GetList';
    FTtAm6GetListCommand.Prepare;
  end;
  FTtAm6GetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtAm6GetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtAm6GetListCommand.Parameters[2].Value.SetWideString(ICMPAM6);
  FTtAm6GetListCommand.Parameters[3].Value.SetWideString(IBRNAM6);
  FTtAm6GetListCommand.Parameters[4].Value.SetWideString(IDEPAM6);
  FTtAm6GetListCommand.Parameters[5].Value.SetWideString(IDCDAM6);
  FTtAm6GetListCommand.Parameters[6].Value.SetDouble(IFRMDATE);
  FTtAm6GetListCommand.Parameters[7].Value.SetDouble(ITODATE);
  FTtAm6GetListCommand.Parameters[8].Value.SetWideString(FG);
  FTtAm6GetListCommand.ExecuteUpdate;
  Result := FTtAm6GetListCommand.Parameters[9].Value.GetBoolean;
end;

function TDSRegistationClient.TtAm6GetYm4(CRITERIA: string; ORDERFIELD: string; IYARAM6: Integer; ICMPAM6: string): Boolean;
begin
  if FTtAm6GetYm4Command = nil then
  begin
    FTtAm6GetYm4Command := FDBXConnection.CreateCommand;
    FTtAm6GetYm4Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAm6GetYm4Command.Text := 'TDSRegistation.TtAm6GetYm4';
    FTtAm6GetYm4Command.Prepare;
  end;
  FTtAm6GetYm4Command.Parameters[0].Value.SetWideString(CRITERIA);
  FTtAm6GetYm4Command.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtAm6GetYm4Command.Parameters[2].Value.SetInt32(IYARAM6);
  FTtAm6GetYm4Command.Parameters[3].Value.SetWideString(ICMPAM6);
  FTtAm6GetYm4Command.ExecuteUpdate;
  Result := FTtAm6GetYm4Command.Parameters[4].Value.GetBoolean;
end;

function TDSRegistationClient.TtAm6GetByNo(IYARAM6: Integer; IPRDAM6: Integer; ICMPAM6: string; IBRNAM6: string; IDCDAM6: string; IDNOAM6: Integer; PRC: string): Boolean;
begin
  if FTtAm6GetByNoCommand = nil then
  begin
    FTtAm6GetByNoCommand := FDBXConnection.CreateCommand;
    FTtAm6GetByNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAm6GetByNoCommand.Text := 'TDSRegistation.TtAm6GetByNo';
    FTtAm6GetByNoCommand.Prepare;
  end;
  FTtAm6GetByNoCommand.Parameters[0].Value.SetInt32(IYARAM6);
  FTtAm6GetByNoCommand.Parameters[1].Value.SetInt32(IPRDAM6);
  FTtAm6GetByNoCommand.Parameters[2].Value.SetWideString(ICMPAM6);
  FTtAm6GetByNoCommand.Parameters[3].Value.SetWideString(IBRNAM6);
  FTtAm6GetByNoCommand.Parameters[4].Value.SetWideString(IDCDAM6);
  FTtAm6GetByNoCommand.Parameters[5].Value.SetInt32(IDNOAM6);
  FTtAm6GetByNoCommand.Parameters[6].Value.SetWideString(PRC);
  FTtAm6GetByNoCommand.ExecuteUpdate;
  Result := FTtAm6GetByNoCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtAm6InsUpd(CMPAM6: string; BRNAM6: string; YARAM6: Integer; PRDAM6: Integer; DCDAM6: string; DNOAM6: Integer; SEQAM6: Integer; IDTAM6: Double; RDCAM6: string; RDNAM6: Integer; RSQAM6: Integer; RDTAM6: Double; DEPAM6: string; CTYAM6: string; CNOAM6: Int64; TYPAM6: string; ARSAM6: Double; REFNO: string; ENTUSR: string): Boolean;
begin
  if FTtAm6InsUpdCommand = nil then
  begin
    FTtAm6InsUpdCommand := FDBXConnection.CreateCommand;
    FTtAm6InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAm6InsUpdCommand.Text := 'TDSRegistation.TtAm6InsUpd';
    FTtAm6InsUpdCommand.Prepare;
  end;
  FTtAm6InsUpdCommand.Parameters[0].Value.SetWideString(CMPAM6);
  FTtAm6InsUpdCommand.Parameters[1].Value.SetWideString(BRNAM6);
  FTtAm6InsUpdCommand.Parameters[2].Value.SetInt32(YARAM6);
  FTtAm6InsUpdCommand.Parameters[3].Value.SetInt32(PRDAM6);
  FTtAm6InsUpdCommand.Parameters[4].Value.SetWideString(DCDAM6);
  FTtAm6InsUpdCommand.Parameters[5].Value.SetInt32(DNOAM6);
  FTtAm6InsUpdCommand.Parameters[6].Value.SetInt32(SEQAM6);
  FTtAm6InsUpdCommand.Parameters[7].Value.SetDouble(IDTAM6);
  FTtAm6InsUpdCommand.Parameters[8].Value.SetWideString(RDCAM6);
  FTtAm6InsUpdCommand.Parameters[9].Value.SetInt32(RDNAM6);
  FTtAm6InsUpdCommand.Parameters[10].Value.SetInt32(RSQAM6);
  FTtAm6InsUpdCommand.Parameters[11].Value.SetDouble(RDTAM6);
  FTtAm6InsUpdCommand.Parameters[12].Value.SetWideString(DEPAM6);
  FTtAm6InsUpdCommand.Parameters[13].Value.SetWideString(CTYAM6);
  FTtAm6InsUpdCommand.Parameters[14].Value.SetInt64(CNOAM6);
  FTtAm6InsUpdCommand.Parameters[15].Value.SetWideString(TYPAM6);
  FTtAm6InsUpdCommand.Parameters[16].Value.SetDouble(ARSAM6);
  FTtAm6InsUpdCommand.Parameters[17].Value.SetWideString(REFNO);
  FTtAm6InsUpdCommand.Parameters[18].Value.SetWideString(ENTUSR);
  FTtAm6InsUpdCommand.ExecuteUpdate;
  Result := FTtAm6InsUpdCommand.Parameters[19].Value.GetBoolean;
end;

function TDSRegistationClient.TtAm6Del(YARAM6: Integer; PRDAM6: Integer; CMPAM6: string; BRNAM6: string; DCDAM6: string; DNOAM6: Integer; ENTUSR: string): Boolean;
begin
  if FTtAm6DelCommand = nil then
  begin
    FTtAm6DelCommand := FDBXConnection.CreateCommand;
    FTtAm6DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAm6DelCommand.Text := 'TDSRegistation.TtAm6Del';
    FTtAm6DelCommand.Prepare;
  end;
  FTtAm6DelCommand.Parameters[0].Value.SetInt32(YARAM6);
  FTtAm6DelCommand.Parameters[1].Value.SetInt32(PRDAM6);
  FTtAm6DelCommand.Parameters[2].Value.SetWideString(CMPAM6);
  FTtAm6DelCommand.Parameters[3].Value.SetWideString(BRNAM6);
  FTtAm6DelCommand.Parameters[4].Value.SetWideString(DCDAM6);
  FTtAm6DelCommand.Parameters[5].Value.SetInt32(DNOAM6);
  FTtAm6DelCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FTtAm6DelCommand.ExecuteUpdate;
  Result := FTtAm6DelCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtAM7GetList(CRITERIA: string; ORDERFIELD: string; ICMPAM7: string; IBRNAM7: string; IDEPAM7: string; IDCDAM7: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  if FTtAM7GetListCommand = nil then
  begin
    FTtAM7GetListCommand := FDBXConnection.CreateCommand;
    FTtAM7GetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAM7GetListCommand.Text := 'TDSRegistation.TtAM7GetList';
    FTtAM7GetListCommand.Prepare;
  end;
  FTtAM7GetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtAM7GetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtAM7GetListCommand.Parameters[2].Value.SetWideString(ICMPAM7);
  FTtAM7GetListCommand.Parameters[3].Value.SetWideString(IBRNAM7);
  FTtAM7GetListCommand.Parameters[4].Value.SetWideString(IDEPAM7);
  FTtAM7GetListCommand.Parameters[5].Value.SetWideString(IDCDAM7);
  FTtAM7GetListCommand.Parameters[6].Value.SetDouble(IFRMDATE);
  FTtAM7GetListCommand.Parameters[7].Value.SetDouble(ITODATE);
  FTtAM7GetListCommand.Parameters[8].Value.SetWideString(FG);
  FTtAM7GetListCommand.ExecuteUpdate;
  Result := FTtAM7GetListCommand.Parameters[9].Value.GetBoolean;
end;

function TDSRegistationClient.TtAm7GetByNo(IYARAM7: Integer; IPRDAM7: Integer; ICMPAM7: string; IBRNAM7: string; IDCDAM7: string; IDNOAM7: Integer; PRC: string): Boolean;
begin
  if FTtAm7GetByNoCommand = nil then
  begin
    FTtAm7GetByNoCommand := FDBXConnection.CreateCommand;
    FTtAm7GetByNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAm7GetByNoCommand.Text := 'TDSRegistation.TtAm7GetByNo';
    FTtAm7GetByNoCommand.Prepare;
  end;
  FTtAm7GetByNoCommand.Parameters[0].Value.SetInt32(IYARAM7);
  FTtAm7GetByNoCommand.Parameters[1].Value.SetInt32(IPRDAM7);
  FTtAm7GetByNoCommand.Parameters[2].Value.SetWideString(ICMPAM7);
  FTtAm7GetByNoCommand.Parameters[3].Value.SetWideString(IBRNAM7);
  FTtAm7GetByNoCommand.Parameters[4].Value.SetWideString(IDCDAM7);
  FTtAm7GetByNoCommand.Parameters[5].Value.SetInt32(IDNOAM7);
  FTtAm7GetByNoCommand.Parameters[6].Value.SetWideString(PRC);
  FTtAm7GetByNoCommand.ExecuteUpdate;
  Result := FTtAm7GetByNoCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtAM7InsUpd(CMPAM7: string; BRNAM7: string; YARAM7: Integer; PRDAM7: Integer; DCDAM7: string; DNOAM7: Integer; SEQAM7: Integer; IDTAM7: Double; RDCAM7: string; RDNAM7: Integer; RSQAM7: Integer; RDTAM7: Double; DEPAM7: string; CTYAM7: string; CNOAM7: Int64; TYPAM7: string; ARSAM7: Double; REFNO: string; REGAM7: string; RENAM7: Integer; PRVAM7: string; ENTUSR: string): Boolean;
begin
  if FTtAM7InsUpdCommand = nil then
  begin
    FTtAM7InsUpdCommand := FDBXConnection.CreateCommand;
    FTtAM7InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAM7InsUpdCommand.Text := 'TDSRegistation.TtAM7InsUpd';
    FTtAM7InsUpdCommand.Prepare;
  end;
  FTtAM7InsUpdCommand.Parameters[0].Value.SetWideString(CMPAM7);
  FTtAM7InsUpdCommand.Parameters[1].Value.SetWideString(BRNAM7);
  FTtAM7InsUpdCommand.Parameters[2].Value.SetInt32(YARAM7);
  FTtAM7InsUpdCommand.Parameters[3].Value.SetInt32(PRDAM7);
  FTtAM7InsUpdCommand.Parameters[4].Value.SetWideString(DCDAM7);
  FTtAM7InsUpdCommand.Parameters[5].Value.SetInt32(DNOAM7);
  FTtAM7InsUpdCommand.Parameters[6].Value.SetInt32(SEQAM7);
  FTtAM7InsUpdCommand.Parameters[7].Value.SetDouble(IDTAM7);
  FTtAM7InsUpdCommand.Parameters[8].Value.SetWideString(RDCAM7);
  FTtAM7InsUpdCommand.Parameters[9].Value.SetInt32(RDNAM7);
  FTtAM7InsUpdCommand.Parameters[10].Value.SetInt32(RSQAM7);
  FTtAM7InsUpdCommand.Parameters[11].Value.SetDouble(RDTAM7);
  FTtAM7InsUpdCommand.Parameters[12].Value.SetWideString(DEPAM7);
  FTtAM7InsUpdCommand.Parameters[13].Value.SetWideString(CTYAM7);
  FTtAM7InsUpdCommand.Parameters[14].Value.SetInt64(CNOAM7);
  FTtAM7InsUpdCommand.Parameters[15].Value.SetWideString(TYPAM7);
  FTtAM7InsUpdCommand.Parameters[16].Value.SetDouble(ARSAM7);
  FTtAM7InsUpdCommand.Parameters[17].Value.SetWideString(REFNO);
  FTtAM7InsUpdCommand.Parameters[18].Value.SetWideString(REGAM7);
  FTtAM7InsUpdCommand.Parameters[19].Value.SetInt32(RENAM7);
  FTtAM7InsUpdCommand.Parameters[20].Value.SetWideString(PRVAM7);
  FTtAM7InsUpdCommand.Parameters[21].Value.SetWideString(ENTUSR);
  FTtAM7InsUpdCommand.ExecuteUpdate;
  Result := FTtAM7InsUpdCommand.Parameters[22].Value.GetBoolean;
end;

function TDSRegistationClient.TtAM7Del(YARAM7: Integer; PRDAM7: Integer; CMPAM7: string; BRNAM7: string; DCDAM7: string; DNOAM7: Integer; ENTUSR: string): Boolean;
begin
  if FTtAM7DelCommand = nil then
  begin
    FTtAM7DelCommand := FDBXConnection.CreateCommand;
    FTtAM7DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAM7DelCommand.Text := 'TDSRegistation.TtAM7Del';
    FTtAM7DelCommand.Prepare;
  end;
  FTtAM7DelCommand.Parameters[0].Value.SetInt32(YARAM7);
  FTtAM7DelCommand.Parameters[1].Value.SetInt32(PRDAM7);
  FTtAM7DelCommand.Parameters[2].Value.SetWideString(CMPAM7);
  FTtAM7DelCommand.Parameters[3].Value.SetWideString(BRNAM7);
  FTtAM7DelCommand.Parameters[4].Value.SetWideString(DCDAM7);
  FTtAM7DelCommand.Parameters[5].Value.SetInt32(DNOAM7);
  FTtAM7DelCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FTtAM7DelCommand.ExecuteUpdate;
  Result := FTtAM7DelCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG1GetList(CRITERIA: string; ORDERFIELD: string; ICMPRG1: string; IBRNRG1: string; IDEPRG1: string; IDCDRG1: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  if FTtRG1GetListCommand = nil then
  begin
    FTtRG1GetListCommand := FDBXConnection.CreateCommand;
    FTtRG1GetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG1GetListCommand.Text := 'TDSRegistation.TtRG1GetList';
    FTtRG1GetListCommand.Prepare;
  end;
  FTtRG1GetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtRG1GetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtRG1GetListCommand.Parameters[2].Value.SetWideString(ICMPRG1);
  FTtRG1GetListCommand.Parameters[3].Value.SetWideString(IBRNRG1);
  FTtRG1GetListCommand.Parameters[4].Value.SetWideString(IDEPRG1);
  FTtRG1GetListCommand.Parameters[5].Value.SetWideString(IDCDRG1);
  FTtRG1GetListCommand.Parameters[6].Value.SetDouble(IFRMDATE);
  FTtRG1GetListCommand.Parameters[7].Value.SetDouble(ITODATE);
  FTtRG1GetListCommand.Parameters[8].Value.SetWideString(FG);
  FTtRG1GetListCommand.ExecuteUpdate;
  Result := FTtRG1GetListCommand.Parameters[9].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG1GetOm5(ICMPRG1: string; IBRNRG1: string; TYP: string): Boolean;
begin
  if FTtRG1GetOm5Command = nil then
  begin
    FTtRG1GetOm5Command := FDBXConnection.CreateCommand;
    FTtRG1GetOm5Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG1GetOm5Command.Text := 'TDSRegistation.TtRG1GetOm5';
    FTtRG1GetOm5Command.Prepare;
  end;
  FTtRG1GetOm5Command.Parameters[0].Value.SetWideString(ICMPRG1);
  FTtRG1GetOm5Command.Parameters[1].Value.SetWideString(IBRNRG1);
  FTtRG1GetOm5Command.Parameters[2].Value.SetWideString(TYP);
  FTtRG1GetOm5Command.ExecuteUpdate;
  Result := FTtRG1GetOm5Command.Parameters[3].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG1GetByNo(IYARRG1: Integer; IPRDRG1: Integer; ICMPRG1: string; IBRNRG1: string; IDCDRG1: string; IDNORG1: Integer; PRC: string): Boolean;
begin
  if FTtRG1GetByNoCommand = nil then
  begin
    FTtRG1GetByNoCommand := FDBXConnection.CreateCommand;
    FTtRG1GetByNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG1GetByNoCommand.Text := 'TDSRegistation.TtRG1GetByNo';
    FTtRG1GetByNoCommand.Prepare;
  end;
  FTtRG1GetByNoCommand.Parameters[0].Value.SetInt32(IYARRG1);
  FTtRG1GetByNoCommand.Parameters[1].Value.SetInt32(IPRDRG1);
  FTtRG1GetByNoCommand.Parameters[2].Value.SetWideString(ICMPRG1);
  FTtRG1GetByNoCommand.Parameters[3].Value.SetWideString(IBRNRG1);
  FTtRG1GetByNoCommand.Parameters[4].Value.SetWideString(IDCDRG1);
  FTtRG1GetByNoCommand.Parameters[5].Value.SetInt32(IDNORG1);
  FTtRG1GetByNoCommand.Parameters[6].Value.SetWideString(PRC);
  FTtRG1GetByNoCommand.ExecuteUpdate;
  Result := FTtRG1GetByNoCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG1InsUpd(CMPRG1: string; BRNRG1: string; YARRG1: Integer; PRDRG1: Integer; DCDRG1: string; DNORG1: Integer; SEQRG1: Integer; IDTRG1: Double; RDCRG1: string; RDNRG1: Integer; RSQRG1: Integer; RDTRG1: Double; DEPRG1: string; EDTRG1: Double; VNORG1: string; TYPRG1: string; ARSRG1: Double; REFNO: string; ENTUSR: string): Boolean;
begin
  if FTtRG1InsUpdCommand = nil then
  begin
    FTtRG1InsUpdCommand := FDBXConnection.CreateCommand;
    FTtRG1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG1InsUpdCommand.Text := 'TDSRegistation.TtRG1InsUpd';
    FTtRG1InsUpdCommand.Prepare;
  end;
  FTtRG1InsUpdCommand.Parameters[0].Value.SetWideString(CMPRG1);
  FTtRG1InsUpdCommand.Parameters[1].Value.SetWideString(BRNRG1);
  FTtRG1InsUpdCommand.Parameters[2].Value.SetInt32(YARRG1);
  FTtRG1InsUpdCommand.Parameters[3].Value.SetInt32(PRDRG1);
  FTtRG1InsUpdCommand.Parameters[4].Value.SetWideString(DCDRG1);
  FTtRG1InsUpdCommand.Parameters[5].Value.SetInt32(DNORG1);
  FTtRG1InsUpdCommand.Parameters[6].Value.SetInt32(SEQRG1);
  FTtRG1InsUpdCommand.Parameters[7].Value.SetDouble(IDTRG1);
  FTtRG1InsUpdCommand.Parameters[8].Value.SetWideString(RDCRG1);
  FTtRG1InsUpdCommand.Parameters[9].Value.SetInt32(RDNRG1);
  FTtRG1InsUpdCommand.Parameters[10].Value.SetInt32(RSQRG1);
  FTtRG1InsUpdCommand.Parameters[11].Value.SetDouble(RDTRG1);
  FTtRG1InsUpdCommand.Parameters[12].Value.SetWideString(DEPRG1);
  FTtRG1InsUpdCommand.Parameters[13].Value.SetDouble(EDTRG1);
  FTtRG1InsUpdCommand.Parameters[14].Value.SetWideString(VNORG1);
  FTtRG1InsUpdCommand.Parameters[15].Value.SetWideString(TYPRG1);
  FTtRG1InsUpdCommand.Parameters[16].Value.SetDouble(ARSRG1);
  FTtRG1InsUpdCommand.Parameters[17].Value.SetWideString(REFNO);
  FTtRG1InsUpdCommand.Parameters[18].Value.SetWideString(ENTUSR);
  FTtRG1InsUpdCommand.ExecuteUpdate;
  Result := FTtRG1InsUpdCommand.Parameters[19].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG1Del(YARRG1: Integer; PRDRG1: Integer; CMPRG1: string; BRNRG1: string; DCDRG1: string; DNORG1: Integer; ENTUSR: string): Boolean;
begin
  if FTtRG1DelCommand = nil then
  begin
    FTtRG1DelCommand := FDBXConnection.CreateCommand;
    FTtRG1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG1DelCommand.Text := 'TDSRegistation.TtRG1Del';
    FTtRG1DelCommand.Prepare;
  end;
  FTtRG1DelCommand.Parameters[0].Value.SetInt32(YARRG1);
  FTtRG1DelCommand.Parameters[1].Value.SetInt32(PRDRG1);
  FTtRG1DelCommand.Parameters[2].Value.SetWideString(CMPRG1);
  FTtRG1DelCommand.Parameters[3].Value.SetWideString(BRNRG1);
  FTtRG1DelCommand.Parameters[4].Value.SetWideString(DCDRG1);
  FTtRG1DelCommand.Parameters[5].Value.SetInt32(DNORG1);
  FTtRG1DelCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FTtRG1DelCommand.ExecuteUpdate;
  Result := FTtRG1DelCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG2GetList(CRITERIA: string; ORDERFIELD: string; ICMPRG2: string; IBRNRG2: string; IDEPRG2: string; IDCDRG2: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  if FTtRG2GetListCommand = nil then
  begin
    FTtRG2GetListCommand := FDBXConnection.CreateCommand;
    FTtRG2GetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG2GetListCommand.Text := 'TDSRegistation.TtRG2GetList';
    FTtRG2GetListCommand.Prepare;
  end;
  FTtRG2GetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtRG2GetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtRG2GetListCommand.Parameters[2].Value.SetWideString(ICMPRG2);
  FTtRG2GetListCommand.Parameters[3].Value.SetWideString(IBRNRG2);
  FTtRG2GetListCommand.Parameters[4].Value.SetWideString(IDEPRG2);
  FTtRG2GetListCommand.Parameters[5].Value.SetWideString(IDCDRG2);
  FTtRG2GetListCommand.Parameters[6].Value.SetDouble(IFRMDATE);
  FTtRG2GetListCommand.Parameters[7].Value.SetDouble(ITODATE);
  FTtRG2GetListCommand.Parameters[8].Value.SetWideString(FG);
  FTtRG2GetListCommand.ExecuteUpdate;
  Result := FTtRG2GetListCommand.Parameters[9].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG2GetByNo(IYARRG2: Integer; IPRDRG2: Integer; ICMPRG2: string; IBRNRG2: string; IDCDRG2: string; IDNORG2: Integer; PRC: string): Boolean;
begin
  if FTtRG2GetByNoCommand = nil then
  begin
    FTtRG2GetByNoCommand := FDBXConnection.CreateCommand;
    FTtRG2GetByNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG2GetByNoCommand.Text := 'TDSRegistation.TtRG2GetByNo';
    FTtRG2GetByNoCommand.Prepare;
  end;
  FTtRG2GetByNoCommand.Parameters[0].Value.SetInt32(IYARRG2);
  FTtRG2GetByNoCommand.Parameters[1].Value.SetInt32(IPRDRG2);
  FTtRG2GetByNoCommand.Parameters[2].Value.SetWideString(ICMPRG2);
  FTtRG2GetByNoCommand.Parameters[3].Value.SetWideString(IBRNRG2);
  FTtRG2GetByNoCommand.Parameters[4].Value.SetWideString(IDCDRG2);
  FTtRG2GetByNoCommand.Parameters[5].Value.SetInt32(IDNORG2);
  FTtRG2GetByNoCommand.Parameters[6].Value.SetWideString(PRC);
  FTtRG2GetByNoCommand.ExecuteUpdate;
  Result := FTtRG2GetByNoCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG2InsUpd(CMPRG2: string; BRNRG2: string; YARRG2: Integer; PRDRG2: Integer; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; IDTRG2: Double; RDCRG2: string; RDNRG2: Integer; RSQRG2: Integer; RDTRG2: Double; DEPRG2: string; EDTRG2: Double; BDTRG2: Double; VNORG2: string; TYPRG2: string; ARSRG2: Double; REFNO: string; SEROM5: string; PRVRG2: string; REGRG2: string; RENRG2: Integer; RVDRG2: Double; RVNRG2: Integer; ARARG2: Double; AOARG2: Double; ENTUSR: string): Boolean;
begin
  if FTtRG2InsUpdCommand = nil then
  begin
    FTtRG2InsUpdCommand := FDBXConnection.CreateCommand;
    FTtRG2InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG2InsUpdCommand.Text := 'TDSRegistation.TtRG2InsUpd';
    FTtRG2InsUpdCommand.Prepare;
  end;
  FTtRG2InsUpdCommand.Parameters[0].Value.SetWideString(CMPRG2);
  FTtRG2InsUpdCommand.Parameters[1].Value.SetWideString(BRNRG2);
  FTtRG2InsUpdCommand.Parameters[2].Value.SetInt32(YARRG2);
  FTtRG2InsUpdCommand.Parameters[3].Value.SetInt32(PRDRG2);
  FTtRG2InsUpdCommand.Parameters[4].Value.SetWideString(DCDRG2);
  FTtRG2InsUpdCommand.Parameters[5].Value.SetInt32(DNORG2);
  FTtRG2InsUpdCommand.Parameters[6].Value.SetInt32(SEQRG2);
  FTtRG2InsUpdCommand.Parameters[7].Value.SetDouble(IDTRG2);
  FTtRG2InsUpdCommand.Parameters[8].Value.SetWideString(RDCRG2);
  FTtRG2InsUpdCommand.Parameters[9].Value.SetInt32(RDNRG2);
  FTtRG2InsUpdCommand.Parameters[10].Value.SetInt32(RSQRG2);
  FTtRG2InsUpdCommand.Parameters[11].Value.SetDouble(RDTRG2);
  FTtRG2InsUpdCommand.Parameters[12].Value.SetWideString(DEPRG2);
  FTtRG2InsUpdCommand.Parameters[13].Value.SetDouble(EDTRG2);
  FTtRG2InsUpdCommand.Parameters[14].Value.SetDouble(BDTRG2);
  FTtRG2InsUpdCommand.Parameters[15].Value.SetWideString(VNORG2);
  FTtRG2InsUpdCommand.Parameters[16].Value.SetWideString(TYPRG2);
  FTtRG2InsUpdCommand.Parameters[17].Value.SetDouble(ARSRG2);
  FTtRG2InsUpdCommand.Parameters[18].Value.SetWideString(REFNO);
  FTtRG2InsUpdCommand.Parameters[19].Value.SetWideString(SEROM5);
  FTtRG2InsUpdCommand.Parameters[20].Value.SetWideString(PRVRG2);
  FTtRG2InsUpdCommand.Parameters[21].Value.SetWideString(REGRG2);
  FTtRG2InsUpdCommand.Parameters[22].Value.SetInt32(RENRG2);
  FTtRG2InsUpdCommand.Parameters[23].Value.SetDouble(RVDRG2);
  FTtRG2InsUpdCommand.Parameters[24].Value.SetInt32(RVNRG2);
  FTtRG2InsUpdCommand.Parameters[25].Value.SetDouble(ARARG2);
  FTtRG2InsUpdCommand.Parameters[26].Value.SetDouble(AOARG2);
  FTtRG2InsUpdCommand.Parameters[27].Value.SetWideString(ENTUSR);
  FTtRG2InsUpdCommand.ExecuteUpdate;
  Result := FTtRG2InsUpdCommand.Parameters[28].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG2Del(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; ENTUSR: string): Boolean;
begin
  if FTtRG2DelCommand = nil then
  begin
    FTtRG2DelCommand := FDBXConnection.CreateCommand;
    FTtRG2DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG2DelCommand.Text := 'TDSRegistation.TtRG2Del';
    FTtRG2DelCommand.Prepare;
  end;
  FTtRG2DelCommand.Parameters[0].Value.SetInt32(YARRG2);
  FTtRG2DelCommand.Parameters[1].Value.SetInt32(PRDRG2);
  FTtRG2DelCommand.Parameters[2].Value.SetWideString(CMPRG2);
  FTtRG2DelCommand.Parameters[3].Value.SetWideString(BRNRG2);
  FTtRG2DelCommand.Parameters[4].Value.SetWideString(DCDRG2);
  FTtRG2DelCommand.Parameters[5].Value.SetInt32(DNORG2);
  FTtRG2DelCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FTtRG2DelCommand.ExecuteUpdate;
  Result := FTtRG2DelCommand.Parameters[7].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG2BookGetList(CRITERIA: string; ORDERFIELD: string; ICMPRG2: string; IBRNRG2: string; IDEPRG2: string; IDCDRG2: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  if FTtRG2BookGetListCommand = nil then
  begin
    FTtRG2BookGetListCommand := FDBXConnection.CreateCommand;
    FTtRG2BookGetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG2BookGetListCommand.Text := 'TDSRegistation.TtRG2BookGetList';
    FTtRG2BookGetListCommand.Prepare;
  end;
  FTtRG2BookGetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtRG2BookGetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtRG2BookGetListCommand.Parameters[2].Value.SetWideString(ICMPRG2);
  FTtRG2BookGetListCommand.Parameters[3].Value.SetWideString(IBRNRG2);
  FTtRG2BookGetListCommand.Parameters[4].Value.SetWideString(IDEPRG2);
  FTtRG2BookGetListCommand.Parameters[5].Value.SetWideString(IDCDRG2);
  FTtRG2BookGetListCommand.Parameters[6].Value.SetDouble(IFRMDATE);
  FTtRG2BookGetListCommand.Parameters[7].Value.SetDouble(ITODATE);
  FTtRG2BookGetListCommand.Parameters[8].Value.SetWideString(FG);
  FTtRG2BookGetListCommand.ExecuteUpdate;
  Result := FTtRG2BookGetListCommand.Parameters[9].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG2BookInsUpd(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; BRDRG2: Double; ENTUSR: string): Boolean;
begin
  if FTtRG2BookInsUpdCommand = nil then
  begin
    FTtRG2BookInsUpdCommand := FDBXConnection.CreateCommand;
    FTtRG2BookInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG2BookInsUpdCommand.Text := 'TDSRegistation.TtRG2BookInsUpd';
    FTtRG2BookInsUpdCommand.Prepare;
  end;
  FTtRG2BookInsUpdCommand.Parameters[0].Value.SetInt32(YARRG2);
  FTtRG2BookInsUpdCommand.Parameters[1].Value.SetInt32(PRDRG2);
  FTtRG2BookInsUpdCommand.Parameters[2].Value.SetWideString(CMPRG2);
  FTtRG2BookInsUpdCommand.Parameters[3].Value.SetWideString(BRNRG2);
  FTtRG2BookInsUpdCommand.Parameters[4].Value.SetWideString(DCDRG2);
  FTtRG2BookInsUpdCommand.Parameters[5].Value.SetInt32(DNORG2);
  FTtRG2BookInsUpdCommand.Parameters[6].Value.SetInt32(SEQRG2);
  FTtRG2BookInsUpdCommand.Parameters[7].Value.SetDouble(BRDRG2);
  FTtRG2BookInsUpdCommand.Parameters[8].Value.SetWideString(ENTUSR);
  FTtRG2BookInsUpdCommand.ExecuteUpdate;
  Result := FTtRG2BookInsUpdCommand.Parameters[9].Value.GetBoolean;
end;

function TDSRegistationClient.TtRG2BookDel(YARRG2: Integer; PRDRG2: Integer; CMPRG2: string; BRNRG2: string; DCDRG2: string; DNORG2: Integer; SEQRG2: Integer; BRDRG2: Double; ENTUSR: string): Boolean;
begin
  if FTtRG2BookDelCommand = nil then
  begin
    FTtRG2BookDelCommand := FDBXConnection.CreateCommand;
    FTtRG2BookDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRG2BookDelCommand.Text := 'TDSRegistation.TtRG2BookDel';
    FTtRG2BookDelCommand.Prepare;
  end;
  FTtRG2BookDelCommand.Parameters[0].Value.SetInt32(YARRG2);
  FTtRG2BookDelCommand.Parameters[1].Value.SetInt32(PRDRG2);
  FTtRG2BookDelCommand.Parameters[2].Value.SetWideString(CMPRG2);
  FTtRG2BookDelCommand.Parameters[3].Value.SetWideString(BRNRG2);
  FTtRG2BookDelCommand.Parameters[4].Value.SetWideString(DCDRG2);
  FTtRG2BookDelCommand.Parameters[5].Value.SetInt32(DNORG2);
  FTtRG2BookDelCommand.Parameters[6].Value.SetInt32(SEQRG2);
  FTtRG2BookDelCommand.Parameters[7].Value.SetDouble(BRDRG2);
  FTtRG2BookDelCommand.Parameters[8].Value.SetWideString(ENTUSR);
  FTtRG2BookDelCommand.ExecuteUpdate;
  Result := FTtRG2BookDelCommand.Parameters[9].Value.GetBoolean;
end;

end.
