unit CsApprSaleCarForm;

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
  TfrmCsApprSaleCarGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    EdtCom: TUniEdit;
    UniLabel2: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    IFRM: TUniDateTimePicker;
    UniLabel5: TUniLabel;
    ITO: TUniDateTimePicker;
    EdtDEP: TUniEdit;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
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

   V_FRM , V_TO : Double;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSCarsaleDM read FDM write FDM;

  end;

var
  frmCsApprSaleCarGrid: TfrmCsApprSaleCarGrid;

const
  DCD = '102';

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, CsApprSaleCarDataForm;

procedure TfrmCsApprSaleCarGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmCsApprSaleCarData).Create(UniApplication);
  TfrmCsApprSaleCarData(_Form).Init(FDM);
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
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmCsApprSaleCarGrid.btnAddClick(Sender: TObject);
var _Year : integer;
begin
  if not fdm.CdsMtAppGetList.Active then
  begin
    fdm.MtAppGetList('--','',FDM.CMPUser,FDM.BRNUser,'',Now,Now);
    fdm.CdsMtAppGetList.Open();
  end;

  fdm.CdsMtAppGet.Close();
  fdm.MtAppGet(fdm.CdsMtAppGetListYAROT5.AsInteger,fdm.CdsMtAppGetListCMPOT5.AsString,
               fdm.CdsMtAppGetListBRNOT5.AsString,DCD,-1);
  fdm.CdsMtAppGet.Open();

  ShowData();

end;


procedure TfrmCsApprSaleCarGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.MtAppDel(fdm.CdsMtAppGetListYAROT5.AsInteger,fdm.CdsMtAppGetListCMPOT5.AsString,
               fdm.CdsMtAppGetListBRNOT5.AsString,DCD,FDM.CdsMtAppGetListDNOOT5.AsInteger)) THEN
        begin
          fdm.CdsMtAppGetList.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmCsApprSaleCarGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsMtAppGetList.Active) or
    (Fdm.CdsMtAppGetList.IsEmpty) then
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

procedure TfrmCsApprSaleCarGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsMtAppGetList.Active) or
    (Fdm.CdsMtAppGetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsMtAppGet.Close();
  fdm.MtAppGet(fdm.CdsMtAppGetListYAROT5.AsInteger,fdm.CdsMtAppGetListCMPOT5.AsString,
               fdm.CdsMtAppGetListBRNOT5.AsString,DCD,fdm.CdsMtAppGetListDNOOT5.AsInteger);
  fdm.CdsMtAppGet.Open();

  FDM.CdsMtAppGet.Edit();

  ShowData();

end;

procedure TfrmCsApprSaleCarGrid.btnSearchClick(Sender: TObject);
var
    cirt : String;
begin
    cirt := Trim(edSearch.Text);

 if Trim(IFRM.Text) = '' then
    V_FRM := 0
 else
    V_FRM := Fdm.FSBuddhistDateToDate(IFRM.DateTime);

 if Trim(ITO.Text) = '' then
    V_TO := 0
 else
    V_TO := Fdm.FSBuddhistDateToDate(ITO.DateTime);

    FDM.CdsMtAppGetList.Close;
    IF not(FDM.MtAppGetList(cirt,order,EdtCom.Text,EdtBrn.Text,EdtDEP.Text,V_FRM,V_TO)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsMtAppGetList.Open;

end;

procedure TfrmCsApprSaleCarGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsMtAppGetList.Active) or
    (Fdm.CdsMtAppGetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsMtAppGet.Close();
  fdm.MtAppGet(fdm.CdsMtAppGetListYAROT5.AsInteger,fdm.CdsMtAppGetListCMPOT5.AsString,
               fdm.CdsMtAppGetListBRNOT5.AsString,DCD,fdm.CdsMtAppGetListDNOOT5.AsInteger);
  fdm.CdsMtAppGet.Open();

  ShowData();


end;

procedure TfrmCsApprSaleCarGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmCsApprSaleCarGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsMtAppGetList;
  order:='';

  IFRM.Text := '';
  ITO.Text := '';

end;

//initialization
//  RegisterMainFormClass(TfrmStArGrid);

end.
