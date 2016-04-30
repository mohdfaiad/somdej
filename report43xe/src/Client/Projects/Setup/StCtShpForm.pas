unit StCtShpForm;

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
  TfrmStCtShpGrid = class(TMainGridForm)
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
  frmStCtShpGrid: TfrmStCtShpGrid;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StCtShpDataForm;

procedure TfrmStCtShpGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStCtShpData).Create(UniApplication);
  TfrmStCtShpData(_Form).Init(FDM);
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

procedure TfrmStCtShpGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStShpGet.Active then
  begin
    fdm.StShpGet('--','');
    fdm.CdsStShpGet.Open();
  end;

  fdm.CdsStShpGet.Append();
  fDM.CdsStShpGetSTSShp.AsString := 'A';

  ShowData();

end;


procedure TfrmStCtShpGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StShpDel(fdm.CdsStShpGetCNOSHP.AsString,fdm.CdsStShpGetSEQSHP.AsInteger)) THEN
        begin
          fdm.CdsStShpGet.Delete();
          ShowMessage('ź��¡���������������');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStCtShpGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStShpGet.Active) or
    (Fdm.CdsStShpGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

//  if RecordVerify() then
  if True then
  begin
    MessageDlg('�س��ͧ���ź���������������?', mtConfirmation, mbYesNo,
      _Confirm);
  end
  else
    ShowMessage('�������ö�ӡ��ź�����������ͧ�ҡ ' +
      Fdm.GetLastErrorMessage);


end;

procedure TfrmStCtShpGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStShpGet.Active) or
    (Fdm.CdsStShpGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStShpGet.Edit();

  ShowData();

end;

procedure TfrmStCtShpGrid.btnSearchClick(Sender: TObject);
var cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStShpGet.Close;
    IF not(FDM.StShpGet(cirt,order)) THEN
       ShowMessage('�Դ��ͼԴ��Ҵ��Ҷ֧������');
    FDM.CdsStShpGet.Open;

end;

procedure TfrmStCtShpGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStShpGet.Active) or
    (Fdm.CdsStShpGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStCtShpGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStCtShpGrid.UniFormCreate(Sender: TObject);
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
      '<p Shple="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p Shple="text-align:center;color:#0000A0">please sign-on using Application Center.</p> <br>' +
      '<p Shple="text-align:center;color:#0000A0">�к���ͧ����Է���㹡����Ҷ֧�����</p> ' +
      '<p Shple="text-align:center;color:#0000A0">��س� Sign-On �����ҹ���� Application Center.</p> ' +
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

  dsgrid.DataSet:= FDM.CdsStShpGet;
  order:='';

  {
  BtnView.Visible := True;
  btnAdd.Visible := True;
  btnDelete.Visible := True;
  btnEdit.Visible := True;
 }

end;

//initialization
//  RegisterMainFormClass(TfrmStCtShpGrid);

end.
