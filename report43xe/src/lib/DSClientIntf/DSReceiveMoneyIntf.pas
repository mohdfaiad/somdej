unit DSReceiveMoneyIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSReceiveMoneyClient = class(TDSMainClient)
  private
    FTtRcvGetCommand: TDBXCommand;
    FTtRcvGetAm4Command: TDBXCommand;
    FTtRcvGetRt4Command: TDBXCommand;
    FTtRcvInsUpdCommand: TDBXCommand;
    FTtRcvDelCommand: TDBXCommand;


  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

    function TtRcvGet(CRITERIA: string; ORDERFIELD: string; ICMPRt4: string; IBRNRt4: string; IDEPRT4: string; IDCDRt4: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
    function TtRcvGetAm4(IYARAM4: Integer; ICMPAM4: string; IBRNAM4: string; IDCDAM4: string; ICTYAM4: string; ICNOAM4: Int64; FG: string): Boolean;
    function TtRcvGetRt4(IYARRt4: Integer; IPRDRT4: Integer; ICMPRt4: string; IBRNRt4: string; IDCDRt4: string; IDNORT4: Integer; FG: string): Boolean;
    function TtRcvInsUpd(CMPRT4: string; BRNRT4: string; YARRT4: Integer; PRDRT4: Integer; DCDRT4: string; DNORT4: Integer; SEQRT4: Integer; IDTRT4: Double; RDCRT4: string; RDNRT4: Integer; RSQRT4: Integer; RDTRT4: Double; RTPRT4: string; DEPRT4: string; CTYRT4: string; CNORT4: Int64; PTPRT4: string; TYPRT4: string; AMTRT4: Double; BCMRT4: string; PINRT4: string; BAKRT4: string; BBRRT4: string; NOTRT4: string; DDTRT4: Double; MEMRT4: string; REGRT7: string; RENRT7: Integer; PRVRT7: string; ENTUSR: string): Boolean;
    function TtRcvDel(YARRt4: Integer; PRDRT4: Integer; CMPRt4: string; BRNRt4: string; DCDRt4: string; DNORt4: Integer; ENTUSR: string): Boolean;


  end;

implementation

constructor TDSReceiveMoneyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSReceiveMoney';
end;

constructor TDSReceiveMoneyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSReceiveMoney';
end;

destructor TDSReceiveMoneyClient.Destroy;
begin

    FreeAndNil(FTtRcvGetCommand);
    FreeAndNil(FTtRcvGetAm4Command);
    FreeAndNil(FTtRcvGetRt4Command);
    FreeAndNil(FTtRcvInsUpdCommand);
    FreeAndNil(FTtRcvDelCommand);

    inherited;

end;

function TDSReceiveMoneyClient.TtRcvGet(CRITERIA: string; ORDERFIELD: string; ICMPRt4: string; IBRNRt4: string; IDEPRT4: string; IDCDRt4: string; IFRMDATE: Double; ITODATE: Double; FG: string): Boolean;
begin
  if FTtRcvGetCommand = nil then
  begin
    FTtRcvGetCommand := FDBXConnection.CreateCommand;
    FTtRcvGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRcvGetCommand.Text := 'TDSReceiveMoney.TtRcvGet';
    FTtRcvGetCommand.Prepare;
  end;
  FTtRcvGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtRcvGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtRcvGetCommand.Parameters[2].Value.SetWideString(ICMPRt4);
  FTtRcvGetCommand.Parameters[3].Value.SetWideString(IBRNRt4);
  FTtRcvGetCommand.Parameters[4].Value.SetWideString(IDEPRT4);
  FTtRcvGetCommand.Parameters[5].Value.SetWideString(IDCDRt4);
  FTtRcvGetCommand.Parameters[6].Value.SetDouble(IFRMDATE);
  FTtRcvGetCommand.Parameters[7].Value.SetDouble(ITODATE);
  FTtRcvGetCommand.Parameters[8].Value.SetWideString(FG);
  FTtRcvGetCommand.ExecuteUpdate;
  Result := FTtRcvGetCommand.Parameters[9].Value.GetBoolean;
end;

function TDSReceiveMoneyClient.TtRcvGetAm4(IYARAM4: Integer; ICMPAM4: string; IBRNAM4: string; IDCDAM4: string; ICTYAM4: string; ICNOAM4: Int64; FG: string): Boolean;
begin
  if FTtRcvGetAm4Command = nil then
  begin
    FTtRcvGetAm4Command := FDBXConnection.CreateCommand;
    FTtRcvGetAm4Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRcvGetAm4Command.Text := 'TDSReceiveMoney.TtRcvGetAm4';
    FTtRcvGetAm4Command.Prepare;
  end;
  FTtRcvGetAm4Command.Parameters[0].Value.SetInt32(IYARAM4);
  FTtRcvGetAm4Command.Parameters[1].Value.SetWideString(ICMPAM4);
  FTtRcvGetAm4Command.Parameters[2].Value.SetWideString(IBRNAM4);
  FTtRcvGetAm4Command.Parameters[3].Value.SetWideString(IDCDAM4);
  FTtRcvGetAm4Command.Parameters[4].Value.SetWideString(ICTYAM4);
  FTtRcvGetAm4Command.Parameters[5].Value.SetInt64(ICNOAM4);
  FTtRcvGetAm4Command.Parameters[6].Value.SetWideString(FG);
  FTtRcvGetAm4Command.ExecuteUpdate;
  Result := FTtRcvGetAm4Command.Parameters[7].Value.GetBoolean;
end;

function TDSReceiveMoneyClient.TtRcvGetRt4(IYARRt4: Integer; IPRDRT4: Integer; ICMPRt4: string; IBRNRt4: string; IDCDRt4: string; IDNORT4: Integer; FG: string): Boolean;
begin
  if FTtRcvGetRt4Command = nil then
  begin
    FTtRcvGetRt4Command := FDBXConnection.CreateCommand;
    FTtRcvGetRt4Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRcvGetRt4Command.Text := 'TDSReceiveMoney.TtRcvGetRt4';
    FTtRcvGetRt4Command.Prepare;
  end;
  FTtRcvGetRt4Command.Parameters[0].Value.SetInt32(IYARRt4);
  FTtRcvGetRt4Command.Parameters[1].Value.SetInt32(IPRDRT4);
  FTtRcvGetRt4Command.Parameters[2].Value.SetWideString(ICMPRt4);
  FTtRcvGetRt4Command.Parameters[3].Value.SetWideString(IBRNRt4);
  FTtRcvGetRt4Command.Parameters[4].Value.SetWideString(IDCDRt4);
  FTtRcvGetRt4Command.Parameters[5].Value.SetInt32(IDNORT4);
  FTtRcvGetRt4Command.Parameters[6].Value.SetWideString(FG);
  FTtRcvGetRt4Command.ExecuteUpdate;
  Result := FTtRcvGetRt4Command.Parameters[7].Value.GetBoolean;
end;

function TDSReceiveMoneyClient.TtRcvInsUpd(CMPRT4: string; BRNRT4: string; YARRT4: Integer; PRDRT4: Integer; DCDRT4: string; DNORT4: Integer; SEQRT4: Integer; IDTRT4: Double; RDCRT4: string; RDNRT4: Integer; RSQRT4: Integer; RDTRT4: Double; RTPRT4: string; DEPRT4: string; CTYRT4: string; CNORT4: Int64; PTPRT4: string; TYPRT4: string; AMTRT4: Double; BCMRT4: string; PINRT4: string; BAKRT4: string; BBRRT4: string; NOTRT4: string; DDTRT4: Double; MEMRT4: string; REGRT7: string; RENRT7: Integer; PRVRT7: string; ENTUSR: string): Boolean;
begin
  if FTtRcvInsUpdCommand = nil then
  begin
    FTtRcvInsUpdCommand := FDBXConnection.CreateCommand;
    FTtRcvInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRcvInsUpdCommand.Text := 'TDSReceiveMoney.TtRcvInsUpd';
    FTtRcvInsUpdCommand.Prepare;
  end;
  FTtRcvInsUpdCommand.Parameters[0].Value.SetWideString(CMPRT4);
  FTtRcvInsUpdCommand.Parameters[1].Value.SetWideString(BRNRT4);
  FTtRcvInsUpdCommand.Parameters[2].Value.SetInt32(YARRT4);
  FTtRcvInsUpdCommand.Parameters[3].Value.SetInt32(PRDRT4);
  FTtRcvInsUpdCommand.Parameters[4].Value.SetWideString(DCDRT4);
  FTtRcvInsUpdCommand.Parameters[5].Value.SetInt32(DNORT4);
  FTtRcvInsUpdCommand.Parameters[6].Value.SetInt32(SEQRT4);
  FTtRcvInsUpdCommand.Parameters[7].Value.SetDouble(IDTRT4);
  FTtRcvInsUpdCommand.Parameters[8].Value.SetWideString(RDCRT4);
  FTtRcvInsUpdCommand.Parameters[9].Value.SetInt32(RDNRT4);
  FTtRcvInsUpdCommand.Parameters[10].Value.SetInt32(RSQRT4);
  FTtRcvInsUpdCommand.Parameters[11].Value.SetDouble(RDTRT4);
  FTtRcvInsUpdCommand.Parameters[12].Value.SetWideString(RTPRT4);
  FTtRcvInsUpdCommand.Parameters[13].Value.SetWideString(DEPRT4);
  FTtRcvInsUpdCommand.Parameters[14].Value.SetWideString(CTYRT4);
  FTtRcvInsUpdCommand.Parameters[15].Value.SetInt64(CNORT4);
  FTtRcvInsUpdCommand.Parameters[16].Value.SetWideString(PTPRT4);
  FTtRcvInsUpdCommand.Parameters[17].Value.SetWideString(TYPRT4);
  FTtRcvInsUpdCommand.Parameters[18].Value.SetDouble(AMTRT4);
  FTtRcvInsUpdCommand.Parameters[19].Value.SetWideString(BCMRT4);
  FTtRcvInsUpdCommand.Parameters[20].Value.SetWideString(PINRT4);
  FTtRcvInsUpdCommand.Parameters[21].Value.SetWideString(BAKRT4);
  FTtRcvInsUpdCommand.Parameters[22].Value.SetWideString(BBRRT4);
  FTtRcvInsUpdCommand.Parameters[23].Value.SetWideString(NOTRT4);
  FTtRcvInsUpdCommand.Parameters[24].Value.SetDouble(DDTRT4);
  FTtRcvInsUpdCommand.Parameters[25].Value.SetWideString(MEMRT4);
  FTtRcvInsUpdCommand.Parameters[26].Value.SetWideString(REGRT7);
  FTtRcvInsUpdCommand.Parameters[27].Value.SetInt32(RENRT7);
  FTtRcvInsUpdCommand.Parameters[28].Value.SetWideString(PRVRT7);
  FTtRcvInsUpdCommand.Parameters[29].Value.SetWideString(ENTUSR);
  FTtRcvInsUpdCommand.ExecuteUpdate;
  Result := FTtRcvInsUpdCommand.Parameters[30].Value.GetBoolean;
end;


function TDSReceiveMoneyClient.TtRcvDel(YARRt4: Integer; PRDRT4: Integer; CMPRt4: string; BRNRt4: string; DCDRt4: string; DNORt4: Integer; ENTUSR: string): Boolean;
begin
  if FTtRcvDelCommand = nil then
  begin
    FTtRcvDelCommand := FDBXConnection.CreateCommand;
    FTtRcvDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRcvDelCommand.Text := 'TDSReceiveMoney.TtRcvDel';
    FTtRcvDelCommand.Prepare;
  end;
  FTtRcvDelCommand.Parameters[0].Value.SetInt32(YARRt4);
  FTtRcvDelCommand.Parameters[1].Value.SetInt32(PRDRT4);
  FTtRcvDelCommand.Parameters[2].Value.SetWideString(CMPRt4);
  FTtRcvDelCommand.Parameters[3].Value.SetWideString(BRNRt4);
  FTtRcvDelCommand.Parameters[4].Value.SetWideString(DCDRt4);
  FTtRcvDelCommand.Parameters[5].Value.SetInt32(DNORt4);
  FTtRcvDelCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FTtRcvDelCommand.ExecuteUpdate;
  Result := FTtRcvDelCommand.Parameters[7].Value.GetBoolean;
end;

end.
