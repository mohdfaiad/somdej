unit PopupRegistationRg1Form;

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

  TfrmPopupRegistationRg1 = class(TMainDataForm)
    dsRG2GetRG1: TDataSource;
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
  frmPopupRegistationRg1: TfrmPopupRegistationRg1;

implementation

{$R *.dfm}

uses PopupRegistationFromOutForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupRegistationRg1.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupRegistationRg1._SumAmt(SumAmt : Double);
begin
  //

end;

procedure TfrmPopupRegistationRg1.DbRg1DblClick(Sender: TObject);
begin
  with TfrmPopupRegistationFromOutForm.Create(UniApplication) do
  begin
    Init(FDM,'',FG);

    OnSumAmtRg1 := _SumAmt;
    ShowModal();
  end;

end;

procedure TfrmPopupRegistationRg1.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
   ch : Boolean;
   RecNo : integer;

begin
//  SumAmt := 0;

  Fdm.CdsRg1GetByNo.First;
  while not ( Fdm.CdsRg1GetByNo.Eof ) do
  begin
      if (Fdm.CdsRg1GetByNoTOTALAMT.AsFloat > 0) then
      begin
        RecNo := Fdm.CdsRg2GetByNo.RecNo + 1;

          fdm.CdsRg2GetByNo.Append();
        Fdm.CdsRg2GetByNoYARRG2.AsInteger := Fdm.CdsRg2GetListYARRG2.AsInteger;
        Fdm.CdsRg2GetByNoPRDRG2.AsInteger := Fdm.CdsRg2GetListPRDRG2.AsInteger;
        Fdm.CdsRg2GetByNoCMPRG2.AsString := Fdm.CdsRg2GetListCMPRG2.AsString;
        Fdm.CdsRg2GetByNoBRNRG2.AsString := Fdm.CdsRg2GetListBRNRG2.AsString;
        Fdm.CdsRg2GetByNoDCDRG2.AsString := Fdm.CdsRg2GetListDCDRG2.AsString;
        Fdm.CdsRg2GetByNoDNORG2.AsInteger := Fdm.CdsRg2GetListDNORG2.AsInteger;
        Fdm.CdsRg2GetByNoSEQRG2.AsInteger := RecNo;
        Fdm.CdsRg2GetByNoIDTRG2.AsFloat := Fdm.CdsRg2GetListIDTRG2.AsFloat;

        Fdm.CdsRg2GetByNoAPNOM5.AsInteger := Fdm.CdsRg1GetByNoAPNOM5.AsInteger;
        Fdm.CdsRg2GetByNoAPDOM5.AsFloat := Fdm.CdsRg1GetByNoAPDOM5.AsFloat;
        Fdm.CdsRg2GetByNoRDCRG2.AsString := Fdm.CdsRg1GetByNoDCDRG1.AsString;
        Fdm.CdsRg2GetByNoRDNRG2.AsInteger := Fdm.CdsRg1GetByNoDNORG1.AsInteger;
        Fdm.CdsRg2GetByNoRSQRG2.AsInteger := Fdm.CdsRg1GetByNoSEQRG1.AsInteger;
        Fdm.CdsRg2GetByNoRDTRG2.AsFloat := Fdm.CdsRg1GetByNoIDTRG1.AsFloat;

        Fdm.CdsRg2GetByNotnmsmn.AsString := Fdm.CdsRg1GetByNoTNMSMN.AsString;
        Fdm.CdsRg2GetByNoctyom5.AsString := Fdm.CdsRg1GetByNoCTYOM5.AsString;
        Fdm.CdsRg2GetByNocnoom5.AsLargeInt := Fdm.CdsRg1GetByNoCNOOM5.AsLargeInt;
        Fdm.CdsRg2GetByNotnmcsm.AsString := Fdm.CdsRg1GetByNoTNMCSM.AsString;
        Fdm.CdsRg2GetByNoprdom5.AsString := Fdm.CdsRg1GetByNoPRDOM5.AsString;
        Fdm.CdsRg2GetByNotnmpm1.AsString  := Fdm.CdsRg1GetByNoTNMPM1.AsString;
        Fdm.CdsRg2GetByNotnmsrs.AsString  := Fdm.CdsRg1GetByNoTNMSRS.AsString;
        Fdm.CdsRg2GetByNotnmcol.AsString  := Fdm.CdsRg1GetByNoTNMCOL.AsString;
        Fdm.CdsRg2GetByNoserom5.AsString  := Fdm.CdsRg1GetByNoSEROM5.AsString;
        Fdm.CdsRg2GetByNoengom5.AsString  := Fdm.CdsRg1GetByNoENGOM5.AsString;
        Fdm.CdsRg2GetByNoARSRG2.AsFloat  := Fdm.CdsRg1GetByNoARSRG1.AsFloat;

        Fdm.CdsRg2GetByNoSEROM5.AsString := Fdm.CdsRg1GetByNoSEROM5.AsString;
        Fdm.CdsRg2GetByNoPRVRG2.AsString  := Fdm.CdsRg1GetByNoPRVRG2.AsString;
        Fdm.CdsRg2GetByNoTNMPRV.AsString  := Fdm.CdsRg1GetByNoTNMPRV.AsString;

        Fdm.CdsRg2GetByNoREGRG2.AsString  := Fdm.CdsRg1GetByNoREGRG2.AsString;
        Fdm.CdsRg2GetByNoRENRG2.AsInteger  := Fdm.CdsRg1GetByNoRENRG2.AsInteger;
        Fdm.CdsRg2GetByNoREGFULL.AsString  := Fdm.CdsRg1GetByNoREGFULL.AsString;

        Fdm.CdsRg2GetByNoRVDRG2.AsFloat  := Fdm.CdsRg1GetByNoRVDRG2.AsFloat ;
        Fdm.CdsRg2GetByNoRVNRG2.AsInteger  := Fdm.CdsRg1GetByNoRVNRG2.AsInteger;

        Fdm.CdsRg2GetByNoARARG2.AsFloat  := Fdm.CdsRg1GetByNoARARG2.AsFloat;
        Fdm.CdsRg2GetByNoAOARG2.AsFloat  := Fdm.CdsRg1GetByNoAOARG2.AsFloat;

        fdm.CdsRg2GetByNo.Post();

      end;

      Fdm.CdsRg1GetByNo.Next;
  end;

  Fdm.CdsRg1GetByNo.First;
  while not ( Fdm.CdsRg1GetByNo.Eof ) do
  begin
      if (Fdm.CdsRg1GetByNoTOTALAMT.AsFloat > 0) then
      begin
         Fdm.CdsRg1GetByNo.Edit;
        Fdm.CdsRg1GetByNoPRT.AsString :=  'N';
        Fdm.CdsRg1GetByNo.Post;
      end;

      Fdm.CdsRg1GetByNo.Next;
  end;

   if (Assigned(FOnSumAmt)) then
     FOnSumAmt(0);

  Close;
end;

procedure TfrmPopupRegistationRg1.Init(DM : TDSRegistationDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);

begin
    Fdm := dm;
    FG := _FG;

   _PTPRT4 := PTPRT4_TEXT;
   _TNMBAK  := TNMBAK ;

   dsRG2GetRG1.DataSet := Fdm.CdsRg1GetByNo;

   Fdm.CdsRg1GetByNo.Filter := 'PRT = ''Y''' ;
   Fdm.CdsRg1GetByNo.Filtered := True;

end;

end.
