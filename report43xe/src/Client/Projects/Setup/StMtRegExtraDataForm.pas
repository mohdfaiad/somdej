unit StMtRegExtraDataForm;

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
  TfrmStMtRegExtraData = class(TMainDataForm)
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
    UniLabel1: TUniLabel;
    CmbBRN: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    CMPREG: TUniDBEdit;
    dbgDataList: TUniDBGrid;
    DataProduct: TDataSource;
    BtnOk: TUniButton;
    UniLabel3: TUniLabel;
    CmbMD: TUniComboBox;
    NARREG: TUniDBEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure CmbCnoCloseUp(Sender: TObject);
    procedure OTHREGExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure AMTREGExit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStMtRegExtraData: TfrmStMtRegExtraData;

implementation

{$R *.dfm}

uses PopupArForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStMtRegExtraData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStMtRegExtraData.CmbCnoCloseUp(Sender: TObject);
var md : String;
begin
   if CmbMD.ItemIndex = 0 then
     md := 'I'
   else
     md := 'E';

    FDM.CdsStRegGetPm1.Close;
    IF not(FDM.StRegGetPm1(Fdm.CdsStRegGetExtraCNOREG.AsString,md)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStRegGetPm1.Open;

end;

procedure TfrmStMtRegExtraData.AMTREGExit(Sender: TObject);
begin
  checkCur(AMTREG,Fdm.CdsStRegGetExtra);

  if fdm.CdsStRegGetExtra.State in [dsInsert, dsEdit] then
  begin
    Fdm.CdsStRegGetExtraSUMReg.AsFloat :=  Fdm.CdsStRegGetExtraOTHREG.AsFloat + Fdm.CdsStRegGetExtraAMTREG.AsFloat;
    SUMREG.Text := FormatFloat('#,##0.00',Fdm.CdsStRegGetExtraSUMREG.AsFloat);
  end;

end;

procedure TfrmStMtRegExtraData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStRegGetExtra.State in [dsInsert,dsEdit] then
    Fdm.CdsStRegGetExtra.Cancel();
  inherited;

end;

procedure TfrmStMtRegExtraData.btnConfirmClick(Sender: TObject);
var ch  : Boolean;
  md ,CNOREG: String;
begin
   if CmbMD.ItemIndex = 0 then
     md := 'I'
   else
     md := 'E';

  CNOREG :=  Fdm.CdsStRegGetExtraCNOREG.AsString;

  Fdm.CdsStRegGetPm1.First();

  while not Fdm.CdsStRegGetPm1.Eof do
  begin

     ch:= FDM.StRegInsUpd(
        'A',
        Fdm.CdsStRegGetExtraCMPREG.AsString,
        Fdm.CdsStRegGetExtraBRNREG.AsString,
        Fdm.CdsStRegGetExtraCNOReg.AsString,
        Fdm.CdsStRegGetPm1SEQREG.AsInteger,
        Fdm.CdsStRegGetPm1ITNREG.AsString,
        Fdm.CdsStRegGetPm1AMTREG.AsFloat,
        Fdm.CdsStRegGetPm1OTHrEG.AsFloat,
        Fdm.CdsStRegGetPm1NARREG.AsString,
        md );

    Fdm.CdsStRegGetPm1.next();
  end;



  if ch  then
  begin

    ShowMessage('บันทึกเรียบร้อยแล้ว');
    fdm.CdsStRegGet.Close();
    fdm.CdsStRegGet.Open();
    fdm.CdsStRegGet.Locate('CNOREG',CNOREG,[]);
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStMtRegExtraData.BtnOkClick(Sender: TObject);
begin
  Fdm.CdsStRegGetPm1.First();

  while not Fdm.CdsStRegGetPm1.Eof do
  begin

    Fdm.CdsStRegGetPm1.Edit();
    FDM.CdsStRegGetPm1STSREG.AsString := 'A';
    Fdm.CdsStRegGetPm1AMTREG.AsFloat := Fdm.CdsStRegGetExtraAMTREG.AsFloat;
    Fdm.CdsStRegGetPm1OTHREG.AsFloat := Fdm.CdsStRegGetExtraOTHREG.AsFloat;
    Fdm.CdsStRegGetPm1SUMREG.AsFloat := Fdm.CdsStRegGetExtraSUMREG.AsFloat;
    Fdm.CdsStRegGetPm1NARREG.AsString := Fdm.CdsStRegGetExtraNARREG.AsString;

    Fdm.CdsStRegGetPm1.Post();

    Fdm.CdsStRegGetPm1.next();
  end;

end;

procedure TfrmStMtRegExtraData.ShowEdtAmt();
begin

end;

procedure TfrmStMtRegExtraData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStRegGetExtra;
   DataProduct.DataSet := Fdm.CdsStRegGetPm1;

   CmbCno.ListSource := Fdm.GetDSC('IF');
   CmbBRN.ListSource := Fdm.GetDSC('BRN');

  if (fdm.CdsStRegGetExtra.State in [dsInsert]) then
  begin
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStRegGetExtra.State in [dsEdit]) then
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

     btnConfirm.Visible := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


procedure TfrmStMtRegExtraData.OTHREGExit(Sender: TObject);
begin
  checkCur(OTHREG,Fdm.CdsStRegGetExtra);

  if fdm.CdsStRegGetExtra.State in [dsInsert, dsEdit] then
  begin
    Fdm.CdsStRegGetExtraSUMReg.AsFloat :=  Fdm.CdsStRegGetExtraOTHREG.AsFloat + Fdm.CdsStRegGetExtraAMTREG.AsFloat;
    SUMREG.Text := FormatFloat('#,##0.00',Fdm.CdsStRegGetExtraSUMREG.AsFloat);
  end;
end;

end.
