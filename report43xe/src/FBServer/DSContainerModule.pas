
unit DSContainerModule;

interface

uses
  SysUtils, Windows, Classes, Forms, DBXFirebird, DbxDynalink, FMTBcd, ADODB,
  DB, SqlExpr, Menus, ExtCtrls, DSCommonServer, DSServer, DSHTTPCommon, DSHTTP,
  DSTCPServerTransport, IndyPeerImpl, DbxDevartMySql;

type
  TDSServiceContainer = class(TDataModule)
    dsAppServer: TDSServer;
    dstcpServerTransport: TDSTCPServerTransport;
    dshttpService: TDSHTTPService;
    tiIcon: TTrayIcon;
    pmMenus: TPopupMenu;
    pmiShowMainForm: TMenuItem;
    pmiS1: TMenuItem;
    pmiServerStatus: TMenuItem;
    pmiStart: TMenuItem;
    pmiStop: TMenuItem;
    pmiS2: TMenuItem;
    pmiConfiguration: TMenuItem;
    pmiDatabasePooling: TMenuItem;
    pmiS4: TMenuItem;
    pmiSessionLifetime: TMenuItem;
    pmiInvocation: TMenuItem;
    pmiServer: TMenuItem;
    pmiSession: TMenuItem;
    pmiS5: TMenuItem;
    pmiDatabaseConfiguration: TMenuItem;
    pmiAbout: TMenuItem;
    pmiS3: TMenuItem;
    mmAlwaysOnTop: TMenuItem;
    pmiS6: TMenuItem;
    pmiExit: TMenuItem;
    dssMainServerClass: TDSServerClass;
    dssSetupClass: TDSServerClass;
    DBConnection: TSQLConnection;
    dssAuthorizedManagerServerClass: TDSServerClass;
    DssPurchaserClass: TDSServerClass;
    DssCarSaleClass: TDSServerClass;
    dssAssignWorkClass: TDSServerClass;
    DssReceiveMoneyClass: TDSServerClass;
    DssRegistationClass: TDSServerClass;
    DssStockClass: TDSServerClass;
    dssHISSetupClass: TDSServerClass;
    dssHIS43FileClass: TDSServerClass;
    ADOConnection: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure tiIconBalloonClick(Sender: TObject);
    procedure tiIconDblClick(Sender: TObject);
    procedure pmiShowMainFormClick(Sender: TObject);
    procedure pmiStartStopClick(Sender: TObject);
    procedure pmiDatabasePoolingClick(Sender: TObject);
    procedure pmiSessionLifeCycleClick(Sender: TObject);
    procedure pmiDatabaseConfigurationClick(Sender: TObject);
    procedure pmiAboutClick(Sender: TObject);
    procedure pmiExitClick(Sender: TObject);
    procedure mmAlwaysOnTopClick(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dsAppServerConnect(DSConnectEventObject: TDSConnectEventObject);
    procedure dsAppServerDisconnect(
      DSConnectEventObject: TDSConnectEventObject);
    procedure dssMainServerClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dssSetupClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dssAuthorizedManagerServerClassGetClass(
      DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure DssPurchaserClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DssCarSaleClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dssAssignWorkClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DssReceiveMoneyClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DssRegistationClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DssStockClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dssHISSetupClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure dssHIS43FileClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    FErrorOnStarted: Boolean;
    FAlwaysOnTop: Boolean;
    FPosX, FPosY: Integer;

    { Log File Handle }
    fpLog: TextFile;
    FLogAvailable: Boolean;

    { Server Configuation }
    FIsAutoRun: Boolean;
    FDSLifeCycleStr: Unicodestring;
    FDSLifeCycle: Integer;
    FBufferKBSize: Integer;
    FPortNo: Integer;
    FDSPortNo: Integer;
    FHTTPPortNo: Integer;
    FPoolSize: Integer;
    FMaxThreads: Integer;
    FDatabasePooling: Boolean;
    FSyncInThreads: Boolean;

    { Messages logged }
    FMsgLogged: Boolean;
    FMsgOnScreen: Boolean;
    FLogMaxLines: Integer;

    { Database Configuration }
    FDatabaseHostName: string;
    FDatabaseName: string;
    FSchemaName: string;
    FDatabaseUserName: string;
    FDatabasePassword: string;
    FDatabaseServerCharSet: string;

    FCurrentActiveConnection: integer;
    FClientIP: string;

    FInSync: Boolean;

   // Path Data Corebank
    FCoreBankSourcePath : String;
    FCoreBankTargetPath : String;
    FCoreBankBackupPath : String;
    FIfxAsync: boolean;

    function AssignLogFile(): Boolean;

    function GetAutoRun(): Boolean;
    procedure SetAutoRun(Value: Boolean);


    procedure AddServerObjectsToList();
    procedure LoadConfig();
    procedure SetIfxAsync(const Value: boolean);
  public
    function GetDatabaseName(): string;

    property ClientIP: string read FClientIP;
    procedure WriteLog(LogMsg: string);
    procedure WriteLogEx(LogMsg: string);

    procedure SaveDBTransConfig();

    { Miscellaneous methods }
    procedure ApplyConfig();
    procedure ReLoadConfig();
    procedure SaveConfig();
    procedure StartAppServer();
    procedure StopAppServer();

    procedure UpdatServerDisplayStatus();
    procedure UpdateCreatedClassList(_ClassName: string; Added: Boolean = True);
    procedure SetPositoin(X, Y: Integer);

    procedure SyncAllData();
    procedure InternalSyncRequest();
    procedure SyncAS400TOLOS();
    property InSync: Boolean read FInSync;

    property SchemaName: string read FSchemaName;
    property DBConnectionPool: TSQLConnection read DBConnection;
    property DatabasePooling: Boolean read FDatabasePooling;

    property IsAutoRun: Boolean read GetAutoRun write SetAutoRun;
    property DSLifeCycleStr: Unicodestring read FDSLifeCycleStr;
    property DSLifeCycle: Integer read FDSLifeCycle;
    property BufferKBSize: Integer read FBufferKBSize;
    property PortNo: Integer read FPortNo;
    property DSPortNo: Integer read FDSPortNo;
    property HTTPPortNo: Integer read FHTTPPortNo;
    property PoolSize: Integer read FPoolSize;
    property MaxThreads: Integer read FMaxThreads;
    property SyncInThreads: Boolean read FSyncInThreads;
    property IfxAsync:boolean read FIfxAsync write SetIfxAsync;

    property DatabaseHostName: string read FDatabaseHostName write FDatabaseHostName;
    property DatabaseName: string read FDatabaseName write FDatabaseName;
    property DatabaseUserName: string read FDatabaseUserName write FDatabaseUserName;
    property DatabasePassword: string read FDatabasePassword write FDatabasePassword;
    property DatabaseServerCharSet: string read FDatabaseServerCharSet write FDatabaseServerCharSet;

    property CoreBankSourcePath: string read FCoreBankSourcePath write FCoreBankSourcePath;
    property CoreBankTargetPath: string read FCoreBankTargetPath write FCoreBankTargetPath;
    property CoreBankBackupPath: string read FCoreBankBackupPath write FCoreBankBackupPath;

    property LogMaxLines: Integer read FLogMaxLines write FLogMaxLines;
    property MsgOnScreen: Boolean read FMsgOnScreen write FMsgOnScreen;
    property ErrorOnStarted: Boolean read FErrorOnStarted;
  end;

var
  DSServiceContainer: TDSServiceContainer;

implementation

uses IniFiles, Registry, ShellAPI,  MainServerForm, DSMainClass,
  OpenCryptUtils, DSServerConstant, DSSetupClass, DSAuthorizedManagerClass,
  DSPurchaseClass, DSCarSaleClass, DSAssignWorkClass, DSReceiveMoneyClass,
  DSRegistationClass, DSStockClass, DSHISSetupClass, DSHIS43FileClass;

{$R *.dfm}

var
  CS: TRTLCriticalSection;

procedure TDSServiceContainer.pmiAboutClick(Sender: TObject);
begin
  ShellAbout(
    0, PChar(Application.Title),
    'Supports business logics and data providers for Erp system',
    Application.Icon.Handle);
end;

procedure TDSServiceContainer.pmiDatabaseConfigurationClick(Sender: TObject);
begin
  frmMainServer.Show();
  frmMainServer.pcSetup.ActivePage := frmMainServer.tsDBConfig;
end;

procedure TDSServiceContainer.pmiDatabasePoolingClick(Sender: TObject);
begin
  FDatabasePooling := pmiDatabasePooling.Checked;
  frmMainServer.cbDBPooling.Checked := FDatabasePooling;
end;

procedure TDSServiceContainer.pmiExitClick(Sender: TObject);
begin
  frmMainServer.CanClose := True;
  frmMainServer.Close();
end;

procedure TDSServiceContainer.pmiSessionLifeCycleClick(Sender: TObject);
begin
  FDSLifeCycle := (Sender as TMenuItem).Tag;
  FDSLifeCycleStr := _DS_LIFE_CYCLE_LIST_[FDSLifeCycle];

  frmMainServer.rblcInvocationMode.Checked := (FDSLifeCycle = 0);
  frmMainServer.rblcServerMode.Checked := (FDSLifeCycle = 1);
  frmMainServer.rblcSessionMode.Checked := (FDSLifeCycle = 2);
end;

procedure TDSServiceContainer.pmiShowMainFormClick(Sender: TObject);
begin
  frmMainServer.Show();
end;

procedure TDSServiceContainer.pmiStartStopClick(Sender: TObject);
begin
  if (dsAppServer.Started) then
    StopAppServer()
  else
    StartAppServer();

  UpdatServerDisplayStatus();
end;

procedure TDSServiceContainer.SaveDBTransConfig();
var
  IsConnected: Boolean;
begin
  IsConnected := DBConnection.Connected;

  if (IsConnected) then
    DBConnection.Close();

  with TIniFile.Create(ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_) do
  try
    Writestring('trans_db', 'HostName', FDatabaseHostName);
    Writestring('trans_db', 'DatabaseName', FDatabaseName);
    Writestring('trans_db', 'UserName', FDatabaseUserName);
    Writestring('trans_db', 'Password', EncryptStrEx(FDatabasePassword));
    Writestring('trans_db', 'ServerCharSet', FDatabaseServerCharSet);
  finally
    Free();
  end;

  if (IsConnected) then
    DBConnection.Open();
end;

procedure TDSServiceContainer.AddServerObjectsToList();
var
  i: Integer;
begin
  frmMainServer.lbServerClass.Clear();
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TDSServerClass) then
    begin
      frmMainServer.lbServerClass.Items.Add(
        (Components[i] as TDSServerClass). Tostring + ' - ' +
        Copy((Components[i] as TDSServerClass).Name, 4, 255));
    end;
  end;
end;

procedure TDSServiceContainer.LoadConfig();
begin
  WriteLog('Loading configuration from file...');
  WriteLog('Configuration File: ' + ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_);
  with TIniFile.Create(ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_) do
  try
    FAlwaysOnTop := ReadBool('Server', 'IsAlwaysOnTop', False);
    FPosX := ReadInteger('Server', 'PosX', 0);
    FPosY := ReadInteger('Server', 'PosY', 0);

    FIsAutoRun := ReadBool('Server', 'IsAutoRun', False);
    FDSLifeCycle := ReadInteger('Server', 'DSLifeCycle', 2);

    FMsgLogged := ReadBool('Server', 'MsgLogged', True);
    FMsgOnScreen := ReadBool('Server', 'MsgOnScreen', True);
    FLogMaxLines := ReadInteger('Server', 'LogMaxLines', 10000);

    FBufferKBSize := ReadInteger('Server', 'BufferKBSize', 32);
    FPortNo := ReadInteger('Server', 'PortNo', 244);
    FDSPortNo := FPortNo;
    FHTTPPortNo := ReadInteger('Server', 'HTTPPortNo', 8080);
    FPoolSize := ReadInteger('Server', 'PoolSize', 50);
    FMaxThreads := ReadInteger('Server', 'MaxThreads', 200);
    FDSLifeCycleStr := _DS_LIFE_CYCLE_LIST_[FDSLifeCycle];

    //FDatabasePooling := ReadBool('Server', 'DatabasePooling', False);
    FDatabasePooling := False;
    FSyncInThreads := ReadBool('Server', 'SyncInThreads', True);

    FDatabaseHostName := Readstring('trans_db', 'HostName', '');
    FDatabaseName := Readstring('trans_db', 'DatabaseName', 'los_db');
    FDatabaseUserName := Readstring('trans_db', 'UserName', '');
    FIfxAsync := trim(Readstring('trans_db', 'IfxAsync', 'N'))='Y';

    //FDatabasePassword := DecryptStrEx(Readstring('trans_db', 'Password', ''));
    FDatabasePassword := Readstring('trans_db', 'Password', '');
    FDatabaseServerCharSet := Readstring('trans_db', 'ServerCharSet', 'TIS620');

    FCoreBankSourcePath := Readstring('corebank', 'SourcePath', '');
    FCoreBankTargetPath := Readstring('corebank', 'TargetPath', '');
    FCoreBankBackupPath := Readstring('corebank', 'BackupPath', '');

    GetAutoRun();
    if (FIsAutoRun) then
      WriteLog('Aplication Server auto-run mode is ON.')
    else
      WriteLog('Aplication Server auto-run mode is OFF.');

    WriteLog('Database: ' + Trim(GetDatabaseName()));
    if (FDatabasePooling) then
      WriteLog('Database Pooling is ON.')
    else
      WriteLog('Database Pooling is OFF.');
  finally
    Free();
  end;
  WriteLog('Configuration loaded.');
  WriteLog('Configuration File: ' + ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_);
end;

procedure TDSServiceContainer.mmAlwaysOnTopClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  FAlwaysOnTop := (Sender as TMenuItem).Checked;

  if (FAlwaysOnTop) then
    frmMainServer.FormStyle := fsStayOnTop
  else
    frmMainServer.FormStyle := fsNormal;
end;

procedure TDSServiceContainer.ApplyConfig();
var
  i: Integer;
begin
  WriteLog('Applying configuration...');


  with DBConnection do
  begin
    Params.Values['HostName'] := FDatabaseHostName;
    Params.Values['Database'] := GetDatabaseName();
    Params.Values['User_Name'] := FDatabaseUserName;
    Params.Values['Password'] := FDatabasePassword;
    //Params.Values['ServerCharSet'] := FDatabaseServerCharSet;
  end;


  dstcpServerTransport.BufferKBSize := FBufferKBSize;
  if (FPortNo = 0) then
    FPortNo := 244;
  if (FHTTPPortNo = 0) then
    FHTTPPortNo := 8080;
  dstcpServerTransport.Port := FPortNo;
  dshttpService.DSPort := FDSPortNo;
  dshttpService.HttpPort := FHTTPPortNo;
  dstcpServerTransport.PoolSize := FPoolSize;
  dstcpServerTransport.MaxThreads := FMaxThreads;

  if (not dsAppServer.Started) then
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i] is TDSServerClass) then
      begin
        (Components[i] as TDSServerClass).LifeCycle := FDSLifeCycleStr;
      end;
    end;
  end;

  mmAlwaysOnTop.Checked := FAlwaysOnTop;
  if (FAlwaysOnTop) then
    frmMainServer.FormStyle := fsStayOnTop
  else
    frmMainServer.FormStyle := fsNormal;

  frmMainServer.Left := FPosX;
  frmMainServer.Top := FPosY;

  WriteLog('Configuration applied.');
end;

procedure TDSServiceContainer.ReLoadConfig();
begin
  StopAppServer();
  try
    LoadConfig();
    ApplyConfig();
  finally
    StartAppServer();
  end;
end;

procedure TDSServiceContainer.SaveConfig();
  procedure _SetDSLifeCycle(_DSLifeCycle: Integer);
  begin
    FDSLifeCycle := _DSLifeCycle;
    FDSLifeCycleStr := _DS_LIFE_CYCLE_LIST_[FDSLifeCycle];
  end;
begin
  if (frmMainServer.rblcInvocationMode.Checked) then
    _SetDSLifeCycle(frmMainServer.rblcInvocationMode.Tag)
  else
  if (frmMainServer.rblcServerMode.Checked) then
    _SetDSLifeCycle(frmMainServer.rblcServerMode.Tag)
  else
  if (frmMainServer.rblcSessionMode.Checked) then
    _SetDSLifeCycle(frmMainServer.rblcSessionMode.Tag);

  try
    FBufferKBSize := StrToInt(frmMainServer.edBufferKBSize.Text);
    FPortNo := StrToInt(frmMainServer.edPortNo.Text);
    FHTTPPortNo := StrToInt(frmMainServer.edHTTPPortNo.Text);
    FPoolSize := StrToInt(frmMainServer.edPoolSize.Text);
    FMaxThreads := StrToInt(frmMainServer.edMaxThread.Text);

    FMsgOnScreen := frmMainServer.cbMsgOnScreen.Checked;
    FLogMaxLines := StrToInt(frmMainServer.edLogMaxLines.Text);
  except
    on E: Exception do
    begin
      Application.MessageBox(
        PChar('Error: ' + E.Message), 'Error',
        MB_OK or MB_ICONERROR);
      Exit;
    end;
  end;

  FDatabasePooling := frmMainServer.cbDBPooling.Checked;

  WriteLog('Writting configuration to file...');
  with TIniFile.Create(ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_) do
  try
    WriteBool('Server', 'IsAlwaysOnTop', FAlwaysOnTop);
    WriteInteger('Server', 'PosX', FPosX);
    WriteInteger('Server', 'PosY', FPosY);

    WriteBool('Server', 'IsAutoRun', FIsAutoRun);
    WriteInteger('Server', 'DSLifeCycle', FDSLifeCycle);

    WriteBool('Server', 'MsgLogged', FMsgLogged);
    WriteBool('Server', 'MsgOnScreen', FMsgOnScreen);
    WriteInteger('Server', 'LogMaxLines', FLogMaxLines);

    WriteInteger('Server', 'BufferKBSize', FBufferKBSize);
    WriteInteger('Server', 'PortNo', FPortNo);
    WriteInteger('Server', 'HTTPPortNo', FHTTPPortNo);
    WriteInteger('Server', 'PoolSize', FPoolSize);
    WriteInteger('Server', 'MaxThreads', FMaxThreads);
    WriteInteger('Server', 'LogMaxLines', FLogMaxLines);

    WriteBool('Server', 'DatabasePooling', FDatabasePooling);
    WriteBool('Server', 'SyncInThreads', FSyncInThreads);
{
    Writestring('trans_db', 'HostName', FDatabaseHostName);
    Writestring('trans_db', 'DatabaseName', FDatabaseName);
    Writestring('trans_db', 'UserName', FDatabaseUserName);
    Writestring('trans_db', 'Password', EncryptStrEx(FDatabasePassword));
    Writestring('trans_db', 'ServerCharSet', FDatabaseServerCharSet);
}
  finally
    Free();
  end;
  WriteLog('Configuration has been written.');
end;

function TDSServiceContainer.AssignLogFile(): Boolean;
var
  LogDirName, LogFileName: String;
begin
  Result := False;
  LogDirName :=
    ExtractFilePath(ParamStr(0)) + '\LOG\' +
    FormatDateTime('YYYMMDD', Now());

  ForceDirectories(LogDirName);
  LogFileName := LogDirName + '\LOG.TXT';

  {$I-}
  AssignFile(fpLog, LogFileName);
  if (FileExists(LogFileName)) then
    Append(fpLog)
  else
    Rewrite(fpLog);
  {I+}

  Result := True;
end;

function TDSServiceContainer.GetAutoRun(): Boolean;
begin
  with TRegistry.Create() do
  try
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run', False) then
    begin
      FIsAutoRun := ValueExists('OBSSAppServer');

      if (FIsAutoRun) then
        { make sure value is valid }
        Writestring('OBSSAppServer', ParamStr(0))
      else
        { make sure value was not existed }
        DeleteValue('OBSSAppServer');

      CloseKey();
    end;
  finally
    Free();
  end;

  Result := FIsAutoRun;
end;

procedure TDSServiceContainer.SetAutoRun(Value: Boolean);
begin
  FIsAutoRun := Value;

  with TRegistry.Create() do
  try
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run', False) then
    begin
      if (FIsAutoRun) then
        Writestring('OBSSAppServer', ParamStr(0))
      else
        DeleteValue('OBSSAppServer');

      CloseKey();
    end;
  finally
    Free();
  end;
end;

procedure TDSServiceContainer.SetIfxAsync(const Value: boolean);
begin
  FIfxAsync := Value;
end;

function TDSServiceContainer.GetDatabaseName(): string;
begin
  //if (Trim(FDatabaseHostName) <> '') then
  //  Result :=  FDatabaseHostName + ':' + FDatabaseName
  //else
    Result :=  FDatabaseName;
end;

procedure TDSServiceContainer.StartAppServer();
begin
  FLogAvailable := AssignLogFile();
  tiIcon.BalloonHint := 'Starting Application Server...';
  tiIcon.ShowBalloonHint();

  WriteLog('Verifying engine and database configuration...');
  try
    WriteLog('  --> Verifying transaction engine phase I (connect)...');
    DBConnection.Connected := True;
    WriteLog('  --> Passed.');
    WriteLog('  --> Verifying transaction engine phase II (disconnect)...');
    DBConnection.Connected := False;
    WriteLog('  --> Passed.');
    WriteLog('Transactional engine configuration is OK.');

    WriteLog('Openning listening...');
    WriteLog('Starting application server...');
    WriteLog('listening port '+ inttostr(dstcpServerTransport.Port));
    WriteLog('listening port '+
      inttostr(dshttpService.DSPort) + '/' + inttostr(dshttpService.HttpPort));

    dsAppServer.Start();
    dshttpService.Active := True;

    WriteLog('Application server started.');
    WriteLog('All listening were openned.');
    tiIcon.BalloonHint := 'Application Server started';
  except
    on E: Exception do
    begin
      WriteLog('  --> Failed.');
      WriteLog('Error: ' + E.Message);
      tiIcon.BalloonHint := 'Database configuration was not correct, Server is not started';
    end;
  end;

  tiIcon.ShowBalloonHint();
  UpdatServerDisplayStatus();
end;

procedure TDSServiceContainer.StopAppServer();
begin
  tiIcon.BalloonHint := 'Stoping Application Server...';
  tiIcon.ShowBalloonHint();

  WriteLog('Preparing to release locked users...');
  if (not DBConnection.Connected) then
  try
    DBConnection.Open();
  except
  end;

  if (DBConnection.Connected) then
  try
    WriteLog('Locked users are being released...');
    //DBConnection.ExecuteDirect(_SQL_RELEASE_ALL_LOCKED_USER_);
    //DBConnection.ExecuteDirect(_SQL_CLEAR_TEMP_);
  finally
    WriteLog('Disconnect from database server...');
    if (DBConnection.Connected) then
      DBConnection.Close();
  end;

  WriteLog('Database server disconnected.');

  WriteLog('Closing listening...');
  WriteLog('Stoping application server...');

  dshttpService.Active := False;
  dsAppServer.Stop();

  WriteLog('Application server stoped.');
  WriteLog('All listening were closed.');

  tiIcon.BalloonHint := 'Application Server stoped';
  tiIcon.ShowBalloonHint();

  UpdatServerDisplayStatus();

  FLogAvailable := False;
  CloseFile(fpLog);
end;

procedure TDSServiceContainer.UpdatServerDisplayStatus();
begin
  pmiStart.Checked := dsAppServer.Started;
  pmiStop.Checked := not pmiStart.Checked;

  frmMainServer.btnStartServer.Enabled := not dsAppServer.Started;
  frmMainServer.btnStopServer.Enabled := dsAppServer.Started;

  frmMainServer.pnSessionLifeCycle.Enabled := not dsAppServer.Started;
end;

procedure TDSServiceContainer.UpdateCreatedClassList(_ClassName: string; Added: Boolean);
var
  _idx: Integer;
begin
  _idx := frmMainServer.lbServerClass.Items.IndexOf(_ClassName);
  if (_idx > 0) then
    frmMainServer.lbServerClass.Items.Add(_ClassName)
  else
    frmMainServer.lbServerClass.Items.Delete(_idx);
end;

procedure TDSServiceContainer.SetPositoin(X, Y: Integer);
begin
  FPosX := X;
  FPosY := Y;
end;

procedure TDSServiceContainer.tiIconBalloonClick(Sender: TObject);
begin
  frmMainServer.Show();
  frmMainServer.pcSetup.ActivePage := frmMainServer.tsServerLog;
  frmMainServer.BringToFront();
end;

procedure TDSServiceContainer.tiIconDblClick(Sender: TObject);
begin
  frmMainServer.Show();
end;

procedure TDSServiceContainer.WriteLog(LogMsg: string);
begin
  try
    TThread.Queue(nil, procedure begin WriteLogEx(LogMsg) end);
  except
  end;
end;

procedure TDSServiceContainer.WriteLogEx(LogMsg: string);
var
  _MsgLog: string;
begin
  EnterCriticalSection(CS);
  try
    _MsgLog := FormatDateTime('mmmm dd, yyyy hh:mm:ss.zzz - ', Now()) + LogMsg;
    frmMainServer.mmLog.Lines.Add(_MsgLog);
    if (FLogAvailable) then
    begin
      try
        Writeln(fpLog, _MsgLog);
      except
        on E: Exception do
        begin
          frmMainServer.mmLog.Lines.Add(
            FormatDateTime('mmmm dd, yyyy hh:mm:ss.zzz - Error: ', Now()) +
            E.Message);
        end;
      end;
    end;
  finally
    LeaveCriticalSection(CS);
  end;
end;

procedure TDSServiceContainer.DataModuleCreate(Sender: TObject);
begin
  FLogAvailable := False;
  FErrorOnStarted := True;
  tiIcon.Icon.Assign(Application.Icon);
  tiIcon.Visible := True;

  tiIcon.BalloonHint := 'Application initializing...';
  tiIcon.ShowBalloonHint();

  WriteLog('Application initializing...');

  LoadConfig();
  ApplyConfig();
  AddServerObjectsToList();

  WriteLog('Application initialized.');

  FCurrentActiveConnection := 0;
  StartAppServer();
  FErrorOnStarted := False;
end;

procedure TDSServiceContainer.DataModuleDestroy(Sender: TObject);
begin
  if (dsAppServer.Started) then
  try
    StopAppServer();
  except
  end;
{
  if (msSQLServerConnection.Connected) then
  try
    msSQLServerConnection.Close();
  except
  end;
}
end;

procedure TDSServiceContainer.dsAppServerConnect(
  DSConnectEventObject: TDSConnectEventObject);
begin
  Inc(FCurrentActiveConnection);
  FClientIP := DSConnectEventObject.ConnectProperties.Properties.Values['ClientIP'];
  WriteLog('Connection established from IP: ' + FClientIP);
  frmMainServer.ShowCurrentConnection(FCurrentActiveConnection);
end;

procedure TDSServiceContainer.dsAppServerDisconnect(
  DSConnectEventObject: TDSConnectEventObject);
begin
  if (FCurrentActiveConnection > 0) then
    Dec(FCurrentActiveConnection);

  frmMainServer.ShowCurrentConnection(FCurrentActiveConnection);
end;

procedure TDSServiceContainer.DssCarSaleClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDSCarSale;
end;

procedure TDSServiceContainer.DssPurchaserClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDSPurchase;
end;

procedure TDSServiceContainer.DssReceiveMoneyClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
   PersistentClass := TDSReceiveMoney;
end;

procedure TDSServiceContainer.DssRegistationClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
   PersistentClass := TDSRegistation;
end;

procedure TDSServiceContainer.dssAssignWorkClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
   PersistentClass := TDSAssignWork;
end;

procedure TDSServiceContainer.dssAuthorizedManagerServerClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDSAuthorizedManager;
end;

procedure TDSServiceContainer.dssHIS43FileClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
PersistentClass := TDSHIS43File;
end;

procedure TDSServiceContainer.dssHISSetupClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
 PersistentClass := TDSHISSetup;
end;

procedure TDSServiceContainer.dssMainServerClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDSMain;
end;

procedure TDSServiceContainer.dssSetupClassGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDSSetup;
end;

procedure TDSServiceContainer.DssStockClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDSSTOCK;
end;

procedure TDSServiceContainer.SyncAllData();
begin
  Exit;
end;

procedure TDSServiceContainer.InternalSyncRequest();
begin
  Exit;
end;

procedure TDSServiceContainer.SyncAS400TOLOS();
begin
  Exit;
end;

initialization
InitializeCriticalSection(CS);

finalization
DeleteCriticalSection(CS);

end.
