unit DSMainIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntf, SqlExpr, DBXDataSnap,
  DBXCommon, DBXPool, frxClass, frxExportPDF, frxDBSet, frxRichEdit,
  frxGradient, frxChBox, frxRich, frxOLE, frxBarcode, IndyPeerImpl;

type
  TDSMainDM = class(TDataModule)
    dspDataConnection: TDSProviderConnection;
    cdsDescData: TClientDataSet;
    cdsProvince: TClientDataSet;
    cdsAmphur: TClientDataSet;
    cdsDescList: TClientDataSet;
    cdsAccountInternalList: TClientDataSet;
    frxReport: TfrxReport;
    frxPDFExport: TfrxPDFExport;
    frxRepData: TfrxDBDataset;
    cdsBranchList: TClientDataSet;
    cdsBranchListORG_ID: TLargeintField;
    cdsBranchListORG_CODE: TStringField;
    cdsBranchListORG_NAME: TStringField;
    cdsTranAccount: TClientDataSet;
    cdsTranAccountACC_MAIN_CODE: TStringField;
    cdsTranAccountDESCRIPTION: TStringField;
    cdsTranAccountACC_NAME: TStringField;
    cdsTranAccountDISPLAY_NAME: TStringField;
    cdsTranAccountPRINTING_NAME: TStringField;
    cdsReportData: TClientDataSet;
    cdsReportInfo: TClientDataSet;
    cdsReportInfoREPORT_CODE: TStringField;
    cdsReportInfoREPORT_NAME: TStringField;
    cdsReportInfoFR3_NAME: TStringField;
    cdsMenusList: TClientDataSet;
    cdsGetComponentList: TClientDataSet;
    cdsGetComponentListCOMPONENT_TYPE: TIntegerField;
    cdsGetComponentListCOMPONENT_CLASS: TStringField;
    cdsGetComponentListCOMPONENT_NAME: TStringField;
    cdsGetComponentListIS_VISIBLED: TSmallintField;
    cdsGetComponentListIS_ENABLED: TSmallintField;
    MenusItemIndex: TIntegerField;
    MenusParentRecID: TLargeintField;
    MenusSelfRecID: TLargeintField;
    MenusAppName: TStringField;
    MenusNAME: TStringField;
    MenusNameDesc: TStringField;
    MenusIsEnabled: TSmallintField;
    MenusIsVisibled: TSmallintField;
    cdsGetCodeDescList: TClientDataSet;
    cdsBank: TClientDataSet;
    cdsBankBranch: TClientDataSet;
    cdsGetLoanType: TClientDataSet;
    cdsMiscDataSet: TClientDataSet;
    MenusFORM_NAME: TStringField;
    cdsGetCodeDescListCODE: TLargeintField;
    cdsGetCodeDescListDESCRIPTION: TStringField;
    cdsGetCodeDescListDESCRIPTION_EX: TStringField;
    cdsBankBANK_CODE: TStringField;
    cdsBankBANK_NAME: TStringField;
    cdsBankBANK_ABBR: TStringField;
    cdsBankBANK_NAME_EX: TStringField;
    cdsBankBranchBANK_BRANCH_CODE: TStringField;
    cdsBankBranchBANK_BRANCH_NAME: TStringField;
    cdsBankBranchBANK_BRANCH_NAME_EX: TStringField;
    cdsGetLoanTypeLOAN_TYPE: TStringField;
    cdsGetLoanTypeLOAN_TYPE_DESC: TStringField;
    cdsGetLoanTypeLOAN_TYPE_CODE_DESC: TStringField;
    cdsReportList: TClientDataSet;
    cdsReportListFORMS_DATA_REC_ID: TLargeintField;
    cdsReportListREPORT_CODE: TStringField;
    cdsReportListREPORT_NAME: TStringField;
    cdsReportListSQL_STATEMENT: TStringField;
    cdsReportListDESCRIPTION: TStringField;
    cdsGetFrmReport: TClientDataSet;
    MenusPARAM_LIST: TStringField;
    cdsReportInfoPL_NAME: TStringField;
    cdsDescListPREFIX: TStringField;
    cdsDescListCODE: TStringField;
    cdsDescListDESCRIPTION: TStringField;
    cdsDescListTHAI_DESC: TStringField;
    CdsTtGetGt1ByNo: TClientDataSet;
    CdsTtGetGt1ByNoSTSGT1: TStringField;
    CdsTtGetGt1ByNoYARGT1: TIntegerField;
    CdsTtGetGt1ByNoPRDGT1: TIntegerField;
    CdsTtGetGt1ByNoCMPGT1: TStringField;
    CdsTtGetGt1ByNoBRNGT1: TStringField;
    CdsTtGetGt1ByNoDCDGT1: TStringField;
    CdsTtGetGt1ByNoDNOGT1: TIntegerField;
    CdsTtGetGt1ByNoSEQGT1: TIntegerField;
    CdsTtGetGt1ByNoIDTGT1: TDateField;
    CdsTtGetGt1ByNoAGPGT1: TStringField;
    CdsTtGetGt1ByNoASGGT1: TStringField;
    CdsTtGetGt1ByNoATPGT1: TStringField;
    CdsTtGetGt1ByNoARNGT1: TStringField;
    CdsTtGetGt1ByNoACCAC1: TStringField;
    CdsTtGetGt1ByNoTNMAC1: TStringField;
    CdsTtGetGt1ByNoPFXGT1: TStringField;
    CdsTtGetGt1ByNoCHQGT1: TStringField;
    CdsTtGetGt1ByNoDCRGT1: TStringField;
    CdsTtGetGt1ByNoDAMTGT1: TFMTBCDField;
    CdsTtGetGt1ByNoCAMTGT1: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CdsTtGetGt1ByNoDAMTGT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtGetGt1ByNoIDTGT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FPrintURL , FReportCode , FSqlParam: String;
    FProxy: TDSMainClient;
    FLoggedIn: Boolean;
    FUserID: String;
    FUserPWD: String;


    FCMPUser : String;
    FBRNUser : String;
    FDEPUser: String;

  protected
    procedure UpdateDSProviderConnection(dsConnection: TSQLConnection);
    property DSProxy: TDSMainClient read FProxy write FProxy;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy;

    function GetCodeDesc(CodeDesc: String; Separator: String = '-'): String;
    function LookupDS(cdsData: TClientDataSet): TDataSource; inline;
    function GetDate(_DateTime: TDateTime): string;

    function GetDSC(AbbrCode: String; PrefixCode: string = '0';
      OrderBy: String = 'CNOCDE'): TDataSource;
    function GetAccountInternal(account_type: string; branch_code: Integer;
      loan_type: string): TDataSource;

    function GetTranAccount(account_type: string; branch_code: Integer;
      loan_type: string): TDataSource;

    function LogIn(UserID: string; UserPWD: string): Boolean;
    function LogOut(): Boolean;
    function StartTrans(): Boolean;
    function CommitTrans(): Boolean;
    function RollBackTrans(): Boolean;
    function InTrans(): Boolean;
    function ExecSQL(CommandText: string): Boolean;
    function GetCompanyCode(): Integer;
    function GetCompanyOrgCode(): string;
    function GetCompanyName(): string;
    function GetBranchCode(): Integer;
    function GetBranchOrgCode(): string;
    function GetBranchName(): string;
    function GetUserRole(): string;
    function GetUserID(): string;
    function GetUserPWD(): string;
    function GetUserName(): string;
    procedure WriteLog(Msg: string);
    function GetLastErrorCode(): Int64;
    function GetLastErrorMessage(): string;
    function IsEnabled(ScreenName: string; ComponentName: string): Boolean;
    function IsVisible(ScreenName: string; ComponentName: string): Boolean;
    function IsEditable(ScreenName: string; ComponentName: string): Boolean;
    function IsViewable(ScreenName: string; ComponentName: string): Boolean;
    function GetDescription(Code: Integer; Flag: string = ''): Boolean;
    function GetAmphurList(ProvinceCode: string): Boolean;
    function GetDescList(Abbr_Code: string; Prefix_code: string = '0';
      Order_by: string = 'CNOCDE'): Boolean;
    function GetAccountInternalList(account_type: string; branch_code: Integer;
      loan_type: string): Boolean;
    procedure SetBankBranchList();
    procedure CALWHT(_NET: Double; var _VAT: Double; var _WHT: Double;
      var _TOT: Double; JURISTIC_FLAG: String = 'N');
    function GetSystemDate: Double;
    function GetReportInfo(REPORT_CODE: string): Boolean;
    function GetReportList(): Boolean;
    function GetPrintReportForm(SQLStatment: string): Boolean;

    function DeleteComponent(AppName, FormName: string): Boolean;
    function InsertComponent(AppName, FormName, ParentName, ComponentClass,
      ComponentName, Description: string): Boolean;
    function GetComponentList(AppName, FormName: string): Boolean;

    function SyncChanged(): Boolean;

    function RecordVerify(key: string; Value: string): Boolean;
    function RecordSetLock(key: string; Value: string): Boolean;
    function RecordReleaseLock(key: string; Value: string): Boolean;
    function RecordReleaseAllLock(UserID: String): Boolean;
    function RecordGetUserLock(key: string; Value: string): string;

    function CreateProxyClass(dsConnection: TSQLConnection): Boolean; virtual;

    function IIF(Expression: Boolean; S1, S2: String): String; overload; inline;
    function IIF(Expression: Boolean; N1, N2: Integer): Integer; overload; inline;
    function IIF(Expression: Boolean; F1, F2: Double): Double; overload; inline;

    function LPADWithZero(S: String; Count: Integer = 2): String; overload;
    function LPADWithZero(N: Integer; Count: Integer = 2): String; overload;

    function LPAD(S: String; Count: Integer = 2): String; overload;
    function LPAD(S: String; Ch: Char = '0'; Count: Integer = 2): String; overload;
    function LPAD(N: Integer; Count: Integer = 2): String; overload;
    function LPAD(N: Integer; Ch: Char = '0'; Count: Integer = 2): String; overload;

    function ToCurrency(NStr: String): Currency;
    function ToFloat(NStr: String): Double;
    function ToInteger(NStr: String): Int64;

    function ToString(N: Double): String; overload;
    function ToString(N: Currency): String; overload;
    function ToString(N: Int64): String; overload;

    function DateStr(_Date: TDateTime): String;
    function DateStrEx(_Date: TDateTime): String;

    function FSBuddhistDateToStr(_Date: TDateTime): String;
    function FSBuddhistDateToDate(_Date: TDateTime): TDateTime;
    function FSBuddhistDateToDateEx(_Date: TDateTime): TDateTime;

    function GetAppDateAS400: Double;

    property MainProxy: TDSMainClient read FProxy;
    property UserID: String read FUserID write FUserID;
    property UserPWD: String read FUserPWD write FUserPWD;

    property CMPUser: String read FCMPUser write FCMPUser;
    property BRNUser: String read FBRNUser write FBRNUser;
    property DEPUser: String read FDEPUser write FDEPUser;

    property HasLoggedIn: Boolean read FLoggedIn write FLoggedIn;

    //*****=================Printer===================
    function CreatePDFFile(_PDFFileName: String): String;
    function CreatePDFFileEx(_PDFFileName: String): String;

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


    property RReportCode: String read FReportCode write FReportCode;
    property RSqlParam: String read FSqlParam write FSqlParam;


  end;

var
  DSMainDM: TDSMainDM;

implementation

{$R *.dfm}

uses ServerModuleEx;

constructor TDSMainDM.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  //
end;

function TDSMainDM.IIF(Expression: Boolean; S1, S2: String): String;
begin
  if (Expression) then
    Result := S1
  else
    Result := S2;
end;

function TDSMainDM.IIF(Expression: Boolean; N1, N2: Integer): Integer;
begin
  if (Expression) then
    Result := N1
  else
    Result := N2;
end;

function TDSMainDM.IIF(Expression: Boolean; F1, F2: Double): Double;
begin
  if (Expression) then
    Result := F1
  else
    Result := F2;
end;

function TDSMainDM.LPADWithZero(S: String; Count: Integer = 2): String;
begin
  while (Length(S) < Count) do
    S := '0' + S;
  Result := S;
end;

function TDSMainDM.LPADWithZero(N: Integer; Count: Integer = 2): String;
var
  S: String;
begin
  S := IntToStr(N);
  while (Length(S) < Count) do
    S := '0' + S;
  Result := S;
end;


function TDSMainDM.LPAD(S: String; Count: Integer = 2): String;
begin
  while (Length(S) < Count) do
    S := '0' + S;
  Result := S;
end;

function TDSMainDM.LPAD(S: String; Ch: Char = '0'; Count: Integer = 2): String;
begin
  while (Length(S) < Count) do
    S := Ch + S;
  Result := S;
end;

function TDSMainDM.LPAD(N: Integer; Count: Integer = 2): String;
var
  S: String;
begin
  S := IntToStr(N);
  while (Length(S) < Count) do
    S := '0' + S;
  Result := S;
end;

function TDSMainDM.LPAD(N: Integer; Ch: Char = '0'; Count: Integer = 2): String;
var
  S: String;
begin
  S := IntToStr(N);
  while (Length(S) < Count) do
    S := Ch + S;
  Result := S;
end;

function PrepareStrToNum(NStr: String): String;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(Trim(NStr)) do
  begin
    if (CharInSet(NStr[i], ['0'..'9', '.'])) then
      Result := Result + NStr[i];
  end;
end;

function TDSMainDM.ToCurrency(NStr: String): Currency;
begin
  try
    Result := StrToCurr(PrepareStrToNum(NStr));
  except
    Result := 0.00;
  end;
end;

function TDSMainDM.ToFloat(NStr: String): Double;
begin
  try
    Result := StrToFloat(PrepareStrToNum(NStr));
  except
    Result := 0.00;
  end;
end;

function TDSMainDM.ToInteger(NStr: String): Int64;
begin
  try
    Result := StrToInt(PrepareStrToNum(NStr));
  except
    Result := 0;
  end;
end;

function TDSMainDM.ToString(N: Double): String;
begin
  Result := Format('%f', [N]);
end;

function TDSMainDM.ToString(N: Currency): String;
begin
  Result := Format('%.2n', [N]);
end;

function TDSMainDM.ToString(N: Int64): String;
begin
  Result := Format('%d', [N]);
end;

///////////////////////////////////////////////////////////////////////////////
procedure TDSMainDM.DataModuleCreate(Sender: TObject);
begin
  FLoggedIn := False;

  FCMPUser := '99';
  FBRNUser := '99';
  FDEPUser := '00';
  UserID := 'ADMIN';


end;

function TDSMainDM.DateStr(_Date: TDateTime): String;
var
  Y, M, D: word;
begin
  if (_Date > 0) then
  begin
    DecodeDate(_Date, Y, M, D);
    Result :=
      LPADWithZero(IntToStr(D), 2) + '/' +
      LPADWithZero(IntToStr(M), 2) + '/' +
      LPADWithZero(IntToStr(IIF((Y < 2400), Y + 543, Y)), 4);
  end else
    Result := '';
end;

function TDSMainDM.DateStrEx(_Date: TDateTime): String;
var
  Y, M, D: word;
  HO, MI, SE, MS: word;
begin
  if (_Date > 0) then
  begin
    DecodeDate(_Date, Y, M, D);
    DecodeTime(_Date, HO, MI, SE, MS);
    Result :=
      LPADWithZero(IntToStr(D), 2) + '/' +
      LPADWithZero(IntToStr(M), 2) + '/' +
      LPADWithZero(IntToStr(IIF((Y < 2400), Y + 543, Y)), 4) + ' ' +
      LPADWithZero(IntToStr(HO), 2) + ':' +
      LPADWithZero(IntToStr(MI), 2) + ':' +
      LPADWithZero(IntToStr(SE), 2);
  end else
    Result := '';
end;

function TDSMainDM.FSBuddhistDateToStr(_Date: TDateTime): String;
var
  Y, M, D: word;
begin
  if (_Date > 0) then
  begin
    DecodeDate(_Date, Y, M, D);
    if (Y < 2400) then
      Y := Y + 543;
    Result :=
      LPADWithZero(IntToStr(D), 2) + '/' +
      LPADWithZero(IntToStr(M), 2) + '/' +
      LPADWithZero(IntToStr(Y), 4);
  end else
    Result := '';
end;

function TDSMainDM.FSBuddhistDateToDate(_Date: TDateTime): TDateTime;
var
  Y, M, D: word;
begin
  if (_Date > 0) then
  begin
    DecodeDate(_Date, Y, M, D);
    if (Y >= 2400) then
      Y := Y - 543;
    Result := EncodeDate(Y, M, D);
  end else
    Result := _Date;
end;

function TDSMainDM.FSBuddhistDateToDateEx(_Date: TDateTime): TDateTime;
var
  Y, M, D: word;
begin
  if (_Date > 0) then
  begin
    DecodeDate(_Date, Y, M, D);
    if (Y < 2400) then
      Y := Y + 543;
    Result := EncodeDate(Y, M, D);
  end else
    Result := _Date;
end;

destructor TDSMainDM.Destroy;
begin
  FreeAndNil(FProxy);
  inherited Destroy();
end;

function TDSMainDM.GetDate(_DateTime: TDateTime): string;
var
  _Y, _M, _D: Word;
begin
  if (_DateTime > 0) then
  begin
    DecodeDate(_DateTime, _Y, _M, _D);
    Result := Format('%.2d/%.2d/%.4d', [_D, _M, IIF((_Y < 2400), _Y + 543, _Y)]);
  end else
    Result := '';
end;

function TDSMainDM.GetCodeDesc(CodeDesc: String; Separator: String): String;
var
  _P: Integer;
begin
  _P := Pos(Separator, CodeDesc);
  if (_P > 0) then
  begin
    Result := Trim(Copy(CodeDesc, 1, _P - 1));
  end else
    Result := '';
end;

function TDSMainDM.LookupDS(cdsData: TClientDataSet): TDataSource;
var
  cdsDS: TClientDataSet;
  dscDS: TDataSource;
begin
  cdsDS := TClientDataSet.Create(cdsData.Owner);
  cdsDS.CloneCursor(TClientDataSet(cdsData), True);
  dscDS := TDataSource.Create(cdsData.Owner);
  dscDS.DataSet := cdsDS;
  Result := dscDS;
end;

function TDSMainDM.GetDSC(AbbrCode: String; PrefixCode: string = '0';
  OrderBy: String = 'CNOCDE'): TDataSource;
begin
  cdsDescList.Close;
  GetDescList(AbbrCode, PrefixCode, OrderBy);
  cdsDescList.Open;
  Result := LookupDS(cdsDescList);
end;

function TDSMainDM.LogIn(UserID: string; UserPWD: string): Boolean;
begin
  Result := FProxy.LogIn(UserID, UserPWD);
  if (Result) then
  begin
    FUserID := UpperCase(UserID);
    FUserPWD := UserPWD;
  end else
  begin
    FUserID := '';
    FUserPWD := '';
  end;
end;

function TDSMainDM.LogOut(): Boolean;
begin
  Result := FProxy.LogOut();
end;

function TDSMainDM.StartTrans(): Boolean;
begin
  if (FProxy.InTrans()) then
    Result := FProxy.CommitTrans();

  Result := FProxy.StartTrans();
end;

procedure TDSMainDM.CdsTtGetGt1ByNoDAMTGT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat);
end;

procedure TDSMainDM.CdsTtGetGt1ByNoIDTGT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);
end;

function TDSMainDM.CommitTrans(): Boolean;
begin
  if (FProxy.InTrans()) then
    Result := FProxy.CommitTrans()
  else
    Result := True;
end;

function TDSMainDM.RollBackTrans(): Boolean;
begin
  if (FProxy.InTrans()) then
    Result := FProxy.RollBackTrans()
  else
    Result := True;
end;

function TDSMainDM.InTrans(): Boolean;
begin
  Result := FProxy.InTrans();
end;

function TDSMainDM.ExecSQL(CommandText: string): Boolean;
begin
  Result := FProxy.ExecSQL(CommandText);
end;

function TDSMainDM.GetCompanyCode(): Integer;
begin
  Result := FProxy.GetCompanyCode();
end;

function TDSMainDM.GetCompanyOrgCode(): string;
begin
  Result := FProxy.GetCompanyOrgCode();
end;

function TDSMainDM.GetCompanyName(): string;
begin
  Result := FProxy.GetCompanyName();
end;

function TDSMainDM.GetBranchCode(): Integer;
begin
  Result := FProxy.GetBranchCode();
end;

function TDSMainDM.GetBranchOrgCode(): string;
begin
  Result := FProxy.GetBranchOrgCode();
end;

function TDSMainDM.GetBranchName(): string;
begin
  Result := FProxy.GetBranchName();
end;

function TDSMainDM.GetUserRole(): string;
begin
  Result := FProxy.GetUserRole();
end;

function TDSMainDM.GetUserID(): string;
begin
  Result := FProxy.GetUserID();
end;

function TDSMainDM.GetUserPWD(): string;
begin
  Result := FProxy.GetUserPWD();
end;

function TDSMainDM.GetUserName(): string;
begin
  Result := FProxy.GetUserName();
end;

procedure TDSMainDM.WriteLog(Msg: string);
begin
  FProxy.WriteLog(Msg);
end;

function TDSMainDM.GetLastErrorCode(): Int64;
begin
  Result := FProxy.GetLastErrorCode();
end;

function TDSMainDM.GetLastErrorMessage(): string;
begin
  Result := FProxy.GetLastErrorMessage();
end;

function TDSMainDM.CreateProxyClass(dsConnection: TSQLConnection): Boolean;
begin
  if (not Assigned(FProxy)) then
  begin
    try
      FProxy := TDSMainClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

procedure TDSMainDM.UpdateDSProviderConnection(dsConnection: TSQLConnection);
begin
  dspDataConnection.SQLConnection := dsConnection;

  if (not dsConnection.Connected) then
  begin
    dsConnection.Open();
  end;
end;

function TDSMainDM.IsEnabled(ScreenName: string; ComponentName: string)
  : Boolean;
begin
  Result := FProxy.IsEnabled(ScreenName, ComponentName);
end;

function TDSMainDM.IsVisible(ScreenName: string; ComponentName: string)
  : Boolean;
begin
  Result := FProxy.IsVisible(ScreenName, ComponentName)
end;

function TDSMainDM.IsEditable(ScreenName: string;
  ComponentName: string): Boolean;
begin
  Result := FProxy.IsEditable(ScreenName, ComponentName)
end;

function TDSMainDM.IsViewable(ScreenName: string;
  ComponentName: string): Boolean;
begin
  Result := FProxy.IsViewable(ScreenName, ComponentName)
end;

function TDSMainDM.GetDescription(Code: Integer; Flag: string): Boolean;
begin
  Result := FProxy.GetDescription(Code, Flag);
end;

function TDSMainDM.GetAmphurList(ProvinceCode: string): Boolean;
begin
  Result := FProxy.GetAmphurList(ProvinceCode);
end;

function TDSMainDM.GetDescList(Abbr_Code: string; Prefix_code: string = '0';
  Order_by: string = 'CNOCDE'): Boolean;
begin
  Result := FProxy.GetDescList(Abbr_Code, Prefix_code, Order_by);
end;

function TDSMainDM.GetAccountInternalList(account_type: string;
  branch_code: Integer; loan_type: string): Boolean;
begin
  Result := FProxy.GetAccountInternalList(account_type, branch_code, loan_type);
end;

function TDSMainDM.GetAccountInternal(account_type: string;
  branch_code: Integer; loan_type: string): TDataSource;
begin
  cdsAccountInternalList.Close;
  GetAccountInternalList(account_type, branch_code, loan_type);
  cdsAccountInternalList.Open;
  Result := LookupDS(cdsAccountInternalList);
end;

function TDSMainDM.GetTranAccount(account_type: string; branch_code: Integer;
  loan_type: string): TDataSource;
begin
  cdsAccountInternalList.Close;
  GetAccountInternalList(account_type, branch_code, loan_type);
  cdsAccountInternalList.Open;
  Result := LookupDS(cdsAccountInternalList);
end;

procedure TDSMainDM.SetBankBranchList();
//var
//  DSIsActive: boolean;
begin
//  DSIsActive := cdsBankBranch.Active;
//  if (DSIsActive) then
  cdsBankBranch.Close();
  try
    GetBankBranchList(cdsBankBANK_CODE.AsString)
  finally
//    if (DSIsActive) then
    cdsBankBranch.Open();
  end;
end;

procedure TDSMainDM.CALWHT(_NET: Double; var _VAT: Double; var _WHT: Double;
  var _TOT: Double; JURISTIC_FLAG: String = 'N');
begin
  FProxy.CALWHT(_NET, _VAT, _WHT, _TOT, JURISTIC_FLAG);
end;

function TDSMainDM.GetSystemDate: Double;
BEGIN
  Result := FProxy.GetSystemDate();
END;

function TDSMainDM.GetReportInfo(REPORT_CODE: string): Boolean;
begin
  Result := FProxy.GetReportInfo(REPORT_CODE);
end;

function TDSMainDM.GetReportList(): Boolean;
begin
  Result := FProxy.GetReportList();
end;

function TDSMainDM.GetPrintReportForm(SQLStatment: string): Boolean;
begin
  Result := FProxy.GetPrintReportForm(SQLStatment);
end;

function TDSMainDM.DeleteComponent(AppName, FormName: string): Boolean;
begin
  Result := FProxy.DeleteComponent(AppName, FormName);
end;

function TDSMainDM.InsertComponent(AppName, FormName, ParentName,
  ComponentClass, ComponentName, Description: string): Boolean;
begin
  Result := FProxy.InsertComponent(AppName, FormName, ParentName,
    ComponentClass, ComponentName, Description);
end;

function TDSMainDM.GetComponentList(AppName, FormName: string): Boolean;
begin
  Result := FProxy.GetComponentList(AppName, FormName);
end;

function TDSMainDM.SyncChanged(): Boolean;
begin
  Result := FProxy.SyncChanged();
end;

function TDSMainDM.RecordVerify(key: string; Value: string): Boolean;
var
  LockedUserID: String;
begin
  Result := FProxy.RecordVerify(key, Value);
  if (not Result) then
  begin
    LockedUserID := RecordGetUserLock(key, Value);
    Result := ((LockedUserID = UserID) or (LockedUserID = ''));
  end;
end;

function TDSMainDM.RecordSetLock(key: string; Value: string): Boolean;
begin
  Result := FProxy.RecordSetLock(key, Value);
end;

function TDSMainDM.RecordReleaseLock(key: string; Value: string): Boolean;
begin
  Result := FProxy.RecordReleaseLock(key, Value);
end;

function TDSMainDM.RecordReleaseAllLock(UserID: String): Boolean;
begin
  Result := FProxy.RecordReleaseAllLock(UserID);
end;

function TDSMainDM.RecordGetUserLock(key: string; Value: string): string;
begin
  Result := FProxy.RecordGetUserLock(key, Value);
end;

function TDSMainDM.GetAppDateAS400: Double;
begin
  Result := FProxy.GetAppDateAS400();
end;

//**========================Printer====================
function TDSMainDM.CreatePDFFile(_PDFFileName: String): String;
begin
  frxPDFExport.ProtectionFlags := [ePrint, eCopy, eAnnot];
  frxPDFExport.DefaultPath := UniServerModule.LocalCachePath;
  frxPDFExport.FileName := _PDFFileName;
  frxReport.Export(frxPDFExport);
  Result := UniServerModule.LocalCacheURL + _PDFFileName + '#';
end;

function TDSMainDM.CreatePDFFileEx(_PDFFileName: String): String;
begin
  //frxPDFExport.HideToolbar := False;
  //frxPDFExport.HideWindowUI := False;
  frxPDFExport.ProtectionFlags := [eAnnot];
  frxPDFExport.DefaultPath := UniServerModule.LocalCachePath;
  frxPDFExport.FileName := _PDFFileName;
  frxReport.Export(frxPDFExport);
  Result := UniServerModule.LocalCacheURL + _PDFFileName + '#';
end;

//******************* Merge for Common Prep. used *************************
function TDSMainDM.GetBankBranchList(BankCode: String): Boolean;
begin
  Result := FProxy.GetBankBranchList(BankCode);
end;

function TDSMainDM.SetMiscDataSetCommandText(CommandText: String): Boolean;
begin
  Result := FProxy.SetMiscDataSetCommandText(CommandText);
end;

procedure TDSMainDM.SetRefType(Value: Integer; Flag: String = '');
begin
  FProxy.SetRefType(Value, Flag);
end;

function TDSMainDM.GetRefType(): Integer;
begin
  Result := FProxy.GetRefType();
end;

function TDSMainDM.GetDescListEx(Value: Integer): Boolean;
begin
  Result := FProxy.GetDescListEx(Value);
end;

function TDSMainDM.GetPercentVAT: Double;
begin
   Result := FProxy.GetPercentVAT();
end;

function TDSMainDM.RunDayEnd(StartDate: Double; ToDate: Double): Boolean;
begin
  Result := FProxy.RunDayEnd(StartDate, ToDate);
end;

function TDSMainDM.TtInsUpdHead(CMP: string; BRN: string; YAR: Integer; PRD: Integer; DCD: string; var OUT_DNO: Integer): Boolean;
begin
  result := FProxy.TtInsUpdHead(CMP,BRN,YAR,PRD,DCD, OUT_DNO);
end;

function TDSMainDM.TtGetGT1ByNo(IYARGT1: Integer; IPRDGT1: Integer; ICMPGT1: string; IBRNGT1: string; IDCDGT1: string; IDNOGT1: Integer): Boolean;
begin
  result := FProxy.TtGetGT1ByNo(IYARGT1,IPRDGT1,ICMPGT1,IBRNGT1,IDCDGT1, IDNOGT1);
end;


end.
