unit DSStockIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSStockClient = class(TDSMainClient)
  private
    FStockGetCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

    function StockGet(CRITERIA: string; ORDERFIELD: string; IYARIM2: Integer; ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;
  end;

implementation




constructor TDSStockClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSSTOCK';
end;

constructor TDSStockClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSSTOCK';
end;

destructor TDSStockClient.Destroy;
begin
   // FreeAndNil(FStAccGetCommand);
      FreeAndNil(FStockGetCommand);

    inherited;

end;

function TDSStockClient.StockGet(CRITERIA: string; ORDERFIELD: string; IYARIM2: Integer; ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;
begin
  if FStockGetCommand = nil then
  begin
    FStockGetCommand := FDBXConnection.CreateCommand;
    FStockGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockGetCommand.Text := 'TDSSTOCK.StockGet';
    FStockGetCommand.Prepare;
  end;
  FStockGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStockGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStockGetCommand.Parameters[2].Value.SetInt32(IYARIM2);
  FStockGetCommand.Parameters[3].Value.SetWideString(ICMPIM2);
  FStockGetCommand.Parameters[4].Value.SetWideString(IBRNIM2);
  FStockGetCommand.Parameters[5].Value.SetWideString(IDCDIM2);
  FStockGetCommand.ExecuteUpdate;
  Result := FStockGetCommand.Parameters[6].Value.GetBoolean;
end;


end.
