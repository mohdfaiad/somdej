unit CsCustomerDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars, DSCarsaleIntfDM, DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniDBMemo, uniScreenMask, uniMemo;

type
  TProcOfObject = procedure(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string) of object;

  TfrmCsCustomerData = class(TMainDataForm)
    LbCreditLineDate: TUniLabel;
    CCNCSM: TUniDBEdit;
    dsgrid: TDataSource;
    UniLabel1: TUniLabel;
    FNMCSM: TUniDBEdit;
    UniLabel2: TUniLabel;
    LNMCSM: TUniDBEdit;
    PnAr: TUniPageControl;
    TabNormal: TUniTabSheet;
    PnApHdr: TUniPanel;
    GrpSelectPrint: TUniGroupBox;
    UniLabel15: TUniLabel;
    CmbPDP: TUniDBLookupComboBox;
    UniLabel16: TUniLabel;
    CmbDop: TUniDBLookupComboBox;
    tabSale: TUniTabSheet;
    PageControl1: TUniPageControl;
    UniLabel4: TUniLabel;
    DbTa1_01: TUniDBEdit;
    DbTa2_01: TUniDBEdit;
    UniLabel5: TUniLabel;
    DbTel_01: TUniDBEdit;
    DbMob_01: TUniDBEdit;
    CmbChg_01: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    DbFax_01: TUniDBEdit;
    UniLabel10: TUniLabel;
    DbEma_01: TUniDBEdit;
    TabAddr02: TUniTabSheet;
    TabAddr03: TUniTabSheet;
    TabAddr04: TUniTabSheet;
    UniLabel28: TUniLabel;
    DbZip_01: TUniDBEdit;
    UniLabel29: TUniLabel;
    CmbCty_01: TUniDBLookupComboBox;
    TabAddr01: TUniTabSheet;
    dsAddr01: TDataSource;
    dsAddr02: TDataSource;
    dsAddr03: TDataSource;
    dsAddr04: TDataSource;
    UniLabel30: TUniLabel;
    DbWeb_01: TUniDBEdit;
    UniLabel31: TUniLabel;
    DbTa1_02: TUniDBEdit;
    DbTa2_02: TUniDBEdit;
    UniLabel32: TUniLabel;
    UniDBEdit21: TUniDBEdit;
    UniDBEdit22: TUniDBEdit;
    CmbChg_02: TUniDBLookupComboBox;
    UniLabel33: TUniLabel;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    UniLabel36: TUniLabel;
    UniDBEdit24: TUniDBEdit;
    UniLabel37: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniLabel38: TUniLabel;
    CmbCty_02: TUniDBLookupComboBox;
    UniLabel39: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniLabel40: TUniLabel;
    UniDBEdit27: TUniDBEdit;
    UniDBEdit28: TUniDBEdit;
    UniLabel41: TUniLabel;
    UniDBEdit29: TUniDBEdit;
    UniDBEdit30: TUniDBEdit;
    CmbChg_03: TUniDBLookupComboBox;
    UniLabel42: TUniLabel;
    UniLabel43: TUniLabel;
    UniLabel44: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    UniLabel45: TUniLabel;
    UniDBEdit32: TUniDBEdit;
    UniLabel46: TUniLabel;
    UniDBEdit33: TUniDBEdit;
    UniLabel47: TUniLabel;
    CmbCty_03: TUniDBLookupComboBox;
    UniLabel48: TUniLabel;
    UniDBEdit34: TUniDBEdit;
    UniLabel49: TUniLabel;
    UniDBEdit35: TUniDBEdit;
    UniDBEdit36: TUniDBEdit;
    UniLabel50: TUniLabel;
    UniDBEdit37: TUniDBEdit;
    UniDBEdit38: TUniDBEdit;
    UniLabel51: TUniLabel;
    UniLabel52: TUniLabel;
    UniLabel53: TUniLabel;
    UniDBEdit39: TUniDBEdit;
    UniLabel54: TUniLabel;
    UniDBEdit40: TUniDBEdit;
    UniLabel55: TUniLabel;
    UniDBEdit41: TUniDBEdit;
    UniLabel56: TUniLabel;
    CmbCty_04: TUniDBLookupComboBox;
    UniLabel57: TUniLabel;
    UniDBEdit42: TUniDBEdit;
    CmbChg_04: TUniDBLookupComboBox;
    UniLabel60: TUniLabel;
    CTYCSM: TUniDBLookupComboBox;
    UniLabel61: TUniLabel;
    STACSM: TUniDBLookupComboBox;
    GrpMEMVM1: TUniGroupBox;
    DbMEMCM1: TUniDBMemo;
    TabBrn: TUniTabSheet;
    dsCard: TDataSource;
    BtnLoadAddr01: TUniButton;
    BtnLoadAddr02: TUniButton;
    BtnLoadAddr03: TUniButton;
    BtnLoadAddr04: TUniButton;
    UniLabel11: TUniLabel;
    SEXCSM: TUniDBLookupComboBox;
    UniLabel12: TUniLabel;
    SSMCSM: TUniDBLookupComboBox;
    UniLabel13: TUniLabel;
    BDTCSM: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    UniLabel20: TUniLabel;
    NTNCSM: TUniDBLookupComboBox;
    NTVCSM: TUniDBLookupComboBox;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    RELCSM: TUniDBLookupComboBox;
    TabCard: TUniTabSheet;
    PnButton: TUniPanel;
    btnAdd: TUniButton;
    btnEdit: TUniButton;
    btnDelete: TUniButton;
    UniLabel27: TUniLabel;
    PRECSM: TUniDBLookupComboBox;
    AGECSM: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    CPNCSM: TUniDBEdit;
    CPSCSM: TUniDBEdit;
    UniLabel19: TUniLabel;
    CBNCSM: TUniDateTimePicker;
    CINCSM: TUniEdit;
    CCHCSM: TUniEdit;
    CPWCSM: TUniDBLookupComboBox;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel58: TUniLabel;
    UniLabel59: TUniLabel;
    UniLabel62: TUniLabel;
    UniLabel63: TUniLabel;
    UniLabel64: TUniLabel;
    UniLabel65: TUniLabel;
    UniLabel66: TUniLabel;
    UniLabel67: TUniLabel;
    HTPCSM: TUniDBLookupComboBox;
    PBTCSM: TUniDBLookupComboBox;
    PSTCSM: TUniDBLookupComboBox;
    BUSCSM: TUniDBLookupComboBox;
    SALCSM: TUniEdit;
    BONCSM: TUniEdit;
    OTHCSM: TUniEdit;
    EXPCSM: TUniEdit;
    PCMCSM: TUniDBEdit;
    HDTCSM: TUniDateTimePicker;
    AGE_WORK: TUniEdit;
    dbgDataList: TUniDBGrid;
    UniLabel68: TUniLabel;
    CMPCSM: TUniDBEdit;
    UniLabel69: TUniLabel;
    BRNCSM: TUniDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure PnArChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure BtnLoadAddr01Click(Sender: TObject);
    procedure BtnLoadAddr02Click(Sender: TObject);
    procedure BtnLoadAddr03Click(Sender: TObject);
    procedure BtnLoadAddr04Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure BDTCSMChange(Sender: TObject);
    procedure CBNCSMChange(Sender: TObject);
    procedure HDTCSMChange(Sender: TObject);
    procedure BDTCSMKeyPress(Sender: TObject; var Key: Char);
    procedure HDTCSMKeyPress(Sender: TObject; var Key: Char);
    procedure STACSMCloseUp(Sender: TObject);
    procedure CINCSMExit(Sender: TObject);
    procedure CCHCSMExit(Sender: TObject);
    procedure CINCSMKeyPress(Sender: TObject; var Key: Char);
    procedure CCHCSMKeyPress(Sender: TObject; var Key: Char);
    procedure SALCSMExit(Sender: TObject);
    procedure SALCSMKeyPress(Sender: TObject; var Key: Char);
    procedure BONCSMExit(Sender: TObject);
    procedure BONCSMKeyPress(Sender: TObject; var Key: Char);
    procedure OTHCSMExit(Sender: TObject);
    procedure OTHCSMKeyPress(Sender: TObject; var Key: Char);
    procedure EXPCSMExit(Sender: TObject);
    procedure EXPCSMKeyPress(Sender: TObject; var Key: Char);

  private
    Fdm : TDSCarsaleDM;

    FUserSession: TUniMainModule;
    FSetupdm : TDSSetupDM;

    StrList : TStringList;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);

    procedure Addr01_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
    procedure Addr02_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
    procedure Addr03_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
    procedure Addr04_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);

    procedure ShowCardData();
    procedure _Confirm(AResult: Integer);
    procedure ShowAmt();
  public
     procedure Init(DM : TDSCarsaleDM);

  end;

var
  frmCsCustomerData: TfrmCsCustomerData;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';

implementation

{$R *.dfm}

uses ClientUtils,PopupAddrForm, PopupCardForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmCsCustomerData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
var
  cur : Currency;
  F: TField;
  Str,Tmp : String;
  i : integer;
begin
  if CdsTmp.State in [dsInsert,dsEdit] then
  begin
    if ((Sender as TUniEdit).text = '')then
      (Sender as TUniEdit).text := '0.00';

    Str := Trim((Sender as TUniEdit).text);
    Tmp := '0';

    for i := 0 to Length(Str) do
    begin
      if (Str[i] in ['0','1','2','3','4','5','6','7','8','9','.'])  then
        Tmp := Tmp + Str[i];
    end;

    try
      (Sender as TUniEdit).text := Tmp;
    except
      (Sender as TUniEdit).text := '0.00';
    end;

    try
      F := CdsTmp.FieldByName((Sender as TUniEdit).HelpKeyword);
      cur := FloatToCurr(StrToFloat(StringReplace((Sender as TUniEdit).text, ',','', [rfReplaceAll])));

      F.AsCurrency := cur;
      if (cur >= 0) then
      begin
        (Sender as TUniEdit).text := Format('%.2n',[cur]);
      end else
      begin
        ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' มีค่าน้อยกว่า ศูนย์ไม่ได้');
        F.AsCurrency := 0.00;
        (Sender as TUniEdit).text := '0.00';
      end;
    except
      ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' ให้ระบุเป็นตัวเลข');
      F.AsCurrency := 0.00;
      (Sender as TUniDBEdit).text := '0.00';
    end;
  end;
end;

procedure TfrmCsCustomerData.CINCSMExit(Sender: TObject);
begin
  checkCur(CINCSM,FDM.CdsMtCsmGet);

end;

procedure TfrmCsCustomerData.CINCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(CINCSM,FDM.CdsMtCsmGet);
  end;

end;

procedure TfrmCsCustomerData.EXPCSMExit(Sender: TObject);
begin
  checkCur(EXPCSM,FDM.CdsMtCsmGet);

end;

procedure TfrmCsCustomerData.EXPCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(EXPCSM,FDM.CdsMtCsmGet);
  end;
end;

procedure TfrmCsCustomerData.HDTCSMChange(Sender: TObject);
begin
  if Trim(HDTCSM.Text) = '' then
    Fdm.CdsMtCsmGetHDTCSM.AsDateTime := 0
  else
  begin
   Fdm.CdsMtCsmGetHDTCSM.AsDateTime :=
   Fdm.FSBuddhistDateToDate(HDTCSM.DateTime);
   AGE_WORK.Text := YearsMonthDaysBetween(Fdm.CdsMtCsmGetHDTCSM.AsDateTime,Fdm.GetSystemDate);
  end;

end;

procedure TfrmCsCustomerData.HDTCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    HDTCSMChange(HDTCSM);
  end;

end;

procedure TfrmCsCustomerData.OTHCSMExit(Sender: TObject);
begin
  checkCur(OTHCSM,FDM.CdsMtCsmGet);

end;

procedure TfrmCsCustomerData.OTHCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(OTHCSM,FDM.CdsMtCsmGet);
  end;

end;

procedure TfrmCsCustomerData.SALCSMExit(Sender: TObject);
begin
  checkCur(SALCSM,FDM.CdsMtCsmGet);

end;

procedure TfrmCsCustomerData.SALCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(SALCSM,FDM.CdsMtCsmGet);
  end;

end;

procedure TfrmCsCustomerData.ShowAmt();
begin

  BDTCSM.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtCsmGetBDTCSM.AsDateTime); // วันเกิดลุกค้า
  CBNCSM.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtCsmGetCBNCSM.AsDateTime); // วันเกิดคู่สมรส
  HDTCSM.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtCsmGetHDTCSM.AsDateTime); //วันเริ่มงาน

  CINCSM.Text := FormatFloat('#,##0.00',Fdm.CdsMtCsmGetCINCSM.AsFloat);
  SALCSM.Text := FormatFloat('#,##0.00',Fdm.CdsMtCsmGetSALCSM.AsFloat);
  BONCSM.Text := FormatFloat('#,##0.00',Fdm.CdsMtCsmGetBONCSM.AsFloat);
  OTHCSM.Text := FormatFloat('#,##0.00',Fdm.CdsMtCsmGetOTHCSM.AsFloat);
  EXPCSM.Text := FormatFloat('#,##0.00',Fdm.CdsMtCsmGetEXPCSM.AsFloat);

  CCHCSM.Text := FormatFloat('##0',Fdm.CdsMtCsmGetCCHCSM.AsInteger);

  AGECSM.Text := YearsMonthDaysBetween(Fdm.CdsMtCsmGetBDTCSM.AsDateTime,Fdm.GetSystemDate);
  AGE_WORK.Text := YearsMonthDaysBetween(Fdm.CdsMtCsmGetHDTCSM.AsDateTime,Fdm.GetSystemDate);

end;

procedure TfrmCsCustomerData.Addr01_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
var tm , Am : String;
begin
  if chgzip = '10' then
  begin
    tm := 'แขวง';
    am := 'เขต'
  end
  else
  begin
    tm := 'ตำบล';
    am := 'อำเภอ';
  end;

  Fdm.CdsMTCSMGetAddr01TA2CSM.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsMTCSMGetAddr01CHGCSM.AsString := chgzip;
  Fdm.CdsMTCSMGetAddr01ZIPCSM.AsString := codzip;
  Fdm.CdsMTCSMGetAddr01CTYCSM.AsString := 'THA';
end;

procedure TfrmCsCustomerData.Addr02_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
var tm , Am : String;
begin
  if chgzip = '10' then
  begin
    tm := 'แขวง';
    am := 'เขต'
  end
  else
  begin
    tm := 'ตำบล';
    am := 'อำเภอ';
  end;

  Fdm.CdsMTCSMGetAddr02TA2CSM.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsMTCSMGetAddr02CHGCSM.AsString := chgzip;
  Fdm.CdsMTCSMGetAddr02ZIPCSM.AsString := codzip;
  Fdm.CdsMTCSMGetAddr02CTYCSM.AsString := 'THA';
end;

procedure TfrmCsCustomerData.Addr03_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
var tm , Am : String;
begin
  if chgzip = '10' then
  begin
    tm := 'แขวง';
    am := 'เขต'
  end
  else
  begin
    tm := 'ตำบล';
    am := 'อำเภอ';
  end;

  Fdm.CdsMTCSMGetAddr03TA2CSM.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsMTCSMGetAddr03CHGCSM.AsString := chgzip;
  Fdm.CdsMTCSMGetAddr03ZIPCSM.AsString := codzip;
  Fdm.CdsMTCSMGetAddr03CTYCSM.AsString := 'THA';
end;

procedure TfrmCsCustomerData.Addr04_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
var tm , Am : String;
begin
  if chgzip = '10' then
  begin
    tm := 'แขวง';
    am := 'เขต'
  end
  else
  begin
    tm := 'ตำบล';
    am := 'อำเภอ';
  end;

  Fdm.CdsMTCSMGetAddr04TA2CSM.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsMTCSMGetAddr04CHGCSM.AsString := chgzip;
  Fdm.CdsMTCSMGetAddr04ZIPCSM.AsString := codzip;
  Fdm.CdsMTCSMGetAddr04CTYCSM.AsString := 'THA';
end;

procedure TfrmCsCustomerData.BDTCSMChange(Sender: TObject);
begin
  if Trim(BDTCSM.Text) = '' then
    Fdm.CdsMtCsmGetBDTCSM.AsDateTime := 0
  else
  begin
    Fdm.CdsMtCsmGetBDTCSM.AsDateTime :=
    Fdm.FSBuddhistDateToDate(BDTCSM.DateTime);
    AGECSM.Text := YearsMonthDaysBetween(Fdm.CdsMtCsmGetBDTCSM.AsDateTime,Fdm.GetSystemDate);
  end;
end;

procedure TfrmCsCustomerData.BDTCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    BDTCSMChange(BDTCSM);
  end;

end;

procedure TfrmCsCustomerData.BONCSMExit(Sender: TObject);
begin
 checkCur(BONCSM,FDM.CdsMtCsmGet);

end;

procedure TfrmCsCustomerData.BONCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(BONCSM,FDM.CdsMtCsmGet);
  end;

end;

procedure TfrmCsCustomerData.ShowCardData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupCard).Create(UniApplication);
  TfrmPopupCard(_Form).Init(FDM,StrList);
  if (Assigned(_Form)) then
  begin

    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;

    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmCsCustomerData.STACSMCloseUp(Sender: TObject);
begin
  if Fdm.CdsMtCsmGetCTYCSM.AsString = 'G' then
    Fdm.CdsMtCsmGetCFGCSM.AsString := 'G'
  else
    Fdm.CdsMTCSMGetCFGCSM.AsString := 'C';

end;

procedure TfrmCsCustomerData.btnAddClick(Sender: TObject);
begin
  StrList := TStringList.Create();

  fdm.CdsMTCSMGetCard.First;
  while not fdm.CdsMTCSMGetCard.eof do
  begin
     StrList.Add(fdm.CdsMtCsmGetCardCDCCSI.AsString);
     fdm.CdsMTCSMGetCard.next;
  end;

  fdm.CdsMTCSMGetCard.Append();

  ShowCardData();

  StrList.Free;

end;

procedure TfrmCsCustomerData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsMTCSMGet.State in [dsInsert,dsEdit] then
    Fdm.CdsMTCSMGet.Cancel();

  if Fdm.CdsMTCSMGetAddr01.State in [dsInsert,dsEdit] then
    Fdm.CdsMTCSMGetAddr01.Cancel();
  if Fdm.CdsMTCSMGetAddr02.State in [dsInsert,dsEdit] then
    Fdm.CdsMTCSMGetAddr02.Cancel();
  if Fdm.CdsMTCSMGetAddr03.State in [dsInsert,dsEdit] then
    Fdm.CdsMTCSMGetAddr03.Cancel();
  if Fdm.CdsMTCSMGetAddr04.State in [dsInsert,dsEdit] then
    Fdm.CdsMTCSMGetAddr04.Cancel();

  if FDM.CdsMTCSMGetCard.Active then
    fdm.CdsMTCSMGetCard.Close;

  inherited;

end;

procedure TfrmCsCustomerData.btnConfirmClick(Sender: TObject);
var ch ,ch2,ch_commit : Boolean;
  ach1,ach2,ach3,ach4: Boolean;
  md : String;
  Out_ccncsm : LargeInt;
begin
  if Fdm.CdsMTCSMGet.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  if Fdm.CdsMtCsmGetCTYCSM.AsString = 'G' then
    Fdm.CdsMtCsmGetCFGCSM.AsString := 'G'
  else
    Fdm.CdsMTCSMGetCFGCSM.AsString := 'C';

  ch:= FDM.MtCsmInsUpd(
      Fdm.CdsMTCSMGetSTSCSM.AsString,
      Fdm.CdsMTCSMGetCMPCSM.AsString,
      Fdm.CdsMTCSMGetBRNCSM.AsString,
      Fdm.CdsMTCSMGetCTYCSM.AsString,
      Fdm.CdsMTCSMGetCFGCSM.AsString,
      Fdm.CdsMTCSMGetCCNCSM.AsLargeInt,
      Fdm.CdsMTCSMGetPRECSM.AsString,
      Fdm.CdsMTCSMGetFNMCSM.AsString,
      Fdm.CdsMTCSMGetLNMCSM.AsString,
      Fdm.CdsMTCSMGetSEXCSM.AsString,
      Fdm.CdsMTCSMGetSSMCSM.AsString,
      Fdm.CdsMTCSMGetBDTCSM.AsFloat,
      Fdm.CdsMTCSMGetNTNCSM.AsString,
      Fdm.CdsMTCSMGetNTVCSM.AsString,
      Fdm.CdsMTCSMGetRELCSM.AsString,
      Fdm.CdsMTCSMGetSTACSM.AsString);

  ch2:= FDM.MtCsmInsUpdFamilyAndWork(
      Fdm.CdsMTCSMGetCPNCSM.AsString,
      Fdm.CdsMTCSMGetCPSCSM.AsString,
      Fdm.CdsMTCSMGetCBNCSM.AsFloat,
      Fdm.CdsMTCSMGetCPWCSM.AsString,
      Fdm.CdsMTCSMGetCINCSM.AsFloat,
      Fdm.CdsMTCSMGetCCHCSM.AsInteger,
      Fdm.CdsMTCSMGetHTPCSM.AsString,
      Fdm.CdsMTCSMGetPBTCSM.AsString,
      Fdm.CdsMTCSMGetPSTCSM.AsString,
      Fdm.CdsMTCSMGetBUSCSM.AsString,
      Fdm.CdsMTCSMGetSALCSM.AsFloat,
      Fdm.CdsMTCSMGetBONCSM.AsFloat,
      Fdm.CdsMTCSMGetOTHCSM.AsFloat,
      Fdm.CdsMTCSMGetEXPCSM.AsFloat,
      Fdm.CdsMTCSMGetPCMCSM.AsString,
      Fdm.CdsMTCSMGetHDTCSM.AsFloat,
      Fdm.CdsMTCSMGetPDPCSM.AsString,
      Fdm.CdsMTCSMGetDOPCSM.AsString,
      Fdm.CdsMTCSMGetMEMCSM.AsString,
      Fdm.UserID,
      md);

   ch_commit := FDM.MtCsmInsUpdCommit(Out_ccncsm);

   ach1:= FDM.MtCsmInsUpdAddr(
       Out_ccncsm,
       Lnk1,
       Fdm.CdsMTCSMGetAddr01TA1CSM.AsString,
       Fdm.CdsMTCSMGetAddr01TA2CSM.AsString,
       Fdm.CdsMTCSMGetAddr01CHGCSM.AsString,
       Fdm.CdsMTCSMGetAddr01CTYCSM.AsString,
       Fdm.CdsMTCSMGetAddr01ZIPCSM.AsString,
       Fdm.CdsMTCSMGetAddr01TELCSM.AsString,
       Fdm.CdsMTCSMGetAddr01MOBCSM.AsString,
       Fdm.CdsMTCSMGetAddr01FAXCSM.AsString,
       Fdm.CdsMTCSMGetAddr01EMACSM.AsString,
       Fdm.CdsMTCSMGetAddr01WEBCSM.AsString,
       Fdm.UserID
      );

   ach2:= FDM.MtCsmInsUpdAddr(
       Out_ccncsm,
       Lnk2,
       Fdm.CdsMTCSMGetAddr02TA1CSM.AsString,
       Fdm.CdsMTCSMGetAddr02TA2CSM.AsString,
       Fdm.CdsMTCSMGetAddr02CHGCSM.AsString,
       Fdm.CdsMTCSMGetAddr02CTYCSM.AsString,
       Fdm.CdsMTCSMGetAddr02ZIPCSM.AsString,
       Fdm.CdsMTCSMGetAddr02TELCSM.AsString,
       Fdm.CdsMTCSMGetAddr02MOBCSM.AsString,
       Fdm.CdsMTCSMGetAddr02FAXCSM.AsString,
       Fdm.CdsMTCSMGetAddr02EMACSM.AsString,
       Fdm.CdsMTCSMGetAddr02WEBCSM.AsString,
       Fdm.UserID
      );

   ach3:= FDM.MtCsmInsUpdAddr(
       Out_ccncsm,
       Lnk3,
       Fdm.CdsMTCSMGetAddr03TA1CSM.AsString,
       Fdm.CdsMTCSMGetAddr03TA2CSM.AsString,
       Fdm.CdsMTCSMGetAddr03CHGCSM.AsString,
       Fdm.CdsMTCSMGetAddr03CTYCSM.AsString,
       Fdm.CdsMTCSMGetAddr03ZIPCSM.AsString,
       Fdm.CdsMTCSMGetAddr03TELCSM.AsString,
       Fdm.CdsMTCSMGetAddr03MOBCSM.AsString,
       Fdm.CdsMTCSMGetAddr03FAXCSM.AsString,
       Fdm.CdsMTCSMGetAddr03EMACSM.AsString,
       Fdm.CdsMTCSMGetAddr03WEBCSM.AsString,
       Fdm.UserID
      );

   ach4:= FDM.MtCsmInsUpdAddr(
       Out_ccncsm,
       Lnk4,
       Fdm.CdsMTCSMGetAddr04TA1CSM.AsString,
       Fdm.CdsMTCSMGetAddr04TA2CSM.AsString,
       Fdm.CdsMTCSMGetAddr04CHGCSM.AsString,
       Fdm.CdsMTCSMGetAddr04CTYCSM.AsString,
       Fdm.CdsMTCSMGetAddr04ZIPCSM.AsString,
       Fdm.CdsMTCSMGetAddr04TELCSM.AsString,
       Fdm.CdsMTCSMGetAddr04MOBCSM.AsString,
       Fdm.CdsMTCSMGetAddr04FAXCSM.AsString,
       Fdm.CdsMTCSMGetAddr04EMACSM.AsString,
       Fdm.CdsMTCSMGetAddr04WEBCSM.AsString,
       Fdm.UserID
      );

  if fdm.CdsMTCSMGetCard.Active then
  begin
     fdm.CdsMTCSMGetCard.First();
    while not fdm.CdsMTCSMGetCard.Eof do
    begin
        ch:= FDM.MtCsmInsUpdCard(
          Out_ccncsm,
          Fdm.CdsMtCsmGetCardCDCCSI.AsString,
          Fdm.CdsMtCsmGetCardCDNCSI.AsString,
          Fdm.CdsMtCsmGetCardISDCSI.AsFloat,
          Fdm.CdsMtCsmGetCardEPDCSI.AsFloat,
          Fdm.CdsMtCsmGetCardISWCSI.AsString,
          Fdm.UserID
          );

      fdm.CdsMTCSMGetCard.next;
    end;
  end;


  if ch and ch2 and ch_commit and ach1 and ach2 and ach3 and ach4 then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmCsCustomerData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
          // insert to list delete
          fdm.CdsMtCsmGetcard.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
        end;
  end;
end;

procedure TfrmCsCustomerData.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsMtCsmGetCard.Active) or
    (Fdm.CdsMtCsmGetCard.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

//  if RecordVerify() then
  if True then
    MessageDlg('คุณต้องการลบข้อมูลใช่หรือไม่?', mtConfirmation, mbYesNo,
      _Confirm);

end;

procedure TfrmCsCustomerData.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsMTCSMGetCard.Active) or
    (Fdm.CdsMTCSMGetCard.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;


  fdm.CdsMTCSMGetCard.Edit();

  ShowCardData();

end;

procedure TfrmCsCustomerData.BtnLoadAddr01Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(FSetupdm);

    OnSelectData := Addr01_Selected;
    ShowModal();
  end;


end;

procedure TfrmCsCustomerData.BtnLoadAddr02Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(FSetupdm);

    OnSelectData := Addr02_Selected;
    ShowModal();
  end;

end;

procedure TfrmCsCustomerData.BtnLoadAddr03Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(FSetupdm);

    OnSelectData := Addr03_Selected;
    ShowModal();
  end;

end;

procedure TfrmCsCustomerData.BtnLoadAddr04Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(FSetupdm);

    OnSelectData := Addr04_Selected;
    ShowModal();
  end;

end;

procedure TfrmCsCustomerData.CBNCSMChange(Sender: TObject);
begin
  if Trim(CBNCSM.Text) = '' then
    Fdm.CdsMtCsmGetCBNCSM.AsDateTime := 0
  else
   Fdm.CdsMtCsmGetCBNCSM.AsDateTime :=
   Fdm.FSBuddhistDateToDate(CBNCSM.DateTime);

end;

procedure TfrmCsCustomerData.CCHCSMExit(Sender: TObject);
begin
  checkCur(CCHCSM,FDM.CdsMtCsmGet);
  CCHCSM.Text := FormatFloat('##0',Fdm.CdsMtCsmGetCCHCSM.AsInteger);

end;

procedure TfrmCsCustomerData.Init(DM : TDSCarsaleDM);
begin

   Fdm := dm;

    FUserSession :=  UniMainModule();
    FSetupdm:= FUsersession.DSSetupDM;

   dsgrid.DataSet := Fdm.CdsMTCSMGet;
   dsAddr01.DataSet := Fdm.CdsMTCSMGetAddr01;
   dsAddr02.DataSet := Fdm.CdsMTCSMGetAddr02;
   dsAddr03.DataSet := Fdm.CdsMTCSMGetAddr03;
   dsAddr04.DataSet := Fdm.CdsMTCSMGetAddr04;

   dsCard.DataSet := Fdm.CdsMTCSMGetCard;

   BRNCSM.ListSource := Fdm.GetDSC('BRN');//สาขา
   CTYCSM.ListSource := Fdm.GetDSC('TY');
   STACSM.ListSource := Fdm.GetDSC('GC'); // กลุ่มลูกค้า
   PRECSM.ListSource := Fdm.GetDSC('PE');// คำนำหน้า
   SEXCSM.ListSource := Fdm.GetDSC('SEX');//เพศ
   SSMCSM.ListSource := Fdm.GetDSC('MS');// สถานภาพสมรส
   NTNCSM.ListSource := Fdm.GetDSC('NT');// เชื่อชาติ
   NTVCSM.ListSource := Fdm.GetDSC('NA');// สัญชาติ
   RELCSM.ListSource := Fdm.GetDSC('RL');//ศาสนา

   CmbChg_01.ListSource := Fdm.GetDSC('AC');
   CmbChg_02.ListSource := Fdm.GetDSC('AC');
   CmbChg_03.ListSource := Fdm.GetDSC('AC');
   CmbChg_04.ListSource := Fdm.GetDSC('AC');

   CmbCty_01.ListSource := Fdm.GetDSC('NT');
   CmbCty_02.ListSource := Fdm.GetDSC('NT');
   CmbCty_03.ListSource := Fdm.GetDSC('NT');
   CmbCty_04.ListSource := Fdm.GetDSC('NT');

   CmbPDp.ListSource := Fdm.GetDSC('LKC');
   CmbDop.ListSource := Fdm.GetDSC('LKC');

   CPWCSM.ListSource := Fdm.GetDSC('CPW'); // สถานภาพการทำงาน
   HTPCSM.ListSource := Fdm.GetDSC('HTP'); // ประเภทการจ้าง
   PBTCSM.ListSource := Fdm.GetDSC('OC'); //อาชีพ
   PSTCSM.ListSource := Fdm.GetDSC('PS'); //ตำแหน่ง
   BUSCSM.ListSource := Fdm.GetDSC('BU'); //ประเภทธุรกิจ

//   CmbVIACM1.ListSource := Fdm.GetDSC('VI');
//   CmbPSNCM1.ListSource := Fdm.GetDSC('SM');

//   CmbPOS.ListSource := Fdm.GetDSC('PS');

  CTYCSM.ReadOnly := True;

  if (fdm.CdsMTCSMGet.State in [dsInsert]) then
  begin
//     DbVno.ReadOnly := False;
//     cmbTYPCM1.ReadOnly := True;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsMTCSMGet.State in [dsEdit]) then
  begin
     CMPCSM.ReadOnly := True;
     BRNCSM.ReadOnly := True;
     STACSM.ReadOnly := True;
     CCNCSM.ReadOnly := True;


     btnConfirm.Visible := True;
     ShowAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnLoadAddr01.Visible := False;
     BtnLoadAddr02.Visible := False;
     BtnLoadAddr03.Visible := False;
     BtnLoadAddr04.Visible := False;

     ShowAmt();

     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


procedure TfrmCsCustomerData.PnArChange(Sender: TObject);
var ch_view : Boolean;
begin

  if ((PnAr.ActivePage = TabCard) AND (not fdm.CdsMTCSMGetCard.Active)) then
  begin
     fdm.CdsMTCSMGetCard.Close;
     fdm.MtCsmGetCard(fdm.CdsMtCsmGetCCNCSM.AsLargeInt);
     fdm.CdsMTCSMGetCard.Open;

  end;

  ch_view := (Fdm.CdsMTCSMGet.State in [dsInsert, dsEdit]);

  btnAdd.Visible := ch_view;
  btnEdit.Visible := ch_view;
  btnDelete.Visible := ch_view;

end;

procedure TfrmCsCustomerData.CCHCSMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(CCHCSM,FDM.CdsMtCsmGet);
    CCHCSM.Text := FormatFloat('##0',Fdm.CdsMtCsmGetCCHCSM.AsInteger);
  end;

end;

end.
