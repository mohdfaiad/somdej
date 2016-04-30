unit MainModuleEx;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DBXDataSnap, DBXCommon, DB, SqlExpr,
  UniGUIApplication{$IFDEF WIN32}, MidasLib, IndyPeerImpl {$ENDIF},
  DSMainIntfDM,DSStockIntfDM,
  DSSetupIntfDM, DSPurchaseIntfDM,DSCarsaleIntfDM,DSAssignWorkIntfDM,
  DSReceiveMoneyIntfDM,DSRegistationIntfDM;

type
    TActionMode = (amView, amEdit, amAppend, amRemove);
    TCIFActionMode = TActionMode;
    TCifType = (ctAllType, ctJuristic, ctPersonal);

  TUniMainModule = class(TUniGUIMainModule)
    dsConnection: TSQLConnection;
    procedure UniGUIMainModuleDestroy(Sender: TObject);
  private
    FUniApplication: TUniGUIApplication;

    FUserID: String;
    FUserPWD: String;

    FPanelLeft: Integer;
    FPanelTop: Integer;
    FPanelWidth: Integer;
    FPanelHeight: Integer;

{    FDSSetupDM: TDSSetupDM;
    FDSPurchaseDM: TDSPurchaseDM;
    FDSCarsaleDM: TDSCarsaleDM;
    FDSAssignWorkDM: TDSAssignWorkDM;
    FDSReceiveMoneyDM: TDSReceiveMoneyDM;
    FDSRegistationDM: TDSRegistationDM;
}
    function GetDSMainDM(): TDSMainDM;
    function GetDSSetupDM(): TDSSetupDM;
    function GetDSPurchaseDM(): TDSPurchaseDM;
    function GetDSCarsaleDM(): TDSCarSaleDM;
    function GetDSAssignWorkDM(): TDSAssignWorkDM;
    function GetDSReceiveMoneyDM(): TDSReceiveMoneyDM;
    function GetDSRegistationDM(): TDSRegistationDM;
    function GetDSStockDM(): TDSStockDM;


  public
    function FreeAllDSClass(): Boolean;

    property DSMainDM: TDSMainDM read GetDSMainDM;
    property DSSetupDM: TDSSetupDM read GetDSSetupDM;
    property DSPurchaseDM: TDSPurchaseDM read GetDSPurchaseDM;
    property DSCarsaleDM: TDSCarsaleDM read GetDSCarsaleDM;
    property DSAssignWorkDM: TDSAssignWorkDM read GetDSAssignWorkDM;
    property DSReceiveMoneyDM: TDSReceiveMoneyDM read GetDSReceiveMoneyDM;
    property DSRegistationDM: TDSRegistationDM read GetDSRegistationDM;
    property DSStocksDM: TDSStockDM read GetDSStockDM;

    property UserID: String read FUserID write FUserID;
    property UserPWD: String read FUserPWD write FUserPWD;

    property UniGUIApp: TUniGUIApplication read FUniApplication write FUniApplication;
    property PanelLeft: Integer read FPanelLeft write FPanelLeft;
    property PanelTop: Integer read FPanelTop write FPanelTop;
    property PanelWidth: Integer read FPanelWidth write FPanelWidth;
    property PanelHeight: Integer read FPanelHeight write FPanelHeight;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModuleEx;


function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

function TUniMainModule.FreeAllDSClass(): Boolean;
begin
  ;
end;

function TUniMainModule.GetDSMainDM(): TDSMainDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSMainDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;


function TUniMainModule.GetDSSetupDM(): TDSSetupDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSSetupDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;

function TUniMainModule.GetDSStockDM: TDSStockDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSStockDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;

function TUniMainModule.GetDSPurchaseDM(): TDSPurchaseDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSPurchaseDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;

function TUniMainModule.GetDSCarsaleDM(): TDSCarsaleDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSCarsaleDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;

function TUniMainModule.GetDSAssignWorkDM(): TDSAssignWorkDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSAssignWorkDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;

function TUniMainModule.GetDSReceiveMoneyDM(): TDSReceiveMoneyDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSReceiveMoneyDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;

function TUniMainModule.GetDSRegistationDM(): TDSRegistationDM;
begin
  if (not dsConnection.Connected) then
    dsConnection.Open();

  Result := TDSRegistationDM.Create(Self);
  Result.CreateProxyClass(dsConnection);
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  try
    FreeAllDSClass();
  except
    on E: Exception do
    begin
      UniServerModule.Logger.AddLog('Session Destroyed: FreeAllDSClass() - ', E.Message);
    end;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);

end.
