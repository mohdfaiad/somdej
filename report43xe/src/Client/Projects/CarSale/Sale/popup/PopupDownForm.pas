unit PopupDownForm;

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
  TfrmPopupDown = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel20: TUniLabel;
    PTPOM7: TUniDBLookupComboBox;
    NOTOM7LB: TUniLabel;
    PATOM7: TUniEdit;
    UniLabel1: TUniLabel;
    SEQOM7: TUniDBEdit;
    NOTOM7: TUniDBEdit;
    UniLabel4: TUniLabel;
    PPDOM7: TUniDBEdit;
    PDTOM7: TUniDateTimePicker;
    UniLabel13: TUniLabel;
    UniLabel2: TUniLabel;
    NAROM7: TUniDBEdit;
    UniLabel3: TUniLabel;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure PATOM7Exit(Sender: TObject);
    procedure PATOM7KeyPress(Sender: TObject; var Key: Char);
    procedure PTPOM7CloseUp(Sender: TObject);
    procedure PDTOM7Change(Sender: TObject);

  private
    Fdm : TDSCarsaleDM;
    _StrList : TStringList;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowCard();
  public
    procedure Init(DM : TDSCarsaleDM;StrList : TStringList);
  end;

var
  frmPopupDown: TfrmPopupDown;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupDown.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupDown.ShowCard();
begin

  PATOM7.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetDownPATOM7.AsFloat);

end;

procedure TfrmPopupDown.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsMtAppGetDown.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetDown.Cancel();
  inherited;

end;

procedure TfrmPopupDown.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
var ch : Boolean;
   CNOCDE: String;
   brn : String;
begin

  ch := False;
  if fdm.CdsMtAppGetDown.State in [dsInsert] then
  begin
    cnt := _StrList.Count - 1;
    for I := 0 to cnt do
    begin
      if _StrList[i] = fdm.CdsMtAppGetDownPPDOM7.AsString then
      begin
        ch := True;
        Break;
      end;
    end;
  end;

  if ch then
  begin
    ShowMessage('ประเภทรายการนี้มีแล้ว');

  end
  else
  begin
    Fdm.CdsMtAppGetDownTNMPTP.AsString := PTPOM7.Text;
    fdm.CdsMtAppGetDown.Post();
    Close;
  end;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsMtAppGetDownCNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsMtAppGetDown.Close;
//    FDM.CdsMtAppGetDown.Open;
//    Fdm.CdsMtAppGetDown.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupDown.Init(DM : TDSCarsaleDM;StrList : TStringList);
var i : integer;
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsMtAppGetDown;
   PTPOM7.ListSource := Fdm.GetDSC('PTP');

  if (fdm.CdsMtAppGetDown.State in [dsInsert]) then
  begin
     _StrList := TStringList.Create;

     for I := 0 to StrList.Count - 1 do
     begin
       _StrList.Add(StrList[i]);
     end;

     btnConfirm.Visible := True;
     ShowCard();
  end
  else if (fdm.CdsMtAppGetDown.State in [dsEdit]) then
  begin
     PPDOM7.ReadOnly := True;
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

procedure TfrmPopupDown.PATOM7Exit(Sender: TObject);
begin
  checkCur(PATOM7,fdm.CdsMtAppGetDown);

end;

procedure TfrmPopupDown.PATOM7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    PATOM7Exit(PATOM7);
  end;

end;

procedure TfrmPopupDown.PDTOM7Change(Sender: TObject);
begin
  if Trim(PDTOM7.Text) = '' then
    Fdm.CdsMtAppGetDownPDTOM7.AsDateTime := 0
  else
   Fdm.CdsMtAppGetDownPDTOM7.AsDateTime :=
   Fdm.FSBuddhistDateToDate(PDTOM7.DateTime);


end;

procedure TfrmPopupDown.PTPOM7CloseUp(Sender: TObject);
var Ch : Boolean;
begin
  FDM.CdsMtAppGetDownTNMPTP.AsString := PTPOM7.Text;
  Ch := (Fdm.CdsMtAppGetDownPTPOM7.AsString = 'CH');
  NOTOM7.Visible := ch;
  NOTOM7LB.Visible := ch;
end;

end.
