unit StStarttProductForm;

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
  TfrmStStartProductGrid = class(TMainGridForm)
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
  frmStStartProductGrid: TfrmStStartProductGrid;

const
  DCD = '000';  // รหัส ยอดยกมา

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StStartProductDataForm;

procedure TfrmStStartProductGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStStartProductData).Create(UniApplication);
  TfrmStStartProductData(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
//    _Form.Position := poDefault;
    _Form.WindowState := wsNormal;
    {$ENDIF}
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmStStartProductGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStIm2Get.Active then
  begin
    fdm.StIm2Get('--','',1000,Fdm.CMPUser,Fdm.BRNUser,'XXX');
    fdm.CdsStIm2Get.Open();
  end;

  fdm.CdsStIm2Get.Append();
  fDM.CdsStIm2GetSTSIm2.AsString := 'A';
  fDM.CdsStIm2GetIDTIM2.AsDateTime := Now;
  fDM.CdsStIm2GetDCDIM2.AsString := DCD;

  fDM.CdsStIm2GetCMPIM2.AsString := Fdm.CMPUser;
  fDM.CdsStIm2GetBRNIM2.AsString := Fdm.BRNUser;

  Fdm.CdsStIm2GetUC1IM2.AsFloat := 0;
  Fdm.CdsStIm2GetUC2IM2.AsFloat := 0;

  Fdm.CdsStIm2GetQT1IM2.AsInteger := 1;
  Fdm.CdsStIm2GetQT2IM2.AsInteger := 0;

  Fdm.CdsStIm2GetCT1IM2.AsFloat := 0;
  Fdm.CdsStIm2GetCT2IM2.AsFloat := 0;

  ShowData();

end;


procedure TfrmStStartProductGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StIm2Del(fdm.CdsStIm2GetDNOIM2.AsLargeInt)) THEN
        begin
          fdm.CdsStIm2Get.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStStartProductGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStIm2Get.Active) or
    (Fdm.CdsStIm2Get.IsEmpty) then
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

procedure TfrmStStartProductGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStIm2Get.Active) or
    (Fdm.CdsStIm2Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStIm2Get.Edit();

  ShowData();

end;

procedure TfrmStStartProductGrid.btnSearchClick(Sender: TObject);
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
    FDM.CdsStIm2Get.Close;
    IF not(FDM.StIm2Get(cirt,order,yy,EdtCom.Text,EdtBrn.Text,DCD)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStIm2Get.Open;

end;

procedure TfrmStStartProductGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStIm2Get.Active) or
    (Fdm.CdsStIm2Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStStartProductGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStStartProductGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStIm2Get;
  order:='';

  EdtYar.Text := IntToStr(StrToInt(FormatDateTime('yyyy',now)) + 543);
  EdtCom.Text := Fdm.CMPUser;
  EdtBrn.Text := Fdm.BRNUser;

end;

//initialization
//  RegisterMainFormClass(TfrmStApGrid);

end.
