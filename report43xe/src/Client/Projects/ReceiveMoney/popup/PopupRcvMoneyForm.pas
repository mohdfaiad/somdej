unit PopupRcvMoneyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx , DSSetupIntfDM,
  uniGUIForm,  uniGUIVars,DSReceiveMoneyIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask;

type
  TProcOfObject = procedure (SumAmt : Double) of object;
  TfrmPopupRcvMoney = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel20: TUniLabel;
    NOTOM7LB: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel2: TUniLabel;
    LbRDNRT4: TUniLabel;
    UniLabel1: TUniLabel;
    AMTRT4: TUniEdit;
    TYPRT4: TUniDBLookupComboBox;
    DNOAM4: TUniDBEdit;
    TNMTYP: TUniDBEdit;
    AMTAM4: TUniDBEdit;
    BALAM4: TUniDBEdit;
    LbPrv: TUniLabel;
    PRVRT7: TUniDBLookupComboBox;
    LbReg: TUniLabel;
    REGRT7: TUniDBEdit;
    RENRT7: TUniDBEdit;
    BtnSelectRedCard: TUniButton;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure AMTRT4Exit(Sender: TObject);
    procedure AMTRT4KeyPress(Sender: TObject; var Key: Char);
    procedure TYPRT4CloseUp(Sender: TObject);
    procedure BtnSelectRedCardClick(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSReceiveMoneyDM;
    FSetupdm : TDSSetupDM;
    _StrList : TStringList;
    FOnSumAmtAm4: TProcOfObject;
    FG : STRING;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowCard();
    procedure ShowReg();
    procedure RedCardSelected(PRVRM1,PRVTNM,REGRM1, REGFULL: String;RENRM1:INTEGER);
  public

    procedure Init(DM : TDSReceiveMoneyDM;_Caption : String;_FG :STRING);
    property OnSumAmtAm4: TProcOfObject read FOnSumAmtAm4 write FOnSumAmtAm4;
  end;

var
  frmPopupRcvMoney: TfrmPopupRcvMoney;

implementation

{$R *.dfm}

uses PopupRedCardForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupRcvMoney.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupRcvMoney.ShowCard();
begin

  AMTRT4.Text := FormatCurr('#,##0.00', Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat);

end;

procedure TfrmPopupRcvMoney.TYPRT4CloseUp(Sender: TObject);
begin

  Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat := Fdm.CdsTtRcvGetAm4AMTAM4.AsFloat;
  fdm.CdsTtRcvGetAm4BALAM4.AsFloat := 0.00;
  AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat);
 // AMTRT4.SetFocus;
end;

procedure TfrmPopupRcvMoney.AMTRT4Exit(Sender: TObject);
begin

  checkCur(AMTRT4,fdm.CdsTtRcvGetAm4);

  if (Fdm.CdsTtRcvGetAm4AMTAM4.AsFloat - Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat) < 0 then
  begin
    ShowMessage('จำนวนเงินรับต้องมีค่าน้อยกว่าหรือเท่ากับจำนวนเงินเท่านั้น');
    AMTRT4.SetFocus;
  end
  else
    fdm.CdsTtRcvGetAm4BALAM4.AsFloat :=
       Fdm.CdsTtRcvGetAm4AMTAM4.AsFloat - Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat;

end;

procedure TfrmPopupRcvMoney.AMTRT4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    AMTRT4Exit(AMTRT4);
  end;

end;

procedure TfrmPopupRcvMoney.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsTtRcvGetAm4.State in [dsInsert,dsEdit] then
    Fdm.CdsTtRcvGetAm4.Cancel();
  inherited;

end;

procedure TfrmPopupRcvMoney.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
var ch : Boolean;
   CNOCDE: String;
   brn : String;
   SumAmt : Double;
begin

  fdm.CdsTtRcvGetAm4TNMTYP.AsString := TYPRT4.Text;
  fdm.CdsTtRcvGetAm4TNMPRV.AsString := PRVRT7.Text;
  fdm.CdsTtRcvGetAm4REGFULL.AsString := fdm.CdsTtRcvGetAm4REGRT7.AsString + '-' + IntToStr(fdm.CdsTtRcvGetAm4RENRT7.AsInteger);
  fdm.CdsTtRcvGetAm4.Post();

  SumAmt := 0;

  Fdm.CdsTtRcvGetAm4.First;
  while not Fdm.CdsTtRcvGetAm4.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat;
    Fdm.CdsTtRcvGetAm4.Next;
  end;

   if (Assigned(FOnSumAmtAm4)) then
     FOnSumAmtAm4(SumAmt);

    Close;

end;

procedure TfrmPopupRcvMoney.RedCardSelected(PRVRM1,PRVTNM,REGRM1, REGFULL: String;RENRM1:INTEGER);
begin
   Fdm.CdsTtRcvGetAm4PRVRT7.AsString :=   PRVRM1;
   Fdm.CdsTtRcvGetAm4TNMPRV.AsString :=   PRVTNM;
   Fdm.CdsTtRcvGetAm4REGRT7.AsString :=   REGRM1;
   Fdm.CdsTtRcvGetAm4REGFULL.AsString :=   REGFULL;
   Fdm.CdsTtRcvGetAm4RENRT7.AsInteger :=   RENRM1;
end;

procedure TfrmPopupRcvMoney.BtnSelectRedCardClick(Sender: TObject);
begin
  with TfrmPopupRedCard.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกป้ายแดง');

    OnSelectData := RedCardSelected;
    ShowModal();
  end;

end;

procedure TfrmPopupRcvMoney.ShowReg();
var sh : Boolean;
begin
  sh := (FG = 'R');
  LbPrv.Visible := sh;
  LbReg.Visible := sh;

  PRVRT7.Visible := sh;
  REGRT7.Visible := sh;
  RENRT7.Visible := sh;

  if sh then
  begin
    PRVRT7.ReadOnly := sh;
    REGRT7.ReadOnly := sh;
    RENRT7.ReadOnly := sh;
  end;
end;

procedure TfrmPopupRcvMoney.Init(DM : TDSReceiveMoneyDM;_Caption : String;_FG :STRING);
var i : integer;
begin

   Fdm := dm;
   FG := _FG;

   FUserSession :=  UniMainModule();
   FSetupdm:= FUsersession.DSSetupDM;

   dsgrid.DataSet := Fdm.CdsTtRcvGetAm4;
   TYPRT4.ListSource := Fdm.GetDSC('TR');
   PRVRT7.ListSource := Fdm.GetDSC('AC');

   Caption := 'รับชำระค่า ' + _Caption;

   ShowReg();

   AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat);
   Fdm.CdsTtRcvGetam4.Edit;
end;

end.
