unit PopupStDtlCodeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  {$IFDEF OBSS} MainModuleEx {$ELSE} MainModuleEx {$ENDIF},
  uniGUIForm,  uniGUIVars,DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask;

type
  TfrmPopupStDtlCode = class(TMainDataForm)
    LbCreditLineNo: TUniLabel;
    DbCnoCde: TUniDBEdit;
    UniLabel1: TUniLabel;
    DbTnmcde: TUniDBEdit;
    UniLabel2: TUniLabel;
    DbEnmcde: TUniDBEdit;
    UniLabel3: TUniLabel;
    DbAbbcde: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    DbDescde: TUniDBEdit;
    dsgridDtl: TDataSource;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    DbAc1cde: TUniDBEdit;
    UniLabel10: TUniLabel;
    DbAc2cde: TUniDBEdit;
    UniLabel11: TUniLabel;
    EdtVA1CDE: TUniEdit;
    EdtVA2CDE: TUniEdit;
    EdtDT1CDE: TUniDateTimePicker;
    EdtDT2CDE: TUniDateTimePicker;
    CmbSTS: TUniDBLookupComboBox;
    imgLogo: TUniImage;
    UniImage1: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure EdtDT1CDEChange(Sender: TObject);
    procedure EdtDT2CDEChange(Sender: TObject);
    procedure EdtVA1CDEExit(Sender: TObject);
    procedure EdtVA2CDEExit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
  public
    procedure Init(DM : TDSSetupDM);
  end;

var
  frmPopupStDtlCode: TfrmPopupStDtlCode;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupStDtlCode.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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


procedure TfrmPopupStDtlCode.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStCdeGetDtl.State in [dsInsert,dsEdit] then
    Fdm.CdsStCdeGetDtl.Cancel();
  inherited;

end;

procedure TfrmPopupStDtlCode.btnConfirmClick(Sender: TObject);
var ch : Boolean;
  CNOCDE: String;
begin
  if fdm.CdsStCdeGetDtlCNOCDE.IsNull then
  begin
    ShowMessage('รหัสย่อยเป็นค่าว่าง กรุณากรอกรหัสย่อย');
    exit;
  end
  else   if fdm.CdsStCdeGetDtlTNMCDE.IsNull then
  begin
    ShowMessage('คำอธิบายภาษาไทยเป็นค่าว่าง กรุณากรอกคำอธิบายภาษาไทย');
    exit;
  end;

  if Fdm.CdsStCdeGetDtlAC1CDE.AsString <> '' then
  begin
    if Length(Fdm.CdsStCdeGetDtlAC1CDE.AsString) < 6 then
    begin
      Showmessage('บัญชี 1  ต้องมีไม่น้อยกว่า 6 หลัก');
      exit;
    end;
  end;

  if Fdm.CdsStCdeGetDtlAC2CDE.AsString <> '' then
  begin
    if Length(Fdm.CdsStCdeGetDtlAC2CDE.AsString) < 6 then
    begin
      Showmessage('บัญชี 2  ต้องมีไม่น้อยกว่า 6 หลัก');
      exit;
    end;
  end;


  {
  ch:= FDM.StCidInsUpd(
      Fdm.CdsStCdeGetSTSCDE.AsString,
      '1',
      Fdm.CdsStCdeGetCIDCDE.AsString,
      Fdm.CdsStCdeGetDtlCNOCDE.AsString,
      Fdm.CdsStCdeGetDtlENMCDE.AsString,
      Fdm.CdsStCdeGetDtlTNMCDE.AsString,
      Fdm.CdsStCdeGetDtlVA1CDE.AsFloat,
      Fdm.CdsStCdeGetDtlVA2CDE.AsFloat,
      Fdm.CdsStCdeGetDtlDT1CDE.AsFloat,
      Fdm.CdsStCdeGetDtlDT2CDE.AsFloat,
      Fdm.CdsStCdeGetDtlAC1CDE.AsString,
      Fdm.CdsStCdeGetDtlAC2CDE.AsString,
      Fdm.CdsStCdeGetDtlDESCDE.AsString,
      Fdm.CdsStCdeGetDtlABBCDE.AsString,
      'admin');

      }

  if ch then
  begin
//    CNOCDE :=  Fdm.CdsStCdeGetDtlCNOCDE.AsString;
    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsStCdeGetDtl.Close;
//    FDM.CdsStCdeGetDtl.Open;
//    Fdm.CdsStCdeGetDtl.Locate('CNOCDE',CNOCDE,[]);
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupStDtlCode.EdtDT2CDEChange(Sender: TObject);
begin
  if Trim(EdtDT2CDE.Text) = '' then
    Fdm.CdsStCdeGetDtlDT2CDE.AsDateTime := 0
  else
   Fdm.CdsStCdeGetDtlDT2CDE.AsDateTime :=
   Fdm.FSBuddhistDateToDate(EdtDT2CDE.DateTime);


end;

procedure TfrmPopupStDtlCode.EdtVA1CDEExit(Sender: TObject);
begin
  checkCur(EdtVA1CDE,Fdm.CdsStCdeGetDtl);

end;

procedure TfrmPopupStDtlCode.EdtVA2CDEExit(Sender: TObject);
begin
  checkCur(EdtVA2CDE,Fdm.CdsStCdeGetDtl);

end;

procedure TfrmPopupStDtlCode.EdtDT1CDEChange(Sender: TObject);
begin
  if Trim(EdtDT1CDE.Text) = '' then
    Fdm.CdsStCdeGetDtlDT1CDE.AsDateTime := 0
  else
   Fdm.CdsStCdeGetDtlDT1CDE.AsDateTime :=
   Fdm.FSBuddhistDateToDate(EdtDT1CDE.DateTime);

end;

procedure TfrmPopupStDtlCode.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgriddtl.DataSet := Fdm.CdsStCdeGetdtl;
   CmbSTS.ListSource := Fdm.GetDSC('STS');

  if (fdm.CdsStCdeGetDtl.State in [dsInsert]) then
  begin
     DbCnoCde.ReadOnly := False;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStCdeGetDtl.State in [dsEdit]) then
  begin
     DbCnoCde.ReadOnly := True;
     btnConfirm.Visible := True;
     EdtVA1CDE.Text := FormatFloat('#,##0.00',Fdm.CdsStCdeGetDtlVA1CDE.AsFloat);
     EdtVA2CDE.Text := FormatFloat('#,##0.00',Fdm.CdsStCdeGetDtlVA2CDE.AsFloat);
     EdtDT1CDE.Text := DM.FSBuddhistDateToStr(fDM.CdsStCdeGetDtlDT1CDE.AsDateTime);
     EdtDT2CDE.Text := DM.FSBuddhistDateToStr(fDM.CdsStCdeGetDtlDT2CDE.AsDateTime);
  end
  else
  begin
     DbCnoCde.ReadOnly := True ;
     btnConfirm.Visible := False;
     EdtVA1CDE.Text := FormatFloat('#,##0.00',Fdm.CdsStCdeGetDtlVA1CDE.AsFloat);
     EdtVA2CDE.Text := FormatFloat('#,##0.00',Fdm.CdsStCdeGetDtlVA2CDE.AsFloat);
     EdtDT1CDE.Text := DM.FSBuddhistDateToStr(fDM.CdsStCdeGetDtlDT1CDE.AsDateTime);
     EdtDT2CDE.Text := DM.FSBuddhistDateToStr(fDM.CdsStCdeGetDtlDT2CDE.AsDateTime);
     RSetReadOnly();
  end;

  RSetColorReadOnly();
end;

end.
