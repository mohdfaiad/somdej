unit RrReturnMoneyRedCardDataForm;

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
  TfrmRrReturnMoneyRedCardData = class(TMainDataForm)
    UniLabel6: TUniLabel;
    UniLabel13: TUniLabel;
    DbGt1: TUniDBGrid;
    dsgrid: TDataSource;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPAM7: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNAM7: TUniDBLookupComboBox;
    DEPOT5lb: TUniLabel;
    DEPAM7: TUniDBLookupComboBox;
    DNOAM7: TUniDBEdit;
    IDTAM7: TUniDateTimePicker;
    PnAm4: TUniPanel;
    SplitAm4AndRt4: TUniSplitter;
    dsAm7GetByNo: TDataSource;
    dsGetGt1: TDataSource;
    DbAm7: TUniDBGrid;
    csDeleteRt4: TUniScreenMask;
    pnHeadAm4: TUniPanel;
    BtnAdd: TUniButton;
    BtnDelete: TUniButton;
    UniLabel2: TUniLabel;
    EdtSumAmtRt4: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    RDTAM7: TUniDateTimePicker;
    RDNAM7: TUniDBEdit;
    BtnSelectRDNAM7: TUniButton;
    procedure BtnAddClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnSelectRDNAM7Click(Sender: TObject);

  private

    Fdm : TDSRegistationDM;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;
    FG : STRING;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmtAndDate();


    procedure GetAM6;
    procedure GetAM7;
    procedure GetGt1;

    procedure _Confirm(AResult: Integer);


    procedure _SumAmt(SumAmt : Double);
    procedure CallSumAmt();
    procedure Am6Selected(DCDAM6: String;DNOAM6:INTEGER;IDTAM6:DOUBLE);
  public
    procedure Init(DM : TDSRegistationDM; _FG : STRING);
//    property  DM : TDSRegistationDM read FDM;
  end;

var
  frmRrReturnMoneyRedCardData: TfrmRrReturnMoneyRedCardData;

implementation

{$R *.dfm}


uses Math, PopupAdvanceAM6Form, PopupAdvanceForReturnForm;

procedure TfrmRrReturnMoneyRedCardData.ShowEdtAmtAndDate();
begin
   IDTAM7.Text := FDM.FSBuddhistDateToStr(fDM.CdsAM7GetListIDTAM7.AsDateTime);

   ddyyyy.Text := copy(IDTAM7.Text,4,7);

//   AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAMTAM7.AsFloat);
end;


procedure TfrmRrReturnMoneyRedCardData.GetAM6;
begin
  Fdm.CdsAM6GetByNo.Close;
  if Fdm.TtAM6GetByNo(Fdm.CdsAM7GetListYARAM7.AsInteger,Fdm.CdsAM7GetListPRDAM7.AsInteger,
     Fdm.CdsAM7GetListCMPAM7.AsString, Fdm.CdsAM7GetListBRNAM7.AsString,Fdm.CdsAm7GetListRDCAM7.AsString,
     Fdm.CdsAm7GetListRDNAM7.AsInteger,'N') then
    Fdm.CdsAM6GetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRrReturnMoneyRedCardData.GetAM7;
begin
  Fdm.CdsAM7GetByNo.Close;
  if Fdm.TtAM7GetByNo(Fdm.CdsAM7GetListYARAM7.AsInteger,Fdm.CdsAM7GetListPRDAM7.AsInteger,
     Fdm.CdsAM7GetListCMPAM7.AsString, Fdm.CdsAM7GetListBRNAM7.AsString,Fdm.CdsAM7GetListDCDAM7.AsString,
     Fdm.CdsAM7GetListDNOAM7.AsInteger,'P') then
    Fdm.CdsAM7GetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRrReturnMoneyRedCardData.GetGt1;
begin
  Fdm.CdsTtGetGt1ByNo.Close;
  if Fdm.TtGetGT1ByNo(Fdm.CdsAM7GetListYARAM7.AsInteger,Fdm.CdsAM7GetListPRDAM7.AsInteger,
     Fdm.CdsAM7GetListCMPAM7.AsString, Fdm.CdsAM7GetListBRNAM7.AsString,Fdm.CdsAM7GetListDCDAM7.AsString,
     Fdm.CdsAM7GetListDNOAM7.AsInteger) then
    Fdm.CdsTtGetGt1ByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;


procedure TfrmRrReturnMoneyRedCardData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsAM7GetList.State in [dsInsert, dsEdit] then
    Fdm.CdsAM7GetList.Cancel;

  if Fdm.CdsAM7GetByNo.Active then
     Fdm.CdsAM7GetByNo.Close;

  if Fdm.CdsTtGetGt1ByNo.Active then
     Fdm.CdsTtGetGt1ByNo.Close;

  fdm.CdsAM7GetList.Close;
  fdm.CdsAM7GetList.Open;
  inherited;
end;

procedure TfrmRrReturnMoneyRedCardData.btnConfirmClick(Sender: TObject);
var Out_DnoAM7 : Integer;
    ch : Boolean;
begin
  if fDM.CdsAM7GetByNo.IsEmpty then
  begin
    ShowMessage('ไม่มีรายการรับชำระ กรุณากรอกรายการก่อน');
    Exit;
  end;

  btnConfirm.Enabled := False;
  Out_DnoAM7 := Fdm.CdsAM7GetListDNOAM7.AsInteger;

  if Fdm.CdsAM7GetList.State in [dsInsert] then
  BEGIN

    if not (Fdm.TtInsUpdHead(Fdm.CdsAM7GetListCMPAM7.AsString,Fdm.CdsAM7GetListBRNAM7.AsString,
      Fdm.CdsAM7GetListYARAM7.AsInteger,Fdm.CdsAM7GetListPRDAM7.AsInteger,
      Fdm.CdsAM7GetListDCDAM7.AsString,Out_DnoAM7)) then
    begin
      showmessage('เกิดข้อผิดพลาด TtInsUpdHead');
      btnConfirm.Enabled := True;
      exit;
    end

  END;

  Fdm.CdsAM7GetListDNOAM7.AsInteger := Out_DnoAM7;

  Fdm.CdsAM7GetByNo.First;
  while not (Fdm.CdsAM7GetByNo.Eof) do
  begin
    ch := Fdm.TtAM7InsUpd(
      Fdm.CdsAM7GetListCMPAM7.AsString,
      Fdm.CdsAM7GetListBRNAM7.AsString,
      Fdm.CdsAM7GetListYARAM7.AsInteger,
      Fdm.CdsAM7GetListPRDAM7.AsInteger,
      Fdm.CdsAM7GetListDCDAM7.AsString,
      Fdm.CdsAM7GetListDNOAM7.AsInteger,
      Fdm.CdsAM7GetByNo.RecNo,
      Fdm.CdsAM7GetListIDTAM7.AsFloat,
      Fdm.CdsAm7GetListRDCAM7.AsString,
      Fdm.CdsAm7GetListRDNAM7.AsInteger,
      FDM.CdsAm7GetByNoSEQAM6.AsInteger,
      Fdm.CdsAm7GetListRDTAM7.AsFloat,
      Fdm.CdsAM7GetListDEPAM7.AsString,
      Fdm.CdsAM7GetByNoCTYOM5.AsString,
      Fdm.CdsAM7GetByNoCNOOM5.AsLargeInt,
      Fdm.CdsAM7GetListTYPAM7.AsString,
      Fdm.CdsAm7GetByNoARSAM6.AsFloat,
      'N',
      Fdm.CdsAm7GetByNoREGRT7.AsString,
      Fdm.CdsAm7GetByNoRENRT7.AsInteger,
      Fdm.CdsAm7GetByNoPRVRT7.AsString,
      'Admin');
      Fdm.CdsAM7GetByNo.Next;
  end;

    ch := Fdm.TtAM7InsUpd(
      Fdm.CdsAM7GetListCMPAM7.AsString,
      Fdm.CdsAM7GetListBRNAM7.AsString,
      Fdm.CdsAM7GetListYARAM7.AsInteger,
      Fdm.CdsAM7GetListPRDAM7.AsInteger,
      Fdm.CdsAM7GetListDCDAM7.AsString,
      Fdm.CdsAM7GetListDNOAM7.AsInteger,
      Fdm.CdsAM7GetByNo.RecNo,
      Fdm.CdsAM7GetListIDTAM7.AsFloat,
      Fdm.CdsAm7GetListRDCAM7.AsString,
      Fdm.CdsAm7GetListRDNAM7.AsInteger,
      FDM.CdsAm7GetByNoSEQAM6.AsInteger,
      Fdm.CdsAm7GetListRDTAM7.AsFloat,
      Fdm.CdsAM7GetListDEPAM7.AsString,
      Fdm.CdsAM7GetByNoCTYOM5.AsString,
      Fdm.CdsAM7GetByNoCNOOM5.AsLargeInt,
      Fdm.CdsAM7GetListTYPAM7.AsString,
      Fdm.CdsAm7GetByNoARSAM6.AsFloat,
    'L',
      Fdm.CdsAm7GetByNoREGRT7.AsString,
      Fdm.CdsAm7GetByNoRENRT7.AsInteger,
      Fdm.CdsAm7GetByNoPRVRT7.AsString,
    'Admin');

  GetAM7();
  GetGt1();

  showmessage('บันทึกเรียบร้อยแล้ว');
  btnConfirm.Enabled := False;

end;

procedure TfrmRrReturnMoneyRedCardData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmRrReturnMoneyRedCardData.CallSumAmt();
var SumAmt : Double;
begin
  SumAmt := 0;

  Fdm.CdsAM7GetByNo.First;
  while not Fdm.CdsAM7GetByNo.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsAm7GetByNoARSAM6.AsFloat;
    Fdm.CdsAM7GetByNo.Next;
  end;
   EdtSumAmtRt4.Text := FormatFloat('#,##0.00',SumAmt);
end;

procedure TfrmRrReturnMoneyRedCardData._SumAmt(SumAmt : Double);
begin
   CallSumAmt();
end;

procedure TfrmRrReturnMoneyRedCardData.BtnAddClick(Sender: TObject);
begin
  if fDM.CdsAm7GetListRDNAM7.AsString = '' then
  BEGIN
    ShowMessage('อ้างใบเบิกเงินทดรองจ่ายป้ายแดง ต้องมีค่าก่อนเพิ่ม');
    Exit;
  END;

  GetAM6();

  with TfrmPopupAdvanceAM6.Create(UniApplication) do
  begin
    Init(FDM,'','',FG);

    OnSumAmt := _SumAmt;
    ShowModal();
  end;

end;

procedure TfrmRrReturnMoneyRedCardData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
    begin
       fdm.CdsAM7GetByNo.Delete();
       CallSumAmt();
    end
  end;
end;


procedure TfrmRrReturnMoneyRedCardData.BtnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsAM7GetByNo.Active) or
    (Fdm.CdsAM7GetByNo.IsEmpty) then
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

procedure TfrmRrReturnMoneyRedCardData.Am6Selected(DCDAM6: String;DNOAM6:INTEGER;IDTAM6:DOUBLE);
begin
  Fdm.CdsAm7GetListRDCAM7.AsString := DCDAM6;
  Fdm.CdsAm7GetListRDNAM7.AsInteger := DNOAM6;
  Fdm.CdsAm7GetListRDTAM7.AsFloat := IDTAM6;

  RDTAM7.Text := FDM.FSBuddhistDateToStr(fDM.CdsAm7GetListRDTAM7.AsDateTime);

end;

procedure TfrmRrReturnMoneyRedCardData.BtnSelectRDNAM7Click(Sender: TObject);
begin
  with TfrmPopupAdvanceForReturn.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกรายการเบิกเงินทดรองจ่าย');

    OnSelectData := Am6Selected;
    ShowModal();
  end;


end;

procedure TfrmRrReturnMoneyRedCardData.Init(DM : TDSRegistationDM; _FG : STRING);
begin

    Fdm := dm;
    FG := _FG;

   dsgrid.DataSet := Fdm.CdsAM7GetList;
   dsAM7GetByNo.DataSet := Fdm.CdsAM7GetByNo;
   dsGetGt1.DataSet := Fdm.CdsTtGetGt1ByNo;

   BRNAM7.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPAM7.ListSource := Fdm.GetDSC('DP'); //แผนก
 //  TYPAM7.ListSource := Fdm.GetDSC('TYP'); // บุคคลจ่ายเงิน default ลูกค้า

  if (fdm.CdsAM7GetList.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTAM7.Text := FDM.FSBuddhistDateToStr(fDM.CdsAM7GetListIDTAM7.AsDateTime);

    ddyyyy.Text := copy(IDTAM7.Text,4,7);

     GetAM7();
     GetGt1();

    ShowEdtAmtAndDate();

  end
  else if (fdm.CdsAM7GetList.State in [dsEdit]) then
  begin
     CMPAM7.ReadOnly := True;
     BRNAM7.ReadOnly := True;
     DEPAM7.ReadOnly := True;
     IDTAM7.ReadOnly := True;
     BtnSelectRDNAM7.Visible := False;
//     TYPAM7.ReadOnly := True;

     ShowEdtAmtAndDate();
     GetAM6();
     GetAM7();
     GetGt1();
     CallSumAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectRDNAM7.Visible := False;

     ShowEdtAmtAndDate();
     GetAM6();
     GetAM7();
     GetGt1();
     CallSumAmt();

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
