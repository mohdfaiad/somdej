unit PopupAdvanceAm6Form;

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

  TfrmPopupAdvanceAm6 = class(TMainDataForm)
    dsAm7GetAm6: TDataSource;
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
  frmPopupAdvanceAm6: TfrmPopupAdvanceAm6;

implementation

{$R *.dfm}

uses PopupRcvMoneyForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupAdvanceAm6.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupAdvanceAm6._SumAmt(SumAmt : Double);
begin
 // TOTALAMTYM4.Text := FormatFloat('#,##0.00',SumAmtAm4);

end;

procedure TfrmPopupAdvanceAm6.CalculatAmt();
begin
  fdm.CdsAm6GetYm4BALYM4.AsFloat :=
     Fdm.cDSaM6GetYm4AMTYM4.AsFloat - Fdm.CdsAm6GetYm4ARGAM6.AsFloat;

end;

procedure TfrmPopupAdvanceAm6.btnCancelClick(Sender: TObject);
begin
  if Fdm.cDSaM6GetYm4.State in [dsInsert,dsEdit] then
    Fdm.cDSaM6GetYm4.Cancel();
  inherited;

end;

procedure TfrmPopupAdvanceAm6.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
   ch : Boolean;


begin
//  SumAmt := 0;

  Fdm.CdsAm6GetByNo.First;
  while not ( Fdm.CdsAm6GetByNo.Eof ) do
  begin
      if (Fdm.CdsAm6GetByNoFLAG.AsBoolean ) then
      begin

        fdm.CdsAm7GetByNo.Append();
        Fdm.CdsAm7GetByNoYARYM4.AsInteger := Fdm.CdsAm6GetByNoYARYM4.AsInteger;
        Fdm.CdsAm7GetByNoPRDYM4.AsInteger := Fdm.CdsAm6GetByNoPRDYM4.AsInteger;
        Fdm.CdsAm7GetByNoCMPYM4.AsString := Fdm.CdsAm6GetByNoCMPYM4.AsString;
        Fdm.CdsAm7GetByNoBRNYM4.AsString := Fdm.CdsAm6GetByNoBRNYM4.AsString;
        Fdm.CdsAm7GetByNoDEPYM4.AsString := Fdm.CdsAm6GetByNoDEPYM4.AsString;
        Fdm.CdsAm7GetByNoDCDYM4.AsString := Fdm.CdsAm6GetByNoDCDYM4.AsString;
        Fdm.CdsAm7GetByNoDNOYM4.AsInteger := Fdm.CdsAm6GetByNoDNOYM4.AsInteger;
        Fdm.CdsAm7GetByNoSEQYM4.AsInteger := Fdm.CdsAm6GetByNoSEQYM4.AsInteger;
        Fdm.CdsAm7GetByNoIDTYM4.AsFloat := Fdm.CdsAm6GetByNoIDTYM4.AsFloat;
        Fdm.CdsAm7GetByNoRDCYM4.AsString := Fdm.CdsAm6GetByNoRDCYM4.AsString;
        Fdm.CdsAm7GetByNoRDNYM4.AsInteger := Fdm.CdsAm6GetByNoRDNYM4.AsInteger;
        Fdm.CdsAm7GetByNoRDTYM4.AsFloat := Fdm.CdsAm6GetByNoRDTYM4.AsFloat;
        Fdm.CdsAm7GetByNoTNMSMN.AsString := Fdm.CdsAm6GetByNoTNMSMN.AsString;
        Fdm.CdsAm7GetByNoCTYOM5.AsString := Fdm.CdsAm6GetByNoCTYOM5.AsString;
        Fdm.CdsAm7GetByNoCNOOM5.AsLargeInt := Fdm.CdsAm6GetByNoCNOOM5.AsLargeInt;
        Fdm.CdsAm7GetByNoTNMCSM.AsString := Fdm.CdsAm6GetByNoTNMCSM.AsString;
        Fdm.CdsAm7GetByNoTNMSRS.AsString := Fdm.CdsAm6GetByNoTNMSRS.AsString;
        Fdm.CdsAm7GetByNoTNMCOL.AsString := Fdm.CdsAm6GetByNoTNMCOL.AsString;
        Fdm.CdsAm7GetByNoSEROM5.AsString := Fdm.CdsAm6GetByNoSEROM5.AsString;
        Fdm.CdsAm7GetByNoREGRT7.AsString := Fdm.CdsAm6GetByNoREGRT7.AsString;
        Fdm.CdsAm7GetByNoRENRT7.AsInteger := Fdm.CdsAm6GetByNoRENRT7.AsInteger;
        Fdm.CdsAm7GetByNoPRVRT7.AsString := Fdm.CdsAm6GetByNoPRVRT7.AsString;
        Fdm.CdsAm7GetByNoTNMPRV.AsString := Fdm.CdsAm6GetByNoTNMPRV.AsString;
        Fdm.CdsAm7GetByNoREGFULL.AsString := Fdm.CdsAm6GetByNoREGFULL.AsString;
        Fdm.CdsAm7GetByNoARSAM6.AsFloat := Fdm.CdsAm6GetByNoARSAM6.AsFloat;
        Fdm.CdsAm7GetByNoREGRT7.AsString := Fdm.CdsAm6GetByNoREGRT7.AsString;
        Fdm.CdsAm7GetByNoRENRT7.AsInteger := Fdm.CdsAm6GetByNoRENRT7.AsInteger;
        Fdm.CdsAm7GetByNoPRVRT7.AsString := Fdm.CdsAm6GetByNoPRVRT7.AsString;
        Fdm.CdsAm7GetByNoSEQAM6.AsString := Fdm.CdsAm6GetByNoSEQAM6.AsString;

    //    SumAmt := SumAmt + Fdm.CdsAm6GetByNoAMTYM4.AsFloat;

        fdm.CdsAm7GetByNo.Post();

      end;

      Fdm.CdsAm6GetByNo.Next;
  end;

  Fdm.CdsAm6GetByNo.First;
  while not ( Fdm.CdsAm6GetByNo.Eof ) do
  begin
      if (Fdm.CdsAm6GetByNoFLAG.AsBoolean ) then
      begin

        Fdm.CdsAm6GetByNo.Edit;
        Fdm.CdsAm6GetByNoPRCAM6.AsString :=  'P';
        Fdm.CdsAm6GetByNo.Post;

      end;

      Fdm.CdsAm6GetByNo.Next;
  end;



   if (Assigned(FOnSumAmt)) then
     FOnSumAmt(0);

  Close;

end;

procedure TfrmPopupAdvanceAm6.Init(DM : TDSRegistationDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);

begin
    Fdm := dm;
    FG := _FG;

   _PTPRT4 := PTPRT4_TEXT;
   _TNMBAK  := TNMBAK ;

   dsAm7GetAm6.DataSet := Fdm.CdsAm6GetByNo;

   Fdm.cDSaM6GetYm4.Filter := 'PRCAM6 = ''U''' ;
   Fdm.cDSaM6GetYm4.Filtered := True;

end;

end.
