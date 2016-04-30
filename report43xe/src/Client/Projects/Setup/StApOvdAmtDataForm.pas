unit StApOvdAmtDataForm;

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
  TfrmStApOvdAmtData = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel24: TUniLabel;
    LbCreditLineDate: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    CmbBrn: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    CMPym1: TUniDBEdit;
    DNOym1: TUniDBEdit;
    IDTym1: TUniDateTimePicker;
    DbvNOym1: TUniDBEdit;
    UniLabel5: TUniLabel;
    BtnSelectvno: TUniButton;
    CmbSTS: TUniDBLookupComboBox;
    CmbVTPVM1: TUniDBLookupComboBox;
    CmbDEP: TUniDBLookupComboBox;
    SERym1: TUniDBEdit;
    DDTym1: TUniDateTimePicker;
    AMTym1: TUniEdit;
    BALym1: TUniEdit;
    LBPOYM1: TUniLabel;
    POYM1: TUniDBEdit;
    AVTYM1: TUniEdit;
    ABTYM1: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel6: TUniLabel;
    CmbVAT: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    UniLabel14: TUniLabel;
    CmbDCD: TUniDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectvnoClick(Sender: TObject);
    procedure BALym1Exit(Sender: TObject);
    procedure DDTym1Change(Sender: TObject);
    procedure IDTym1Change(Sender: TObject);
    procedure ABTYM1Exit(Sender: TObject);
    procedure CmbVATCloseUp(Sender: TObject);
    procedure CmbBrnCloseUp(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure CalVATAMT();
    procedure ContractSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStApOvdAmtData: TfrmStApOvdAmtData;

implementation

{$R *.dfm}

uses PopupApForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStApOvdAmtData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStApOvdAmtData.CalVATAMT();
begin
  if fdm.CdsStYm1GetVATYM1.AsString = 'Y' then
  begin
    fdm.CdsStYm1GetAVTYM1.AsFloat := fdm.CdsStYm1GetABTYM1.AsFloat * 7.00/100;
    fdm.CdsStYm1GetAMTYM1.AsFloat := fdm.CdsStYm1GetABTYM1.AsFloat + fdm.CdsStYm1GetAVTYM1.AsFloat;

    AVTYM1.Text := FormatFloat('#,##0.00',Fdm.CdsStYm1GetAVTYM1.AsFloat);
    AMTYM1.Text := FormatFloat('#,##0.00',Fdm.CdsStYm1GetAMTYM1.AsFloat);

  end
  else
  begin
    fdm.CdsStYm1GetAVTYM1.AsFloat := 0;
    fdm.CdsStYm1GetAMTYM1.AsFloat := fdm.CdsStYm1GetABTYM1.AsFloat + fdm.CdsStYm1GetAVTYM1.AsFloat;

    AVTYM1.Text := FormatFloat('#,##0.00',Fdm.CdsStYm1GetAVTYM1.AsFloat);
    AMTYM1.Text := FormatFloat('#,##0.00',Fdm.CdsStYm1GetAMTYM1.AsFloat);

  end;

end;

procedure TfrmStApOvdAmtData.ABTYM1Exit(Sender: TObject);
begin
  checkCur(ABTYM1,Fdm.CdsStym1Get);
  CalVATAMT();
end;

procedure TfrmStApOvdAmtData.BALym1Exit(Sender: TObject);
begin
  checkCur(BALym1,Fdm.CdsStym1Get);

end;

procedure TfrmStApOvdAmtData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStym1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStym1Get.Cancel();
  inherited;

end;

procedure TfrmStApOvdAmtData.btnConfirmClick(Sender: TObject);
var ch ,ch2: Boolean;
  md : String;
begin
  if ((fdm.CdsStYm1GetBRNYM1.AsString = '') or
      (fdm.CdsStYm1GetDNOYM1.AsString = '') or
      (fdm.CdsStYm1GetVNOYM1.AsString = '') or
      (fdm.CdsStYm1GetABTYM1.AsFloat <= 0)
     ) then
  begin
    ShowMessage('กรอกข้อมูลเบื่องต้นไม่ครบถ้วน');
    Exit;

  end;

  if Fdm.CdsStym1Getbalym1.AsFloat > Fdm.CdsStym1GetAMTym1.AsFloat then
  begin
    ShowMessage('ยอดคงเหลือ มากกว่า จำนวนเงิน ไม่ได้');
    exit;
  end;


  if Fdm.CdsStym1Get.State in [dsInsert] then
    md := 'I'

  else
    md := 'E';

  Fdm.CdsStym1Getyarym1.Asinteger := StrToInt(FormatDateTime('yyyy',Now));

  if Fdm.CdsStym1Getbalym1.AsFloat = 0 then
     Fdm.CdsStym1Getbalym1.AsFloat :=  Fdm.CdsStym1Getamtym1.AsFloat;


  ch:= FDM.Stym1InsUpd(
        Fdm.CdsStym1Getstsym1.AsString ,
        Fdm.CdsStym1Getdcdym1.AsString ,
        Fdm.CdsStym1Getcmpym1.AsString ,
        Fdm.CdsStym1Getbrnym1.AsString ,
        Fdm.CdsStym1Getvnoym1.AsString ,
        Fdm.CdsStym1Getidtym1.AsFloat,
        Fdm.CdsStym1Getdnoym1.AsString ,
        Fdm.CdsStym1Getdepym1.AsString ,
        Fdm.CdsStym1GetABTYM1.AsFloat ,
        Fdm.CdsStym1GetVATYM1.AsString ,
        Fdm.CdsStym1GetAVTYM1.AsFloat ,
        Fdm.CdsStym1GetPOYM1.AsInteger ,
        Fdm.CdsStym1GetSERym1.AsString,
        Fdm.CdsStym1GetDDTym1.AsFloat,
        Fdm.CdsStym1Getamtym1.AsFloat,
        Fdm.CdsStym1Getbalym1.AsFloat,
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

procedure TfrmStApOvdAmtData.ShowEdtAmt();
begin
   IDTym1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStym1GetIDTym1.AsDateTime);
   DDTym1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStym1GetDDTym1.AsDateTime);

   ABTYM1.Text := FormatFloat('#,##0.00',Fdm.CdsStym1GetABTYM1.AsFloat);
   AVTYM1.Text := FormatFloat('#,##0.00',Fdm.CdsStym1GetAVTYM1.AsFloat);
   AMTym1.Text := FormatFloat('#,##0.00',Fdm.CdsStym1GetAMTym1.AsFloat);
   BALym1.Text := FormatFloat('#,##0.00',Fdm.CdsStym1GetBALym1.AsFloat);
end;

procedure TfrmStApOvdAmtData.CmbBrnCloseUp(Sender: TObject);
begin
  Fdm.CdsStym1GetvNOym1.AsString := '';
  Fdm.CdsStym1GetTNMvM1.AsString := '';
  Fdm.CdsStym1GetvTPvM1.AsString := '';
  Fdm.CdsStym1GetDDTym1.AsDateTime := 0;
  DDTym1.Text := '';
end;

procedure TfrmStApOvdAmtData.CmbVATCloseUp(Sender: TObject);
begin
  CalVATAMT();

end;

procedure TfrmStApOvdAmtData.ContractSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
begin
  Fdm.CdsStym1GetvNOym1.AsString := vnovm1;
  Fdm.CdsStym1GetTNMvM1.AsString := tnmvm1;
  Fdm.CdsStym1GetvTPvM1.AsString := vtpvm1;

  fdm.CdsStym1GetDDTym1.AsFloat := fdm.CdsStym1GetIDTym1.AsFloat +  crtym3;
  DDTym1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStym1GetDDTym1.AsDateTime);

end;


procedure TfrmStApOvdAmtData.DDTym1Change(Sender: TObject);
begin
  if Trim(DDTym1.Text) = '' then
    Fdm.CdsStym1GetDDTym1.AsDateTime := 0
  else
   Fdm.CdsStym1GetDDTym1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(DDTym1.DateTime);

end;

procedure TfrmStApOvdAmtData.BtnSelectvnoClick(Sender: TObject);
begin
  if fdm.CdsStym1GetBRNym1.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกเจ้าหนี้',
         fdm.CdsStYm1GetCMPYM1.AsString,fdm.CdsStym1GetBRNym1.AsString);

    OnSelectData := ContractSelected;
    ShowModal();
  end;
end;

procedure TfrmStApOvdAmtData.IDTym1Change(Sender: TObject);
begin
  if Trim(IDTym1.Text) = '' then
    Fdm.CdsStym1GetIDTym1.AsDateTime := 0
  else
   Fdm.CdsStym1GetIDTym1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(IDTym1.DateTime);


end;

procedure TfrmStApOvdAmtData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStym1Get;

   CmbSTS.ListSource := Fdm.GetDSC('STS');
   CmbBrn.ListSource := Fdm.GetDSC('BRN');
   CmbDEP.ListSource := Fdm.GetDSC('DP');
   CmbVTPVM1.ListSource := Fdm.GetDSC('CT');
   CmbVAT.ListSource := Fdm.GetDSC('HN');
   CmbDCD.ListSource := Fdm.GetDSC('DCD');

   CmbVTPVM1.ReadOnly := True;
   CmbSTS.ReadOnly := True;

  if (fdm.CdsStym1Get.State in [dsInsert]) then
  begin
//     SERym1.ReadOnly := False;
     btnConfirm.Visible := True;

   IDTym1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStym1GetIDTym1.AsDateTime);
   DDTym1.Text := '';

   AMTym1.Text := FormatFloat('#,##0.00',Fdm.CdsStym1GetAMTym1.AsFloat);
   BALym1.Text := FormatFloat('#,##0.00',Fdm.CdsStym1GetBALym1.AsFloat);

  end
  else if (fdm.CdsStym1Get.State in [dsEdit]) then
  begin
     CMPym1.ReadOnly := True;
     CmbBrn.ReadOnly := True;
     BtnSelectvno.Enabled := False;
     DNOym1.ReadOnly := True;
     DbvNOym1.ReadOnly := True;

     btnConfirm.Visible := True;

     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectvno.Enabled := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;


end.
