unit uHISSystemSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSStockIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, Vcl.Imaging.jpeg ,ServerModuleEx,
  MainDataFormClass, uniRadioButton, uniPageControl, uniBitBtn;

type
  TfrmHISSystemSetting = class(TMainDataForm)//TMainGridForm
    dsgrid: TDataSource;
    DBCifName: TUniDBEdit;
    LbName: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    PnArAnalyst: TUniPageControl;
    tabNormal: TUniTabSheet;
    PnNorTop: TUniPanel;
    UniLabel7: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    PnNormalClient: TUniPanel;
    UniLabel18: TUniLabel;
    UniDBEdit17: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniRadioButton1: TUniRadioButton;
    UniRadioButton2: TUniRadioButton;
    UniLabel20: TUniLabel;
    UniDBEdit18: TUniDBEdit;
    UniDBEdit19: TUniDBEdit;
    UniLabel21: TUniLabel;
    UniDBEdit20: TUniDBEdit;
    UniLabel22: TUniLabel;
    UniDBEdit21: TUniDBEdit;
    UniLabel23: TUniLabel;
    taborder: TUniTabSheet;
    dbgbottom: TUniDBGrid;
    UniPanel1: TUniPanel;
    UniLabel24: TUniLabel;
    btnSearch: TUniButton;
    UniEdit2: TUniEdit;
    UniLabel25: TUniLabel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniLabel26: TUniLabel;
    UniDateTimePicker4: TUniDateTimePicker;
    dbgtop: TUniDBGrid;
    tabRcv: TUniTabSheet;
    dbRCV3: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniLabel27: TUniLabel;
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
    UniLabel28: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel29: TUniLabel;
    UniDateTimePicker2: TUniDateTimePicker;
    dbRCV1: TUniDBGrid;
    dbRCV2: TUniDBGrid;
    tabAnalyst: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniLabel44: TUniLabel;
    UniEdit4: TUniEdit;
    UniButton3: TUniButton;
    UniLabel45: TUniLabel;
    UniDateTimePicker5: TUniDateTimePicker;
    DbAnalys: TUniDBGrid;
    UniLabel48: TUniLabel;
    UniDBEdit35: TUniDBEdit;
    UniLabel49: TUniLabel;
    UniDBEdit36: TUniDBEdit;
    UniLabel50: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniBitBtn1: TUniBitBtn;
    UniLabel51: TUniLabel;
    UniDBEdit37: TUniDBEdit;
    UniLabel52: TUniLabel;
    UniDBEdit38: TUniDBEdit;
    UniLabel53: TUniLabel;
    UniDBEdit39: TUniDBEdit;
    UniDBEdit40: TUniDBEdit;
    UniLabel54: TUniLabel;
    UniLabel55: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel56: TUniLabel;
    UniDBEdit41: TUniDBEdit;
    UniBitBtn2: TUniBitBtn;
    UniLabel57: TUniLabel;
    UniDBEdit42: TUniDBEdit;
    UniBitBtn3: TUniBitBtn;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniBitBtn4: TUniBitBtn;
    UniLabel58: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel59: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniBitBtn5: TUniBitBtn;
    UniLabel60: TUniLabel;
    UniDBEdit43: TUniDBEdit;
    procedure btnAddClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDSStockDM ;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSStockDM read FDM write FDM;

  end;

var
  frmTtStockGrid: TfrmHISSystemSetting;


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents;

procedure TfrmHISSystemSetting.ShowData();
var
  _Form: TUniForm;
begin

//  _Form := TUniFormClass(TfrmStCtShpData).Create(UniApplication);
//  TfrmStCtShpData(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
//    _Form.Position := poDefault;
    _Form.WindowState := wsNormal;


    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;

end;

procedure TfrmHISSystemSetting.btnAddClick(Sender: TObject);

begin
  if not fdm.cdsTtStockGet.Active then
  begin
    fdm.StockGet('--','',0,'','','');
    fdm.CdsTtStockGet.Open();
  end;

  fdm.CdsTtStockGet.Append();
//  fDM.CdsTtStockGetSTSShp.AsString := 'A';

  ShowData();

end;


procedure TfrmHISSystemSetting._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
   {     iF (Fdm.StShpDel(fdm.CdsTtStockGetCNOSHP.AsString,fdm.CdsTtStockGetSEQSHP.AsInteger)) THEN
        begin
          fdm.CdsTtStockGet.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
     }
        end;

  end;
end;

procedure TfrmHISSystemSetting.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtStockGet.Active) or
    (Fdm.CdsTtStockGet.IsEmpty) then
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

procedure TfrmHISSystemSetting.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsTtStockGet.Active) or
    (Fdm.CdsTtStockGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsTtStockGet.Edit();

  ShowData();

end;

procedure TfrmHISSystemSetting.btnSearchClick(Sender: TObject);
var cirt : String;
begin
  ShowMessage('xxxx');
(*
    cirt := Trim(edSearch.Text);
    FDM.CdsTtStockGet.Close;
    IF not(FDM.StockGet(cirt,order,2013,'88','89','115')) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsTtStockGet.Open;
 *)
end;

procedure TfrmHISSystemSetting.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtStockGet.Active) or
    (Fdm.CdsTtStockGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmHISSystemSetting.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;



end;

procedure TfrmHISSystemSetting.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSStocksDM;

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
      '<p Shple="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p Shple="text-align:center;color:#0000A0">please sign-on using Application Center.</p> <br>' +
      '<p Shple="text-align:center;color:#0000A0">ระบบต้องการสิทธิ์ในการเข้าถึงโปรแกรม</p> ' +
      '<p Shple="text-align:center;color:#0000A0">กรุณา Sign-On เข้าใช้งานโดยใช้ Application Center.</p> ' +
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

  dsgrid.DataSet:= FDM.CdsTtStockGet;
  order:='';

  {
  BtnView.Visible := True;
  btnAdd.Visible := True;
  btnDelete.Visible := True;
  btnEdit.Visible := True;
 }

end;

procedure TfrmHISSystemSetting.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
  if key=VK_F3 then ShowMessage('press F3');

end;

//initialization
//  RegisterMainFormClass(TfrmStCtShpGrid);

end.
