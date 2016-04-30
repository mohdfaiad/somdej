unit PopupRegistationFromOutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx , DSSetupIntfDM,
  uniGUIForm,  uniGUIVars,DSRegistationIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask;

type
  TProcOfObject = procedure (SumAmt : Double) of object;
  TfrmPopupRegistationFromOutForm = class(TMainDataForm)
    dsgrid: TDataSource;
    LbAoA: TUniLabel;
    LbARA: TUniLabel;
    LbRDN: TUniLabel;
    LbTotalAmt: TUniLabel;
    ARARG2: TUniEdit;
    RVNRG2: TUniDBEdit;
    TOTALAMT: TUniDBEdit;
    LbPrv: TUniLabel;
    PRVRG2: TUniDBLookupComboBox;
    LbReg: TUniLabel;
    REGRG2: TUniDBEdit;
    RENRG2: TUniDBEdit;
    imgLogo: TUniImage;
    RVDRG2: TUniDateTimePicker;
    LbRVD: TUniLabel;
    AOARG2: TUniEdit;
    ARSRG1: TUniDBEdit;
    LbAmt: TUniLabel;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure ARARG2Exit(Sender: TObject);
    procedure ARARG2KeyPress(Sender: TObject; var Key: Char);
    procedure RVDRG2Change(Sender: TObject);

  private

    Fdm : TDSRegistationDM;

    _StrList : TStringList;
    FOnSumAmtRg1: TProcOfObject;
    FG : STRING;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);

    procedure RedCardSelected(PRVRM1,PRVTNM,REGRM1, REGFULL: String;RENRM1:INTEGER);
  public

    procedure Init(DM : TDSRegistationDM;_Caption : String;_FG :STRING);
    property OnSumAmtRg1: TProcOfObject read FOnSumAmtRg1 write FOnSumAmtRg1;
  end;

var
  frmPopupRegistationFromOutForm: TfrmPopupRegistationFromOutForm;

implementation

{$R *.dfm}

uses PopupRedCardForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupRegistationFromOutForm.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupRegistationFromOutForm.ARARG2Exit(Sender: TObject);
begin

  checkCur(ARARG2,fdm.CdsRg1GetByNo);

  if (Fdm.CdsRg1GetByNoARSRG1.AsFloat - Fdm.CdsRg1GetByNoARARG2.AsFloat) < 0 then
  begin
    ShowMessage('ค่าจดทะเบียน ต้องมีค่าน้อยกว่าหรือเท่ากับยอดเงินจดทะเบียนเท่านั้น');
    ARARG2.SetFocus;
  end
  else
  begin
      fdm.CdsRg1GetByNoAOARG2.AsFloat :=
       Fdm.CdsRg1GetByNoARSRG1.AsFloat - Fdm.CdsRg1GetByNoARARG2.AsFloat;

      AOARG2.Text := FormatFloat('#,##0.00',Fdm.CdsRg1GetByNoAOARG2.AsFloat);
  end;

end;

procedure TfrmPopupRegistationFromOutForm.ARARG2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    ARARG2Exit(ARARG2);
  end;

end;

procedure TfrmPopupRegistationFromOutForm.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsRg1GetByNo.State in [dsInsert,dsEdit] then
    Fdm.CdsRg1GetByNo.Cancel();
  inherited;

end;

procedure TfrmPopupRegistationFromOutForm.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
   ch : Boolean;
   CNOCDE: String;
   brn : String;
   SumAmt : Double;
   Serom5 : String;
begin
  Serom5 := Fdm.CdsRg1GetByNoSEROM5.AsString;
  fdm.CdsRg1GetByNoTNMPRV.AsString := PRVRG2.Text;
  fdm.CdsRg1GetByNoREGFULL.AsString := fdm.CdsRg1GetByNoREGRG2.AsString + '-' + IntToStr(fdm.CdsRg1GetByNoRENRG2.AsInteger);
  fdm.CdsRg1GetByNo.Post();

  SumAmt := 0;

  Fdm.CdsRg1GetByNo.First;
  while not Fdm.CdsRg1GetByNo.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsRg1GetByNoTOTALAMT.AsFloat;
    Fdm.CdsRg1GetByNo.Next;
  end;

  fdm.CdsRg1GetByNo.Locate('SEROM5',Serom5,[]);

  // if (Assigned(FOnSumAmtRg1)) then
  //   FOnSumAmtRg1(SumAmt);

    Close;
end;

procedure TfrmPopupRegistationFromOutForm.RedCardSelected(PRVRM1,PRVTNM,REGRM1, REGFULL: String;RENRM1:INTEGER);
begin
   Fdm.CdsRg1GetByNoPRVRG2.AsString :=   PRVRM1;
   Fdm.CdsRg1GetByNoTNMPRV.AsString :=   PRVTNM;
   Fdm.CdsRg1GetByNoREGRG2.AsString :=   REGRM1;
   Fdm.CdsRg1GetByNoREGFULL.AsString :=   REGFULL;
   Fdm.CdsRg1GetByNoRENRG2.AsInteger :=   RENRM1;
end;

procedure TfrmPopupRegistationFromOutForm.RVDRG2Change(Sender: TObject);
begin
  if Trim(RVDRG2.Text) = '' then
    Fdm.CdsRg1GetByNoRVDRG2.AsDateTime := 0
  else
  begin
   Fdm.CdsRg1GetByNoRVDRG2.AsDateTime :=
     Fdm.FSBuddhistDateToDate(RVDRG2.DateTime);
  end;

end;

procedure TfrmPopupRegistationFromOutForm.Init(DM : TDSRegistationDM;_Caption : String;_FG :STRING);
var i : integer;
begin

   Fdm := dm;
   FG := _FG;

   dsgrid.DataSet := Fdm.CdsRg1GetByNo;
   PRVRG2.ListSource := Fdm.GetDSC('AC');

   ARARG2.Text := FormatFloat('#,##0.00',Fdm.CdsRg1GetByNoARARG2.AsFloat);
   AOARG2.Text := FormatFloat('#,##0.00',Fdm.CdsRg1GetByNoAOARG2.AsFloat);

   Fdm.CdsRg1GetByNo.Edit;
   if Fdm.CdsRg1GetByNoRVDRG2.IsNull then
     Fdm.CdsRg1GetByNoRVDRG2.AsDateTime :=  Fdm.GetSystemDate;

   RVDRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRg1GetByNoRVDRG2.AsDateTime);

end;

end.
