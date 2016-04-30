unit PsRcvProductCarDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,DSPurchaseIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask, uniRadioButton;

type
  TfrmPsRcvProductCarData = class(TMainDataForm)
    dsDATA: TDataSource;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    lbSearch: TUniLabel;
    EdtYptRcv: TUniEdit;
    ddyyyy: TUniEdit;
    CMPPT1: TUniDBEdit;
    UniLabel2: TUniLabel;
    CmbBrn: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    DNOPT1: TUniDBEdit;
    UniLabel7: TUniLabel;
    CmbDEP: TUniDBLookupComboBox;
    dsAddr01: TDataSource;
    csPopUpAp: TUniScreenMask;
    csPopUpProduct: TUniScreenMask;
    UniLabel26: TUniLabel;
    BtnSelectAssignNo: TUniButton;
    EdtEDTAD1: TUniDateTimePicker;
    UniLabel27: TUniLabel;
    PnInvoice: TUniPanel;
    GrpVno: TUniGroupBox;
    UniLabel5: TUniLabel;
    DbvNOPT1: TUniDBEdit;
    BtnSelectvno: TUniButton;
    DbTNMVM1: TUniDBEdit;
    UniLabel1: TUniLabel;
    DbTa1_01: TUniDBEdit;
    DbTa2_01: TUniDBEdit;
    UniLabel8: TUniLabel;
    CmbChg_01: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    CdsCPS: TUniDBLookupComboBox;
    UniGroupBox1: TUniGroupBox;
    UniLabel4: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    RNOPT1: TUniDBEdit;
    RDVPT1: TUniDateTimePicker;
    RATPT1: TUniEdit;
    VAMPT1: TUniEdit;
    VPCPT1: TUniEdit;
    UniLabel3: TUniLabel;
    ChkVAT: TUniCheckBox;
    VATPT1: TUniCheckBox;
    UniGroupBox3: TUniGroupBox;
    UniLabel24: TUniLabel;
    RdoTyp2: TUniRadioButton;
    RdoTyp1: TUniRadioButton;
    UniLabel11: TUniLabel;
    DDTPT1: TUniDateTimePicker;
    UniLabel13: TUniLabel;
    Cmb: TUniDBLookupComboBox;
    UniLabel25: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    CmbBRNFROM: TUniDBLookupComboBox;
    PnAssign: TUniPanel;
    UniGroupBox2: TUniGroupBox;
    LbSrs: TUniLabel;
    LbITN: TUniLabel;
    UniLabel35: TUniLabel;
    UniLabel36: TUniLabel;
    UniLabel6: TUniLabel;
    CmbSrs: TUniDBLookupComboBox;
    CmbItn: TUniDBLookupComboBox;
    CmbCol: TUniDBLookupComboBox;
    EdtSer: TUniEdit;
    EdtEng: TUniEdit;
    BtnOK: TUniButton;
    dbgDataList: TUniDBGrid;
    dsgrid: TDataSource;
    EdtDNOAD1: TUniEdit;
    IDTPT1: TUniDateTimePicker;
    dsSrs: TDataSource;
    dsItn: TDataSource;
    dsCol: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectvnoClick(Sender: TObject);
    procedure IDTPT1Change(Sender: TObject);
    procedure CmbVATCloseUp(Sender: TObject);
    procedure RATPT1Exit(Sender: TObject);
    procedure RATPT1KeyPress(Sender: TObject; var Key: Char);
    procedure RDVPT1Change(Sender: TObject);
    procedure DDTPT1Change(Sender: TObject);
    procedure QR1PT1Exit(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure BtnSelectAssignNoClick(Sender: TObject);
    procedure CmbSrsCloseUp(Sender: TObject);
    procedure CmbItnCloseUp(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSPurchaseDM;
    FSetupdm : TDSSetupDM;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure CalVATAMT();
    procedure GetDnoAd1(DNOAD1:Integer;EDTAD1:DOUBLE);
    procedure GetAddr(vno : String);
    procedure ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
    procedure venderSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSPurchaseDM);
  end;

var
  frmPsRcvProductCarData: TfrmPsRcvProductCarData;

const
  DCD = '619';  // รหัส รับ  CAR

implementation

{$R *.dfm}

uses PopupApForm, PopupProductForm, PopupAssignWeekOutForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmPsRcvProductCarData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPsRcvProductCarData.CalVATAMT();
begin
  if fdm.CdsTtPt1GetVATPT1.AsString = 'Y' then
  begin
    fdm.CdsTtPt1GetVAMPT1.AsFloat := fdm.CdsTtPt1GetRATPT1.AsFloat *
      FDM.CdsTtPt1GetVPCPT1.AsFloat/(100.00 + FDM.CdsTtPt1GetVPCPT1.AsFloat);
    fdm.CdsTtPt1GetNETPT1.AsFloat :=  fdm.CdsTtPt1GetRATPT1.AsFloat - fdm.CdsTtPt1GetVAMPT1.AsFloat;

    VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVAMPT1.AsFloat);
//    NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetNETPT1.AsFloat);

  end
  else
  begin
    fdm.CdsTtPt1GetVAMPT1.AsFloat := 0;
    fdm.CdsTtPt1GetNETPT1.AsFloat :=  fdm.CdsTtPt1GetRATPT1.AsFloat - fdm.CdsTtPt1GetVAMPT1.AsFloat;

    VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVAMPT1.AsFloat);
//    NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetNETPT1.AsFloat);

  end;

end;

procedure TfrmPsRcvProductCarData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsTtPt1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsTtPt1Get.Cancel();
  inherited;

end;

procedure TfrmPsRcvProductCarData.btnConfirmClick(Sender: TObject);
var ch ,ch2: Boolean;
  md ,OUT_DNOPT1: String;
begin
  if ((fdm.CdsTtPt1GetBRNPT1.AsString = '') or
      (fdm.CdsTtPt1GetVNOPT1.AsString = '')
     ) then
  begin
    ShowMessage('กรอกข้อมูลเบื่องต้นไม่ครบถ้วน');
    Exit;

  end;


  if Fdm.CdsTtPt1Get.State in [dsInsert] then
    md := 'I'

  else
    md := 'E';

  Fdm.CdsTtPt1GetyarPT1.Asinteger := StrToInt(FormatDateTime('yyyy',fdm.CdsTtPt1GetIDTPT1.AsDateTime));

  ch:= FDM.TtPt1InsUpd(
        Fdm.CdsTtPt1GetYARPT1.AsInteger,
        Fdm.CdsTtPt1GetCMPPT1.AsString,
        Fdm.CdsTtPt1GetBRNPT1.AsString,
        DCD,
        Fdm.CdsTtPt1GetDNOPT1.AsString,
        Fdm.CdsTtPt1GetSEQPT1.AsInteger,
        Fdm.CdsTtPt1GetIDTPT1.AsFloat,
        Fdm.CdsTtPt1GetDEPPT1.AsString,
        Fdm.CdsTtPt1GetVNOPT1.AsString,
        Fdm.CdsTtPt1GetCRTPT1.AsInteger,
        Fdm.CdsTtPt1GetRNOPT1.AsString,
        Fdm.CdsTtPt1GetRDVPT1.AsFloat,
        Fdm.CdsTtPt1GetRATPT1.AsFloat,
        Fdm.CdsTtPt1GetVTPPT1.AsString,
        Fdm.CdsTtPt1GetVATPT1.AsString,
        Fdm.CdsTtPt1GetVPCPT1.AsFloat,
        Fdm.CdsTtPt1GetVAMPT1.AsFloat,
        Fdm.CdsTtPt1GetVTEPT1.AsString,
        Fdm.CdsTtPt1GetSRSPT1.AsString,
        Fdm.CdsTtPt1GetITNPT1.AsString,
        Fdm.CdsTtPt1GetCOLPT1.AsString,
        Fdm.CdsTtPt1GetSERPT1.AsString,
        Fdm.CdsTtPt1GetENGPT1.AsString,
        Fdm.CdsTtPt1GetQR1PT1.AsInteger,
        Fdm.CdsTtPt1GetFWHPT1.AsString,
        Fdm.CdsTtPt1GetDDTPT1.AsFloat,
        Fdm.UserID,
         MD,OUT_DNOPT1);

//==================  RCV

   Fdm.CdsAd2GetByDno.First();
   while not Fdm.CdsAd2GetByDno.Eof do
   begin
     ch := Fdm.TtAd2InsUpd(
       Fdm.CdsAd2GetByDnoCMPAD2.AsString,
       Fdm.CdsAd2GetByDnoBRNAD2.AsString,
       Fdm.CdsAd2GetByDnoYARAD2.AsInteger,
       Fdm.CdsAd2GetByDnoPRDAD2.AsInteger,
       Fdm.CdsAd2GetByDnoDCDAD2.AsString,
       Fdm.CdsAd2GetByDnoDNOAD2.AsInteger,
       Fdm.CdsAd2GetByDnoSEQAD2.AsInteger,
       Fdm.CdsAd2GetByDnoSSBAD2.AsInteger,
       Fdm.CdsAd2GetByDnoISDAD2.AsFloat,
       Fdm.CdsAd2GetByDnoQT1AD1.AsInteger,
       0,
       Fdm.CdsAd2GetByDnoSERAD2.AsString,
       Fdm.CdsAd2GetByDnoENGAD2.AsString,
       StrToInt(OUT_DNOPT1),
       Fdm.UserID);

     Fdm.CdsAd2GetByDno.Next();
   end;



  if ch  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Fdm.CdsTtPt1GetDNOPT1.AsString := OUT_DNOPT1;
    btnConfirm.Enabled := False;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmPsRcvProductCarData.ShowEdtAmt();
begin

   IDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetIDTPT1.AsDateTime);
   DDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetDDTPT1.AsDateTime);
   RDVPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetRDVPT1.AsDateTime);
   ddyyyy.Text := copy(IDTPT1.Text,4,7);

   RATPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetRATPT1.AsFloat);
   VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVAMPT1.AsFloat);
//   NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetNETPT1.AsFloat);
   VPCPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVPCPT1.AsFloat);
//   QR1PT1.Text := FormatFloat('#,##0',Fdm.CdsTtPt1GetQR1PT1.AsInteger);

   EdtEDTAD1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetEDTAD1.AsDateTime);
   DNOPT1.Text := FDM.CdsTtPt1GetDNOAD1.AsString;

end;

procedure TfrmPsRcvProductCarData.CmbItnCloseUp(Sender: TObject);
begin
  Fdm.CdsAd2GetCol.Filter := 'ITNAD1 = ' +  QuotedStr(Fdm.CdsAd2GetItnITNAD1.AsString);

end;

procedure TfrmPsRcvProductCarData.CmbSrsCloseUp(Sender: TObject);
begin
  Fdm.CdsAd2GetItn.Filter := 'SRSPM1 = ' +  QuotedStr(Fdm.CdsAd2GetSrsSRSPM1.AsString);

end;

procedure TfrmPsRcvProductCarData.CmbVATCloseUp(Sender: TObject);
begin
  CalVATAMT();

end;

procedure TfrmPsRcvProductCarData.GetAddr(vno : String);
begin
  FSetupdm.CdsSTVm1GetAddr01.Close();
  FSetupdm.StVm1GetAddr(vno,'1');
  FSetupdm.CdsSTVm1GetAddr01.Open();
end;

procedure TfrmPsRcvProductCarData.VenderSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
begin
  Fdm.CdsTtPt1GetvNOPT1.AsString := vnovm1;
  Fdm.CdsTtPt1GetTNMvM1.AsString := tnmvm1;
  Fdm.CdsTtPt1GetCPSVM1.AsString := cpsvm1;

  fdm.CdsTtPt1GetDDTPT1.AsFloat := fdm.CdsTtPt1GetIDTPT1.AsFloat +  crtym3;
  DDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetDDTPT1.AsDateTime);

  GetAddr(fdm.CdsTtPt1GetVNOPT1.AsString);
end;


procedure TfrmPsRcvProductCarData.DDTPT1Change(Sender: TObject);
begin
  if Trim(DDTPT1.Text) = '' then
    Fdm.CdsTtPt1GetDDTPT1.AsDateTime := 0
  else
   Fdm.CdsTtPt1GetDDTPT1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(DDTPT1.DateTime);

end;

procedure TfrmPsRcvProductCarData.ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsTtPt1GetITNPT1.AsString := ITNPM1;
  Fdm.CdsTtPt1GetTNMPM1.AsString := TNMPM1;

end;

procedure TfrmPsRcvProductCarData.GetDnoAd1(DNOAD1:Integer;EDTAD1:DOUBLE);
begin
  EdtDNOAD1.Text := IntToStr(DNOAD1);
  EdtEDTAD1.TEXT := Fdm.FSBuddhistDateToStr(EDTAD1);

  Fdm.CdsAd2GetByDno.Close();
  Fdm.TT_AD2_GET_BY_DNO(Fdm.CdsTtPt1GetCMPPT1.AsString,Fdm.CdsTtPt1GetBRNPT1.AsString,
         Fdm.CdsTtPt1GetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1,0);
  Fdm.CdsAd2GetByDno.Open();

  Fdm.CdsAd2GetSrs.Close();
  Fdm.TT_AD2_GET_SRS(Fdm.CdsTtPt1GetCMPPT1.AsString,Fdm.CdsTtPt1GetBRNPT1.AsString,
         Fdm.CdsTtPt1GetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1);
  Fdm.CdsAd2GetSrs.Open();

  Fdm.CdsAd2GetItn.Close();
  Fdm.TT_AD2_GET_ITN(Fdm.CdsTtPt1GetCMPPT1.AsString,Fdm.CdsTtPt1GetBRNPT1.AsString,
         Fdm.CdsTtPt1GetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1);
  Fdm.CdsAd2GetItn.Open();
  Fdm.CdsAd2GetItn.Filter := 'SRSPM1 = ' +  QuotedStr(Fdm.CdsAd2GetSrsSRSPM1.AsString);

  Fdm.CdsAd2GetCol.Close();
  Fdm.TT_AD2_GET_COL(Fdm.CdsTtPt1GetCMPPT1.AsString,Fdm.CdsTtPt1GetBRNPT1.AsString,
         Fdm.CdsTtPt1GetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1);
  Fdm.CdsAd2GetCol.Open();
  Fdm.CdsAd2GetCol.Filter := 'ITNAD1 = ' +  QuotedStr(Fdm.CdsAd2GetItnITNAD1.AsString);

end;

procedure TfrmPsRcvProductCarData.BtnOKClick(Sender: TObject);
begin
  if Fdm.CdsAd2GetColOUTAD1.AsInteger < 1 then
  begin
    ShowMessage('ยอดคงค้างเป็น 0  แล้ว');
    Exit;
  end;

  Fdm.CdsAd2GetCol.Edit();
  Fdm.CdsAd2GetColOUTAD1.AsInteger := Fdm.CdsAd2GetColOUTAD1.AsInteger - 1;
  Fdm.CdsAd2GetCol.Post();

  Fdm.CdsAd2GetByDno.Append();
  Fdm.CdsAd2GetByDnoCmpad2.AsString := Fdm.CdsTtPt1GetCMPPT1.AsString;
  Fdm.CdsAd2GetByDnoBrnad2.AsString := Fdm.CdsTtPt1GetBRNPT1.AsString;
  Fdm.CdsAd2GetByDnoYarad2.AsInteger := Fdm.CdsTtPt1GetYARPT1.AsInteger;
  Fdm.CdsAd2GetByDnoPrdad2.AsInteger := StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime));
  Fdm.CdsAd2GetByDnoDcdad2.AsString := '604';
  Fdm.CdsAd2GetByDnoDnoad2.AsString := EdtDNOAD1.Text;
  Fdm.CdsAd2GetByDnoSeqad2.AsInteger := Fdm.CdsAd2GetItnSEQAD1.AsInteger;
  Fdm.CdsAd2GetByDnoSsbad2.AsInteger := Fdm.CdsAd2GetByDno.RecNo;
  Fdm.CdsAd2GetByDnoIsdad2.AsFloat := fdm.CdsTtPt1GetIDTPT1.AsFloat;
  Fdm.CdsAd2GetByDnoEdtad1.AsFloat := EdtEDTAD1.DateTime;
  Fdm.CdsAd2GetByDnoWisad1.AsInteger := 1;
  Fdm.CdsAd2GetByDnoTnmcty.AsString := '';
  Fdm.CdsAd2GetByDnoTnmsrs.AsString := CmbSrs.Text;
  Fdm.CdsAd2GetByDnoItnad1.AsString := CmbItn.KeyValue;
  Fdm.CdsAd2GetByDnoTnmpm1.AsString := CmbItn.Text;
  Fdm.CdsAd2GetByDnoColad1.AsString := CmbCol.KeyValue;
  Fdm.CdsAd2GetByDnoTnmcol.AsString :=  CmbCol.KeyValue + '-' + CmbCol.Text;
  Fdm.CdsAd2GetByDnoQt1ad1.AsInteger := FDM.CdsAd2GetColQT1AD1.AsInteger;
  Fdm.CdsAd2GetByDnoOutad1.AsInteger := FDM.CdsAd2GetColOutAD1.AsInteger;
  Fdm.CdsAd2GetByDnoSerad2.AsString := EdtSer.Text;
  Fdm.CdsAd2GetByDnoEngad2.AsString := EdtEng.Text;
  Fdm.CdsAd2GetByDnoUc1pm1.AsFloat := Fdm.CdsAd2GetItnUC1PM1.AsFloat;
  Fdm.CdsAd2GetByDnoEpdom5.AsFloat := Now; // Edit
  Fdm.CdsAd2GetByDnoRsdom5.AsFloat := Now; //Edit
  Fdm.CdsAd2GetByDnoDnoom5.AsInteger :=  0;
  Fdm.CdsAd2GetByDnoFull_name.AsString := '';
  Fdm.CdsAd2GetByDnoTnmsmn.AsString := '';

  Fdm.CdsAd2GetByDno.Post();

  EdtSer.Text := '';
  EdtEng.Text := '';
  EdtSer.SetFocus();

end;

procedure TfrmPsRcvProductCarData.BtnSelectAssignNoClick(Sender: TObject);
begin
  with TfrmPopupAssignWeekOut.Create(UniApplication) do
  begin
    Init(Fdm,Fdm.CdsTtPt1GetCMPPT1.AsString,Fdm.CdsTtPt1GetBRNPT1.AsString,
         Fdm.CdsTtPt1GetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',Fdm.CdsTtPt1GetIDTPT1.AsDateTime)),
         '604',Fdm.CdsTtPt1GetIDTPT1.AsDateTime);

    OnSelectData := GetDnoAd1;
    ShowModal();
  end;

end;

procedure TfrmPsRcvProductCarData.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกสินค้า');

    OnSelectData := ProductSelected;
    ShowModal();
  end;

end;

procedure TfrmPsRcvProductCarData.BtnSelectvnoClick(Sender: TObject);
begin
  if fdm.CdsTtPt1GetBRNPT1.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกผู้จำหน่าย',  'A','ALL');

    OnSelectData := VenderSelected;
    ShowModal();
  end;
end;

procedure TfrmPsRcvProductCarData.IDTPT1Change(Sender: TObject);
begin
  if Trim(IDTPT1.Text) = '' then
    Fdm.CdsTtPt1GetIDTPT1.AsDateTime := 0
  else
  begin
   Fdm.CdsTtPt1GetIDTPT1.AsDateTime :=
     Fdm.FSBuddhistDateToDate(IDTPT1.DateTime);
     ddyyyy.Text := copy(IDTPT1.Text,4,7);

  end;
  Fdm.CdsTtPt1GetyarPT1.Asinteger := StrToInt(FormatDateTime('yyyy',fdm.CdsTtPt1GetIDTPT1.AsDateTime));
end;

procedure TfrmPsRcvProductCarData.Init(DM : TDSPurchaseDM);
VAR STR : STRING;
begin

    Fdm := dm;

    FUserSession :=  UniMainModule();
    FSetupdm:= FUsersession.DSSetupDM;

   dsDATA.DataSet := Fdm.CdsTtPt1Get;
   dsgrid.DataSet := Fdm.CdsAd2GetByDno;
   dsAddr01.DataSet := FSetupdm.CdsSTVm1GetAddr01;
   dsSrs.DataSet := Fdm.CdsAd2GetSrs;
   dsItn.DataSet := Fdm.CdsAd2GetItn;
   dsCol.DataSet := Fdm.CdsAd2GetCol;

   CmbBrn.ListSource := Fdm.GetDSC('BRN');
   CmbDEP.ListSource := Fdm.GetDSC('DP');
   CdsCPS.ListSource := Fdm.GetDSC('CP');
   CmbChg_01.ListSource := Fdm.GetDSC('AC');
   CmbBRNFROM.ListSource := Fdm.GetDSC('WH');

   CdsCPS.ReadOnly := True;
   CmbChg_01.ReadOnly := True;
   VPCPT1.ReadOnly := True;

  if (fdm.CdsTtPt1Get.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

   IDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetIDTPT1.AsDateTime);
   DDTPT1.Text := '';
   RDVPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetRDVPT1.AsDateTime);

    RATPT1.Text := '0.00';
    VAMPT1.Text := '0.00';
//    NETPT1.Text := '0.00';
//    QR1PT1.Text := '1';
    VPCPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVPCPT1.AsFloat);
    ddyyyy.Text := copy(IDTPT1.Text,4,7);
  end
  else if (fdm.CdsTtPt1Get.State in [dsEdit]) then
  begin
     CMPPT1.ReadOnly := True;
     CmbBrn.ReadOnly := True;
     DNOPT1.ReadOnly := True;

     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectvno.Enabled := False;
//     BtnSelectProduct.Enabled := False;

     ShowEdtAmt();
     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;


procedure TfrmPsRcvProductCarData.QR1PT1Exit(Sender: TObject);
begin
//  checkCur(QR1PT1,FDM.CdsTtPt1Get);
//  QR1PT1.Text := FormatFloat('#,##0',Fdm.CdsTtPt1GetQR1PT1.AsInteger);
end;

procedure TfrmPsRcvProductCarData.RATPT1Exit(Sender: TObject);
begin
  checkCur(RATPT1,FDM.CdsTtPt1Get);
  CalVATAMT();

end;

procedure TfrmPsRcvProductCarData.RATPT1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    key := #0;
    RATPT1Exit(RATPT1);
  end;

end;

procedure TfrmPsRcvProductCarData.RDVPT1Change(Sender: TObject);
begin
  if Trim(RDVPT1.Text) = '' then
    Fdm.CdsTtPt1GetRDVPT1.AsDateTime := 0
  else
   Fdm.CdsTtPt1GetRDVPT1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(RDVPT1.DateTime);

end;

end.
