unit PsRcvProductCarForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox, DSPurchaseIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, Vcl.Imaging.jpeg,ServerModuleEx;

type
  TfrmPsRcvProductCarGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel1: TUniLabel;
    EdtYar: TUniEdit;
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
   FDM: TDSPurchaseDM ;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSPurchaseDM read FDM write FDM;

  end;

var
  frmPsRcvProductCarGrid: TfrmPsRcvProductCarGrid;

const
  DCD = '611';  // ���� �Ѻ�Թ��� ��������觫���

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, PsRcvProductCarDataForm;

procedure TfrmPsRcvProductCarGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPsRcvProductCarData).Create(UniApplication);
  TfrmPsRcvProductCarData(_Form).Init(FDM);
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

procedure TfrmPsRcvProductCarGrid.btnAddClick(Sender: TObject);
begin
  if not fdm.CdsTtPtXGet.Active then
  begin
    if not (fdm.TtPtxGet('','',1000,fdm.CMPUser,fdm.BRNUser,'602')) then
    ShowMessage('�Դ��ͼԴ��Ҵ��Ҷ֧������');
    fdm.CdsTtPtXGet.Open();
  end;

  fdm.CdsTtPtXGet.Append();

  fDM.CdsTtPtXGetIDTPT1.AsDateTime := Fdm.GetSystemDate;
  fDM.CdsTtPtXGetRDVPT1.AsDateTime := Fdm.GetSystemDate;
  Fdm.CdsTtPtXGetYARPT1.AsInteger := StrToInt(FormatDateTime('yyyy',Fdm.GetSystemDate));

  fDM.CdsTtPtXGetCMPPT1.AsString := Fdm.CMPUser;
  fDM.CdsTtPtXGetBRNPT1.AsString := Fdm.BRNUser;

  fdm.CdsTtPtXGetVATPT1.AsString := 'Y';

  fdm.CdsTtPtXGetVPCPT1.AsFloat := FDM.GetPercentVAT; // LOAD FROM CDE 'VA' CNO = '1' .VAL2

  fdm.CdsTtPtXGetVTEPT1.AsString := 'Y'; // Y ��� 㺡ӡѺ���� N = ����Թ���
  fdm.CdsTtPtXGetQR1PT1.AsInteger := 1;

  ShowData();

end;


procedure TfrmPsRcvProductCarGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.TtPt1Del(FDM.CdsTtPtXGetYARPT1.AsInteger,FDM.CdsTtPtXGetCMPPT1.AsString,
            FDM.CdsTtPtXGetBRNPT1.AsString,DCD,
            FDM.CdsTtPtXGetrnopt1.AsString,FDM.CdsTtPtXGetSEQPT1.AsInteger)) THEN
        begin
          fdm.CdsTtPtXGet.Delete();
          ShowMessage('ź��¡���������������');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmPsRcvProductCarGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtPtXGet.Active) or
    (Fdm.CdsTtPtXGet.IsEmpty) then
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

procedure TfrmPsRcvProductCarGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsTtPtXGet.Active) or
    (Fdm.CdsTtPtXGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsTtPtXGet.Edit();

  ShowData();

end;

procedure TfrmPsRcvProductCarGrid.btnSearchClick(Sender: TObject);
var cirt : String;
    yy : integer;
begin
   if trim(EdtYar.Text) = '' then
     yy := 0
   else
   begin
      try
        yy := StrToInt(EdtYar.Text) - 543;
      except
        exit;
      end;
   end;

    cirt := Trim(edSearch.Text);
    FDM.CdsTtPtXGet.Close;
    IF not(FDM.TtPtXGet(cirt,order,yy,EdtCom.Text,EdtBrn.Text,'602')) THEN
       ShowMessage('�Դ��ͼԴ��Ҵ��Ҷ֧������');
    FDM.CdsTtPtXGet.Open;

end;

procedure TfrmPsRcvProductCarGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtPtXGet.Active) or
    (Fdm.CdsTtPtXGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmPsRcvProductCarGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmPsRcvProductCarGrid.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSPurchaseDM;

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

  dsgrid.DataSet:= FDM.CdsTtPtXGet;
  order:='';

  EdtYar.Text := IntToStr(StrToInt(FormatDateTime('yyyy',now)) + 543);
  EdtCom.Text := Fdm.CMPUser;
  EdtBrn.Text := Fdm.BRNUser;
  btnSearchClick(btnSearch);
end;

//initialization
//  RegisterMainFormClass(TfrmStApGrid);

end.