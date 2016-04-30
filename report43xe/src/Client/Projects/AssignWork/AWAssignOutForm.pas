unit AWAssignOutForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSAssignWorkIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg, uniPageControl,
  uniBitBtn, uniSpeedButton ,DateUtils, uniSpinEdit;

type
  TfrmAWAssignOutGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    LbCid: TUniLabel;
    EdtYar: TUniEdit;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel3: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    IDTAD1: TUniDateTimePicker;
    DNOAD1: TUniEdit;
    IWKAD1: TUniEdit;
    btnConfirm: TUniButton;
    btnCancel: TUniButton;
    LbEdt: TUniLabel;
    CmbEDT: TUniComboBox;
    LbITN: TUniLabel;
    EdtITN: TUniEdit;
    LbCol: TUniLabel;
    COLAD1: TUniDBLookupComboBox;
    BtnOk: TUniButton;
    GrpAssign: TUniGroupBox;
    LbAssignMonth: TUniLabel;
    EdtAssignMonth: TUniEdit;
    LbAssignYare: TUniLabel;
    EdtAssignYear: TUniEdit;
    LbAssignWeek: TUniLabel;
    CmbWISAD1: TUniComboBox;
    EdtQT1: TUniSpinEdit;
    LbQT1: TUniLabel;
    BtnDelAssign: TUniButton;
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnSearchClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnDelAssignClick(Sender: TObject);
    procedure CmbWISAD1CloseUp(Sender: TObject);

    private

   order : String;
   FDM: TDSAssignWorkDM ;
   _DATOPT : TDateTime;
   _WEKOPT : INTEGER;

//    procedure ShowData();
    procedure _Confirm(AResult: Integer);
    procedure ReDateByWeek();
    procedure _ConfirmGrid(AResult: Integer);
    procedure GetDnoPan(OUT_DNOPAN:Integer);
  public
    procedure Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);

  end;

var
  frmAWAssignOutGrid: TfrmAWAssignOutGrid;

implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents,ServerModuleEx,
  PopupOrderColForm;

procedure TfrmAWAssignOutGrid.Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);
var Yar, prd : integer;
begin

  Fdm := dm;
  _DATOPT := DATOPT_;      // DATE  ASSIGN
  _WEKOPT := WEKOPT_;      // WEEK  ASSIGN

  dsgrid.DataSet := Fdm.CdsTtAd1Get;

   Yar := Fdm.CdsTtSchGetYARSCH.AsInteger;
   Prd := Fdm.CdsTtSchGetPRDSCH.AsInteger;

  EdtCom.Text := Fdm.CdsTtSchGetCMPSCH.AsString;
  EdtBrn.Text := Fdm.CdsTtSchGetBRNSCH.AsString;

  EdtYar.Text := IntToStr(Fdm.CdsTtSchGetYARSCH.AsInteger + 543);
  edSearch.Text := Fdm.CdsTtSchGetPRDSCH.AsString;
  IDTAD1.Text := Fdm.FSBuddhistDateToStr(DATOPT_);
  IWKAD1.Text := IntToStr(_WEKOPT);

  EdtAssignYear.Text := EdtYar.Text;
  EdtAssignMonth.Text := edSearch.Text;

  COLAD1.ListSource := Fdm.GetDSC('IC'); //สี


   if Prd = 12 then
   begin
     Yar := Yar + 1;
     Prd := 1;
   end;

   RSetColorReadOnly();

end;

procedure TfrmAWAssignOutGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
  //      iF (Fdm.xxxx(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
  //         fdm.CdsTtSchGetYARSCH.AsInteger,fdm.CdsTtSchGetPRDSCH.AsInteger)) THEN
        begin
  //        fdm.xxx.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmAWAssignOutGrid._ConfirmGrid(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        Fdm.CdsTtAd1Get.Delete();
        end;
  end;
end;

procedure TfrmAWAssignOutGrid.ReDateByWeek();
var F, I : integer;
  ch : Boolean;
begin
  Fdm.CdsTtSchGetDay.Close();
  ch :=  Fdm.TtSchGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
    StrToInt(EdtAssignYear.Text)- 543,StrToInt(EdtAssignMonth.Text));


  Fdm.CdsTtSchGetDay.Open();

  CmbEDT.Items.Clear();
  if CmbWISAD1.Text = '1' then
  begin
    F :=  Fdm.CdsTtSchGetDayFD1.AsInteger;
    for I := F to Fdm.CdsTtSchGetDayTD1.AsInteger do
      CmbEDT.Items.Add(IntToStr(I));
  end
  else
  if CmbWISAD1.Text = '2' then
  begin
    F :=  Fdm.CdsTtSchGetDayFD2.AsInteger;
    for I := F to Fdm.CdsTtSchGetDayTD2.AsInteger do
      CmbEDT.Items.Add(IntToStr(I));
  end
  else
  if CmbWISAD1.Text = '3' then
  begin
    F :=  Fdm.CdsTtSchGetDayFD3.AsInteger;
    for I := F to Fdm.CdsTtSchGetDayTD3.AsInteger do
      CmbEDT.Items.Add(IntToStr(I));
  end
  else
  if CmbWISAD1.Text = '4' then
  begin
    F :=  Fdm.CdsTtSchGetDayFD4.AsInteger;
    for I := F to Fdm.CdsTtSchGetDayTD4.AsInteger do
      CmbEDT.Items.Add(IntToStr(I));
  end;

  Fdm.CdsTtAd1Get.Close();
  if( Fdm.TtAd1Get(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
     Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,0,0,StrToInt(IWKAD1.Text),StrToInt(CmbWISAD1.Text),'x') ) then
     Fdm.CdsTtAd1Get.Open();

  if fDM.CdsTtAd1Get.RecordCount > 0 then
    DNOAD1.Text := Fdm.CdsTtAd1GetDNOAD1.AsString;


end;

procedure TfrmAWAssignOutGrid.btnBackClick(Sender: TObject);
begin
   if Fdm.CdsTtAd1Get.Active then

   Fdm.CdsTtAd1Get.Close();
   inherited;

end;

procedure TfrmAWAssignOutGrid.btnConfirmClick(Sender: TObject);
var OUT_DNO : String;
   ch : Boolean;
begin
  if DNOAD1.Text = '' then
  begin
    Fdm.TtGenDoc(EdtCom.Text,EdtBrn.Text,StrToInt(EdtYar.Text)-543,
       StrToInt(edSearch.Text),'604',OUT_DNO);

  end
  else
     OUT_DNO := Fdm.CdsTtAd1GetDNOAD1.AsString;


  Fdm.CdsTtAd1Get.First();

  while not Fdm.CdsTtAd1Get.Eof do
  begin

    ch:= Fdm.TtAD1InsUpd(Fdm.CdsTtAd1GetCMPAD1.AsString,Fdm.CdsTtAd1GetBRNAD1.AsString,
        Fdm.CdsTtAd1GetYARAD1.AsInteger,Fdm.CdsTtAd1GetPRDAD1.AsInteger,
        Fdm.CdsTtAd1GetDCDAD1.AsString, StrToInt(OUT_DNO),Fdm.CdsTtAd1GetSEQAD1.AsInteger,
        Fdm.CdsTtAd1GetIWKAD1.AsInteger,Fdm.CdsTtAd1GetIDTAD1.AsFloat,
        Fdm.CdsTtAd1GetEDTAD1.AsFloat,Fdm.CdsTtAd1GetWISAD1.AsInteger,
        Fdm.CdsTtAd1GetITNAD1.AsString,Fdm.CdsTtAd1GetCOLAD1.AsString,
        Fdm.CdsTtAd1GetQT1AD1.AsInteger,'admin','x');


     Fdm.CdsTtAd1Get.Next();
  end;

  if ch then
  begin
     DNOAD1.Text := OUT_DNO;
     ShowMessage('บันทึกเรียบร้อยแล้ว');
  end
  else
     ShowMessage('มีข้อผิดพลาด!');
end;

procedure TfrmAWAssignOutGrid.BtnDelAssignClick(Sender: TObject);
begin
   if (not Fdm.CdsTtAd1Get.Active) or
    (Fdm.CdsTtAd1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

//  if RecordVerify() then
  if True then
  begin
    MessageDlg('คุณต้องการลบข้อมูลใช่หรือไม่?', mtConfirmation, mbYesNo,
      _ConfirmGrid);
  end
  else
    ShowMessage('ไม่สามารถทำการลบข้อมูลได้เนื่องจาก ' +
      Fdm.GetLastErrorMessage);

end;

procedure TfrmAWAssignOutGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtSchGet.Active) or
    (Fdm.CdsTtSchGet.IsEmpty) then
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

procedure TfrmAWAssignOutGrid.BtnOkClick(Sender: TObject);
VAR _REC : INTEGER;
    _EDT : TDateTime;
    _DNO : integer;
begin
   if EdtITN.Text = '' then
   begin
     ShowMessage('กรุณากรอกรหัสสินค้า');
     exit;
   end;



  _REC := Fdm.CdsTtAd1Get.RecNo;
  _EDT := StrToDateTime(cmbEDT.Text + '/' + EdtAssignMonth.Text  + '/' + IntToStr(StrToInt(EdtAssignYear.Text)- 543));

  if DNOAD1.Text = '' then
    _Dno := -1
  else
    _Dno := StrToInt(DNOAD1.Text);


  Fdm.CdsTtAd1Get.Append();
  Fdm.CdsTtAd1GetCMPAD1.AsString := Fdm.CdsTtSchGetCMPSCH.AsString;
  Fdm.CdsTtAd1GetBRNAD1.AsString := Fdm.CdsTtSchGetBRNSCH.AsString;
  Fdm.CdsTtAd1GetYARAD1.AsInteger := Fdm.CdsTtSchGetYARSCH.AsInteger;
  Fdm.CdsTtAd1GetPRDAD1.AsInteger := Fdm.CdsTtSchGetPRDSCH.AsInteger;
  Fdm.CdsTtAd1GetDNOAD1.AsInteger :=  _DNO ;
  Fdm.CdsTtAd1GetDCDAD1.AsString := '604';
  Fdm.CdsTtAd1GetSEQAD1.AsInteger := _REC;
  Fdm.CdsTtAd1GetIDTAD1.AsFloat := _DATOPT;
  Fdm.CdsTtAd1GetIWKAD1.AsInteger := _WEKOPT;

  Fdm.CdsTtAd1GetEDTAD1.AsFloat := _EDT;
  Fdm.CdsTtAd1GetWISAD1.AsInteger := StrToInt(CmbWISAD1.Text);
  Fdm.CdsTtAd1GetITNAD1.AsString := EdtITN.Text;
  Fdm.CdsTtAd1GetCOLAD1.AsString := COLAD1.KeyValue;
  Fdm.CdsTtAd1GetTNMCOL.AsString := COLAD1.Text;
  Fdm.CdsTtAd1GetQT1AD1.AsInteger := StrToInt(EdtQT1.Text);
  Fdm.CdsTtAd1Get.Post();

end;

procedure TfrmAWAssignOutGrid.GetDnoPan(OUT_DNOPAN:Integer);
begin
  DNOAd1.Text := IntToStr(OUT_DNOPAN);

  Fdm.CdsTtAd1Get.Close();
  Fdm.TtAD1Get(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,OUT_DNOPAN,
         _DATOPT,_WEKOPT,99999,'R');  //chang ed
  Fdm.CdsTtAd1Get.Open();

  if not Fdm.CdsTtAd1Get.IsEmpty then
  begin
    DNOAd1.Text := Fdm.CdsTtAd1GetDNOAD1.AsString;
    IDTAD1.Text := Fdm.FSBuddhistDateToStr(Fdm.CdsTtAd1GetIDTAd1.AsDateTime);

//    btnConfirm.Visible := False;
//    btnCancel.Visible := False;
  end;

end;


procedure TfrmAWAssignOutGrid.btnSearchClick(Sender: TObject);
begin
  with TfrmPopupOrderCol.Create(UniApplication) do
  begin
    Init(Fdm,Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,
         '604',_DATOPT);

    OnSelectData := GetDnoPan;
    ShowModal();
  end;


end;

procedure TfrmAWAssignOutGrid.CmbWISAD1CloseUp(Sender: TObject);
begin
  ReDateByWeek();

end;

procedure TfrmAWAssignOutGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);
end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);

end.
