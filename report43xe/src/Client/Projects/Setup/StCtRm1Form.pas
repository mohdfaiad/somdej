unit StCtRm1Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSSetupIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, Vcl.Imaging.jpeg ,ServerModuleEx;

type
  TfrmStCtRm1Grid = class(TMainGridForm)
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
  frmStCtRm1Grid: TfrmStCtRm1Grid;

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StCtRm1DataForm;

procedure TfrmStCtRm1Grid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStCtRm1Data).Create(UniApplication);
  TfrmStCtRm1Data(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
//    _Form.Position := poDefault;
    _Form.WindowState := wsNormal;


    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;

end;

procedure TfrmStCtRm1Grid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStRm1Get.Active then
  begin
    fdm.StRm1Get('--','');
    fdm.CdsStRm1Get.Open();
  end;

  fdm.CdsStRm1Get.Append();
  fDM.CdsStRm1GetCMPRm1.AsString := FDM.CMPUser;
  fDM.CdsStRm1GetBRNRM1.AsString := FDM.BRNUser;
  fDM.CdsStRm1GetSTSRm1.AsString := 'A';

  ShowData();

end;


procedure TfrmStCtRm1Grid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StRm1Del(fdm.CdsStRm1GetCMPRm1.AsString,fdm.CdsStRm1GetBRNRm1.AsString,
            fdm.CdsStRm1GetREGRM1.AsString,fdm.CdsStRm1GetRGNRM1.AsString,fdm.CdsStRm1GetPRVRM1.AsString)) THEN
        begin
          fdm.CdsStRm1Get.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStCtRm1Grid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStRm1Get.Active) or
    (Fdm.CdsStRm1Get.IsEmpty) then
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

procedure TfrmStCtRm1Grid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStRm1Get.Active) or
    (Fdm.CdsStRm1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStRm1Get.Edit();

  ShowData();

end;

procedure TfrmStCtRm1Grid.btnSearchClick(Sender: TObject);
var cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStRm1Get.Close;
    IF not(FDM.StRm1Get(cirt,order)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStRm1Get.Open;

end;

procedure TfrmStCtRm1Grid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStRm1Get.Active) or
    (Fdm.CdsStRm1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStCtRm1Grid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStCtRm1Grid.UniFormCreate(Sender: TObject);
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
      '<p Rm1le="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p Rm1le="text-align:center;color:#0000A0">please sign-on using Application Center.</p> <br>' +
      '<p Rm1le="text-align:center;color:#0000A0">ระบบต้องการสิทธิ์ในการเข้าถึงโปรแกรม</p> ' +
      '<p Rm1le="text-align:center;color:#0000A0">กรุณา Sign-On เข้าใช้งานโดยใช้ Application Center.</p> ' +
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

  dsgrid.DataSet:= FDM.CdsStRm1Get;
  order:='';

  {
  BtnView.Visible := True;
  btnAdd.Visible := True;
  btnDelete.Visible := True;
  btnEdit.Visible := True;
 }

end;

//initialization
//  RegisterMainFormClass(TfrmStCtRm1Grid);

end.
