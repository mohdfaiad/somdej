unit RmReceiveMoneyForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox, ServerModuleEx,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSReceiveMoneyIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg ;

type
  TfrmRmReceiveMoneyGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel3: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel2: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    IFRM: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    ITO: TUniDateTimePicker;
    EdtDEP: TUniEdit;
    procedure btnAddClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDSReceiveMoneyDM ;
   FG , FrcvDCD : String;
   V_FRM , V_TO : Double;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSReceiveMoneyDM read FDM write FDM;
    property R_FG : String read FG write FG;
    property rRcvDcd : String read FrcvDCD write FrcvDCD;
  end;

var
  frmRmReceiveMoneyGrid: TfrmRmReceiveMoneyGrid;

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, RmReceiveMoneyDataForm;

procedure TfrmRmReceiveMoneyGrid.ShowData();
var
  _Form: TUniForm;
begin
{  if FG = 'R' then // ทะเบียนป้ายแดง
     _Form := TUniFormClass(TfrmRrRcvMoneyRedCardData).Create(UniApplication)
  else
  }

  _Form := TUniFormClass(TfrmRmReceiveMoneyDataT).Create(UniApplication);
  TfrmRmReceiveMoneyDataT(_Form).Init(FDM,FG);

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

procedure TfrmRmReceiveMoneyGrid.btnAddClick(Sender: TObject);
var _Year,_mm: integer;

begin

  if not fdm.CdsTtRcvGet.Active then
  begin
    fdm.TtRcvGet('','',EdtCom.Text,EdtBrn.Text,EdtDEP.Text,rRcvDCD,V_FRM,V_To,FG);
    fdm.CdsTtRcvGet.Open();
  end;

  _Year :=  StrToInt(FormatDateTime('yyyy',Fdm.GetSystemDate));
  _mm :=  StrToInt(FormatDateTime('mm',Fdm.GetSystemDate));

  FDM.CdsTtRcvGet.Append();
  Fdm.CdsTtRcvGetSTSRT4.AsString := 'A';
  Fdm.CdsTtRcvGetYARRT4.AsInteger := _Year;
  Fdm.CdsTtRcvGetPRDRT4.AsInteger := _mm;
  Fdm.CdsTtRcvGetCMPRT4.AsString := Fdm.CMPUser;
  Fdm.CdsTtRcvGetBRNRT4.AsString := Fdm.BRNUser;
  Fdm.CdsTtRcvGetDCDRT4.AsString := rRcvDCD;
  Fdm.CdsTtRcvGetDNORT4.AsInteger := -1;

  Fdm.CdsTtRcvGetIDTRT4.AsFloat := Fdm.GetSystemDate;
  Fdm.CdsTtRcvGetIDTRT4.AsFloat := Fdm.GetSystemDate;
  Fdm.CdsTtRcvGetDEPRT4.AsString := Fdm.DEPUser;

  Fdm.CdsTtRcvGetAMTRT4.AsFloat := 0.00;
  Fdm.CdsTtRcvGetPTPRT4.AsString := 'L';
  Fdm.CdsTtRcvGetCTYRT4.AsString := '2';

  ShowData();

end;


procedure TfrmRmReceiveMoneyGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.TtRcvDel(fdm.CdsTtRcvGetYARRT4.AsInteger, fdm.CdsTtRcvGetPRDRT4.AsInteger,
              fdm.CdsTtRcvGetCMPRT4.AsString, fdm.CdsTtRcvGetBRNRT4.AsString,rRcvDCD,
              FDM.CdsTtRcvGetDNORT4.AsInteger,'ADMIN')) THEN
        begin
          fdm.CdsTtRcvGet.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
        end;
         end;
  end;
end;

procedure TfrmRmReceiveMoneyGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtRcvGet.Active) or
    (Fdm.CdsTtRcvGet.IsEmpty) then
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

procedure TfrmRmReceiveMoneyGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsTtRcvGet.Active) or
    (Fdm.CdsTtRcvGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  FDM.CdsTtRcvGet.Edit();

  ShowData();

end;

procedure TfrmRmReceiveMoneyGrid.btnSearchClick(Sender: TObject);
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

    FDM.CdsTtRcvGet.Close;
    IF not(FDM.TtRcvGet(cirt,order,EdtCom.Text,EdtBrn.Text,EdtDEP.Text,rRcvDCD,V_FRM,V_TO,FG)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsTtRcvGet.Open;

end;

procedure TfrmRmReceiveMoneyGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtRcvGet.Active) or
    (Fdm.CdsTtRcvGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmRmReceiveMoneyGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmRmReceiveMoneyGrid.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSReceiveMoneyDM;

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

  dsgrid.DataSet:= FDM.CdsTtRcvGet;
  order:='';
  EdtCom.Text := Fdm.CMPUser;
  EdtBrn.Text := Fdm.BRNUser;

  IFRM.Text := FDM.FSBuddhistDateToStr(FDM.GetSystemDate - (365*2));
  ITO.Text := FDM.FSBuddhistDateToStr(FDM.GetSystemDate);
  FG := 'N';
  rRcvDcd := '401';
  btnSearchClick(btnSearch);

end;

procedure TfrmRmReceiveMoneyGrid.UniFormDestroy(Sender: TObject);
begin
  inherited;

end;

//initialization
//  RegisterMainFormClass(TfrmStArGrid);

end.
