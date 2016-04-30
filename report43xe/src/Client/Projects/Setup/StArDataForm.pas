unit StArDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask;

type
  TProcOfObject = procedure(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string) of object;

  TfrmStArData = class(TMainDataForm)
    LbCreditLineDate: TUniLabel;
    DbVno: TUniDBEdit;
    dsgrid: TDataSource;
    UniLabel1: TUniLabel;
    DbTnm: TUniDBEdit;
    UniLabel2: TUniLabel;
    DbEnm: TUniDBEdit;
    PnAr: TUniPageControl;
    TabNormal: TUniTabSheet;
    PnApHdr: TUniPanel;
    GrpSelectPrint: TUniGroupBox;
    UniLabel15: TUniLabel;
    CmbPDP: TUniDBLookupComboBox;
    UniLabel16: TUniLabel;
    CmbDop: TUniDBLookupComboBox;
    tabSale: TUniTabSheet;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
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
    UniLabel59: TUniLabel;
    DbACCCM1: TUniDBEdit;
    UniLabel60: TUniLabel;
    cmbTYPCM1: TUniDBLookupComboBox;
    UniLabel61: TUniLabel;
    CmbCTPCM1: TUniDBLookupComboBox;
    GrpMEMVM1: TUniGroupBox;
    DbMEMCM1: TUniDBMemo;
    UniLabel3: TUniLabel;
    UniLabel20: TUniLabel;
    DbTAXCM1: TUniDBEdit;
    DBCPSCM1: TUniDBEdit;
    DBCCM: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniLabel17: TUniLabel;
    CmbPOS: TUniDBLookupComboBox;
    DBCTLCM1: TUniDBEdit;
    DBCMBCM1: TUniDBEdit;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    DBCFACM1: TUniDBEdit;
    UniLabel26: TUniLabel;
    DBCEMCM1: TUniDBEdit;
    CmbVIACM1: TUniDBLookupComboBox;
    CmbPSNCM1: TUniDBLookupComboBox;
    TabBrn: TUniTabSheet;
    dbgDataList: TUniDBGrid;
    PnButton: TUniPanel;
    BtnView: TUniButton;
    btnAdd: TUniButton;
    btnEdit: TUniButton;
    btnDelete: TUniButton;
    dsAm3: TDataSource;
    BtnLoadAddr01: TUniButton;
    BtnLoadAddr02: TUniButton;
    BtnLoadAddr03: TUniButton;
    BtnLoadAddr04: TUniButton;
    BtnSelectAccount: TUniButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure PnArChange(Sender: TObject);
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
  frmStArData: TfrmStArData;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';

implementation

{$R *.dfm}

uses PopupStAm3Form, PopupAddrForm, PopupAc1Form;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStArData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStArData.Addr01_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTCm1GetAddr01TA2CMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTCm1GetAddr01CHGCMA.AsString := chgzip;
  Fdm.CdsSTCm1GetAddr01ZIPCMA.AsString := codzip;
  Fdm.CdsSTCm1GetAddr01CTYCMA.AsString := 'THA';
end;

procedure TfrmStArData.Addr02_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTCm1GetAddr02TA2CMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTCm1GetAddr02CHGCMA.AsString := chgzip;
  Fdm.CdsSTCm1GetAddr02ZIPCMA.AsString := codzip;
  Fdm.CdsSTCm1GetAddr02CTYCMA.AsString := 'THA';
end;

procedure TfrmStArData.Addr03_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTCm1GetAddr03TA2CMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTCm1GetAddr03CHGCMA.AsString := chgzip;
  Fdm.CdsSTCm1GetAddr03ZIPCMA.AsString := codzip;
  Fdm.CdsSTCm1GetAddr03CTYCMA.AsString := 'THA';
end;

procedure TfrmStArData.Addr04_Selected(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string);
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

  Fdm.CdsSTCm1GetAddr04TA2CMA.AsString := tm + tamzip + '  ' + am + ampzip;
  Fdm.CdsSTCm1GetAddr04CHGCMA.AsString := chgzip;
  Fdm.CdsSTCm1GetAddr04ZIPCMA.AsString := codzip;
  Fdm.CdsSTCm1GetAddr04CTYCMA.AsString := 'THA';
end;

procedure TfrmStArData.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupStAm3).Create(UniApplication);
  TfrmPopupStAm3(_Form).Init(FDM,Fdm.CdsStCm1GetCNOCM1.AsString, Fdm.CdsStCm1GetTNMCM1.AsString,StrBrn);
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

procedure TfrmStArData.btnAddClick(Sender: TObject);
begin
  if not fdm.CdsStCm1GetAm3.Active then
  begin
     IF not(FDM.StCm1GetAm3(Fdm.CdsStCm1GetCNOCM1.AsString)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

     FDM.CdsStCm1GetAm3.Open;
  end;

  StrBrn := TStringList.Create();

  fdm.CdsStCm1GetAm3.First;
  while not fdm.CdsStCm1GetAm3.eof do
  begin
     StrBrn.Add(fdm.CdsStCm1GetAm3BRNAM3.AsString);
     fdm.CdsStCm1GetAm3.next;
  end;

  fdm.CdsStCm1GetAm3.Append();
  fDM.CdsStCm1GetAm3STSAM3.AsString := 'A';
  fDM.CdsStCm1GetAm3CMPAM3.AsString := Fdm.BRNUser;
  fDM.CdsStCm1GetAm3CNOAM3.AsString := Fdm.CdsStCm1GetCNOCM1.AsString;
  fDM.CdsStCm1GetAm3TNMCM3.AsString := Fdm.CdsStCm1GetTNMCM1.AsString;

  fDM.CdsStCm1GetAm3CRTAM3.AsInteger := 30;
  fDM.CdsStCm1GetAm3CRLAM3.AsFloat := 100000;
  fDM.CdsStCm1GetAm3BFIAM3.AsFloat := 0;
  fDM.CdsStCm1GetAm3minam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3minam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3mpyam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3mcmam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3mdnam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3mcnam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3majam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3mdsam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3mitam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3pdcam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3uncam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3cqram3.AsFloat := 0;
  fDM.CdsStCm1GetAm3adnam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3acnam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3apyam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3ypyam3.AsFloat := 0;
  fDM.CdsStCm1GetAm3ypcam3.AsFloat := 0;

  ShowData();

  StrBrn.Free;

end;

procedure TfrmStArData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStCM1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStCM1Get.Cancel();
  if Fdm.CdsSTCM1GetAddr01.State in [dsInsert,dsEdit] then
    Fdm.CdsSTCM1GetAddr01.Cancel();
  if Fdm.CdsSTCM1GetAddr02.State in [dsInsert,dsEdit] then
    Fdm.CdsSTCM1GetAddr02.Cancel();
  if Fdm.CdsSTCM1GetAddr03.State in [dsInsert,dsEdit] then
    Fdm.CdsSTCM1GetAddr03.Cancel();
  if Fdm.CdsSTCM1GetAddr04.State in [dsInsert,dsEdit] then
    Fdm.CdsSTCM1GetAddr04.Cancel();
  if FDM.CdsStCm1GetAm3.Active then
    fdm.CdsStCm1GetAm3.Close;

  inherited;

end;

procedure TfrmStArData.btnConfirmClick(Sender: TObject);
var ch ,ch1,ch2,ch3,ch4: Boolean;
  md : String;
begin
  if Fdm.CdsStCM1Get.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  ch:= FDM.StCM1InsUpd(Fdm.CMPUser,Fdm.BRNUser,
      Fdm.CdsStCM1Getstscm1.AsString,
      Fdm.CdsStCM1Gettypcm1.AsString,
      Fdm.CdsStCM1Getctpcm1.AsString,
      Fdm.CdsStCM1Getcnocm1.AsString,
      Fdm.CdsStCM1Gettnmcm1.AsString,
      Fdm.CdsStCM1Getenmcm1.AsString,
      Fdm.CdsStCM1Getacccm1.AsString,
      Fdm.CdsStCM1Gettaxcm1.AsString,
      Fdm.CdsStCM1Getcpscm1.AsString,
      Fdm.CdsStCM1Getccmcm1.AsString,
      Fdm.CdsStCM1Getposcm1.AsString,
      Fdm.CdsStCM1Getctlcm1.AsString,
      Fdm.CdsStCM1Getcmbcm1.AsString,
      Fdm.CdsStCM1Getcfacm1.AsString,
      Fdm.CdsStCM1Getcemcm1.AsString,
      Fdm.CdsStCM1Getviacm1.AsString,
      Fdm.CdsStCM1Getsmncm1.AsString,
      Fdm.CdsStCM1Getpdpcm1.AsString,
      Fdm.CdsStCM1Getdopcm1.AsString,
      Fdm.CdsStCM1Getmemcm1.AsString,
      md      );

   ch1:= FDM.StCMAInsUpd(
       Fdm.CdsStCM1GetCNOCM1.AsString,
       Lnk1,
       Fdm.CdsSTCM1GetAddr01TA1CMA.AsString,
       Fdm.CdsSTCM1GetAddr01TA2CMA.AsString,
       Fdm.CdsSTCM1GetAddr01CHGCMA.AsString,
       Fdm.CdsSTCM1GetAddr01CTYCMA.AsString,
       Fdm.CdsSTCM1GetAddr01ZIPCMA.AsString,
       Fdm.CdsSTCM1GetAddr01TELCMA.AsString,
       Fdm.CdsSTCM1GetAddr01MOBCMA.AsString,
       Fdm.CdsSTCM1GetAddr01FAXCMA.AsString,
       Fdm.CdsSTCM1GetAddr01EMACMA.AsString,
       Fdm.CdsSTCM1GetAddr01WEBCMA.AsString
      );

   ch2:= FDM.StCMAInsUpd(
       Fdm.CdsStCM1GetCNOCM1.AsString,
       Lnk2,
       Fdm.CdsSTCM1GetAddr02TA1CMA.AsString,
       Fdm.CdsSTCM1GetAddr02TA2CMA.AsString,
       Fdm.CdsSTCM1GetAddr02CHGCMA.AsString,
       Fdm.CdsSTCM1GetAddr02CTYCMA.AsString,
       Fdm.CdsSTCM1GetAddr02ZIPCMA.AsString,
       Fdm.CdsSTCM1GetAddr02TELCMA.AsString,
       Fdm.CdsSTCM1GetAddr02MOBCMA.AsString,
       Fdm.CdsSTCM1GetAddr02FAXCMA.AsString,
       Fdm.CdsSTCM1GetAddr02EMACMA.AsString,
       Fdm.CdsSTCM1GetAddr02WEBCMA.AsString
      );

   ch3:= FDM.StCMAInsUpd(
       Fdm.CdsStCM1GetCNOCM1.AsString,
       Lnk3,
       Fdm.CdsSTCM1GetAddr03TA1CMA.AsString,
       Fdm.CdsSTCM1GetAddr03TA2CMA.AsString,
       Fdm.CdsSTCM1GetAddr03CHGCMA.AsString,
       Fdm.CdsSTCM1GetAddr03CTYCMA.AsString,
       Fdm.CdsSTCM1GetAddr03ZIPCMA.AsString,
       Fdm.CdsSTCM1GetAddr03TELCMA.AsString,
       Fdm.CdsSTCM1GetAddr03MOBCMA.AsString,
       Fdm.CdsSTCM1GetAddr03FAXCMA.AsString,
       Fdm.CdsSTCM1GetAddr03EMACMA.AsString,
       Fdm.CdsSTCM1GetAddr03WEBCMA.AsString
      );

   ch4:= FDM.StCMAInsUpd(
       Fdm.CdsStCM1GetCNOCM1.AsString,
       Lnk4,
       Fdm.CdsSTCM1GetAddr04TA1CMA.AsString,
       Fdm.CdsSTCM1GetAddr04TA2CMA.AsString,
       Fdm.CdsSTCM1GetAddr04CHGCMA.AsString,
       Fdm.CdsSTCM1GetAddr04CTYCMA.AsString,
       Fdm.CdsSTCM1GetAddr04ZIPCMA.AsString,
       Fdm.CdsSTCM1GetAddr04TELCMA.AsString,
       Fdm.CdsSTCM1GetAddr04MOBCMA.AsString,
       Fdm.CdsSTCM1GetAddr04FAXCMA.AsString,
       Fdm.CdsSTCM1GetAddr04EMACMA.AsString,
       Fdm.CdsSTCM1GetAddr04WEBCMA.AsString
      );

  if fdm.CdsStCm1GetAm3.Active then
  begin
     fdm.CdsStCm1GetAm3.First();
    while not fdm.CdsStCm1GetAm3.Eof do
    begin
        ch:= FDM.ttAm3InsUpd(
        Fdm.CdsStCm1GetAm3stsam3.AsString,
        Fdm.CdsStCm1GetAm3cmpam3.AsString,
        Fdm.CdsStCm1GetAm3brnam3.AsString,
        Fdm.CdsStCm1GetAm3cnoam3.AsString,
        Fdm.CdsStCm1GetAm3crtam3.AsInteger,
        Fdm.CdsStCm1GetAm3crlam3.AsFloat,
        Fdm.CdsStCm1GetAm3bfiam3.AsFloat,
        Fdm.CdsStCm1GetAm3minam3.AsFloat,
        Fdm.CdsStCm1GetAm3mpyam3.AsFloat,
        Fdm.CdsStCm1GetAm3mcmam3.AsFloat,
        Fdm.CdsStCm1GetAm3mdnam3.AsFloat,
        Fdm.CdsStCm1GetAm3mcnam3.AsFloat,
        Fdm.CdsStCm1GetAm3majam3.AsFloat,
        Fdm.CdsStCm1GetAm3mdsam3.AsFloat,
        Fdm.CdsStCm1GetAm3mitam3.AsFloat,
        Fdm.CdsStCm1GetAm3pdcam3.AsFloat,
        Fdm.CdsStCm1GetAm3uncam3.AsFloat,
        Fdm.CdsStCm1GetAm3cqram3.AsFloat,
        Fdm.CdsStCm1GetAm3adnam3.AsFloat,
        Fdm.CdsStCm1GetAm3acnam3.AsFloat,
        Fdm.CdsStCm1GetAm3apyam3.AsFloat,
        Fdm.CdsStCm1GetAm3ypyam3.AsFloat,
        Fdm.CdsStCm1GetAm3ypcam3.AsFloat
        );

      fdm.CdsStCm1GetAm3.next;
    end;
  end;


  if ch and ch1 and ch2 and ch3 and ch4 then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStArData.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStCm1GetAm3.Active) or
    (Fdm.CdsStCm1GetAm3.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;


  fdm.CdsStCm1GetAm3.Edit();

  ShowData();

end;

procedure TfrmStArData.BtnLoadAddr01Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr01_Selected;
    ShowModal();
  end;


end;

procedure TfrmStArData.BtnLoadAddr02Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr02_Selected;
    ShowModal();
  end;

end;

procedure TfrmStArData.BtnLoadAddr03Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr03_Selected;
    ShowModal();
  end;

end;

procedure TfrmStArData.BtnLoadAddr04Click(Sender: TObject);
begin
  with TfrmPopupAddr.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := Addr04_Selected;
    ShowModal();
  end;

end;

procedure TfrmStArData.SelectAccount(ACCAC1,TNMAC1,ACTAC1,STTAC1 : String);
begin
  Fdm.CdsStCm1GetACCCM1.AsString := ACCAC1;
end;

procedure TfrmStArData.BtnSelectAccountClick(Sender: TObject);
begin
  with TfrmPopupAc1.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := SelectAccount;
    ShowModal();
  end;


end;

procedure TfrmStArData.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStCm1GetAm3.Active) or
    (Fdm.CdsStCm1GetAm3.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStArData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStCM1Get;
   dsAddr01.DataSet := Fdm.CdsSTCM1GetAddr01;
   dsAddr02.DataSet := Fdm.CdsSTCM1GetAddr02;
   dsAddr03.DataSet := Fdm.CdsSTCM1GetAddr03;
   dsAddr04.DataSet := Fdm.CdsSTCM1GetAddr04;
   dsAm3.DataSet := Fdm.CdsStCm1GetAm3;


   cmbTYPCM1.ListSource := Fdm.GetDSC('TY');
   CmbCTPCM1.ListSource := Fdm.GetDSC('CT');

   CmbChg_01.ListSource := Fdm.GetDSC('AC');
   CmbChg_02.ListSource := Fdm.GetDSC('AC');
   CmbChg_03.ListSource := Fdm.GetDSC('AC');
   CmbChg_04.ListSource := Fdm.GetDSC('AC');

   CmbCty_01.ListSource := Fdm.GetDSC('NT');
   CmbCty_02.ListSource := Fdm.GetDSC('NT');
   CmbCty_03.ListSource := Fdm.GetDSC('NT');
   CmbCty_04.ListSource := Fdm.GetDSC('NT');

   CmbPDp.ListSource := Fdm.GetDSC('LNK');
   CmbDop.ListSource := Fdm.GetDSC('LNK');

   CmbVIACM1.ListSource := Fdm.GetDSC('VI');
   CmbPSNCM1.ListSource := Fdm.GetDSC('SM');

   CmbPOS.ListSource := Fdm.GetDSC('PS');


  if (fdm.CdsStCM1Get.State in [dsInsert]) then
  begin
     DbVno.ReadOnly := False;
     cmbTYPCM1.ReadOnly := True;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStCM1Get.State in [dsEdit]) then
  begin
     DbVno.ReadOnly := True;
     cmbTYPCM1.ReadOnly := True;
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


procedure TfrmStArData.PnArChange(Sender: TObject);
var ch_view : Boolean;
begin
  if ((PnAr.ActivePage = TabBrn) AND (not fdm.CdsStCm1GetAm3.Active)) then
  begin
     fdm.CdsStCm1GetAm3.Close;
     fdm.StCm1GetAm3(fdm.CdsStCm1GetCNOCM1.AsString);
     fdm.CdsStCm1GetAm3.Open;

  end;

  ch_view := (Fdm.CdsStCm1Get.State in [dsInsert, dsEdit]);

  btnAdd.Visible := ch_view;
  btnEdit.Visible := ch_view;
  btnDelete.Visible := ch_view;

end;

end.
