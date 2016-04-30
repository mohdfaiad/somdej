unit DSAuthorizedManagerClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DSMainClass, DBXFirebird, DB, SqlExpr, FMTBcd, Provider,
  Data.Win.ADODB;

type
  TDSAuthorizedManager = class(TDSMain)
    dsUserList: TSQLQuery;
    dspUserList: TDataSetProvider;
    dsRoleList: TSQLQuery;
    dspRoleList: TDataSetProvider;
    spRoleInsUpd: TSQLStoredProc;
    spUserInsUpd: TSQLStoredProc;
    spUserPasswordChange: TSQLStoredProc;
    spUserPasswordReset: TSQLStoredProc;
    spUserLockUnlock: TSQLStoredProc;
    spUserReleaseLoggedIn: TSQLStoredProc;
    spRoleDelete: TSQLStoredProc;
    spUserDelete: TSQLStoredProc;
    dspAppGetList: TDataSetProvider;
    dsAppGetList: TSQLQuery;
    dspGetFormList: TDataSetProvider;
    dsGetFormList: TSQLQuery;
    dspGetControlList: TDataSetProvider;
    dsGetControlList: TSQLQuery;
    spUpdatePermission: TSQLStoredProc;
    spUpdComponentDesc: TSQLStoredProc;
    spUserLogInEx: TSQLStoredProc;
    spVerifyPassHistory: TSQLStoredProc;
    dspSelect: TDataSetProvider;
    dsSelect: TSQLQuery;
  private
    FMaximumUserIDLength: Integer;
    FMinimumUserIDLength: Integer;
    FMaximumPasswordLength: Integer;
    FMinimumPasswordLength: Integer;
    FMaximumSignedOnError: Integer;
    FWarningBeforePasswordExpired: Integer;
    FEnabledPasswordHistory: Boolean;
    FEnabledPasswordHistoryNumber: Integer;
    FEnabledRepeatingChar: Boolean;
    FEnabledPasswordSimilarToPrevious: Boolean;
    FEnabledStrenghtPasswordPolicy: Boolean;

    FNumberOfDaysBeforeExpired: Integer;
    FLastSignedOnDate: TDateTime;

    procedure LoadAuthenticationConfigure();
    procedure SaveAuthenticationConfigure();
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;

    function LogInEx(UserID, UserPWD: string): Boolean;

    function AddComponent(ScreenName, ComponentName: String): Boolean;
    function AddComponentEx(ScreenName, ComponentName: String;
      IsEnabled, IsVisibled, IsEditable, IsViewable: Boolean): Boolean;
    // function DeleteComponent(ScreenName, ComponentName: String): boolean;

    function AddAuthorizedRole(RoleID, ScreenName, ComponentName: String;
      IsEnabled, IsVisibled, IsEditable, IsViewable: Boolean): Boolean;
    function AddAuthorizedUser(UserID, ScreenName, ComponentName: String;
      IsEnabled, IsVisibled, IsEditable, IsViewable: Boolean): Boolean;
    function ChangeUserRole(RoleID: String): Boolean;
    function UseSelfAuthorized(RoleID: String): Boolean;
    function RemoveSelfAuthorized(RoleID: String): Boolean;

    function GetRoleList(Criteria: String; SearchMode: Integer;
      OrdeFields: String): Boolean;
    function GetRoleInfo(RoleRecID: Int64): Boolean;
    function AddRole(RoleRecID: Int64;
      RoleID, StatusFlag, RoleDesc: String): Boolean;
    function DeleteRole(RoleRecID: Int64): Boolean;

    function GetUserList(Criteria: String; SearchMode: Integer;
      OrdeFields: String): Boolean;
    function GetUserInfo(UserRecID: Int64): Boolean;
    function AddUser(UserRecID, RoleRecID, BranchCode: Int64;
      UserID, UserPWD, UserName, StatusFlag: String;
      ValidFrom, ValidThru, SuspendedDate: Double; Description: String)
      : Boolean;
    function DeleteUser(UserRecID: Int64): Boolean;

    function ChangeUserPassword(UID, NewPWD: String): Boolean;
    function ResetUserPassword(UID: String): Boolean;
    function UserReleaseLock(UID: String): Boolean;
    function UserLockUnLock(UID: String; IsLogged: Boolean): Boolean;

    function IsPasswordMatchedPolicy(UserID, PWD, OldPWD: String): Boolean;

    function GetMaximumUserIDLength(): Integer;
    function GetMinimumUserIDLength(): Integer;
    function GetMaximumPasswordLength(): Integer;
    function GetMinimumPasswordLength(): Integer;
    function GetMaximumSignedOnError(): Integer;
    function GetWarningBeforePasswordExpired(): Integer;
    function GetEnabledPasswordHistory(): Boolean;
    function GetEnabledPasswordHistoryNumber(): Integer;
    function GetEnabledRepeatingChar(): Boolean;
    function GetEnabledPasswordSimilarToPrevious(): Boolean;
    function GetEnabledStrenghtPasswordPolicy(): Boolean;

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
    function SaveAllAuthenticationConfigure(): Boolean;
    function LoadAllAuthenticationConfigure(): Boolean;

    function GetNumberOfDaysBeforeExpired(): Integer;
    function GetLastSignedOnDate(): Double;

    function GetPasswordAge(): Integer;
    function SetPasswordAge(Value: Integer): Boolean;

    function GetAppList(RoleID: String): Boolean;
    function GetFormList(ParentAppID: Int64): Boolean;
    function GetControlList(ParentFormID: Int64; RoleID: String): Boolean;
    function UpdatePermission(RoleID: String; ComponentID: Int64;
      IsVisibled, IsEnabled: Boolean; IsApplication: Boolean = True): Boolean;
    function UpdateComponentDesc(ComponentID: Int64;
      ComponentDesc: String): Boolean;

    function GetProcSource(ProcName: String): String;

    function GetDataSelection(Sql_text : String): Boolean;

  end;

var
  DSAuthorizedManager: TDSAuthorizedManager;

implementation

uses IniFiles, DSServerConstant;

{$R *.dfm}

constructor TDSAuthorizedManager.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  LoadAuthenticationConfigure();
end;

destructor TDSAuthorizedManager.Destroy();
begin
  //
  inherited Destroy();
end;

function TDSAuthorizedManager.LogInEx(UserID, UserPWD: string): Boolean;
begin
  FLastErrorCode := _NO_ERROR_;
  try
    FUserID := UpperCase(Trim(UserID));
    FUserPWD := UserPWD;

    spUserLogInEx.ParamByName(_SP_PARAM_UID_).AsString := FUserID;
    spUserLogInEx.ParamByName(_SP_PARAM_PWD_).AsString := FUserPWD;
    spUserLogInEx.ExecProc();
    FLastErrorCode := spUserLogInEx.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
    FCompanyCode := spUserLogInEx.ParamByName(_SP_PARAM_COMPANY_CODE_)
      .AsLargeInt;
    FCompanyOrgCode := spUserLogInEx.ParamByName
      (_SP_PARAM_COMPANY_ORG_CODE_).AsString;
    FCompanyName := spUserLogInEx.ParamByName(_SP_PARAM_COMPANY_NAME_).AsString;
    FBranchCode := spUserLogInEx.ParamByName(_SP_PARAM_BRANCH_CODE_).AsLargeInt;
    FBranchOrgCode := spUserLogInEx.ParamByName
      (_SP_PARAM_BRANCH_ORG_CODE_).AsString;
    FBranchName := spUserLogInEx.ParamByName(_SP_PARAM_BRANCH_NAME_).AsString;
    FUserName := spUserLogInEx.ParamByName(_SP_PARAM_USER_NAME_).AsString;
    FUserRecID := spUserLogInEx.ParamByName(_SP_PARAM_USER_REC_ID_).AsLargeInt;
    FUserRoleID := spUserLogInEx.ParamByName(_SP_PARAM_ROLE_ID_).AsString;
    FUserRoleRecID := spUserLogInEx.ParamByName(_SP_PARAM_ROLE_REC_ID_)
      .AsLargeInt;
    FUserRoleRecID := spUserLogInEx.ParamByName(_SP_PARAM_ROLE_REC_ID_)
      .AsLargeInt;
    FNumberOfDaysBeforeExpired := spUserLogInEx.ParamByName
      (_SP_PARAM_NUMBER_OF_DAYS_BEFORE_EXPIRED_).AsInteger;
    FLastSignedOnDate := spUserLogInEx.ParamByName
      (_SP_PARAM_LAST_SIGNED_ON_DATE_).AsDateTime;
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

procedure TDSAuthorizedManager.LoadAuthenticationConfigure();
begin
  with TIniFile.Create(ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_) do
    try
      FMaximumUserIDLength := ReadInteger('Authentication',
        'maximum_user_id_length', 12);
      FMinimumUserIDLength := ReadInteger('Authentication',
        'minimum_user_id_length', 4);
      FMaximumPasswordLength := ReadInteger('Authentication',
        'maximum_password_length', 12);
      FMinimumPasswordLength := ReadInteger('Authentication',
        'minimum_password_length', 4);
      FMaximumSignedOnError := ReadInteger('Authentication',
        'maximum_signed_on_error', 3);
      FWarningBeforePasswordExpired := ReadInteger('Authentication',
        'warning_before_password_expired', 15);

      FEnabledPasswordHistory := ReadBool('Authentication',
        'Enabled_password_history', True);
      FEnabledPasswordHistoryNumber := ReadInteger('Authentication',
        'Enabled_password_history_number', 1);
      FEnabledRepeatingChar := ReadBool('Authentication',
        'Enabled_repeating_char', True);
      FEnabledPasswordSimilarToPrevious := ReadBool('Authentication',
        'Enabled_password_similar_to_previous', True);
      FEnabledStrenghtPasswordPolicy := ReadBool('Authentication',
        'Enabled_strenght_password_policy', True);
    finally
      Free();
    end;
end;

procedure TDSAuthorizedManager.SaveAuthenticationConfigure();
begin
  with TIniFile.Create(ExtractFilePath(ParamStr(0)) + _CONFIG_FILE_) do
    try
      WriteInteger('Authentication', 'maximum_user_id_length',
        FMaximumUserIDLength);
      WriteInteger('Authentication', 'minimum_user_id_length',
        FMinimumUserIDLength);
      WriteInteger('Authentication', 'maximum_password_length',
        FMaximumPasswordLength);
      WriteInteger('Authentication', 'minimum_password_length',
        FMinimumPasswordLength);
      WriteInteger('Authentication', 'maximum_signed_on_error',
        FMaximumSignedOnError);
      WriteInteger('Authentication', 'warning_before_password_expired',
        FWarningBeforePasswordExpired);

      WriteBool('Authentication', 'Enabled_password_history',
        FEnabledPasswordHistory);
      WriteInteger('Authentication', 'Enabled_password_history_number',
        FEnabledPasswordHistoryNumber);
      WriteBool('Authentication', 'Enabled_repeating_char',
        FEnabledRepeatingChar);
      WriteBool('Authentication', 'Enabled_password_similar_to_previous',
        FEnabledPasswordSimilarToPrevious);
      WriteBool('Authentication', 'Enabled_strenght_password_policy',
        FEnabledStrenghtPasswordPolicy);
    finally
      Free();
    end;
end;

function TDSAuthorizedManager.AddComponent(ScreenName, ComponentName
  : String): Boolean;
begin
  VerifyLoggedIn();
  Result := ExecMethod( procedure begin end, 'AddComponent');
end;

function TDSAuthorizedManager.AddComponentEx(ScreenName, ComponentName: String;
  IsEnabled, IsVisibled, IsEditable, IsViewable: Boolean): Boolean;
begin
  VerifyLoggedIn();
  Result := ExecMethod( procedure begin end, 'AddComponentEx');
end;

{
  function TDSAuthorizedManager.DeleteComponent(ScreenName, ComponentName: String): boolean;
  begin
  VerifyLoggedIn();
  Result := ExecMethod(procedure begin end, 'DeleteComponent');
  end;
}
function TDSAuthorizedManager.AddAuthorizedRole(RoleID, ScreenName,
  ComponentName: String; IsEnabled, IsVisibled, IsEditable,
  IsViewable: Boolean): Boolean;
begin
  VerifyLoggedIn();
  Result := ExecMethod( procedure begin end, 'AddAuthorizedRole');
end;

function TDSAuthorizedManager.AddAuthorizedUser(UserID, ScreenName,
  ComponentName: String; IsEnabled, IsVisibled, IsEditable,
  IsViewable: Boolean): Boolean;
begin
  VerifyLoggedIn();
  Result := ExecMethod( procedure begin end, 'AddAuthorizedUser');
end;

function TDSAuthorizedManager.ChangeUserRole(RoleID: String): Boolean;
begin
  VerifyLoggedIn();
  Result := ExecMethod( procedure begin end, 'ChangeUserRole');
end;

function TDSAuthorizedManager.UseSelfAuthorized(RoleID: String): Boolean;
begin
  Result := ExecMethod( procedure begin end, 'UseSelfAuthorized');
end;

function TDSAuthorizedManager.RemoveSelfAuthorized(RoleID: String): Boolean;
begin
  VerifyLoggedIn();
  Result := ExecMethod( procedure begin end, 'RemoveSelfAuthorized');
end;

function TDSAuthorizedManager.GetRoleList(Criteria: String; SearchMode: Integer;
  OrdeFields: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsRoleList do
    begin
      ParamByName(_SP_PARAM_FULL_TEXT_SEARCH_).AsString := Criteria;
      ParamByName(_SP_PARAM_SEARCH_MODE_).AsInteger := SearchMode;
      ParamByName(_SP_PARAM_ORDER_FIELD_).AsString := OrdeFields;
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

function TDSAuthorizedManager.GetRoleInfo(RoleRecID: Int64): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsRoleList do
    begin
      ParamByName(_SP_PARAM_FULL_TEXT_SEARCH_).AsString :=
        Format(_SEARCH_ROLE_BY_REC_ID_, [RoleRecID]);
      ParamByName(_SP_PARAM_SEARCH_MODE_).AsInteger := _SEARCH_MODE_SPECIFIED_;
      ParamByName(_SP_PARAM_ORDER_FIELD_).Clear();
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

function TDSAuthorizedManager.AddRole(RoleRecID: Int64;
  RoleID, StatusFlag, RoleDesc: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spRoleInsUpd.ParamByName(_SP_PARAM_ROLE_REC_ID_).AsLargeInt := RoleRecID;
    spRoleInsUpd.ParamByName(_SP_PARAM_STATUS_FLAG_).AsString := StatusFlag;
    spRoleInsUpd.ParamByName(_SP_PARAM_ROLE_ID_).AsString := RoleID;
    spRoleInsUpd.ParamByName(_SP_PARAM_DESCRIPTION_).AsString := RoleDesc;
    spRoleInsUpd.ExecProc();
    LastErrorCode := spRoleInsUpd.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
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

function TDSAuthorizedManager.DeleteRole(RoleRecID: Int64): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spRoleDelete.ParamByName(_SP_PARAM_ROLE_REC_ID_).AsLargeInt := RoleRecID;
    spRoleDelete.ExecProc();
    LastErrorCode := spRoleDelete.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
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

function TDSAuthorizedManager.GetUserList(Criteria: String; SearchMode: Integer;
  OrdeFields: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsUserList do
    begin
      ParamByName(_SP_PARAM_FULL_TEXT_SEARCH_).AsString := Criteria;
      ParamByName(_SP_PARAM_SEARCH_MODE_).AsInteger := SearchMode;
      ParamByName(_SP_PARAM_ORDER_FIELD_).AsString := OrdeFields;
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

function TDSAuthorizedManager.GetUserInfo(UserRecID: Int64): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsUserList do
    begin
      ParamByName(_SP_PARAM_FULL_TEXT_SEARCH_).AsString :=
        Format(_SEARCH_USER_BY_REC_ID_, [UserRecID]);
      ParamByName(_SP_PARAM_SEARCH_MODE_).AsInteger := _SEARCH_MODE_SPECIFIED_;
      ParamByName(_SP_PARAM_ORDER_FIELD_).Clear();
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

function TDSAuthorizedManager.AddUser(UserRecID, RoleRecID, BranchCode: Int64;
  UserID, UserPWD, UserName, StatusFlag: String;
  ValidFrom, ValidThru, SuspendedDate: Double; Description: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spUserInsUpd.ParamByName(_SP_PARAM_USER_REC_ID_).AsLargeInt := UserRecID;
    spUserInsUpd.ParamByName(_SP_PARAM_ORG_CODE_).AsLargeInt := BranchCode;
    spUserInsUpd.ParamByName(_SP_PARAM_USER_ID_).AsString := UserID;
    spUserInsUpd.ParamByName(_SP_PARAM_OFFICER_ID_).Clear();
    spUserInsUpd.ParamByName(_SP_PARAM_USER_PWD_).AsString := UserPWD;
    spUserInsUpd.ParamByName(_SP_PARAM_USER_NAME_).AsString := UserName;
    spUserInsUpd.ParamByName(_SP_PARAM_USER_POSITION_).Clear();
    spUserInsUpd.ParamByName(_SP_PARAM_OFFICER_TYPE_).Clear();
    spUserInsUpd.ParamByName(_SP_PARAM_VALID_FROM_).AsDate := ValidFrom;
    spUserInsUpd.ParamByName(_SP_PARAM_VALID_THRU_).AsDate := ValidThru;
    spUserInsUpd.ParamByName(_SP_PARAM_RALEASE_SUSPENDED_DATE_).AsDate :=
      SuspendedDate;
    spUserInsUpd.ParamByName(_SP_PARAM_ROLE_REC_ID_).AsLargeInt := RoleRecID;
    spUserInsUpd.ParamByName(_SP_PARAM_DESCRIPTION_).AsString := Description;
    spUserInsUpd.ExecProc();
    LastErrorCode := spUserInsUpd.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
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

function TDSAuthorizedManager.DeleteUser(UserRecID: Int64): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spUserDelete.ParamByName(_SP_PARAM_USER_REC_ID_).AsLargeInt := UserRecID;
    spUserDelete.ExecProc();
    LastErrorCode := spUserDelete.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
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

function TDSAuthorizedManager.ChangeUserPassword(UID, NewPWD: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spUserPasswordChange.ParamByName(_SP_PARAM_USER_ID_).AsString := UID;
    spUserPasswordChange.ParamByName(_SP_PARAM_USER_PWD_).AsString := NewPWD;
    spUserPasswordChange.ExecProc();
    LastErrorCode := spUserPasswordChange.ParamByName(_SP_PARAM_RESULT_)
      .AsLargeInt;
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

function TDSAuthorizedManager.ResetUserPassword(UID: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spUserPasswordReset.ParamByName(_SP_PARAM_USER_ID_).AsString := UID;
    spUserPasswordReset.ExecProc();
    LastErrorCode := spUserPasswordReset.ParamByName(_SP_PARAM_RESULT_)
      .AsLargeInt;
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

function TDSAuthorizedManager.UserReleaseLock(UID: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spUserReleaseLoggedIn.ParamByName(_SP_PARAM_USER_ID_).AsString := UID;
    spUserReleaseLoggedIn.ExecProc();
    LastErrorCode := spUserReleaseLoggedIn.ParamByName(_SP_PARAM_RESULT_)
      .AsLargeInt;
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

function TDSAuthorizedManager.UserLockUnLock(UID: String;
  IsLogged: Boolean): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    spUserLockUnlock.ParamByName(_SP_PARAM_USER_ID_).AsString := UID;
    spUserLockUnlock.ParamByName(_SP_PARAM_IS_LOGGED_).AsInteger :=
      Abs(Integer(IsLogged));
    spUserLockUnlock.ExecProc();
    LastErrorCode := spUserLockUnlock.ParamByName(_SP_PARAM_RESULT_).AsLargeInt;
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

function TDSAuthorizedManager.IsPasswordMatchedPolicy(UserID, PWD,
  OldPWD: String): Boolean;
  function IsSpacialChar(Ch: Char): Boolean;
  begin
    Result := CharInSet(Ch, ['!' .. '/', '[' .. '`', '{' .. '~']);
  end;

  function IsCapitalLetter(Ch: Char): Boolean;
  begin
    Result := CharInSet(Ch, ['A' .. 'Z']);
  end;

  function IsSmallLetter(Ch: Char): Boolean;
  begin
    Result := CharInSet(Ch, ['a' .. 'z']);
  end;

  function IsDigit(Ch: Char): Boolean;
  begin
    Result := CharInSet(Ch, ['0' .. '9']);
  end;

  function IsRepeatChar(S: String): Boolean;
  var
    I: Integer;
  begin
    for I := 2 to Length(S) do
    begin
      if (S[I] = S[I - 1]) then
      begin
        Exit(True);
      end;
    end;
    Result := False;
  end;

  function IsSameCharPos(S1, S2: String): Boolean;
  var
    I: Integer;
  begin
    I := 1;
    while ((I <= Length(S1)) and (I <= Length(S2))) do
    begin
      if (S1[I] = S2[I]) then
      begin
        Exit(True);
      end;
      Inc(I);
    end;
    Result := False;
  end;

var
  I, InCharCount: Integer;
begin
  UserID := UpperCase(UserID);
  if (UpperCase(PWD) = UserID) then
  begin
    FLastErrorCode := _ERROR_UNDEFINED_;
    FLastErrorMessage := 'รหัสผ่านเหมือนชื่อผู้ใช้งานไม่ได้';
    Exit(False);
  end;

  { ***** Configuration re-loaded ***** }
  LoadAuthenticationConfigure();
  if (Length(PWD) > FMaximumPasswordLength) then
  begin
    FLastErrorCode := _ERROR_UNDEFINED_;
    FLastErrorMessage :=
      'ความยาวของรหัสผ่านมากกว่าค่าสูงสุดที่กำหนดไว้';
    Exit(False);
  end;

  if (Length(PWD) < FMinimumPasswordLength) then
  begin
    FLastErrorCode := _ERROR_UNDEFINED_;
    FLastErrorMessage :=
      'ความยาวรหัสผ่านน้อยกว่าค่าต่ำสุดที่กำหนดไว้';
    Exit(False);
  end;

  if (FEnabledPasswordHistory) then
  begin
    with spVerifyPassHistory do
    begin
      ParamByName(_SP_PARAM_USER_ID_).AsString := UserID;
      ParamByName(_SP_PARAM_USER_PWD_).AsString := PWD;
      ParamByName(_SP_PARAM_ITEM_).AsInteger := FEnabledPasswordHistoryNumber;
      ExecProc();
      LastErrorCode := ParamByName(_SP_PARAM_RESULT_).AsInteger;
    end;

    if (LastErrorCode <> _NO_ERROR_) then
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage := 'รหัสผ่านซ้ำกับรหัสเดิมที่ถูกจัดเก็บไว้ ' +
        IntToStr(FEnabledPasswordHistoryNumber) +
        ' ครั้งหลังสุดใน Password History';
      Exit(False);
    end;
  end;

  if (FEnabledRepeatingChar) then
  begin
    if (IsRepeatChar(PWD)) then
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage := 'ใส่ตัวอักษรซ้ำติดกันไม่ได้';
      Exit(False);
    end;
  end;

  if (FEnabledPasswordSimilarToPrevious) then
  begin
    if (IsSameCharPos(PWD, OldPWD)) then
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage :=
        'ตำแหน่งเดียวกันของอักขระในรหัสผ่านใหม่เป็นค่าเดียวกันกับอักขระในรหัสผ่านก่อนหน้านั้นไม่ได้';
      Exit(False);
    end;
  end;

  if (FEnabledStrenghtPasswordPolicy) then
  begin
    if (Length(PWD) < 3) then
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage :=
        'Strenght Password Policy ต้องการอย่างน้อย 3 อักขระเพื่อสร้างรหัสผ่าน';
      Exit(False);
    end;

    InCharCount := 0;
    for I := 1 to Length(PWD) do
    begin
      if (IsSpacialChar(PWD[I])) then
      begin
        Inc(InCharCount);
        Break;
      end;
    end;

    for I := 1 to Length(PWD) do
    begin
      if (IsCapitalLetter(PWD[I])) then
      begin
        Inc(InCharCount);
        Break;
      end;
    end;

    for I := 1 to Length(PWD) do
    begin
      if (IsSmallLetter(PWD[I])) then
      begin
        Inc(InCharCount);
        Break;
      end;
    end;

    for I := 1 to Length(PWD) do
    begin
      if (IsDigit(PWD[I])) then
      begin
        Inc(InCharCount);
        Break;
      end;
    end;

    if (InCharCount < 3) then
    begin
      FLastErrorCode := _ERROR_UNDEFINED_;
      FLastErrorMessage :=
        'Strenght Password Policy ต้องประกอบไปด้วยอักขระอย่างน้อย 3 ใน 4 กลุ่มของอักขระต่อไปนี้ (1). "A" ถึง "Z" (2). "a" ถึง "z" (3). "0" ถึง "9" (4). อักขระพิเศษ (เช่น !, $, #, %, เป็นต้น)';
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSAuthorizedManager.GetMaximumUserIDLength(): Integer;
begin
  Result := FMaximumUserIDLength;
end;

function TDSAuthorizedManager.GetMinimumUserIDLength(): Integer;
begin
  Result := FMinimumUserIDLength;
end;

function TDSAuthorizedManager.GetMaximumPasswordLength(): Integer;
begin
  Result := FMaximumPasswordLength;
end;

function TDSAuthorizedManager.GetMinimumPasswordLength(): Integer;
begin
  Result := FMinimumPasswordLength;
end;

function TDSAuthorizedManager.GetMaximumSignedOnError(): Integer;
begin
  Result := FMaximumSignedOnError;
end;

function TDSAuthorizedManager.GetWarningBeforePasswordExpired(): Integer;
begin
  Result := FWarningBeforePasswordExpired;
end;

function TDSAuthorizedManager.GetEnabledPasswordHistory(): Boolean;
begin
  Result := FEnabledPasswordHistory;
end;

function TDSAuthorizedManager.GetEnabledPasswordHistoryNumber(): Integer;
begin
  Result := FEnabledPasswordHistoryNumber;
end;

function TDSAuthorizedManager.GetEnabledRepeatingChar(): Boolean;
begin
  Result := FEnabledRepeatingChar;
end;

function TDSAuthorizedManager.GetEnabledPasswordSimilarToPrevious(): Boolean;
begin
  Result := FEnabledPasswordSimilarToPrevious;
end;

function TDSAuthorizedManager.GetEnabledStrenghtPasswordPolicy(): Boolean;
begin
  Result := FEnabledStrenghtPasswordPolicy;
end;

function TDSAuthorizedManager.GetNumberOfDaysBeforeExpired(): Integer;
begin
  Result := FNumberOfDaysBeforeExpired;
end;

function TDSAuthorizedManager.GetLastSignedOnDate(): Double;
begin
  Result := FLastSignedOnDate;
end;

function TDSAuthorizedManager.GetPasswordAge(): Integer;
begin
  with TSQLQuery.Create(Self) do
    try
      SQL.Text := _SQL_GET_PASSWORD_AGE_;
      SQLConnection := Self.SQLConnection;
      try
        Open();
        if (not FieldByName(_RESULT_).IsNull) then
          Result := FieldByName(_RESULT_).AsInteger
        else
          Result := 30;
        Close();
      except
        on E: Exception do
        begin
          Result := 30;
          LastErrorCode := _ERROR_UNDEFINED_;
          LastErrorMsg := E.Message;
          WriteLog(E.Message);
        end;
      end;
    finally
      Free();
    end;
end;

function TDSAuthorizedManager.SetPasswordAge(Value: Integer): Boolean;
begin
  ExecSQL(Format(_SQL_SET_PASSWORD_AGE_, [Value]))
end;

procedure TDSAuthorizedManager.SetMaximumUserIDLength(Value: Integer);
begin
  FMaximumUserIDLength := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetMinimumUserIDLength(Value: Integer);
begin
  FMinimumUserIDLength := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetMaximumPasswordLength(Value: Integer);
begin
  FMaximumPasswordLength := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetMinimumPasswordLength(Value: Integer);
begin
  FMinimumPasswordLength := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetMaximumSignedOnError(Value: Integer);
begin
  FMaximumSignedOnError := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetWarningBeforePasswordExpired(Value: Integer);
begin
  FWarningBeforePasswordExpired := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetEnabledPasswordHistory(Value: Boolean);
begin
  FEnabledPasswordHistory := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetEnabledPasswordHistoryNumber(Value: Integer);
begin
  FEnabledPasswordHistoryNumber := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetEnabledRepeatingChar(Value: Boolean);
begin
  FEnabledRepeatingChar := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetEnabledPasswordSimilarToPrevious
  (Value: Boolean);
begin
  FEnabledPasswordSimilarToPrevious := Value;
  // SaveAuthenticationConfigure();
end;

procedure TDSAuthorizedManager.SetEnabledStrenghtPasswordPolicy(Value: Boolean);
begin
  FEnabledStrenghtPasswordPolicy := Value;
  if (FEnabledStrenghtPasswordPolicy) then
  begin
    FMinimumPasswordLength := 6;
    if (FMaximumPasswordLength < FMinimumPasswordLength) then
      FMaximumPasswordLength := FMinimumPasswordLength;
  end;
  // SaveAuthenticationConfigure();
end;

function TDSAuthorizedManager.SaveAllAuthenticationConfigure(): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    SaveAuthenticationConfigure();
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

function TDSAuthorizedManager.LoadAllAuthenticationConfigure(): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    LoadAuthenticationConfigure();
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

function TDSAuthorizedManager.GetAppList(RoleID: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsAppGetList do
    begin
      ParamByName(_SP_PARAM_ROLE_ID_).AsString := RoleID;
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

function TDSAuthorizedManager.GetFormList(ParentAppID: Int64): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsGetFormList do
    begin
      ParamByName(_SP_PARAM_PARENT_APP_ID_).AsLargeInt := ParentAppID;
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

function TDSAuthorizedManager.GetControlList(ParentFormID: Int64;
  RoleID: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsGetControlList do
    begin
      ParamByName(_SP_PARAM_PARENT_FORM_ID_).AsLargeInt := ParentFormID;
      ParamByName(_SP_PARAM_ROLE_ID_).AsString := RoleID;
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

function TDSAuthorizedManager.UpdatePermission(RoleID: String;
  ComponentID: Int64; IsVisibled, IsEnabled: Boolean;
  IsApplication: Boolean): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with spUpdatePermission do
    begin
      ParamByName(_SP_PARAM_ROLE_ID_).AsString := RoleID;
      ParamByName(_SP_PARAM_COMPONENT_ID_).AsLargeInt := ComponentID;
      ParamByName(_SP_PARAM_IS_VISIBLED_).AsInteger := Abs(Integer(IsVisibled));
      ParamByName(_SP_PARAM_IS_ENABLED_).AsInteger := Abs(Integer(IsEnabled));
      ParamByName(_SP_PARAM_IS_APPLICATION_).AsInteger :=
        Abs(Integer(IsApplication));
      try
        ExecProc();
      except
      end;
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

function TDSAuthorizedManager.UpdateComponentDesc(ComponentID: Int64;
  ComponentDesc: String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with spUpdComponentDesc do
    begin
      WriteLog('ComponentID: ' + IntToStr(ComponentID));
      WriteLog('ComponentDesc: ' + ComponentDesc);
      ParamByName(_SP_PARAM_COMPONENT_ID_).AsLargeInt := ComponentID;
      ParamByName(_SP_PARAM_COMPONENT_DESC_).AsString := ComponentDesc;
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

function TDSAuthorizedManager.GetProcSource(ProcName: String): String;
begin
  LastErrorCode := _NO_ERROR_;
  with TSQLQuery.Create(Self) do
  try
    SQL.Text :=
      'SELECT PROC_SRC FROM ZSP_GET_PROC_SRC(' +
      QuotedStr(UpperCase(Trim(ProcName))) + ')';
    SQLConnection := Self.SQLConnection;
    try
      Open();
      Result := FieldByName('PROC_SRC').AsString;
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

function TDSAuthorizedManager.GetDataSelection(Sql_Text : String): Boolean;
begin
  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsSelect do
    begin
      SQL.Text := Sql_text;
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

end.
