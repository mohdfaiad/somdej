unit RrGetAdvanceMoneyForm;

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
  TfrmRrGetAdvanceMoneyGrid = class(TMainGridForm)
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
  frmRrGetAdvanceMoneyGrid: TfrmRrGetAdvanceMoneyGrid;

const
  DCD = '423';

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, RrGetAdvanceMoneyDataForm;

procedure TfrmRrGetAdvanceMoneyGrid.ShowData();
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmRrGetAdvanceMoneyData).Create(UniApplication);
  TfrmRrGetAdvanceMoneyData(_Form).Init(FDM,FG);
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

procedure TfrmRrGetAdvanceMoneyGrid.btnAddClick(Sender: TObject);
var _Year,_mm: integer;

begin

  if not fdm.CdsAm6GetList.Active then
  begin
    fdm.TtAm6GetList('','',EdtCom.Text,EdtBrn.Text,EdtDEP.Text,DCD,V_FRM,V_To,FG);
    fdm.CdsAm6GetList.Open();
  end;

  _Year :=  StrToInt(FormatDateTime('yyyy',Fdm.GetSystemDate));
  _mm :=  StrToInt(FormatDateTime('mm',Fdm.GetSystemDate));

  FDM.CdsAm6GetList.Append();
  Fdm.CdsAm6GetListYARAM6.AsInteger := _Year;
  Fdm.CdsAm6GetListPRDAM6.AsInteger := _mm;
  Fdm.CdsAm6GetListCMPAM6.AsString := Fdm.CMPUser;
  Fdm.CdsAm6GetListBRNAM6.AsString := Fdm.BRNUser;
  Fdm.CdsAm6GetListDCDAM6.AsString := DCD;
  Fdm.CdsAm6GetListDNOAM6.AsInteger := -1;

  Fdm.CdsAm6GetListIDTAM6.AsFloat := Fdm.GetSystemDate;
  Fdm.CdsAm6GetListDEPAM6.AsString := Fdm.DEPUser;
  Fdm.CdsAm6GetListTYPAM6.AsString := '2'; // ลูกค้า

  Fdm.CdsAm6GetListTOTALAM6.AsFloat := 0.00;
  Fdm.CdsAm6GetListRETURNAM6.AsFloat := 0.00;
  Fdm.CdsAm6GetListDIFAM6.AsFloat := 0.00;

  ShowData();

end;

procedure TfrmRrGetAdvanceMoneyGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.TtAm6Del(fdm.CdsAm6GetListYARAM6.AsInteger, fdm.CdsAm6GetListPRDAM6.AsInteger,
              fdm.CdsAm6GetListCMPAM6.AsString, fdm.CdsAm6GetListBRNAM6.AsString,DCD,
              FDM.CdsAm6GetListDNOAM6.AsInteger,'ADMIN')) THEN
        begin
          fdm.CdsAm6GetList.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
        end;
      end;
  end;
end;

procedure TfrmRrGetAdvanceMoneyGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsAm6GetList.Active) or
    (Fdm.CdsAm6GetList.IsEmpty) then
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

procedure TfrmRrGetAdvanceMoneyGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsAm6GetList.Active) or
    (Fdm.CdsAm6GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  FDM.CdsAm6GetList.Edit();

  ShowData();

end;

procedure TfrmRrGetAdvanceMoneyGrid.btnSearchClick(Sender: TObject);
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

    FDM.CdsAm6GetList.Close;
    IF not(FDM.TtAm6GetList(cirt,order,EdtCom.Text,EdtBrn.Text,EdtDEP.Text,DCD,V_FRM,V_TO,FG)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsAm6GetList.Open;

end;

procedure TfrmRrGetAdvanceMoneyGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsAm6GetList.Active) or
    (Fdm.CdsAm6GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure TfrmRrGetAdvanceMoneyGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);
end;

procedure TfrmRrGetAdvanceMoneyGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsAm6GetList;
  order:='';

  IFRM.Text := '';
  ITO.Text := '';
  FG := 'N';
  btnSearchClick(btnSearch);
end;

procedure TfrmRrGetAdvanceMoneyGrid.UniFormDestroy(Sender: TObject);
begin
  inherited;

end;

//initialization
//  RegisterMainFormClass(TfrmStArGrid);

end.
