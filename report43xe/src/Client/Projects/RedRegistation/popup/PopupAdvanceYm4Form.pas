unit PopupAdvanceYm4Form;

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

  TfrmPopupAdvanceYm4 = class(TMainDataForm)
    dsAm6GetYm4: TDataSource;
    pnAm4Button: TUniPanel;
    DbAm4: TUniDBGrid;
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
  frmPopupAdvanceYm4: TfrmPopupAdvanceYm4;

implementation

{$R *.dfm}

uses PopupRcvMoneyForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupAdvanceYm4.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupAdvanceYm4._SumAmt(SumAmt : Double);
begin
 // TOTALAMTYM4.Text := FormatFloat('#,##0.00',SumAmtAm4);

end;

procedure TfrmPopupAdvanceYm4.CalculatAmt();
begin
  fdm.CdsAm6GetYm4BALYM4.AsFloat :=
     Fdm.cDSaM6GetYm4AMTYM4.AsFloat - Fdm.CdsAm6GetYm4ARGAM6.AsFloat;

end;

procedure TfrmPopupAdvanceYm4.btnCancelClick(Sender: TObject);
begin
  if Fdm.cDSaM6GetYm4.State in [dsInsert,dsEdit] then
    Fdm.cDSaM6GetYm4.Cancel();
  inherited;

end;

procedure TfrmPopupAdvanceYm4.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
   ch : Boolean;


begin
//  SumAmt := 0;

  Fdm.cDSaM6GetYm4.First;
  while not ( Fdm.cDSaM6GetYm4.Eof ) do
  begin
      if (Fdm.cDSaM6GetYm4FLAG.AsBoolean ) then
      begin

        fdm.CdsAm6GetByNo.Append();
        Fdm.CdsAm6GetByNoYARYM4.AsInteger := Fdm.cDSaM6GetYm4YARYM4.AsInteger;
        Fdm.CdsAm6GetByNoPRDYM4.AsInteger := Fdm.cDSaM6GetYm4PRDYM4.AsInteger;
        Fdm.CdsAm6GetByNoCMPYM4.AsString := Fdm.cDSaM6GetYm4CMPYM4.AsString;
        Fdm.CdsAm6GetByNoBRNYM4.AsString := Fdm.cDSaM6GetYm4BRNYM4.AsString;
        Fdm.CdsAm6GetByNoDEPYM4.AsString := Fdm.cDSaM6GetYm4DEPYM4.AsString;
        Fdm.CdsAm6GetByNoDCDYM4.AsString := Fdm.cDSaM6GetYm4DCDYM4.AsString;
        Fdm.CdsAm6GetByNoDNOYM4.AsInteger := Fdm.cDSaM6GetYm4DNOYM4.AsInteger;
        Fdm.CdsAm6GetByNoSEQYM4.AsInteger := Fdm.cDSaM6GetYm4SEQYM4.AsInteger;
        Fdm.CdsAm6GetByNoIDTYM4.AsFloat := Fdm.cDSaM6GetYm4IDTYM4.AsFloat;
        Fdm.CdsAm6GetByNoRDCYM4.AsString := Fdm.cDSaM6GetYm4RDCYM4.AsString;
        Fdm.CdsAm6GetByNoRDNYM4.AsInteger := Fdm.cDSaM6GetYm4RDNYM4.AsInteger;
        Fdm.CdsAm6GetByNoRDTYM4.AsFloat := Fdm.cDSaM6GetYm4RDTYM4.AsFloat;
        Fdm.CdsAm6GetByNoTNMSMN.AsString := Fdm.cDSaM6GetYm4TNMSMN.AsString;
        Fdm.CdsAm6GetByNoCTYOM5.AsString := Fdm.cDSaM6GetYm4CTYOM5.AsString;
        Fdm.CdsAm6GetByNoCNOOM5.AsLargeInt := Fdm.cDSaM6GetYm4CNOOM5.AsLargeInt;
        Fdm.CdsAm6GetByNoTNMCSM.AsString := Fdm.cDSaM6GetYm4TNMCSM.AsString;
        Fdm.CdsAm6GetByNoTNMSRS.AsString := Fdm.cDSaM6GetYm4TNMSRS.AsString;
        Fdm.CdsAm6GetByNoTNMCOL.AsString := Fdm.cDSaM6GetYm4TNMCOL.AsString;
        Fdm.CdsAm6GetByNoSEROM5.AsString := Fdm.cDSaM6GetYm4SEROM5.AsString;
        Fdm.CdsAm6GetByNoREGRT7.AsString := Fdm.cDSaM6GetYm4REGRT7.AsString;
        Fdm.CdsAm6GetByNoRENRT7.AsInteger := Fdm.cDSaM6GetYm4RENRT7.AsInteger;
        Fdm.CdsAm6GetByNoPRVRT7.AsString := Fdm.cDSaM6GetYm4PRVRT7.AsString;
        Fdm.CdsAm6GetByNoTNMPRV.AsString := Fdm.cDSaM6GetYm4TNMPRV.AsString;
        Fdm.CdsAm6GetByNoREGFULL.AsString := Fdm.cDSaM6GetYm4REGFULL.AsString;
        Fdm.CdsAm6GetByNoARSAM6.AsFloat := Fdm.CdsAm6GetYm4AMTYM4.AsFloat;
        Fdm.CdsAm6GetByNoARGAM6.AsFloat := Fdm.CdsAm6GetYm4AMTYM4.AsFloat;
        Fdm.CdsAm6GetByNoBALYM4.AsFloat := 0;

    //    SumAmt := SumAmt + Fdm.CdsAm6GetYm4AMTYM4.AsFloat;

        fdm.CdsAm6GetByNo.Post();

      end;

      Fdm.cDSaM6GetYm4.Next;
  end;

  Fdm.cDSaM6GetYm4.First;
  while not ( Fdm.cDSaM6GetYm4.Eof ) do
  begin
      if (Fdm.cDSaM6GetYm4FLAG.AsBoolean ) then
      begin

        Fdm.CdsAm6GetYm4.Edit;
        Fdm.CdsAm6GetYm4ARGAM6.AsFloat :=  Fdm.CdsAm6GetYm4AMTYM4.AsFloat;
        Fdm.CdsAm6GetYm4BALYM4.AsFloat := 0;
        Fdm.CdsAm6GetYm4.Post;

      end;

      Fdm.cDSaM6GetYm4.Next;
  end;



   if (Assigned(FOnSumAmt)) then
     FOnSumAmt(0);

  Close;

end;

procedure TfrmPopupAdvanceYm4.Init(DM : TDSRegistationDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);

begin
    Fdm := dm;
    FG := _FG;

   _PTPRT4 := PTPRT4_TEXT;
   _TNMBAK  := TNMBAK ;

   dsAm6GetYm4.DataSet := Fdm.cDSaM6GetYm4;

   Fdm.cDSaM6GetYm4.Filter := 'BALYM4 > 0' ;
   Fdm.cDSaM6GetYm4.Filtered := True;

   if not Fdm.cDSaM6GetYm4.IsEmpty then
   begin
     Fdm.cDSaM6GetYm4.First;
   end
   else
   begin

     btnConfirm.Enabled := False;
   end;


   RSetColorReadOnly();
end;

end.
