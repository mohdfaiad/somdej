unit StArForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox {$ELSE} MainModuleEx, DSSetupIntfDM,ServerModuleEx,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, uniDateTimePicker, Vcl.Imaging.jpeg {$ENDIF};

type
  TfrmStArGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDSSetupDM ;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSSetupDM read FDM write FDM;

  end;

var
  frmStArGrid: TfrmStArGrid;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StArDataForm;

procedure TfrmStArGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStArData).Create(UniApplication);
  TfrmStArData(_Form).Init(FDM);
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

procedure TfrmStArGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStCM1Get.Active then
  begin
    fdm.StCM1Get('--','');
    fdm.CdsStCM1Get.Open();
  end;

  fdm.CdsStCM1Get.Append();
  fDM.CdsStCM1GetTYPCM1.AsString := '1';
  fDM.CdsStCM1GetSTSCM1.AsString := 'A';

  fdm.CdsSTCM1GetAddr01.Close();
  fdm.StCM1GetAddr('-1',Lnk1);
  fdm.CdsSTCM1GetAddr01.Open();

  fdm.CdsSTCM1GetAddr02.Close();
  fdm.StCM1GetAddr('-1',Lnk2);
  fdm.CdsSTCM1GetAddr02.Open();

  fdm.CdsSTCM1GetAddr03.Close();
  fdm.StCM1GetAddr('-1',Lnk3);
  fdm.CdsSTCM1GetAddr03.Open();

  fdm.CdsSTCM1GetAddr04.Close();
  fdm.StCM1GetAddr('-1',Lnk4);
  fdm.CdsSTCM1GetAddr04.Open();

  fdm.CdsSTCM1GetAddr01.Append();
  fdm.CdsSTCM1GetAddr02.Append();
  fdm.CdsSTCM1GetAddr03.Append();
  fdm.CdsSTCM1GetAddr04.Append();

  ShowData();

end;


procedure TfrmStArGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StCM1Del(fdm.CdsStCM1GetCNOCM1.AsString)) THEN
        begin
          fdm.CdsStCM1Get.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStArGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStCM1Get.Active) or
    (Fdm.CdsStCM1Get.IsEmpty) then
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

procedure TfrmStArGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStCM1Get.Active) or
    (Fdm.CdsStCM1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStCM1Get.Edit();

  fdm.CdsSTCM1GetAddr01.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk1);
  fdm.CdsSTCM1GetAddr01.Open();

  fdm.CdsSTCM1GetAddr02.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk2);
  fdm.CdsSTCM1GetAddr02.Open();

  fdm.CdsSTCM1GetAddr03.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk3);
  fdm.CdsSTCM1GetAddr03.Open();

  fdm.CdsSTCM1GetAddr04.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk4);
  fdm.CdsSTCM1GetAddr04.Open();

  fdm.CdsSTCM1GetAddr01.Edit();
  fdm.CdsSTCM1GetAddr02.Edit();
  fdm.CdsSTCM1GetAddr03.Edit();
  fdm.CdsSTCM1GetAddr04.Edit();

  ShowData();

end;

procedure TfrmStArGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStCM1Get.Close;
    IF not(FDM.StCM1Get(cirt,order)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStCM1Get.Open;

end;

procedure TfrmStArGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStCM1Get.Active) or
    (Fdm.CdsStCM1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsSTCM1GetAddr01.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk1);
  fdm.CdsSTCM1GetAddr01.Open();

  fdm.CdsSTCM1GetAddr02.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk2);
  fdm.CdsSTCM1GetAddr02.Open();

  fdm.CdsSTCM1GetAddr03.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk3);
  fdm.CdsSTCM1GetAddr03.Open();

  fdm.CdsSTCM1GetAddr04.Close();
  fdm.StCM1GetAddr(fdm.CdsStCM1GetCNOCM1.AsString,Lnk4);
  fdm.CdsSTCM1GetAddr04.Open();

  ShowData();


end;

procedure TfrmStArGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStArGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStCM1Get;
  order:='';

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

//initialization
//  RegisterMainFormClass(TfrmStArGrid);

end.
