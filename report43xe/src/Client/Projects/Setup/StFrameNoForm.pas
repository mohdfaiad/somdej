unit StFrameNoForm;

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
  TfrmStFrameNoGrid = class(TMainGridForm)
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
  frmStFrameNoGrid: TfrmStFrameNoGrid;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StFrameNoDataForm;

procedure TfrmStFrameNoGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStFrameNoData).Create(UniApplication);
  TfrmStFrameNoData(_Form).Init(FDM);
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

procedure TfrmStFrameNoGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStStyGet.Active then
  begin
    fdm.StStyGet('--','');
    fdm.CdsStStyGet.Open();
  end;

  fdm.CdsStStyGet.Append();
  fDM.CdsStStyGetSTSSty.AsString := 'A';

  ShowData();

end;


procedure TfrmStFrameNoGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StStyDel(fdm.CdsStStyGetITNSty.AsString)) THEN
        begin
          fdm.CdsStStyGet.Delete();
          ShowMessage('ź��¡���������������');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStFrameNoGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStStyGet.Active) or
    (Fdm.CdsStStyGet.IsEmpty) then
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

procedure TfrmStFrameNoGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStStyGet.Active) or
    (Fdm.CdsStStyGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStStyGet.Edit();

  ShowData();

end;

procedure TfrmStFrameNoGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStStyGet.Close;
    IF not(FDM.StStyGet(cirt,order)) THEN
       ShowMessage('�Դ��ͼԴ��Ҵ��Ҷ֧������');
    FDM.CdsStStyGet.Open;

end;

procedure TfrmStFrameNoGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStStyGet.Active) or
    (Fdm.CdsStStyGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStFrameNoGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStFrameNoGrid.UniFormCreate(Sender: TObject);
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
      '<p style="text-align:center;color:#0000A0">�к���ͧ����Է���㹡����Ҷ֧�����</p> ' +
      '<p style="text-align:center;color:#0000A0">��س� Sign-On �����ҹ���� Application Center.</p> ' +
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

  dsgrid.DataSet:= FDM.CdsStStyGet;
  order:='';

end;

//initialization
//  RegisterMainFormClass(TfrmStFrameNoGrid);

end.
