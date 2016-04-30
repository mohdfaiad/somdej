unit PopupFg1Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx , DSSetupIntfDM,
  uniGUIForm,  uniGUIVars,DSCarsaleIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask;

type
  TfrmPopupFg1 = class(TMainDataForm)
    dsgridDtl: TDataSource;
    UniLabel6: TUniLabel;
    UniLabel1: TUniLabel;
    SEQFG1: TUniDBEdit;
    UniLabel5: TUniLabel;
    FGDFG1: TUniDBEdit;
    BtnSelectProduct: TUniButton;
    TNMFGD: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    AM1FG1: TUniEdit;
    AM2FG1: TUniEdit;
    FU2FG1: TUniEdit;
    FU1FG1: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel9: TUniLabel;
    FQ1FG1: TUniEdit;
    FQ2FG1: TUniEdit;
    UniLabel7: TUniLabel;
    FAMFG1: TUniEdit;
    UniLabel8: TUniLabel;
    FPAFG1: TUniEdit;
    UniLabel11: TUniLabel;
    imgLogo: TUniImage;
    FDSFG1: TUniEdit;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure FPAFG1Exit(Sender: TObject);
    procedure FPAFG1KeyPress(Sender: TObject; var Key: Char);

  private
    Fdm : TDSSetupDM;
    _StrList : TStringList;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowValue();
    procedure ProductByItcSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,UP2PM1,FAMPM1: DOUBLE);
  public
    procedure Init(DM : TDSSetupDM);
  end;

var
  frmPopupFg1: TfrmPopupFg1;

implementation

{$R *.dfm}

uses PopupProductByItcForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupFg1.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupFg1.FPAFG1Exit(Sender: TObject);
begin
  checkCur(FPAFG1, FDM.CdsStFg1GetDtl);
  ShowValue();
end;

procedure TfrmPopupFg1.FPAFG1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    FPAFG1Exit(FPAFG1);
  end;

end;

procedure TfrmPopupFg1.ShowValue();
begin

  FU1FG1.Text := FormatCurr('#,##0.00', Fdm.CdsStFg1GetDtlFU1FG1.AsFloat);
  FU2FG1.Text := FormatCurr('#,##0.00', Fdm.CdsStFg1GetDtlFU2FG1.AsFloat);

  FQ1FG1.Text := FormatCurr('#,##0', Fdm.CdsStFg1GetDtlFQ1FG1.AsFloat);
  FQ2FG1.Text := FormatCurr('#,##0', Fdm.CdsStFg1GetDtlFQ2FG1.AsFloat);

  AM1FG1.Text := FormatCurr('#,##0.00', Fdm.CdsStFg1GetDtlAM1FG1.AsFloat);
  AM2FG1.Text := FormatCurr('#,##0.00', Fdm.CdsStFg1GetDtlAM2FG1.AsFloat);

  FAMFG1.Text := FormatCurr('#,##0.00', Fdm.CdsStFg1GetDtlFAMFG1.AsFloat);
  FDSFG1.Text := FormatCurr('#,##0.00', Fdm.CdsStFg1GetDtlFDSFG1.AsFloat);
  FPAFG1.Text := FormatCurr('#,##0.00', Fdm.CdsStFg1GetDtlFPAFG1.AsFloat);

end;

procedure TfrmPopupFg1.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStFg1GetDtl.State in [dsInsert,dsEdit] then
    Fdm.CdsStFg1GetDtl.Cancel();

  Close();

end;

procedure TfrmPopupFg1.btnConfirmClick(Sender: TObject);
var
  ch : Boolean;
  total_amt : double;
begin

{
  ch := False;
  if fdm.CdsStFg1GetDtl.State in [dsInsert] then
  begin
    cnt := _StrList.Count - 1;
    for I := 0 to cnt do
    begin
      if _StrList[i] = fdm.CdsStFg1GetDtlFSROT6.AsString then
      begin
        ch := True;
        Break;
      end;
    end;
  end;
  }

  ch := False;
  total_amt := 0;
  if ch then
  begin
    ShowMessage('รหัสรายการนี้มีแล้ว');

  end
  else
  begin
    fdm.CdsStFg1GetDtl.Post();

    fdm.CdsStFg1GetDtl.First();

    while not fdm.CdsStFg1GetDtl.Eof do
    begin
       total_amt := total_amt + fdm.CdsStFg1GetDtlFAMFG1.AsFloat;
       fdm.CdsStFg1GetDtl.Next();
    end;
    fdm.CdsStFg1GetListSUMAMT.AsFloat := total_amt;
    Close;
  end;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsStFg1GetDtlCNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsStFg1GetDtl.Close;
//    FDM.CdsStFg1GetDtl.Open;
//    Fdm.CdsStFg1GetDtl.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupFg1.ProductByItcSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,UP2PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsStFg1GetDtlFGDFG1.AsString := ITNPM1;
  Fdm.CdsStFg1GetDtlTNMFGD.AsString := TNMPM1;

  Fdm.CdsStFg1GetDtlFU1fg1.AsFloat := UP1PM1;
  Fdm.CdsStFg1GetDtlFU2fg1.AsFloat := UP2PM1;

  Fdm.CdsStFg1GetDtlFQ1FG1.AsInteger := 1;
  Fdm.CdsStFg1GetDtlFQ2FG1.AsInteger := 0;

  Fdm.CdsStFg1GetDtlAM1FG1.AsFloat := Fdm.CdsStFg1GetDtlFU1fg1.AsFloat * Fdm.CdsStFg1GetDtlFQ1FG1.AsFloat;
  Fdm.CdsStFg1GetDtlAM2FG1.AsFloat := Fdm.CdsStFg1GetDtlFU2fg1.AsFloat * Fdm.CdsStFg1GetDtlFQ2FG1.AsFloat;;

  Fdm.CdsStFg1GetDtlfamfg1.AsFloat :=  Fdm.CdsStFg1GetDtlAM1FG1.AsFloat +  Fdm.CdsStFg1GetDtlAM2FG1.AsFloat;

  ShowValue();
end;

procedure TfrmPopupFg1.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProductByItc.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกอุปกรณ์ตกแต่ง/ของแถม','0'); // itc = 0 is ของแถม

    OnSelectData := ProductByItcSelected;
    ShowModal();
  end;

end;

procedure TfrmPopupFg1.Init(DM : TDSSetupDM);
begin
   Fdm := dm;

   dsgridDtl.DataSet := Fdm.CdsStFg1GetDtl;

  if (fdm.CdsStFg1GetDtl.State in [dsInsert]) then
  begin

     btnConfirm.Visible := True;
     ShowValue();
  end
  else if (fdm.CdsStFg1GetDtl.State in [dsEdit]) then
  begin
     SEQFG1.ReadOnly := True;
     BtnSelectProduct.Enabled := False;
     btnConfirm.Visible := True;
     ShowValue();
  end
  else
  begin
     btnConfirm.Visible := False;
      BtnSelectProduct.Enabled := False;
     ShowValue();

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
