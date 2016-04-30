unit StApOvdAmtForm;

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
  TfrmStApOvdAmtGrid = class(TMainGridForm)
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
  frmStApOvdAmtGrid: TfrmStApOvdAmtGrid;

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StApOvdAmtDataForm;

procedure TfrmStApOvdAmtGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStApOvdAmtData).Create(UniApplication);
  TfrmStApOvdAmtData(_Form).Init(FDM);
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

procedure TfrmStApOvdAmtGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStYm1Get.Active then
  begin
    fdm.StYm1Get('--','');
    fdm.CdsStYm1Get.Open();
  end;

  fdm.CdsStYm1Get.Append();
  fDM.CdsStYm1GetCMPYm1.AsString := FDM.BRNUser;
  fDM.CdsStYm1GetSTSYm1.AsString := 'A';
  fDM.CdsStYm1GetVATYm1.AsString := 'Y';

  fDM.CdsStYm1GetAMTYm1.AsFloat := 0;
  fDM.CdsStYm1GetBALYm1.AsFloat := 0;

  fDM.CdsStYm1GetIDTYm1.AsDateTime := Now;

  ShowData();

end;


procedure TfrmStApOvdAmtGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StYm1Del(fdm.CdsStYm1GetYARYm1.AsInteger,fdm.CdsStYm1GetCMPYm1.AsString,
            fdm.CdsStYm1GetBRNYm1.AsString,fdm.CdsStYm1GetVNOYm1.AsString,fdm.CdsStYm1GetDNOYm1.AsString)) THEN
        begin
          fdm.CdsStYm1Get.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStApOvdAmtGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStYm1Get.Active) or
    (Fdm.CdsStYm1Get.IsEmpty) then
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

procedure TfrmStApOvdAmtGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStYm1Get.Active) or
    (Fdm.CdsStYm1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStYm1Get.Edit();

  ShowData();

end;

procedure TfrmStApOvdAmtGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStYm1Get.Close;
    IF not(FDM.StYm1Get(cirt,order)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStYm1Get.Open;

end;

procedure TfrmStApOvdAmtGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStYm1Get.Active) or
    (Fdm.CdsStYm1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStApOvdAmtGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStApOvdAmtGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStYm1Get;
  order:='';

end;

//initialization
//  RegisterMainFormClass(TfrmStApOvdAmtGrid);

end.
