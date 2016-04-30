unit CsAppSetupAccessoryForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSCarsaleIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg ,ServerModuleEx,
  uniRadioButton;

type
  TfrmCsAppSetupAccessoryGrid = class(TMainGridForm)
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
    Rdo502: TUniRadioButton;
    Rdo503: TUniRadioButton;
    procedure btnAddClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);
    procedure Rdo502Click(Sender: TObject);
    procedure Rdo503Click(Sender: TObject);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDSCarsaleDM ;

   V_FRM , V_TO : Double;
   DCD , BRD: String;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSCarsaleDM read FDM write FDM;

  end;

var
  frmCsAppSetupAccessoryGrid: TfrmCsAppSetupAccessoryGrid;



implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents,
  CsAppSetupAccessoryDataForm;

procedure TfrmCsAppSetupAccessoryGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmCsAppSetupAccessoryData).Create(UniApplication);
  TfrmCsAppSetupAccessoryData(_Form).Init(FDM);
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

procedure TfrmCsAppSetupAccessoryGrid.btnAddClick(Sender: TObject);
var _Year : integer;
begin
  if not fdm.CdsSetupAccessoryGetList.Active then
  begin
    fdm.MtSetupAccessoryGetList('--','',FDM.CMPUser,FDM.BRNUser,'',Now,Now,'');
    fdm.CdsSetupAccessoryGetList.Open();
  end;

  FDM.CdsSetupAccessoryGetList.Append();
  FDM.CdsSetupAccessoryGetListordom3.AsInteger := -1;
  FDM.CdsSetupAccessoryGetListidtom3.AsFloat := Fdm.GetSystemDate;
  FDM.CdsSetupAccessoryGetListstsot5.AsString := 'A';
  FDM.CdsSetupAccessoryGetListCMPOM3.AsString := fDM.CMPUser;
  FDM.CdsSetupAccessoryGetListBRNOM3.AsString := FDM.BRNUser;
  FDM.CdsSetupAccessoryGetListDEPOM3.AsString := FDM.DEPUser;
  _Year := StrToInt(FormatDateTime('yyyy',Fdm.CdsSetupAccessoryGetListidtom3.AsDateTime));
  FDM.CdsSetupAccessoryGetListYAROM3.AsInteger := _Year;
  FDM.CdsSetupAccessoryGetListBRDPM1.AsString := BRD;
  FDM.CdsSetupAccessoryGetListDCDOM3.AsString := DCD ;

  ShowData();

end;

procedure TfrmCsAppSetupAccessoryGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.MtSetupAccessoryDel(fdm.CdsSetupAccessoryGetListYAROM3.AsInteger,
            fdm.CdsSetupAccessoryGetListCMPOM3.AsString,
            fdm.CdsSetupAccessoryGetListBRNOM3.AsString,
            DCD,FDM.CdsSetupAccessoryGetListORDOM3.AsInteger)) THEN
        begin
          fdm.CdsSetupAccessoryGetList.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmCsAppSetupAccessoryGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsSetupAccessoryGetList.Active) or
    (Fdm.CdsSetupAccessoryGetList.IsEmpty) then
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

procedure TfrmCsAppSetupAccessoryGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsSetupAccessoryGetList.Active) or
    (Fdm.CdsSetupAccessoryGetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsMtAppGet.Close();
  fdm.MtAppGet(fdm.CdsSetupAccessoryGetListYAROM3.AsInteger,fdm.CdsSetupAccessoryGetListCMPOM3.AsString,
               fdm.CdsSetupAccessoryGetListBRNOM3.AsString,DCD,fdm.CdsSetupAccessoryGetListDNOOT5.AsInteger);
  fdm.CdsMtAppGet.Open();

  FDM.CdsMtAppGet.Edit();

  ShowData();

end;

procedure TfrmCsAppSetupAccessoryGrid.btnSearchClick(Sender: TObject);
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

    FDM.CdsSetupAccessoryGetList.Close;
    IF not(FDM.MtSetupAccessoryGetList(cirt,order,EdtCom.Text,EdtBrn.Text,EdtDEP.Text,V_FRM,V_TO,BRD)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsSetupAccessoryGetList.Open;

end;

procedure TfrmCsAppSetupAccessoryGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsSetupAccessoryGetList.Active) or
    (Fdm.CdsSetupAccessoryGetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsMtAppGet.Close();
  fdm.MtAppGet(fdm.CdsSetupAccessoryGetListYAROM3.AsInteger,fdm.CdsSetupAccessoryGetListCMPOM3.AsString,
               fdm.CdsSetupAccessoryGetListBRNOM3.AsString,DCD,fdm.CdsSetupAccessoryGetListDNOOT5.AsInteger);
  fdm.CdsMtAppGet.Open();

  ShowData();


end;

procedure TfrmCsAppSetupAccessoryGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmCsAppSetupAccessoryGrid.Rdo502Click(Sender: TObject);
begin
    // ภายนอก
     Dcd := '502';
     BRD := '12';
   btnSearchClick(btnSearch);

end;

procedure TfrmCsAppSetupAccessoryGrid.Rdo503Click(Sender: TObject);
begin
     // ภายใน
     Dcd := '503';
     BRD := '11';
   btnSearchClick(btnSearch);

end;

procedure TfrmCsAppSetupAccessoryGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsSetupAccessoryGetList;
  order:='';

  IFRM.Text := FDM.FSBuddhistDateToStr(fDM.GetSystemDate - (365*2));
  ITO.Text := FDM.FSBuddhistDateToStr(fDM.GetSystemDate);
  Rdo502Click(Rdo502);
end;

//initialization
//  RegisterMainFormClass(TfrmStArGrid);

end.
