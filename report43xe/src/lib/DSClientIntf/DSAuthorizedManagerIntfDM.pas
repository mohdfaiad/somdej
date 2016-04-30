unit DSAuthorizedManagerIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, SqlExpr,
  DSAuthorizedManagerIntf, DBXDataSnap, DBXCommon, frxClass, frxDBSet,
  frxExportPDF, frxRich;

type
  TControlItem = packed record
    ComponentID: Int64;
    ComponentDesc: String;
    IsVisibled: Boolean;
    IsEnabled: Boolean;
  end;

  TControlList = array of TControlItem;

  TDSAuthorizedManagerDM = class(TDSMainDM)
    cdsRoleList: TClientDataSet;
    cdsUserList: TClientDataSet;
    cdsRoleListROLE_REC_ID: TLargeintField;
    cdsRoleListROLE_ID: TStringField;
    cdsRoleListSTATUS_FLAG: TStringField;
    cdsRoleListSTATUS_DESC: TStringField;
    cdsRoleListDESCRIPTION: TStringField;
    cdsLookupRoleList: TClientDataSet;
    cdsLookupRoleListROLE_REC_ID: TLargeintField;
    cdsLookupRoleListROLE_ID: TStringField;
    cdsLookupRoleListSTATUS_FLAG: TStringField;
    cdsLookupRoleListSTATUS_DESC: TStringField;
    cdsLookupRoleListDESCRIPTION: TStringField;
    cdsUserListRECORD_ID: TLargeintField;
    cdsUserListSTATUS: TIntegerField;
    cdsUserListSTATUS_DESC: TStringField;
    cdsUserListORG_REC_ID: TLargeintField;
    cdsUserListORG_CODE: TLargeintField;
    cdsUserListORG_DESC: TStringField;
    cdsUserListUSER_ID: TStringField;
    cdsUserListOFFICER_ID: TLargeintField;
    cdsUserListUSER_PWD: TStringField;
    cdsUserListVALID_FROM: TDateField;
    cdsUserListVALID_THRU: TDateField;
    cdsUserListRALEASE_SUSPENDED_DATE: TDateField;
    cdsUserListUSER_NAME: TStringField;
    cdsUserListUSER_POSITION: TStringField;
    cdsUserListOFFICER_TYPE: TIntegerField;
    cdsUserListROLE_ID: TLargeintField;
    cdsUserListROLE_DESC: TStringField;
    cdsUserListDESCRIPTION: TStringField;
    cdsGetFormList: TClientDataSet;
    cdsGetControlList: TClientDataSet;
    cdsAppGetList: TClientDataSet;
    cdsAppGetListCOMPONENT_ID: TLargeintField;
    cdsAppGetListPARENT_ID: TLargeintField;
    cdsAppGetListCOMPONENT_TYPE: TIntegerField;
    cdsAppGetListCOMPONENT_CLASS: TStringField;
    cdsAppGetListCOMPONENT_NAME: TStringField;
    cdsAppGetListDESCRIPTION: TStringField;
    cdsAppGetListIS_VISIBLED: TSmallintField;
    cdsAppGetListIS_ENABLED: TSmallintField;
    cdsGetFormListCOMPONENT_ID: TLargeintField;
    cdsGetFormListPARENT_ID: TLargeintField;
    cdsGetFormListCOMPONENT_TYPE: TIntegerField;
    cdsGetFormListCOMPONENT_CLASS: TStringField;
    cdsGetFormListCOMPONENT_NAME: TStringField;
    cdsGetFormListDESCRIPTION: TStringField;
    cdsGetFormListIS_VISIBLED: TSmallintField;
    cdsGetFormListIS_ENABLED: TSmallintField;
    cdsGetControlListCOMPONENT_ID: TLargeintField;
    cdsGetControlListPARENT_ID: TLargeintField;
    cdsGetControlListCOMPONENT_TYPE: TIntegerField;
    cdsGetControlListCOMPONENT_CLASS: TStringField;
    cdsGetControlListCOMPONENT_NAME: TStringField;
    cdsGetControlListDESCRIPTION: TStringField;
    cdsGetControlListIS_VISIBLED: TSmallintField;
    cdsGetControlListIS_ENABLED: TSmallintField;
    cdsUserListLAST_SIGNED_ON_DATE: TSQLTimeStampField;
    cdsUserListCREATED_DATE: TSQLTimeStampField;
    cdsUserListCREATED_BY: TStringField;
    cdsUserListLAST_PWD_CHANGED_ON_DATE: TSQLTimeStampField;
    cdsUserListNUMBER_OF_DAYS_FROM_LAST_USED: TIntegerField;
    cdsUserListVALID_FROM_EX: TStringField;
    cdsUserListVALID_THRU_EX: TStringField;
    cdsUserListRALEASE_SUSPENDED_DATE_EX: TStringField;
    cdsUserListLAST_SIGNED_ON_DATE_EX: TStringField;
    cdsUserListCREATED_DATE_EX: TStringField;
    cdsUserListLAST_PWD_CHANGED_ON_DATE_EX: TStringField;
    CdsGetDataSelect: TClientDataSet;
    cdsAppGetListVISIBLED: TBooleanField;
    cdsAppGetListENABLED: TBooleanField;
    cdsGetControlListVISIBLED: TBooleanField;
    cdsGetControlListENABLED: TBooleanField;
    cdsGetFormListVISIBLED: TBooleanField;
    cdsGetFormListENABLED: TBooleanField;
    procedure cdsAppGetListAfterPost(DataSet: TDataSet);
    procedure cdsGetControlListAfterPost(DataSet: TDataSet);
    procedure cdsGetFormListAfterScroll(DataSet: TDataSet);
    procedure cdsAppGetListAfterOpen(DataSet: TDataSet);
    procedure cdsGetControlListAfterOpen(DataSet: TDataSet);
    procedure cdsGetControlListAfterClose(DataSet: TDataSet);
    procedure cdsAppGetListAfterClose(DataSet: TDataSet);
    procedure cdsUserListCalcFields(DataSet: TDataSet);
    procedure cdsAppGetListCalcFields(DataSet: TDataSet);
    procedure cdsGetControlListCalcFields(DataSet: TDataSet);
    procedure cdsGetFormListCalcFields(DataSet: TDataSet);
  private
    FSelectedRoleID: String;
    FSignedOnFailed: Integer;
    FOldUserPWD: String;

    FAppList: TControlList;
    FControlList: TControlList;
    function GetControlListID(var ControlList: TControlList; ControlID: Int64): Integer;
    function AddControlList(var ControlList: TControlList; ControlID: Int64;
      ControlDesc: String; IsVisibled, IsEnabled: Boolean): Boolean;
    function SetAuthorizedControlList(ControlList: TControlList; IsApp: Boolean = False): Boolean;

    function GetDSProxy(): TDSAuthorizedManagerClient; inline;
  public
    function LogInEx(UserID: string; UserPWD: string): Boolean;
    function AddComponent(ScreenName: string; ComponentName: string): Boolean;
    function AddComponentEx(ScreenName: string; ComponentName: string;
      IsEnabled: Boolean; IsVisibled: Boolean; IsEditable: Boolean;
      IsViewable: Boolean): Boolean;
    function DeleteComponent(ScreenName: string; ComponentName: string): Boolean;
    function AddAuthorizedRole(RoleID: string; ScreenName: string;
      ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean;
      IsEditable: Boolean; IsViewable: Boolean): Boolean;
    function AddAuthorizedUser(UserID: string; ScreenName: string;
      ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean;
      IsEditable: Boolean; IsViewable: Boolean): Boolean;
    function ChangeUserRole(RoleID: string): Boolean;
    function UseSelfAuthorized(RoleID: string): Boolean;
    function RemoveSelfAuthorized(RoleID: string): Boolean;
    function GetRoleList(Criteria: string; SearchMode:
      Integer; OrdeFields: string): Boolean;
    function GetRoleInfo(RoleRecID: Int64): Boolean;
    function AddRole(RoleRecID: Int64; RoleID, StatusFlag: string;
      RoleDesc: string): Boolean;
    function DeleteRole(RoleRecID: Int64): Boolean;
    function GetUserList(Criteria: string; SearchMode: Integer;
      OrdeFields: string): Boolean;
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
    function GetEnabledPasswordHistoryNumber(): Integer;
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
    function UpdatePermission(RoleID: String; ComponentID: Int64; IsVisibled, IsEnabled: Boolean;
      IsApplication: Boolean = True): Boolean;
    function UpdateComponentDesc(ComponentID: Int64; ComponentDesc: String): Boolean;
    function SaveAllAuthenticationConfigure(): Boolean;
    function LoadAllAuthenticationConfigure(): Boolean;
    function GetNumberOfDaysBeforeExpired(): Integer;
    function GetLastSignedOnDate(): TDateTime;
    function GetPasswordAge(): Integer;
    function SetPasswordAge(Value: Integer): Boolean;
    function GetProcSource(ProcName: String): String;
    function GetDataSelection(Sql_text: string): Boolean;

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    function SaveAuthorizedAppList(): Boolean;
    function SaveAuthorizedControlList(): Boolean;
    procedure SetEventFormListAfterScroll(IsEvent: Boolean);

    property AuthorizedManagerProxy: TDSAuthorizedManagerClient read GetDSProxy;
    property SelectedRoleID: String read FSelectedRoleID write FSelectedRoleID;
    property SignedOnFailed: Integer read FSignedOnFailed write FSignedOnFailed;
    property OldUserPWD: String read FOldUserPWD write FOldUserPWD;
  end;

var
  DSAuthorizedManagerDM: TDSAuthorizedManagerDM;

implementation

{$R *.dfm}

function TDSAuthorizedManagerDM.GetControlListID(var ControlList: TControlList; ControlID: Int64): Integer;
var
  I: Integer;
begin
  for I := Low(ControlList) to High(ControlList) do
  begin
    if (ControlList[I].ComponentID = ControlID) then
    begin
      Exit(I);
    end;
  end;
  Result := -1;
end;

function TDSAuthorizedManagerDM.AddControlList(var ControlList: TControlList;
  ControlID: Int64; ControlDesc: String; IsVisibled, IsEnabled: Boolean): Boolean;
var
  Idx: Integer;
begin
  Idx := GetControlListID(ControlList, ControlID);
  if (Idx = -1) then
  begin
    Idx := High(ControlList);
    if (Idx = -1) then
    begin
      SetLength(ControlList, 1);
      Idx := 0;
    end else
    begin
      SetLength(ControlList, Idx + 2);
      Idx := Idx + 1;
    end;
  end;

  ControlList[Idx].ComponentID := ControlID;
  ControlList[Idx].ComponentDesc := ControlDesc;
  ControlList[Idx].IsVisibled := IsVisibled;
  ControlList[Idx].IsEnabled := IsEnabled;
end;

function TDSAuthorizedManagerDM.SetAuthorizedControlList(ControlList: TControlList; IsApp: Boolean): Boolean;
var
  I: Integer;
begin
  Result := True;
  try
    for I := Low(ControlList) to High(ControlList) do
    begin
      if (ControlList[I].ComponentID <> 0)then
      begin
        UpdatePermission(
          FSelectedRoleID, ControlList[I].ComponentID,
          ControlList[I].IsVisibled, ControlList[I].IsEnabled, IsApp);

        if (ControlList[I].ComponentDesc <> '') then
        begin
          UpdateComponentDesc(
            ControlList[I].ComponentID, ControlList[I].ComponentDesc);
        end;
      end;
    end;
  except
    Exit(False);
  end;
  if (Result) then SyncChanged();
end;

procedure TDSAuthorizedManagerDM.cdsAppGetListAfterClose(DataSet: TDataSet);
begin
  SetLength(FAppList, 0);
end;

procedure TDSAuthorizedManagerDM.cdsAppGetListAfterOpen(DataSet: TDataSet);
begin
  SetLength(FAppList, 0);
end;

procedure TDSAuthorizedManagerDM.cdsAppGetListAfterPost(DataSet: TDataSet);
begin
  AddControlList(
    FAppList, cdsAppGetListCOMPONENT_ID.AsLargeInt,
    cdsAppGetListDESCRIPTION.AsString,
    Boolean(cdsAppGetListIS_VISIBLED.AsInteger),
    Boolean(cdsAppGetListIS_ENABLED.AsInteger));
end;

procedure TDSAuthorizedManagerDM.cdsAppGetListCalcFields(DataSet: TDataSet);
begin
  if cdsAppGetListVISIBLED.IsNull then
  begin
    cdsAppGetListVISIBLED.Value := (cdsAppGetListIS_VISIBLED.Value <> 0);
    if cdsAppGetListVISIBLED.IsNull then
      cdsAppGetListVISIBLED.Value := True;
  end;

  if cdsAppGetListENABLED.IsNull then
  begin
    cdsAppGetListENABLED.Value := (cdsAppGetListIS_ENABLED.Value <> 0);
    if cdsAppGetListENABLED.IsNull then
      cdsAppGetListENABLED.Value := True;
  end;
end;

procedure TDSAuthorizedManagerDM.cdsGetFormListAfterScroll(DataSet: TDataSet);
begin
  cdsGetControlList.Close();
  if GetControlList(cdsGetFormListCOMPONENT_ID.AsLargeInt, FSelectedRoleID) then
    cdsGetControlList.Open();
end;

procedure TDSAuthorizedManagerDM.cdsGetFormListCalcFields(DataSet: TDataSet);
begin
  if cdsGetFormListVISIBLED.IsNull then
  begin
    cdsGetFormListVISIBLED.Value := (cdsGetFormListIS_VISIBLED.Value <> 0);
    if cdsGetFormListVISIBLED.IsNull then
      cdsGetFormListVISIBLED.Value := True;
  end;

  if cdsGetFormListENABLED.IsNull then
  begin
    cdsGetFormListENABLED.Value := (cdsGetFormListIS_ENABLED.Value <> 0);
    if cdsGetFormListENABLED.IsNull then
      cdsGetFormListENABLED.Value := True;
  end;
end;

procedure TDSAuthorizedManagerDM.cdsUserListCalcFields(DataSet: TDataSet);
begin
  cdsUserListVALID_FROM_EX.AsString := DateStr(cdsUserListVALID_FROM.AsDateTime);
  cdsUserListVALID_THRU_EX.AsString := DateStr(cdsUserListVALID_THRU.AsDateTime);
  cdsUserListRALEASE_SUSPENDED_DATE_EX.AsString := DateStr(cdsUserListRALEASE_SUSPENDED_DATE.AsDateTime);
  cdsUserListLAST_SIGNED_ON_DATE_EX.AsString := DateStrEx(cdsUserListLAST_SIGNED_ON_DATE.AsDateTime);
  cdsUserListCREATED_DATE_EX.AsString := DateStrEX(cdsUserListCREATED_DATE.AsDateTime);
  cdsUserListLAST_PWD_CHANGED_ON_DATE_EX.AsString := DateStrEX(cdsUserListLAST_PWD_CHANGED_ON_DATE.AsDateTime)
end;

procedure TDSAuthorizedManagerDM.cdsGetControlListAfterClose(DataSet: TDataSet);
begin
  SetLength(FControlList, 0);
end;

procedure TDSAuthorizedManagerDM.cdsGetControlListAfterOpen(DataSet: TDataSet);
begin
  SetLength(FControlList, 0);
end;

procedure TDSAuthorizedManagerDM.cdsGetControlListAfterPost(DataSet: TDataSet);
begin
  AddControlList(
    FControlList, cdsGetControlListCOMPONENT_ID.AsLargeInt,
    cdsGetControlListDESCRIPTION.AsString,
    Boolean(cdsGetControlListIS_VISIBLED.AsInteger),
    Boolean(cdsGetControlListIS_ENABLED.AsInteger));
end;

procedure TDSAuthorizedManagerDM.cdsGetControlListCalcFields(DataSet: TDataSet);
begin
  if cdsGetControlListVISIBLED.IsNull then
  begin
    cdsGetControlListVISIBLED.Value := (cdsGetControlListIS_VISIBLED.Value <> 0);
    if cdsGetControlListVISIBLED.IsNull then
      cdsGetControlListVISIBLED.Value := True;
  end;

  if cdsGetControlListENABLED.IsNull then
  begin
    cdsGetControlListENABLED.Value := (cdsGetControlListIS_ENABLED.Value <> 0);
    if cdsGetControlListENABLED.IsNull then
      cdsGetControlListENABLED.Value := True;
  end;
end;

function TDSAuthorizedManagerDM.GetDSProxy(): TDSAuthorizedManagerClient;
begin
  Result := TDSAuthorizedManagerClient(DSProxy);
end;

function TDSAuthorizedManagerDM.LogInEx(UserID: string; UserPWD: string): Boolean;
begin
  Result := AuthorizedManagerProxy.LogInEx(UserID, UserPWD);
end;

function TDSAuthorizedManagerDM.AddComponent(ScreenName: string;
  ComponentName: string): Boolean;
begin
  Result := AuthorizedManagerProxy.AddComponent(ScreenName, ComponentName);
end;

function TDSAuthorizedManagerDM.AddComponentEx(ScreenName: string;
  ComponentName: string; IsEnabled: Boolean; IsVisibled: Boolean;
  IsEditable: Boolean; IsViewable: Boolean): Boolean;
begin
  Result :=
    AuthorizedManagerProxy.AddComponentEx(
      ScreenName, ComponentName, IsEnabled, IsVisibled,
      IsEditable, IsViewable);
end;

function TDSAuthorizedManagerDM.DeleteComponent(ScreenName: string;
  ComponentName: string): Boolean;
begin
  Result := AuthorizedManagerProxy.DeleteComponent(ScreenName, ComponentName);
end;

function TDSAuthorizedManagerDM.AddAuthorizedRole(RoleID: string;
  ScreenName: string; ComponentName: string; IsEnabled: Boolean;
  IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
begin
  Result :=
    AuthorizedManagerProxy.AddAuthorizedRole(
      RoleID, ScreenName, ComponentName, IsEnabled, IsVisibled,
      IsEditable, IsViewable);
end;

function TDSAuthorizedManagerDM.AddAuthorizedUser(UserID: string;
  ScreenName: string; ComponentName: string; IsEnabled: Boolean;
  IsVisibled: Boolean; IsEditable: Boolean; IsViewable: Boolean): Boolean;
begin
  Result :=
    AuthorizedManagerProxy.AddAuthorizedUser(
      UserID, ScreenName, ComponentName, IsEnabled, IsVisibled,
      IsEditable, IsViewable);
end;

function TDSAuthorizedManagerDM.ChangeUserRole(RoleID: string): Boolean;
begin
  Result := AuthorizedManagerProxy.ChangeUserRole(RoleID);
end;

function TDSAuthorizedManagerDM.UseSelfAuthorized(RoleID: string): Boolean;
begin
  Result := AuthorizedManagerProxy.UseSelfAuthorized(RoleID);
end;

function TDSAuthorizedManagerDM.RemoveSelfAuthorized(RoleID: string): Boolean;
begin
  Result := AuthorizedManagerProxy.RemoveSelfAuthorized(RoleID);
end;

function TDSAuthorizedManagerDM.GetRoleList(Criteria: string; SearchMode: Integer;
  OrdeFields: string): Boolean;
begin
  Result := AuthorizedManagerProxy.GetRoleList(Criteria, SearchMode, OrdeFields);
end;

function TDSAuthorizedManagerDM.GetRoleInfo(RoleRecID: Int64): Boolean;
begin
  Result := AuthorizedManagerProxy.GetRoleInfo(RoleRecID);
end;

function TDSAuthorizedManagerDM.AddRole(RoleRecID: Int64; RoleID, StatusFlag: string;
  RoleDesc: string): Boolean;
begin
  Result := AuthorizedManagerProxy.AddRole(RoleRecID, RoleID, StatusFlag, RoleDesc);
end;

function TDSAuthorizedManagerDM.DeleteRole(RoleRecID: Int64): Boolean;
begin
  Result := AuthorizedManagerProxy.DeleteRole(RoleRecID);
end;

function TDSAuthorizedManagerDM.GetUserList(Criteria: string; SearchMode: Integer;
  OrdeFields: string): Boolean;
begin
  Result := AuthorizedManagerProxy.GetUserList(Criteria, SearchMode, OrdeFields);
end;

function TDSAuthorizedManagerDM.GetUserInfo(UserRecID: Int64): Boolean;
begin
  Result := AuthorizedManagerProxy.GetUserInfo(UserRecID);
end;

function TDSAuthorizedManagerDM.AddUser(UserRecID, RoleRecID, BranchCode: Int64;
  UserID, UserPWD, UserName, StatusFlag: string;
  ValidFrom, ValidThru, SuspendedDate: Double; Description: string): Boolean;
begin
  Result := AuthorizedManagerProxy.AddUser(UserRecID, RoleRecID, BranchCode,
    UserID, UserPWD, UserName, StatusFlag, ValidFrom, ValidThru, SuspendedDate,
    Description);
end;

function TDSAuthorizedManagerDM.DeleteUser(UserRecID: Int64): Boolean;
begin
  Result := AuthorizedManagerProxy.DeleteUser(UserRecID);
end;

function TDSAuthorizedManagerDM.ChangeUserPassword(UID: string; NewPWD: string): Boolean;
begin
  Result := IsPasswordMatchedPolicy(UID, NewPWD, FOldUserPWD);
  if (Result) then
    Result := AuthorizedManagerProxy.ChangeUserPassword(UID, NewPWD);
end;

function TDSAuthorizedManagerDM.ResetUserPassword(UID: string): Boolean;
begin
  Result := AuthorizedManagerProxy.ResetUserPassword(UID);
end;

function TDSAuthorizedManagerDM.UserReleaseLock(UID: string): Boolean;
begin
  Result := AuthorizedManagerProxy.UserReleaseLock(UID);
end;

function TDSAuthorizedManagerDM.UserLockUnLock(UID: string; IsLogged: Boolean): Boolean;
begin
  Result := AuthorizedManagerProxy.UserLockUnLock(UID, IsLogged);
end;

function TDSAuthorizedManagerDM.IsPasswordMatchedPolicy(UserID, PWD, OldPWD: String): Boolean;
begin
  Result := AuthorizedManagerProxy.IsPasswordMatchedPolicy(UserID, PWD, OldPWD);
end;

function TDSAuthorizedManagerDM.GetMaximumUserIDLength: Integer;
begin
  Result := AuthorizedManagerProxy.GetMaximumUserIDLength();
end;

function TDSAuthorizedManagerDM.GetMinimumUserIDLength: Integer;
begin
  Result := AuthorizedManagerProxy.GetMinimumUserIDLength();
end;

function TDSAuthorizedManagerDM.GetMaximumPasswordLength: Integer;
begin
  Result := AuthorizedManagerProxy.GetMaximumPasswordLength();
end;

function TDSAuthorizedManagerDM.GetMinimumPasswordLength: Integer;
begin
  Result := AuthorizedManagerProxy.GetMinimumPasswordLength();
end;

function TDSAuthorizedManagerDM.GetMaximumSignedOnError: Integer;
begin
  Result := AuthorizedManagerProxy.GetMaximumSignedOnError();
end;

function TDSAuthorizedManagerDM.GetWarningBeforePasswordExpired: Integer;
begin
  Result := AuthorizedManagerProxy.GetWarningBeforePasswordExpired();
end;

function TDSAuthorizedManagerDM.GetEnabledPasswordHistory: Boolean;
begin
  Result := AuthorizedManagerProxy.GetEnabledPasswordHistory();
end;

function TDSAuthorizedManagerDM.GetEnabledPasswordHistoryNumber(): Integer;
begin
  Result := AuthorizedManagerProxy.GetEnabledPasswordHistoryNumber();
end;

function TDSAuthorizedManagerDM.GetEnabledRepeatingChar: Boolean;
begin
  Result := AuthorizedManagerProxy.GetEnabledRepeatingChar();
end;

function TDSAuthorizedManagerDM.GetEnabledPasswordSimilarToPrevious: Boolean;
begin
  Result := AuthorizedManagerProxy.GetEnabledPasswordSimilarToPrevious();
end;

function TDSAuthorizedManagerDM.GetEnabledStrenghtPasswordPolicy: Boolean;
begin
  Result := AuthorizedManagerProxy.GetEnabledStrenghtPasswordPolicy();
end;

procedure TDSAuthorizedManagerDM.SetMaximumUserIDLength(Value: Integer);
begin
  AuthorizedManagerProxy.SetMaximumUserIDLength(Value);
end;

procedure TDSAuthorizedManagerDM.SetMinimumUserIDLength(Value: Integer);
begin
  AuthorizedManagerProxy.SetMinimumUserIDLength(Value);
end;

procedure TDSAuthorizedManagerDM.SetMaximumPasswordLength(Value: Integer);
begin
  AuthorizedManagerProxy.SetMaximumPasswordLength(Value);
end;

procedure TDSAuthorizedManagerDM.SetMinimumPasswordLength(Value: Integer);
begin
  AuthorizedManagerProxy.SetMinimumPasswordLength(Value);
end;

procedure TDSAuthorizedManagerDM.SetMaximumSignedOnError(Value: Integer);
begin
  AuthorizedManagerProxy.SetMaximumSignedOnError(Value);
end;

procedure TDSAuthorizedManagerDM.SetWarningBeforePasswordExpired(Value: Integer);
begin
  AuthorizedManagerProxy.SetWarningBeforePasswordExpired(Value);
end;

procedure TDSAuthorizedManagerDM.SetEnabledPasswordHistory(Value: Boolean);
begin
  AuthorizedManagerProxy.SetEnabledPasswordHistory(Value);
end;

procedure TDSAuthorizedManagerDM.SetEnabledPasswordHistoryNumber(Value: Integer);
begin
  AuthorizedManagerProxy.SetEnabledPasswordHistoryNumber(Value);
end;


procedure TDSAuthorizedManagerDM.SetEnabledRepeatingChar(Value: Boolean);
begin
  AuthorizedManagerProxy.SetEnabledRepeatingChar(Value);
end;

procedure TDSAuthorizedManagerDM.SetEnabledPasswordSimilarToPrevious(Value: Boolean);
begin
  AuthorizedManagerProxy.SetEnabledPasswordSimilarToPrevious(Value);
end;

procedure TDSAuthorizedManagerDM.SetEnabledStrenghtPasswordPolicy(Value: Boolean);
begin
  AuthorizedManagerProxy.SetEnabledStrenghtPasswordPolicy(Value);
end;

function TDSAuthorizedManagerDM.GetAppList(RoleID: String): Boolean;
begin
  Result := AuthorizedManagerProxy.GetAppList(RoleID);
end;

function TDSAuthorizedManagerDM.GetFormList(ParentAppID: Int64): Boolean;
begin
  Result := AuthorizedManagerProxy.GetFormList(ParentAppID);
end;


function TDSAuthorizedManagerDM.GetControlList(ParentFormID: Int64; RoleID: String): Boolean;
begin
  Result := AuthorizedManagerProxy.GetControlList(ParentFormID, RoleID);
end;

function TDSAuthorizedManagerDM.UpdatePermission(RoleID: String; ComponentID: Int64; IsVisibled, IsEnabled: Boolean;
  IsApplication: Boolean = True): Boolean;
begin
  Result := AuthorizedManagerProxy.UpdatePermission(
    RoleID, ComponentID, IsVisibled, IsEnabled, IsApplication);
end;

function TDSAuthorizedManagerDM.UpdateComponentDesc(ComponentID: Int64; ComponentDesc: String): Boolean;
begin
  Result := AuthorizedManagerProxy.UpdateComponentDesc(ComponentID, ComponentDesc);
end;

function TDSAuthorizedManagerDM.SaveAllAuthenticationConfigure(): Boolean;
begin
  Result := AuthorizedManagerProxy.SaveAllAuthenticationConfigure();
end;

function TDSAuthorizedManagerDM.LoadAllAuthenticationConfigure(): Boolean;
begin
  Result := AuthorizedManagerProxy.LoadAllAuthenticationConfigure();
end;

function TDSAuthorizedManagerDM.GetNumberOfDaysBeforeExpired(): Integer;
begin
  Result := AuthorizedManagerProxy.GetNumberOfDaysBeforeExpired();
end;

function TDSAuthorizedManagerDM.GetLastSignedOnDate(): TDateTime;
begin
  Result := TDateTime(AuthorizedManagerProxy.GetLastSignedOnDate());
end;

function TDSAuthorizedManagerDM.GetPasswordAge(): Integer;
begin
  Result := AuthorizedManagerProxy.GetPasswordAge();
end;

function TDSAuthorizedManagerDM.SetPasswordAge(Value: Integer): Boolean;
begin
  Result := AuthorizedManagerProxy.SetPasswordAge(Value);
end;

function TDSAuthorizedManagerDM.GetProcSource(ProcName: String): String;
begin
  Result := AuthorizedManagerProxy.GetProcSource(ProcName);
end;

function TDSAuthorizedManagerDM.GetDataSelection(Sql_text: string): Boolean;
begin
   Result := AuthorizedManagerProxy.GetDataSelection(Sql_text);
end;

function TDSAuthorizedManagerDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSAuthorizedManagerClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSAuthorizedManagerDM.SaveAuthorizedAppList(): Boolean;
begin
  Result := SetAuthorizedControlList(FAppList, True);
end;

function TDSAuthorizedManagerDM.SaveAuthorizedControlList(): Boolean;
begin
  Result := SetAuthorizedControlList(FControlList, False);
end;

procedure TDSAuthorizedManagerDM.SetEventFormListAfterScroll(IsEvent: Boolean);
begin
  if (IsEvent) then
    cdsGetFormList.AfterScroll := cdsGetFormListAfterScroll
  else
    cdsGetFormList.AfterScroll := nil;
end;

end.
