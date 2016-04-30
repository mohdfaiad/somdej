unit DSHISMainClass;

interface

uses
  WinApi.Windows, System.SysUtils, System.Classes, DataSnap.DSServer, Data.DB,
  Data.SqlExpr, Data.DBXCommon, DataSnap.Provider, Data.FMTBcd, Data.Win.ADODB,
  Data.DBXFirebird;

type
  TExecThread = class(TThread)
  private
   FExecProc: TThreadMethod;
   procedure DoExecProc();
  protected
    procedure Execute(); override;
  public
    constructor Create(ExecProc: TThreadMethod);
  end;

  TMethodProcedure = reference to procedure;

  TDSHISMain = class(TDSServerModule)
    dsDescList: TSQLQuery;
    dspDescList: TDataSetProvider;
    dsAccountInternalList: TSQLQuery;
    dspAccountInternalList: TDataSetProvider;
    dsBranchList: TSQLQuery;
    dspBranchList: TDataSetProvider;
    dsTranAccount: TSQLQuery;
    dspTranAccount: TDataSetProvider;
    dsReportInfo: TSQLQuery;
    dspReportInfo: TDataSetProvider;
    spUserLogIn: TSQLStoredProc;
    spComponentInsUpd: TSQLStoredProc;
    dspGetComponentList: TDataSetProvider;
    dsGetComponentList: TSQLQuery;
    dspMenusList: TDataSetProvider;
    dsMenusList: TSQLQuery;
    spComponentDelAll: TSQLStoredProc;
    spUserLogOut: TSQLStoredProc;
    dsReportList: TSQLQuery;
    dspReportList: TDataSetProvider;
    dsGetFrmReport: TSQLQuery;
    dspGetFrmReport: TDataSetProvider;
    dsSetImageRef: TSQLQuery;
    dspSetImageRef: TDataSetProvider;
    dspDescData: TDataSetProvider;
    dsDescData: TSQLQuery;
    dspProvince: TDataSetProvider;
    dsProvince: TSQLQuery;
    dspAmphur: TDataSetProvider;
    dsAmphur: TSQLQuery;
    fbSyncDataList: TSQLQuery;
    fbSyncDataListSYNC_ID: TLargeintField;
    fbSyncDataListUPDATE_MODE: TIntegerField;
    fbSyncItem: TSQLQuery;
    dsBank: TSQLQuery;
    dspBank: TDataSetProvider;
    dspBankBranch: TDataSetProvider;
    dsBankBranch: TSQLQuery;
    dsGetLoanType: TSQLQuery;
    dspGetLoanType: TDataSetProvider;
    dsGetCodeDescList: TSQLQuery;
    dspGetCodeDescList: TDataSetProvider;
    dsMiscDataSet: TSQLQuery;
    dspMiscDataSet: TDataSetProvider;
    dsTtGetGt1ByNo: TSQLQuery;
    dspTtGetGt1ByNo: TDataSetProvider;
    procedure DataSetBeforeOpen(DataSet: TDataSet);
    procedure StoredProcedureBeforeOpen(DataSet: TDataSet);
  private
    FDBConnection: TSQLConnection;

    FDBTransaction: TDBXTransaction;
    FDBQuery: TSQLQuery;

    FClientIP: string;

    procedure InternalSyncRequest();
  protected
    FLastErrorCode: Int64;
    FLastErrorMessage: string;

    FCompanyCode: Int64;
    FCompanyOrgCode: string;
    FCompanyName: string;
    FBranchCode: Int64;
    FBranchOrgCode: string;
    FBranchName: string;

    FLanguageID: integer;
    FUserRoleRecID: Int64;
    FUserRoleID: string;
    FUserRecID: Int64;
    FUserID: string;
    FUserPWD: string;
    FUserName: string;

    property SQLConnection: TSQLConnection read FDBConnection;
    property DBTransaction: TDBXTransaction read FDBTransaction;
    property DBQuery: TSQLQuery read FDBQuery write FDBQuery;

    procedure SyncRequest();

    property LastErrorCode: Int64 read FLastErrorCode write FLastErrorCode;
    property LastErrorMsg: string read FLastErrorMessage
      write FLastErrorMessage;

    property LanguageID: integer read FLanguageID;
    function ExecMethod(MethodProc: TMethodProcedure;
      MethodName: string = ''): Boolean;
    procedure VerifyLoggedIn();

    procedure StoredProcedureParamsPrint(spProc: TSQLStoredProc);

    property UserRoleRecID: Int64 read FUserRoleRecID;
    property UserRecID: Int64 read FUserRecID;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;

    function LogIn(UserID, UserPWD: string): Boolean; virtual;
    function LogOut(): Boolean;

    function StartTrans(): Boolean;
    function CommitTrans(): Boolean;
    function RollBackTrans(): Boolean;
    function InTrans(): Boolean;
    function ExecSQL(const CommandText: string): Boolean;

    function GetCompanyCode(): Int64;
    function GetCompanyOrgCode(): string;
    function GetCompanyName(): string;
    function GetBranchCode(): Int64;
    function GetBranchOrgCode(): string;
    function GetBranchName(): string;

    function GetUserRole(): string;
    function GetUserID(): string;
    function GetUserPWD(): string;
    function GetUserName(): string;

    procedure WriteLog(Msg: string);

    function GetLastErrorCode(): Int64;
    function GetLastErrorMessage: string;

    function IsEnabled(ScreenName, ComponentName: String): Boolean;
    function IsVisible(ScreenName, ComponentName: String): Boolean;

    function IsEditable(ScreenName, ComponentName: String): Boolean;
    function IsViewable(ScreenName, ComponentName: String): Boolean;

    { * Additional methods for common information * }
    function GetDescription(Code: LongInt; Flag: string = ''): Boolean;
    function GetDescList(Abbr_Code: string; Prefix_code: string = '0';
      Order_by: string = 'CNOCDE'): Boolean;
    function GetAmphurList(ProvinceCode: String): Boolean;

    function GetAccountInternalList(account_type: string;
      branch_code: integer = 0; loan_type: string = ''): Boolean;

    function GetReportInfo(REPORT_CODE: String): Boolean;
    function GetReportList(): Boolean;
    function GetPrintReportForm(SQLStatment: String): Boolean;

    function GetSystemDate(): Double;
    procedure SetDateParamValue(P: TParam; Value: Double);
    procedure CALWHT(_NET: Double; var _VAT, _WHT, _TOT: Double;
      JURISTIC_FLAG: String = 'N');

    function SyncChanged(): Boolean;

    function DeleteComponent(AppName, FormName: String): Boolean;
    function InsertComponent(AppName, FormName, ParentName, ComponentClass, ComponentName,
      Description: String): Boolean;
    function GetComponentList(AppName, FormName: String): Boolean;

    function RecordVerify(key, Value: STring): Boolean;
    function RecordSetLock(key, Value: STring): Boolean;
    function RecordReleaseLock(key, Value: STring): Boolean;
    function RecordReleaseAllLock(UserID: String): Boolean;
    function RecordGetUserLock(key, Value: STring): String;

    //********************** Merge for Common Prep. used ***********************
    function GetBankBranchList(BankCode: String): Boolean;
    function SetMiscDataSetCommandText(CommandText: String): Boolean;
    procedure SetRefType(Value: Integer; Flag: String = '');
    function GetRefType(): Integer;
    function GetDescListEx(Value: Integer): Boolean;
    function GetPercentVAT():Double;

    function RunDayEnd(StartDate, ToDate : Double) :Boolean;

    function TtInsUpdHead(CMP  :String; BRN  :String;
      YAR  :Integer; PRD  :Integer; DCD  :String; var OUT_DNO  :Integer) :Boolean;

    function TtGetGT1ByNo(IYARGT1,IPRDGT1:integer;ICMPGT1,IBRNGT1 ,IDCDGT1: String;IDNOGT1:INTEGER): Boolean;

  end;

const
  VATRATE = 7.00;
  WHTRATE = 3.00;

implementation

{$R *.dfm}

uses {$IFDEF ERPAppServerAsService}MainServerContainerService{$ELSE}
    DSContainerModule{$ENDIF}, DSServerConstant;

var
  DSSyncDataCS: TRTLCriticalSection;
  DSMainCS: TRTLCriticalSection;

constructor TExecThread.Create(ExecProc: TThreadMethod);
begin
  inherited Create(False);
  FExecProc := ExecProc;
  FreeOnTerminate := True;
end;

procedure TExecThread.DoExecProc();
begin
  EnterCriticalSection(DSSyncDataCS);
  try
    FExecProc();
  finally
    LeaveCriticalSection(DSSyncDataCS);
  end;
end;

procedure TExecThread.Execute();
begin
  Synchronize(DoExecProc);
end;

constructor TDSHISMain.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited Create(AOwner);

//  FClientIP := DSFSServiceContainer.ClientIP;

  { Preparing Database Connection }
  {$IFDEF ERPAppServerAsService}
  if (AFSAppServerService.DatabasePooling) then
  begin
    FDBConnection := AFSAppServerService.fbDBConnection;
    //FAS400Connection := AFSAppServerService.AS400Connection;
    //if (FSQLServerIsActive) then
    //FMSSQLServerConnection := AFSAppServerService.msSQLServerConnection;
  {$ELSE}
  if (DSServiceContainer.DatabasePooling) then
  begin
    FDBConnection := DSServiceContainer.DBConnection;
    //FAS400Connection := DSServiceContainer.AS400Connection;
    //if (FSQLServerIsActive) then
    //FMSSQLServerConnection := DSServiceContainer.msSQLServerConnection;
  {$ENDIF}
  end else
  begin
    { Create New Firebird Connection }
    FDBConnection := TSQLConnection.Create(Self);
    with (FDBConnection) do
    begin
      {$IFDEF ERPAppServerAsService}
      DriverName := AFSAppServerService.fbDBConnection.DriverName;
      Params.Text := AFSAppServerService.fbDBConnection.Params.Text;
      {$ELSE}
      DriverName := DSServiceContainer.DBConnection.DriverName;
      Params.Text := DSServiceContainer.DBConnection.Params.Text;
      {$ENDIF}
    end;
(*******************************************************************************
    { Create New MS-SQL Server Connection }
    if (FSQLServerIsActive) then
    begin
      FMSSQLServerConnection := TADOConnection.Create(Self);
      FMSSQLServerConnection.ConnectionString :=
        Format(_MS_SQL_CONNECTION_STRING_,
        {$IFDEF ERPAppServerAsService}
        [AFSAppServerService.SQLServerPassword,
        AFSAppServerService.SQLServerUserName,
        AFSAppServerService.SQLServerDBName,
        AFSAppServerService.SQLServerHostName]);
        {$ELSE}
        [DSServiceContainer.SQLServerPassword,
        DSServiceContainer.SQLServerUserName,
        DSServiceContainer.SQLServerDBName,
        DSServiceContainer.SQLServerHostName]);
        {$ENDIF}
    end;

    { Create New AS/400 Connection }
    FAS400Connection := TSQLConnection.Create(Self);
    with (FAS400Connection) do
    begin
      DriverName :=
        {$IFDEF ERPAppServerAsService}AFSAppServerService.
        {$ELSE}DSServiceContainer.{$ENDIF}
        AS400Connection.DriverName;

      Params.Text :=
        {$IFDEF ERPAppServerAsService}AFSAppServerService.
        {$ELSE}DSServiceContainer.{$ENDIF}
        AS400Connection.Params.Text;
    end;
    {$IFDEF AS400_TRANSACTION_SUPPORT}
    FAS400Connection.Params.Values['AS400 TransIsolation'] := 'ReadCommitted';
    WriteLog('AS/400 transaction suported');
    {$ELSE}
    FAS400Connection.Params.Values['AS400 TransIsolation'] := 'DirtyRead';
    WriteLog('AS/400 transaction not suported');
    {$ENDIF}
  end;

  {$IFDEF ERPAppServerAsService}
  FAS400HPLibrary := AFSAppServerService.AS400HPLibrary;
  FAS400DBLibrary := AFSAppServerService.AS400DBLibrary;
  {$ELSE}
  FAS400HPLibrary := DSServiceContainer.AS400HPLibrary;
  FAS400DBLibrary := DSServiceContainer.AS400DBLibrary;
  {$ENDIF}

  FAS400Connection.LoginPrompt := false;

  { Established to database server }
  if (not FDBConnection.Connected) then
    try
      FDBConnection.Open();
    except
      on E: Exception do
        WriteLog('Transactional Engine Error: ' + E.Message);
    end;

  if (FSQLServerIsActive) then
  begin
    if (not FMSSQLServerConnection.Connected) then
    try
      FMSSQLServerConnection.Open();
    except
      on E: Exception do
        WriteLog('MS SQL Server Error: ' + E.Message);
    end;
  end;

*******************************************************************************)
  end;
  FDBQuery := TSQLQuery.Create(Self);

  FLanguageID := 1;
//  dsGetCodeDescList.ParamByName(_SP_PARAM_LANG_ID_).AsInteger := FLanguageID;

  for i := 0 to (ComponentCount - 1) do
  begin
    if (Components[i] is TSQLQuery) then
    begin
      (Components[i] as TSQLQuery).SQLConnection := FDBConnection;
      (Components[i] as TSQLQuery).BeforeOpen := DataSetBeforeOpen;
    end
    else if (Components[i] is TSQLStoredProc) then
    begin
      (Components[i] as TSQLStoredProc).SQLConnection := FDBConnection;
      (Components[i] as TSQLStoredProc).BeforeOpen := StoredProcedureBeforeOpen;
    end;
  end;
end;

destructor TDSHISMain.Destroy();
begin
  { Commit an active transaction }
  if (FDBConnection.InTransaction) then
  try
    FDBConnection.CommitFreeAndNil(FDBTransaction);
  except
  end;

  try
    FreeAndNil(FDBQuery);
  except
  end;

  { Release transaction object }
  try
    FreeAndNil(FDBTransaction);
  except
  end;

  { Remove database connection object }
  {$IFDEF ERPAppServerAsService}
  if (not AFSAppServerService.DatabasePooling) then
  {$ELSE}
  if (not DSServiceContainer.DatabasePooling) then
  {$ENDIF}
  begin
    { Free database connection object for none pooling connection }

    { Close database connection }
    if (FDBConnection.Connected) then
    try
      FDBConnection.Close();
    except
    end;

    try
      FreeAndNil(FDBConnection);
    except
    end;
  end
  else
  begin
    { -or-  remove pointer to pooling connection for a pooled connection }

    { Close connection when no longer available active transactions }
    if (not FDBConnection.InTransaction) then
    try
      FDBConnection.Close();
    except
    end;

    FDBConnection := nil;
  end;

  inherited Destroy();
end;

procedure TDSHISMain.InternalSyncRequest();
begin
  Exit;
end;

procedure TDSHISMain.DataSetBeforeOpen(DataSet: TDataSet);
var
  DS: TSQLQuery;
  sParam: String;
  i: integer;
begin
  DS := TSQLQuery(DataSet);
  WriteLog(DS.Name + '.SQL = ' + DS.SQL.Text);
  if (DS.Params.Count > 0) then
  begin
    WriteLog('Param Count = ' + IntToStr(DS.Params.Count));
    for i := 0 to (DS.Params.Count - 1) do
      sParam := sParam + IntToStr(i + 1) + '.' + DS.Params[i].Name + ' = <' +
        DS.Params[i].AsString + '> ';
    WriteLog(sParam);
  end
  else
    WriteLog('There is no parameter specified.');
end;

function TDSHISMain.LogIn(UserID, UserPWD: string): Boolean;
begin
  FLastErrorCode := _NO_ERROR_;
  try
    FUserID := UpperCase(Trim(UserID));
    FUserPWD := UserPWD;

    spUserLogIn.ParamByName(_SP_PARAM_UID_).AsString := FUserID;
    spUserLogIn.ParamByName(_SP_PARAM_PWD_).AsString := FUserPWD;
    spUserLogIn.ExecProc();
    FLastErrorCode := spUserLogIn.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
    FCompanyCode := spUserLogIn.ParamByName(_SP_PARAM_COMPANY_CODE_).AsLargeInt;
    FCompanyOrgCode := spUserLogIn.ParamByName
      (_SP_PARAM_COMPANY_ORG_CODE_).AsString;
    FCompanyName := spUserLogIn.ParamByName(_SP_PARAM_COMPANY_NAME_).AsString;
    FBranchCode := spUserLogIn.ParamByName(_SP_PARAM_BRANCH_CODE_).AsLargeInt;
    FBranchOrgCode := spUserLogIn.ParamByName
      (_SP_PARAM_BRANCH_ORG_CODE_).AsString;
    FBranchName := spUserLogIn.ParamByName(_SP_PARAM_BRANCH_NAME_).AsString;
    FUserName := spUserLogIn.ParamByName(_SP_PARAM_USER_NAME_).AsString;
    FUserRecID := spUserLogIn.ParamByName(_SP_PARAM_USER_REC_ID_).AsLargeInt;
    FUserRoleID := spUserLogIn.ParamByName(_SP_PARAM_ROLE_ID_).AsString;
    FUserRoleRecID := spUserLogIn.ParamByName(_SP_PARAM_ROLE_REC_ID_).AsLargeInt;
    FLanguageID := 1;
    dsMenusList.ParamByName(_SP_PARAM_USER_ID_).AsString := GetUserID;
  except
    on E: Exception do
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage := E.Message;
      WriteLog(FLastErrorMessage);
    end;
  end;
  Result := (FLastErrorCode = _NO_ERROR_);
end;

function TDSHISMain.LogOut(): Boolean;
begin
  FLastErrorCode := _NO_ERROR_;
  try
    spUserLogOut.ParamByName(_SP_PARAM_UID_).AsString := FUserID;
    spUserLogOut.ExecProc();
    FLastErrorCode := spUserLogOut.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
  except
    on E: Exception do
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage := E.Message;
      WriteLog(FLastErrorMessage);
    end;
  end;
  Result := (FLastErrorCode = _NO_ERROR_);
end;

function TDSHISMain.ExecMethod(MethodProc: TMethodProcedure;
  MethodName: string = ''): Boolean;
begin
  FLastErrorCode := _NO_ERROR_;
  try
    MethodProc();
  except
    on E: Exception do
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage := E.Message;
      WriteLog(Format(_ERR_PROCEDURE_CALL_, [ClassName, MethodName,
        FLastErrorMessage]));
    end;
  end;

  Result := (FLastErrorCode = _NO_ERROR_);
end;

procedure TDSHISMain.VerifyLoggedIn();
begin
  //
end;

procedure TDSHISMain.StoredProcedureParamsPrint(spProc: TSQLStoredProc);
var
  i: Integer;
  sParam: String;
begin
  WriteLog(spProc.Name + '.ProcedureName = ' + spProc.StoredProcName);
  if (spProc.Params.Count > 0) then
  begin
    WriteLog('Param Count = ' + IntToStr(spProc.Params.Count));
    sParam := '';
    for i := 0 to (spProc.Params.Count - 1) do
    begin
      sParam := sParam + IntToStr(i + 1) + '.' + spProc.Params[i].Name + ' = <' +
        spProc.Params[i].AsString + '>';
      if (spProc.Params[i].ParamType = ptInput) then
        sParam := sParam + '<Input>'
      else if (spProc.Params[i].ParamType = ptOutput) then
        sParam := sParam + '<Output>'
      else if (spProc.Params[i].ParamType = ptInputOutput) then
        sParam := sParam + '<InputOutput>'
      else if (spProc.Params[i].ParamType = ptResult) then
        sParam := sParam + '<Result>'
      else
        sParam := sParam + '<Unknown>'
    end;
    WriteLog(sParam);
  end else
    WriteLog('There is no parameter specified.');
end;

function TDSHISMain.StartTrans(): Boolean;
begin
  Result := ExecMethod( procedure begin FDBTransaction :=
    FDBConnection.BeginTransaction(TDBXIsolations.ReadCommitted);
  end, 'StartTrans');
end;

function TDSHISMain.CommitTrans(): Boolean;
begin
  Result := ExecMethod( procedure begin FDBConnection.CommitFreeAndNil
    (FDBTransaction); end, 'CommitTrans');
end;

function TDSHISMain.RollBackTrans(): Boolean;
begin
  Result := ExecMethod( procedure begin FDBConnection.RollbackFreeAndNil
    (FDBTransaction); end, 'RollBackTrans');
end;

function TDSHISMain.InTrans(): Boolean;
begin
  Result := FDBConnection.InTransaction;
end;

function TDSHISMain.ExecSQL(const CommandText: string): Boolean;
begin
  Result := (FDBConnection.ExecuteDirect(CommandText) > 0);
end;

function TDSHISMain.GetCompanyCode(): Int64;
begin
  Result := 1;//FCompanyCode;
end;

function TDSHISMain.GetCompanyOrgCode(): string;
begin
  Result := FCompanyOrgCode;
end;

function TDSHISMain.GetCompanyName(): string;
begin
  Result := FCompanyName;
end;

function TDSHISMain.GetBranchCode(): Int64;
begin
  Result := FBranchCode;
end;

function TDSHISMain.GetBranchOrgCode(): string;
begin
  Result := FBranchOrgCode;
end;

function TDSHISMain.GetBranchName(): string;
begin
  Result := FBranchName;
end;

function TDSHISMain.GetUserRole(): string;
begin
  Result := FUserRoleID;
end;

function TDSHISMain.GetUserID(): string;
begin
  Result := FUserID;
end;

function TDSHISMain.GetUserPWD(): string;
begin
  Result := FUserPWD;
end;

function TDSHISMain.GetUserName(): string;
begin
  Result := FUserName;
end;

procedure TDSHISMain.WriteLog(Msg: string);
var
  MsgLog: String;
begin
  MsgLog := Format(_LOG_MSG_FORMAT_, [FClientIP, FBranchOrgCode, FUserID, Msg]);

  {$IFDEF ERPAppServerAsService}
  AFSAppServerService.WriteLog(MsgLog);
  {$ELSE}
  DSServiceContainer.WriteLog(MsgLog);
  {$ENDIF}
end;

function TDSHISMain.GetLastErrorCode(): Int64;
begin
  Result := FLastErrorCode;
end;

function TDSHISMain.GetLastErrorMessage: string;
begin
  if (FLastErrorCode <> _ERROR_UNDEFINED_) then
  begin
    FDBQuery.SQL.Text := Format(_SP_ERR_MSG_, [FLastErrorCode, FLanguageID]);
    FDBQuery.Open();
    Result := FDBQuery.FieldByName(_SP_PARAM_RESULT_).AsString;
    FDBQuery.Close();
  end
  else
    Result := FLastErrorMessage;
end;

function TDSHISMain.IsEnabled(ScreenName, ComponentName: String): Boolean;
begin
  Result := True;
end;

function TDSHISMain.IsVisible(ScreenName, ComponentName: String): Boolean;
begin
  Result := True;
end;

function TDSHISMain.IsEditable(ScreenName, ComponentName: String): Boolean;
begin
  Result := True;
end;

function TDSHISMain.IsViewable(ScreenName, ComponentName: String): Boolean;
begin
  Result := True;
end;

function TDSHISMain.GetDescription(Code: LongInt; Flag: string = ''): Boolean;
begin
//  dsDescData.SQL.Text := Format(_SP_GET_TEXT_DESC_, [Code, Flag, FLanguageID]);
  Result := True;
end;

function TDSHISMain.GetDescList(Abbr_Code: string; Prefix_code: string = '0';
  Order_by: string = 'CNOCDE'): Boolean;
begin
  dsDescList.ParamByName('IPARAM_ABBR_CODE').AsString := Abbr_Code;
  dsDescList.ParamByName('IPARAM_PREFIX_CODE').AsString := Prefix_code;
  dsDescList.ParamByName('IPARAM_ORDER_BY').AsString := Order_by;
  Result := True;
end;

function TDSHISMain.GetAmphurList(ProvinceCode: String): Boolean;
begin
//  dsAmphur.ParamByName('PROVINCE_CODE').AsString := ProvinceCode;
//  Result := True;
end;

procedure TDSHISMain.SetDateParamValue(P: TParam; Value: Double);
begin
  P.DataType := ftDate;
  if (Value <> 0) then
    P.AsDate := TDate(Value)
  else
    P.Clear();
end;

procedure TDSHISMain.StoredProcedureBeforeOpen(DataSet: TDataSet);
var
  DS: TSQLStoredProc;
  sParam: String;
  i: integer;
begin
  DS := TSQLStoredProc(DataSet);
  WriteLog(DS.Name + '.StoredProcedureName = ' + DS.StoredProcName);
  if (DS.Params.Count > 0) then
  begin
    WriteLog('Param Count = ' + IntToStr(DS.Params.Count));
    for i := 0 to (DS.Params.Count - 1) do
      sParam := sParam + IntToStr(i + 1) + '.' + DS.Params[i].Name + ' = <' +
        DS.Params[i].AsString + '> ';
    WriteLog(sParam);
  end
  else
    WriteLog('There is no parameter specified.');
end;

function TDSHISMain.GetAccountInternalList(account_type: string;
  branch_code: integer = 0; loan_type: string = ''): Boolean;
begin
  dsAccountInternalList.ParamByName('iparam_account_type').AsString :=
    account_type;
  dsAccountInternalList.ParamByName('iparam_branch_code').AsInteger :=
    branch_code;
  dsAccountInternalList.ParamByName('iparam_loan_type').AsString := loan_type;
  Result := True;
end;

procedure TDSHISMain.CALWHT(_NET: Double; var _VAT, _WHT, _TOT: Double;
  JURISTIC_FLAG: String = 'N');
begin
  if JURISTIC_FLAG = 'N' THen
  begin
    _VAT := _NET * (VATRATE / 100);
    _WHT := 0.00;
  end
  Else
  Begin
    _VAT := _NET * (VATRATE / 100);
    _WHT := _NET * (WHTRATE / 100);
  End;
  _TOT := _NET + _VAT - _WHT;

end;

function TDSHISMain.GetSystemDate(): Double;
begin
  with TSQLQuery.Create(Self) do
  begin
    try
      SQL.Text := 'SELECT COALESCE(DT1CDE, CURRENT_DATE) AS SYSTEM_DATE FROM CT_ERPCDE WHERE CIDCDE = ''DAT''';
      SQLConnection := FDBConnection;
      try
        Open();
        Result := FieldByName('SYSTEM_DATE').AsFloat;
        Close();
      except
        on E: Exception do
        begin
          Result := Now();
          LastErrorCode := _ERROR_UNDEFINED_;
          LastErrorMsg := E.Message;
          WriteLog(E.Message);
        end;
      end;
    finally
      Free();
    end;
  end;
end;

function TDSHISMain.GetReportInfo(REPORT_CODE: String): Boolean;
begin
  dsReportInfo.ParamByName('IPARAM_REPORT_CODE').AsString := REPORT_CODE;
  Result := True;
end;

function TDSHISMain.GetReportList(): Boolean;
begin
  LastErrorCode := _NO_ERROR_;
  try
    //
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHISMain.GetPrintReportForm(SQLStatment: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    dsGetFrmReport.SQL.Text := SQLStatment;
    WriteLog('SQL Server: ' + dsGetFrmReport.SQL.Text);
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog('GetPrintFormContract Error: ' + E.Message);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHISMain.DeleteComponent(AppName, FormName: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with spComponentDelAll do
    begin
      ParamByName(_SP_PARAM_APP_NAME_).AsString := AppName;
      ParamByName(_SP_PARAM_FORM_NAME_).AsString := FormName;
      ExecProc();
      LastErrorCode := ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
    end;
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;


function TDSHISMain.InsertComponent(AppName, FormName, ParentName, ComponentClass,
  ComponentName, Description: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with spComponentInsUpd do
    begin
      ParamByName(_SP_PARAM_APP_NAME_).AsString := AppName;
      ParamByName(_SP_PARAM_FORM_NAME_).AsString := FormName;
      ParamByName(_SP_PARAM_PARENT_NAME_).AsString := ParentName;
      ParamByName(_SP_PARAM_COMPONENT_CLASS_).AsString := ComponentClass;
      ParamByName(_SP_PARAM_COMPONENT_NAME_).AsString := ComponentName;
      ParamByName(_SP_PARAM_COMPONENT_DESC_).AsString := Description;
      ExecProc();
      LastErrorCode := ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
    end;
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHISMain.GetComponentList(AppName, FormName: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsGetComponentList do
    begin
      ParamByName(_SP_PARAM_ROLE_ID_).AsString := GetUserRole;
      ParamByName(_SP_PARAM_APP_NAME_).AsString := AppName;
      ParamByName(_SP_PARAM_FORM_NAME_).AsString := FormName;
    end;
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

procedure TDSHISMain.SyncRequest();
begin
  Exit;
end;

function TDSHISMain.SyncChanged(): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    SyncRequest();
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHISMain.RecordVerify(key, Value: String): Boolean;
begin
  with TSQLQuery.Create(Self) do
    try
      SQL.Text := 'SELECT RESULT, LOCK_USER, LOCK_DATE FROM SP_REC_LOCK_VERIFY(' +
        QuotedStr(key) + ',' + QuotedStr(Value) + ')';
      SQLConnection := FDBConnection;
      try
        Open();
        LastErrorCode := FieldByName('RESULT').AsInteger;
        if LastErrorCode <> _NO_ERROR_ then
        begin
          LastErrorMsg :=
            Format(GetLastErrorMessage, [
              FieldByName('LOCK_USER').AsString,
              FormatDateTime('dd mmmm eeee เวลา hh:mm:ss', FieldByName('LOCK_DATE').AsDateTime)]);
          LastErrorCode := _ERROR_UNDEFINED_;
        end;
        Close();
      except
        on E: Exception do
        begin
          LastErrorCode := _ERROR_UNDEFINED_;
          LastErrorMsg := E.Message;
          WriteLog(E.Message);
        end;
      end;
    finally
      Free();
    end;
  Result := LastErrorCode = _NO_ERROR_;
end;

function TDSHISMain.RecordSetLock(key, Value: STring): Boolean;
begin
  with TSQLQuery.Create(Self) do
    try
      SQL.Text := 'SELECT RESULT FROM SP_REC_SET_LOCK(' + QuotedStr(key) + ',' +
        QuotedStr(Value) + ',' + QuotedStr(UpperCase(FUserID))+ ')';
      SQLConnection := FDBConnection;
      try
        Open();
        LastErrorCode := FieldByName('RESULT').AsInteger;
        Close();
      except
        on E: Exception do
        begin
          LastErrorCode := _ERROR_UNDEFINED_;
          LastErrorMsg := E.Message;
          WriteLog(E.Message);
        end;
      end;
    finally
      Free();
    end;
  Result := LastErrorCode = _NO_ERROR_;
end;

function TDSHISMain.RecordReleaseLock(key, Value: STring): Boolean;
begin
  with TSQLQuery.Create(Self) do
    try
      SQL.Text := 'SELECT RESULT FROM SP_REC_RELEASE_LOCK(' + QuotedStr(key) +
        ',' + QuotedStr(Value) + ',' + QuotedStr(UpperCase(FUserID))+ ')';
      SQLConnection := FDBConnection;
      try
        Open();
        LastErrorCode := FieldByName('RESULT').AsInteger;
        Close();
      except
        on E: Exception do
        begin
          LastErrorCode := _ERROR_UNDEFINED_;
          LastErrorMsg := E.Message;
          WriteLog(E.Message);
        end;
      end;
    finally
      Free();
    end;
  Result := LastErrorCode = _NO_ERROR_;
end;

function TDSHISMain.RecordReleaseAllLock(UserID: String): Boolean;
begin
  with TSQLQuery.Create(Self) do
    try
      SQL.Text := 'SELECT RESULT FROM SP_REC_RELEASE_ALL_LOCK(' +
        QuotedStr(Trim(UserID)) + ')';
      SQLConnection := FDBConnection;
      try
        Open();
        LastErrorCode := FieldByName('RESULT').AsInteger;
        Close();
      except
        on E: Exception do
        begin
          LastErrorCode := _ERROR_UNDEFINED_;
          LastErrorMsg := E.Message;
          WriteLog(E.Message);
        end;
      end;
    finally
      Free();
    end;
  Result := LastErrorCode = _NO_ERROR_;
end;


function TDSHISMain.RecordGetUserLock(key, Value: STring): String;
begin
  LastErrorCode := _NO_ERROR_;
  with TSQLQuery.Create(Self) do
    try
      SQL.Text := 'SELECT RESULT,LOCK_USER,LOCK_DATE FROM SP_REC_LOCK_VERIFY(' +
        QuotedStr(key) + ',' + QuotedStr(Value) + ')';
      SQLConnection := FDBConnection;
      try
        Open();
        LastErrorCode := FieldByName('RESULT').AsInteger;
        Result := FieldByName('LOCK_USER').AsString;
        if LastErrorCode <> _NO_ERROR_ then
        begin
          LastErrorMsg :=
            Format(GetLastErrorMessage, [
              FieldByName('LOCK_USER').AsString,
              FormatDateTime('dd mmmm eeee เวลา hh:mm:ss', FieldByName('LOCK_DATE').AsDateTime)]);
          LastErrorCode := _ERROR_UNDEFINED_;
        end;
        Close();
      except
        on E: Exception do
        begin
          Result := '';
          LastErrorCode := _ERROR_UNDEFINED_;
          LastErrorMsg := E.Message;
          WriteLog(E.Message);
        end;
      end;
    finally
      Free();
    end;
end;

//*********************** Merge for Common Prep used **************************
function TDSHISMain.GetBankBranchList(BankCode: String): Boolean;
begin
{  LastErrorCode := _NO_ERROR_;
  try
    if (dsBankBranch.Active) then
      dsBankBranch.Close();

    dsBankBranch.ParamByName('BANK_CODE').AsString := BankCode;
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(E.Message);
    end;
  end;

  Result := (LastErrorCode = _NO_ERROR_);
  }
end;

function TDSHISMain.SetMiscDataSetCommandText(CommandText: String): Boolean;
begin
  LastErrorCode := _NO_ERROR_;
  try
    if (dsMiscDataSet.Active) then
      dsMiscDataSet.Close();

    dsMiscDataSet.SQL.Text := CommandText;
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(E.Message);
    end;
  end;

  Result := (LastErrorCode = _NO_ERROR_);
end;

procedure TDSHISMain.SetRefType(Value: Integer; Flag: String = '');
begin
  dsGetCodeDescList.ParamByName(_SP_PARAM_REF_TYPE_).AsInteger := Value;
  dsGetCodeDescList.ParamByName(_SP_PARAM_FLAG_).AsString := Flag;
end;

function TDSHISMain.GetRefType(): Integer;
begin
  Result := dsGetCodeDescList.ParamByName(_SP_PARAM_REF_TYPE_).AsInteger;
end;

function TDSHISMain.GetDescListEx(Value: Integer): Boolean;
begin
  Result := True;
  try
    SetRefType(Value);
  except
    Result := False;
  end;
end;

function TDSHISMain.GetPercentVAT():Double;
begin
  with TSQLQuery.Create(Self) do
    try
      SQL.Text := 'SELECT VA2CDE FROM CT_ERPCDE WHERE FMTCDE = ''1'' AND ' +
                  ' CIDCDE = ''VA'' AND CNOCDE = ''1''';
      SQLConnection := FDBConnection;
      try
        Open();
          Result := FieldByName('VA2CDE').AsFloat;
        Close();
      except
        on E: Exception do
        begin
          Result := 7.00;
        end;
      end;
    finally
      Free();
    end;
end;

//********************** End:Merge for Common Prep used ************************

function TDSHISMain.RunDayEnd(StartDate: Double; ToDate: Double) : Boolean;
begin
    // VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;
  try

    with TSQLQuery.Create(Self) do
      try
        SQL.Text := 'SELECT  RESULT FROM SP_DAYEND_PROCESS_EX(:STDATE,:TODATE)';
        SQLConnection := FDBConnection;

        WriteLog(SQL.Text);

        params.Add;
        PARAMS[0].DataType := ftFloat;
        PARAMS[0].Name := 'STDATE';
        PARAMS[0].ParamType := ptInput;

        params.Add;
        PARAMS[1].DataType := ftFloat;
        PARAMS[1].Name := 'TODATE';
        PARAMS[1].ParamType := ptInput;


        SetDateParamValue(ParamByName('STDATE'), StartDate);
        SetDateParamValue(ParamByName('TODATE'), ToDate);

        WriteLog(SQL.Text);

        Open();
        Result := (FieldByName('RESULT').AsInteger = 0);
        Close();
//        if (Result) then
//          SyncRequest();
      finally
        Free();
      end;
  except
    on E: Exception do
    begin
      // LastErrorCode := _ERROR_UNDEFINED_;
       LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
    end;
  end;

  Result := True; // (LastErrorCode = _NO_ERROR_);
end;

function TDSHISMain.TtInsUpdHead(CMP  :String; BRN  :String;
      YAR  :Integer; PRD  :Integer; DCD  :String; var OUT_DNO  :Integer) :Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := FDBConnection;
        SQL.Text := 'SELECT  RESULT ,OUT_DNO FROM SP_STTT_INS_UPD_HEAD (' +
        ':CMP,:BRN,:YAR,:PRD,:DCD)';

        ParamByName('CMP').AsString := CMP;
        ParamByName('BRN').AsString := BRN;
        ParamByName('YAR').AsInteger := YAR;
        ParamByName('PRD').AsInteger := PRD;
        ParamByName('DCD').AsString := DCD;

        WriteLog('CMP=' + CMP);
        WriteLog('BRN=' + BRN);
        WriteLog('YAR=' + IntToStr(YAR));
        WriteLog('PRD=' + IntToStr(PRD));
        WriteLog('DCD=' + DCD);

        Open();
        OUT_DNO := FieldByName('OUT_DNO').AsInteger;
        WriteLog('OUT_DNO=' + IntToStr(OUT_DNO));
        Result := (FieldByName('result').AsInteger = 0);

       finally
        Free();
      end;
  except
    on E: Exception do
    begin
       LastErrorCode := _ERROR_UNDEFINED_;
       LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);
end;

//  ==========================Get Account from GT1 ==========================

function TDSHISMain.TtGetGT1ByNo(IYARGT1,IPRDGT1:integer;ICMPGT1,IBRNGT1 ,IDCDGT1: String;IDNOGT1:INTEGER): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtGetGt1ByNo do
   begin

    ParamByName('IYARGT1').AsInteger := IYARGT1;
    ParamByName('IPRDGT1').AsInteger := IPRDGT1;
    ParamByName('ICMPGT1').AsString := ICMPGT1;
    ParamByName('IBRNGT1').AsString := IBRNGT1;
    ParamByName('IDCDGT1').AsString := IDCDGT1;
    ParamByName('IDNOGT1').AsInteger := IDNOGT1;

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
//      LastErrorMsg := E.Message;
//      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

//====================== End Account =========================================

initialization
InitializeCriticalSection(DSMainCS);
InitializeCriticalSection(DSSyncDataCS);

finalization
DeleteCriticalSection(DSSyncDataCS);
DeleteCriticalSection(DSMainCS);

end.
