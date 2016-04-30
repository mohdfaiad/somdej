unit MainServerForm;

interface

uses
  Windows, Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type


  TEXEVersionData = record
    CompanyName,
    FileDescription,
    FileVersion,
    InternalName,
    LegalCopyright,
    LegalTrademarks,
    OriginalFileName,
    ProductName,
    ProductVersion,
    Comments,
    PrivateBuild,
    SpecialBuild: string;
  end;

  TfrmMainServer = class(TForm)
    pcSetup: TPageControl;
    tsServerConfig: TTabSheet;
    pnServerObjects: TPanel;
    lbServerConfigHeader1: TLabel;
    lbServerConfigHeader2: TLabel;
    pnSessionLifeCycle: TPanel;
    lbNoted: TLabel;
    lbBufferKBSize: TLabel;
    Bevel1: TBevel;
    lbPoolSize: TLabel;
    lbMaxThread: TLabel;
    lbPortNo: TLabel;
    rblcInvocationMode: TRadioButton;
    rblcServerMode: TRadioButton;
    rblcSessionMode: TRadioButton;
    edBufferKBSize: TEdit;
    edPoolSize: TEdit;
    edMaxThread: TEdit;
    edPortNo: TEdit;
    lbServerClass: TListBox;
    btnStartServer: TButton;
    btnStopServer: TButton;
    cbAutoRun: TCheckBox;
    tsDBConfig: TTabSheet;
    pnDBConfiguration: TPanel;
    lbHostName: TLabel;
    lbDBName: TLabel;
    lbUserName: TLabel;
    lbUserPassword: TLabel;
    lbServerCharSet: TLabel;
    lbDBConfigureTitle: TLabel;
    cbDBPooling: TCheckBox;
    edHostName: TEdit;
    edDBName: TEdit;
    edUserName: TEdit;
    edUserPassword: TEdit;
    edServerCharSet: TEdit;
    tsServerLog: TTabSheet;
    lbServerLoggingHeader: TLabel;
    mmLog: TMemo;
    btnClearLog: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    btnApply: TButton;
    stbStatus: TStatusBar;
    edHTTPPortNo: TEdit;
    lbCurrentActiveConnection: TLabel;
    lbCurrentActiveConnectionTotal: TLabel;
    cbMsgOnScreen: TCheckBox;
    lbLogMaxLines: TLabel;
    edLogMaxLines: TEdit;
    btnDBTestConnection: TButton;
    lbDBConfigHeader: TLabel;
    lbAS400HostName: TLabel;
    lbAS400DBLibraryName: TLabel;
    lbAS400UserName: TLabel;
    lbAS400UserPassword: TLabel;
    lbAS400ServerCharSet: TLabel;
    lbAS400HPLibraryName: TLabel;
    edAS400HostName: TEdit;
    edAS400DBLibraryName: TEdit;
    edAS400UserName: TEdit;
    edAS400UserPassword: TEdit;
    edAS400ServerCharSet: TEdit;
    edAS400HPLibraryName: TEdit;
    btnAS400TestConnection: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnStartServerClick(Sender: TObject);
    procedure btnStopServerClick(Sender: TObject);
    procedure btnClearLogClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edBufferKBSizeKeyPress(Sender: TObject; var Key: Char);
    procedure edConfigChange(Sender: TObject);
    procedure ServerClickChange(Sender: TObject);
    procedure cbAutoRunClick(Sender: TObject);
    procedure edDBConfigKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAS400TestConnectionClick(Sender: TObject);
    procedure btnDBTestConnectionClick(Sender: TObject);
  private
    FCanClose: Boolean;
    function SaveAndApplyConfing(): boolean;
  public
    procedure ShowCurrentConnection(ConnectionTotal: integer);
    property CanClose: Boolean read FCanClose write FCanClose;
  end;

var
  frmMainServer: TfrmMainServer;

implementation

uses  DSContainerModule, DSServerConstant, FileInfo;

{$R *.dfm}

function GetEXEVersionData(const FileName: string): TEXEVersionData;
type
  PLandCodepage = ^TLandCodepage;
  TLandCodepage = record
    wLanguage,
    wCodePage: word;
  end;
var
  dummy,
  len: cardinal;
  buf, pntr: pointer;
  lang: string;
begin
  len := GetFileVersionInfoSize(PChar(FileName), dummy);
  if len = 0 then
    RaiseLastOSError;
  GetMem(buf, len);
  try
    if not GetFileVersionInfo(PChar(FileName), 0, len, buf) then
      RaiseLastOSError;

    if not VerQueryValue(buf, '\VarFileInfo\Translation\', pntr, len) then
      RaiseLastOSError;

    lang := Format('%.4x%.4x', [PLandCodepage(pntr)^.wLanguage, PLandCodepage(pntr)^.wCodePage]);

    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\CompanyName'), pntr, len){ and (@len <> nil)} then
      result.CompanyName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\FileDescription'), pntr, len){ and (@len <> nil)} then
      result.FileDescription := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\FileVersion'), pntr, len){ and (@len <> nil)} then
      result.FileVersion := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\InternalName'), pntr, len){ and (@len <> nil)} then
      result.InternalName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\LegalCopyright'), pntr, len){ and (@len <> nil)} then
      result.LegalCopyright := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\LegalTrademarks'), pntr, len){ and (@len <> nil)} then
      result.LegalTrademarks := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\OriginalFileName'), pntr, len){ and (@len <> nil)} then
      result.OriginalFileName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\ProductName'), pntr, len){ and (@len <> nil)} then
      result.ProductName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\ProductVersion'), pntr, len){ and (@len <> nil)} then
      result.ProductVersion := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\Comments'), pntr, len){ and (@len <> nil)} then
      result.Comments := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\PrivateBuild'), pntr, len){ and (@len <> nil)} then
      result.PrivateBuild := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\SpecialBuild'), pntr, len){ and (@len <> nil)} then
      result.SpecialBuild := PChar(pntr);
  finally
    FreeMem(buf);
  end;
end;


function GetAppVersionStr: string;
var
  //Rec: LongRec;
  rec:TEXEVersionData ;
begin

  rec := GetEXEVersionData(Application.ExeName);

  Result:=rec.FileVersion;
 // Rec := LongRec(GetFileVersion(ParamStr(0)));
 // Result := Format('%d.%d', [Rec.Hi, Rec.Lo])



end;



procedure TfrmMainServer.ShowCurrentConnection(ConnectionTotal: integer);
var
  sConnectionTotal: string;
begin
  if (ConnectionTotal = 0) then
    sConnectionTotal := 'There are no connection.'
  else
    sConnectionTotal := Format('%.0n', [ConnectionTotal/1]);

  lbCurrentActiveConnectionTotal.Caption := sConnectionTotal;
end;

{ Saving and applying configuration... }
function TfrmMainServer.SaveAndApplyConfing(): boolean;
begin
  Result := True;
  Screen.Cursor := crHourGlass;
  try
    try
      DSServiceContainer.SaveConfig();
      DSServiceContainer.ApplyConfig();
    except
      Result := False;
    end;

    while (mmLog.Lines.Count > DSServiceContainer.LogMaxLines) do
    begin
      mmLog.Lines.Delete(0);
    end;

    edLogMaxLines.Enabled := cbMsgOnScreen.Checked;
  finally
    Screen.Cursor := crDefault;
  end;
end;

{ Saving, Applying configuration and close this form }
procedure TfrmMainServer.btnOKClick(Sender: TObject);
begin
  btnApply.Enabled := not SaveAndApplyConfing();
  Close();
end;

{ Do not save chang of configuration and close this form }
procedure TfrmMainServer.btnAS400TestConnectionClick(Sender: TObject);
var
  dlResult: Integer;
begin
  if (btnApply.Enabled) then
  begin
    dlResult := MessageDlg(
      'Test Connection needs all change to be saved'#10#13 +
      'Do you want to continue save change?',
      mtConfirmation, [mbYes, mbNo], 0);

    if (dlResult = mrNo) then
      Exit;
  end;

  btnApplyClick(btnApply);
{
  try
    DSServiceContainer.as400Connection.Params.SaveToFile('D:\AS400Params.txt');
    DSServiceContainer.as400Connection.Open();
    ShowMessage('Connection testing was passed.');
  except
    on E: Exception do
    begin
      ShowMessage('Connection testing was fail!!!'#10#13'Error: ' + E.Message);
    end;
  end;

  if (DSServiceContainer.as400Connection.Connected) then
   DSServiceContainer.as400Connection.Close();
}
end;

procedure TfrmMainServer.btnCancelClick(Sender: TObject);
begin
  Close();
end;

{ Applying configuration... }
procedure TfrmMainServer.btnApplyClick(Sender: TObject);
begin
  btnApply.Enabled := not SaveAndApplyConfing();
end;

procedure TfrmMainServer.btnClearLogClick(Sender: TObject);
begin
  mmLog.Clear();
end;

procedure TfrmMainServer.btnDBTestConnectionClick(Sender: TObject);
var
  dlResult: Integer;
begin
  if (btnApply.Enabled) then
  begin
    dlResult := MessageDlg(
      'Test Connection needs all change to be saved'#10#13 +
      'Do you want to continue save change?',
      mtConfirmation, [mbYes, mbNo], 0);

    if (dlResult = mrNo) then
      Exit;
  end;

  btnApplyClick(btnApply);

  pcSetup.ActivePage := tsServerLog;
  Invalidate();
  DSServiceContainer.WriteLog('');
  DSServiceContainer.WriteLog('+++++++++++++++ Test Connection +++++++++++++++');
  DSServiceContainer.WriteLog('Testing connection is starting...');
  try
    DSServiceContainer.WriteLog('Opening connection...');
    DSServiceContainer.DBConnection.Open();
    DSServiceContainer.WriteLog('Connection openned without any errors.');

    DSServiceContainer.WriteLog('Connection is closing...');
    if (DSServiceContainer.DBConnection.Connected) then
      DSServiceContainer.DBConnection.Close();
    DSServiceContainer.WriteLog('Connection has been closed.');

    DSServiceContainer.WriteLog('Connection testing was passed.');
//    ShowMessage('Connection testing was passed.');
  except
    on E: Exception do
    begin
      DSServiceContainer.WriteLog(
        'Connection testing was fail!!! '#10#13'Error: ' + E.Message);
//      ShowMessage('Connection testing was fail!!! '#10#13'Error: ' + E.Message);
    end;
  end;
  DSServiceContainer.WriteLog('+++++++++++++++++++++++++++++++++++++++++');
  DSServiceContainer.WriteLog('');
end;

procedure TfrmMainServer.btnStartServerClick(Sender: TObject);
begin
  DSServiceContainer.StartAppServer();
  DSServiceContainer.UpdatServerDisplayStatus();
end;

procedure TfrmMainServer.btnStopServerClick(Sender: TObject);
begin
  DSServiceContainer.StopAppServer();
  DSServiceContainer.UpdatServerDisplayStatus();
end;

procedure TfrmMainServer.cbAutoRunClick(Sender: TObject);
begin
  DSServiceContainer.IsAutoRun := cbAutoRun.Checked;
end;

procedure TfrmMainServer.edConfigChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

procedure TfrmMainServer.edDBConfigKeyPress(Sender: TObject; var Key: Char);
begin
  if (CharInSet(Key, [#13])) then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmMainServer.edBufferKBSizeKeyPress(Sender: TObject; var Key: Char);
begin
  if (not CharInSet(Key, [#9, #13, #27, '0'..'9'])) then
  begin
    Key := #0;
    Exit;
  end;
end;

procedure TfrmMainServer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not FCanClose) then
  begin
    Action := caNone;
    Hide();
  end else
    Action := caFree;
end;

procedure TfrmMainServer.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if (FCanClose) then
  begin
    pcSetup.ActivePage := tsServerLog;
    Enabled := False;
    Show();
    BringToFront();
    Refresh();

    DSServiceContainer.tiIcon.BalloonHint := 'Please waite while application is terminating...';
    DSServiceContainer.tiIcon.ShowBalloonHint();

    DSServiceContainer.WriteLog('Terminating application server...');
    DSServiceContainer.StopAppServer();

    if (not DSServiceContainer.ErrorOnStarted) then
      DSServiceContainer.SaveConfig();

    DSServiceContainer.WriteLog('Application server was terminated.');

    mmLog.Lines.Add('  Please wait while application is running to be closed...');
    mmLog.Refresh();
    Cursor := crHourGlass;
    Sleep(1000);
  end;
end;

procedure TfrmMainServer.FormCreate(Sender: TObject);
var
  vi: TVersionInfo;
begin
  vi := TVersionInfo.Create();
  try
    stbStatus.Panels[1].Text :=' Server Version: '+GetAppVersionStr;
//      Format(' Server Version: %d.%d.%d.%d',
 //       [vi.MajorVersion, vi.MinorVersion, vi.Release, vi.Build]);

    _SERVER_VERSION :=GetAppVersionStr;
  finally
    vi.Free();
  end;

  Left := 0; Top := 0; Height := 620; Width := 550;

  pcSetup.ActivePage := tsServerLog;
  FCanClose := False;

  ShowCurrentConnection(0);
end;

procedure TfrmMainServer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  StartInfo  : TStartupInfo;
  ProcInfo   : TProcessInformation;
  CreateOK   : Boolean;
begin
  if ((Key = VK_F3) and (ssCtrl in Shift)) then
  begin
    { fill with known state }
    FillChar(StartInfo,SizeOf(TStartupInfo),#0);
    FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
    StartInfo.cb := SizeOf(TStartupInfo);
    StartInfo.dwX := Top;
    StartInfo.dwY := Width;
    StartInfo.dwXSize := Width;
    StartInfo.dwYSize := Height;
    StartInfo.lpTitle := 'Edit Application Server Configure File';

    CreateOK :=
      CreateProcess(
        nil,
        PWideChar('notepad.exe ' + ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_),
        nil, nil, False, CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS,
        nil, PWideChar(ExtractFilePath(ParamStr(0))), StartInfo, ProcInfo);

    { Wait for a configure file has been already modified }
    if CreateOK then
    begin
      WaitForSingleObject(ProcInfo.hProcess, INFINITE);
      { Configure file is reloaded and applied }
      DSServiceContainer.ReLoadConfig();
    end;
  end else
{
  if ((Key = VK_F4) and (ssCtrl in Shift)) then
  begin
    with TfrmTransDBConfig.Create(Self) do
    try
      ShowModal();
    finally
      Free();
    end;
  end else
}
  if ((Key = VK_F12) and (ssCtrl in Shift)) then
  begin
    if (not DSServiceContainer.InSync) then
    begin
      if (MessageDlg('Do you want to initialize data?', mtConfirmation, [mbYes, mbNo], 0) = idYES) then
      begin
        pcSetup.ActivePage := tsServerLog;
        Application.ProcessMessages();
        TThread.Queue(nil, procedure begin DSServiceContainer.SyncAllData(); end);
      end;
    end else
      ShowMessage('Synchronize is being processed');
  end else
  if ((Key = VK_F11) and (ssCtrl in Shift)) then
  begin
    if (not DSServiceContainer.InSync) then
    begin
      if (MessageDlg('Do you want to Sysnchoronize data from AS/400 ?', mtConfirmation, [mbYes, mbNo], 0) = idYES) then
      begin
        pcSetup.ActivePage := tsServerLog;
        Application.ProcessMessages();
        TThread.Queue(nil, procedure begin DSServiceContainer.SyncAS400TOLOS(); end);
      end;
    end else
      ShowMessage('Synchronize from AS/400 is being processed');
  end;

end;

procedure TfrmMainServer.FormShow(Sender: TObject);
begin
  if (Assigned(DSServiceContainer)) then
  begin
    rblcInvocationMode.Checked := (DSServiceContainer.DSLifeCycle = 0);
    rblcServerMode.Checked := (DSServiceContainer.DSLifeCycle = 1);
    rblcSessionMode.Checked := (DSServiceContainer.DSLifeCycle = 2);
    edBufferKBSize.Text := IntToStr(DSServiceContainer.BufferKBSize);
    edPortNo.Text := IntToStr(DSServiceContainer.PortNo);
    edHTTPPortNo.Text := IntToStr(DSServiceContainer.HTTPPortNo);
    edPoolSize.Text := IntToStr(DSServiceContainer.PoolSize);
    edMaxThread.Text := IntToStr(DSServiceContainer.MaxThreads);
    cbAutoRun.Checked := DSServiceContainer.IsAutoRun;

    cbDBPooling.Checked := DSServiceContainer.DatabasePooling;

    edHostName.Text := DSServiceContainer.DatabaseHostName;
    edDBName.Text := DSServiceContainer.DatabaseName;
    edUserName.Text := DSServiceContainer.DatabaseUserName;
    edUserPassword.Text := DSServiceContainer.DatabasePassword;
    edServerCharSet.Text := DSServiceContainer.DatabaseServerCharSet;
{
    edHostName.Text := DSServiceContainer.SQLServerHostName;
    edDBName.Text := DSServiceContainer.SQLServerDBName;
    edUserName.Text := DSServiceContainer.SQLServerUserName;
    edUserPassword.Text := DSServiceContainer.SQLServerPassword;
    edServerCharSet.Text := DSServiceContainer.SQLServerCharSet;

    edAS400HostName.Text := DSServiceContainer.AS400HostName;
    edAS400DBLibraryName.Text := DSServiceContainer.AS400DBLibrary;
    edAS400HPLibraryName.Text := DSServiceContainer.AS400HPLibrary;
    edAS400UserName.Text := DSServiceContainer.AS400UserName;
    edAS400UserPassword.Text := DSServiceContainer.AS400Password;
    edAS400ServerCharSet.Text := DSServiceContainer.AS400DatabaseServerCharSet;
}
    edLogMaxLines.Text := IntToStr(DSServiceContainer.LogMaxLines);
    cbMsgOnScreen.Checked := DSServiceContainer.MsgOnScreen;
  end;

  btnApply.Enabled := False;
end;

procedure TfrmMainServer.ServerClickChange(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

end.

