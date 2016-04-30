unit PopupExpForm;

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
  TfrmPopupExp = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel20: TUniLabel;
    CDCEXP: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniLabel13: TUniLabel;
    AMTEXP: TUniEdit;
    TP1EXP: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    TP2EXP: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    SEQEXP: TUniDBEdit;
    UniLabel2: TUniLabel;
    DCREXP: TUniDBEdit;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure AMTEXPExit(Sender: TObject);
    procedure AMTEXPKeyPress(Sender: TObject; var Key: Char);
    procedure CDCEXPCloseUp(Sender: TObject);
    procedure TP1EXPCloseUp(Sender: TObject);
    procedure TP2EXPCloseUp(Sender: TObject);

  private
    Fdm : TDSCarsaleDM;
    _StrList : TStringList;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowCard();
  public
    procedure Init(DM : TDSCarsaleDM;StrList : TStringList);
  end;

var
  frmPopupExp: TfrmPopupExp;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupExp.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupExp.ShowCard();
begin

  AMTEXP.Text := FormatCurr('#,##0.00', Fdm.CdsMtAppGetEXPAMTEXP.AsFloat);

end;

procedure TfrmPopupExp.TP1EXPCloseUp(Sender: TObject);
begin
  FDM.CdsMtAppGetEXPTNMTP1.AsString := TP1EXP.Text;

end;

procedure TfrmPopupExp.TP2EXPCloseUp(Sender: TObject);
begin
  FDM.CdsMtAppGetEXPTNMTP2.AsString := TP2EXP.Text;

end;

procedure TfrmPopupExp.AMTEXPExit(Sender: TObject);
begin
  checkCur(AMTEXP,fdm.CdsMtAppGetEXP);

end;

procedure TfrmPopupExp.AMTEXPKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    AMTEXPExit(AMTEXP);
  end;

end;

procedure TfrmPopupExp.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsMtAppGetEXP.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetEXP.Cancel();
  inherited;

end;

procedure TfrmPopupExp.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
var ch : Boolean;
   CNOCDE: String;
   brn : String;
begin
  ch := False;
  if fdm.CdsMtAppGetEXP.State in [dsInsert] then
  begin
    cnt := _StrList.Count - 1;
    for I := 0 to cnt do
    begin
      if _StrList[i] = fdm.CdsMtAppGetEXPCDCEXP.AsString then
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
    fdm.CdsMtAppGetEXP.Post();
    Close;
  end;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsMtAppGetEXPCNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsMtAppGetEXP.Close;
//    FDM.CdsMtAppGetEXP.Open;
//    Fdm.CdsMtAppGetEXP.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupExp.CDCEXPCloseUp(Sender: TObject);
begin
  fdm.CdsMtAppGetEXPTNMCDC.AsString := CDCEXP.Text ;

end;

procedure TfrmPopupExp.Init(DM : TDSCarsaleDM;StrList : TStringList);
var i : integer;
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsMtAppGetEXP;
   CDCEXP.ListSource := Fdm.GetDSC('ET');
   TP1EXP.ListSource := Fdm.GetDSC('TPP');
   TP2EXP.ListSource := Fdm.GetDSC('TPC');

  if (fdm.CdsMtAppGetEXP.State in [dsInsert]) then
  begin
     _StrList := TStringList.Create;

     for I := 0 to StrList.Count - 1 do
     begin
       _StrList.Add(StrList[i]);
     end;

     btnConfirm.Visible := True;
     ShowCard();
  end
  else if (fdm.CdsMtAppGetEXP.State in [dsEdit]) then
  begin
     CDCEXP.ReadOnly := True;
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

end.
