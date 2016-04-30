program BluecrossXEServer;

uses
  Winapi.Windows,
  Vcl.Forms,
  DSContainerModule in 'DSContainerModule.pas' {DSServiceContainer: TDataModule},
  FileInfo in '..\lib\ServerUnit\FileInfo.pas',
  MainServerForm in 'MainServerForm.pas' {frmMainServer},
  DSMainClass in 'DSMainClass.pas' {DSMain: TDSServerModule},
  DSServerConstant in 'DSServerConstant.pas',
  OpenCryptUtils in '..\lib\ServerUnit\OpenCryptUtils.pas',
  DSAuthorizedManagerClass in 'DSAuthorizedManagerClass.pas' {DSAuthorizedManager: TDSServerModule},
  DSSetupClass in 'DSSetupClass.pas' {DSSetup: TDSServerModule},
  DSPurchaseClass in 'DSPurchaseClass.pas' {DSPurchase: TDSServerModule},
  DSAssignWorkClass in 'DSAssignWorkClass.pas' {DSAssignWork: TDSServerModule},
  DSReceiveMoneyClass in 'DSReceiveMoneyClass.pas' {DSReceiveMoney: TDSServerModule},
  DSRegistationClass in 'DSRegistationClass.pas' {DSRegistation: TDSServerModule},
  DSCarSaleClass in 'DSCarSaleClass.pas' {DSCarSale: TDSServerModule},
  DSStockClass in 'DSStockClass.pas' {DSSTOCK: TDSServerModule},
  DSHISSetupClass in 'DSHISSetupClass.pas' {DSHISSetup: TDSServerModule},
  DSHISMainClass in 'DSHISMainClass.pas' {DSHISMain: TDSServerModule},
  DSHIS43FileClass in 'DSHIS43FileClass.pas' {DSHIS43File: TDSServerModule};

{$R *.res}

var
  Mutex : THandle;
begin
  Mutex := CreateMutex(nil, True, 'OpenSoftAppServer');
  if ((Mutex <> 0) and (GetLastError = 0)) then
  begin
    Application.Initialize();
    Application.MainFormOnTaskbar := True;
    Application.Title := 'Application Server for Bluecross XE';
  Application.CreateForm(TfrmMainServer, frmMainServer);
  Application.CreateForm(TDSServiceContainer, DSServiceContainer);
  Application.CreateForm(TDSCarSale, DSCarSale);
  Application.CreateForm(TDSSTOCK, DSSTOCK);
  Application.Run();

    if Mutex <> 0 then
      CloseHandle(Mutex);
  end else
  begin
    if (ParamStr(1) = '/Q') then
    begin
      //WaitForSingleObject(Mutex, INFINITE);
      ReleaseMutex(Mutex);
      //CloseHandle(Mutex);
      TerminateProcess(Mutex, 1);
    end else
    begin
      MessageBox(
        0, 'Application server has been run since last executed,'#10#13 +
        'you cannot run more instance of this application server for this mean time.'#10#10#13 +
        'Click "OK" button to close this instance.',
        'OpenSoftAppServer - Application Server', MB_OK);
    end;
  end;
end.
