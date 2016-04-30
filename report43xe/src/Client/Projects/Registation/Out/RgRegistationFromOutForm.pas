unit RgRegistationFromOutForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox, ServerModuleEx,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSRegistationIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg ;

type
  TfrmRgRegistationFromOutGrid = class(TMainGridForm)
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
   FDM: TDSRegistationDM ;
   FG : String;   // ไม่ได้ใช้
   V_FRM , V_TO : Double;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSRegistationDM read FDM write FDM;
    property R_FG : String read FG write FG;
  end;

var
  frmRgRegistationFromOutGrid: TfrmRgRegistationFromOutGrid;

const
  DCD = '426';

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, RrReturnMoneyRedCardDataForm,RgRegistationFromOutDataForm;

procedure TfrmRgRegistationFromOutGrid.ShowData();
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmRgRegistationFromOutData).Create(UniApplication);

  TfrmRgRegistationFromOutData(_Form).Init(FDM,FG);
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

procedure TfrmRgRegistationFromOutGrid.btnAddClick(Sender: TObject);
var _Year,_mm: integer;

begin

  if not fdm.CdsRG2GetList.Active then
  begin
    fdm.TtRG2GetList('','',EdtCom.Text,EdtBrn.Text,EdtDEP.Text,DCD,V_FRM,V_To,FG);
    fdm.CdsRG2GetList.Open();
  end;

  _Year :=  StrToInt(FormatDateTime('yyyy',Fdm.GetSystemDate));
  _mm :=  StrToInt(FormatDateTime('mm',Fdm.GetSystemDate));

  FDM.CdsRG2GetList.Append();
  Fdm.CdsRG2GetListYARRG2.AsInteger := _Year;
  Fdm.CdsRG2GetListPRDRG2.AsInteger := _mm;
  Fdm.CdsRG2GetListCMPRG2.AsString := Fdm.CMPUser;
  Fdm.CdsRG2GetListBRNRG2.AsString := Fdm.BRNUser;
  Fdm.CdsRG2GetListDCDRG2.AsString := DCD;
  Fdm.CdsRG2GetListDNORG2.AsInteger := -1;

  Fdm.CdsRG2GetListIDTRG2.AsFloat := Fdm.GetSystemDate;
  Fdm.CdsRG2GetListDEPRG2.AsString := Fdm.DEPUser;
  Fdm.CdsRG2GetListTYPRG2.AsString := '2'; // ลูกค้า
  Fdm.CdsRG2GetListBDTRG2.AsFloat := Fdm.CdsRG2GetListIDTRG2.AsFloat + 30;
  ShowData();

end;

procedure TfrmRgRegistationFromOutGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.TtRG2Del(fdm.CdsRG2GetListYARRG2.AsInteger, fdm.CdsRG2GetListPRDRG2.AsInteger,
              fdm.CdsRG2GetListCMPRG2.AsString, fdm.CdsRG2GetListBRNRG2.AsString,DCD,
              FDM.CdsRG2GetListDNORG2.AsInteger,'ADMIN')) THEN
        begin
          fdm.CdsRG2GetList.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
        end;
      end;
  end;
end;

procedure TfrmRgRegistationFromOutGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsRG2GetList.Active) or
    (Fdm.CdsRG2GetList.IsEmpty) then
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

procedure TfrmRgRegistationFromOutGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsRG2GetList.Active) or
    (Fdm.CdsRG2GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  FDM.CdsRG2GetList.Edit();

  ShowData();

end;

procedure TfrmRgRegistationFromOutGrid.btnSearchClick(Sender: TObject);
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

    FDM.CdsRG2GetList.Close;
    IF not(FDM.TtRG2GetList(cirt,order,EdtCom.Text,EdtBrn.Text,EdtDEP.Text,DCD,V_FRM,V_TO,FG)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsRG2GetList.Open;

end;

procedure TfrmRgRegistationFromOutGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsRG2GetList.Active) or
    (Fdm.CdsRG2GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure TfrmRgRegistationFromOutGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);
end;

procedure TfrmRgRegistationFromOutGrid.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSRegistationDM;

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

  dsgrid.DataSet:= FDM.CdsRG2GetList;
  order:='';

  IFRM.Text := '';
  ITO.Text := '';
  FG := 'N';
  btnSearchClick(btnSearch);
end;

procedure TfrmRgRegistationFromOutGrid.UniFormDestroy(Sender: TObject);
begin
  inherited;

end;

//initialization
//  RegisterMainFormClass(TfrmStArGrid);

end.
