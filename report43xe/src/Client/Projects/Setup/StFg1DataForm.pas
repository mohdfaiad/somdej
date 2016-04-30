unit StFg1DataForm;

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
  TfrmStFg1Data = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    BRNFG1: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    CMPFG1: TUniDBEdit;
    FDTFG1: TUniDateTimePicker;
    TNMPM1: TUniDBEdit;
    PRDFG1: TUniDBEdit;
    UniLabel5: TUniLabel;
    BtnSelectProduct: TUniButton;
    UniLabel11: TUniLabel;
    TDTFG1: TUniDateTimePicker;
    PnButton: TUniPanel;
    BtnView: TUniButton;
    btnAdd: TUniButton;
    btnEdit: TUniButton;
    btnDelete: TUniButton;
    dbgDataList: TUniDBGrid;
    PnSum: TUniPanel;
    LbSumFg1: TUniLabel;
    dsGridDtl: TDataSource;
    SUMAMT: TUniDBEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure FDTFG1Change(Sender: TObject);
    procedure TDTFG1Change(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure BtnViewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ProductSelected(ITNPM1,TNMPM1 : String;UC1PM1,UC2PM1,CP1PM1,CP2PM1,FAMPM1: DOUBLE);
    procedure ShowEdtAmt();
    procedure _ConfirmDtl(AResult: Integer);
    procedure ShowPopUpFg1;
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStFg1Data: TfrmStFg1Data;

implementation

{$R *.dfm}

uses PopupApForm, PopupProductByItcForm, PopupFg1Form;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStFg1Data.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStFg1Data.ShowPopUpFg1;
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupFg1).Create(UniApplication);
  TfrmPopupFg1(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin

    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;

    _Form.Show();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;

end;


procedure TfrmStFg1Data.btnAddClick(Sender: TObject);
var SeqNo : integer;
begin
  SeqNo := fdm.CdsStFg1GetDtl.RecordCount  + 1;

  fdm.CdsStFg1GetDtl.Append();
  fDM.CdsStFg1GetDtlYARFG1.AsInteger := fDM.CdsStFg1GetListYARFG1.AsInteger;
  fDM.CdsStFg1GetDtlCMPFG1.AsString := fDM.CdsStFg1GetListCMPFG1.AsString;
  fDM.CdsStFg1GetDtlBRNFG1.AsString := fDM.CdsStFg1GetListBRNFG1.AsString;
  fDM.CdsStFg1GetDtlFDTFG1.AsDateTime := fDM.CdsStFg1GetListFDTFG1.AsDateTime;
  fDM.CdsStFg1GetDtlTDTFG1.AsDateTime := fDM.CdsStFg1GetListTDTFG1.AsDateTime;
  fdm.CdsStFg1GetDtlSEQFG1.AsInteger := SeqNo;
  fdm.CdsStFg1GetDtlFU1FG1.AsInteger := 1;
  fdm.CdsStFg1GetDtlFU2FG1.AsInteger := 0;

  ShowPopUpFg1();

end;

procedure TfrmStFg1Data.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStFg1GetList.State in [dsInsert,dsEdit] then
    Fdm.CdsStFg1GetList.Cancel();
  inherited;

end;

procedure TfrmStFg1Data.btnConfirmClick(Sender: TObject);
var ch ,ch2: Boolean;
  md : String;
begin
  if (fdm.CdsStFg1GetListPRDFG1.AsString = '') then
  begin
    ShowMessage('กรอกข้อมูลเบื่องต้นไม่ครบถ้วน');
    Exit;

  end;

  fdm.CdsStFg1GetDtl.First();
  while not fdm.CdsStFg1GetDtl.Eof do
  begin
   if fdm.CdsStFg1Getdtl.RecNo = 1 then
    md := 'D'
   else
     md := '2';

    ch:= FDM.StFg1InsUpd(
          Fdm.CdsStFg1GetListYARFG1.AsInteger ,
          Fdm.CdsStFg1GetListcmpFG1.AsString ,
          Fdm.CdsStFg1GetListbrnFG1.AsString ,
          Fdm.CdsStFg1GetListPRDFG1.AsString ,
          Fdm.CdsStFg1GetListFDTFG1.AsFloat ,
          Fdm.CdsStFg1GetListTDTFG1.AsFloat ,
          Fdm.CdsStFg1GetDtlSEQFG1.AsInteger ,
          Fdm.CdsStFg1GetDtlFGDFG1.AsString ,
          Fdm.CdsStFG1GetDtlfclfg1.AsString,
          Fdm.CdsStFG1GetDtlfq1fg1.AsInteger ,
          Fdm.CdsStFG1GetDtlfq2fg1.AsInteger ,
          Fdm.CdsStFG1GetDtlfdsfg1.AsFloat ,
          Fdm.CdsStFG1GetDtlfpafg1.AsFloat ,
          Fdm.CdsStFG1GetDtlfu1fg1.AsFloat ,
          Fdm.CdsStFG1GetDtlfu2fg1.AsFloat ,
          Fdm.CdsStFG1GetDtlfamfg1.AsFloat ,
          '','admin',
          md
        );
     fdm.CdsStFg1GetDtl.Next();
  end;
  if ch  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('มีข้อผิดพลาด ');

end;

procedure TfrmStFg1Data._ConfirmDtl(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        fdm.CdsStFg1GetList.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
      end;
  end;
end;


procedure TfrmStFg1Data.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStFg1GetDtl.Active) or
    (Fdm.CdsStFg1GetDtl.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

//  if RecordVerify() then
  if True then
  begin
    MessageDlg('คุณต้องการลบข้อมูลใช่หรือไม่?', mtConfirmation, mbYesNo,
      _ConfirmDtl);
  end
  else
    ShowMessage('ไม่สามารถทำการลบข้อมูลได้เนื่องจาก ' +
      Fdm.GetLastErrorMessage);


end;

procedure TfrmStFg1Data.btnEditClick(Sender: TObject);
begin
  fdm.CdsStFg1GetDtl.Edit();

  ShowPopUpFg1();

end;

procedure TfrmStFg1Data.ShowEdtAmt();
begin
   FDTFG1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStFg1GetListFDTFG1.AsDateTime);
   TDTFG1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStFg1GetListTDTFG1.AsDateTime);

  // EdtSumAmt.Text := FormatFloat('#,##0.00',Fdm.CdsStFg1GetListSUMAMT.AsFloat);

end;

procedure TfrmStFg1Data.TDTFG1Change(Sender: TObject);
begin
  if Trim(TDTFG1.Text) = '' then
    Fdm.CdsStFg1GetListTDTFG1.AsDateTime := 0
  else
   Fdm.CdsStFg1GetListTDTFG1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(TDTFG1.DateTime);

end;

procedure TfrmStFg1Data.ProductSelected(ITNPM1,TNMPM1 : String;UC1PM1,UC2PM1,CP1PM1,CP2PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsStFg1GetListPRDFG1.AsString := ITNPM1;
  Fdm.CdsStFg1GetListTNMPM1.AsString := TNMPM1;

//  Fdm.CdsStIm2GetUC1IM2.AsFloat := UC1PM1;
//  Fdm.CdsStIm2GetUC2IM2.AsFloat := UC2PM1;

  //CalSubAmt()

end;


procedure TfrmStFg1Data.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProductByItc.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกสินค้า','1');

    OnSelectData := ProductSelected;
    ShowModal();
  end;

end;

procedure TfrmStFg1Data.BtnViewClick(Sender: TObject);
begin
  ShowPopUpFg1();

end;

procedure TfrmStFg1Data.FDTFG1Change(Sender: TObject);
begin
  if Trim(FDTFG1.Text) = '' then
    Fdm.CdsStFg1GetListFDTFG1.AsDateTime := 0
  else
   Fdm.CdsStFg1GetListFDTFG1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(FDTFG1.DateTime);
end;

procedure TfrmStFg1Data.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStFg1GetList;
   dsGridDtl.DataSet := Fdm.CdsStFg1GetDtl;

 //  CmbSTS.ListSource := Fdm.GetDSC('STS');
   BRNFG1.ListSource := Fdm.GetDSC('BRN');
 //  FWHIM2.ListSource := Fdm.GetDSC('WH');

 //  COLIM2.ListSource := Fdm.GetDSC('IC');

//   CmbSTS.ReadOnly := True;
//   QT1IM2.ReadOnly := True;

  if (fdm.CdsStFg1GetList.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    FDTFG1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStFg1GetListFDTFG1.AsDateTime);
    TDTFG1.Text := FDM.FSBuddhistDateToStr(fDM.CdsStFg1GetListTDTFG1.AsDateTime);
    ShowEdtAmt();
  end
  else if (fdm.CdsStFg1GetList.State in [dsEdit]) then
  begin
     CMPFG1.ReadOnly := True;
     BRNFG1.ReadOnly := True;
     BtnSelectProduct.Enabled := False;
     PRDFG1.ReadOnly := True;
     FDTFG1.ReadOnly := True;
     TDTFG1.ReadOnly := True;

     btnConfirm.Visible := True;

     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectProduct.Enabled := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;


end.
