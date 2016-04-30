unit StArOvdAmtDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask;

type
  TfrmStArOvdAmtData = class(TMainDataForm)
    dsgrid: TDataSource;
    LbCreditLineDate: TUniLabel;
    SERAM1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    CmbBrn: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel4: TUniLabel;
    CmbDEP: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    CMPAM1: TUniDBEdit;
    DNOAM1: TUniDBEdit;
    IDTAM1: TUniDateTimePicker;
    DbTNMCM1: TUniDBEdit;
    DbCNOAM1: TUniDBEdit;
    UniLabel5: TUniLabel;
    BtnSelectCno: TUniButton;
    DDTAM1: TUniDateTimePicker;
    AMTAM1: TUniEdit;
    BALAM1: TUniEdit;
    UniLabel24: TUniLabel;
    CmbSTS: TUniDBLookupComboBox;
    CmbCTPCM1: TUniDBLookupComboBox;
    CmbPSNCM1: TUniDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectCnoClick(Sender: TObject);
    procedure AMTAM1Exit(Sender: TObject);
    procedure BALAM1Exit(Sender: TObject);
    procedure IDTAM1Change(Sender: TObject);
    procedure DDTAM1Change(Sender: TObject);
    procedure CmbBrnCloseUp(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ContractSelected(cnocm1,tnmcm1,ctpcm1,smncm1: String;crtam3 : integer);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStArOvdAmtData: TfrmStArOvdAmtData;

implementation

{$R *.dfm}

uses PopupArForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStArOvdAmtData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStArOvdAmtData.AMTAM1Exit(Sender: TObject);
begin
  checkCur(AMTAM1,Fdm.CdsStAm1Get);

end;

procedure TfrmStArOvdAmtData.BALAM1Exit(Sender: TObject);
begin
  checkCur(BALAM1,Fdm.CdsStAm1Get);

end;

procedure TfrmStArOvdAmtData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStAm1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStAm1Get.Cancel();
  inherited;

end;

procedure TfrmStArOvdAmtData.btnConfirmClick(Sender: TObject);
var ch ,ch2: Boolean;
  md : String;
begin
  if Fdm.CdsStAm1Getbalam1.AsFloat > Fdm.CdsStAm1GetAMTAM1.AsFloat then
  begin
    ShowMessage('ยอดคงเหลือ มากกว่า จำนวนเงิน ไม่ได้');
    exit;
  end;


  if Fdm.CdsStAm1Get.State in [dsInsert] then
    md := 'I'

  else
    md := 'E';

  Fdm.CdsStAm1Getyaram1.Asinteger := 2012;

  if Fdm.CdsStAm1Getbalam1.AsFloat = 0 then
     Fdm.CdsStAm1Getbalam1.AsFloat :=  Fdm.CdsStAm1Getamtam1.AsFloat;


  ch:= FDM.StAm1InsUpd(
        Fdm.CdsStAm1Getstsam1.AsString ,
        Fdm.CdsStAm1Getcmpam1.AsString ,
        Fdm.CdsStAm1Getbrnam1.AsString ,
        Fdm.CdsStAm1Getcnoam1.AsString ,
        Fdm.CdsStAm1Getidtam1.AsFloat,
        Fdm.CdsStAm1Getdnoam1.AsString ,
        Fdm.CdsStAm1Getdepam1.AsString ,
        Fdm.CdsStAm1GetSERAM1.AsString,
        Fdm.CdsStAm1GetDDTAM1.AsFloat,
        Fdm.CdsStAm1Getamtam1.AsFloat,
        Fdm.CdsStAm1Getbalam1.AsFloat,
        md
      );

  if ch  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStArOvdAmtData.ShowEdtAmt();
begin
   IDTAM1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStAm1GetIDTAM1.AsDateTime);
   DDTAM1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStAm1GetDDTAM1.AsDateTime);

   AMTAM1.Text := FormatFloat('#,##0.00',Fdm.CdsStAm1GetAMTAM1.AsFloat);
   BALAM1.Text := FormatFloat('#,##0.00',Fdm.CdsStAm1GetBALAM1.AsFloat);
end;

procedure TfrmStArOvdAmtData.CmbBrnCloseUp(Sender: TObject);
begin
  Fdm.CdsStAm1GetCNOAM1.AsString := '';
  Fdm.CdsStAm1GetTNMCM1.AsString := '';
  Fdm.CdsStAm1GetCTPCM1.AsString := '';
  Fdm.CdsStAm1GetSMNCM1.AsString := '';
  Fdm.CdsStAm1GetDDTAM1.AsDateTime := 0;
  DDTAM1.Text := '';
end;

procedure TfrmStArOvdAmtData.ContractSelected(cnocm1,tnmcm1,ctpcm1,smncm1: String;crtam3 : integer);
begin
  Fdm.CdsStAm1GetCNOAM1.AsString := cnocm1;
  Fdm.CdsStAm1GetTNMCM1.AsString := tnmcm1;
  Fdm.CdsStAm1GetCTPCM1.AsString := ctpcm1;
  Fdm.CdsStAm1GetSMNCM1.AsString := smncm1;

  fdm.CdsStAm1GetDDTAM1.AsFloat := fdm.CdsStAm1GetIDTAM1.AsFloat +  crtam3;
  DDTAM1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStAm1GetDDTAM1.AsDateTime);

end;


procedure TfrmStArOvdAmtData.DDTAM1Change(Sender: TObject);
begin
  if Trim(DDTAM1.Text) = '' then
    Fdm.CdsStAm1GetDDTAM1.AsDateTime := 0
  else
   Fdm.CdsStAm1GetDDTAM1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(DDTAM1.DateTime);

end;

procedure TfrmStArOvdAmtData.BtnSelectCnoClick(Sender: TObject);
begin
  if fdm.CdsStAm1GetBRNAM1.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupAr.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกลูกค้า',
         fdm.CdsStAm1GetCMPAM1.AsString,fdm.CdsStAm1GetBRNAM1.AsString);

    OnSelectData := ContractSelected;
    ShowModal();
  end;
end;

procedure TfrmStArOvdAmtData.IDTAM1Change(Sender: TObject);
begin
  if Trim(IDTAM1.Text) = '' then
    Fdm.CdsStAm1GetIDTAM1.AsDateTime := 0
  else
   Fdm.CdsStAm1GetIDTAM1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(IDTAM1.DateTime);


end;

procedure TfrmStArOvdAmtData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStAm1Get;

   CmbSTS.ListSource := Fdm.GetDSC('STS');
   CmbBrn.ListSource := Fdm.GetDSC('BRN');
   CmbDEP.ListSource := Fdm.GetDSC('DP');
   CmbCTPCM1.ListSource := Fdm.GetDSC('CT');
   CmbPSNCM1.ListSource := Fdm.GetDSC('SM');

   CmbCTPCM1.ReadOnly := True;
   CmbPSNCM1.ReadOnly := True;
   CmbSTS.ReadOnly := True;

  if (fdm.CdsStAm1Get.State in [dsInsert]) then
  begin
//     SERAM1.ReadOnly := False;
     btnConfirm.Visible := True;

   IDTAM1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStAm1GetIDTAM1.AsDateTime);
   DDTAM1.Text := '';

   AMTAM1.Text := FormatFloat('#,##0.00',Fdm.CdsStAm1GetAMTAM1.AsFloat);
   BALAM1.Text := FormatFloat('#,##0.00',Fdm.CdsStAm1GetBALAM1.AsFloat);

  end
  else if (fdm.CdsStAm1Get.State in [dsEdit]) then
  begin
     CMPAM1.ReadOnly := True;
     CmbBrn.ReadOnly := True;
     BtnSelectCno.Enabled := False;
     DNOAM1.ReadOnly := True;
     DbCNOAM1.ReadOnly := True;

     btnConfirm.Visible := True;

     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectCno.Enabled := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;


end.
