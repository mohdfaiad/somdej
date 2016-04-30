unit PopupAccessoryForm;

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
  TfrmPopupAccessory = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel6: TUniLabel;
    UniLabel1: TUniLabel;
    SEQOT6: TUniDBEdit;
    UniLabel5: TUniLabel;
    FSROT6: TUniDBEdit;
    BtnSelectProduct: TUniButton;
    TNMPM1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    AM1OT6: TUniEdit;
    AM2OT6: TUniEdit;
    FU2OT6: TUniEdit;
    FU1OT6: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel9: TUniLabel;
    FQ1OT6: TUniEdit;
    FQ2OT6: TUniEdit;
    UniLabel7: TUniLabel;
    AMTOT6: TUniEdit;
    TDSOT6: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    FPAOT6: TUniEdit;
    UniLabel11: TUniLabel;
    UniLabel14: TUniLabel;
    NETOT6: TUniEdit;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure TDSOT6CloseUp(Sender: TObject);
    procedure FPAOT6Exit(Sender: TObject);
    procedure FPAOT6KeyPress(Sender: TObject; var Key: Char);

  private
    FUserSession: TUniMainModule;
    FSetupdm : TDSSetupDM;

    Fdm : TDSCarsaleDM;
    _StrList : TStringList;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowValue();
    procedure ProductByItcSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,UP2PM1,FAMPM1: DOUBLE);
  public
    procedure Init(DM : TDSCarsaleDM;StrList : TStringList);
  end;

var
  frmPopupAccessory: TfrmPopupAccessory;

implementation

{$R *.dfm}

uses PopupProductByItcForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupAccessory.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupAccessory.FPAOT6Exit(Sender: TObject);
begin
  checkCur(FPAOT6, FDM.CdsMtAppGetAccessoryMs);
  TDSOT6CloseUp(TDSOT6);
  ShowValue();
end;

procedure TfrmPopupAccessory.FPAOT6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    FPAOT6Exit(FPAOT6);
  end;

end;

procedure TfrmPopupAccessory.ShowValue();
begin

  FU1OT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsFU1OT6.AsFloat);
  FU2OT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsFU2OT6.AsFloat);

  FQ1OT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsFQ1OT6.AsFloat);
  FQ2OT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsFQ2OT6.AsFloat);

  AM1OT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsAM1OT6.AsFloat);
  AM2OT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsAM2OT6.AsFloat);

  AMTOT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsAMMOT6.AsFloat);
  FPAOT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsFPAOT6.AsFloat);
  NETOT6.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetAccessoryMsNEEOT6.AsFloat);

end;

procedure TfrmPopupAccessory.TDSOT6CloseUp(Sender: TObject);
begin
    FDM.CdsMtAppGetAccessoryMsFP1OT6.AsFloat := 0.00;
    FDM.CdsMtAppGetAccessoryMsFP2OT6.AsFloat := 0.00;
    FDM.CdsMtAppGetAccessoryMsFP3OT6.AsFloat := 0.00;
    FDM.CdsMtAppGetAccessoryMsFP4OT6.AsFloat := 0.00;

    if (FDM.CdsMtAppGetAccessoryMsTDSOT6.AsString = '1') then
      FDM.CdsMtAppGetAccessoryMsFP1OT6.AsFloat := FDM.CdsMtAppGetAccessoryMsFPAOT6.AsFloat
    else if (FDM.CdsMtAppGetAccessoryMsTDSOT6.AsString = '2') then
      FDM.CdsMtAppGetAccessoryMsFP2OT6.AsFloat := FDM.CdsMtAppGetAccessoryMsFPAOT6.AsFloat
    else if (FDM.CdsMtAppGetAccessoryMsTDSOT6.AsString = '3') then
      FDM.CdsMtAppGetAccessoryMsFP3OT6.AsFloat := FDM.CdsMtAppGetAccessoryMsFPAOT6.AsFloat
    else if (FDM.CdsMtAppGetAccessoryMsTDSOT6.AsString = '4') then
      FDM.CdsMtAppGetAccessoryMsFP4OT6.AsFloat := FDM.CdsMtAppGetAccessoryMsFPAOT6.AsFloat;
end;

procedure TfrmPopupAccessory.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsMtAppGetAccessoryMs.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetAccessoryMs.Cancel();
  inherited;

end;

procedure TfrmPopupAccessory.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
var ch : Boolean;
   CNOCDE: String;
   brn : String;
begin

  ch := False;
  if fdm.CdsMtAppGetAccessoryMs.State in [dsInsert] then
  begin
    cnt := _StrList.Count - 1;
    for I := 0 to cnt do
    begin
      if _StrList[i] = fdm.CdsMtAppGetAccessoryMsFSROT6.AsString then
      begin
        ch := True;
        Break;
      end;
    end;
  end;

  if ch then
  begin
    ShowMessage('รหัสรายการนี้มีแล้ว');

  end
  else
  begin
    fdm.CdsMtAppGetAccessoryMs.Post();
    Close;
  end;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsMtAppGetAccessoryMsCNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsMtAppGetAccessoryMs.Close;
//    FDM.CdsMtAppGetAccessoryMs.Open;
//    Fdm.CdsMtAppGetAccessoryMs.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupAccessory.ProductByItcSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,UP2PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsMtAppGetAccessoryMsFSROT6.AsString := ITNPM1;
  Fdm.CdsMtAppGetAccessoryMsTNMPM1.AsString := TNMPM1;

  Fdm.CdsMtAppGetAccessoryMsFU1OT6.AsFloat := UP1PM1;
  Fdm.CdsMtAppGetAccessoryMsFU2OT6.AsFloat := UP2PM1;

  ShowValue();
end;

procedure TfrmPopupAccessory.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProductByItc.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกอุปกรณ์ตกแต่ง/ของแถม','0'); // itc = 0 is ของแถม

    OnSelectData := ProductByItcSelected;
    ShowModal();
  end;

end;

procedure TfrmPopupAccessory.Init(DM : TDSCarsaleDM;StrList : TStringList);
var i : integer;
begin
    FUserSession :=  UniMainModule();
    FSetupdm:= FUsersession.DSSetupDM;

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsMtAppGetAccessoryMs;
   TDSOT6.ListSource := Fdm.GetDSC('TDS');

  if (fdm.CdsMtAppGetAccessoryMs.State in [dsInsert]) then
  begin
     _StrList := TStringList.Create;

     for I := 0 to StrList.Count - 1 do
     begin
       _StrList.Add(StrList[i]);
     end;

     btnConfirm.Visible := True;
     ShowValue();
  end
  else if (fdm.CdsMtAppGetAccessoryMs.State in [dsEdit]) then
  begin
     FSROT6.ReadOnly := True;
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
