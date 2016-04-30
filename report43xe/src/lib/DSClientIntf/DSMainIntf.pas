unit DSMainIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect;

type
  TDSMainClient = class(TDSAdminClient)
  private
    FLogInCommand: TDBXCommand;
    FLogOutCommand: TDBXCommand;
    FStartTransCommand: TDBXCommand;
    FCommitTransCommand: TDBXCommand;
    FRollBackTransCommand: TDBXCommand;
    FInTransCommand: TDBXCommand;
    FExecSQLCommand: TDBXCommand;
    FGetCompanyCodeCommand: TDBXCommand;
    FGetCompanyOrgCodeCommand: TDBXCommand;
    FGetCompanyNameCommand: TDBXCommand;
    FGetBranchCodeCommand: TDBXCommand;
    FGetBranchOrgCodeCommand: TDBXCommand;
    FGetBranchNameCommand: TDBXCommand;
    FGetUserRoleCommand: TDBXCommand;
    FGetUserIDCommand: TDBXCommand;
    FGetUserPWDCommand: TDBXCommand;
    FGetUserNameCommand: TDBXCommand;
    FWriteLogCommand: TDBXCommand;
    FGetLastErrorCodeCommand: TDBXCommand;
    FGetLastErrorMessageCommand: TDBXCommand;
    FIsEnabledCommand: TDBXCommand;
    FIsVisibleCommand: TDBXCommand;
    FIsEditableCommand: TDBXCommand;
    FIsViewableCommand: TDBXCommand;
    FGetDescriptionCommand: TDBXCommand;
    FGetAmphurListCommand: TDBXCommand;
    FGetDescListCommand: TDBXCommand;
    FGetAccountInternalListCommand: TDBXCommand;
    FCALWHTCommand: TDBXCommand;
    FGetSystemDateCommand: TDBXCommand;
    FGetReportInfoCommand: TDBXCommand;
    FGetReportListCommand: TDBXCommand;
    FGetPrintReportFormCommand: TDBXCommand;
    FSyncChangedCommand: TDBXCommand;
    FDeleteComponentCommand: TDBXCommand;
    FInsertComponentCommand: TDBXCommand;
    FGetComponentListCommand: TDBXCommand;
    FRecordVerifyCommand: TDBXCommand;
    FRecordSetLockCommand: TDBXCommand;
    FRecordReleaseLockCommand: TDBXCommand;
    FRecordReleaseAllLockCommand: TDBXCommand;
    FRecordGetUserLockCommand: TDBXCommand;
    FGetAppDateAS400Command: TDBXCommand;

    //******************* Merge for Common Prep. used *************************
    FGetBankBranchListCommand: TDBXCommand;
    FSetMiscDataSetCommandTextCommand: TDBXCommand;
    FSetRefTypeCommand: TDBXCommand;
    FGetRefTypeCommand: TDBXCommand;
    FGetDescListExCommand: TDBXCommand;
    FGetPercentVATCommand: TDBXCommand;
    FRunDayEndCommand: TDBXCommand;

    FTtInsUpdHeadCommand: TDBXCommand;
    FTtGetGT1ByNoCommand: TDBXCommand;

    FServerClassName: String;
  protected
    property ServerClassName: String read FServerClassName write FServerClassName;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function LogIn(UserID: string; UserPWD: string): Boolean;
    function LogOut: Boolean;
    function StartTrans: Boolean;
    function CommitTrans: Boolean;
    function RollBackTrans: Boolean;
    function InTrans(): Boolean;
    function ExecSQL(CommandText: string): Boolean;
    function GetCompanyCode: Integer;
    function GetCompanyOrgCode: string;
    function GetCompanyName: string;
    function GetBranchCode: Integer;
    function GetBranchOrgCode: string;
    function GetBranchName: string;
    function GetUserRole: string;
    function GetUserID: string;
    function GetUserPWD: string;
    function GetUserName: string;
    procedure WriteLog(Msg: string);
    function GetLastErrorCode: Int64;
    function GetLastErrorMessage: string;
    function IsEnabled(ScreenName: string; ComponentName: string): Boolean;
    function IsVisible(ScreenName: string; ComponentName: string): Boolean;
    function IsEditable(ScreenName: string; ComponentName: string): Boolean;
    function IsViewable(ScreenName: string; ComponentName: string): Boolean;
    function GetDescription(Code: Integer; Flag: string): Boolean;
    function GetAmphurList(ProvinceCode: string): Boolean;
    function GetDescList(Abbr_Code: string ; Prefix_code : string = '0' ; Order_by : string = 'CODE' ): boolean;
    function GetAccountInternalList(account_type: string; branch_code: Integer; loan_type: string): Boolean;
    procedure CALWHT(_NET: Double; var _VAT: Double; var _WHT: Double; var _TOT: Double; JURISTIC_FLAG : String = 'N' );
    function GetSystemDate: Double;

    function GetReportInfo(REPORT_CODE: string): Boolean;
    function GetReportList: Boolean;
    function GetPrintReportForm(SQLStatment: string): Boolean;

    function SyncChanged(): Boolean;

    function DeleteComponent(AppName, FormName: String): Boolean;
    function InsertComponent(AppName, FormName, ParentName, ComponentClass,
      ComponentName, Description: string): Boolean;
    function GetComponentList(AppName: string; FormName: string): Boolean;

    function RecordVerify(key: string; Value: string): Boolean;
    function RecordSetLock(key: string; Value: string): Boolean;
    function RecordReleaseLock(key: string; Value: string): Boolean;
    function RecordReleaseAllLock(UserID: String): Boolean;
    function RecordGetUserLock(key, Value: STring): String;

    property DSServerClassName: String read FServerClassName;

    function GetAppDateAS400: Double;

    //******************* Merge for Common Prep. used *************************
    function GetBankBranchList(BankCode: String): Boolean;
    function SetMiscDataSetCommandText(CommandText: String): Boolean;
    procedure SetRefType(Value: Integer; Flag: String = '');
    function GetRefType(): Integer;
    function GetDescListEx(Value: Integer): Boolean;
    function GetPercentVAT: Double;
    function RunDayEnd(StartDate: Double; ToDate: Double): Boolean;
    function TtInsUpdHead(CMP: string; BRN: string; YAR: Integer; PRD: Integer; DCD: string; var OUT_DNO: Integer): Boolean;
    function TtGetGT1ByNo(IYARGT1: Integer; IPRDGT1: Integer; ICMPGT1: string; IBRNGT1: string; IDCDGT1: string; IDNOGT1: Integer): Boolean;

    function UnixTime(DateTime: TDateTime): longint;
    function UnixDateTimeToDelphiDateTime(UnixDateTime: longint): TDateTime;
  end;

const
SecsPerDay = 24 *60 *60;

implementation

constructor TDSMainClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSMain';
end;

constructor TDSMainClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSMain';
end;

destructor TDSMainClient.Destroy;
begin
  FreeAndNil(FLogInCommand);
  FreeAndNil(FLogOutCommand);
  FreeAndNil(FStartTransCommand);
  FreeAndNil(FCommitTransCommand);
  FreeAndNil(FRollBackTransCommand);
  FreeAndNil(FInTransCommand);
  FreeAndNil(FExecSQLCommand);
  FreeAndNil(FGetCompanyCodeCommand);
  FreeAndNil(FGetCompanyOrgCodeCommand);
  FreeAndNil(FGetCompanyNameCommand);
  FreeAndNil(FGetBranchCodeCommand);
  FreeAndNil(FGetBranchOrgCodeCommand);
  FreeAndNil(FGetBranchNameCommand);
  FreeAndNil(FGetUserRoleCommand);
  FreeAndNil(FGetUserIDCommand);
  FreeAndNil(FGetUserPWDCommand);
  FreeAndNil(FGetUserNameCommand);
  FreeAndNil(FWriteLogCommand);
  FreeAndNil(FGetLastErrorCodeCommand);
  FreeAndNil(FGetLastErrorMessageCommand);
  FreeAndNil(FIsEnabledCommand);
  FreeAndNil(FIsVisibleCommand);
  FreeAndNil(FIsEditableCommand);
  FreeAndNil(FIsViewableCommand);
  FreeAndNil(FGetDescriptionCommand);
  FreeAndNil(FGetAmphurListCommand);
  FreeAndNil(FGetDescListCommand);
  FreeAndNil(FGetAccountInternalListCommand);
  FreeAndNil(FCALWHTCommand);
  FreeAndNil(FGetReportInfoCommand);
  FreeAndNil(FGetReportListCommand);
  FreeAndNil(FGetPrintReportFormCommand);
  FreeAndNil(FSyncChangedCommand);
  FreeAndNil(FDeleteComponentCommand);
  FreeAndNil(FInsertComponentCommand);
  FreeAndNil(FGetComponentListCommand);
  FreeAndNil(FRecordVerifyCommand);
  FreeAndNil(FRecordSetLockCommand);
  FreeAndNil(FRecordReleaseLockCommand);
  FreeAndNil(FRecordReleaseAllLockCommand);
  FreeAndNil(FRecordGetUserLockCommand);
  FreeAndNil(FGetAppDateAS400Command);

  //********************* Merge for Common Prep. used **************************
  FreeAndNil(FGetBankBranchListCommand);
  FreeAndNil(FSetMiscDataSetCommandTextCommand);
  FreeAndNil(FSetRefTypeCommand);
  FreeAndNil(FGetRefTypeCommand);
  FreeAndNil(FGetDescListExCommand);
  FreeAndNil(FGetPercentVATCommand);
  FreeAndNil(FRunDayEndCommand);
  FreeAndNil(FTtInsUpdHeadCommand);
  FreeAndNil(FTtGetGT1ByNoCommand);
  inherited;
end;

function TDSMainClient.LogIn(UserID: string; UserPWD: string): Boolean;
begin
  if FLogInCommand = nil then
  begin
    FLogInCommand := FDBXConnection.CreateCommand;
    FLogInCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLogInCommand.Text := ServerClassName + '.LogIn';
    FLogInCommand.Prepare;
  end;
  FLogInCommand.Parameters[0].Value.SetWideString(UserID);
  FLogInCommand.Parameters[1].Value.SetWideString(UserPWD);
  FLogInCommand.ExecuteUpdate;
  Result := FLogInCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.LogOut: Boolean;
begin
  if FLogOutCommand = nil then
  begin
    FLogOutCommand := FDBXConnection.CreateCommand;
    FLogOutCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLogOutCommand.Text := ServerClassName + '.LogOut';
    FLogOutCommand.Prepare;
  end;
  FLogOutCommand.ExecuteUpdate;
  Result := FLogOutCommand.Parameters[0].Value.GetBoolean;
end;

function TDSMainClient.StartTrans: Boolean;
begin
  if FStartTransCommand = nil then
  begin
    FStartTransCommand := FDBXConnection.CreateCommand;
    FStartTransCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStartTransCommand.Text := ServerClassName + '.StartTrans';
    FStartTransCommand.Prepare;
  end;
  FStartTransCommand.ExecuteUpdate;
  Result := FStartTransCommand.Parameters[0].Value.GetBoolean;
end;

function TDSMainClient.CommitTrans: Boolean;
begin
  if FCommitTransCommand = nil then
  begin
    FCommitTransCommand := FDBXConnection.CreateCommand;
    FCommitTransCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCommitTransCommand.Text := ServerClassName + '.CommitTrans';
    FCommitTransCommand.Prepare;
  end;
  FCommitTransCommand.ExecuteUpdate;
  Result := FCommitTransCommand.Parameters[0].Value.GetBoolean;
end;

function TDSMainClient.RollBackTrans: Boolean;
begin
  if FRollBackTransCommand = nil then
  begin
    FRollBackTransCommand := FDBXConnection.CreateCommand;
    FRollBackTransCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRollBackTransCommand.Text := ServerClassName + '.RollBackTrans';
    FRollBackTransCommand.Prepare;
  end;
  FRollBackTransCommand.ExecuteUpdate;
  Result := FRollBackTransCommand.Parameters[0].Value.GetBoolean;
end;

function TDSMainClient.InTrans: Boolean;
begin
  if FInTransCommand = nil then
  begin
    FInTransCommand := FDBXConnection.CreateCommand;
    FInTransCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInTransCommand.Text := ServerClassName + '.InTrans';
    FInTransCommand.Prepare;
  end;
  FInTransCommand.ExecuteUpdate;
  Result := FInTransCommand.Parameters[0].Value.GetBoolean;
end;


function TDSMainClient.ExecSQL(CommandText: string): Boolean;
begin
  if FExecSQLCommand = nil then
  begin
    FExecSQLCommand := FDBXConnection.CreateCommand;
    FExecSQLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecSQLCommand.Text := ServerClassName + '.ExecSQL';
    FExecSQLCommand.Prepare;
  end;
  FExecSQLCommand.Parameters[0].Value.SetWideString(CommandText);
  FExecSQLCommand.ExecuteUpdate;
  Result := FExecSQLCommand.Parameters[1].Value.GetBoolean;
end;

function TDSMainClient.GetCompanyCode: Integer;
begin
  if FGetCompanyCodeCommand = nil then
  begin
    FGetCompanyCodeCommand := FDBXConnection.CreateCommand;
    FGetCompanyCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCompanyCodeCommand.Text := ServerClassName + '.GetCompanyCode';
    FGetCompanyCodeCommand.Prepare;
  end;
  FGetCompanyCodeCommand.ExecuteUpdate;
  Result := FGetCompanyCodeCommand.Parameters[0].Value.GetInt32;
end;

function TDSMainClient.GetCompanyOrgCode: string;
begin
  if FGetCompanyOrgCodeCommand = nil then
  begin
    FGetCompanyOrgCodeCommand := FDBXConnection.CreateCommand;
    FGetCompanyOrgCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCompanyOrgCodeCommand.Text := ServerClassName + '.GetCompanyOrgCode';
    FGetCompanyOrgCodeCommand.Prepare;
  end;
  FGetCompanyOrgCodeCommand.ExecuteUpdate;
  Result := FGetCompanyOrgCodeCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.GetCompanyName: string;
begin
  if FGetCompanyNameCommand = nil then
  begin
    FGetCompanyNameCommand := FDBXConnection.CreateCommand;
    FGetCompanyNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCompanyNameCommand.Text := ServerClassName + '.GetCompanyName';
    FGetCompanyNameCommand.Prepare;
  end;
  FGetCompanyNameCommand.ExecuteUpdate;
  Result := FGetCompanyNameCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.GetBranchCode: Integer;
begin
  if FGetBranchCodeCommand = nil then
  begin
    FGetBranchCodeCommand := FDBXConnection.CreateCommand;
    FGetBranchCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBranchCodeCommand.Text := ServerClassName + '.GetBranchCode';
    FGetBranchCodeCommand.Prepare;
  end;
  FGetBranchCodeCommand.ExecuteUpdate;
  Result := FGetBranchCodeCommand.Parameters[0].Value.GetInt32;
end;

function TDSMainClient.GetBranchOrgCode: string;
begin
  if FGetBranchOrgCodeCommand = nil then
  begin
    FGetBranchOrgCodeCommand := FDBXConnection.CreateCommand;
    FGetBranchOrgCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBranchOrgCodeCommand.Text := ServerClassName + '.GetBranchOrgCode';
    FGetBranchOrgCodeCommand.Prepare;
  end;
  FGetBranchOrgCodeCommand.ExecuteUpdate;
  Result := FGetBranchOrgCodeCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.GetBranchName: string;
begin
  if FGetBranchNameCommand = nil then
  begin
    FGetBranchNameCommand := FDBXConnection.CreateCommand;
    FGetBranchNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBranchNameCommand.Text := ServerClassName + '.GetBranchName';
    FGetBranchNameCommand.Prepare;
  end;
  FGetBranchNameCommand.ExecuteUpdate;
  Result := FGetBranchNameCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.GetUserRole: string;
begin
  if FGetUserRoleCommand = nil then
  begin
    FGetUserRoleCommand := FDBXConnection.CreateCommand;
    FGetUserRoleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUserRoleCommand.Text := ServerClassName + '.GetUserRole';
    FGetUserRoleCommand.Prepare;
  end;
  FGetUserRoleCommand.ExecuteUpdate;
  Result := FGetUserRoleCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.GetUserID: string;
begin
  if FGetUserIDCommand = nil then
  begin
    FGetUserIDCommand := FDBXConnection.CreateCommand;
    FGetUserIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUserIDCommand.Text := ServerClassName + '.GetUserID';
    FGetUserIDCommand.Prepare;
  end;
  FGetUserIDCommand.ExecuteUpdate;
  Result := FGetUserIDCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.GetUserPWD: string;
begin
  if FGetUserPWDCommand = nil then
  begin
    FGetUserPWDCommand := FDBXConnection.CreateCommand;
    FGetUserPWDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUserPWDCommand.Text := ServerClassName + '.GetUserPWD';
    FGetUserPWDCommand.Prepare;
  end;
  FGetUserPWDCommand.ExecuteUpdate;
  Result := FGetUserPWDCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.GetUserName: string;
begin
  if FGetUserNameCommand = nil then
  begin
    FGetUserNameCommand := FDBXConnection.CreateCommand;
    FGetUserNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUserNameCommand.Text := ServerClassName + '.GetUserName';
    FGetUserNameCommand.Prepare;
  end;
  FGetUserNameCommand.ExecuteUpdate;
  Result := FGetUserNameCommand.Parameters[0].Value.GetWideString;
end;

procedure TDSMainClient.WriteLog(Msg: string);
begin
  if FWriteLogCommand = nil then
  begin
    FWriteLogCommand := FDBXConnection.CreateCommand;
    FWriteLogCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FWriteLogCommand.Text := ServerClassName + '.WriteLog';
    FWriteLogCommand.Prepare;
  end;
  FWriteLogCommand.Parameters[0].Value.SetWideString(Msg);
  FWriteLogCommand.ExecuteUpdate;
end;

function TDSMainClient.GetLastErrorCode: Int64;
begin
  if FGetLastErrorCodeCommand = nil then
  begin
    FGetLastErrorCodeCommand := FDBXConnection.CreateCommand;
    FGetLastErrorCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetLastErrorCodeCommand.Text := ServerClassName + '.GetLastErrorCode';
    FGetLastErrorCodeCommand.Prepare;
  end;
  FGetLastErrorCodeCommand.ExecuteUpdate;
  Result := FGetLastErrorCodeCommand.Parameters[0].Value.GetInt64;
end;

function TDSMainClient.GetLastErrorMessage: string;
begin
  if FGetLastErrorMessageCommand = nil then
  begin
    FGetLastErrorMessageCommand := FDBXConnection.CreateCommand;
    FGetLastErrorMessageCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetLastErrorMessageCommand.Text := ServerClassName + '.GetLastErrorMessage';
    FGetLastErrorMessageCommand.Prepare;
  end;
  FGetLastErrorMessageCommand.ExecuteUpdate;
  Result := FGetLastErrorMessageCommand.Parameters[0].Value.GetWideString;
end;

function TDSMainClient.IsEnabled(ScreenName: string; ComponentName: string): Boolean;
begin
  if FIsEnabledCommand = nil then
  begin
    FIsEnabledCommand := FDBXConnection.CreateCommand;
    FIsEnabledCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsEnabledCommand.Text := ServerClassName + '.IsEnabled';
    FIsEnabledCommand.Prepare;
  end;
  FIsEnabledCommand.Parameters[0].Value.SetWideString(ScreenName);
  FIsEnabledCommand.Parameters[1].Value.SetWideString(ComponentName);
  FIsEnabledCommand.ExecuteUpdate;
  Result := FIsEnabledCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.IsVisible(ScreenName: string; ComponentName: string): Boolean;
begin
  if FIsVisibleCommand = nil then
  begin
    FIsVisibleCommand := FDBXConnection.CreateCommand;
    FIsVisibleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsVisibleCommand.Text := ServerClassName + '.IsVisible';
    FIsVisibleCommand.Prepare;
  end;
  FIsVisibleCommand.Parameters[0].Value.SetWideString(ScreenName);
  FIsVisibleCommand.Parameters[1].Value.SetWideString(ComponentName);
  FIsVisibleCommand.ExecuteUpdate;
  Result := FIsVisibleCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.IsEditable(ScreenName: string; ComponentName: string): Boolean;
begin
  if FIsEditableCommand = nil then
  begin
    FIsEditableCommand := FDBXConnection.CreateCommand;
    FIsEditableCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsEditableCommand.Text := ServerClassName + '.IsEditable';
    FIsEditableCommand.Prepare;
  end;
  FIsEditableCommand.Parameters[0].Value.SetWideString(ScreenName);
  FIsEditableCommand.Parameters[1].Value.SetWideString(ComponentName);
  FIsEditableCommand.ExecuteUpdate;
  Result := FIsEditableCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.IsViewable(ScreenName: string; ComponentName: string): Boolean;
begin
  if FIsViewableCommand = nil then
  begin
    FIsViewableCommand := FDBXConnection.CreateCommand;
    FIsViewableCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsViewableCommand.Text := ServerClassName + '.IsViewable';
    FIsViewableCommand.Prepare;
  end;
  FIsViewableCommand.Parameters[0].Value.SetWideString(ScreenName);
  FIsViewableCommand.Parameters[1].Value.SetWideString(ComponentName);
  FIsViewableCommand.ExecuteUpdate;
  Result := FIsViewableCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.GetDescription(Code: Integer; Flag: string): Boolean;
begin
  if FGetDescriptionCommand = nil then
  begin
    FGetDescriptionCommand := FDBXConnection.CreateCommand;
    FGetDescriptionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDescriptionCommand.Text := ServerClassName + '.GetDescription';
    FGetDescriptionCommand.Prepare;
  end;
  FGetDescriptionCommand.Parameters[0].Value.SetInt32(Code);
  FGetDescriptionCommand.Parameters[1].Value.SetWideString(Flag);
  FGetDescriptionCommand.ExecuteUpdate;
  Result := FGetDescriptionCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.GetAmphurList(ProvinceCode: string): Boolean;
begin
  if FGetAmphurListCommand = nil then
  begin
    FGetAmphurListCommand := FDBXConnection.CreateCommand;
    FGetAmphurListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAmphurListCommand.Text := ServerClassName + '.GetAmphurList';
    FGetAmphurListCommand.Prepare;
  end;
  FGetAmphurListCommand.Parameters[0].Value.SetWideString(ProvinceCode);
  FGetAmphurListCommand.ExecuteUpdate;
  Result := FGetAmphurListCommand.Parameters[1].Value.GetBoolean;
end;

//function TDSMainClient.GetDescList(Abbr_Code: string): Boolean;
function TDSMainClient.GetDescList(Abbr_Code: string ; Prefix_code : string = '0' ; Order_by : string = 'CODE'): boolean;
begin
  if FGetDescListCommand = nil then
  begin
    FGetDescListCommand := FDBXConnection.CreateCommand;
    FGetDescListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDescListCommand.Text := ServerClassName + '.GetDescList';
    FGetDescListCommand.Prepare;
  end;
  FGetDescListCommand.Parameters[0].Value.SetWideString(Abbr_Code);
  FGetDescListCommand.Parameters[1].Value.SetWideString(Prefix_code);
  FGetDescListCommand.Parameters[2].Value.SetWideString(Order_by);
  FGetDescListCommand.ExecuteUpdate;
  Result := FGetDescListCommand.Parameters[3].Value.GetBoolean;
end;



function TDSMainClient.GetAccountInternalList(account_type: string; branch_code: Integer; loan_type: string): Boolean;
begin
  if FGetAccountInternalListCommand = nil then
  begin
    FGetAccountInternalListCommand := FDBXConnection.CreateCommand;
    FGetAccountInternalListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAccountInternalListCommand.Text := ServerClassName + '.GetAccountInternalList';
    FGetAccountInternalListCommand.Prepare;
  end;
  FGetAccountInternalListCommand.Parameters[0].Value.SetWideString(account_type);
  FGetAccountInternalListCommand.Parameters[1].Value.SetInt32(branch_code);
  FGetAccountInternalListCommand.Parameters[2].Value.SetWideString(loan_type);
  FGetAccountInternalListCommand.ExecuteUpdate;
  Result := FGetAccountInternalListCommand.Parameters[3].Value.GetBoolean;
end;


procedure TDSMainClient.CALWHT(_NET: Double; var _VAT: Double; var _WHT: Double; var _TOT: Double; JURISTIC_FLAG : String = 'N' );
begin
  if FCALWHTCommand = nil then
  begin
    FCALWHTCommand := FDBXConnection.CreateCommand;
    FCALWHTCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCALWHTCommand.Text := ServerClassName + '.CALWHT';
    FCALWHTCommand.Prepare;
  end;
  FCALWHTCommand.Parameters[0].Value.SetDouble(_NET);
  FCALWHTCommand.Parameters[1].Value.SetDouble(_VAT);
  FCALWHTCommand.Parameters[2].Value.SetDouble(_WHT);
  FCALWHTCommand.Parameters[3].Value.SetDouble(_TOT);
  FCALWHTCommand.Parameters[4].Value.SetWideString(JURISTIC_FLAG);
  FCALWHTCommand.ExecuteUpdate;
  _VAT := FCALWHTCommand.Parameters[1].Value.GetDouble;
  _WHT := FCALWHTCommand.Parameters[2].Value.GetDouble;
  _TOT := FCALWHTCommand.Parameters[3].Value.GetDouble;
end;

function TDSMainClient.GetSystemDate: Double;
begin
  if FGetSystemDateCommand = nil then
  begin
    FGetSystemDateCommand := FDBXConnection.CreateCommand;
    FGetSystemDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetSystemDateCommand.Text := ServerClassName + '.GetSystemDate';
    FGetSystemDateCommand.Prepare;
  end;
  FGetSystemDateCommand.ExecuteUpdate;
  Result := FGetSystemDateCommand.Parameters[0].Value.GetDouble;
end;

function TDSMainClient.GetReportInfo(REPORT_CODE: string): Boolean;
begin
  if FGetReportInfoCommand = nil then
  begin
    FGetReportInfoCommand := FDBXConnection.CreateCommand;
    FGetReportInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetReportInfoCommand.Text := ServerClassName + '.GetReportInfo';
    FGetReportInfoCommand.Prepare;
  end;
  FGetReportInfoCommand.Parameters[0].Value.SetWideString(REPORT_CODE);
  FGetReportInfoCommand.ExecuteUpdate;
  Result := FGetReportInfoCommand.Parameters[1].Value.GetBoolean;
end;

function TDSMainClient.GetReportList: Boolean;
begin
  if FGetReportListCommand = nil then
  begin
    FGetReportListCommand := FDBXConnection.CreateCommand;
    FGetReportListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetReportListCommand.Text := ServerClassName + '.GetReportList';
    FGetReportListCommand.Prepare;
  end;
  FGetReportListCommand.ExecuteUpdate;
  Result := FGetReportListCommand.Parameters[0].Value.GetBoolean;
end;

function TDSMainClient.GetPrintReportForm(SQLStatment: string): Boolean;
begin
  if FGetPrintReportFormCommand = nil then
  begin
    FGetPrintReportFormCommand := FDBXConnection.CreateCommand;
    FGetPrintReportFormCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPrintReportFormCommand.Text := ServerClassName + '.GetPrintReportForm';
    FGetPrintReportFormCommand.Prepare;
  end;
  FGetPrintReportFormCommand.Parameters[0].Value.SetWideString(SQLStatment);
  FGetPrintReportFormCommand.ExecuteUpdate;
  Result := FGetPrintReportFormCommand.Parameters[1].Value.GetBoolean;
end;

function TDSMainClient.SyncChanged(): Boolean;
begin
  if FSyncChangedCommand = nil then
  begin
    FSyncChangedCommand := FDBXConnection.CreateCommand;
    FSyncChangedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSyncChangedCommand.Text := ServerClassName + '.SyncChanged';
    FSyncChangedCommand.Prepare;
  end;
  FSyncChangedCommand.ExecuteUpdate;
  Result := FSyncChangedCommand.Parameters[0].Value.GetBoolean;
end;


function TDSMainClient.DeleteComponent(AppName, FormName: string): Boolean;
begin
  if FDeleteComponentCommand = nil then
  begin
    FDeleteComponentCommand := FDBXConnection.CreateCommand;
    FDeleteComponentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteComponentCommand.Text := ServerClassName + '.DeleteComponent';
    FDeleteComponentCommand.Prepare;
  end;
  FDeleteComponentCommand.Parameters[0].Value.SetWideString(AppName);
  FDeleteComponentCommand.Parameters[1].Value.SetWideString(FormName);
  FDeleteComponentCommand.ExecuteUpdate;
  Result := FDeleteComponentCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.InsertComponent(AppName, FormName, ParentName, ComponentClass,
  ComponentName, Description: string): Boolean;
begin
  if FInsertComponentCommand = nil then
  begin
    FInsertComponentCommand := FDBXConnection.CreateCommand;
    FInsertComponentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertComponentCommand.Text := ServerClassName + '.InsertComponent';
    FInsertComponentCommand.Prepare;
  end;
  FInsertComponentCommand.Parameters[0].Value.SetWideString(AppName);
  FInsertComponentCommand.Parameters[1].Value.SetWideString(FormName);
  FInsertComponentCommand.Parameters[2].Value.SetWideString(ParentName);
  FInsertComponentCommand.Parameters[3].Value.SetWideString(ComponentClass);
  FInsertComponentCommand.Parameters[4].Value.SetWideString(ComponentName);
  FInsertComponentCommand.Parameters[5].Value.SetWideString(Description);
  FInsertComponentCommand.ExecuteUpdate;
  Result := FInsertComponentCommand.Parameters[6].Value.GetBoolean;
end;


function TDSMainClient.GetComponentList(AppName: string; FormName: string): Boolean;
begin
  if FGetComponentListCommand = nil then
  begin
    FGetComponentListCommand := FDBXConnection.CreateCommand;
    FGetComponentListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetComponentListCommand.Text := ServerClassName + '.GetComponentList';
    FGetComponentListCommand.Prepare;
  end;
  FGetComponentListCommand.Parameters[0].Value.SetWideString(AppName);
  FGetComponentListCommand.Parameters[1].Value.SetWideString(FormName);
  FGetComponentListCommand.ExecuteUpdate;
  Result := FGetComponentListCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.RecordVerify(key: string; Value: string): Boolean;
begin
  if FRecordVerifyCommand = nil then
  begin
    FRecordVerifyCommand := FDBXConnection.CreateCommand;
    FRecordVerifyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecordVerifyCommand.Text := ServerClassName + '.RecordVerify';
    FRecordVerifyCommand.Prepare;
  end;
  FRecordVerifyCommand.Parameters[0].Value.SetWideString(key);
  FRecordVerifyCommand.Parameters[1].Value.SetWideString(Value);
  FRecordVerifyCommand.ExecuteUpdate;
  Result := FRecordVerifyCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.RecordSetLock(key: string; Value: string): Boolean;
begin
  if FRecordSetLockCommand = nil then
  begin
    FRecordSetLockCommand := FDBXConnection.CreateCommand;
    FRecordSetLockCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecordSetLockCommand.Text := ServerClassName + '.RecordSetLock';
    FRecordSetLockCommand.Prepare;
  end;
  FRecordSetLockCommand.Parameters[0].Value.SetWideString(key);
  FRecordSetLockCommand.Parameters[1].Value.SetWideString(Value);
  FRecordSetLockCommand.ExecuteUpdate;
  Result := FRecordSetLockCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.RecordReleaseLock(key: string; Value: string): Boolean;
begin
  if FRecordReleaseLockCommand = nil then
  begin
    FRecordReleaseLockCommand := FDBXConnection.CreateCommand;
    FRecordReleaseLockCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecordReleaseLockCommand.Text := ServerClassName + '.RecordReleaseLock';
    FRecordReleaseLockCommand.Prepare;
  end;
  FRecordReleaseLockCommand.Parameters[0].Value.SetWideString(key);
  FRecordReleaseLockCommand.Parameters[1].Value.SetWideString(Value);
  FRecordReleaseLockCommand.ExecuteUpdate;
  Result := FRecordReleaseLockCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.RecordReleaseAllLock(UserID: String): Boolean;
begin
  if FRecordReleaseAllLockCommand = nil then
  begin
    FRecordReleaseAllLockCommand := FDBXConnection.CreateCommand;
    FRecordReleaseAllLockCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecordReleaseAllLockCommand.Text := ServerClassName + '.RecordReleaseAllLock';
    FRecordReleaseAllLockCommand.Prepare;
  end;
  FRecordReleaseAllLockCommand.Parameters[0].Value.SetWideString(UserID);
  FRecordReleaseAllLockCommand.ExecuteUpdate;
  Result := FRecordReleaseAllLockCommand.Parameters[1].Value.GetBoolean;
end;


function TDSMainClient.RecordGetUserLock(key: string; Value: string): String;
begin
  if FRecordGetUserLockCommand = nil then
  begin
    FRecordGetUserLockCommand := FDBXConnection.CreateCommand;
    FRecordGetUserLockCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecordGetUserLockCommand.Text := ServerClassName + '.RecordGetUserLock';
    FRecordGetUserLockCommand.Prepare;
  end;
  FRecordGetUserLockCommand.Parameters[0].Value.SetWideString(key);
  FRecordGetUserLockCommand.Parameters[1].Value.SetWideString(Value);
  FRecordGetUserLockCommand.ExecuteUpdate;
  Result := FRecordGetUserLockCommand.Parameters[2].Value.GetString;
end;


function TDSMainClient.GetAppDateAS400: Double;
begin
  if FGetAppDateAS400Command = nil then
  begin
    FGetAppDateAS400Command := FDBXConnection.CreateCommand;
    FGetAppDateAS400Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAppDateAS400Command.Text := ServerClassName + '.GetAppDateAS400';
    FGetAppDateAS400Command.Prepare;
  end;
  FGetAppDateAS400Command.ExecuteUpdate;
  Result := FGetAppDateAS400Command.Parameters[0].Value.GetDouble;
end;

//********************** Merge for Common Prep. used ***************************
function  TDSMainClient.GetBankBranchList(BankCode: String): Boolean;
begin
  if FGetBankBranchListCommand = nil then
  begin
    FGetBankBranchListCommand := FDBXConnection.CreateCommand;
    FGetBankBranchListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBankBranchListCommand.Text := ServerClassName + '.GetBankBranchList';
    FGetBankBranchListCommand.Prepare;
  end;
  FGetBankBranchListCommand.Parameters[0].Value.SetWideString(BankCode);
  FGetBankBranchListCommand.ExecuteUpdate;
  Result := FGetBankBranchListCommand.Parameters[1].Value.GetBoolean;
end;

function  TDSMainClient.SetMiscDataSetCommandText(CommandText: String): Boolean;
begin
  if FSetMiscDataSetCommandTextCommand = nil then
  begin
    FSetMiscDataSetCommandTextCommand := FDBXConnection.CreateCommand;
    FSetMiscDataSetCommandTextCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetMiscDataSetCommandTextCommand.Text := ServerClassName + '.SetMiscDataSetCommandText';
    FSetMiscDataSetCommandTextCommand.Prepare;
  end;
  FSetMiscDataSetCommandTextCommand.Parameters[0].Value.SetWideString(CommandText);
  FSetMiscDataSetCommandTextCommand.ExecuteUpdate;
  Result := FSetMiscDataSetCommandTextCommand.Parameters[1].Value.GetBoolean;
end;

procedure  TDSMainClient.SetRefType(Value: Integer; Flag: String = '');
begin
  if FSetRefTypeCommand = nil then
  begin
    FSetRefTypeCommand := FDBXConnection.CreateCommand;
    FSetRefTypeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetRefTypeCommand.Text := ServerClassName + '.SetRefType';
    FSetRefTypeCommand.Prepare;
  end;
  FSetRefTypeCommand.Parameters[0].Value.SetInt32(Value);
  FSetRefTypeCommand.Parameters[1].Value.SetWideString(Flag);
  FSetRefTypeCommand.ExecuteUpdate;
end;

function  TDSMainClient.GetRefType(): Integer;
begin
  if FGetRefTypeCommand = nil then
  begin
    FGetRefTypeCommand := FDBXConnection.CreateCommand;
    FGetRefTypeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetRefTypeCommand.Text := ServerClassName + '.GetRefType';
    FGetRefTypeCommand.Prepare;
  end;
  FGetRefTypeCommand.ExecuteUpdate;
  Result := FGetRefTypeCommand.Parameters[0].Value.GetInt32;
end;

function  TDSMainClient.GetDescListEx(Value: Integer): Boolean;
begin
  if FGetDescListExCommand = nil then
  begin
    FGetDescListExCommand := FDBXConnection.CreateCommand;
    FGetDescListExCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDescListExCommand.Text := ServerClassName + '.GetDescListEx';
    FGetDescListExCommand.Prepare;
  end;
  FGetDescListExCommand.Parameters[0].Value.SetInt32(Value);
  FGetDescListExCommand.ExecuteUpdate;
  Result := FGetDescListExCommand.Parameters[1].Value.GetBoolean;
end;

function TDSMainClient.GetPercentVAT: Double;
begin
  if FGetPercentVATCommand = nil then
  begin
    FGetPercentVATCommand := FDBXConnection.CreateCommand;
    FGetPercentVATCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPercentVATCommand.Text := ServerClassName + '.GetPercentVAT';
    FGetPercentVATCommand.Prepare;
  end;
  FGetPercentVATCommand.ExecuteUpdate;
  Result := FGetPercentVATCommand.Parameters[0].Value.GetDouble;
end;

function TDSMainClient.RunDayEnd(StartDate: Double; ToDate: Double): Boolean;
begin
  if FRunDayEndCommand = nil then
  begin
    FRunDayEndCommand := FDBXConnection.CreateCommand;
    FRunDayEndCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRunDayEndCommand.Text := ServerClassName + '.RunDayEnd';
    FRunDayEndCommand.Prepare;
  end;
  FRunDayEndCommand.Parameters[0].Value.SetDouble(StartDate);
  FRunDayEndCommand.Parameters[1].Value.SetDouble(ToDate);
  FRunDayEndCommand.ExecuteUpdate;
  Result := FRunDayEndCommand.Parameters[2].Value.GetBoolean;
end;

function TDSMainClient.TtInsUpdHead(CMP: string; BRN: string; YAR: Integer; PRD: Integer; DCD: string; var OUT_DNO: Integer): Boolean;
begin
  if FTtInsUpdHeadCommand = nil then
  begin
    FTtInsUpdHeadCommand := FDBXConnection.CreateCommand;
    FTtInsUpdHeadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtInsUpdHeadCommand.Text := ServerClassName + '.TtInsUpdHead';
    FTtInsUpdHeadCommand.Prepare;
  end;
  FTtInsUpdHeadCommand.Parameters[0].Value.SetWideString(CMP);
  FTtInsUpdHeadCommand.Parameters[1].Value.SetWideString(BRN);
  FTtInsUpdHeadCommand.Parameters[2].Value.SetInt32(YAR);
  FTtInsUpdHeadCommand.Parameters[3].Value.SetInt32(PRD);
  FTtInsUpdHeadCommand.Parameters[4].Value.SetWideString(DCD);
  FTtInsUpdHeadCommand.Parameters[5].Value.SetInt32(OUT_DNO);
  FTtInsUpdHeadCommand.ExecuteUpdate;
  OUT_DNO := FTtInsUpdHeadCommand.Parameters[5].Value.GetInt32;
  Result := FTtInsUpdHeadCommand.Parameters[6].Value.GetBoolean;
end;

function TDSMainClient.UnixDateTimeToDelphiDateTime(
  UnixDateTime: Integer): TDateTime;
begin
 result := EncodeDate(1970, 1, 1) +( UnixDateTime / SecsPerDay );
end;

function TDSMainClient.UnixTime(DateTime: TDateTime): longint;
begin
 result := Trunc( (DateTime -EncodeDate(1970,1,1)) * SecsPerDay);
end;

function TDSMainClient.TtGetGT1ByNo(IYARGT1: Integer; IPRDGT1: Integer; ICMPGT1: string; IBRNGT1: string; IDCDGT1: string; IDNOGT1: Integer): Boolean;
begin
  if FTtGetGT1ByNoCommand = nil then
  begin
    FTtGetGT1ByNoCommand := FDBXConnection.CreateCommand;
    FTtGetGT1ByNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTtGetGT1ByNoCommand.Text := ServerClassName + '.TtGetGT1ByNo';
    FTtGetGT1ByNoCommand.Prepare;
  end;
  FTtGetGT1ByNoCommand.Parameters[0].Value.SetInt32(IYARGT1);
  FTtGetGT1ByNoCommand.Parameters[1].Value.SetInt32(IPRDGT1);
  FTtGetGT1ByNoCommand.Parameters[2].Value.SetWideString(ICMPGT1);
  FTtGetGT1ByNoCommand.Parameters[3].Value.SetWideString(IBRNGT1);
  FTtGetGT1ByNoCommand.Parameters[4].Value.SetWideString(IDCDGT1);
  FTtGetGT1ByNoCommand.Parameters[5].Value.SetInt32(IDNOGT1);
  FTtGetGT1ByNoCommand.ExecuteUpdate;
  Result := FTtGetGT1ByNoCommand.Parameters[6].Value.GetBoolean;
end;


end.
