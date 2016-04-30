unit PsRcvProductNoPoForm;

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
  TfrmPsRcvProductNoPoGrid = class(TMainGridForm)
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
  frmPsRcvProductNoPoGrid: TfrmPsRcvProductNoPoGrid;

const
  DCD = '611';  // รหัส รับสินค้า ไม่มีใบสั่งซื้อ

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, PsRcvProductNoPoDataForm;

procedure TfrmPsRcvProductNoPoGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPsRcvProductNoPoData).Create(UniApplication);
  TfrmPsRcvProductNoPoData(_Form).Init(FDM);
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

procedure TfrmPsRcvProductNoPoGrid.btnAddClick(Sender: TObject);
begin
  if not fdm.CdsTtPt1Get.Active then
  begin
    fdm.TtPt1Get('--','',1000,'A','ALL',DCD);
    fdm.CdsTtPt1Get.Open();
  end;

  fdm.CdsTtPt1Get.Append();

  fDM.CdsTtPt1GetIDTPT1.AsDateTime := Now;
  fDM.CdsTtPt1GetRDVPT1.AsDateTime := Now;

  fDM.CdsTtPt1GetCMPPT1.AsString := Fdm.CMPUser;
  fDM.CdsTtPt1GetBRNPT1.AsString := Fdm.BRNUser;

  fdm.CdsTtPt1GetVATPT1.AsString := 'Y';

  fdm.CdsTtPt1GetVPCPT1.AsFloat := FDM.GetPercentVAT; // LOAD FROM CDE 'VA' CNO = '1' .VAL2

  fdm.CdsTtPt1GetVTEPT1.AsString := 'Y'; // Y คือ ใบกำกับภาษี N = ใบส่งสินค้า
  fdm.CdsTtPt1GetQR1PT1.AsInteger := 1;

  ShowData();

end;


procedure TfrmPsRcvProductNoPoGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.TtPt1Del(FDM.CdsTtPt1GetYARPT1.AsInteger,FDM.CdsTtPt1GetCMPPT1.AsString,
            FDM.CdsTtPt1GetBRNPT1.AsString,DCD,
            FDM.CdsTtPt1GetDNOPT1.AsString,FDM.CdsTtPt1GetSEQPT1.AsInteger)) THEN
        begin
          fdm.CdsTtPt1Get.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmPsRcvProductNoPoGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtPt1Get.Active) or
    (Fdm.CdsTtPt1Get.IsEmpty) then
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

procedure TfrmPsRcvProductNoPoGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsTtPt1Get.Active) or
    (Fdm.CdsTtPt1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsTtPt1Get.Edit();

  ShowData();

end;

procedure TfrmPsRcvProductNoPoGrid.btnSearchClick(Sender: TObject);
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
    FDM.CdsTtPt1Get.Close;
    IF not(FDM.TtPt1Get(cirt,order,yy,EdtCom.Text,EdtBrn.Text,DCD)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsTtPt1Get.Open;

end;

procedure TfrmPsRcvProductNoPoGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtPt1Get.Active) or
    (Fdm.CdsTtPt1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmPsRcvProductNoPoGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmPsRcvProductNoPoGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsTtPt1Get;
  order:='';

  EdtYar.Text := IntToStr(StrToInt(FormatDateTime('yyyy',now)) + 543);
  EdtCom.Text := Fdm.CMPUser;
  EdtBrn.Text := Fdm.BRNUser;
  btnSearchClick(btnSearch);

end;

//initialization
//  RegisterMainFormClass(TfrmStApGrid);

end.
