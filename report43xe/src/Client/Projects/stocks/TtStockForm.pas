unit TtStockForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSStockIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, Vcl.Imaging.jpeg ,ServerModuleEx;

type
  TfrmTtStockGrid = class(TMainGridForm)
    dsgrid: TDataSource;
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
   FDM: TDSStockDM ;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSStockDM read FDM write FDM;

  end;

var
  frmTtStockGrid: TfrmTtStockGrid;


implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents, StCtShpDataForm;

procedure TfrmTtStockGrid.ShowData();
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

procedure TfrmTtStockGrid.btnAddClick(Sender: TObject);

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


procedure TfrmTtStockGrid._Confirm(AResult: Integer);
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

procedure TfrmTtStockGrid.btnDeleteClick(Sender: TObject);
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

procedure TfrmTtStockGrid.btnEditClick(Sender: TObject);
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

procedure TfrmTtStockGrid.btnSearchClick(Sender: TObject);
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

procedure TfrmTtStockGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtStockGet.Active) or
    (Fdm.CdsTtStockGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();


end;

procedure TfrmTtStockGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmTtStockGrid.UniFormCreate(Sender: TObject);
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

//initialization
//  RegisterMainFormClass(TfrmStCtShpGrid);

end.
