unit StRunningForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox {$ELSE} MainModuleEx,DSSetupIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, uniDateTimePicker, Vcl.Imaging.jpeg {$ENDIF};

type
  TfrmStRunningGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    EdtYar: TUniEdit;
    EdtCom: TUniEdit;
    UniLabel1: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    BtnAddBrnGenDoc: TUniButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure BtnAddBrnGenDocClick(Sender: TObject);
    procedure btnBrnGenDocClick(Sender: TObject);
    procedure BtnViewClick(Sender: TObject);
    procedure EdtYarKeyPress(Sender: TObject; var Key: Char);
    procedure EdtComKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBrnKeyPress(Sender: TObject; var Key: Char);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);

    private

   FUserSession: TUniMainModule;
   FDM: TDSSetupDM ;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmStRunningGrid: TfrmStRunningGrid;

implementation

{$R *.dfm}

uses uniGUIForm, StRunningDataForm, PopupStNb1BrnGenDocForm, ServerModuleEx;


procedure TfrmStRunningGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStRunningData).Create(UniApplication);
  TfrmStRunningData(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsSingle;
//    _Form.Position := poDefault;
    _Form.WindowState := wsNormal;
    {$ENDIF}
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmStRunningGrid.BtnAddBrnGenDocClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmPopupStNb1BrnGenDoc).Create(UniApplication);
  TfrmPopupStNb1BrnGenDoc(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.Align := alNone;
//    _Form.WindowState := wsNormal;

//    _Form.Left := frmStHdrCodeGrid.Left;
//    _Form.Top := frmStHdrCodeGrid.Top;
//    _Form.Width := frmStHdrCodeGrid.Width;
//    _Form.Height := frmStHdrCodeGrid.Height;

    {$ENDIF}
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;

end;

procedure TfrmStRunningGrid.btnAddClick(Sender: TObject);
var eeee : integer;
begin

  eeee := StrToInt(FormatDateTime('yyyy',Now));
  eeee := eeee + 543;

  if not fdm.CdsStNb1Get.Active then
  begin
    fdm.StNb1Get(9999,'11','11','xxx');   // no data in database
    fdm.CdsStNb1Get.Open();
  end;

  fdm.CdsStNb1Get.Append();
  fDM.CdsStNb1GetSTSNB1.AsString := 'A';
  fDM.CdsStNb1GetCMPNB1.AsString := fdm.CMPUser;
  fDM.CdsStNb1GetBRNNB1.AsString := fdm.BRNUser;
  Fdm.CdsStNb1GetYARNB1.AsInteger := eeee;
  Fdm.CdsStNb1GetN01NB1.AsString := '010000';
  Fdm.CdsStNb1GetN02NB1.AsString := '020000';
  Fdm.CdsStNb1GetN03NB1.AsString := '030000';
  Fdm.CdsStNb1GetN04NB1.AsString := '040000';
  Fdm.CdsStNb1GetN05NB1.AsString := '050000';
  Fdm.CdsStNb1GetN06NB1.AsString := '060000';
  Fdm.CdsStNb1GetN07NB1.AsString := '070000';
  Fdm.CdsStNb1GetN08NB1.AsString := '080000';
  Fdm.CdsStNb1GetN09NB1.AsString := '090000';
  Fdm.CdsStNb1GetN10NB1.AsString := '100000';
  Fdm.CdsStNb1GetN11NB1.AsString := '110000';
  Fdm.CdsStNb1GetN12NB1.AsString := '120000';
  Fdm.CdsStNb1GetPR1NB1.AsString := '/';
  Fdm.CdsStNb1GetPR2NB1.AsString := '-';

  ShowData();

end;

procedure TfrmStRunningGrid.btnBrnGenDocClick(Sender: TObject);
begin

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);

procedure TfrmStRunningGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StNb1Del(fdm.CdsStNb1GetYARNB1.AsInteger- 543,
          fdm.CdsStNb1GetCMPNB1.AsString,fdm.CdsStNb1GetBRNNB1.AsString,
          fdm.CdsStNb1GetDCDNB1.AsString)) THEN
        begin
          fdm.CdsStNb1Get.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStRunningGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStNb1Get.Active) or
    (Fdm.CdsStNb1Get.IsEmpty) then
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

procedure TfrmStRunningGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStNb1Get.Active) or
    (Fdm.CdsStNb1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStNb1Get.Edit();

  ShowData();

end;

procedure TfrmStRunningGrid.btnSearchClick(Sender: TObject);
var yy : integer;
begin
   if trim(EdtYar.Text) = '' then
     yy := 0
   else
   begin
      try
        yy := StrToInt(EdtYar.Text);
      except
        exit;
      end;
   end;

    FDM.CdsStNb1Get.Close;
    IF not(FDM.StNb1Get(yy,EdtCom.Text,EdtBrn.Text,edSearch.Text)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStNb1Get.Open;

end;

procedure TfrmStRunningGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStNb1Get.Active) or
    (Fdm.CdsStNb1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure TfrmStRunningGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
{  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);
 }

end;

procedure TfrmStRunningGrid.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
  begin
    key := #0;
    btnSearchClick(btnSearch);
  end;

end;

procedure TfrmStRunningGrid.EdtBrnKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
  begin
    key := #0;
    btnSearchClick(btnSearch);
  end;

end;

procedure TfrmStRunningGrid.EdtComKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
  begin
    key := #0;
    btnSearchClick(btnSearch);
  end;

end;

procedure TfrmStRunningGrid.EdtYarKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
  begin
    key := #0;
    btnSearchClick(btnSearch);
  end;

end;

procedure TfrmStRunningGrid.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSSetupDM;

  if (WebMode) then
  begin
    WebForm.ExtWindow.Draggable := False;
    WebForm.ExtWindow.Resizable := False;
  end;

////////////////////////////////////////////////////////////////////////////////
{$IFNDEF OBSS}
  FDM.UserID := 'admin';//UniApplication.Cookies.Values['userid'];
  FDM.UserPWD := 'admin';//UniApplication.Cookies.Values['userpwd'];

  {$IFDEF RELEASE}
  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    UniServerModule.ServerMessages.TerminateTemplate.Text :=
      '<html> ' +
      '<body bgcolor="#E6E6FA"> ' +
      '<p style="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p style="text-align:center;color:#0000A0">please sign-on using Application Center.</p> <br>' +
      '<p style="text-align:center;color:#0000A0">ระบบต้องการสิทธิ์ในการเข้าถึงโปรแกรม</p> ' +
      '<p style="text-align:center;color:#0000A0">กรุณา Sign-On เข้าใช้งานโดยใช้ Application Center.</p> ' +
      '</body> ' +
      '</html>';
    UniApplication.Terminate();
    Exit;
  end;
  {$ENDIF}
  {$IFDEF DEBUG}
  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    FDM.UserID := 'admin';
    FDM.UserPWD := 'admin';
  end;
  {$ENDIF}
{$ELSE}
  FDM.UserID := UniMainModule.UserID;
  FDM.UserPWD := UniMainModule.UserPWD;
{$ENDIF}

  FDM.LogIn(FDM.UserID, FDM.UserPWD);
////////////////////////////////////////////////////////////////////////////////

  dsgrid.DataSet:= FDM.CdsStNb1Get;
  //order:='';

  {
  BtnView.Visible := True;
  btnAdd.Visible := True;
  btnDelete.Visible := True;
  btnEdit.Visible := True;
 }

{$IFDEF FSLOSHP}
  btnBack.Caption := 'ปิดโปรแกรม';
  btnBack.Visible := True;
{$ELSE}
  btnBack.Visible := False;
{$ENDIF}

end;

end.
