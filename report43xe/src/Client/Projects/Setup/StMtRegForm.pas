unit StMtRegForm;

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
  TfrmStMtRegGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    BtnAddExtra: TUniButton;
    procedure btnAddClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);
    procedure BtnAddExtraClick(Sender: TObject);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDSSetupDM ;
   procedure ShowData();
   procedure ShowDataExtra();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSSetupDM read FDM write FDM;

  end;

var
  frmStMtRegGrid: TfrmStMtRegGrid;

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StMtRegExtraDataForm, StMtRegDataForm;

procedure TfrmStMtRegGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStMtRegData).Create(UniApplication);
  TfrmStMtRegData(_Form).Init(FDM);
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

procedure TfrmStMtRegGrid.ShowDataExtra();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStMtRegExtraData).Create(UniApplication);
  TfrmStMtRegExtraData(_Form).Init(FDM);
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

procedure TfrmStMtRegGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStRegGet.Active then
  begin
    fdm.StRegGet('--','');
    fdm.CdsStRegGet.Open();
  end;

  fdm.CdsStRegGet.Append();
  fDM.CdsStRegGetCMPREG.AsString := FDM.CMPUser;
  fDM.CdsStRegGetBRNREG.AsString := FDM.CMPUser;
  fDM.CdsStRegGetSTSReg.AsString := 'A';

  ShowData();

end;


procedure TfrmStMtRegGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StRegDel(fdm.CdsStRegGetCMPREG.AsString,fdm.CdsStRegGetBRNREG.AsString ,
                         fdm.CdsStRegGetCNOREG.AsString,fdm.CdsStRegGetSEQREG.AsInteger)) THEN
        begin
          fdm.CdsStRegGet.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStMtRegGrid.BtnAddExtraClick(Sender: TObject);
begin
  if not fdm.CdsStRegGetExtra.Active then
  begin
    fdm.StRegGet('--','');
    fdm.CdsStRegGetExtra.Open();
  end;

  Fdm.CdsStRegGetExtra.Append();
  fDM.CdsStRegGetExtraCMPREG.AsString := FDM.CMPUser;
  fDM.CdsStRegGetExtraBRNREG.AsString := FDM.CMPUser;
  ShowDataExtra();

end;

procedure TfrmStMtRegGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStRegGet.Active) or
    (Fdm.CdsStRegGet.IsEmpty) then
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

procedure TfrmStMtRegGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStRegGet.Active) or
    (Fdm.CdsStRegGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStRegGet.Edit();

  ShowData();

end;

procedure TfrmStMtRegGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStRegGet.Close;
    IF not(FDM.StRegGet(cirt,order)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStRegGet.Open;

end;

procedure TfrmStMtRegGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStRegGet.Active) or
    (Fdm.CdsStRegGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStMtRegGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStMtRegGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStRegGet;
  order:='';

end;

//initialization
 // RegisterMainFormClass(TfrmStMtRegGrid);

end.
