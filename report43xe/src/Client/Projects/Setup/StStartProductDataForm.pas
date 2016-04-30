unit StStartProductDataForm;

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
  TfrmStStartProductData = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel24: TUniLabel;
    LbCreditLineDate: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    BRNIM2: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    CMPIM2: TUniDBEdit;
    IDTIM2: TUniDateTimePicker;
    ITNIM2: TUniDBEdit;
    UniLabel5: TUniLabel;
    BtnSelectProduct: TUniButton;
    CmbSTS: TUniDBLookupComboBox;
    SERIM2: TUniDBEdit;
    CT1IM2: TUniEdit;
    CT2IM2: TUniEdit;
    ENGIM2: TUniDBEdit;
    UC2IM2: TUniEdit;
    UC1IM2: TUniEdit;
    UniLabel6: TUniLabel;
    COLIM2: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    FWHIM2: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel9: TUniLabel;
    QT1IM2: TUniEdit;
    QT2IM2: TUniEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure IDTIM2Change(Sender: TObject);
    procedure QT1IM2Exit(Sender: TObject);
    procedure QT2IM2Exit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure CalMainAmt();
    procedure CalSubAmt();
    procedure ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStStartProductData: TfrmStStartProductData;

implementation

{$R *.dfm}

uses PopupApForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStStartProductData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStStartProductData.CalMainAmt();
begin
   UC1IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetUC1IM2.AsFloat);
   fdm.CdsStIm2GetCT1IM2.AsFloat := fdm.CdsStIm2GetQT1IM2.AsFloat * fdm.CdsStIm2GetUC1IM2.AsFloat;
   CT1IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetCT1IM2.AsFloat);

end;

procedure TfrmStStartProductData.CalSubAmt();
begin
  UC2IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetUC2IM2.AsFloat);
  fdm.CdsStIm2GetCT2IM2.AsFloat := fdm.CdsStIm2GetQT2IM2.AsFloat * fdm.CdsStIm2GetUC2IM2.AsFloat;
   CT2IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetCT2IM2.AsFloat);

end;

procedure TfrmStStartProductData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStIM2Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStIM2Get.Cancel();
  inherited;

end;

procedure TfrmStStartProductData.btnConfirmClick(Sender: TObject);
var ch ,ch2: Boolean;
  md : String;
begin
  if ((fdm.CdsStIM2GetBRNIM2.AsString = '') or
      (fdm.CdsStIm2GetITNIM2.AsString = '') or
      (fdm.CdsStIm2GetFWHIM2.AsString = '') or
      (fdm.CdsStIm2GetTNMPM1.AsString = '') or
      (fdm.CdsStIm2GetSERIM2.AsString = '') or
      (fdm.CdsStIm2GetENGIM2.AsString = '')
     ) then
  begin
    ShowMessage('กรอกข้อมูลเบื่องต้นไม่ครบถ้วน');
    Exit;

  end;

  if Fdm.CdsStIM2Get.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  fdm.CdsStIm2GetTWHIM2.AsString :=  fdm.CdsStIm2GetFWHIM2.AsString;

  ch:= FDM.StIM2InsUpd(
        Fdm.CdsStIM2Getstsim2.AsString ,
        Fdm.CdsStIM2Getcmpim2.AsString ,
        Fdm.CdsStIM2Getbrnim2.AsString ,
        Fdm.CdsStIM2Getfwhim2.AsString ,
        Fdm.CdsStIM2Gettwhim2.AsString ,
        Fdm.CdsStIM2Getitnim2.AsString ,
        Fdm.CdsStIM2Getserim2.AsString ,
        Fdm.CdsStIM2Getengim2.AsString ,
        Fdm.CdsStIM2Getcolim2.AsString ,
        Fdm.CdsStIM2Getidtim2.AsFloat,
        Fdm.CdsStIM2Getmovim2.AsString ,
        Fdm.CdsStIM2Getdcdim2.AsString ,
        Fdm.CdsStIM2Getdnoim2.AsLargeInt ,
        Fdm.CdsStIM2Getseqim2.Asinteger ,
        Fdm.CdsStIM2Getdepim2.AsString ,
        Fdm.CdsStIM2Getdesim2.AsString ,
        Fdm.CdsStIM2Getqt1im2.Asinteger ,
        Fdm.CdsStIM2Getqt2im2.Asinteger ,
        Fdm.CdsStIM2Getct1im2.AsFloat ,
        Fdm.CdsStIM2Getct2im2.AsFloat ,
        Fdm.CdsStIM2Getat1im2.AsFloat ,
        Fdm.CdsStIM2Getat2im2.AsFloat ,
        Fdm.CdsStIM2Getuc1im2.AsFloat ,
        Fdm.CdsStIM2Getuc2im2.AsFloat ,
        Fdm.CdsStIM2Getup1im2.AsFloat ,
        Fdm.CdsStIM2Getup2im2.AsFloat ,
        md
      );

  if ch  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('มีข้อผิดพลาด ');

end;

procedure TfrmStStartProductData.ShowEdtAmt();
begin
   IDTIM2.Text := FDM.FSBuddhistDateToStr(fDM.CdsStIM2GetIDTIM2.AsDateTime);

   UC1IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetUC1IM2.AsFloat);
   UC2IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetUP2IM2.AsFloat);

   QT1IM2.Text := FormatFloat('#,##0',Fdm.CdsStIM2GetQT1IM2.AsInteger);
   QT2IM2.Text := FormatFloat('#,##0',Fdm.CdsStIM2GetQT2IM2.AsInteger);

   CT2IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetCT2IM2.AsFloat);
   CT1IM2.Text := FormatFloat('#,##0.00',Fdm.CdsStIM2GetCT1IM2.AsFloat);

end;

procedure TfrmStStartProductData.ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsStIm2GetITNIM2.AsString := ITNPM1;
  Fdm.CdsStIm2GetTNMPM1.AsString := TNMPM1;

  Fdm.CdsStIm2GetUC1IM2.AsFloat := UC1PM1;
  Fdm.CdsStIm2GetUC2IM2.AsFloat := UC2PM1;

  CalMainAmt();
  CalSubAmt()

end;


procedure TfrmStStartProductData.QT1IM2Exit(Sender: TObject);
begin
  if Fdm.CdsStIm2Get.State in [dsInsert,dsEdit] then
  begin
    checkCur(QT1IM2,Fdm.CdsStIm2Get);
    QT1IM2.Text := FormatFloat('#,##0',Fdm.CdsStIM2GetQT1IM2.AsInteger);
    CalMainAmt();
  end;

end;

procedure TfrmStStartProductData.QT2IM2Exit(Sender: TObject);
begin
  if Fdm.CdsStIm2Get.State in [dsInsert,dsEdit] then
  begin
    checkCur(QT2IM2,Fdm.CdsStIm2Get);
    QT2IM2.Text := FormatFloat('#,##0',Fdm.CdsStIM2GetQT2IM2.AsInteger);
    CalSubAmt();
  end;

end;

procedure TfrmStStartProductData.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกสินค้า');

    OnSelectData := ProductSelected;
    ShowModal();
  end;


end;

procedure TfrmStStartProductData.IDTIM2Change(Sender: TObject);
begin
  if Trim(IDTIM2.Text) = '' then
    Fdm.CdsStIM2GetIDTIM2.AsDateTime := 0
  else
   Fdm.CdsStIM2GetIDTIM2.AsDateTime :=
   Fdm.FSBuddhistDateToDate(IDTIM2.DateTime);


end;

procedure TfrmStStartProductData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStIM2Get;

   CmbSTS.ListSource := Fdm.GetDSC('STS');
   BRNIM2.ListSource := Fdm.GetDSC('BRN');
   FWHIM2.ListSource := Fdm.GetDSC('WH');

   COLIM2.ListSource := Fdm.GetDSC('IC');

   CmbSTS.ReadOnly := True;
//   QT1IM2.ReadOnly := True;

  if (fdm.CdsStIM2Get.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTIM2.Text := FDM.FSBuddhistDateToStr(fDM.CdsStIM2GetIDTIM2.AsDateTime);
    ShowEdtAmt();
  end
  else if (fdm.CdsStIM2Get.State in [dsEdit]) then
  begin
     CMPIM2.ReadOnly := True;
     IDTIM2.ReadOnly := True;
     BRNIM2.ReadOnly := True;
     FWHIM2.ReadOnly := True;
     BtnSelectProduct.Enabled := False;
     SERIM2.ReadOnly := True;
     ENGIM2.ReadOnly := True;
     ITNIM2.ReadOnly := True;

     btnConfirm.Visible := True;

     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectProduct.Enabled := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;


end.
