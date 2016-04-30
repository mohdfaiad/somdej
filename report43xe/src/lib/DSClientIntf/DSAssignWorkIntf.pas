unit DSAssignWorkIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSAssignWorkClient = class(TDSMainClient)
  private
    FTtSchGetCommand: TDBXCommand;
    FTtSchInsUpdCommand: TDBXCommand;
    FTtSchDelCommand: TDBXCommand;
    FTtSchOptGetCommand: TDBXCommand;
    FTtSchOptInsUpdCommand: TDBXCommand;
    FTtSchOptDelCommand: TDBXCommand;

    FTtRdwGetCommand: TDBXCommand;
    FTtRdwCopyCommand: TDBXCommand;
    FTtRdwInsUpdCommand: TDBXCommand;
    FTtRdwDelCommand: TDBXCommand;

    FTtPasGetByDatCommand: TDBXCommand;
    FTtPasGetCommand: TDBXCommand;
    FTtPasInsUpdCommand: TDBXCommand;

    FTtAsnGetCommand: TDBXCommand;
    FTtAswGetCommand: TDBXCommand;
    FTtColGetCommand: TDBXCommand;
    FTtAd1GetListCommand: TDBXCommand;
    FTtAd1GetCommand: TDBXCommand;
    FTtAP1GetCommand: TDBXCommand;
    FTtGenDocCommand: TDBXCommand;
    FTtAD1InsUpdCommand: TDBXCommand;
    FTtAD1DelCommand: TDBXCommand;


  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

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

implementation

constructor TDSAssignWorkClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSAssignWork';
end;

constructor TDSAssignWorkClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSAssignWork';
end;

destructor TDSAssignWorkClient.Destroy;
begin
    FreeAndNil(FTtSchGetCommand);
    FreeAndNil(FTtSchInsUpdCommand);
    FreeAndNil(FTtSchDelCommand);
    FreeAndNil(FTtSchOptGetCommand);
    FreeAndNil(FTtSchOptInsUpdCommand);
    FreeAndNil(FTtSchOptDelCommand);

    FreeAndNil(FTtRdwGetCommand);
    FreeAndNil(FTtRdwInsUpdCommand);
    FreeAndNil(FTtRdwDelCommand);

    FreeAndNil(FTtPasGetByDatCommand);
    FreeAndNil(FTtPasGetCommand);
    FreeAndNil(FTtPasInsUpdCommand);

    FreeAndNil(FTtAsnGetCommand);
    FreeAndNil(FTtAswGetCommand);
    FreeAndNil(FTtColGetCommand);
    FreeAndNil(FTtAd1GetListCommand);
    FreeAndNil(FTtAd1GetCommand);
    FreeAndNil(FTtAP1GetCommand);
    FreeAndNil(FTtGenDocCommand);
    FreeAndNil(FTtAD1InsUpdCommand);
    FreeAndNil(FTtAD1DelCommand);


    inherited;

end;

function TDSAssignWorkClient.TtSchGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
begin
  if FTtSchGetCommand = nil then
  begin
    FTtSchGetCommand := FDBXConnection.CreateCommand;
    FTtSchGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtSchGetCommand.Text := 'TDSAssignWork.TtSchGet';
    FTtSchGetCommand.Prepare;
  end;
  FTtSchGetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtSchGetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtSchGetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtSchGetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtSchGetCommand.ExecuteUpdate;
  Result := FTtSchGetCommand.Parameters[4].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtSchInsUpd(STSSCH: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DFRSCH: Double; DTOSCH: Double; FR1SCH: Double; TO1SCH: Double; FR2SCH: Double; TO2SCH: Double; FR3SCH: Double; TO3SCH: Double; FR4SCH: Double; TO4SCH: Double; ENTUSR: string): Boolean;
begin
  if FTtSchInsUpdCommand = nil then
  begin
    FTtSchInsUpdCommand := FDBXConnection.CreateCommand;
    FTtSchInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtSchInsUpdCommand.Text := 'TDSAssignWork.TtSchInsUpd';
    FTtSchInsUpdCommand.Prepare;
  end;
  FTtSchInsUpdCommand.Parameters[0].Value.SetWideString(STSSCH);
  FTtSchInsUpdCommand.Parameters[1].Value.SetWideString(CMPSCH);
  FTtSchInsUpdCommand.Parameters[2].Value.SetWideString(BRNSCH);
  FTtSchInsUpdCommand.Parameters[3].Value.SetInt32(YARSCH);
  FTtSchInsUpdCommand.Parameters[4].Value.SetInt32(PRDSCH);
  FTtSchInsUpdCommand.Parameters[5].Value.SetDouble(DFRSCH);
  FTtSchInsUpdCommand.Parameters[6].Value.SetDouble(DTOSCH);
  FTtSchInsUpdCommand.Parameters[7].Value.SetDouble(FR1SCH);
  FTtSchInsUpdCommand.Parameters[8].Value.SetDouble(TO1SCH);
  FTtSchInsUpdCommand.Parameters[9].Value.SetDouble(FR2SCH);
  FTtSchInsUpdCommand.Parameters[10].Value.SetDouble(TO2SCH);
  FTtSchInsUpdCommand.Parameters[11].Value.SetDouble(FR3SCH);
  FTtSchInsUpdCommand.Parameters[12].Value.SetDouble(TO3SCH);
  FTtSchInsUpdCommand.Parameters[13].Value.SetDouble(FR4SCH);
  FTtSchInsUpdCommand.Parameters[14].Value.SetDouble(TO4SCH);
  FTtSchInsUpdCommand.Parameters[15].Value.SetWideString(ENTUSR);
  FTtSchInsUpdCommand.ExecuteUpdate;
  Result := FTtSchInsUpdCommand.Parameters[16].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtSchDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
begin
  if FTtSchDelCommand = nil then
  begin
    FTtSchDelCommand := FDBXConnection.CreateCommand;
    FTtSchDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtSchDelCommand.Text := 'TDSAssignWork.TtSchDel';
    FTtSchDelCommand.Prepare;
  end;
  FTtSchDelCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtSchDelCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtSchDelCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtSchDelCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtSchDelCommand.ExecuteUpdate;
  Result := FTtSchDelCommand.Parameters[4].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtSchOptGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer): Boolean;
begin
  if FTtSchOptGetCommand = nil then
  begin
    FTtSchOptGetCommand := FDBXConnection.CreateCommand;
    FTtSchOptGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtSchOptGetCommand.Text := 'TDSAssignWork.TtSchOptGet';
    FTtSchOptGetCommand.Prepare;
  end;
  FTtSchOptGetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtSchOptGetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtSchOptGetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtSchOptGetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtSchOptGetCommand.ExecuteUpdate;
  Result := FTtSchOptGetCommand.Parameters[4].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtSchOptInsUpd(STSSCH: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; WEKOPT: Integer; OPTOPT: string; DATOPT: Double; MEMOPT: string; ENTUSR: string): Boolean;
begin
  if FTtSchOptInsUpdCommand = nil then
  begin
    FTtSchOptInsUpdCommand := FDBXConnection.CreateCommand;
    FTtSchOptInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtSchOptInsUpdCommand.Text := 'TDSAssignWork.TtSchOptInsUpd';
    FTtSchOptInsUpdCommand.Prepare;
  end;
  FTtSchOptInsUpdCommand.Parameters[0].Value.SetWideString(STSSCH);
  FTtSchOptInsUpdCommand.Parameters[1].Value.SetWideString(CMPSCH);
  FTtSchOptInsUpdCommand.Parameters[2].Value.SetWideString(BRNSCH);
  FTtSchOptInsUpdCommand.Parameters[3].Value.SetInt32(YARSCH);
  FTtSchOptInsUpdCommand.Parameters[4].Value.SetInt32(PRDSCH);
  FTtSchOptInsUpdCommand.Parameters[5].Value.SetInt32(WEKOPT);
  FTtSchOptInsUpdCommand.Parameters[6].Value.SetWideString(OPTOPT);
  FTtSchOptInsUpdCommand.Parameters[7].Value.SetDouble(DATOPT);
  FTtSchOptInsUpdCommand.Parameters[8].Value.SetWideString(MEMOPT);
  FTtSchOptInsUpdCommand.Parameters[9].Value.SetWideString(ENTUSR);
  FTtSchOptInsUpdCommand.ExecuteUpdate;
  Result := FTtSchOptInsUpdCommand.Parameters[10].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtSchOptDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; WEKOPT: Integer; OPTOPT: string; DATOPT: Double): Boolean;
begin
  if FTtSchOptDelCommand = nil then
  begin
    FTtSchOptDelCommand := FDBXConnection.CreateCommand;
    FTtSchOptDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtSchOptDelCommand.Text := 'TDSAssignWork.TtSchOptDel';
    FTtSchOptDelCommand.Prepare;
  end;
  FTtSchOptDelCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtSchOptDelCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtSchOptDelCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtSchOptDelCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtSchOptDelCommand.Parameters[4].Value.SetInt32(WEKOPT);
  FTtSchOptDelCommand.Parameters[5].Value.SetWideString(OPTOPT);
  FTtSchOptDelCommand.Parameters[6].Value.SetDouble(DATOPT);
  FTtSchOptDelCommand.ExecuteUpdate;
  Result := FTtSchOptDelCommand.Parameters[7].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtRdwGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDRDW: string; RDTRDW: Double): Boolean;
begin
  if FTtRdwGetCommand = nil then
  begin
    FTtRdwGetCommand := FDBXConnection.CreateCommand;
    FTtRdwGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRdwGetCommand.Text := 'TDSAssignWork.TtRdwGet';
    FTtRdwGetCommand.Prepare;
  end;
  FTtRdwGetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtRdwGetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtRdwGetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtRdwGetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtRdwGetCommand.Parameters[4].Value.SetWideString(DCDRDW);
  FTtRdwGetCommand.Parameters[5].Value.SetDouble(RDTRDW);
  FTtRdwGetCommand.ExecuteUpdate;
  Result := FTtRdwGetCommand.Parameters[6].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtRdwCopy(CMPRDW: string; BRNRDW: string; YARRDW: Integer; PRDRDW: Integer; DCDRDW: string; RDTRDW: Double; ENTUSR: string; var OUT_DNORDW: Integer): Boolean;
begin
  if FTtRdwCopyCommand = nil then
  begin
    FTtRdwCopyCommand := FDBXConnection.CreateCommand;
    FTtRdwCopyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRdwCopyCommand.Text := 'TDSAssignWork.TtRdwCopy';
    FTtRdwCopyCommand.Prepare;
  end;
  FTtRdwCopyCommand.Parameters[0].Value.SetWideString(CMPRDW);
  FTtRdwCopyCommand.Parameters[1].Value.SetWideString(BRNRDW);
  FTtRdwCopyCommand.Parameters[2].Value.SetInt32(YARRDW);
  FTtRdwCopyCommand.Parameters[3].Value.SetInt32(PRDRDW);
  FTtRdwCopyCommand.Parameters[4].Value.SetWideString(DCDRDW);
  FTtRdwCopyCommand.Parameters[5].Value.SetDouble(RDTRDW);
  FTtRdwCopyCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FTtRdwCopyCommand.Parameters[7].Value.SetInt32(OUT_DNORDW);
  FTtRdwCopyCommand.ExecuteUpdate;
  OUT_DNORDW := FTtRdwCopyCommand.Parameters[7].Value.GetInt32;
  Result := FTtRdwCopyCommand.Parameters[8].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtRdwInsUpd(STSRDW: string; CMPRDW: string; BRNRDW: string; YARRDW: Integer; PRDRDW: Integer; DCDRDW: string; DNORDW: Integer; SEQRDW: Integer; OPTRDW: string; RWKRDW: Integer; RDTRDW: Double; RNORDW: string; ITNRDW: string; COLRDW: string; Q11RDW: Integer; Q12RDW: Integer; Q21RDW: Integer; Q22RDW: Integer; Q31RDW: Integer; Q32RDW: Integer; Q41RDW: Integer; Q42RDW: Integer; Q51RDW: Integer; Q52RDW: Integer; ENTUSR: string; var OUT_DNORDW: Integer): Boolean;
begin
  if FTtRdwInsUpdCommand = nil then
  begin
    FTtRdwInsUpdCommand := FDBXConnection.CreateCommand;
    FTtRdwInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRdwInsUpdCommand.Text := 'TDSAssignWork.TtRdwInsUpd';
    FTtRdwInsUpdCommand.Prepare;
  end;
  FTtRdwInsUpdCommand.Parameters[0].Value.SetWideString(STSRDW);
  FTtRdwInsUpdCommand.Parameters[1].Value.SetWideString(CMPRDW);
  FTtRdwInsUpdCommand.Parameters[2].Value.SetWideString(BRNRDW);
  FTtRdwInsUpdCommand.Parameters[3].Value.SetInt32(YARRDW);
  FTtRdwInsUpdCommand.Parameters[4].Value.SetInt32(PRDRDW);
  FTtRdwInsUpdCommand.Parameters[5].Value.SetWideString(DCDRDW);
  FTtRdwInsUpdCommand.Parameters[6].Value.SetInt32(DNORDW);
  FTtRdwInsUpdCommand.Parameters[7].Value.SetInt32(SEQRDW);
  FTtRdwInsUpdCommand.Parameters[8].Value.SetWideString(OPTRDW);
  FTtRdwInsUpdCommand.Parameters[9].Value.SetInt32(RWKRDW);
  FTtRdwInsUpdCommand.Parameters[10].Value.SetDouble(RDTRDW);
  FTtRdwInsUpdCommand.Parameters[11].Value.SetWideString(RNORDW);
  FTtRdwInsUpdCommand.Parameters[12].Value.SetWideString(ITNRDW);
  FTtRdwInsUpdCommand.Parameters[13].Value.SetWideString(COLRDW);
  FTtRdwInsUpdCommand.Parameters[14].Value.SetInt32(Q11RDW);
  FTtRdwInsUpdCommand.Parameters[15].Value.SetInt32(Q12RDW);
  FTtRdwInsUpdCommand.Parameters[16].Value.SetInt32(Q21RDW);
  FTtRdwInsUpdCommand.Parameters[17].Value.SetInt32(Q22RDW);
  FTtRdwInsUpdCommand.Parameters[18].Value.SetInt32(Q31RDW);
  FTtRdwInsUpdCommand.Parameters[19].Value.SetInt32(Q32RDW);
  FTtRdwInsUpdCommand.Parameters[20].Value.SetInt32(Q41RDW);
  FTtRdwInsUpdCommand.Parameters[21].Value.SetInt32(Q42RDW);
  FTtRdwInsUpdCommand.Parameters[22].Value.SetInt32(Q51RDW);
  FTtRdwInsUpdCommand.Parameters[23].Value.SetInt32(Q52RDW);
  FTtRdwInsUpdCommand.Parameters[24].Value.SetWideString(ENTUSR);
  FTtRdwInsUpdCommand.Parameters[25].Value.SetInt32(OUT_DNORDW);
  FTtRdwInsUpdCommand.ExecuteUpdate;
  OUT_DNORDW := FTtRdwInsUpdCommand.Parameters[25].Value.GetInt32;
  Result := FTtRdwInsUpdCommand.Parameters[26].Value.GetBoolean;
end;


function TDSAssignWorkClient.TtRdwDel(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDRDW: string; DNORDW: Integer; SEQRDW: Integer; ITNRDW: string): Boolean;
begin
  if FTtRdwDelCommand = nil then
  begin
    FTtRdwDelCommand := FDBXConnection.CreateCommand;
    FTtRdwDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtRdwDelCommand.Text := 'TDSAssignWork.TtRdwDel';
    FTtRdwDelCommand.Prepare;
  end;
  FTtRdwDelCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtRdwDelCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtRdwDelCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtRdwDelCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtRdwDelCommand.Parameters[4].Value.SetWideString(DCDRDW);
  FTtRdwDelCommand.Parameters[5].Value.SetInt32(DNORDW);
  FTtRdwDelCommand.Parameters[6].Value.SetInt32(SEQRDW);
  FTtRdwDelCommand.Parameters[7].Value.SetWideString(ITNRDW);
  FTtRdwDelCommand.ExecuteUpdate;
  Result := FTtRdwDelCommand.Parameters[8].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtPasGetByDat(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DCDPAS: string; IDTPAS: Double; FLAG: string): Boolean;
begin
  if FTtPasGetByDatCommand = nil then
  begin
    FTtPasGetByDatCommand := FDBXConnection.CreateCommand;
    FTtPasGetByDatCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPasGetByDatCommand.Text := 'TDSAssignWork.TtPasGetByDat';
    FTtPasGetByDatCommand.Prepare;
  end;
  FTtPasGetByDatCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtPasGetByDatCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtPasGetByDatCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtPasGetByDatCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtPasGetByDatCommand.Parameters[4].Value.SetWideString(DCDPAS);
  FTtPasGetByDatCommand.Parameters[5].Value.SetDouble(IDTPAS);
  FTtPasGetByDatCommand.Parameters[6].Value.SetWideString(FLAG);
  FTtPasGetByDatCommand.ExecuteUpdate;
  Result := FTtPasGetByDatCommand.Parameters[7].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtPasGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOPAS: Integer; RDTPAS: Double; IWKPAS: Integer; NEW_MOD: string): Boolean;
begin
  if FTtPasGetCommand = nil then
  begin
    FTtPasGetCommand := FDBXConnection.CreateCommand;
    FTtPasGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPasGetCommand.Text := 'TDSAssignWork.TtPasGet';
    FTtPasGetCommand.Prepare;
  end;
  FTtPasGetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtPasGetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtPasGetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtPasGetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtPasGetCommand.Parameters[4].Value.SetInt32(DNOPAS);
  FTtPasGetCommand.Parameters[5].Value.SetDouble(RDTPAS);
  FTtPasGetCommand.Parameters[6].Value.SetInt32(IWKPAS);
  FTtPasGetCommand.Parameters[7].Value.SetWideString(NEW_MOD);
  FTtPasGetCommand.ExecuteUpdate;
  Result := FTtPasGetCommand.Parameters[8].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtPasInsUpd(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNORDW: Integer; RDTPAS: Double; IWKPAS: Integer; NEW_MOD: string; ENTUSR: string; var OUT_DNOPAS: Integer): Boolean;
begin
  if FTtPasInsUpdCommand = nil then
  begin
    FTtPasInsUpdCommand := FDBXConnection.CreateCommand;
    FTtPasInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtPasInsUpdCommand.Text := 'TDSAssignWork.TtPasInsUpd';
    FTtPasInsUpdCommand.Prepare;
  end;
  FTtPasInsUpdCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtPasInsUpdCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtPasInsUpdCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtPasInsUpdCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtPasInsUpdCommand.Parameters[4].Value.SetInt32(DNORDW);
  FTtPasInsUpdCommand.Parameters[5].Value.SetDouble(RDTPAS);
  FTtPasInsUpdCommand.Parameters[6].Value.SetInt32(IWKPAS);
  FTtPasInsUpdCommand.Parameters[7].Value.SetWideString(NEW_MOD);
  FTtPasInsUpdCommand.Parameters[8].Value.SetWideString(ENTUSR);
  FTtPasInsUpdCommand.Parameters[9].Value.SetInt32(OUT_DNOPAS);
  FTtPasInsUpdCommand.ExecuteUpdate;
  OUT_DNOPAS := FTtPasInsUpdCommand.Parameters[9].Value.GetInt32;
  Result := FTtPasInsUpdCommand.Parameters[10].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtAsnGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOASN: Integer; RDTASN: Double; IWKASN: Integer; NEW_MOD: string): Boolean;
begin
  if FTtAsnGetCommand = nil then
  begin
    FTtAsnGetCommand := FDBXConnection.CreateCommand;
    FTtAsnGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAsnGetCommand.Text := 'TDSAssignWork.TtAsnGet';
    FTtAsnGetCommand.Prepare;
  end;
  FTtAsnGetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtAsnGetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtAsnGetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtAsnGetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtAsnGetCommand.Parameters[4].Value.SetInt32(DNOASN);
  FTtAsnGetCommand.Parameters[5].Value.SetDouble(RDTASN);
  FTtAsnGetCommand.Parameters[6].Value.SetInt32(IWKASN);
  FTtAsnGetCommand.Parameters[7].Value.SetWideString(NEW_MOD);
  FTtAsnGetCommand.ExecuteUpdate;
  Result := FTtAsnGetCommand.Parameters[8].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtAswGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOASW: Integer; RDTASW: Double; IWKASW: Integer; NEW_MOD: string): Boolean;
begin
  if FTtAswGetCommand = nil then
  begin
    FTtAswGetCommand := FDBXConnection.CreateCommand;
    FTtAswGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAswGetCommand.Text := 'TDSAssignWork.TtAswGet';
    FTtAswGetCommand.Prepare;
  end;
  FTtAswGetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtAswGetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtAswGetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtAswGetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtAswGetCommand.Parameters[4].Value.SetInt32(DNOASW);
  FTtAswGetCommand.Parameters[5].Value.SetDouble(RDTASW);
  FTtAswGetCommand.Parameters[6].Value.SetInt32(IWKASW);
  FTtAswGetCommand.Parameters[7].Value.SetWideString(NEW_MOD);
  FTtAswGetCommand.ExecuteUpdate;
  Result := FTtAswGetCommand.Parameters[8].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtColGet(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOCOL: Integer; RDTCOL: Double; IWKCOL: Integer; RDNCOL: Integer; NEW_MOD: string): Boolean;
begin
  if FTtColGetCommand = nil then
  begin
    FTtColGetCommand := FDBXConnection.CreateCommand;
    FTtColGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtColGetCommand.Text := 'TDSAssignWork.TtColGet';
    FTtColGetCommand.Prepare;
  end;
  FTtColGetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtColGetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtColGetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtColGetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtColGetCommand.Parameters[4].Value.SetInt32(DNOCOL);
  FTtColGetCommand.Parameters[5].Value.SetDouble(RDTCOL);
  FTtColGetCommand.Parameters[6].Value.SetInt32(IWKCOL);
  FTtColGetCommand.Parameters[7].Value.SetInt32(RDNCOL);
  FTtColGetCommand.Parameters[8].Value.SetWideString(NEW_MOD);
  FTtColGetCommand.ExecuteUpdate;
  Result := FTtColGetCommand.Parameters[9].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtAd1GetList(CRITERIA: string; ORDERFIELD: string; CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAd1: Integer; IDTAd1: Double): Boolean;
begin
  if FTtAd1GetListCommand = nil then
  begin
    FTtAd1GetListCommand := FDBXConnection.CreateCommand;
    FTtAd1GetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAd1GetListCommand.Text := 'TDSAssignWork.TtAd1GetList';
    FTtAd1GetListCommand.Prepare;
  end;
  FTtAd1GetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FTtAd1GetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FTtAd1GetListCommand.Parameters[2].Value.SetWideString(CMPSCH);
  FTtAd1GetListCommand.Parameters[3].Value.SetWideString(BRNSCH);
  FTtAd1GetListCommand.Parameters[4].Value.SetInt32(YARSCH);
  FTtAd1GetListCommand.Parameters[5].Value.SetInt32(PRDSCH);
  FTtAd1GetListCommand.Parameters[6].Value.SetInt32(DNOAd1);
  FTtAd1GetListCommand.Parameters[7].Value.SetDouble(IDTAd1);
  FTtAd1GetListCommand.ExecuteUpdate;
  Result := FTtAd1GetListCommand.Parameters[8].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtAd1Get(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAd1: Integer; RDTAd1: Double; IWKAd1: Integer; RDNAd1: Integer; NEW_MOD: string): Boolean;
begin
  if FTtAd1GetCommand = nil then
  begin
    FTtAd1GetCommand := FDBXConnection.CreateCommand;
    FTtAd1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAd1GetCommand.Text := 'TDSAssignWork.TtAd1Get';
    FTtAd1GetCommand.Prepare;
  end;
  FTtAd1GetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtAd1GetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtAd1GetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtAd1GetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtAd1GetCommand.Parameters[4].Value.SetInt32(DNOAd1);
  FTtAd1GetCommand.Parameters[5].Value.SetDouble(RDTAd1);
  FTtAd1GetCommand.Parameters[6].Value.SetInt32(IWKAd1);
  FTtAd1GetCommand.Parameters[7].Value.SetInt32(RDNAd1);
  FTtAd1GetCommand.Parameters[8].Value.SetWideString(NEW_MOD);
  FTtAd1GetCommand.ExecuteUpdate;
  Result := FTtAd1GetCommand.Parameters[9].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtAP1Get(CMPSCH: string; BRNSCH: string; YARSCH: Integer; PRDSCH: Integer; DNOAP1: Integer; RDTAP1: Double; IWKAP1: Integer; RDNAP1: Integer; NEW_MOD: string): Boolean;
begin
  if FTtAP1GetCommand = nil then
  begin
    FTtAP1GetCommand := FDBXConnection.CreateCommand;
    FTtAP1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAP1GetCommand.Text := 'TDSAssignWork.TtAP1Get';
    FTtAP1GetCommand.Prepare;
  end;
  FTtAP1GetCommand.Parameters[0].Value.SetWideString(CMPSCH);
  FTtAP1GetCommand.Parameters[1].Value.SetWideString(BRNSCH);
  FTtAP1GetCommand.Parameters[2].Value.SetInt32(YARSCH);
  FTtAP1GetCommand.Parameters[3].Value.SetInt32(PRDSCH);
  FTtAP1GetCommand.Parameters[4].Value.SetInt32(DNOAP1);
  FTtAP1GetCommand.Parameters[5].Value.SetDouble(RDTAP1);
  FTtAP1GetCommand.Parameters[6].Value.SetInt32(IWKAP1);
  FTtAP1GetCommand.Parameters[7].Value.SetInt32(RDNAP1);
  FTtAP1GetCommand.Parameters[8].Value.SetWideString(NEW_MOD);
  FTtAP1GetCommand.ExecuteUpdate;
  Result := FTtAP1GetCommand.Parameters[9].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtGenDoc(CMP: string; BRN: string; YAR: Integer; PRD: Integer; DCD: string; var OUT_DNO: string): Boolean;
begin
  if FTtGenDocCommand = nil then
  begin
    FTtGenDocCommand := FDBXConnection.CreateCommand;
    FTtGenDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtGenDocCommand.Text := 'TDSAssignWork.TtGenDoc';
    FTtGenDocCommand.Prepare;
  end;
  FTtGenDocCommand.Parameters[0].Value.SetWideString(CMP);
  FTtGenDocCommand.Parameters[1].Value.SetWideString(BRN);
  FTtGenDocCommand.Parameters[2].Value.SetInt32(YAR);
  FTtGenDocCommand.Parameters[3].Value.SetInt32(PRD);
  FTtGenDocCommand.Parameters[4].Value.SetWideString(DCD);
  FTtGenDocCommand.Parameters[5].Value.SetWideString(OUT_DNO);
  FTtGenDocCommand.ExecuteUpdate;
  OUT_DNO := FTtGenDocCommand.Parameters[5].Value.GetWideString;
  Result := FTtGenDocCommand.Parameters[6].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtAD1InsUpd(CMPAD1: string; BRNAD1: string; YARAD1: Integer; PRDAD1: Integer; DCDAD1: string; DNOAD1: Integer; SEQAD1: Integer; iwkad1: Integer; idtad1: Double; edtad1: Double; wisad1: Integer; ITNAD1: string; colad1: string; qt1ad1: Double; entusr: string; md: string): Boolean;
begin
  if FTtAD1InsUpdCommand = nil then
  begin
    FTtAD1InsUpdCommand := FDBXConnection.CreateCommand;
    FTtAD1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAD1InsUpdCommand.Text := 'TDSAssignWork.TtAD1InsUpd';
    FTtAD1InsUpdCommand.Prepare;
  end;
  FTtAD1InsUpdCommand.Parameters[0].Value.SetWideString(CMPAD1);
  FTtAD1InsUpdCommand.Parameters[1].Value.SetWideString(BRNAD1);
  FTtAD1InsUpdCommand.Parameters[2].Value.SetInt32(YARAD1);
  FTtAD1InsUpdCommand.Parameters[3].Value.SetInt32(PRDAD1);
  FTtAD1InsUpdCommand.Parameters[4].Value.SetWideString(DCDAD1);
  FTtAD1InsUpdCommand.Parameters[5].Value.SetInt32(DNOAD1);
  FTtAD1InsUpdCommand.Parameters[6].Value.SetInt32(SEQAD1);
  FTtAD1InsUpdCommand.Parameters[7].Value.SetInt32(iwkad1);
  FTtAD1InsUpdCommand.Parameters[8].Value.SetDouble(idtad1);
  FTtAD1InsUpdCommand.Parameters[9].Value.SetDouble(edtad1);
  FTtAD1InsUpdCommand.Parameters[10].Value.SetInt32(wisad1);
  FTtAD1InsUpdCommand.Parameters[11].Value.SetWideString(ITNAD1);
  FTtAD1InsUpdCommand.Parameters[12].Value.SetWideString(colad1);
  FTtAD1InsUpdCommand.Parameters[13].Value.SetDouble(qt1ad1);
  FTtAD1InsUpdCommand.Parameters[14].Value.SetWideString(entusr);
  FTtAD1InsUpdCommand.Parameters[15].Value.SetWideString(md);
  FTtAD1InsUpdCommand.ExecuteUpdate;
  Result := FTtAD1InsUpdCommand.Parameters[16].Value.GetBoolean;
end;

function TDSAssignWorkClient.TtAD1Del(CMPAD1: string; BRNAD1: string; YARAD1: Integer; PRDAD1: Integer; DCDAD1: string; DNOAD1: Integer; SEQAD1: Integer; ITNAD1: string): Boolean;
begin
  if FTtAD1DelCommand = nil then
  begin
    FTtAD1DelCommand := FDBXConnection.CreateCommand;
    FTtAD1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtAD1DelCommand.Text := 'TDSAssignWork.TtAD1Del';
    FTtAD1DelCommand.Prepare;
  end;
  FTtAD1DelCommand.Parameters[0].Value.SetWideString(CMPAD1);
  FTtAD1DelCommand.Parameters[1].Value.SetWideString(BRNAD1);
  FTtAD1DelCommand.Parameters[2].Value.SetInt32(YARAD1);
  FTtAD1DelCommand.Parameters[3].Value.SetInt32(PRDAD1);
  FTtAD1DelCommand.Parameters[4].Value.SetWideString(DCDAD1);
  FTtAD1DelCommand.Parameters[5].Value.SetInt32(DNOAD1);
  FTtAD1DelCommand.Parameters[6].Value.SetInt32(SEQAD1);
  FTtAD1DelCommand.Parameters[7].Value.SetWideString(ITNAD1);
  FTtAD1DelCommand.ExecuteUpdate;
  Result := FTtAD1DelCommand.Parameters[8].Value.GetBoolean;
end;


end.

