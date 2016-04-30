unit StTargetByProductForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox {$ELSE} MainModuleEx, DSSetupIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, uniDateTimePicker, Vcl.Imaging.jpeg {$ENDIF},ServerModuleEx;

type
  TfrmStTargetByProductGrid = class(TMainGridForm)
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
  frmStTargetByProductGrid: TfrmStTargetByProductGrid;

 const
   rFLGBG = 'P';

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StTargetByProductDataForm;

procedure TfrmStTargetByProductGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmStTargetByProductData).Create(UniApplication);
  TfrmStTargetByProductData(_Form).Init(FDM);
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

procedure TfrmStTargetByProductGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStBgGet.Active then
  begin
    fdm.StBgGet(0,'','','--','',rFLGBG);
    fdm.CdsStBgGet.Open();
  end;

  fdm.CdsStBgGet.Append();
  fDM.CdsStBgGetSTSBg2.AsString := 'A';
  fDM.CdsStBgGetCMPBG2.AsString := FDM.CMPUser;
  fDM.CdsStBgGetBRNBG2.AsString := FDM.BRNUser;
  fDM.CdsStBgGetFLG_BG.AsString := rFLGBG;

  ShowData();

end;


procedure TfrmStTargetByProductGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.StBgDel(rFLGBG,fdm.CdsStBgGetYARBG2.AsString,fdm.CdsStBgGetCMPBG2.AsString,
            fdm.CdsStBgGetBRNBG2.AsString,fdm.CdsStBgGetITNBG2.AsString,fdm.CdsStBgGetSMNBG2.AsString)) THEN
        begin
          fdm.CdsStBgGet.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmStTargetByProductGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStBgGet.Active) or
    (Fdm.CdsStBgGet.IsEmpty) then
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

procedure TfrmStTargetByProductGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStBgGet.Active) or
    (Fdm.CdsStBgGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStBgGet.Edit();

  ShowData();

end;

procedure TfrmStTargetByProductGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt : String;
    yy : integer;
begin
   if trim(EdtYar.Text) = '' then
     yy := 0
   else
   begin
      try
        yy := StrToInt(EdtYar.Text);
      except
        exit;
      end;
   end;

    cirt := Trim(edSearch.Text);
    FDM.CdsStBgGet.Close;
    IF not(FDM.StBgGet(yy,EdtCom.Text,EdtBrn.Text,cirt,order,rFLGBG)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStBgGet.Open;

end;

procedure TfrmStTargetByProductGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStBgGet.Active) or
    (Fdm.CdsStBgGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmStTargetByProductGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStTargetByProductGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStBgGet;
  order:='';

  {
  BtnView.Visible := True;
  btnAdd.Visible := True;
  btnDelete.Visible := True;
  btnEdit.Visible := True;
 }

{$IFDEF FSLOSHP}
  btnBack.Caption := 'ปิดโปรแกรม';
  btnBack.Visible := True;
{$ELSE}
  btnBack.Visible := False;
{$ENDIF}

end;

//initialization
//  RegisterMainFormClass(TfrmStTargetByProductGrid);

end.
