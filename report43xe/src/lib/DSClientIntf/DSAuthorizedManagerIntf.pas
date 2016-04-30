unit DSAuthorizedManagerIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSAuthorizedManagerClient = class(TDSMainClient)
  private
    FLogInExCommand: TDBXCommand;
    FAddComponentCommand: TDBXCommand;
    FAddComponentExCommand: TDBXCommand;
    FDeleteComponentCommand: TDBXCommand;
    FAddAuthorizedRoleCommand: TDBXCommand;
    FAddAuthorizedUserCommand: TDBXCommand;
    FChangeUserRoleCommand: TDBXCommand;
    FUseSelfAuthorizedCommand: TDBXCommand;
    FRemoveSelfAuthorizedCommand: TDBXCommand;
    FGetRoleListCommand: TDBXCommand;
    FGetRoleInfoCommand: TDBXCommand;
    FAddRoleCommand: TDBXCommand;
    FDeleteRoleCommand: TDBXCommand;
    FGetUserListCommand: TDBXCommand;
    FGetUserInfoCommand: TDBXCommand;
    FAddUserCommand: TDBXCommand;
    FDeleteUserCommand: TDBXCommand;
    FChangeUserPasswordCommand: TDBXCommand;
    FResetUserPasswordCommand: TDBXCommand;
    FUserReleaseLockCommand: TDBXCommand;
    FUserLockUnLockCommand: TDBXCommand;
    FIsPasswordMatchedPolicyCommand: TDBXCommand;
    FGetMaximumUserIDLengthCommand: TDBXCommand;
    FGetMinimumUserIDLengthCommand: TDBXCommand;
    FGetMaximumPasswordLengthCommand: TDBXCommand;
    FGetMinimumPasswordLengthCommand: TDBXCommand;
    FGetMaximumSignedOnErrorCommand: TDBXCommand;
    FGetWarningBeforePasswordExpiredCommand: TDBXCommand;
    FGetEnabledPasswordHistoryCommand: TDBXCommand;
    FGetEnabledPasswordHistoryNumberCommand: TDBXCommand;
    FGetEnabledRepeatingCharCommand: TDBXCommand;
    FGetEnabledPasswordSimilarToPreviousCommand: TDBXCommand;
    FGetEnabledStrenghtPasswordPolicyCommand: TDBXCommand;
    FSetMaximumUserIDLengthCommand: TDBXCommand;
    FSetMinimumUserIDLengthCommand: TDBXCommand;
    FSetMaximumPasswordLengthCommand: TDBXCommand;
    FSetMinimumPasswordLengthCommand: TDBXCommand;
    FSetMaximumSignedOnErrorCommand: TDBXCommand;
    FSetWarningBeforePasswordExpiredCommand: TDBXCommand;
    FSetEnabledPasswordHistoryCommand: TDBXCommand;
    FSetEnabledPasswordHistoryNumberCommand: TDBXCommand;
    FSetEnabledRepeatingCharCommand: TDBXCommand;
    FSetEnabledPasswordSimilarToPreviousCommand: TDBXCommand;
    FSetEnabledStrenghtPasswordPolicyCommand: TDBXCommand;
    FGetAppListCommand: TDBXCommand;
    FGetFormListCommand: TDBXCommand;
    FGetControlListCommand: TDBXCommand;
    FUpdatePermissionCommand: TDBXCommand;
    FUpdateComponentDescCommand: TDBXCommand;
    FSaveAllAuthenticationConfigureCommand: TDBXCommand;
    FLoadAllAuthenticationConfigureCommand: TDBXCommand;
    FGetNumberOfDaysBeforeExpiredCommand: TDBXCommand;
    FGetLastSignedOnDateCommand: TDBXCommand;
    FGetPasswordAgeCommand: TDBXCommand;
    FSetPasswordAgeCommand: TDBXCommand;
    FGetProcSourceCommand: TDBXCommand;
    FGetDataSelectionCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function LogInEx(UserID: string; UserPWD: string): Boolean;
    function AddComponent(ScreenName: string; ComponentName: string): Boolean;
    function AddComponentEx(ScreenName: string; ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
    function DeleteComponent(ScreenName: string; ComponentName: string): Boolean;
    function AddAuthorizedRole(RoleID: string; ScreenName: string; ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
    function AddAuthorizedUser(UserID: string; ScreenName: string; ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
    function ChangeUserRole(RoleID: string): Boolean;
    function UseSelfAuthorized(RoleID: string): Boolean;
    function RemoveSelfAuthorized(RoleID: string): Boolean;
    function GetRoleList(Criteria: string; SearchMode: Integer; OrdeFields: string): Boolean;
    function GetRoleInfo(RoleRecID: Int64): Boolean;
    function AddRole(RoleRecID: Int64; RoleID: string; StatusFlag: string; RoleDesc: string): Boolean;
    function DeleteRole(RoleRecID: Int64): Boolean;
    function GetUserList(Criteria: string; SearchMode: Integer; OrdeFields: string): Boolean;
    function GetUserInfo(UserRecID: Int64): Boolean;
    function AddUser(UserRecID, RoleRecID, BranchCode: Int64;
      UserID, UserPWD, UserName, StatusFlag: string;
      ValidFrom, ValidThru, SuspendedDate: Double; Description: string): Boolean;
    function DeleteUser(UserRecID: Int64): Boolean;
    function ChangeUserPassword(UID: string; NewPWD: string): Boolean;
    function ResetUserPassword(UID: string): Boolean;
    function UserReleaseLock(UID: string): Boolean;
    function UserLockUnLock(UID: string; IsLogged: Boolean): Boolean;
    function IsPasswordMatchedPolicy(UserID, PWD, OldPWD: String): Boolean;
    function GetMaximumUserIDLength: Integer;
    function GetMinimumUserIDLength: Integer;
    function GetMaximumPasswordLength: Integer;
    function GetMinimumPasswordLength: Integer;
    function GetMaximumSignedOnError: Integer;
    function GetWarningBeforePasswordExpired: Integer;
    function GetEnabledPasswordHistory: Boolean;
    function GetEnabledPasswordHistoryNumber: Integer;
    function GetEnabledRepeatingChar: Boolean;
    function GetEnabledPasswordSimilarToPrevious: Boolean;
    function GetEnabledStrenghtPasswordPolicy: Boolean;
    procedure SetMaximumUserIDLength(Value: Integer);
    procedure SetMinimumUserIDLength(Value: Integer);
    procedure SetMaximumPasswordLength(Value: Integer);
    procedure SetMinimumPasswordLength(Value: Integer);
    procedure SetMaximumSignedOnError(Value: Integer);
    procedure SetWarningBeforePasswordExpired(Value: Integer);
    procedure SetEnabledPasswordHistory(Value: Boolean);
    procedure SetEnabledPasswordHistoryNumber(Value: Integer);
    procedure SetEnabledRepeatingChar(Value: Boolean);
    procedure SetEnabledPasswordSimilarToPrevious(Value: Boolean);
    procedure SetEnabledStrenghtPasswordPolicy(Value: Boolean);
    function GetAppList(RoleID: String): Boolean;
    function GetFormList(ParentAppID: Int64): Boolean;
    function GetControlList(ParentFormID: Int64; RoleID: String): Boolean;
    function UpdatePermission(RoleID: String; ComponentID: Int64; IsVisibled: Boolean; IsEnabled: Boolean; IsApplication: Boolean): Boolean;
    function UpdateComponentDesc(ComponentID: Int64; ComponentDesc: String): Boolean;
    function SaveAllAuthenticationConfigure(): Boolean;
    function LoadAllAuthenticationConfigure(): Boolean;
    function GetNumberOfDaysBeforeExpired(): Integer;
    function GetLastSignedOnDate(): Double;
    function GetPasswordAge(): Integer;
    function SetPasswordAge(Value: Integer): Boolean;
    function GetProcSource(ProcName: String): String;
    function GetDataSelection(Sql_text: string): Boolean;
  end;

implementation

constructor TDSAuthorizedManagerClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSAuthorizedManager';
end;

constructor TDSAuthorizedManagerClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSAuthorizedManager';
end;

destructor TDSAuthorizedManagerClient.Destroy;
begin
  FreeAndNil(FLogInExCommand);
  FreeAndNil(FAddComponentCommand);
  FreeAndNil(FAddComponentExCommand);
  FreeAndNil(FDeleteComponentCommand);
  FreeAndNil(FAddAuthorizedRoleCommand);
  FreeAndNil(FAddAuthorizedUserCommand);
  FreeAndNil(FChangeUserRoleCommand);
  FreeAndNil(FUseSelfAuthorizedCommand);
  FreeAndNil(FRemoveSelfAuthorizedCommand);
  FreeAndNil(FGetRoleListCommand);
  FreeAndNil(FGetRoleInfoCommand);
  FreeAndNil(FAddRoleCommand);
  FreeAndNil(FDeleteRoleCommand);
  FreeAndNil(FGetUserListCommand);
  FreeAndNil(FGetUserInfoCommand);
  FreeAndNil(FAddUserCommand);
  FreeAndNil(FDeleteUserCommand);
  FreeAndNil(FChangeUserPasswordCommand);
  FreeAndNil(FResetUserPasswordCommand);
  FreeAndNil(FUserReleaseLockCommand);
  FreeAndNil(FUserLockUnLockCommand);
  FreeAndNil(FIsPasswordMatchedPolicyCommand);
  FreeAndNil(FGetMaximumUserIDLengthCommand);
  FreeAndNil(FGetMinimumUserIDLengthCommand);
  FreeAndNil(FGetMaximumPasswordLengthCommand);
  FreeAndNil(FGetMinimumPasswordLengthCommand);
  FreeAndNil(FGetMaximumSignedOnErrorCommand);
  FreeAndNil(FGetWarningBeforePasswordExpiredCommand);
  FreeAndNil(FGetEnabledPasswordHistoryCommand);
  FreeAndNil(FGetEnabledPasswordHistoryNumberCommand);
  FreeAndNil(FGetEnabledRepeatingCharCommand);
  FreeAndNil(FGetEnabledPasswordSimilarToPreviousCommand);
  FreeAndNil(FGetEnabledStrenghtPasswordPolicyCommand);
  FreeAndNil(FSetMaximumUserIDLengthCommand);
  FreeAndNil(FSetMinimumUserIDLengthCommand);
  FreeAndNil(FSetMaximumPasswordLengthCommand);
  FreeAndNil(FSetMinimumPasswordLengthCommand);
  FreeAndNil(FSetMaximumSignedOnErrorCommand);
  FreeAndNil(FSetWarningBeforePasswordExpiredCommand);
  FreeAndNil(FSetEnabledPasswordHistoryCommand);
  FreeAndNil(FSetEnabledPasswordHistoryNumberCommand);
  FreeAndNil(FSetEnabledRepeatingCharCommand);
  FreeAndNil(FSetEnabledPasswordSimilarToPreviousCommand);
  FreeAndNil(FSetEnabledStrenghtPasswordPolicyCommand);
  FreeAndNil(FGetAppListCommand);
  FreeAndNil(FGetFormListCommand);
  FreeAndNil(FGetControlListCommand);
  FreeAndNil(FUpdatePermissionCommand);
  FreeAndNil(FUpdateComponentDescCommand);
  FreeAndNil(FSaveAllAuthenticationConfigureCommand);
  FreeAndNil(FLoadAllAuthenticationConfigureCommand);
  FreeAndNil(FGetNumberOfDaysBeforeExpiredCommand);
  FreeAndNil(FGetLastSignedOnDateCommand);
  FreeAndNil(FGetProcSourceCommand);
   FreeAndNil(FGetDataSelectionCommand);
  inherited;
end;

function TDSAuthorizedManagerClient.LogInEx(UserID: string; UserPWD: string): Boolean;
begin
  if FLogInEXCommand = nil then
  begin
    FLogInExCommand := FDBXConnection.CreateCommand;
    FLogInExCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLogInExCommand.Text := ServerClassName + '.LogInEx';
    FLogInExCommand.Prepare;
  end;
  FLogInExCommand.Parameters[0].Value.SetWideString(UserID);
  FLogInExCommand.Parameters[1].Value.SetWideString(UserPWD);
  FLogInExCommand.ExecuteUpdate;
  Result := FLogInExCommand.Parameters[2].Value.GetBoolean;
end;


function TDSAuthorizedManagerClient.AddComponent(ScreenName: string; ComponentName: string): Boolean;
begin
  if FAddComponentCommand = nil then
  begin
    FAddComponentCommand := FDBXConnection.CreateCommand;
    FAddComponentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddComponentCommand.Text := ServerClassName + '.AddComponent';
    FAddComponentCommand.Prepare;
  end;
  FAddComponentCommand.Parameters[0].Value.SetWideString(ScreenName);
  FAddComponentCommand.Parameters[1].Value.SetWideString(ComponentName);
  FAddComponentCommand.ExecuteUpdate;
  Result := FAddComponentCommand.Parameters[2].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.AddComponentEx(ScreenName: string; ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
begin
  if FAddComponentExCommand = nil then
  begin
    FAddComponentExCommand := FDBXConnection.CreateCommand;
    FAddComponentExCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddComponentExCommand.Text := ServerClassName + '.AddComponentEx';
    FAddComponentExCommand.Prepare;
  end;
  FAddComponentExCommand.Parameters[0].Value.SetWideString(ScreenName);
  FAddComponentExCommand.Parameters[1].Value.SetWideString(ComponentName);
  FAddComponentExCommand.Parameters[2].Value.SetBoolean(IsEnabled);
  FAddComponentExCommand.Parameters[3].Value.SetBoolean(IsVisibled);
  FAddComponentExCommand.Parameters[4].Value.SetBoolean(IsEditable);
  FAddComponentExCommand.Parameters[5].Value.SetBoolean(IsViewable);
  FAddComponentExCommand.ExecuteUpdate;
  Result := FAddComponentExCommand.Parameters[6].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.DeleteComponent(ScreenName: string; ComponentName: string): Boolean;
begin
  if FDeleteComponentCommand = nil then
  begin
    FDeleteComponentCommand := FDBXConnection.CreateCommand;
    FDeleteComponentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteComponentCommand.Text := ServerClassName + '.DeleteComponent';
    FDeleteComponentCommand.Prepare;
  end;
  FDeleteComponentCommand.Parameters[0].Value.SetWideString(ScreenName);
  FDeleteComponentCommand.Parameters[1].Value.SetWideString(ComponentName);
  FDeleteComponentCommand.ExecuteUpdate;
  Result := FDeleteComponentCommand.Parameters[2].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.AddAuthorizedRole(RoleID: string; ScreenName: string; ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
begin
  if FAddAuthorizedRoleCommand = nil then
  begin
    FAddAuthorizedRoleCommand := FDBXConnection.CreateCommand;
    FAddAuthorizedRoleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddAuthorizedRoleCommand.Text := ServerClassName + '.AddAuthorizedRole';
    FAddAuthorizedRoleCommand.Prepare;
  end;
  FAddAuthorizedRoleCommand.Parameters[0].Value.SetWideString(RoleID);
  FAddAuthorizedRoleCommand.Parameters[1].Value.SetWideString(ScreenName);
  FAddAuthorizedRoleCommand.Parameters[2].Value.SetWideString(ComponentName);
  FAddAuthorizedRoleCommand.Parameters[3].Value.SetBoolean(IsEnabled);
  FAddAuthorizedRoleCommand.Parameters[4].Value.SetBoolean(IsVisibled);
  FAddAuthorizedRoleCommand.Parameters[5].Value.SetBoolean(IsEditable);
  FAddAuthorizedRoleCommand.Parameters[6].Value.SetBoolean(IsViewable);
  FAddAuthorizedRoleCommand.ExecuteUpdate;
  Result := FAddAuthorizedRoleCommand.Parameters[7].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.AddAuthorizedUser(UserID: string; ScreenName: string; ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
begin
  if FAddAuthorizedUserCommand = nil then
  begin
    FAddAuthorizedUserCommand := FDBXConnection.CreateCommand;
    FAddAuthorizedUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddAuthorizedUserCommand.Text := ServerClassName + '.AddAuthorizedUser';
    FAddAuthorizedUserCommand.Prepare;
  end;
  FAddAuthorizedUserCommand.Parameters[0].Value.SetWideString(UserID);
  FAddAuthorizedUserCommand.Parameters[1].Value.SetWideString(ScreenName);
  FAddAuthorizedUserCommand.Parameters[2].Value.SetWideString(ComponentName);
  FAddAuthorizedUserCommand.Parameters[3].Value.SetBoolean(IsEnabled);
  FAddAuthorizedUserCommand.Parameters[4].Value.SetBoolean(IsVisibled);
  FAddAuthorizedUserCommand.Parameters[5].Value.SetBoolean(IsEditable);
  FAddAuthorizedUserCommand.Parameters[6].Value.SetBoolean(IsViewable);
  FAddAuthorizedUserCommand.ExecuteUpdate;
  Result := FAddAuthorizedUserCommand.Parameters[7].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.ChangeUserRole(RoleID: string): Boolean;
begin
  if FChangeUserRoleCommand = nil then
  begin
    FChangeUserRoleCommand := FDBXConnection.CreateCommand;
    FChangeUserRoleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeUserRoleCommand.Text := ServerClassName + '.ChangeUserRole';
    FChangeUserRoleCommand.Prepare;
  end;
  FChangeUserRoleCommand.Parameters[0].Value.SetWideString(RoleID);
  FChangeUserRoleCommand.ExecuteUpdate;
  Result := FChangeUserRoleCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.UseSelfAuthorized(RoleID: string): Boolean;
begin
  if FUseSelfAuthorizedCommand = nil then
  begin
    FUseSelfAuthorizedCommand := FDBXConnection.CreateCommand;
    FUseSelfAuthorizedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUseSelfAuthorizedCommand.Text := ServerClassName + '.UseSelfAuthorized';
    FUseSelfAuthorizedCommand.Prepare;
  end;
  FUseSelfAuthorizedCommand.Parameters[0].Value.SetWideString(RoleID);
  FUseSelfAuthorizedCommand.ExecuteUpdate;
  Result := FUseSelfAuthorizedCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.RemoveSelfAuthorized(RoleID: string): Boolean;
begin
  if FRemoveSelfAuthorizedCommand = nil then
  begin
    FRemoveSelfAuthorizedCommand := FDBXConnection.CreateCommand;
    FRemoveSelfAuthorizedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRemoveSelfAuthorizedCommand.Text := ServerClassName + '.RemoveSelfAuthorized';
    FRemoveSelfAuthorizedCommand.Prepare;
  end;
  FRemoveSelfAuthorizedCommand.Parameters[0].Value.SetWideString(RoleID);
  FRemoveSelfAuthorizedCommand.ExecuteUpdate;
  Result := FRemoveSelfAuthorizedCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetRoleList(Criteria: string; SearchMode: Integer; OrdeFields: string): Boolean;
begin
  if FGetRoleListCommand = nil then
  begin
    FGetRoleListCommand := FDBXConnection.CreateCommand;
    FGetRoleListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetRoleListCommand.Text := ServerClassName + '.GetRoleList';
    FGetRoleListCommand.Prepare;
  end;
  FGetRoleListCommand.Parameters[0].Value.SetWideString(Criteria);
  FGetRoleListCommand.Parameters[1].Value.SetInt32(SearchMode);
  FGetRoleListCommand.Parameters[2].Value.SetWideString(OrdeFields);
  FGetRoleListCommand.ExecuteUpdate;
  Result := FGetRoleListCommand.Parameters[3].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetRoleInfo(RoleRecID: Int64): Boolean;
begin
  if FGetRoleInfoCommand = nil then
  begin
    FGetRoleInfoCommand := FDBXConnection.CreateCommand;
    FGetRoleInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetRoleInfoCommand.Text := ServerClassName + '.GetRoleInfo';
    FGetRoleInfoCommand.Prepare;
  end;
  FGetRoleInfoCommand.Parameters[0].Value.SetInt64(RoleRecID);
  FGetRoleInfoCommand.ExecuteUpdate;
  Result := FGetRoleInfoCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.AddRole(RoleRecID: Int64; RoleID: string; StatusFlag: string; RoleDesc: string): Boolean;
begin
  if FAddRoleCommand = nil then
  begin
    FAddRoleCommand := FDBXConnection.CreateCommand;
    FAddRoleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddRoleCommand.Text := ServerClassName + '.AddRole';
    FAddRoleCommand.Prepare;
  end;
  FAddRoleCommand.Parameters[0].Value.SetInt64(RoleRecID);
  FAddRoleCommand.Parameters[1].Value.SetWideString(RoleID);
  FAddRoleCommand.Parameters[2].Value.SetWideString(StatusFlag);
  FAddRoleCommand.Parameters[3].Value.SetWideString(RoleDesc);
  FAddRoleCommand.ExecuteUpdate;
  Result := FAddRoleCommand.Parameters[4].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.DeleteRole(RoleRecID: Int64): Boolean;
begin
  if FDeleteRoleCommand = nil then
  begin
    FDeleteRoleCommand := FDBXConnection.CreateCommand;
    FDeleteRoleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteRoleCommand.Text := ServerClassName + '.DeleteRole';
    FDeleteRoleCommand.Prepare;
  end;
  FDeleteRoleCommand.Parameters[0].Value.SetInt64(RoleRecID);
  FDeleteRoleCommand.ExecuteUpdate;
  Result := FDeleteRoleCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetUserList(Criteria: string; SearchMode: Integer; OrdeFields: string): Boolean;
begin
  if FGetUserListCommand = nil then
  begin
    FGetUserListCommand := FDBXConnection.CreateCommand;
    FGetUserListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUserListCommand.Text := ServerClassName + '.GetUserList';
    FGetUserListCommand.Prepare;
  end;
  FGetUserListCommand.Parameters[0].Value.SetWideString(Criteria);
  FGetUserListCommand.Parameters[1].Value.SetInt32(SearchMode);
  FGetUserListCommand.Parameters[2].Value.SetWideString(OrdeFields);
  FGetUserListCommand.ExecuteUpdate;
  Result := FGetUserListCommand.Parameters[3].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetUserInfo(UserRecID: Int64): Boolean;
begin
  if FGetUserInfoCommand = nil then
  begin
    FGetUserInfoCommand := FDBXConnection.CreateCommand;
    FGetUserInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUserInfoCommand.Text := ServerClassName + '.GetUserInfo';
    FGetUserInfoCommand.Prepare;
  end;
  FGetUserInfoCommand.Parameters[0].Value.SetInt64(UserRecID);
  FGetUserInfoCommand.ExecuteUpdate;
  Result := FGetUserInfoCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.AddUser(UserRecID, RoleRecID, BranchCode: Int64;
  UserID, UserPWD, UserName, StatusFlag: string;
  ValidFrom, ValidThru, SuspendedDate: Double; Description: string): Boolean;
begin
  if FAddUserCommand = nil then
  begin
    FAddUserCommand := FDBXConnection.CreateCommand;
    FAddUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddUserCommand.Text := ServerClassName + '.AddUser';
    FAddUserCommand.Prepare;
  end;
  FAddUserCommand.Parameters[0].Value.SetInt64(UserRecID);
  FAddUserCommand.Parameters[1].Value.SetInt64(RoleRecID);
  FAddUserCommand.Parameters[2].Value.SetInt64(BranchCode);
  FAddUserCommand.Parameters[3].Value.SetWideString(UserID);
  FAddUserCommand.Parameters[4].Value.SetWideString(UserPWD);
  FAddUserCommand.Parameters[5].Value.SetWideString(UserName);
  FAddUserCommand.Parameters[6].Value.SetWideString(StatusFlag);
  FAddUserCommand.Parameters[7].Value.SetDouble(ValidFrom);
  FAddUserCommand.Parameters[8].Value.SetDouble(ValidThru);
  FAddUserCommand.Parameters[9].Value.SetDouble(SuspendedDate);
  FAddUserCommand.Parameters[10].Value.SetWideString(Description);
  FAddUserCommand.ExecuteUpdate;
  Result := FAddUserCommand.Parameters[11].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.DeleteUser(UserRecID: Int64): Boolean;
begin
  if FDeleteUserCommand = nil then
  begin
    FDeleteUserCommand := FDBXConnection.CreateCommand;
    FDeleteUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteUserCommand.Text := ServerClassName + '.DeleteUser';
    FDeleteUserCommand.Prepare;
  end;
  FDeleteUserCommand.Parameters[0].Value.SetInt64(UserRecID);
  FDeleteUserCommand.ExecuteUpdate;
  Result := FDeleteUserCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.ChangeUserPassword(UID: string; NewPWD: string): Boolean;
begin
  if FChangeUserPasswordCommand = nil then
  begin
    FChangeUserPasswordCommand := FDBXConnection.CreateCommand;
    FChangeUserPasswordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeUserPasswordCommand.Text := ServerClassName + '.ChangeUserPassword';
    FChangeUserPasswordCommand.Prepare;
  end;
  FChangeUserPasswordCommand.Parameters[0].Value.SetWideString(UID);
  FChangeUserPasswordCommand.Parameters[1].Value.SetWideString(NewPWD);
  FChangeUserPasswordCommand.ExecuteUpdate;
  Result := FChangeUserPasswordCommand.Parameters[2].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.ResetUserPassword(UID: string): Boolean;
begin
  if FResetUserPasswordCommand = nil then
  begin
    FResetUserPasswordCommand := FDBXConnection.CreateCommand;
    FResetUserPasswordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FResetUserPasswordCommand.Text := ServerClassName + '.ResetUserPassword';
    FResetUserPasswordCommand.Prepare;
  end;
  FResetUserPasswordCommand.Parameters[0].Value.SetWideString(UID);
  FResetUserPasswordCommand.ExecuteUpdate;
  Result := FResetUserPasswordCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.UserReleaseLock(UID: string): Boolean;
begin
  if FUserReleaseLockCommand = nil then
  begin
    FUserReleaseLockCommand := FDBXConnection.CreateCommand;
    FUserReleaseLockCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUserReleaseLockCommand.Text := ServerClassName + '.UserReleaseLock';
    FUserReleaseLockCommand.Prepare;
  end;
  FUserReleaseLockCommand.Parameters[0].Value.SetWideString(UID);
  FUserReleaseLockCommand.ExecuteUpdate;
  Result := FUserReleaseLockCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.UserLockUnLock(UID: string; IsLogged: Boolean): Boolean;
begin
  if FUserLockUnLockCommand = nil then
  begin
    FUserLockUnLockCommand := FDBXConnection.CreateCommand;
    FUserLockUnLockCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUserLockUnLockCommand.Text := ServerClassName + '.UserLockUnLock';
    FUserLockUnLockCommand.Prepare;
  end;
  FUserLockUnLockCommand.Parameters[0].Value.SetWideString(UID);
  FUserLockUnLockCommand.Parameters[1].Value.SetBoolean(IsLogged);
  FUserLockUnLockCommand.ExecuteUpdate;
  Result := FUserLockUnLockCommand.Parameters[2].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.IsPasswordMatchedPolicy(UserID, PWD, OldPWD: String): Boolean;
begin
  if FIsPasswordMatchedPolicyCommand = nil then
  begin
    FIsPasswordMatchedPolicyCommand := FDBXConnection.CreateCommand;
    FIsPasswordMatchedPolicyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsPasswordMatchedPolicyCommand.Text := ServerClassName + '.IsPasswordMatchedPolicy';
    FIsPasswordMatchedPolicyCommand.Prepare;
  end;
  FIsPasswordMatchedPolicyCommand.Parameters[0].Value.SetWideString(UserID);
  FIsPasswordMatchedPolicyCommand.Parameters[1].Value.SetWideString(PWD);
  FIsPasswordMatchedPolicyCommand.Parameters[2].Value.SetWideString(OldPWD);
  FIsPasswordMatchedPolicyCommand.ExecuteUpdate;
  Result := FIsPasswordMatchedPolicyCommand.Parameters[3].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetMaximumUserIDLength: Integer;
begin
  if FGetMaximumUserIDLengthCommand = nil then
  begin
    FGetMaximumUserIDLengthCommand := FDBXConnection.CreateCommand;
    FGetMaximumUserIDLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMaximumUserIDLengthCommand.Text := ServerClassName + '.GetMaximumUserIDLength';
    FGetMaximumUserIDLengthCommand.Prepare;
  end;
  FGetMaximumUserIDLengthCommand.ExecuteUpdate;
  Result := FGetMaximumUserIDLengthCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetMinimumUserIDLength: Integer;
begin
  if FGetMinimumUserIDLengthCommand = nil then
  begin
    FGetMinimumUserIDLengthCommand := FDBXConnection.CreateCommand;
    FGetMinimumUserIDLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMinimumUserIDLengthCommand.Text := ServerClassName + '.GetMinimumUserIDLength';
    FGetMinimumUserIDLengthCommand.Prepare;
  end;
  FGetMinimumUserIDLengthCommand.ExecuteUpdate;
  Result := FGetMinimumUserIDLengthCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetMaximumPasswordLength: Integer;
begin
  if FGetMaximumPasswordLengthCommand = nil then
  begin
    FGetMaximumPasswordLengthCommand := FDBXConnection.CreateCommand;
    FGetMaximumPasswordLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMaximumPasswordLengthCommand.Text := ServerClassName + '.GetMaximumPasswordLength';
    FGetMaximumPasswordLengthCommand.Prepare;
  end;
  FGetMaximumPasswordLengthCommand.ExecuteUpdate;
  Result := FGetMaximumPasswordLengthCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetMinimumPasswordLength: Integer;
begin
  if FGetMinimumPasswordLengthCommand = nil then
  begin
    FGetMinimumPasswordLengthCommand := FDBXConnection.CreateCommand;
    FGetMinimumPasswordLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMinimumPasswordLengthCommand.Text := ServerClassName + '.GetMinimumPasswordLength';
    FGetMinimumPasswordLengthCommand.Prepare;
  end;
  FGetMinimumPasswordLengthCommand.ExecuteUpdate;
  Result := FGetMinimumPasswordLengthCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetMaximumSignedOnError: Integer;
begin
  if FGetMaximumSignedOnErrorCommand = nil then
  begin
    FGetMaximumSignedOnErrorCommand := FDBXConnection.CreateCommand;
    FGetMaximumSignedOnErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMaximumSignedOnErrorCommand.Text := ServerClassName + '.GetMaximumSignedOnError';
    FGetMaximumSignedOnErrorCommand.Prepare;
  end;
  FGetMaximumSignedOnErrorCommand.ExecuteUpdate;
  Result := FGetMaximumSignedOnErrorCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetWarningBeforePasswordExpired: Integer;
begin
  if FGetWarningBeforePasswordExpiredCommand = nil then
  begin
    FGetWarningBeforePasswordExpiredCommand := FDBXConnection.CreateCommand;
    FGetWarningBeforePasswordExpiredCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetWarningBeforePasswordExpiredCommand.Text := ServerClassName + '.GetWarningBeforePasswordExpired';
    FGetWarningBeforePasswordExpiredCommand.Prepare;
  end;
  FGetWarningBeforePasswordExpiredCommand.ExecuteUpdate;
  Result := FGetWarningBeforePasswordExpiredCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetEnabledPasswordHistory: Boolean;
begin
  if FGetEnabledPasswordHistoryCommand = nil then
  begin
    FGetEnabledPasswordHistoryCommand := FDBXConnection.CreateCommand;
    FGetEnabledPasswordHistoryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEnabledPasswordHistoryCommand.Text := ServerClassName + '.GetEnabledPasswordHistory';
    FGetEnabledPasswordHistoryCommand.Prepare;
  end;
  FGetEnabledPasswordHistoryCommand.ExecuteUpdate;
  Result := FGetEnabledPasswordHistoryCommand.Parameters[0].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetEnabledPasswordHistoryNumber: Integer;
begin
  if FGetEnabledPasswordHistoryNumberCommand = nil then
  begin
    FGetEnabledPasswordHistoryNumberCommand := FDBXConnection.CreateCommand;
    FGetEnabledPasswordHistoryNumberCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEnabledPasswordHistoryNumberCommand.Text := ServerClassName + '.GetEnabledPasswordHistoryNumber';
    FGetEnabledPasswordHistoryNumberCommand.Prepare;
  end;
  FGetEnabledPasswordHistoryNumberCommand.ExecuteUpdate;
  Result := FGetEnabledPasswordHistoryNumberCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetEnabledRepeatingChar: Boolean;
begin
  if FGetEnabledRepeatingCharCommand = nil then
  begin
    FGetEnabledRepeatingCharCommand := FDBXConnection.CreateCommand;
    FGetEnabledRepeatingCharCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEnabledRepeatingCharCommand.Text := ServerClassName + '.GetEnabledRepeatingChar';
    FGetEnabledRepeatingCharCommand.Prepare;
  end;
  FGetEnabledRepeatingCharCommand.ExecuteUpdate;
  Result := FGetEnabledRepeatingCharCommand.Parameters[0].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetEnabledPasswordSimilarToPrevious: Boolean;
begin
  if FGetEnabledPasswordSimilarToPreviousCommand = nil then
  begin
    FGetEnabledPasswordSimilarToPreviousCommand := FDBXConnection.CreateCommand;
    FGetEnabledPasswordSimilarToPreviousCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEnabledPasswordSimilarToPreviousCommand.Text := ServerClassName + '.GetEnabledPasswordSimilarToPrevious';
    FGetEnabledPasswordSimilarToPreviousCommand.Prepare;
  end;
  FGetEnabledPasswordSimilarToPreviousCommand.ExecuteUpdate;
  Result := FGetEnabledPasswordSimilarToPreviousCommand.Parameters[0].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetEnabledStrenghtPasswordPolicy: Boolean;
begin
  if FGetEnabledStrenghtPasswordPolicyCommand = nil then
  begin
    FGetEnabledStrenghtPasswordPolicyCommand := FDBXConnection.CreateCommand;
    FGetEnabledStrenghtPasswordPolicyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEnabledStrenghtPasswordPolicyCommand.Text := ServerClassName + '.GetEnabledStrenghtPasswordPolicy';
    FGetEnabledStrenghtPasswordPolicyCommand.Prepare;
  end;
  FGetEnabledStrenghtPasswordPolicyCommand.ExecuteUpdate;
  Result := FGetEnabledStrenghtPasswordPolicyCommand.Parameters[0].Value.GetBoolean;
end;

procedure TDSAuthorizedManagerClient.SetMaximumUserIDLength(Value: Integer);
begin
  if FSetMaximumUserIDLengthCommand = nil then
  begin
    FSetMaximumUserIDLengthCommand := FDBXConnection.CreateCommand;
    FSetMaximumUserIDLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetMaximumUserIDLengthCommand.Text := ServerClassName + '.SetMaximumUserIDLength';
    FSetMaximumUserIDLengthCommand.Prepare;
  end;
  FSetMaximumUserIDLengthCommand.Parameters[0].Value.SetInt32(Value);
  FSetMaximumUserIDLengthCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetMinimumUserIDLength(Value: Integer);
begin
  if FSetMinimumUserIDLengthCommand = nil then
  begin
    FSetMinimumUserIDLengthCommand := FDBXConnection.CreateCommand;
    FSetMinimumUserIDLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetMinimumUserIDLengthCommand.Text := ServerClassName + '.SetMinimumUserIDLength';
    FSetMinimumUserIDLengthCommand.Prepare;
  end;
  FSetMinimumUserIDLengthCommand.Parameters[0].Value.SetInt32(Value);
  FSetMinimumUserIDLengthCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetMaximumPasswordLength(Value: Integer);
begin
  if FSetMaximumPasswordLengthCommand = nil then
  begin
    FSetMaximumPasswordLengthCommand := FDBXConnection.CreateCommand;
    FSetMaximumPasswordLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetMaximumPasswordLengthCommand.Text := ServerClassName + '.SetMaximumPasswordLength';
    FSetMaximumPasswordLengthCommand.Prepare;
  end;
  FSetMaximumPasswordLengthCommand.Parameters[0].Value.SetInt32(Value);
  FSetMaximumPasswordLengthCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetMinimumPasswordLength(Value: Integer);
begin
  if FSetMinimumPasswordLengthCommand = nil then
  begin
    FSetMinimumPasswordLengthCommand := FDBXConnection.CreateCommand;
    FSetMinimumPasswordLengthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetMinimumPasswordLengthCommand.Text := ServerClassName + '.SetMinimumPasswordLength';
    FSetMinimumPasswordLengthCommand.Prepare;
  end;
  FSetMinimumPasswordLengthCommand.Parameters[0].Value.SetInt32(Value);
  FSetMinimumPasswordLengthCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetMaximumSignedOnError(Value: Integer);
begin
  if FSetMaximumSignedOnErrorCommand = nil then
  begin
    FSetMaximumSignedOnErrorCommand := FDBXConnection.CreateCommand;
    FSetMaximumSignedOnErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetMaximumSignedOnErrorCommand.Text := ServerClassName + '.SetMaximumSignedOnError';
    FSetMaximumSignedOnErrorCommand.Prepare;
  end;
  FSetMaximumSignedOnErrorCommand.Parameters[0].Value.SetInt32(Value);
  FSetMaximumSignedOnErrorCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetWarningBeforePasswordExpired(Value: Integer);
begin
  if FSetWarningBeforePasswordExpiredCommand = nil then
  begin
    FSetWarningBeforePasswordExpiredCommand := FDBXConnection.CreateCommand;
    FSetWarningBeforePasswordExpiredCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetWarningBeforePasswordExpiredCommand.Text := ServerClassName + '.SetWarningBeforePasswordExpired';
    FSetWarningBeforePasswordExpiredCommand.Prepare;
  end;
  FSetWarningBeforePasswordExpiredCommand.Parameters[0].Value.SetInt32(Value);
  FSetWarningBeforePasswordExpiredCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetEnabledPasswordHistory(Value: Boolean);
begin
  if FSetEnabledPasswordHistoryCommand = nil then
  begin
    FSetEnabledPasswordHistoryCommand := FDBXConnection.CreateCommand;
    FSetEnabledPasswordHistoryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetEnabledPasswordHistoryCommand.Text := ServerClassName + '.SetEnabledPasswordHistory';
    FSetEnabledPasswordHistoryCommand.Prepare;
  end;
  FSetEnabledPasswordHistoryCommand.Parameters[0].Value.SetBoolean(Value);
  FSetEnabledPasswordHistoryCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetEnabledPasswordHistoryNumber(Value: Integer);
begin
  if FSetEnabledPasswordHistoryNumberCommand = nil then
  begin
    FSetEnabledPasswordHistoryNumberCommand := FDBXConnection.CreateCommand;
    FSetEnabledPasswordHistoryNumberCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetEnabledPasswordHistoryNumberCommand.Text := ServerClassName + '.SetEnabledPasswordHistoryNumber';
    FSetEnabledPasswordHistoryNumberCommand.Prepare;
  end;
  FSetEnabledPasswordHistoryNumberCommand.Parameters[0].Value.SetInt32(Value);
  FSetEnabledPasswordHistoryNumberCommand.ExecuteUpdate;
end;


procedure TDSAuthorizedManagerClient.SetEnabledRepeatingChar(Value: Boolean);
begin
  if FSetEnabledRepeatingCharCommand = nil then
  begin
    FSetEnabledRepeatingCharCommand := FDBXConnection.CreateCommand;
    FSetEnabledRepeatingCharCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetEnabledRepeatingCharCommand.Text := ServerClassName + '.SetEnabledRepeatingChar';
    FSetEnabledRepeatingCharCommand.Prepare;
  end;
  FSetEnabledRepeatingCharCommand.Parameters[0].Value.SetBoolean(Value);
  FSetEnabledRepeatingCharCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetEnabledPasswordSimilarToPrevious(Value: Boolean);
begin
  if FSetEnabledPasswordSimilarToPreviousCommand = nil then
  begin
    FSetEnabledPasswordSimilarToPreviousCommand := FDBXConnection.CreateCommand;
    FSetEnabledPasswordSimilarToPreviousCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetEnabledPasswordSimilarToPreviousCommand.Text := ServerClassName + '.SetEnabledPasswordSimilarToPrevious';
    FSetEnabledPasswordSimilarToPreviousCommand.Prepare;
  end;
  FSetEnabledPasswordSimilarToPreviousCommand.Parameters[0].Value.SetBoolean(Value);
  FSetEnabledPasswordSimilarToPreviousCommand.ExecuteUpdate;
end;

procedure TDSAuthorizedManagerClient.SetEnabledStrenghtPasswordPolicy(Value: Boolean);
begin
  if FSetEnabledStrenghtPasswordPolicyCommand = nil then
  begin
    FSetEnabledStrenghtPasswordPolicyCommand := FDBXConnection.CreateCommand;
    FSetEnabledStrenghtPasswordPolicyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetEnabledStrenghtPasswordPolicyCommand.Text := ServerClassName + '.SetEnabledStrenghtPasswordPolicy';
    FSetEnabledStrenghtPasswordPolicyCommand.Prepare;
  end;
  FSetEnabledStrenghtPasswordPolicyCommand.Parameters[0].Value.SetBoolean(Value);
  FSetEnabledStrenghtPasswordPolicyCommand.ExecuteUpdate;
end;

function TDSAuthorizedManagerClient.GetAppList(RoleID: String): Boolean;
begin
  if FGetAppListCommand = nil then
  begin
    FGetAppListCommand := FDBXConnection.CreateCommand;
    FGetAppListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAppListCommand.Text := ServerClassName + '.GetAppList';
    FGetAppListCommand.Prepare;
  end;
  FGetAppListCommand.Parameters[0].Value.SetString(RoleID);
  FGetAppListCommand.ExecuteUpdate;
  Result := FGetAppListCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetFormList(ParentAppID: Int64): Boolean;
begin
  if FGetFormListCommand = nil then
  begin
    FGetFormListCommand := FDBXConnection.CreateCommand;
    FGetFormListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetFormListCommand.Text := ServerClassName + '.GetFormList';
    FGetFormListCommand.Prepare;
  end;
  FGetFormListCommand.Parameters[0].Value.SetInt64(ParentAppID);
  FGetFormListCommand.ExecuteUpdate;
  Result := FGetFormListCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetControlList(ParentFormID: Int64; RoleID: String): Boolean;
begin
  if FGetControlListCommand = nil then
  begin
    FGetControlListCommand := FDBXConnection.CreateCommand;
    FGetControlListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetControlListCommand.Text := ServerClassName + '.GetControlList';
    FGetControlListCommand.Prepare;
  end;
  FGetControlListCommand.Parameters[0].Value.SetInt64(ParentFormID);
  FGetControlListCommand.Parameters[1].Value.SetString(RoleID);
  FGetControlListCommand.ExecuteUpdate;
  Result := FGetControlListCommand.Parameters[2].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.UpdatePermission(RoleID: String; ComponentID: Int64; IsVisibled: Boolean; IsEnabled: Boolean; IsApplication: Boolean): Boolean;
begin
  if FUpdatePermissionCommand = nil then
  begin
    FUpdatePermissionCommand := FDBXConnection.CreateCommand;
    FUpdatePermissionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdatePermissionCommand.Text := ServerClassName + '.UpdatePermission';
    FUpdatePermissionCommand.Prepare;
  end;
  FUpdatePermissionCommand.Parameters[0].Value.SetString(RoleID);
  FUpdatePermissionCommand.Parameters[1].Value.SetInt64(ComponentID);
  FUpdatePermissionCommand.Parameters[2].Value.SetBoolean(IsVisibled);
  FUpdatePermissionCommand.Parameters[3].Value.SetBoolean(IsEnabled);
  FUpdatePermissionCommand.Parameters[4].Value.SetBoolean(IsApplication);
  FUpdatePermissionCommand.ExecuteUpdate;
  Result := FUpdatePermissionCommand.Parameters[5].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.UpdateComponentDesc(ComponentID: Int64; ComponentDesc: String): Boolean;
begin
  if FUpdateComponentDescCommand = nil then
  begin
    FUpdateComponentDescCommand := FDBXConnection.CreateCommand;
    FUpdateComponentDescCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateComponentDescCommand.Text := ServerClassName + '.UpdateComponentDesc';
    FUpdateComponentDescCommand.Prepare;
  end;
  FUpdateComponentDescCommand.Parameters[0].Value.SetInt64(ComponentID);
  FUpdateComponentDescCommand.Parameters[1].Value.SetString(ComponentDesc);
  FUpdatePermissionCommand.ExecuteUpdate;
  Result := FUpdatePermissionCommand.Parameters[2].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.SaveAllAuthenticationConfigure(): Boolean;
begin
  if FSaveAllAuthenticationConfigureCommand = nil then
  begin
    FSaveAllAuthenticationConfigureCommand := FDBXConnection.CreateCommand;
    FSaveAllAuthenticationConfigureCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSaveAllAuthenticationConfigureCommand.Text := ServerClassName + '.SaveAllAuthenticationConfigure';
    FSaveAllAuthenticationConfigureCommand.Prepare;
  end;
  FSaveAllAuthenticationConfigureCommand.ExecuteUpdate;
  Result := FSaveAllAuthenticationConfigureCommand.Parameters[0].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.LoadAllAuthenticationConfigure(): Boolean;
begin
  if FLoadAllAuthenticationConfigureCommand = nil then
  begin
    FLoadAllAuthenticationConfigureCommand := FDBXConnection.CreateCommand;
    FLoadAllAuthenticationConfigureCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLoadAllAuthenticationConfigureCommand.Text := ServerClassName + '.LoadAllAuthenticationConfigure';
    FLoadAllAuthenticationConfigureCommand.Prepare;
  end;
  FLoadAllAuthenticationConfigureCommand.ExecuteUpdate;
  Result := FLoadAllAuthenticationConfigureCommand.Parameters[0].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetNumberOfDaysBeforeExpired(): Integer;
begin
  if FGetNumberOfDaysBeforeExpiredCommand = nil then
  begin
    FGetNumberOfDaysBeforeExpiredCommand := FDBXConnection.CreateCommand;
    FGetNumberOfDaysBeforeExpiredCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNumberOfDaysBeforeExpiredCommand.Text := ServerClassName + '.GetNumberOfDaysBeforeExpired';
    FGetNumberOfDaysBeforeExpiredCommand.Prepare;
  end;
  FGetNumberOfDaysBeforeExpiredCommand.ExecuteUpdate;
  Result := FGetNumberOfDaysBeforeExpiredCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.GetLastSignedOnDate(): Double;
begin
  if FGetLastSignedOnDateCommand = nil then
  begin
    FGetLastSignedOnDateCommand := FDBXConnection.CreateCommand;
    FGetLastSignedOnDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetLastSignedOnDateCommand.Text := ServerClassName + '.GetLastSignedOnDate';
    FGetLastSignedOnDateCommand.Prepare;
  end;
  FGetLastSignedOnDateCommand.ExecuteUpdate;
  Result := FGetLastSignedOnDateCommand.Parameters[0].Value.GetDouble;
end;


function TDSAuthorizedManagerClient.GetPasswordAge(): Integer;
begin
  if FGetPasswordAgeCommand = nil then
  begin
    FGetPasswordAgeCommand := FDBXConnection.CreateCommand;
    FGetPasswordAgeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPasswordAgeCommand.Text := ServerClassName + '.GetPasswordAge';
    FGetPasswordAgeCommand.Prepare;
  end;
  FGetPasswordAgeCommand.ExecuteUpdate;
  Result := FGetPasswordAgeCommand.Parameters[0].Value.GetInt32;
end;

function TDSAuthorizedManagerClient.SetPasswordAge(Value: Integer): Boolean;
begin
  if FSetPasswordAgeCommand = nil then
  begin
    FSetPasswordAgeCommand := FDBXConnection.CreateCommand;
    FSetPasswordAgeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetPasswordAgeCommand.Text := ServerClassName + '.SetPasswordAge';
    FSetPasswordAgeCommand.Prepare;
  end;
  FSetPasswordAgeCommand.Parameters[0].Value.SetInt32(Value);
  FSetPasswordAgeCommand.ExecuteUpdate;
  Result := FSetPasswordAgeCommand.Parameters[1].Value.GetBoolean;
end;

function TDSAuthorizedManagerClient.GetProcSource(ProcName: String): String;
begin
  if FGetProcSourceCommand = nil then
  begin
    FGetProcSourceCommand := FDBXConnection.CreateCommand;
    FGetProcSourceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetProcSourceCommand.Text := ServerClassName + '.GetProcSource';
    FGetProcSourceCommand.Prepare;
  end;
  FGetProcSourceCommand.Parameters[0].Value.SetWideString(ProcName);
  FGetProcSourceCommand.ExecuteUpdate;
  Result := FGetProcSourceCommand.Parameters[1].Value.GetWideString();
end;

function TDSAuthorizedManagerClient.GetDataSelection(Sql_text: string): Boolean;
begin
  if FGetDataSelectionCommand = nil then
  begin
    FGetDataSelectionCommand := FDBXConnection.CreateCommand;
    FGetDataSelectionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDataSelectionCommand.Text := ServerClassName + '.GetDataSelection';
    FGetDataSelectionCommand.Prepare;
  end;
  FGetDataSelectionCommand.Parameters[0].Value.SetWideString(Sql_text);
  FGetDataSelectionCommand.ExecuteUpdate;
  Result := FGetDataSelectionCommand.Parameters[1].Value.GetBoolean;
end;


end.
