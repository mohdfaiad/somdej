unit StDtlCodeForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox {$ELSE} MainModuleEx,DSSetupIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, uniDateTimePicker {$ENDIF};

type
  TfrmStDtlCodeGrid = class(TMainGridForm)
    dsgridDtl: TDataSource;
    LbHdrCode: TUniLabel;
    DbHdrCode: TUniDBEdit;
    LbThaiDesc: TUniLabel;
    DbThaiDesc: TUniDBEdit;
    LbEngDesc: TUniLabel;
    DbEngDesc: TUniDBEdit;
    dsgridHdr: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure BtnViewClick(Sender: TObject);

    private

     order : String;
     FDM: TDSSetupDM ;
     procedure ShowData();
     procedure _Confirm(AResult: Integer);

  public
    procedure Init(DM : TDSSetupDM;CID : String);
  end;

var
  frmStDtlCodeGrid: TfrmStDtlCodeGrid;

implementation

{$R *.dfm}

uses uniGUIForm, PopupStDtlCodeForm;

procedure TfrmStDtlCodeGrid._Confirm(AResult: Integer);
begin

end;

procedure TfrmStDtlCodeGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGetDtl.Active) or
    (Fdm.CdsStCdeGetDtl.IsEmpty) then
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

procedure TfrmStDtlCodeGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGetDtl.Active) or
    (Fdm.CdsStCdeGetDtl.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  Fdm.CdsStCdeGetDtl.Edit();
  ShowData();
end;

procedure TfrmStDtlCodeGrid.btnSearchClick(Sender: TObject);
var
    cirt : String;
begin
    cirt := Trim(edSearch.Text);
    FDM.CdsStCdeGetDtl.Close;
    //IF not(FDM.StCidGet(cirt,order,'1',fdm.CdsStCdeGetCIDCDE.AsString)) THEN
    //   ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStCdeGetDtl.Open;
end;

procedure TfrmStDtlCodeGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGetDtl.Active) or
    (Fdm.CdsStCdeGetDtl.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure TfrmStDtlCodeGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmStDtlCodeGrid.Init(DM : TDSSetupDM;CID : String);
begin
   Fdm := dm;

   dsgridHdr.DataSet := fdm.CdsStCdeGet;
   dsgridDtl.DataSet := fdm.CdsStCdeGetDtl;

    FDM.CdsStCdeGetDtl.Close;
    IF not(FDM.StCidGet('','','1',CID)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStCdeGetDtl.Open;

end;

procedure TfrmStDtlCodeGrid.ShowData();
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmPopupStDtlCode).Create(UniApplication);
  TfrmPopupStDtlCode(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
//    _Form.Position := poDefault;
//    _Form.Left := 0;
//    _Form.Top := Self.Top;
//    _Form.Width := Self.Width;
//    _Form.Height := Self.Height;
    _Form.Align := alNone;
    _Form.WindowState := wsNormal;
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;
end;

procedure TfrmStDtlCodeGrid.btnAddClick(Sender: TObject);
BEGIN
  FDM.CdsStCdeGetDtl.Append();
  fdm.CdsStCdeGetDtlSTSCDE.AsString := 'A';
  ShowData();

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
