unit AWOrderColForm;

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
  TfrmAWOrderColGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    LbCid: TUniLabel;
    EdtYar: TUniEdit;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel3: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    RDTCOL: TUniDateTimePicker;
    DNOCOL: TUniEdit;
    UniLabel6: TUniLabel;
    RDTPAS: TUniDateTimePicker;
    btnConfirm: TUniButton;
    btnCancel: TUniButton;
    BtnGetOrderCol: TUniButton;
    UniLabel1: TUniLabel;
    RWKCOL: TUniEdit;
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnGetOrderColClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);

    private

   order : String;
   FDM: TDSAssignWorkDM ;
   _DATOPT : TDateTime;
   _WEKOPT : INTEGER;
   DNOAD1 : String;

//    procedure ShowData();
    procedure _Confirm(AResult: Integer);
    procedure GetDnoPan(OUT_DNOPAN:Integer);
  public
    procedure Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);

  end;

var
  frmAWOrderColGrid: TfrmAWOrderColGrid;

implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents,ServerModuleEx,
  PopupOrderColForm;

procedure TfrmAWOrderColGrid.Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);
var Yar, prd : integer;
begin

  Fdm := dm;
  _DATOPT := DATOPT_;      // DATE PRE ASSIGN
  _WEKOPT := WEKOPT_;      // WEEK PRE ASSIGN

  dsgrid.DataSet := Fdm.CdsTtColGet;

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

procedure TfrmAWOrderColGrid._Confirm(AResult: Integer);
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

procedure TfrmAWOrderColGrid.btnBackClick(Sender: TObject);
begin
  if Fdm.CdsTtColGet.Active then
  
    Fdm.CdsTtColGet.Close();
  inherited;

end;

procedure TfrmAWOrderColGrid.btnConfirmClick(Sender: TObject);
var Out_dnopas : Integer;
   ch : Boolean;
begin

   ch := Fdm.TtPasInsUpd(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,
         StrToInt(DNOCOL.Text),_DATOPT,_WEKOPT,'W','ADMIN',Out_dnopas);

  if ch  then
  begin
    DNOCOL.Text := IntToStr(Out_dnopas);
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    btnConfirm.Visible := False;
    btnCancel.Visible := False;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmAWOrderColGrid.btnDeleteClick(Sender: TObject);
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

procedure TfrmAWOrderColGrid.BtnGetOrderColClick(Sender: TObject);
begin
  Fdm.CdsTtColGet.Close();
  Fdm.TtColGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,0,
         _DATOPT,_WEKOPT,99999,'R');
  Fdm.CdsTtColGet.Open();

  if not Fdm.CdsTtColGet.IsEmpty then
  begin

    DNOCOL.Text := Fdm.CdsTtColGetRDNCol.AsString;
    RDTCOL.Text := Fdm.FSBuddhistDateToStr(Fdm.CdsTtColGetRDTCol.AsDateTime);

    btnConfirm.Visible := True;
    btnCancel.Visible := True;
  end;

end;

procedure TfrmAWOrderColGrid.GetDnoPan(OUT_DNOPAN:Integer);
begin
  DNOCOL.Text := IntToStr(OUT_DNOPAN);

  Fdm.CdsTtColGet.Close();
  Fdm.TtAswGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
         Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,OUT_DNOPAN,
         _DATOPT,_WEKOPT,'R');  // อาจเปล่ยนดึงจาก Pre Assign
  Fdm.CdsTtColGet.Open();

  if not Fdm.CdsTtColGet.IsEmpty then
  begin
    DNOCOL.Text := Fdm.CdsTtColGetRDNCol.AsString;
    RDTCOL.Text := Fdm.FSBuddhistDateToStr(Fdm.CdsTtColGetRDTCol.AsDateTime);

    btnConfirm.Visible := False;
    btnCancel.Visible := False;
  end;

end;


procedure TfrmAWOrderColGrid.btnSearchClick(Sender: TObject);
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

procedure TfrmAWOrderColGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
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
