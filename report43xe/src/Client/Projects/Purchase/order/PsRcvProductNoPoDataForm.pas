unit PsRcvProductNoPoDataForm;

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
  TfrmPsRcvProductNoPoData = class(TMainDataForm)
    dsgrid: TDataSource;
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
    IDTPT1: TUniDateTimePicker;
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
    GrpInvoice: TUniGroupBox;
    CmbDEP: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel23: TUniLabel;
    RNOPT1: TUniDBEdit;
    RDVPT1: TUniDateTimePicker;
    RATPT1: TUniEdit;
    VAMPT1: TUniEdit;
    VPCPT1: TUniEdit;
    GrpCount: TUniGroupBox;
    UniLabel11: TUniLabel;
    DDTPT1: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    NETPT1: TUniEdit;
    UniLabel29: TUniLabel;
    QR1PT1: TUniEdit;
    UniLabel3: TUniLabel;
    CmbBRNFROM: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    dsAddr01: TDataSource;
    RdoTyp2: TUniRadioButton;
    CdsCPS: TUniDBLookupComboBox;
    ChkVAT: TUniCheckBox;
    VATPT1: TUniCheckBox;
    RdoTyp1: TUniRadioButton;
    csPopUpAp: TUniScreenMask;
    csPopUpProduct: TUniScreenMask;
    GrpProduct: TUniGroupBox;
    PgProductAndFg: TUniPageControl;
    TabProduct: TUniTabSheet;
    TabFreeGood: TUniTabSheet;
    UniLabel31: TUniLabel;
    CmbSRS: TUniDBLookupComboBox;
    UniLabel32: TUniLabel;
    CmbCOL: TUniDBLookupComboBox;
    UniLabel35: TUniLabel;
    UniLabel36: TUniLabel;
    SERPT1: TUniDBEdit;
    ENGPT1: TUniDBEdit;
    ITNPT1: TUniDBEdit;
    BtnSelectProduct: TUniButton;
    TNMPM1: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniLabel33: TUniLabel;
    dbgDataList: TUniDBGrid;
    dsGridUsed: TDataSource;
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

  private
    FUserSession: TUniMainModule;
    Fdm : TDSPurchaseDM;
    FSetupdm : TDSSetupDM;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure CalVATAMT();
    procedure GetAddr(vno : String);
    procedure ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
    procedure venderSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSPurchaseDM);
  end;

var
  frmPsRcvProductNoPoData: TfrmPsRcvProductNoPoData;

const
  DCD = '611';  // รหัส รับสินค้า ไม่มีใบสั่งซื้อ

implementation

{$R *.dfm}

uses PopupApForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmPsRcvProductNoPoData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPsRcvProductNoPoData.CalVATAMT();
begin
  if fdm.CdsTtPt1GetVATPT1.AsString = 'Y' then
  begin
    fdm.CdsTtPt1GetVAMPT1.AsFloat := fdm.CdsTtPt1GetRATPT1.AsFloat *
      FDM.CdsTtPt1GetVPCPT1.AsFloat/(100.00 + FDM.CdsTtPt1GetVPCPT1.AsFloat);
    fdm.CdsTtPt1GetNETPT1.AsFloat :=  fdm.CdsTtPt1GetRATPT1.AsFloat - fdm.CdsTtPt1GetVAMPT1.AsFloat;

    VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVAMPT1.AsFloat);
    NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetNETPT1.AsFloat);

  end
  else
  begin
    fdm.CdsTtPt1GetVAMPT1.AsFloat := 0;
    fdm.CdsTtPt1GetNETPT1.AsFloat :=  fdm.CdsTtPt1GetRATPT1.AsFloat - fdm.CdsTtPt1GetVAMPT1.AsFloat;

    VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVAMPT1.AsFloat);
    NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetNETPT1.AsFloat);

  end;

end;

procedure TfrmPsRcvProductNoPoData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsTtPt1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsTtPt1Get.Cancel();
  inherited;

end;

procedure TfrmPsRcvProductNoPoData.btnConfirmClick(Sender: TObject);
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

  if ch  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Fdm.CdsTtPt1GetDNOPT1.AsString := OUT_DNOPT1;
    btnConfirm.Enabled := False;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmPsRcvProductNoPoData.ShowEdtAmt();
begin
   IDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetIDTPT1.AsDateTime);
   DDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetDDTPT1.AsDateTime);
   RDVPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetRDVPT1.AsDateTime);
   ddyyyy.Text := copy(IDTPT1.Text,4,7);

   RATPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetRATPT1.AsFloat);
   VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVAMPT1.AsFloat);
   NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetNETPT1.AsFloat);
   VPCPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVPCPT1.AsFloat);
   QR1PT1.Text := FormatFloat('#,##0',Fdm.CdsTtPt1GetQR1PT1.AsInteger);

end;

procedure TfrmPsRcvProductNoPoData.CmbVATCloseUp(Sender: TObject);
begin
  CalVATAMT();

end;

procedure TfrmPsRcvProductNoPoData.GetAddr(vno : String);
begin
  FSetupdm.CdsSTVm1GetAddr01.Close();
  FSetupdm.StVm1GetAddr(vno,'1');
  FSetupdm.CdsSTVm1GetAddr01.Open();
end;

procedure TfrmPsRcvProductNoPoData.VenderSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
begin
  Fdm.CdsTtPt1GetvNOPT1.AsString := vnovm1;
  Fdm.CdsTtPt1GetTNMvM1.AsString := tnmvm1;
  Fdm.CdsTtPt1GetCPSVM1.AsString := cpsvm1;

  fdm.CdsTtPt1GetDDTPT1.AsFloat := fdm.CdsTtPt1GetIDTPT1.AsFloat +  crtym3;
  DDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetDDTPT1.AsDateTime);

  GetAddr(fdm.CdsTtPt1GetVNOPT1.AsString);
end;


procedure TfrmPsRcvProductNoPoData.DDTPT1Change(Sender: TObject);
begin
  if Trim(DDTPT1.Text) = '' then
    Fdm.CdsTtPt1GetDDTPT1.AsDateTime := 0
  else
   Fdm.CdsTtPt1GetDDTPT1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(DDTPT1.DateTime);

end;

procedure TfrmPsRcvProductNoPoData.ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsTtPt1GetITNPT1.AsString := ITNPM1;
  Fdm.CdsTtPt1GetTNMPM1.AsString := TNMPM1;

  // get fg1
end;


procedure TfrmPsRcvProductNoPoData.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกสินค้า');

    OnSelectData := ProductSelected;
    ShowModal();
  end;

end;

procedure TfrmPsRcvProductNoPoData.BtnSelectvnoClick(Sender: TObject);
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

procedure TfrmPsRcvProductNoPoData.IDTPT1Change(Sender: TObject);
begin
  if Trim(IDTPT1.Text) = '' then
    Fdm.CdsTtPt1GetIDTPT1.AsDateTime := 0
  else
  begin
   Fdm.CdsTtPt1GetIDTPT1.AsDateTime :=
     Fdm.FSBuddhistDateToDate(IDTPT1.DateTime);
   ddyyyy.Text := copy(IDTPT1.Text,4,7);
  end;
end;

procedure TfrmPsRcvProductNoPoData.Init(DM : TDSPurchaseDM);
begin

    Fdm := dm;

    FUserSession :=  UniMainModule();
    FSetupdm:= FUsersession.DSSetupDM;

   dsgrid.DataSet := Fdm.CdsTtPt1Get;
   dsAddr01.DataSet := FSetupdm.CdsSTVm1GetAddr01;

   CmbBrn.ListSource := Fdm.GetDSC('BRN');
   CmbDEP.ListSource := Fdm.GetDSC('DP');
   CdsCPS.ListSource := Fdm.GetDSC('CP');
   CmbChg_01.ListSource := Fdm.GetDSC('AC');
   CmbSRS.ListSource := Fdm.GetDSC('IF');
   CmbBRNFROM.ListSource := Fdm.GetDSC('WH');
   CmbCOL.ListSource := Fdm.GetDSC('IC');

   CdsCPS.ReadOnly := True;
   CmbChg_01.ReadOnly := True;
   VPCPT1.ReadOnly := True;

  if (fdm.CdsTtPt1Get.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetIDTPT1.AsDateTime);
    RDVPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPt1GetRDVPT1.AsDateTime);
    DDTPT1.Text := '';

    RATPT1.Text := '0.00';
    VAMPT1.Text := '0.00';
    NETPT1.Text := '0.00';
    QR1PT1.Text := '1';
    VPCPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPt1GetVPCPT1.AsFloat);
    ddyyyy.Text := copy(IDTPT1.Text,4,7);
  end
  else if (fdm.CdsTtPt1Get.State in [dsEdit]) then
  begin
     CMPPT1.ReadOnly := True;
     CmbBrn.ReadOnly := True;
     DNOPT1.ReadOnly := True;
     GetAddr(fdm.CdsTtPt1GetVNOPT1.AsString);
     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectvno.Enabled := False;
     BtnSelectProduct.Enabled := False;
     GetAddr(fdm.CdsTtPt1GetVNOPT1.AsString);
     ShowEdtAmt();
     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;


procedure TfrmPsRcvProductNoPoData.QR1PT1Exit(Sender: TObject);
begin
  checkCur(QR1PT1,FDM.CdsTtPt1Get);
  QR1PT1.Text := FormatFloat('#,##0',Fdm.CdsTtPt1GetQR1PT1.AsInteger);
end;

procedure TfrmPsRcvProductNoPoData.RATPT1Exit(Sender: TObject);
begin
  checkCur(RATPT1,FDM.CdsTtPt1Get);
  CalVATAMT();

end;

procedure TfrmPsRcvProductNoPoData.RATPT1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    key := #0;
    RATPT1Exit(RATPT1);
  end;

end;

procedure TfrmPsRcvProductNoPoData.RDVPT1Change(Sender: TObject);
begin
  if Trim(RDVPT1.Text) = '' then
    Fdm.CdsTtPt1GetRDVPT1.AsDateTime := 0
  else
   Fdm.CdsTtPt1GetRDVPT1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(RDVPT1.DateTime);

end;

end.
