unit PopupRegistationOm5Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars,DSRegistationIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask;

type
  TProcOfObject = procedure(SumAmtRt4: DOUBLE) of object;

  TfrmPopupRegistationOm5 = class(TMainDataForm)
    dsRg1GetOm5: TDataSource;
    pnAm4Button: TUniPanel;
    DbAm6: TUniDBGrid;
    UniImage1: TUniImage;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

  private
    Fdm : TDSRegistationDM;
    _PTPRT4,_TNMBAK  : String;
    Total_Amt : Double;

    FOnSumAmt: TProcOfObject;
    FG : STRING;
    procedure checkCur(Sender: TObject; CdsTmp : TClientDataSet);
    procedure CalculatAmt();
    procedure _SumAmt(SumAmt : Double);
  public
    procedure Init(DM : TDSRegistationDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);
    property OnSumAmt: TProcOfObject read FOnSumAmt write FOnSumAmt;
  end;

var
  frmPopupRegistationOm5: TfrmPopupRegistationOm5;

implementation

{$R *.dfm}

uses PopupRcvMoneyForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupRegistationOm5.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupRegistationOm5._SumAmt(SumAmt : Double);
begin
 // TOTALAMTYM4.Text := FormatFloat('#,##0.00',SumAmtAm4);

end;

procedure TfrmPopupRegistationOm5.CalculatAmt();
begin
  fdm.CdsAm6GetYm4BALYM4.AsFloat :=
     Fdm.cDSaM6GetYm4AMTYM4.AsFloat - Fdm.CdsAm6GetYm4ARGAM6.AsFloat;

end;

procedure TfrmPopupRegistationOm5.btnCancelClick(Sender: TObject);
begin
  if Fdm.cDSaM6GetYm4.State in [dsInsert,dsEdit] then
    Fdm.cDSaM6GetYm4.Cancel();
  inherited;

end;

procedure TfrmPopupRegistationOm5.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
   ch : Boolean;
   RecNo : integer;

begin
//  SumAmt := 0;

  Fdm.CdsRg1GetOm5.First;
  while not ( Fdm.CdsRg1GetOm5.Eof ) do
  begin
      if (Fdm.CdsRg1GetOm5SELECT_FLAG.AsBoolean ) then
      begin
        RecNo := Fdm.CdsRg1GetByNo.RecNo + 1;

        fdm.CdsRg1GetByNo.Append();
        Fdm.CdsRg1GetByNoYARRG1.AsInteger := Fdm.CdsRg1GetListYARRG1.AsInteger;
        Fdm.CdsRg1GetByNoPRDRG1.AsInteger := Fdm.CdsRg1GetListPRDRG1.AsInteger;
        Fdm.CdsRg1GetByNoCMPRG1.AsString := Fdm.CdsRg1GetListCMPRG1.AsString;
        Fdm.CdsRg1GetByNoBRNRG1.AsString := Fdm.CdsRg1GetListBRNRG1.AsString;
        Fdm.CdsRg1GetByNoDCDRG1.AsString := Fdm.CdsRg1GetListDCDRG1.AsString;
        Fdm.CdsRg1GetByNoDNORG1.AsInteger := Fdm.CdsRg1GetListDNORG1.AsInteger;
        Fdm.CdsRg1GetByNoSEQRG1.AsInteger := RecNo;
        Fdm.CdsRg1GetByNoIDTRG1.AsFloat := Fdm.CdsRg1GetListIDTRG1.AsFloat;

        Fdm.CdsRg1GetByNoAPNOM5.AsInteger := Fdm.CdsRg1GetOm5APNOM5.AsInteger;
        Fdm.CdsRg1GetByNoRDCRG1.AsString := Fdm.CdsRg1GetOm5DCDOM5.AsString;
        Fdm.CdsRg1GetByNoRDNRG1.AsInteger := Fdm.CdsRg1GetOm5DNOOM5.AsInteger;
        Fdm.CdsRg1GetByNoRSQRG1.AsInteger := Fdm.CdsRg1GetOm5SEQOM5.AsInteger;
        Fdm.CdsRg1GetByNoRDTRG1.AsFloat := Fdm.CdsRg1GetOm5IDTOM5.AsFloat;

        Fdm.CdsRg1GetByNotnmsmn.AsString := Fdm.CdsRg1GetOm5TNMSMN.AsString;
        Fdm.CdsRg1GetByNoctyom5.AsString := Fdm.CdsRg1GetOm5CTYOM5.AsString;
        Fdm.CdsRg1GetByNocnoom5.AsLargeInt := Fdm.CdsRg1GetOm5CNOOM5.AsLargeInt;
        Fdm.CdsRg1GetByNotnmcsm.AsString := Fdm.CdsRg1GetOm5TNMCSM.AsString;
        Fdm.CdsRg1GetByNoprdom5.AsString := Fdm.CdsRg1GetOm5PRDOM5.AsString;
        Fdm.CdsRg1GetByNotnmpm1.AsString  := Fdm.CdsRg1GetOm5TNMPM1.AsString;
        Fdm.CdsRg1GetByNotnmsrs.AsString  := Fdm.CdsRg1GetOm5TNMSRS.AsString;
        Fdm.CdsRg1GetByNotnmcol.AsString  := Fdm.CdsRg1GetOm5TNMCOL.AsString;
        Fdm.CdsRg1GetByNoserom5.AsString  := Fdm.CdsRg1GetOm5SEROM5.AsString;
        Fdm.CdsRg1GetByNoengom5.AsString  := Fdm.CdsRg1GetOm5ENGOM5.AsString;
        Fdm.CdsRg1GetByNoarsrg1.AsFloat  := Fdm.CdsRg1GetOm5AMTAMT.AsFloat;

        fdm.CdsRg1GetByNo.Post();

      end;

      Fdm.CdsRg1GetOm5.Next;
  end;

  Fdm.CdsRg1GetOm5.First;
  while not ( Fdm.CdsRg1GetOm5.Eof ) do
  begin
//      if (Fdm.CdsRg1GetOm5FLAG.AsBoolean ) then
//      begin

        Fdm.CdsRg1GetOm5.Edit;
        Fdm.CdsRg1GetOm5PRT.AsString :=  'N';
        Fdm.CdsRg1GetOm5.Post;

//      end;

      Fdm.CdsRg1GetOm5.Next;
  end;



   if (Assigned(FOnSumAmt)) then
     FOnSumAmt(0);

  Close;

end;

procedure TfrmPopupRegistationOm5.Init(DM : TDSRegistationDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);

begin
    Fdm := dm;
    FG := _FG;

   _PTPRT4 := PTPRT4_TEXT;
   _TNMBAK  := TNMBAK ;

   dsRg1GetOm5.DataSet := Fdm.CdsRg1GetOm5;

   Fdm.CdsRg1GetOm5.Filter := 'PRT = ''Y''' ;
   Fdm.cDSaM6GetYm4.Filtered := True;

end;

end.
