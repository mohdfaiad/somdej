unit StApForm;

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
  TfrmStApGrid = class(TMainGridForm)
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
  frmStApGrid: TfrmStApGrid;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StApDataForm;

procedure TfrmStApGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStApData).Create(UniApplication);
  TfrmStApData(_Form).Init(FDM);
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

procedure TfrmStApGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStVm1Get.Active then
  begin
    fdm.StVm1Get('--','');
    fdm.CdsStVm1Get.Open();
  end;

  fdm.CdsStVm1Get.Append();
  fDM.CdsStVm1GetSTSVM1.AsString := 'A';

  fdm.CdsSTVm1GetAddr01.Close();
  fdm.StVm1GetAddr('-1',Lnk1);
  fdm.CdsSTVm1GetAddr01.Open();

  fdm.CdsSTVm1GetAddr02.Close();
  fdm.StVm1GetAddr('-1',Lnk2);
  fdm.CdsSTVm1GetAddr02.Open();

  fdm.CdsSTVm1GetAddr03.Close();
  fdm.StVm1GetAddr('-1',Lnk3);
  fdm.CdsSTVm1GetAddr03.Open();

  fdm.CdsSTVm1GetAddr04.Close();
  fdm.StVm1GetAddr('-1',Lnk4);
  fdm.CdsSTVm1GetAddr04.Open();

  fdm.CdsSTVm1GetAddr01.Append();
  fdm.CdsSTVm1GetAddr02.Append();
  fdm.CdsSTVm1GetAddr03.Append();
  fdm.CdsSTVm1GetAddr04.Append();

  ShowData();

end;


procedure TfrmStApGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StVm1Del(fdm.CdsStVm1GetVNOVM1.AsString)) THEN
        begin
          fdm.CdsStVm1Get.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStApGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStVm1Get.Active) or
    (Fdm.CdsStVm1Get.IsEmpty) then
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

procedure TfrmStApGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStVm1Get.Active) or
    (Fdm.CdsStVm1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStVm1Get.Edit();

  fdm.CdsSTVm1GetAddr01.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk1);
  fdm.CdsSTVm1GetAddr01.Open();

  fdm.CdsSTVm1GetAddr02.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk2);
  fdm.CdsSTVm1GetAddr02.Open();

  fdm.CdsSTVm1GetAddr03.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk3);
  fdm.CdsSTVm1GetAddr03.Open();

  fdm.CdsSTVm1GetAddr04.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk4);
  fdm.CdsSTVm1GetAddr04.Open();

  fdm.CdsSTVm1GetAddr01.Edit();
  fdm.CdsSTVm1GetAddr02.Edit();
  fdm.CdsSTVm1GetAddr03.Edit();
  fdm.CdsSTVm1GetAddr04.Edit();

  ShowData();

end;

procedure TfrmStApGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStVm1Get.Close;
    IF not(FDM.StVm1Get(cirt,order)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStVm1Get.Open;

end;

procedure TfrmStApGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStVm1Get.Active) or
    (Fdm.CdsStVm1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsSTVm1GetAddr01.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk1);
  fdm.CdsSTVm1GetAddr01.Open();

  fdm.CdsSTVm1GetAddr02.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk2);
  fdm.CdsSTVm1GetAddr02.Open();

  fdm.CdsSTVm1GetAddr03.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk3);
  fdm.CdsSTVm1GetAddr03.Open();

  fdm.CdsSTVm1GetAddr04.Close();
  fdm.StVm1GetAddr(fdm.CdsStVm1GetVNOVM1.AsString,Lnk4);
  fdm.CdsSTVm1GetAddr04.Open();

  ShowData();


end;

procedure TfrmStApGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStApGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStVm1Get;
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
//  RegisterMainFormClass(TfrmStApGrid);

end.
