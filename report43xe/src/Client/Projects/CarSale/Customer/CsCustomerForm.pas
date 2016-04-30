unit CsCustomerForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSCarsaleIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg ,ServerModuleEx;

type
  TfrmCsCustomerGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    CmbCFG: TUniComboBox;
    UniLabel1: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel2: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel3: TUniLabel;
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
   FDM: TDSCarsaleDM ;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSCarsaleDM read FDM write FDM;

  end;

var
  frmCsCustomerGrid: TfrmCsCustomerGrid;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, CsCustomerDataForm;

procedure TfrmCsCustomerGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmCsCustomerData).Create(UniApplication);
  TfrmCsCustomerData(_Form).Init(FDM);
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

procedure TfrmCsCustomerGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsMtCsmGet.Active then
  begin
    fdm.MtCsmGet('--','','','','');
    fdm.CdsMtCsmGet.Open();
  end;

  fdm.CdsMtCsmGet.Append();
  DM.CdsMtCsmGetCCNCSM.AsLargeInt := -1;
  fDM.CdsMtCsmGetCTYCsm.AsString := '2'; // บุคคลธรรมดา
  fDM.CdsMtCsmGetSTSCSM.AsString := 'A';
  Fdm.CdsMtCsmGetCMPCsm.AsString := Fdm.CMPUser;
  Fdm.CdsMtCsmGetBRNCsm.AsString := Fdm.BRNUser;

  fdm.CdsMtCsmGetAddr01.Close();
  fdm.MtCsmGetAddr(-1,Lnk1);
  fdm.CdsMtCsmGetAddr01.Open();

  fdm.CdsMtCsmGetAddr02.Close();
  fdm.MtCsmGetAddr(-1,Lnk2);
  fdm.CdsMtCsmGetAddr02.Open();

  fdm.CdsMtCsmGetAddr03.Close();
  fdm.MtCsmGetAddr(-1,Lnk3);
  fdm.CdsMtCsmGetAddr03.Open();

  fdm.CdsMtCsmGetAddr04.Close();
  fdm.MtCsmGetAddr(-1,Lnk4);
  fdm.CdsMtCsmGetAddr04.Open();

  fdm.CdsMtCsmGetAddr01.Append();
  fdm.CdsMtCsmGetAddr02.Append();
  fdm.CdsMtCsmGetAddr03.Append();
  fdm.CdsMtCsmGetAddr04.Append();

  ShowData();

end;


procedure TfrmCsCustomerGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.MtCsmDel(fdm.CdsMtCsmGetCCNCsm.AsLargeInt)) THEN
        begin
          fdm.CdsMtCsmGet.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmCsCustomerGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsMtCsmGet.Active) or
    (Fdm.CdsMtCsmGet.IsEmpty) then
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

procedure TfrmCsCustomerGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsMtCsmGet.Active) or
    (Fdm.CdsMtCsmGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsMtCsmGet.Edit();

  fdm.CdsMtCsmGetAddr01.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk1);
  fdm.CdsMtCsmGetAddr01.Open();

  fdm.CdsMtCsmGetAddr02.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk2);
  fdm.CdsMtCsmGetAddr02.Open();

  fdm.CdsMtCsmGetAddr03.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk3);
  fdm.CdsMtCsmGetAddr03.Open();

  fdm.CdsMtCsmGetAddr04.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk4);
  fdm.CdsMtCsmGetAddr04.Open();

  fdm.CdsMtCsmGetAddr01.Edit();
  fdm.CdsMtCsmGetAddr02.Edit();
  fdm.CdsMtCsmGetAddr03.Edit();
  fdm.CdsMtCsmGetAddr04.Edit();

  ShowData();

end;

procedure TfrmCsCustomerGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt : String;
    CFG : STRING;
begin
    cirt := Trim(edSearch.Text);
    IF CmbCFG.ItemIndex = 0 Then
      CFG := 'C'
    ELSE
      CFG := 'G';

    FDM.CdsMtCsmGet.Close;
    IF not(FDM.MtCsmGet(cirt,order,EdtCom.Text,EdtBrn.Text,CFG)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsMtCsmGet.Open;

end;

procedure TfrmCsCustomerGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsMtCsmGet.Active) or
    (Fdm.CdsMtCsmGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsMtCsmGetAddr01.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk1);
  fdm.CdsMtCsmGetAddr01.Open();

  fdm.CdsMtCsmGetAddr02.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk2);
  fdm.CdsMtCsmGetAddr02.Open();

  fdm.CdsMtCsmGetAddr03.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk3);
  fdm.CdsMtCsmGetAddr03.Open();

  fdm.CdsMtCsmGetAddr04.Close();
  fdm.MtCsmGetAddr(fdm.CdsMtCsmGetCCNCsm.AsLargeInt,Lnk4);
  fdm.CdsMtCsmGetAddr04.Open();

  ShowData();


end;

procedure TfrmCsCustomerGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmCsCustomerGrid.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSCarsaleDM;

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

  dsgrid.DataSet:= FDM.CdsMtCsmGet;
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
