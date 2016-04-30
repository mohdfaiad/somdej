unit StFg1Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox, DSSetupIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, Vcl.Imaging.jpeg ,ServerModuleEx;

type
  TfrmStFg1Grid = class(TMainGridForm)
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
   FDM: TDSSetupDM ;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSSetupDM read FDM write FDM;

  end;

var
  frmStFg1Grid: TfrmStFg1Grid;

const
  DCD = '000';  // รหัส ยอดยกมา

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StFg1DataForm;

procedure TfrmStFg1Grid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStFg1Data).Create(UniApplication);
  TfrmStFg1Data(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;

    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmStFg1Grid.btnAddClick(Sender: TObject);
var yy : integer;
begin
  if not fdm.CdsStFg1GetList.Active then
  begin
    fdm.StFg1GetList('--','',1000,Fdm.CMPUser,Fdm.BRNUser);
    fdm.CdsStFg1GetList.Open();
  end;

  yy := StrToInt(FormatDateTime('yyyy',fdm.GetSystemDate));

  fdm.CdsStFg1GetList.Append();
  fDM.CdsStFg1GetListYARFG1.AsInteger := yy;
  fDM.CdsStFg1GetListCMPFG1.AsString := Fdm.CMPUser;
  fDM.CdsStFg1GetListBRNFG1.AsString := Fdm.BRNUser;
  fDM.CdsStFg1GetListFDTFG1.AsDateTime := fdm.GetSystemDate;
  fDM.CdsStFg1GetListTDTFG1.AsDateTime := fdm.GetSystemDate + 30;

  fdm.CdsStCdeGetDtl.Close();
  fdm.StFg1GetDtl(fdm.CdsStFg1GetListYARFG1.AsInteger,
      fdm.CdsStFg1GetListCMPFG1.AsString,
      fdm.CdsStFg1GetListBRNFG1.AsString,
      fdm.CdsStFg1GetListPRDFG1.AsString,
      fdm.CdsStFg1GetListFDTFG1.AsFloat,
      fdm.CdsStFg1GetListTDTFG1.AsFloat);
  fdm.CdsStFg1GetDtl.Open();

  ShowData();

end;


procedure TfrmStFg1Grid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StFg1Del(fdm.CdsStFg1GetListYARFG1.AsInteger,
             fdm.CdsStFg1GetListCMPFG1.AsString,
             fdm.CdsStFg1GetListBRNFG1.AsString,
             fdm.CdsStFg1GetListPRDFG1.AsString,
             fdm.CdsStFg1GetListFDTFG1.AsFloat,
             fdm.CdsStFg1GetListTDTFG1.AsFloat)) THEN
        begin
          fdm.CdsStFg1GetList.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStFg1Grid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStFg1GetList.Active) or
    (Fdm.CdsStFg1GetList.IsEmpty) then
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

procedure TfrmStFg1Grid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStFg1GetList.Active) or
    (Fdm.CdsStFg1GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStFg1GetList.Edit();

  fdm.CdsStCdeGetDtl.Close();
  fdm.StFg1GetDtl(fdm.CdsStFg1GetListYARFG1.AsInteger,
      fdm.CdsStFg1GetListCMPFG1.AsString,
      fdm.CdsStFg1GetListBRNFG1.AsString,
      fdm.CdsStFg1GetListPRDFG1.AsString,
      fdm.CdsStFg1GetListFDTFG1.AsFloat,
      fdm.CdsStFg1GetListTDTFG1.AsFloat);
  fdm.CdsStFg1GetDtl.Open();

  ShowData();

end;

procedure TfrmStFg1Grid.btnSearchClick(Sender: TObject);
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
    FDM.CdsStFg1GetList.Close;
    IF not(FDM.StFg1GetList(cirt,order,yy,EdtCom.Text,EdtBrn.Text)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStFg1GetList.Open;

end;

procedure TfrmStFg1Grid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStFg1GetList.Active) or
    (Fdm.CdsStFg1GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStCdeGetDtl.Close();
  fdm.StFg1GetDtl(fdm.CdsStFg1GetListYARFG1.AsInteger,
      fdm.CdsStFg1GetListCMPFG1.AsString,
      fdm.CdsStFg1GetListBRNFG1.AsString,
      fdm.CdsStFg1GetListPRDFG1.AsString,
      fdm.CdsStFg1GetListFDTFG1.AsFloat,
      fdm.CdsStFg1GetListTDTFG1.AsFloat);
  fdm.CdsStFg1GetDtl.Open();

  ShowData();


end;

procedure TfrmStFg1Grid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStFg1Grid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStFg1GetList;
  order:='';

  EdtYar.Text := IntToStr(StrToInt(FormatDateTime('yyyy',now)) + 543);
  EdtCom.Text := Fdm.CMPUser;
  EdtBrn.Text := Fdm.BRNUser;

end;

//initialization
//  RegisterMainFormClass(TfrmStApGrid);

end.
