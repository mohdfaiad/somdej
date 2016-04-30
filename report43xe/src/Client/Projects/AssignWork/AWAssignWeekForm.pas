unit AWAssignWeekForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSAssignWorkIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg, uniPageControl,
  uniBitBtn, uniSpeedButton ,DateUtils;

type
  TfrmAWAssignWeekGrid = class(TMainGridForm)
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
    RDTRDW: TUniDateTimePicker;
    DNOPAS: TUniEdit;
    DNORDW: TUniEdit;
    UniLabel6: TUniLabel;
    RDTPAS: TUniDateTimePicker;
    btnConfirm: TUniButton;
    btnCancel: TUniButton;
    BtnGetPreAssignNo: TUniButton;
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnGetPreAssignNoClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);

    private

   order : String;
   FDM: TDSAssignWorkDM ;
   _DATOPT : TDateTime;
   _WEKOPT : INTEGER;

//    procedure ShowData();
    procedure _Confirm(AResult: Integer);
    procedure GetDnoPan(OUT_DNOPAN:Integer);
  public
    procedure Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);

  end;

var
  frmAWAssignWeekGrid: TfrmAWAssignWeekGrid;

implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents,ServerModuleEx,
  PopupAssignWeekForm;

procedure TfrmAWAssignWeekGrid.Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);
var Yar, prd : integer;
begin

  Fdm := dm;
  _DATOPT := DATOPT_;      // DATE PRE ASSIGN
  _WEKOPT := WEKOPT_;      // WEEK PRE ASSIGN

  dsgrid.DataSet := Fdm.CdsTtAswGet;

   Yar := Fdm.CdsTtSchGetYARSCH.AsInteger;
   Prd := Fdm.CdsTtSchGetPRDSCH.AsInteger;

  EdtCom.Text := Fdm.CdsTtSchGetCMPSCH.AsString;
  EdtBrn.Text := Fdm.CdsTtSchGetBRNSCH.AsString;

  EdtYar.Text := IntToStr(Fdm.CdsTtSchGetYARSCH.AsInteger + 543);
  edSearch.Text := Fdm.CdsTtSchGetPRDSCH.AsString;
  RDTPAS.Text := Fdm.FSBuddhistDateToStr(DATOPT_);

   if Prd = 12 then
   begin
     Yar := Yar + 1;
     Prd := 1;
   end;

   RSetColorReadOnly();

end;

procedure TfrmAWAssignWeekGrid._Confirm(AResult: Integer);
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

procedure TfrmAWAssignWeekGrid.btnBackClick(Sender: TObject);
begin
  if Fdm.CdsTtAswGet.Active then
     Fdm.CdsTtAswGet.Close();

  inherited;

end;

procedure TfrmAWAssignWeekGrid.btnConfirmClick(Sender: TObject);
var Out_dnopas : Integer;
   ch : Boolean;
begin
   ch := Fdm.TtPasInsUpd(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,
         StrToInt(DNORDW.Text),_DATOPT,_WEKOPT,'W','ADMIN',Out_dnopas);

  if ch  then
  begin
    DNOPAS.Text := IntToStr(Out_dnopas);
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    btnConfirm.Visible := False;
    btnCancel.Visible := False;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');
end;

procedure TfrmAWAssignWeekGrid.btnDeleteClick(Sender: TObject);
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

procedure TfrmAWAssignWeekGrid.BtnGetPreAssignNoClick(Sender: TObject);
begin
  Fdm.CdsTtAswGet.Close();
  Fdm.TtAswGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,0,
         _DATOPT,_WEKOPT,'R');
  Fdm.CdsTtAswGet.Open();

  if not Fdm.CdsTtAswGet.IsEmpty then
  begin

    DNORDW.Text := Fdm.CdsTtAswGetRDNAsw.AsString;
    RDTRDW.Text := Fdm.FSBuddhistDateToStr(Fdm.CdsTtAswGetRDTAsw.AsDateTime);

    DNOPAS.Text := '';
    btnConfirm.Visible := True;
    btnCancel.Visible := True;
  end;

end;

procedure TfrmAWAssignWeekGrid.GetDnoPan(OUT_DNOPAN:Integer);
begin
  DNOPAS.Text := IntToStr(OUT_DNOPAN);

  Fdm.CdsTtAswGet.Close();
  Fdm.TtAswGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,OUT_DNOPAN,
         _DATOPT,_WEKOPT,'R');  // อาจเปล่ยนดึงจาก Pre Assign
  Fdm.CdsTtAswGet.Open();

  if not Fdm.CdsTtAswGet.IsEmpty then
  begin
    DNORDW.Text := Fdm.CdsTtAswGetRDNAsw.AsString;
    RDTRDW.Text := Fdm.FSBuddhistDateToStr(Fdm.CdsTtAswGetRDTAsw.AsDateTime);

    btnConfirm.Visible := False;
    btnCancel.Visible := False;
  end;

end;


procedure TfrmAWAssignWeekGrid.btnSearchClick(Sender: TObject);
begin
  with TfrmPopupAssignWeek.Create(UniApplication) do
  begin
    Init(Fdm,Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,
         '603',_DATOPT);

    OnSelectData := GetDnoPan;
    ShowModal();
  end;


end;

procedure TfrmAWAssignWeekGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
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
