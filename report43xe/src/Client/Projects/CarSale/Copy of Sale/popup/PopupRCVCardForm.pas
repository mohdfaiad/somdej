unit PopupRCVCardForm;

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
  TfrmPopupRCVCard = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel20: TUniLabel;
    TNMCDC: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    RDTOMI: TUniDateTimePicker;
    CDCOMI: TUniDBEdit;
    PSNOMI: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    imgLogo: TUniImage;
    CmbHH: TUniComboBox;
    CmbMM: TUniComboBox;
    UniLabel4: TUniLabel;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure RDTOMIChange(Sender: TObject);
    procedure PSNOMICloseUp(Sender: TObject);

  private
    Fdm : TDSCarsaleDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
  public
    procedure Init(DM : TDSCarsaleDM);
  end;

var
  frmPopupRCVCard: TfrmPopupRCVCard;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupRCVCard.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupRCVCard.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsMtAppGetCard.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetCard.Cancel();
  inherited;

end;

procedure TfrmPopupRCVCard.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
   CNOCDE: String;
   brn : String;
begin
    fdm.CdsMtAppGetCardRTMOMI.AsString := CmbHH.Text + ':' + CmbMM.Text;
    fdm.CdsMtAppGetCardFLGOMI.AsString := 'Y';
    fdm.CdsMtAppGetCard.Post();
    Close;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsMtAppGetCardCNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsMtAppGetCard.Close;
//    FDM.CdsMtAppGetCard.Open;
//    Fdm.CdsMtAppGetCard.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupRCVCard.Init(DM : TDSCarsaleDM);
var i : integer;
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsMtAppGetCard;
   PSNOMI.ListSource := Fdm.GetDSC('PSR');

  if (fdm.CdsMtAppGetCard.State in [dsInsert]) then
  begin
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsMtAppGetCard.State in [dsEdit]) then
  begin

     btnConfirm.Visible := True;
     RDTOMI.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetCardRDTOMI.AsDateTime);
  end
  else
  begin
     btnConfirm.Visible := False;

     RDTOMI.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetCardRDTOMI.AsDateTime);

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

procedure TfrmPopupRCVCard.PSNOMICloseUp(Sender: TObject);
begin
  Fdm.CdsMtAppGetCardTNMPSN.AsString := PSNOMI.Text;
end;

procedure TfrmPopupRCVCard.RDTOMIChange(Sender: TObject);
begin
  if Trim(RDTOMI.Text) = '' then
    Fdm.CdsMtAppGetCardRDTOMI.AsDateTime := 0
  else
   Fdm.CdsMtAppGetCardRDTOMI.AsDateTime :=
   Fdm.FSBuddhistDateToDate(RDTOMI.DateTime);

end;

end.
