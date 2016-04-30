unit RrGetAdvanceMoneyDataForm;

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
  TfrmRrGetAdvanceMoneyData = class(TMainDataForm)
    UniLabel6: TUniLabel;
    UniLabel13: TUniLabel;
    DbGt1: TUniDBGrid;
    dsgrid: TDataSource;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPAM6: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNAM6: TUniDBLookupComboBox;
    DEPOT5lb: TUniLabel;
    DEPAM6: TUniDBLookupComboBox;
    DNOAM6: TUniDBEdit;
    IDTAM6: TUniDateTimePicker;
    PnAm4: TUniPanel;
    SplitAm4AndRt4: TUniSplitter;
    dsAm6GetByNo: TDataSource;
    dsGetGt1: TDataSource;
    DbAm6: TUniDBGrid;
    csDeleteRt4: TUniScreenMask;
    pnHeadAm4: TUniPanel;
    BtnAdd: TUniButton;
    BtnDelete: TUniButton;
    UniLabel2: TUniLabel;
    EdtSumAmtRt4: TUniEdit;
    procedure BtnAddClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);

  private

    Fdm : TDSRegistationDM;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;
    FG : STRING;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmtAndDate();


    procedure GetYm4;
    procedure GetAm6;
    procedure GetGt1;

    procedure _Confirm(AResult: Integer);


    procedure _SumAmt(SumAmt : Double);
    procedure CallSumAmt();

  public
    procedure Init(DM : TDSRegistationDM; _FG : STRING);
//    property  DM : TDSRegistationDM read FDM;
  end;

var
  frmRrGetAdvanceMoneyData: TfrmRrGetAdvanceMoneyData;

implementation

{$R *.dfm}


uses Math, PopupAdvanceYm4Form;

procedure TfrmRrGetAdvanceMoneyData.ShowEdtAmtAndDate();
begin
   IDTAM6.Text := FDM.FSBuddhistDateToStr(fDM.CdsAm6GetListIDTAM6.AsDateTime);

   ddyyyy.Text := copy(IDTAM6.Text,4,7);

//   AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAMTAM6.AsFloat);
end;


procedure TfrmRrGetAdvanceMoneyData.UniFormCreate(Sender: TObject);
begin
  inherited;
  FG := 'N';
end;


procedure TfrmRrGetAdvanceMoneyData.GetYm4;
begin
  Fdm.CdsAm6GetYm4.Close;
  if Fdm.TtAm6GetYm4('','',Fdm.CdsAm6GetListYARAM6.AsInteger,Fdm.CdsAm6GetListCMPAM6.AsString) then
    Fdm.CdsAm6GetYm4.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
end;

procedure TfrmRrGetAdvanceMoneyData.GetAm6;
begin
  Fdm.CdsAm6GetByNo.Close;
  if Fdm.TtAm6GetByNo(Fdm.CdsAm6GetListYARAM6.AsInteger,Fdm.CdsAm6GetListPRDAM6.AsInteger,
     Fdm.CdsAm6GetListCMPAM6.AsString, Fdm.CdsAm6GetListBRNAM6.AsString,Fdm.CdsAm6GetListDCDAM6.AsString,
     Fdm.CdsAm6GetListDNOAM6.AsInteger,'N') then
    Fdm.CdsAm6GetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRrGetAdvanceMoneyData.GetGt1;
begin
  Fdm.CdsTtGetGt1ByNo.Close;
  if Fdm.TtGetGT1ByNo(Fdm.CdsAm6GetListYARAM6.AsInteger,Fdm.CdsAm6GetListPRDAM6.AsInteger,
     Fdm.CdsAm6GetListCMPAM6.AsString, Fdm.CdsAm6GetListBRNAM6.AsString,Fdm.CdsAm6GetListDCDAM6.AsString,
     Fdm.CdsAm6GetListDNOAM6.AsInteger) then
    Fdm.CdsTtGetGt1ByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;


procedure TfrmRrGetAdvanceMoneyData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsAm6GetList.State in [dsInsert, dsEdit] then
    Fdm.CdsAm6GetList.Cancel;

  if Fdm.CdsAm6GetYm4.Active then
     Fdm.CdsAm6GetYm4.Close;

  if Fdm.CdsAm6GetByNo.Active then
     Fdm.CdsAm6GetByNo.Close;

  if Fdm.CdsTtGetGt1ByNo.Active then
     Fdm.CdsTtGetGt1ByNo.Close;

  fdm.CdsAm6GetList.Close;
  fdm.CdsAm6GetList.Open;
  inherited;
end;

procedure TfrmRrGetAdvanceMoneyData.btnConfirmClick(Sender: TObject);
var Out_DnoAm6 : Integer;
    ch : Boolean;
begin
  if fDM.CdsAm6GetByNo.IsEmpty then
  begin
    ShowMessage('ไม่มีรายการรับชำระ กรุณากรอกรายการก่อน');
    Exit;
  end;

  btnConfirm.Enabled := False;
  Out_DnoAm6 := Fdm.CdsAm6GetListDNOAM6.AsInteger;

  if Fdm.CdsAm6GetList.State in [dsInsert] then
  BEGIN

    if not (Fdm.TtInsUpdHead(Fdm.CdsAm6GetListCMPAM6.AsString,Fdm.CdsAm6GetListBRNAM6.AsString,
      Fdm.CdsAm6GetListYARAM6.AsInteger,Fdm.CdsAm6GetListPRDAM6.AsInteger,
      Fdm.CdsAm6GetListDCDAM6.AsString,Out_DnoAm6)) then
    begin
      showmessage('เกิดข้อผิดพลาด TtInsUpdHead');
      btnConfirm.Enabled := True;
      exit;
    end

  END;

  Fdm.CdsAm6GetListDNOAM6.AsInteger := Out_DnoAm6;

  Fdm.CdsAm6GetByNo.First;
  while not (Fdm.CdsAm6GetByNo.Eof) do
  begin
    ch := Fdm.TtAM6InsUpd(
      Fdm.CdsAm6GetListCMPAM6.AsString,
      Fdm.CdsAm6GetListBRNAM6.AsString,
      Fdm.CdsAm6GetListYARAM6.AsInteger,
      Fdm.CdsAm6GetListPRDAM6.AsInteger,
      Fdm.CdsAm6GetListDCDAM6.AsString,
      Fdm.CdsAm6GetListDNOAM6.AsInteger,
      Fdm.CdsAm6GetByNo.RecNo,
      Fdm.CdsAm6GetListIDTAM6.AsFloat,
      Fdm.CdsAm6GetByNoDCDYM4.AsString,
      Fdm.CdsAm6GetByNoDNOYM4.AsInteger,
      Fdm.CdsAm6GetByNoSEQYM4.AsInteger,
      Fdm.CdsAm6GetByNoIDTYM4.AsFloat,
      Fdm.CdsAm6GetListDEPAM6.AsString,
      Fdm.CdsAm6GetByNoCTYOM5.AsString,
      Fdm.CdsAm6GetByNoCNOOM5.AsLargeInt,
      Fdm.CdsAm6GetListTYPAM6.AsString,
      Fdm.CdsAm6GetByNoARSAM6.AsFloat,
      'N',
      'Admin');
      Fdm.CdsAm6GetByNo.Next;
  end;

    ch := Fdm.TtAM6InsUpd(
    Fdm.CdsAm6GetListCMPAM6.AsString,
    Fdm.CdsAm6GetListBRNAM6.AsString,
    Fdm.CdsAm6GetListYARAM6.AsInteger,
    Fdm.CdsAm6GetListPRDAM6.AsInteger,
    Fdm.CdsAm6GetListDCDAM6.AsString,
    Fdm.CdsAm6GetListDNOAM6.AsInteger,
    Fdm.CdsAm6GetByNo.RecNo,
    Fdm.CdsAm6GetListIDTAM6.AsFloat,
    Fdm.CdsAm6GetByNoDCDYM4.AsString,
    Fdm.CdsAm6GetByNoDNOYM4.AsInteger,
    Fdm.CdsAm6GetByNoSEQYM4.AsInteger,
    Fdm.CdsAm6GetByNoIDTYM4.AsFloat,
    Fdm.CdsAm6GetListDEPAM6.AsString,
    Fdm.CdsAm6GetByNoCTYOM5.AsString,
    Fdm.CdsAm6GetByNoCNOOM5.AsLargeInt,
    Fdm.CdsAm6GetListTYPAM6.AsString,
    Fdm.CdsAm6GetByNoARSAM6.AsFloat,
    'L',
    'Admin');

  GetYm4();
  GetAm6();
  GetGt1();

  showmessage('บันทึกเรียบร้อยแล้ว');
  btnConfirm.Enabled := False;

end;

procedure TfrmRrGetAdvanceMoneyData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmRrGetAdvanceMoneyData.CallSumAmt();
var SumAmt : Double;
begin
  SumAmt := 0;

  Fdm.CdsAm6GetByNo.First;
  while not Fdm.CdsAm6GetByNo.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsAm6GetByNoARSAM6.AsFloat;
    Fdm.CdsAm6GetByNo.Next;
  end;
   EdtSumAmtRt4.Text := FormatFloat('#,##0.00',SumAmt);
end;

procedure TfrmRrGetAdvanceMoneyData._SumAmt(SumAmt : Double);
begin
   CallSumAmt();
end;

procedure TfrmRrGetAdvanceMoneyData.BtnAddClick(Sender: TObject);
begin

  with TfrmPopupAdvanceYm4.Create(UniApplication) do
  begin
    Init(FDM,'','',FG);

    OnSumAmt := _SumAmt;
    ShowModal();
  end;

end;

procedure TfrmRrGetAdvanceMoneyData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
    begin
       fdm.CdsAm6GetByNo.Delete();
       CallSumAmt();
    end
  end;
end;


procedure TfrmRrGetAdvanceMoneyData.BtnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsAm6GetByNo.Active) or
    (Fdm.CdsAm6GetByNo.IsEmpty) then
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

procedure TfrmRrGetAdvanceMoneyData.Init(DM : TDSRegistationDM; _FG : STRING);
begin

    Fdm := dm;
    FG := _FG;

   dsgrid.DataSet := Fdm.CdsAm6GetList;
   dsAm6GetByNo.DataSet := Fdm.CdsAm6GetByNo;
   dsGetGt1.DataSet := Fdm.CdsTtGetGt1ByNo;

   BRNAM6.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPAM6.ListSource := Fdm.GetDSC('DP'); //แผนก
//   TYPAM6.ListSource := Fdm.GetDSC('TYP'); // บุคคลจ่ายเงิน default ลูกค้า

  if (fdm.CdsAm6GetList.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTAM6.Text := FDM.FSBuddhistDateToStr(fDM.CdsAm6GetListIDTAM6.AsDateTime);

    ddyyyy.Text := copy(IDTAM6.Text,4,7);
     GetYm4();
     GetAm6();
     GetGt1();

    ShowEdtAmtAndDate();

  end
  else if (fdm.CdsAm6GetList.State in [dsEdit]) then
  begin
     CMPAM6.ReadOnly := True;
     BRNAM6.ReadOnly := True;
     DEPAM6.ReadOnly := True;
     IDTAM6.ReadOnly := True;
//     TYPAM6.ReadOnly := True;

     ShowEdtAmtAndDate();
     GetYm4();
     GetAm6();
     GetGt1();
     CallSumAmt();
  end
  else
  begin
     btnConfirm.Visible := False;


     ShowEdtAmtAndDate();
     GetYm4();
     GetAm6();
     GetGt1();
     CallSumAmt();

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
