unit SstmPgCon01Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSSetupIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg ;

type
  TfrmSstmPgCon01 = class(TMainGridForm)
    dsgrid: TDataSource;
    BtnAddEdtSubCode: TUniButton;
    LbCid: TUniLabel;
    EdCid: TUniEdit;
    procedure btnAddClick(Sender: TObject);
    procedure BtnAddEdtSubCodeClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

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
  frmStHdrCodeGrid: TfrmSstmPgCon01;

implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents,ServerModuleEx;

procedure TfrmSstmPgCon01.ShowData();
var
  _Form: TUniForm;
begin



end;

procedure TfrmSstmPgCon01.btnAddClick(Sender: TObject);

begin


end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
procedure TfrmSstmPgCon01.BtnAddEdtSubCodeClick(Sender: TObject);
var
  _Form: TUniForm;
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

end;

procedure TfrmSstmPgCon01._Confirm(AResult: Integer);
begin

end;

procedure TfrmSstmPgCon01.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
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

procedure TfrmSstmPgCon01.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStCdeGet.Edit();

  ShowData();

end;

procedure TfrmSstmPgCon01.btnSearchClick(Sender: TObject);
var inform: string;
    cirt,cid : String;

begin
    cirt := Trim(edSearch.Text);
    cid := Trim(EdCid.Text);
    FDM.CdsStCdeGet.Close;
   // IF not(FDM.StCidGet(cirt,order,'0',cid)) THEN
   //    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStCdeGet.Open;

    FDM.cdsGetReport43Person.Close;
    FDM.cdsGetReport43Person.Open;
    //SstmSam
    ShowMessage(FDM.SstmSam(' Joe '));
    ShowMessage( inttostr(FDM.cdsGetReport43Person.RecordCount));
end;

procedure TfrmSstmPgCon01.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure TfrmSstmPgCon01.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmSstmPgCon01.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStCdeGet;
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

procedure TfrmSstmPgCon01.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // inherited;
  if key = vk_f6 then
    btnSearchClick(sender);

end;

end.
