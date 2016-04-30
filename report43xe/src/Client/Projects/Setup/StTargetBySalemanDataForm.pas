unit StTargetBySalemanDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,DSSetupIntfDM,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage, uniRadioButton,
  Datasnap.DBClient,uniScreenMask;

type
  TfrmStTargetBySalemanData = class(TMainDataForm)
    dsgrid: TDataSource;
    DbTNMPM1: TUniDBEdit;
    UniLabel35: TUniLabel;
    UniLabel34: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel7: TUniLabel;
    DbITNBG2: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    DbN01: TUniDBEdit;
    DbN02: TUniDBEdit;
    DbN03: TUniDBEdit;
    DbN04: TUniDBEdit;
    DbN05: TUniDBEdit;
    DbN06: TUniDBEdit;
    DbN07: TUniDBEdit;
    DbN08: TUniDBEdit;
    DbN09: TUniDBEdit;
    DbN10: TUniDBEdit;
    DbN11: TUniDBEdit;
    DbN12: TUniDBEdit;
    UniLabel2: TUniLabel;
    LbCreditLineDate: TUniLabel;
    DbYar: TUniDBEdit;
    UniLabel8: TUniLabel;
    DbCom: TUniDBEdit;
    UniLabel9: TUniLabel;
    CmbBRN: TUniDBLookupComboBox;
    A01BG2: TUniEdit;
    A02BG2: TUniEdit;
    A03BG2: TUniEdit;
    A04BG2: TUniEdit;
    A05BG2: TUniEdit;
    A06BG2: TUniEdit;
    A07BG2: TUniEdit;
    A08BG2: TUniEdit;
    A09BG2: TUniEdit;
    A10BG2: TUniEdit;
    A11BG2: TUniEdit;
    A12BG2: TUniEdit;
    CmbSMN: TUniDBLookupComboBox;
    BtnSelectProduct: TUniButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure A01BG2Exit(Sender: TObject);
    procedure A02BG2Exit(Sender: TObject);
    procedure A03BG2Exit(Sender: TObject);
    procedure A04BG2Exit(Sender: TObject);
    procedure A05BG2Exit(Sender: TObject);
    procedure A06BG2Exit(Sender: TObject);
    procedure A07BG2Exit(Sender: TObject);
    procedure A08BG2Exit(Sender: TObject);
    procedure A09BG2Exit(Sender: TObject);
    procedure A10BG2Exit(Sender: TObject);
    procedure A11BG2Exit(Sender: TObject);
    procedure A12BG2Exit(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowBg();
    procedure ContractSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
  public
    procedure Init(DM : TDSSetupDM);
  end;

var
  frmStTargetBySalemanData: TfrmStTargetBySalemanData;

implementation

{$R *.dfm}

uses PopupProductForm;

procedure TfrmStTargetBySalemanData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStTargetBySalemanData.ShowBg();
begin

  a01bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta01bg2.AsFloat);
  a02bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta02bg2.AsFloat);
  a03bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta03bg2.AsFloat);
  a04bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta04bg2.AsFloat);
  a05bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta05bg2.AsFloat);
  a06bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta06bg2.AsFloat);
  a07bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta07bg2.AsFloat);
  a08bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta08bg2.AsFloat);
  a09bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta09bg2.AsFloat);
  a10bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta10bg2.AsFloat);
  a11bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta11bg2.AsFloat);
  a12bg2.Text := FormatFloat('#,##0.00',Fdm.CdsStBgGeta12bg2.AsFloat);

end;

procedure TfrmStTargetBySalemanData.A01BG2Exit(Sender: TObject);
begin
  checkCur(A01BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A02BG2Exit(Sender: TObject);
begin
  checkCur(A02BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A03BG2Exit(Sender: TObject);
begin
  checkCur(A03BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A04BG2Exit(Sender: TObject);
begin
  checkCur(A04BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A05BG2Exit(Sender: TObject);
begin
  checkCur(A05BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A06BG2Exit(Sender: TObject);
begin
  checkCur(A06BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A07BG2Exit(Sender: TObject);
begin
  checkCur(A07BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A08BG2Exit(Sender: TObject);
begin
  checkCur(A08BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A09BG2Exit(Sender: TObject);
begin
  checkCur(A09BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A10BG2Exit(Sender: TObject);
begin
  checkCur(A10BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A11BG2Exit(Sender: TObject);
begin
  checkCur(A11BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.A12BG2Exit(Sender: TObject);
begin
  checkCur(A12BG2,Fdm.CdsStBgGet);

end;

procedure TfrmStTargetBySalemanData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStBgGet.State in [dsInsert,dsEdit] then
    Fdm.CdsStBgGet.Cancel();
  inherited;


end;

procedure TfrmStTargetBySalemanData.btnConfirmClick(Sender: TObject);
var ch ,Ch2: Boolean;
  md : String;
begin
  if Fdm.CdsStPM1Get.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  ch:= FDM.StBgInsUpd(
        Fdm.CdsStBgGetFLG_BG.AsString,
        Fdm.CdsStBgGetstsbg2.AsString,
        Fdm.CdsStBgGetyarbg2.AsString,
        Fdm.CdsStBgGetcmpbg2.AsString,
        Fdm.CdsStBgGetbrnbg2.AsString,
        Fdm.CdsStBgGetitnbg2.AsString,
        Fdm.CdsStBgGetsmnbg2.AsString,
        Fdm.CdsStBgGetq01bg2.AsFloat,
        Fdm.CdsStBgGetq02bg2.AsFloat,
        Fdm.CdsStBgGetq03bg2.AsFloat,
        Fdm.CdsStBgGetq04bg2.AsFloat,
        Fdm.CdsStBgGetq05bg2.AsFloat,
        Fdm.CdsStBgGetq06bg2.AsFloat,
        Fdm.CdsStBgGetq07bg2.AsFloat,
        Fdm.CdsStBgGetq08bg2.AsFloat,
        Fdm.CdsStBgGetq09bg2.AsFloat,
        Fdm.CdsStBgGetq10bg2.AsFloat,
        Fdm.CdsStBgGetq11bg2.AsFloat,
        Fdm.CdsStBgGetq12bg2.AsFloat,
        md
       );

  Ch2 := FDM.StBgInsUpd2(
        Fdm.CdsStBgGetFLG_BG.AsString,
        Fdm.CdsStBgGetstsbg2.AsString,
        Fdm.CdsStBgGetyarbg2.AsString,
        Fdm.CdsStBgGetcmpbg2.AsString,
        Fdm.CdsStBgGetbrnbg2.AsString,
        Fdm.CdsStBgGetitnbg2.AsString,
        Fdm.CdsStBgGetsmnbg2.AsString,
        Fdm.CdsStBgGeta01bg2.AsFloat,
        Fdm.CdsStBgGeta02bg2.AsFloat,
        Fdm.CdsStBgGeta03bg2.AsFloat,
        Fdm.CdsStBgGeta04bg2.AsFloat,
        Fdm.CdsStBgGeta05bg2.AsFloat,
        Fdm.CdsStBgGeta06bg2.AsFloat,
        Fdm.CdsStBgGeta07bg2.AsFloat,
        Fdm.CdsStBgGeta08bg2.AsFloat,
        Fdm.CdsStBgGeta09bg2.AsFloat,
        Fdm.CdsStBgGeta10bg2.AsFloat,
        Fdm.CdsStBgGeta11bg2.AsFloat,
        Fdm.CdsStBgGeta12bg2.AsFloat
       );

  if ch and ch2 then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStTargetBySalemanData.ContractSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsStBgGetITNBG2.AsString := ITNPM1;
  Fdm.CdsStBgGetTNMPM1.AsString := TNMPM1;

end;

procedure TfrmStTargetBySalemanData.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกลูกค้า');

    OnSelectData := ContractSelected;
    ShowModal();
  end;
end;

procedure TfrmStTargetBySalemanData.Init(DM : TDSSetupDM);
begin
  Fdm := Dm;

  dsgrid.DataSet := Fdm.CdsStBgGet;
  CmbBRN.ListSource := Fdm.GetDSC('BRN');
  CmbSMN.ListSource := Fdm.GetDSC('SM');


  if Fdm.CdsStBgGet.State in [dsInsert] then
     btnConfirm.Visible := True
  else if Fdm.CdsStBgGet.State in [dsEdit] then
  begin
     btnConfirm.Visible := True;
     BtnSelectProduct.Visible := False;

     DbYar.ReadOnly := True;
     DbCom.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     CmbSMN.ReadOnly := True;
     DbITNBG2.ReadOnly := True;

     ShowBg();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectProduct.Enabled := False;

     ShowBg();
     RSetReadOnly();
  end;
  RSetColorReadOnly();

end;

//initialization
 // RegisterMainFormClass(TfrmStTargetBySalemanData);


end.
