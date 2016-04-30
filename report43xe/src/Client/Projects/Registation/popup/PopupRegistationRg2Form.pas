unit PopupRegistationRg2Form;

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

  TfrmPopupRegistationRg2 = class(TMainDataForm)
    dsRG2GetByNo: TDataSource;
    pnAm4Button: TUniPanel;
    DbRg1: TUniDBGrid;
    UniImage1: TUniImage;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure DbRg1DblClick(Sender: TObject);

  private
    Fdm : TDSRegistationDM;
    _PTPRT4,_TNMBAK  : String;
    Total_Amt : Double;

    FOnSumAmt: TProcOfObject;
    FG : STRING;
    procedure checkCur(Sender: TObject; CdsTmp : TClientDataSet);

    procedure _SumAmt(SumAmt : Double);
  public
    procedure Init(DM : TDSRegistationDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);
    property OnSumAmt: TProcOfObject read FOnSumAmt write FOnSumAmt;
  end;

var
  frmPopupRegistationRg2: TfrmPopupRegistationRg2;

implementation

{$R *.dfm}

uses PopupRegistationFromOutForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupRegistationRg2.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupRegistationRg2.DbRg1DblClick(Sender: TObject);
begin
  with TfrmPopupRegistationFromOutForm.Create(UniApplication) do
  begin
    Init(FDM,'',FG);

    OnSumAmtRg1 := _SumAmt;
    ShowModal();
  end;

end;

procedure TfrmPopupRegistationRg2._SumAmt(SumAmt : Double);
begin
  //

end;

procedure TfrmPopupRegistationRg2.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
   ch : Boolean;
   RecNo : integer;

begin
//  SumAmt := 0;

  Fdm.CdsRg2GetByNo.First;
  while not ( Fdm.CdsRg2GetByNo.Eof ) do
  begin
      if (Fdm.CdsRg2GetByNoFLAG.AsBoolean) then
      begin
        fdm.CdsRg2BookGetByNo.Append();
        Fdm.CdsRg2BookGetByNoYARRG2.AsInteger := Fdm.CdsRg2GetByNoYARRG2.AsInteger;
        Fdm.CdsRg2BookGetByNoPRDRG2.AsInteger := Fdm.CdsRg2GetByNoPRDRG2.AsInteger;
        Fdm.CdsRg2BookGetByNoCMPRG2.AsString := Fdm.CdsRg2GetByNoCMPRG2.AsString;
        Fdm.CdsRg2BookGetByNoBRNRG2.AsString := Fdm.CdsRg2GetByNoBRNRG2.AsString;
        Fdm.CdsRg2BookGetByNoDCDRG2.AsString := Fdm.CdsRg2GetByNoDCDRG2.AsString;
        Fdm.CdsRg2BookGetByNoDNORG2.AsInteger := Fdm.CdsRg2GetByNoDNORG2.AsInteger;
        Fdm.CdsRg2BookGetByNoSEQRG2.AsInteger := Fdm.CdsRg2GetByNoSEQRG2.AsInteger;
        Fdm.CdsRg2BookGetByNoIDTRG2.AsFloat := Fdm.CdsRg2GetByNoIDTRG2.AsFloat;

        Fdm.CdsRg2BookGetByNoAPNOM5.AsInteger := Fdm.CdsRg2GetByNoAPNOM5.AsInteger;
        Fdm.CdsRg2BookGetByNoAPDOM5.AsFloat := Fdm.CdsRg2GetByNoAPDOM5.AsFloat;
        Fdm.CdsRg2BookGetByNoRDCRG2.AsString := Fdm.CdsRg2GetByNoRDCRG2.AsString;
        Fdm.CdsRg2BookGetByNoRDNRG2.AsInteger := Fdm.CdsRg2GetByNoRDNRG2.AsInteger;
        Fdm.CdsRg2BookGetByNoRSQRG2.AsInteger := Fdm.CdsRg2GetByNoRSQRG2.AsInteger;
        Fdm.CdsRg2BookGetByNoRDTRG2.AsFloat := Fdm.CdsRg2GetByNoRDTRG2.AsFloat;

        Fdm.CdsRg2BookGetByNotnmsmn.AsString := Fdm.CdsRg2GetByNotnmsmn.AsString;
        Fdm.CdsRg2BookGetByNoctyom5.AsString := Fdm.CdsRg2GetByNoctyom5.AsString;
        Fdm.CdsRg2BookGetByNocnoom5.AsLargeInt := Fdm.CdsRg2GetByNocnoom5.AsLargeInt;
        Fdm.CdsRg2BookGetByNotnmcsm.AsString := Fdm.CdsRg2GetByNotnmcsm.AsString;
        Fdm.CdsRg2BookGetByNoprdom5.AsString := Fdm.CdsRg2GetByNoprdom5.AsString;
        Fdm.CdsRg2BookGetByNotnmpm1.AsString  := Fdm.CdsRg2GetByNotnmpm1.AsString;
        Fdm.CdsRg2BookGetByNotnmsrs.AsString  := Fdm.CdsRg2GetByNotnmsrs.AsString;
        Fdm.CdsRg2BookGetByNotnmcol.AsString  := Fdm.CdsRg2GetByNotnmcol.AsString;
        Fdm.CdsRg2BookGetByNoserom5.AsString  := Fdm.CdsRg2GetByNoserom5.AsString;
        Fdm.CdsRg2BookGetByNoengom5.AsString  := Fdm.CdsRg2GetByNoengom5.AsString;
        Fdm.CdsRg2BookGetByNoARSRG2.AsFloat  := Fdm.CdsRg2GetByNoARSRG2.AsFloat;

        Fdm.CdsRg2BookGetByNoSEROM5.AsString := Fdm.CdsRg2GetByNoSEROM5.AsString;
        Fdm.CdsRg2BookGetByNoPRVRG2.AsString  := Fdm.CdsRg2GetByNoPRVRG2.AsString;
        Fdm.CdsRg2BookGetByNoTNMPRV.AsString  := Fdm.CdsRg2GetByNoTNMPRV.AsString;

        Fdm.CdsRg2BookGetByNoREGRG2.AsString  := Fdm.CdsRg2GetByNoREGRG2.AsString;
        Fdm.CdsRg2BookGetByNoRENRG2.AsInteger  := Fdm.CdsRg2GetByNoRENRG2.AsInteger;
        Fdm.CdsRg2BookGetByNoREGFULL.AsString  := Fdm.CdsRg2GetByNoREGFULL.AsString;

        Fdm.CdsRg2BookGetByNoRVDRG2.AsFloat  := Fdm.CdsRg2GetByNoRVDRG2.AsFloat ;
        Fdm.CdsRg2BookGetByNoRVNRG2.AsInteger  := Fdm.CdsRg2GetByNoRVNRG2.AsInteger;

        Fdm.CdsRg2BookGetByNoARARG2.AsFloat  := Fdm.CdsRg2GetByNoARARG2.AsFloat;
        Fdm.CdsRg2BookGetByNoAOARG2.AsFloat  := Fdm.CdsRg2GetByNoAOARG2.AsFloat;

        fdm.CdsRg2BookGetByNo.Post();

      end;

      Fdm.CdsRg2GetByNo.Next;
  end;

  Fdm.CdsRg2GetByNo.First;
  while not ( Fdm.CdsRg2GetByNo.Eof ) do
  begin
      if (Fdm.CdsRg2GetByNoFLAG.AsBoolean) then
      begin
         Fdm.CdsRg2GetByNo.Edit;
        Fdm.CdsRg2GetByNoPRT.AsString :=  'N';
        Fdm.CdsRg2GetByNo.Post;
      end;

      Fdm.CdsRg2GetByNo.Next;
  end;

   if (Assigned(FOnSumAmt)) then
     FOnSumAmt(0);

  Close;
end;

procedure TfrmPopupRegistationRg2.Init(DM : TDSRegistationDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);

begin
    Fdm := dm;
    FG := _FG;

   _PTPRT4 := PTPRT4_TEXT;
   _TNMBAK  := TNMBAK ;

   dsRG2GetByNo.DataSet := Fdm.CdsRg2GetByNo;

   Fdm.CdsRg2GetByNo.Filter := 'BST = ''N''' ;
   Fdm.CdsRg2GetByNo.Filtered := True;

end;

end.
