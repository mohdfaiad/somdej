unit DSStockIntfDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DSMainIntfDM, Data.DB, frxClass,
  frxDBSet, frxExportPDF, Datasnap.DBClient, Datasnap.DSConnect,DSStockIntf,
  DBXDataSnap, IndyPeerImpl, Data.DBXCommon, Data.SqlExpr,
  Data.DBXFirebird, Data.FMTBcd, Datasnap.Provider;

type
  TActionMode = (amView, amEdit, amAppend, amRemove);

  TDSStockDM = class(TDSMainDM)
    cdsTtStockGet: TClientDataSet;
  private
    { Private declarations }
    FAccMode : TActionMode;
    FSysTableMode : TActionMode;

    function GetDSProxy(): TDSStockClient; inline;
    procedure SetAccMode(const Value: TActionMode);
    procedure SetSysTableMode(const Value: TActionMode);
  public
    { Public declarations }

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property StockProxy: TDSStockClient read GetDSProxy;

    function StockGet(CRITERIA: string; ORDERFIELD: string; IYARIM2: Integer; ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;



    property AccMode: TActionMode  read FAccMode write SetAccMode;
    property SysTableMode: TActionMode  read FSysTableMode write SetSysTableMode;
  end;

var
  DSStockDM: TDSStockDM;

implementation

{$R *.dfm}



{ TDSMainDM2 }

function TDSStockDM.GetDSProxy: TDSStockClient;
begin
   Result := TDSStockClient(DSProxy);
end;

procedure TDSStockDM.SetAccMode(const Value: TActionMode);
begin
  FAccMode := Value;
end;

procedure TDSStockDM.SetSysTableMode(const Value: TActionMode);
begin
  FSysTableMode := Value;
end;

function TDSStockDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSStockClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;


function TDSStockDM.StockGet(CRITERIA: string; ORDERFIELD: string;
IYARIM2: Integer;
ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;
begin
  result := StockProxy.StockGet(CRITERIA,ORDERFIELD,IYARIM2,ICMPIM2,IBRNIM2,IDCDIM2);
end;

end.
