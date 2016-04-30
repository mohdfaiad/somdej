unit RgRegistationToOutDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx, DSSetupIntfDM,DSRegistationIntfDM,   DSCarSaleIntfDM,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage, uniSplitter, Datasnap.DBClient;

type
  TfrmRgRegistationToOutData = class(TMainDataForm)
    UniLabel6: TUniLabel;
    UniLabel13: TUniLabel;
    dsgrid: TDataSource;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPRG1: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNRG1: TUniDBLookupComboBox;
    DEPOT5lb: TUniLabel;
    DEPRG1: TUniDBLookupComboBox;
    DNORG1: TUniDBEdit;
    IDTRG1: TUniDateTimePicker;
    PnSub: TUniPanel;
    dsRg1GetByNo: TDataSource;
    pnSubHead: TUniPanel;
    BtnAdd: TUniButton;
    BtnDelete: TUniButton;
    UniLabel2: TUniLabel;
    EdtSumAmtRt4: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    EDTRG1: TUniDateTimePicker;
    VNORG1: TUniDBEdit;
    BtnSelectVNORG1: TUniButton;
    DbRg1: TUniDBGrid;
    TYPRG1: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    tnmvm1: TUniDBEdit;
    procedure BtnAddClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnSelectVNORG1Click(Sender: TObject);
    procedure EDTRG1Change(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSRegistationDM;
    FSetUpDm : TDSSetUpDm;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;
    FG : STRING;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmtAndDate();


    procedure GetOm5;
    procedure GetRG1;

    procedure _Confirm(AResult: Integer);


    procedure _SumAmt(SumAmt : Double);
    procedure CallSumAmt();
    procedure Vm1Selected(VNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
  public
    procedure Init(DM : TDSRegistationDM; _FG : STRING);
//    property  DM : TDSRegistationDM read FDM;
  end;

var
  frmRgRegistationToOutData: TfrmRgRegistationToOutData;

implementation

{$R *.dfm}


uses Math, PopupRegistationOm5Form,PopupApForm;

procedure TfrmRgRegistationToOutData.ShowEdtAmtAndDate();
begin
   IDTRG1.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG1GetListIDTRG1.AsDateTime);

   ddyyyy.Text := copy(IDTRG1.Text,4,7);

//   AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAMTRG1.AsFloat);
end;


procedure TfrmRgRegistationToOutData.GetOm5;
begin
  Fdm.CdsRg1GetOm5.Close;
  if Fdm.TtRG1GetOm5(Fdm.CdsRG1GetListCMPRG1.AsString, Fdm.CdsRG1GetListBRNRG1.AsString,Fdm.CdsRg1GetListTYPRG1.AsString) then
    Fdm.CdsRg1GetOm5.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRgRegistationToOutData.GetRG1;
begin
  Fdm.CdsRG1GetByNo.Close;
  if Fdm.TtRG1GetByNo(Fdm.CdsRG1GetListYARRG1.AsInteger,Fdm.CdsRG1GetListPRDRG1.AsInteger,
     Fdm.CdsRG1GetListCMPRG1.AsString, Fdm.CdsRG1GetListBRNRG1.AsString,Fdm.CdsRG1GetListDCDRG1.AsString,
     Fdm.CdsRG1GetListDNORG1.AsInteger,'P') then
    Fdm.CdsRG1GetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRgRegistationToOutData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsRG1GetList.State in [dsInsert, dsEdit] then
    Fdm.CdsRG1GetList.Cancel;

  if Fdm.CdsRG1GetByNo.Active then
     Fdm.CdsRG1GetByNo.Close;

  fdm.CdsRG1GetList.Close;
  fdm.CdsRG1GetList.Open;
  inherited;
end;

procedure TfrmRgRegistationToOutData.btnConfirmClick(Sender: TObject);
var Out_DnoRG1 : Integer;
    ch : Boolean;
begin
  if fDM.CdsRG1GetByNo.IsEmpty then
  begin
    ShowMessage('ไม่มีรายการรับชำระ กรุณากรอกรายการก่อน');
    Exit;
  end;

  btnConfirm.Enabled := False;
  Out_DnoRG1 := Fdm.CdsRG1GetListDNORG1.AsInteger;

  if Fdm.CdsRG1GetList.State in [dsInsert] then
  BEGIN

    if not (Fdm.TtInsUpdHead(Fdm.CdsRG1GetListCMPRG1.AsString,Fdm.CdsRG1GetListBRNRG1.AsString,
      Fdm.CdsRG1GetListYARRG1.AsInteger,Fdm.CdsRG1GetListPRDRG1.AsInteger,
      Fdm.CdsRG1GetListDCDRG1.AsString,Out_DnoRG1)) then
    begin
      showmessage('เกิดข้อผิดพลาด TtInsUpdHead');
      btnConfirm.Enabled := True;
      exit;
    end

  END;

  Fdm.CdsRG1GetListDNORG1.AsInteger := Out_DnoRG1;

  Fdm.CdsRG1GetByNo.First;
  while not (Fdm.CdsRG1GetByNo.Eof) do
  begin
    ch := Fdm.TtRG1InsUpd(
      Fdm.CdsRG1GetListCMPRG1.AsString,
      Fdm.CdsRG1GetListBRNRG1.AsString,
      Fdm.CdsRG1GetListYARRG1.AsInteger,
      Fdm.CdsRG1GetListPRDRG1.AsInteger,
      Fdm.CdsRG1GetListDCDRG1.AsString,
      Fdm.CdsRG1GetListDNORG1.AsInteger,
      Fdm.CdsRG1GetByNo.RecNo,
      Fdm.CdsRG1GetListIDTRG1.AsFloat,
      Fdm.CdsRg1GetByNoRDCRG1.AsString,
      Fdm.CdsRg1GetByNoRDNRG1.AsInteger,
      FDM.CdsRg1GetByNoRSQRG1.AsInteger,
      Fdm.CdsRg1GetByNoRDTRG1.AsFloat,
      Fdm.CdsRg1GetListDEPRG1.AsString,
      Fdm.CdsRg1GetListEDTRG1.AsFloat,
      Fdm.CdsRg1GetListVNORG1.AsString,
      Fdm.CdsRG1GetListTYPRG1.AsString,
      Fdm.CdsRg1GetByNoARSRG1.AsFloat,
      'N',
      'Admin');
      Fdm.CdsRG1GetByNo.Next;
  end;

  GetRG1();
 
  showmessage('บันทึกเรียบร้อยแล้ว');
  btnConfirm.Enabled := False;

end;

procedure TfrmRgRegistationToOutData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmRgRegistationToOutData.EDTRG1Change(Sender: TObject);
begin
  if Trim(EDTRG1.Text) = '' then
    Fdm.CdsRg1GetListEDTRG1.AsDateTime := 0
  else
  begin
   Fdm.CdsRg1GetListEDTRG1.AsDateTime :=
     Fdm.FSBuddhistDateToDate(EDTRG1.DateTime);
  end;

end;

procedure TfrmRgRegistationToOutData.CallSumAmt();
var SumAmt : Double;
begin
  SumAmt := 0;

  Fdm.CdsRG1GetByNo.First;
  while not Fdm.CdsRG1GetByNo.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsRg1GetByNoARSRG1.AsFloat;
    Fdm.CdsRG1GetByNo.Next;
  end;
   EdtSumAmtRt4.Text := FormatFloat('#,##0.00',SumAmt);
end;

procedure TfrmRgRegistationToOutData._SumAmt(SumAmt : Double);
begin
   CallSumAmt();
end;

procedure TfrmRgRegistationToOutData.BtnAddClick(Sender: TObject);
begin
  if fDM.CdsRg1GetListTYPRG1.AsString = '' then
  BEGIN
    ShowMessage('');
    Exit;
  END;

  GetOm5();

  with TfrmPopupRegistationOm5.Create(UniApplication) do
  begin
    Init(FDM,'','',FG);

    OnSumAmt := _SumAmt;
    ShowModal();
  end;

end;

procedure TfrmRgRegistationToOutData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
    begin
       fdm.CdsRG1GetByNo.Delete();
       CallSumAmt();
    end
  end;
end;


procedure TfrmRgRegistationToOutData.BtnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsRG1GetByNo.Active) or
    (Fdm.CdsRG1GetByNo.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

//  if RecordVerify() then
  if True then
  begin
    MessageDlg('คุณต้องการลบข้อมูลใช่หรือไม่?', mtConfirmation, mbYesNo,
      _Confirm);
  end
  else
    ShowMessage('ไม่สามารถทำการลบข้อมูลได้เนื่องจาก ' +
      Fdm.GetLastErrorMessage);
end;

procedure TfrmRgRegistationToOutData.Vm1Selected(VNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
begin
  Fdm.CdsRg1GetListVNORG1.AsString := VNOvm1;
  Fdm.CdsRg1GetListTNMVM1.AsString := TNMvm1;
end;

procedure TfrmRgRegistationToOutData.BtnSelectVNORG1Click(Sender: TObject);
begin
  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกผู้รับเหมา', Fdm.CMPUser,Fdm.BRNUser);

    OnSelectData := Vm1Selected;
    ShowModal();
  end;

end;

procedure TfrmRgRegistationToOutData.Init(DM : TDSRegistationDM; _FG : STRING);
begin

    FUserSession :=  UniMainModule();
    FSetupDM:= FUsersession.DSSetupDM;

    Fdm := dm;
    FG := _FG;

   dsgrid.DataSet := Fdm.CdsRG1GetList;
   dsRG1GetByNo.DataSet := Fdm.CdsRG1GetByNo;

   BRNRG1.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPRG1.ListSource := Fdm.GetDSC('DP'); //แผนก
   TYPRG1.ListSource := Fdm.GetDSC('TYP'); // บุคคลจ่ายเงิน default ลูกค้า

  if (fdm.CdsRG1GetList.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTRG1.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG1GetListIDTRG1.AsDateTime);
    EDTRG1.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG1GetListEDTRG1.AsDateTime);

    ddyyyy.Text := copy(IDTRG1.Text,4,7);

    GetRG1();

    ShowEdtAmtAndDate();

  end
  else if (fdm.CdsRG1GetList.State in [dsEdit]) then
  begin
     CMPRG1.ReadOnly := True;
     BRNRG1.ReadOnly := True;
     DEPRG1.ReadOnly := True;
     IDTRG1.ReadOnly := True;
     BtnSelectVNORG1.Visible := False;
//     TYPRG1.ReadOnly := True;

     ShowEdtAmtAndDate();
     GetOm5();
     GetRG1();
     CallSumAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectVNORG1.Visible := False;

     ShowEdtAmtAndDate();
     GetRG1();
     CallSumAmt();

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
