unit RgRegistationBookFromOutDataForm;

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
  TfrmRgRegistationBookFromOutData = class(TMainDataForm)
    UniLabel13: TUniLabel;
    dsgrid: TDataSource;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPRG2: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNRG2: TUniDBLookupComboBox;
    DEPOT5lb: TUniLabel;
    DEPRG2: TUniDBLookupComboBox;
    IDTRG2: TUniDateTimePicker;
    dsRg2BookGetByNo: TDataSource;
    dsGetGt1: TDataSource;
    UniLabel1: TUniLabel;
    RDNRG2: TUniDBEdit;
    BtnSelectRDNRG2: TUniButton;
    UniLabel5: TUniLabel;
    BDTRG2: TUniDateTimePicker;
    UniLabel8: TUniLabel;
    tnmvm1: TUniDBEdit;
    pnHeadRg2: TUniPanel;
    BtnAdd: TUniButton;
    BtnDelete: TUniButton;
    DbRg2Book: TUniDBGrid;
    LbBRDRG2: TUniLabel;
    BRDRG2: TUniDateTimePicker;
    procedure BtnAddClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnSelectRDNRG2Click(Sender: TObject);
    procedure BRDRG2Change(Sender: TObject);

  private

    Fdm : TDSRegistationDM;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;
    FG : STRING;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmtAndDate();


    procedure GetRG2;

    procedure _Confirm(AResult: Integer);

    procedure RG2Selected(YARRG2,PRDRG2:INTEGER;CMPRG2,BRNRG2,DEPRG2,DCDRG2: String;DNORG2:INTEGER;IDTRG2,BDTRG2:DOUBLE;VNORG2:STRING);
    procedure _SumAmt(amt : Double);
  public
    procedure Init(DM : TDSRegistationDM; _FG : STRING);
//    property  DM : TDSRegistationDM read FDM;
  end;

var
  frmRgRegistationBookFromOutData: TfrmRgRegistationBookFromOutData;

implementation

{$R *.dfm}


uses PopupRegistationRg2ListForBookForm, PopupRegistationRg2Form;

procedure TfrmRgRegistationBookFromOutData.ShowEdtAmtAndDate();
begin
   IDTRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRG2GetListIDTRG2.AsDateTime);
   BDTRG2.Text := FDM.FSBuddhistDateToStr(fDM.CdsRg2GetListBDTRG2.AsDateTime);

   ddyyyy.Text := copy(IDTRG2.Text,4,7);

//   AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAMTRG2.AsFloat);
end;


procedure TfrmRgRegistationBookFromOutData.GetRG2;
begin
//  เพื่อรายการที่จะมารับคู่มือ
  Fdm.CdsRG2GetByNo.Close;
  if Fdm.TtRG2GetByNo(Fdm.CdsRG2BookGetListYARRG2.AsInteger,Fdm.CdsRG2BookGetListPRDRG2.AsInteger,
     Fdm.CdsRG2BookGetListCMPRG2.AsString, Fdm.CdsRG2BookGetListBRNRG2.AsString,'426',
     Fdm.CdsRG2BookGetListDNORG2.AsInteger,'B') then
    Fdm.CdsRG2GetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

end;

procedure TfrmRgRegistationBookFromOutData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsRG2BookGetList.State in [dsInsert, dsEdit] then
    Fdm.CdsRG2bookGetList.Cancel;

  if Fdm.CdsRG2BookGetByNo.Active then
     Fdm.CdsRG2BookGetByNo.Close;

  if Fdm.CdsRG2GetByNo.Active then
     Fdm.CdsRG2GetByNo.Close;

  fdm.CdsRG2BookGetList.Close;
  fdm.CdsRG2BookGetList.Open;
  inherited;
end;

procedure TfrmRgRegistationBookFromOutData.btnConfirmClick(Sender: TObject);
var //Out_DnoRG2 : Integer;
    ch : Boolean;
begin
  if fDM.CdsRG2GetByNo.IsEmpty then
  begin
    ShowMessage('ไม่มีรายการ กรุณากรอกรายการก่อน');
    Exit;
  end;


  btnConfirm.Enabled := False;
 // Out_DnoRG2 := Fdm.CdsRG2GetListDNORG2.AsInteger;

{  if Fdm.CdsRG2GetList.State in [dsInsert] then
  BEGIN

    if not (Fdm.TtInsUpdHead(Fdm.CdsRG2GetListCMPRG2.AsString,Fdm.CdsRG2GetListBRNRG2.AsString,
      Fdm.CdsRG2GetListYARRG2.AsInteger,Fdm.CdsRG2GetListPRDRG2.AsInteger,
      Fdm.CdsRG2GetListDCDRG2.AsString,Out_DnoRG2)) then
    begin
      showmessage('เกิดข้อผิดพลาด TtInsUpdHead');
      btnConfirm.Enabled := True;
      exit;
    end

  END;

  Fdm.CdsRG2GetListDNORG2.AsInteger := Out_DnoRG2;
   }

  Fdm.CdsRG2BookGetByNo.First;
  while not (Fdm.CdsRG2BookGetByNo.Eof) do
  begin
    ch := Fdm.TtRG2BookInsUpd(
      Fdm.CdsRg2BookGetListYARRG2.AsInteger,
      Fdm.CdsRG2BookGetListPRDRG2.AsInteger,
      Fdm.CdsRg2BookGetListCMPRG2.AsString,
      Fdm.CdsRg2BookGetListBRNRG2.AsString,
      Fdm.CdsRG2BookGetListDCDRG2.AsString,
      Fdm.CdsRG2BookGetListdnorg2.AsInteger,
      Fdm.CdsRg2BookGetByNoSEQRG2.AsInteger,
      Fdm.CdsRG2BookGetListbrdrg2.AsFloat,
      'Admin');
      Fdm.CdsRG2BookGetByNo.Next;
  end;

  showmessage('บันทึกเรียบร้อยแล้ว');
  btnConfirm.Enabled := False;

end;

procedure TfrmRgRegistationBookFromOutData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmRgRegistationBookFromOutData.BRDRG2Change(Sender: TObject);
begin
  if Trim(BDTRG2.Text) = '' then
    Fdm.CdsRg2BookGetListBRDRG2.AsDateTime := 0
  else
  begin
   Fdm.CdsRg2bOOKGetListBRDRG2.AsDateTime :=
     Fdm.FSBuddhistDateToDate(BRDRG2.DateTime);
  end;

end;

procedure TfrmRgRegistationBookFromOutData._SumAmt(amt : Double);
begin
   ;
end;

procedure TfrmRgRegistationBookFromOutData.BtnAddClick(Sender: TObject);
begin
  if fDM.CdsRg2BookGetListDNORG2.AsString = '' then
  BEGIN
    ShowMessage('ต้องเลือกอ้างอิงเลขที่ใบรับทะเบียนจากงานนอกก่อน');
    Exit;
  END;

  Fdm.CdsRG2BookGetByNo.Close;
  if Fdm.TtRG2GetByNo(99,99,'99', '99','999',
     -9999,'B') then
    Fdm.CdsRG2BookGetByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

  GetRG2();

  with TfrmPopupRegistationRg2.Create(UniApplication) do
  begin
    Init(FDM,'','','');

    OnSumAmt := _SumAmt;
    ShowModal();
  end;

end;

procedure TfrmRgRegistationBookFromOutData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
    begin
       fdm.CdsRG2GetByNo.Delete();
      // CallSumAmt();
    end
  end;
end;


procedure TfrmRgRegistationBookFromOutData.BtnDeleteClick(Sender: TObject);
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

procedure TfrmRgRegistationBookFromOutData.RG2Selected(YARRG2,PRDRG2:INTEGER;CMPRG2,BRNRG2,DEPRG2,DCDRG2: String;DNORG2:INTEGER;IDTRG2,BDTRG2:DOUBLE;VNORG2:STRING);
begin
  Fdm.CdsRg2BookGetListYARRG2.AsInteger := YARRG2;
  Fdm.CdsRg2BookGetListPRDRG2.AsInteger := PRDRG2;

  Fdm.CdsRg2BookGetListCMPRG2.AsString := CMPRG2;
  Fdm.CdsRg2BookGetListBRNRG2.AsString := BRNRG2;
  Fdm.CdsRg2BookGetListDEPRG2.AsString := DEPRG2;

  Fdm.CdsRg2BookGetListDCDRG2.AsString := DCDRG2;
  Fdm.CdsRg2BookGetListDNORG2.AsInteger := DNORG2;
  Fdm.CdsRg2BookGetListIDTRG2.AsFloat := IDTRG2;
  Fdm.CdsRg2BookGetListBDTRG2.AsFloat := bDTRG2;
  Fdm.CdsRg2BookGetListTNMVM1.AsString := VNORG2;

  ShowEdtAmtAndDate();

end;

procedure TfrmRgRegistationBookFromOutData.BtnSelectRDNRG2Click(Sender: TObject);
begin
  with TfrmPopupRegistationRg2ListForBook.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกรายการเบิกเงินทดรองจ่าย');

    OnSelectData := RG2Selected;
    ShowModal();
  end;


end;

procedure TfrmRgRegistationBookFromOutData.Init(DM : TDSRegistationDM; _FG : STRING);
begin

    Fdm := dm;
    FG := _FG;

   dsgrid.DataSet := Fdm.CdsRG2BookGetList;
   dsRG2BookGetByNo.DataSet := Fdm.CdsRG2BookGetByNo;

   BRNRG2.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPRG2.ListSource := Fdm.GetDSC('DP'); //แผนก


  if (fdm.CdsRG2BookGetList.State in [dsInsert]) then
  begin
     btnConfirm.Visible := True;
     CMPRG2.ReadOnly := True;
     BRNRG2.ReadOnly := True;
     DEPRG2.ReadOnly := True;
     IDTRG2.ReadOnly := True;

     GetRG2();

    ShowEdtAmtAndDate();

  end
  else if (fdm.CdsRG2GetList.State in [dsEdit]) then
  begin
     CMPRG2.ReadOnly := True;
     BRNRG2.ReadOnly := True;
     DEPRG2.ReadOnly := True;
     IDTRG2.ReadOnly := True;
     BtnSelectRDNRG2.Visible := False;

     ShowEdtAmtAndDate();

     GetRG2();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectRDNRG2.Visible := False;


     ShowEdtAmtAndDate();

     GetRG2();


     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
