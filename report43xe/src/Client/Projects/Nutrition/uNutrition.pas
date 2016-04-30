unit uNutrition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSStockIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, Vcl.Imaging.jpeg ,ServerModuleEx,
  MainDataFormClass, uniRadioButton, uniPageControl;

type
  TfrmNutrition = class(TMainDataForm)//TMainGridForm
    dsgrid: TDataSource;
    LbCmp: TUniLabel;
    CmbCmp: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    DBDealer: TUniDBEdit;
    LbBrn: TUniLabel;
    CmbBrn: TUniDBLookupComboBox;
    DBCifName: TUniDBEdit;
    LbName: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit4: TUniDBEdit;
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
    tabAp: TUniTabSheet;
    UniPanel3: TUniPanel;
    UniLabel30: TUniLabel;
    UniEdit3: TUniEdit;
    UniButton2: TUniButton;
    UniLabel31: TUniLabel;
    CmbMonth: TUniComboBox;
    UniLabel32: TUniLabel;
    UniDBEdit22: TUniDBEdit;
    UniDBEdit23: TUniDBEdit;
    UniLabel33: TUniLabel;
    UniDBEdit24: TUniDBEdit;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniDBEdit26: TUniDBEdit;
    UniLabel36: TUniLabel;
    UniDBEdit27: TUniDBEdit;
    UniLabel37: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniDBEdit29: TUniDBEdit;
    UniLabel38: TUniLabel;
    UniDBEdit30: TUniDBEdit;
    UniLabel39: TUniLabel;
    UniLabel40: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    UniDBEdit32: TUniDBEdit;
    UniLabel41: TUniLabel;
    UniDBEdit33: TUniDBEdit;
    UniLabel42: TUniLabel;
    UniLabel43: TUniLabel;
    UniDBEdit34: TUniDBEdit;
    tabAnalyst: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniLabel44: TUniLabel;
    UniEdit4: TUniEdit;
    UniButton3: TUniButton;
    UniLabel45: TUniLabel;
    UniDateTimePicker5: TUniDateTimePicker;
    DbAnalys: TUniDBGrid;
    tabCheque: TUniTabSheet;
    UniPanel5: TUniPanel;
    UniLabel46: TUniLabel;
    UniButton4: TUniButton;
    UniDateTimePicker6: TUniDateTimePicker;
    UniLabel47: TUniLabel;
    UniDateTimePicker7: TUniDateTimePicker;
    dbCheck: TUniDBGrid;
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
  frmTtStockGrid: TfrmNutrition;


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents;

procedure TfrmNutrition.ShowData();
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

procedure TfrmNutrition.btnAddClick(Sender: TObject);

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


procedure TfrmNutrition._Confirm(AResult: Integer);
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

procedure TfrmNutrition.btnDeleteClick(Sender: TObject);
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

procedure TfrmNutrition.btnEditClick(Sender: TObject);
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

procedure TfrmNutrition.btnSearchClick(Sender: TObject);
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

procedure TfrmNutrition.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtStockGet.Active) or
    (Fdm.CdsTtStockGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmNutrition.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;



end;

procedure TfrmNutrition.UniFormCreate(Sender: TObject);
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

procedure TfrmNutrition.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
  if key=VK_F3 then ShowMessage('press F3');

end;

//initialization
//  RegisterMainFormClass(TfrmStCtShpGrid);

end.
