unit StApDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask;

type
  TProcOfObject = procedure(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string) of object;

  TfrmStApData = class(TMainDataForm)
    LbCreditLineDate: TUniLabel;
    DbVno: TUniDBEdit;
    dsgrid: TDataSource;
    UniLabel1: TUniLabel;
    DbTnm: TUniDBEdit;
    UniLabel2: TUniLabel;
    DbEnm: TUniDBEdit;
    PnAp: TUniPageControl;
    TabNormal: TUniTabSheet;
    PnApHdr: TUniPanel;
    GrpSelectPrint: TUniGroupBox;
    UniLabel15: TUniLabel;
    CmbPop: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    CmbPap: TUniDBLookupComboBox;
    UniLabel16: TUniLabel;
    CmbDop: TUniDBLookupComboBox;
    tabSale: TUniTabSheet;
    PGDDR: TUniPageControl;
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
    UniLabel3: TUniLabel;
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
    UniDBEdit19: TUniDBEdit;
    UniDBEdit20: TUniDBEdit;
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
    CmbCPSVM1: TUniDBLookupComboBox;
    UniLabel58: TUniLabel;
    CmbVTPVM1: TUniDBLookupComboBox;
    UniLabel59: TUniLabel;
    DbACCAM1: TUniDBEdit;
    GrpMEMVM1: TUniGroupBox;
    DbMEMVM1: TUniDBMemo;
    TabBrn: TUniTabSheet;
    dbgDataList: TUniDBGrid;
    PnButton: TUniPanel;
    BtnView: TUniButton;
    btnAdd: TUniButton;
    btnEdit: TUniButton;
    btnDelete: TUniButton;
    dsYm3: TDataSource;
    BtnLoadAddr01: TUniButton;
    BtnLoadAddr02: TUniButton;
    BtnLoadAddr03: TUniButton;
    BtnLoadAddr04: TUniButton;
    UniLabel17: TUniLabel;
    CmbOTPVM1: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    CmbVIAVM1: TUniDBLookupComboBox;
    UniLabel19: TUniLabel;
    CmbPSNVM1: TUniDBLookupComboBox;
    UniLabel20: TUniLabel;
    DbTAXVM1: TUniDBEdit;
    UniLabel21: TUniLabel;
    CmbTTXVM1: TUniDBLookupComboBox;
    CmbTPIVM1: TUniDBLookupComboBox;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    DBVPC: TUniDBEdit;
    BtnSelectAccount: TUniButton;
    csAccounting: TUniScreenMask;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure PnApChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure BtnViewClick(Sender: TObject);
    procedure BtnLoadAddr01Click(Sender: TObject);
    procedure BtnLoadAddr02Click(Sender: TObject);
    procedure BtnLoadAddr03Click(Sender: TObject);
    procedure BtnLoadAddr04Click(Sender: TObject);
    procedure BtnSelectAccountClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;

    StrBrn : TStringList;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);

    procedure Addr01_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
    procedure Addr02_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
    procedure Addr03_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
    procedure Addr04_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
    procedure SelectAccount(ACCAC1,TNMAC1,ACTAC1,STTAC1 : String);
    procedure ShowData();
  public
     procedure Init(DM : TDSSetupDM);

 end;

var
  frmStApData: TfrmStApData;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';

implementation

{$R *.dfm}

uses PopupStYm3Form, PopupAddrForm, PopupAc1Form;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStApData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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


procedure TfrmStApData.Addr01_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTVm1GetAddr01TA2VMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTVm1GetAddr01CHGVMA.AsString := chgzip;
  Fdm.CdsSTVm1GetAddr01ZIPVMA.AsString := codzip;
  Fdm.CdsSTVm1GetAddr01CTYVMA.AsString := 'THA';
end;

procedure TfrmStApData.Addr02_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTVm1GetAddr02TA2VMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTVm1GetAddr02CHGVMA.AsString := chgzip;
  Fdm.CdsSTVm1GetAddr02ZIPVMA.AsString := codzip;
  Fdm.CdsSTVm1GetAddr02CTYVMA.AsString := 'THA';
end;

procedure TfrmStApData.Addr03_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTVm1GetAddr03TA2VMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTVm1GetAddr03CHGVMA.AsString := chgzip;
  Fdm.CdsSTVm1GetAddr03ZIPVMA.AsString := codzip;
  Fdm.CdsSTVm1GetAddr03CTYVMA.AsString := 'THA';
end;

procedure TfrmStApData.Addr04_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTVm1GetAddr04TA2VMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTVm1GetAddr04CHGVMA.AsString := chgzip;
  Fdm.CdsSTVm1GetAddr04ZIPVMA.AsString := codzip;
  Fdm.CdsSTVm1GetAddr04CTYVMA.AsString := 'THA';
end;

procedure TfrmStApData.SelectAccount(ACCAC1,TNMAC1,ACTAC1,STTAC1 : String);
begin
  Fdm.CdsStVm1GetACCVM1.AsString := ACCAC1;
end;

procedure TfrmStApData.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupStYm3).Create(UniApplication);
  TfrmPopupStYm3(_Form).Init(FDM,Fdm.CdsStVM1GetVNOVM1.AsString, Fdm.CdsStVm1GetTNMVM1.AsString,StrBrn);
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

procedure TfrmStApData.BtnLoadAddr03Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr03_Selected;
    ShowModal();
  end;


end;

procedure TfrmStApData.BtnLoadAddr04Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr04_Selected;
    ShowModal();
  end;

end;

procedure TfrmStApData.BtnSelectAccountClick(Sender: TObject);
begin
  with TfrmPopupAc1.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := SelectAccount;
    ShowModal();
  end;

end;

procedure TfrmStApData.btnAddClick(Sender: TObject);
begin
  if not fdm.CdsStVm1GetYm3.Active then
  begin
     IF not(FDM.StVm1GetYm3(Fdm.CdsStVm1GetVNOVM1.AsString)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

     FDM.CdsStVm1GetYm3.Open;
  end;

  StrBrn := TStringList.Create();

  fdm.CdsStVm1GetYm3.First;
  while not fdm.CdsStVm1GetYm3.eof do
  begin
     StrBrn.Add(fdm.CdsStVm1GetYm3BRNYm3.AsString);
     fdm.CdsStVm1GetYm3.next;
  end;

  fdm.CdsStVm1GetYm3.Append();
  fDM.CdsStVm1GetYm3STSYm3.AsString := 'A';
  fDM.CdsStVm1GetYm3CMPYm3.AsString := Fdm.BRNUser;
  fDM.CdsStVm1GetYm3vNOYm3.AsString := Fdm.CdsStVm1GetvNOvM1.AsString;
  fDM.CdsStVm1GetYm3TNMCM3.AsString := Fdm.CdsStVm1GetTNMvM1.AsString;

  fDM.CdsStVm1GetYm3CRTYm3.AsInteger := 30;
  fDM.CdsStVm1GetYm3CRLYm3.AsFloat := 100000;
  fDM.CdsStVm1GetYm3BFIYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3minYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3minYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3mpyYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3mcmYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3mdnYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3mcnYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3majYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3mdsYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3mitYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3pdcYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3uncYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3cqrYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3adnYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3acnYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3apyYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3ypyYm3.AsFloat := 0;
  fDM.CdsStVm1GetYm3ypcYm3.AsFloat := 0;

  ShowData();

  StrBrn.Free;

end;

procedure TfrmStApData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStVm1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStVm1Get.Cancel();
  if Fdm.CdsSTVm1GetAddr01.State in [dsInsert,dsEdit] then
    Fdm.CdsSTVm1GetAddr01.Cancel();
  if Fdm.CdsSTVm1GetAddr02.State in [dsInsert,dsEdit] then
    Fdm.CdsSTVm1GetAddr02.Cancel();
  if Fdm.CdsSTVm1GetAddr03.State in [dsInsert,dsEdit] then
    Fdm.CdsSTVm1GetAddr03.Cancel();
  if Fdm.CdsSTVm1GetAddr04.State in [dsInsert,dsEdit] then
    Fdm.CdsSTVm1GetAddr04.Cancel();
  if fdm.CdsStVm1GetYm3.Active then
    fdm.CdsStVm1GetYm3.Close;
  inherited;

end;

procedure TfrmStApData.btnConfirmClick(Sender: TObject);
var ch ,ch1,ch2,ch3,ch4: Boolean;
  md : String;
begin
  if Fdm.CdsStVm1Get.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  ch:= FDM.StVm1InsUpd(
       Fdm.CdsStVm1GetSTSVM1.AsString,
       Fdm.CdsStVm1GetVNOVM1.AsString,
       Fdm.CdsStVm1GetTNMVM1.AsString,
       Fdm.CdsStVm1GetENMVM1.AsString,
       Fdm.CdsStVm1GetCPSVM1.AsString,
       Fdm.CdsStVm1GetVTPVM1.AsString,
       Fdm.CdsStVm1GetACCVM1.AsString,
       Fdm.CdsStVm1GetOTPVM1.AsString,
       Fdm.CdsStVm1GetVIAVM1.AsString,
       Fdm.CdsStVm1GetPSNVM1.AsString,
       Fdm.CdsStVm1GetTAXVM1.AsString,
       Fdm.CdsStVm1GetTTXVM1.AsString,
       Fdm.CdsStVm1GetTPIVM1.AsString,
       Fdm.CdsStVm1GetVPCVM1.AsFloat,
       Fdm.CdsStVm1GetPOPVM1.AsString,
       Fdm.CdsStVm1GetPAPVM1.AsString,
       Fdm.CdsStVm1GetDOPVM1.AsString,
       Fdm.CdsStVm1GetMEMVM1.AsString,
       md
      );

   ch1:= FDM.StVmaInsUpd(
       Fdm.CdsStVm1GetVNOVM1.AsString,
       Lnk1,
       Fdm.CdsSTVm1GetAddr01TA1VMA.AsString,
       Fdm.CdsSTVm1GetAddr01TA2VMA.AsString,
       Fdm.CdsSTVm1GetAddr01CHGVMA.AsString,
       Fdm.CdsSTVm1GetAddr01CTYVMA.AsString,
       Fdm.CdsSTVm1GetAddr01ZIPVMA.AsString,
       Fdm.CdsSTVm1GetAddr01TELVMA.AsString,
       Fdm.CdsSTVm1GetAddr01MOBVMA.AsString,
       Fdm.CdsSTVm1GetAddr01FAXVMA.AsString,
       Fdm.CdsSTVm1GetAddr01EMAVMA.AsString,
       Fdm.CdsSTVm1GetAddr01WEBVMA.AsString
      );

   ch2:= FDM.StVmaInsUpd(
       Fdm.CdsStVm1GetVNOVM1.AsString,
       Lnk2,
       Fdm.CdsSTVm1GetAddr02TA1VMA.AsString,
       Fdm.CdsSTVm1GetAddr02TA2VMA.AsString,
       Fdm.CdsSTVm1GetAddr02CHGVMA.AsString,
       Fdm.CdsSTVm1GetAddr02CTYVMA.AsString,
       Fdm.CdsSTVm1GetAddr02ZIPVMA.AsString,
       Fdm.CdsSTVm1GetAddr02TELVMA.AsString,
       Fdm.CdsSTVm1GetAddr02MOBVMA.AsString,
       Fdm.CdsSTVm1GetAddr02FAXVMA.AsString,
       Fdm.CdsSTVm1GetAddr02EMAVMA.AsString,
       Fdm.CdsSTVm1GetAddr02WEBVMA.AsString
      );

   ch3:= FDM.StVmaInsUpd(
       Fdm.CdsStVm1GetVNOVM1.AsString,
       Lnk3,
       Fdm.CdsSTVm1GetAddr03TA1VMA.AsString,
       Fdm.CdsSTVm1GetAddr03TA2VMA.AsString,
       Fdm.CdsSTVm1GetAddr03CHGVMA.AsString,
       Fdm.CdsSTVm1GetAddr03CTYVMA.AsString,
       Fdm.CdsSTVm1GetAddr03ZIPVMA.AsString,
       Fdm.CdsSTVm1GetAddr03TELVMA.AsString,
       Fdm.CdsSTVm1GetAddr03MOBVMA.AsString,
       Fdm.CdsSTVm1GetAddr03FAXVMA.AsString,
       Fdm.CdsSTVm1GetAddr03EMAVMA.AsString,
       Fdm.CdsSTVm1GetAddr03WEBVMA.AsString
      );

   ch4:= FDM.StVmaInsUpd(
       Fdm.CdsStVm1GetVNOVM1.AsString,
       Lnk4,
       Fdm.CdsSTVm1GetAddr04TA1VMA.AsString,
       Fdm.CdsSTVm1GetAddr04TA2VMA.AsString,
       Fdm.CdsSTVm1GetAddr04CHGVMA.AsString,
       Fdm.CdsSTVm1GetAddr04CTYVMA.AsString,
       Fdm.CdsSTVm1GetAddr04ZIPVMA.AsString,
       Fdm.CdsSTVm1GetAddr04TELVMA.AsString,
       Fdm.CdsSTVm1GetAddr04MOBVMA.AsString,
       Fdm.CdsSTVm1GetAddr04FAXVMA.AsString,
       Fdm.CdsSTVm1GetAddr04EMAVMA.AsString,
       Fdm.CdsSTVm1GetAddr04WEBVMA.AsString
      );

  if fdm.CdsStVm1GetYm3.Active then
  begin
     fdm.CdsStVm1GetYm3.First();
    while not fdm.CdsStVm1GetYm3.Eof do
    begin
        ch:= FDM.ttYm3InsUpd(
        Fdm.CdsStVm1Getym3stsym3.AsString,
        Fdm.CdsStVm1Getym3cmpym3.AsString,
        Fdm.CdsStVm1Getym3brnym3.AsString,
        Fdm.CdsStVm1Getym3vnoym3.AsString,
        Fdm.CdsStVm1Getym3crtym3.AsInteger,
        Fdm.CdsStVm1Getym3crlym3.AsFloat,
        Fdm.CdsStVm1Getym3dsdym3.AsInteger,
        Fdm.CdsStVm1Getym3dsaym3.AsFloat,
        Fdm.CdsStVm1Getym3bfiym3.AsFloat,
        Fdm.CdsStVm1Getym3minym3.AsFloat,
        Fdm.CdsStVm1Getym3mpyym3.AsFloat,
        Fdm.CdsStVm1Getym3mcmym3.AsFloat,
        Fdm.CdsStVm1Getym3mdnym3.AsFloat,
        Fdm.CdsStVm1Getym3mcnym3.AsFloat,
        Fdm.CdsStVm1Getym3majym3.AsFloat,
        Fdm.CdsStVm1Getym3mdsym3.AsFloat,
        Fdm.CdsStVm1Getym3mitym3.AsFloat,
        Fdm.CdsStVm1Getym3pdcym3.AsFloat,
        Fdm.CdsStVm1Getym3uncym3.AsFloat,
        Fdm.CdsStVm1Getym3cqrym3.AsFloat,
        Fdm.CdsStVm1Getym3adnym3.AsFloat,
        Fdm.CdsStVm1Getym3acnym3.AsFloat,
        Fdm.CdsStVm1Getym3apyym3.AsFloat,
        Fdm.CdsStVm1Getym3ypyym3.AsFloat,
        Fdm.CdsStVm1Getym3ypcym3.AsFloat
        );

      fdm.CdsStVm1GetYm3.next;
    end;
  end;



  if ch and ch1 and ch2 and ch3 and ch4 then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    fdm.CdsStVm1GetYm3.Close;
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStApData.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStVm1GetYm3.Active) or
    (Fdm.CdsStVm1GetYm3.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;


  fdm.CdsStVm1GetYm3.Edit();

  ShowData();

end;

procedure TfrmStApData.BtnLoadAddr01Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr01_Selected;
    ShowModal();
  end;

end;

procedure TfrmStApData.BtnLoadAddr02Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr02_Selected;
    ShowModal();
  end;

end;

procedure TfrmStApData.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStVm1GetYm3.Active) or
    (Fdm.CdsStVm1GetYm3.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStApData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStVm1Get;
   dsAddr01.DataSet := Fdm.CdsSTVm1GetAddr01;
   dsAddr02.DataSet := Fdm.CdsSTVm1GetAddr02;
   dsAddr03.DataSet := Fdm.CdsSTVm1GetAddr03;
   dsAddr04.DataSet := Fdm.CdsSTVm1GetAddr04;
   dsYm3.DataSet := Fdm.CdsStVm1GetYm3;

   CmbCPSVM1.ListSource := Fdm.GetDSC('CP');
   CmbVTPVM1.ListSource := Fdm.GetDSC('VT');

   CmbChg_01.ListSource := Fdm.GetDSC('AC');
   CmbChg_02.ListSource := Fdm.GetDSC('AC');
   CmbChg_03.ListSource := Fdm.GetDSC('AC');
   CmbChg_04.ListSource := Fdm.GetDSC('AC');

   CmbCty_01.ListSource := Fdm.GetDSC('NT');
   CmbCty_02.ListSource := Fdm.GetDSC('NT');
   CmbCty_03.ListSource := Fdm.GetDSC('NT');
   CmbCty_04.ListSource := Fdm.GetDSC('NT');

   CmbPop.ListSource := Fdm.GetDSC('LNK');
   CmbPap.ListSource := Fdm.GetDSC('LNK');
   CmbDop.ListSource := Fdm.GetDSC('LNK');

   CmbOTPVM1.ListSource := Fdm.GetDSC('OTP');
   CmbVIAVM1.ListSource := Fdm.GetDSC('VI');
   CmbPSNVM1.ListSource := Fdm.GetDSC('PM');
   CmbTTXVM1.ListSource := Fdm.GetDSC('TTX');
   CmbTPIVM1.ListSource := Fdm.GetDSC('PT');

  if (fdm.CdsStVm1Get.State in [dsInsert]) then
  begin
     DbVno.ReadOnly := False;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStVm1Get.State in [dsEdit]) then
  begin
     DbVno.ReadOnly := True;
     btnConfirm.Visible := True;
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnLoadAddr01.Visible := False;
     BtnLoadAddr02.Visible := False;
     BtnLoadAddr03.Visible := False;
     BtnLoadAddr04.Visible := False;
     BtnSelectAccount.Enabled := False;
     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


procedure TfrmStApData.PnApChange(Sender: TObject);
var ch_view : Boolean;
begin
  if ((PnAp.ActivePage = TabBrn) and (not Fdm.CdsStVm1GetYm3.Active)) then
  begin
     fdm.CdsStVm1GetYm3.Close;
     fdm.StVm1GetYm3(fdm.CdsStVm1GetVNOVM1.AsString);
     fdm.CdsStVm1GetYm3.Open;

  end;

  ch_view := (Fdm.CdsStVm1Get.State in [dsInsert, dsEdit]);

  btnAdd.Visible := ch_view;
  btnEdit.Visible := ch_view;
  btnDelete.Visible := ch_view;

end;

end.
