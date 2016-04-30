unit StMtRegDataForm;

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
  TfrmStMtRegData = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    CmbCno: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    AMTREG: TUniEdit;
    OTHREG: TUniEdit;
    SUMREG: TUniEdit;
    UniLabel6: TUniLabel;
    NARREG: TUniDBEdit;
    UniLabel3: TUniLabel;
    DbITNREG: TUniDBEdit;
    BtnSelectProduct: TUniButton;
    DbTNMPM1: TUniDBEdit;
    UniLabel24: TUniLabel;
    CmbSTS: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    CmbBRN: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    CMPREG: TUniDBEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure OTHREGExit(Sender: TObject);
    procedure AMTREGExit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStMtRegData: TfrmStMtRegData;

implementation

{$R *.dfm}

uses PopupArForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStMtRegData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStMtRegData.AMTREGExit(Sender: TObject);
begin
  checkCur(AMTREG,Fdm.CdsStRegGet);

  if fdm.CdsStRegGet.State in [dsInsert, dsEdit] then
  begin
    Fdm.CdsStRegGetSUMReg.AsFloat :=  Fdm.CdsStRegGetOTHREG.AsFloat + Fdm.CdsStRegGetAMTREG.AsFloat;
    SUMREG.Text := FormatFloat('#,##0.00',Fdm.CdsStRegGetSUMREG.AsFloat);
  end;

end;

procedure TfrmStMtRegData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStRegGet.State in [dsInsert,dsEdit] then
    Fdm.CdsStRegGet.Cancel();
  inherited;

end;

procedure TfrmStMtRegData.btnConfirmClick(Sender: TObject);
var ch  : Boolean;
  md ,CNOTNM: String;
  seq : integer;
begin
  if Fdm.CdsStRegGet.State in [dsInsert] then
  begin
    md := 'I' ;
    seq := -1;
  end
  else
  begin
    md := 'E';
    seq :=  Fdm.CdsStRegGetSEQReg.AsInteger
  end;

  CNOTNM := Fdm.CdsStRegGetCNOReg.AsString + Fdm.CdsStRegGetITNREG.AsString;

  ch:= FDM.StRegInsUpd(
        Fdm.CdsStRegGetSTSReg.AsString,
        Fdm.CdsStRegGetCMPREG.AsString,
        Fdm.CdsStRegGetBRNREG.AsString,
        Fdm.CdsStRegGetCNOReg.AsString,
        seq,
        Fdm.CdsStRegGetITNREG.AsString,
        Fdm.CdsStRegGetAMTREG.AsFloat,
        Fdm.CdsStRegGetOTHREG.AsFloat,
        Fdm.CdsStRegGetNARREG.AsString,
        md
      );

  if ch  then
  begin

    ShowMessage('บันทึกเรียบร้อยแล้ว');
    fdm.CdsStRegGet.Close();
    fdm.CdsStRegGet.Open();
    fdm.CdsStRegGet.Locate('CNOTNM',CNOTNM,[]);
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStMtRegData.ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsStRegGetITNREG.AsString := ITNPM1;
  Fdm.CdsStRegGetTNMPM1.AsString := TNMPM1;

end;

procedure TfrmStMtRegData.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกลูกค้า');

    OnSelectData := ProductSelected;
    ShowModal();
  end;
end;

procedure TfrmStMtRegData.ShowEdtAmt();
begin
   AMTREG.Text := FormatFloat('#,##0.00',Fdm.CdsStRegGetAMTREG.AsFloat);
   OTHREG.Text := FormatFloat('#,##0.00',Fdm.CdsStRegGetOTHREG.AsFloat);
   SUMREG.Text := FormatFloat('#,##0.00',Fdm.CdsStRegGetSUMREG.AsFloat);
end;

procedure TfrmStMtRegData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStRegGet;

   CmbSTS.ListSource := Fdm.GetDSC('STS');
   CmbCno.ListSource := Fdm.GetDSC('IF');
   CmbBRN.ListSource := Fdm.GetDSC('BRN');

  if (fdm.CdsStRegGet.State in [dsInsert]) then
  begin
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStRegGet.State in [dsEdit]) then
  begin
     CMPREG.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     CmbCno.ReadOnly := True;

     btnConfirm.Visible := True;
     ShowEdtAmt();
  end
  else
  begin
     CMPREG.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     CmbCno.ReadOnly := True;
     BtnSelectProduct.Enabled := False;
     btnConfirm.Visible := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


procedure TfrmStMtRegData.OTHREGExit(Sender: TObject);
begin
  checkCur(OTHREG,Fdm.CdsStRegGet);

  if fdm.CdsStRegGet.State in [dsInsert, dsEdit] then
  begin
    Fdm.CdsStRegGetSUMReg.AsFloat :=  Fdm.CdsStRegGetOTHREG.AsFloat + Fdm.CdsStRegGetAMTREG.AsFloat;
    SUMREG.Text := FormatFloat('#,##0.00',Fdm.CdsStRegGetSUMREG.AsFloat);
  end;

end;

end.
