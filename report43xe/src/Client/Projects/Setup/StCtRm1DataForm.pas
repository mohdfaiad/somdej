unit StCtRm1DataForm;

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
  TfrmStCtRm1Data = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel24: TUniLabel;
    CmbSTS: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    UniLabel5: TUniLabel;
    RGNRM1: TUniDBEdit;
    CmbBRN: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel3: TUniLabel;
    CmbPRV: TUniDBLookupComboBox;
    UniLabel9: TUniLabel;
    CMPRM1: TUniDBEdit;
    UniLabel10: TUniLabel;
    REGRM1: TUniDBEdit;
    PDTRM1: TUniDateTimePicker;
    PATRM1: TUniEdit;
    OATRM1: TUniEdit;
    SUMRM1: TUniEdit;
    UniLabel6: TUniLabel;
    NARRM1: TUniDBEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure PDTRM1Change(Sender: TObject);
    procedure PATRM1Exit(Sender: TObject);
    procedure OATRM1Exit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmSCtRm1Data: TfrmStCtRm1Data;

implementation

{$R *.dfm}

uses PopupArForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStCtRm1Data.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStCtRm1Data.PATRM1Exit(Sender: TObject);
begin
  checkCur(PATRM1,Fdm.CdsStRm1Get);

  if fdm.CdsStRm1Get.State in [dsInsert, dsEdit] then
  begin
    Fdm.CdsStRm1GetSUMRM1.AsFloat :=  Fdm.CdsStRm1GetOATRM1.AsFloat + Fdm.CdsStRm1GetPATRM1.AsFloat;
    SUMRM1.Text := FormatFloat('#,##0.00',Fdm.CdsStRm1GetSUMRM1.AsFloat);
  end;

end;

procedure TfrmStCtRm1Data.OATRM1Exit(Sender: TObject);
begin
  checkCur(OATRM1,Fdm.CdsStRm1Get);

  if fdm.CdsStRm1Get.State in [dsInsert, dsEdit] then
  begin
    Fdm.CdsStRm1GetSUMRM1.AsFloat :=  Fdm.CdsStRm1GetOATRM1.AsFloat + Fdm.CdsStRm1GetPATRM1.AsFloat;
    SUMRM1.Text := FormatFloat('#,##0.00',Fdm.CdsStRm1GetSUMRM1.AsFloat);
  end;

end;

procedure TfrmStCtRm1Data.PDTRM1Change(Sender: TObject);
begin
  if Trim(PDTRM1.Text) = '' then
    Fdm.CdsStRm1GetPDTRM1.AsDateTime := 0
  else
   Fdm.CdsStRm1GetPDTRM1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(PDTRM1.DateTime);


end;

procedure TfrmStCtRm1Data.ShowEdtAmt();
begin
   PDTRM1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStRm1GetPDTRM1.AsDateTime);

   PATRM1.Text := FormatFloat('#,##0.00',Fdm.CdsStRm1GetPATRM1.AsFloat);
   OATRM1.Text := FormatFloat('#,##0.00',Fdm.CdsStRm1GetOATRM1.AsFloat);
   SUMRM1.Text := FormatFloat('#,##0.00',Fdm.CdsStRm1GetSUMRM1.AsFloat);

end;

procedure TfrmStCtRm1Data.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStRm1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStRm1Get.Cancel();
  inherited;

end;

procedure TfrmStCtRm1Data.btnConfirmClick(Sender: TObject);
var ch  : Boolean;
  md ,Cno , Rno :String;
begin
  if Fdm.CdsStRm1Get.State in [dsInsert] then
  begin
    md := 'I' ;
  end
  else
  begin
    md := 'E';
  end;

  Rno := Fdm.CdsStRm1GetREGRM1.AsString + '-' + Fdm.CdsStRm1GetRGNRM1.AsString;

  ch:= FDM.StRm1InsUpd(
        Fdm.CdsStRm1GetSTSRm1.AsString,
        Fdm.CdsStRm1GetCMPRm1.AsString,
        Fdm.CdsStRm1GetBRNRm1.AsString,
        Fdm.CdsStRm1GetREGRM1.AsString,
        Fdm.CdsStRm1GetRGNRM1.AsInteger,
        Fdm.CdsStRm1GetPRVRM1.AsString,
        Fdm.CdsStRm1GetPDTRM1.AsFloat,
        Fdm.CdsStRm1GetPATRM1.AsFloat,
        Fdm.CdsStRm1GetOATRM1.AsFloat,
        Fdm.CdsStRm1GetAVLRM1.AsString,
        Fdm.CdsStRm1GetNARRM1.AsString,
        md
      );

  if ch  then
  begin

    ShowMessage('บันทึกเรียบร้อยแล้ว');
    fdm.CdsStRm1Get.Close();
    fdm.CdsStRm1Get.Open();
    fdm.CdsStRm1Get.Locate('RNORM1',Rno,[]);
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStCtRm1Data.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStRm1Get;

   CmbSTS.ListSource := Fdm.GetDSC('STS');
   CmbBRN.ListSource := Fdm.GetDSC('BRN');
   CmbPRV.ListSource := Fdm.GetDSC('AC');

  if (fdm.CdsStRm1Get.State in [dsInsert]) then
  begin
     btnConfirm.Visible := True;

     Fdm.CdsStRm1GetPDTRM1.AsDateTime :=
     Fdm.FSBuddhistDateToDate(PDTRM1.DateTime);

  end
  else if (fdm.CdsStRm1Get.State in [dsEdit]) then
  begin
     CMPRM1.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     REGRM1.ReadOnly := True;
     RGNRM1.ReadOnly := True;
     CmbPRV.ReadOnly := True;

     ShowEdtAmt();
     btnConfirm.Visible := True;

  end
  else
  begin
     CMPRM1.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     REGRM1.ReadOnly := True;
     RGNRM1.ReadOnly := True;
     CmbPRV.ReadOnly := True;

     btnConfirm.Visible := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


end.
