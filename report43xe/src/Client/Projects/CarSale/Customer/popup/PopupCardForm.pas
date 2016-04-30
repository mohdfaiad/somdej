unit PopupCardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars,DSCarsaleIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask;

type
  TfrmPopupCard = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel20: TUniLabel;
    CDCCSI: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    CDNCSI: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    ISDCSI: TUniDateTimePicker;
    EPDCSI: TUniDateTimePicker;
    ISWCSI: TUniDBEdit;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure ISDCSIChange(Sender: TObject);
    procedure EPDCSIChange(Sender: TObject);

  private
    Fdm : TDSCarsaleDM;
    _StrList : TStringList;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowCard();
  public
    procedure Init(DM : TDSCarsaleDM;StrList : TStringList);
  end;

var
  frmPopupCard: TfrmPopupCard;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupCard.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupCard.EPDCSIChange(Sender: TObject);
begin
  if Trim(EPDCSI.Text) = '' then
    Fdm.CdsMtCsmGetCardEPDCSI.AsDateTime := 0
  else
   Fdm.CdsMtCsmGetCardEPDCSI.AsDateTime :=
   Fdm.FSBuddhistDateToDate(EPDCSI.DateTime);

end;

procedure TfrmPopupCard.ShowCard();
begin

  ISDCSI.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtCsmGetCardISDCSI.AsDateTime);
  EPDCSI.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtCsmGetCardEPDCSI.AsDateTime);

end;

procedure TfrmPopupCard.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsMtCsmGetCard.State in [dsInsert,dsEdit] then
    Fdm.CdsMtCsmGetCard.Cancel();
  inherited;

end;

procedure TfrmPopupCard.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
var ch : Boolean;
   CNOCDE: String;
   brn : String;
begin
  ch := False;
  if fdm.CdsMtCsmGetCard.State in [dsInsert] then
  begin
    cnt := _StrList.Count - 1;
    for I := 0 to cnt do
    begin
      if _StrList[i] = fdm.CdsMtCsmGetCardCDCCSI.AsString then
      begin
        ch := True;
        Break;
      end;
    end;
  end;

  if ch then
  begin
    ShowMessage('ประเภทบัตรมีแล้ว');

  end
  else
  begin
    fdm.CdsMtCsmGetCard.Post();
    Close;
  end;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsMtCsmGetCardCNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsMtCsmGetCard.Close;
//    FDM.CdsMtCsmGetCard.Open;
//    Fdm.CdsMtCsmGetCard.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupCard.Init(DM : TDSCarsaleDM;StrList : TStringList);
var i : integer;
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsMtCsmGetCard;
   CDCCSI.ListSource := Fdm.GetDSC('CR');

  if (fdm.CdsMtCsmGetCard.State in [dsInsert]) then
  begin
     _StrList := TStringList.Create;

     for I := 0 to StrList.Count - 1 do
     begin
       _StrList.Add(StrList[i]);
     end;

     btnConfirm.Visible := True;
     ShowCard();
  end
  else if (fdm.CdsMtCsmGetCard.State in [dsEdit]) then
  begin
     CDCCSI.ReadOnly := True;
     btnConfirm.Visible := True;
     ShowCard();
  end
  else
  begin
     btnConfirm.Visible := False;

     ShowCard();

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

procedure TfrmPopupCard.ISDCSIChange(Sender: TObject);
begin
  if Trim(ISDCSI.Text) = '' then
    Fdm.CdsMtCsmGetCardISDCSI.AsDateTime := 0
  else
   Fdm.CdsMtCsmGetCardISDCSI.AsDateTime :=
   Fdm.FSBuddhistDateToDate(ISDCSI.DateTime);

end;

end.
