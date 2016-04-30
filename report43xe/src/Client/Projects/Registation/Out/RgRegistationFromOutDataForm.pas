unit RgRegistationFromOutDataForm;

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
  TfrmRgRegistationFromOutData = class(TMainDataForm)
    UniLabel6: TUniLabel;
    UniLabel13: TUniLabel;
    DbGt1: TUniDBGrid;
    dsgrid: TDataSource;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPRG2: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNRG2: TUniDBLookupComboBox;
    DEPOT5lb: TUniLabel;
    DEPRG2: TUniDBLookupComboBox;
    DNORG2: TUniDBEdit;
    IDTRG2: TUniDateTimePicker;
    PnRg2: TUniPanel;
    SplitAm4AndRt4: TUniSplitter;
    dsRg2GetByNo: TDataSource;
    dsGetGt1: TDataSource;
    DbRg2: TUniDBGrid;
    pnHeadRg2: TUniPanel;
    BtnAdd: TUniButton;
    BtnDelete: TUniButton;
    UniLabel2: TUniLabel;
    EdtSumAmtRt4: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    RDTRG2: TUniDateTimePicker;
    RDNRG2: TUniDBEdit;
    BtnSelectRDNRG2: TUniButton;
    UniLabel4: TUniLabel;
    TYPRG2: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    EDTRG2: TUniDateTimePicker;
    UniLabel7: TUniLabel;
    BDTRG2: TUniDateTimePicker;
    UniLabel8: TUniLabel;
    tnmvm1: TUniDBEdit;
    procedure BtnAddClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnSelectRDNRG2Click(Sender: TObject);
    procedure BDTRG2Change(Sender: TObject);

  private

    Fdm : TDSRegistationDM;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;
    FG : STRING;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmtAndDate();


    procedure GetRG1;
    procedure GetRG2;
    procedure GetGt1;

    procedure _Confirm(AResult: Integer);


    procedure _SumAmt(SumAmt : Double);
    procedure CallSumAmt();
    procedure RG1Selected(DCDRG1: String;DNORG1:INTEGER;IDTRG1,EDTRG1:DOUBLE;VNORG1:STRING);
  public
    procedure Init(DM : TDSRegistationDM; _FG : STRING);
//    property  DM : TDSRegistationDM read FDM;
  end;

var
  frmRgRegistationFromOutData: TfrmRgRegistationFromOutData;

implementation

{$R *.dfm}


uses Math,PopupRegistationRg1ListForRg2Form, PopupRegistationRg1Form;

procedure TfrmRgRegistationFromOutData.ShowEdtAmtAndDate();
begin
   IDTRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG2GetListIDTRG2.AsDateTime);
   BDTRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRg2GetListBDTRG2.AsDateTime);

   ddyyyy.Text := copy(IDTRG2.Text,4,7);

//   AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAMTRG2.AsFloat);
end;


procedure TfrmRgRegistationFromOutData.GetRG1;
begin
  Fdm.CdsRG1GetByNo.Close;
  if Fdm.TtRG1GetByNo(Fdm.CdsRG2GetListYARRG2.AsInteger,Fdm.CdsRG2GetListPRDRG2.AsInteger,
     Fdm.CdsRG2GetListCMPRG2.AsString, Fdm.CdsRG2GetListBRNRG2.AsString,Fdm.CdsRG2GetListRDCRG2.AsString,
     Fdm.CdsRG2GetListRDNRG2.AsInteger,'N') then
    Fdm.CdsRG1GetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRgRegistationFromOutData.GetRG2;
begin
  Fdm.CdsRG2GetByNo.Close;
  if Fdm.TtRG2GetByNo(Fdm.CdsRG2GetListYARRG2.AsInteger,Fdm.CdsRG2GetListPRDRG2.AsInteger,
     Fdm.CdsRG2GetListCMPRG2.AsString, Fdm.CdsRG2GetListBRNRG2.AsString,Fdm.CdsRG2GetListDCDRG2.AsString,
     Fdm.CdsRG2GetListDNORG2.AsInteger,'P') then
    Fdm.CdsRG2GetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRgRegistationFromOutData.GetGt1;
begin
  Fdm.CdsTtGetGt1ByNo.Close;
  if Fdm.TtGetGT1ByNo(Fdm.CdsRG2GetListYARRG2.AsInteger,Fdm.CdsRG2GetListPRDRG2.AsInteger,
     Fdm.CdsRG2GetListCMPRG2.AsString, Fdm.CdsRG2GetListBRNRG2.AsString,Fdm.CdsRG2GetListDCDRG2.AsString,
     Fdm.CdsRG2GetListDNORG2.AsInteger) then
    Fdm.CdsTtGetGt1ByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;


procedure TfrmRgRegistationFromOutData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsRG2GetList.State in [dsInsert, dsEdit] then
    Fdm.CdsRG2GetList.Cancel;

  if Fdm.CdsRG2GetByNo.Active then
     Fdm.CdsRG2GetByNo.Close;

  if Fdm.CdsTtGetGt1ByNo.Active then
     Fdm.CdsTtGetGt1ByNo.Close;

  fdm.CdsRG2GetList.Close;
  fdm.CdsRG2GetList.Open;
  inherited;
end;

procedure TfrmRgRegistationFromOutData.btnConfirmClick(Sender: TObject);
var Out_DnoRG2 : Integer;
    ch : Boolean;
begin
 if fDM.CdsRG2GetByNo.IsEmpty then
  begin
    ShowMessage('ไม่มีรายการ กรุณากรอกรายการก่อน');
    Exit;
  end;

  btnConfirm.Enabled := False;
  Out_DnoRG2 := Fdm.CdsRG2GetListDNORG2.AsInteger;

  if Fdm.CdsRG2GetList.State in [dsInsert] then
  BEGIN

    if not (Fdm.TtInsUpdHead(Fdm.CdsRG2GetListCMPRG2.AsString,Fdm.CdsRG2GetListBRNRG2.AsString,
      Fdm.CdsRG2GetListYARRG2.AsInteger,Fdm.CdsRG2GetListPRDRG2.AsInteger,
      Fdm.CdsRG2GetListDCDRG2.AsString,Out_DnoRG2)) then
    begin
      showmessage('เกิดข้อผิดพลาด TtInsUpdHead');
      exit;
    end

  END;

  Fdm.CdsRG2GetListDNORG2.AsInteger := Out_DnoRG2;

  Fdm.CdsRG2GetByNo.First;
  while not (Fdm.CdsRG2GetByNo.Eof) do
  begin
    ch := Fdm.TtRG2InsUpd(
      Fdm.CdsRG2GetListCMPRG2.AsString,
      Fdm.CdsRG2GetListBRNRG2.AsString,
      Fdm.CdsRG2GetListYARRG2.AsInteger,
      Fdm.CdsRG2GetListPRDRG2.AsInteger,
      Fdm.CdsRG2GetListDCDRG2.AsString,
      Fdm.CdsRG2GetListDNORG2.AsInteger,
      Fdm.CdsRG2GetByNo.RecNo,
      Fdm.CdsRG2GetListIDTRG2.AsFloat,
      Fdm.CdsRg2GetByNoRDCRG2.AsString,
      Fdm.CdsRg2GetByNoRDNRG2.AsInteger,
      FDM.CdsRg2GetByNoRSQRG2.AsInteger,
      Fdm.CdsRg2GetByNoRDTRG2.AsFloat,
      Fdm.CdsRG2GetListDEPRG2.AsString,
      Fdm.CdsRG2GetListEDTRG2.AsFloat,
      Fdm.CdsRG2GetListBDTRG2.AsFloat,
      Fdm.CdsRg2GetListVNORG2.AsString,
      Fdm.CdsRG2GetListTYPRG2.AsString,
      Fdm.CdsRg2GetByNoARSRG2.AsFloat,
      'N',
      Fdm.CdsRg2GetByNoSEROM5.AsString,
      Fdm.CdsRg2GetByNoPRVRG2.AsString,
      Fdm.CdsRg2GetByNoREGRG2.AsString,
      Fdm.CdsRg2GetByNoRENRG2.AsInteger,
      Fdm.CdsRg2GetByNoRVDRG2.AsFloat,
      Fdm.CdsRg2GetByNoRVNRG2.AsInteger,
      Fdm.CdsRg2GetByNoARARG2.AsFloat,
      Fdm.CdsRg2GetByNoAOARG2.AsFloat,
      'Admin');
      Fdm.CdsRG2GetByNo.Next;
  end;

    ch := Fdm.TtRG2InsUpd(
      Fdm.CdsRG2GetListCMPRG2.AsString,
      Fdm.CdsRG2GetListBRNRG2.AsString,
      Fdm.CdsRG2GetListYARRG2.AsInteger,
      Fdm.CdsRG2GetListPRDRG2.AsInteger,
      Fdm.CdsRG2GetListDCDRG2.AsString,
      Fdm.CdsRG2GetListDNORG2.AsInteger,
      Fdm.CdsRG2GetByNo.RecNo,
      Fdm.CdsRG2GetListIDTRG2.AsFloat,
      Fdm.CdsRg2GetByNoRDCRG2.AsString,
      Fdm.CdsRg2GetByNoRDNRG2.AsInteger,
      FDM.CdsRg2GetByNoRSQRG2.AsInteger,
      Fdm.CdsRg2GetByNoRDTRG2.AsFloat,
      Fdm.CdsRG2GetListDEPRG2.AsString,
      Fdm.CdsRG2GetListEDTRG2.AsFloat,
      Fdm.CdsRG2GetListBDTRG2.AsFloat,
      Fdm.CdsRg2GetListVNORG2.AsString,
      Fdm.CdsRG2GetListTYPRG2.AsString,
      Fdm.CdsRg2GetByNoARSRG2.AsFloat,
      'L',
      Fdm.CdsRg2GetByNoSEROM5.AsString,
      Fdm.CdsRg2GetByNoPRDRG2.AsString,
      Fdm.CdsRg2GetByNoREGRG2.AsString,
      Fdm.CdsRg2GetByNoRENRG2.AsInteger,
      Fdm.CdsRg2GetByNoRVDRG2.AsFloat,
      Fdm.CdsRg2GetByNoRVNRG2.AsInteger,
      Fdm.CdsRg2GetByNoARARG2.AsFloat,
      Fdm.CdsRg2GetByNoAOARG2.AsFloat,
      'Admin');

  GetRG2();
  GetGt1();

  Close;
end;

procedure TfrmRgRegistationFromOutData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmRgRegistationFromOutData.CallSumAmt();
var SumAmt : Double;
begin
  SumAmt := 0;

  Fdm.CdsRG2GetByNo.First;
  while not Fdm.CdsRG2GetByNo.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsRg2GetByNoARSRG2.AsFloat;
    Fdm.CdsRG2GetByNo.Next;
  end;
   EdtSumAmtRt4.Text := FormatFloat('#,##0.00',SumAmt);
end;

procedure TfrmRgRegistationFromOutData._SumAmt(SumAmt : Double);
begin
   CallSumAmt();
end;

procedure TfrmRgRegistationFromOutData.BDTRG2Change(Sender: TObject);
begin
  if Trim(BDTRG2.Text) = '' then
    Fdm.CdsRg2GetListBDTRG2.AsDateTime := 0
  else
  begin
   Fdm.CdsRg2GetListBDTRG2.AsDateTime :=
     Fdm.FSBuddhistDateToDate(BDTRG2.DateTime);
  end;

end;

procedure TfrmRgRegistationFromOutData.BtnAddClick(Sender: TObject);
{begin
  if fDM.CdsRG2GetListRDNRG2.AsString = '' then
  BEGIN
    ShowMessage('อ้างใบเบิกเงินทดรองจ่ายป้ายแดง ต้องมีค่าก่อนเพิ่ม');
    Exit;
  END;

  GetRG1();

  with TfrmPopupRegistationRg1.Create(UniApplication) do
  begin
    Init(FDM,'','',FG);

    OnSumAmt := _SumAmt;
    ShowModal();
  end;

  }

  var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupRegistationRg1).Create(UniApplication);

  TfrmPopupRegistationRg1(_Form).Init(FDM,'','',FG);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;
    _Form.Top := Top;
    _Form.Left := Left;
    _Form.Height := Height;
    _Form.Width := Width;
    _Form.WebForm.ExtWindow.Draggable := False;
    _Form.WebForm.ExtWindow.Resizable := False;
    _Form.Show();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;

end;

procedure TfrmRgRegistationFromOutData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
    begin
       fdm.CdsRG2GetByNo.Delete();
       CallSumAmt();
    end
  end;
end;


procedure TfrmRgRegistationFromOutData.BtnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsRG2GetByNo.Active) or
    (Fdm.CdsRG2GetByNo.IsEmpty) then
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

procedure TfrmRgRegistationFromOutData.RG1Selected(DCDRG1: String;DNORG1:INTEGER;IDTRG1,EDTRG1:DOUBLE;VNORG1:STRING);
begin
  Fdm.CdsRG2GetListRDCRG2.AsString := DCDRG1;
  Fdm.CdsRG2GetListRDNRG2.AsInteger := DNORG1;
  Fdm.CdsRG2GetListRDTRG2.AsFloat := IDTRG1;
  Fdm.CdsRG2GetListEDTRG2.AsFloat := EDTRG1;
  Fdm.CdsRg2GetListVNORG2.AsString := VNORG1;

  RDTRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG2GetListRDTRG2.AsDateTime);
  EDTRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG2GetListEDTRG2.AsDateTime);
  GetRG1();
end;

procedure TfrmRgRegistationFromOutData.BtnSelectRDNRG2Click(Sender: TObject);
begin
  with TfrmPopupRegistationRg1ListForRg2.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกรายการส่งงานนอก');

    OnSelectData := RG1Selected;
    ShowModal();
  end;


end;

procedure TfrmRgRegistationFromOutData.Init(DM : TDSRegistationDM; _FG : STRING);
begin

    Fdm := dm;
    FG := _FG;

   dsgrid.DataSet := Fdm.CdsRG2GetList;
   dsRG2GetByNo.DataSet := Fdm.CdsRG2GetByNo;
   dsGetGt1.DataSet := Fdm.CdsTtGetGt1ByNo;

   BRNRG2.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPRG2.ListSource := Fdm.GetDSC('DP'); //แผนก
   TYPRG2.ListSource := Fdm.GetDSC('TYP'); // บุคคลจ่ายเงิน default ลูกค้า

  if (fdm.CdsRG2GetList.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG2GetListIDTRG2.AsDateTime);

    ddyyyy.Text := copy(IDTRG2.Text,4,7);

     GetRG2();
     GetGt1();

    ShowEdtAmtAndDate();

  end
  else if (fdm.CdsRG2GetList.State in [dsEdit]) then
  begin
     CMPRG2.ReadOnly := True;
     BRNRG2.ReadOnly := True;
     DEPRG2.ReadOnly := True;
     IDTRG2.ReadOnly := True;
     BtnSelectRDNRG2.Visible := False;
     TYPRG2.ReadOnly := True;

     ShowEdtAmtAndDate();
     GetRG1();
     GetRG2();
     GetGt1();
     CallSumAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectRDNRG2.Visible := False;
     TYPRG2.ReadOnly := True;

     ShowEdtAmtAndDate();
     GetRG1();
     GetRG2();
     GetGt1();
     CallSumAmt();

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
