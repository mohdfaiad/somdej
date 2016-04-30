unit AWRundownTMTForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSAssignWorkIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg, uniPageControl,
  uniBitBtn, uniSpeedButton ,DateUtils, uniRadioButton;

type
  TfrmAWRundownTMTGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    LbCid: TUniLabel;
    EdtYar: TUniEdit;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel3: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    RDTRDW: TUniDateTimePicker;
    DNORDW: TUniEdit;
    RNORDW: TUniEdit;
    RdoRundown: TUniRadioButton;
    RdoEdit: TUniRadioButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);
    procedure RdoEditClick(Sender: TObject);
    procedure RdoRundownClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);

    private

   order : String;
   FDM: TDSAssignWorkDM ;
   _DATOPT : TDateTime;
   _WEKOPT : INTEGER;

    procedure ShowData();
    procedure _Confirm(AResult: Integer);
    procedure GetDnoRdw(OUT_DNORDW:Integer);
  public
    procedure Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);

  end;

var
  frmAWRundownTMTGrid: TfrmAWRundownTMTGrid;

implementation

{$R *.dfm}

uses uniGUIForm, StDtlCodeForm, PopupStDtlCodeForm,
  XeUniGUIComponents,PopupStHdrCodeForm, ServerModuleEx, PopupWeekForm,
  PopupMarkFlagForm, PopupRunDownForm;

procedure TfrmAWRundownTMTGrid.Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);
var Yar, prd : integer;
begin

  Fdm := dm;
  _DATOPT := DATOPT_;
  _WEKOPT := WEKOPT_;

  dsgrid.DataSet := Fdm.CdsTtRdwGet;

  Fdm.CdsTtRdwGet.Close();
  Fdm.TtRdwGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
               Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,
               '600',_DATOPT);
  Fdm.CdsTtRdwGet.Open();

  if Fdm.CdsTtRdwGetRWKRDW.AsInteger = 1 then
    RdoRundown.Checked := True;

  if Fdm.CdsTtRdwGetRWKRDW.AsInteger > 1 then
    RdoEdit.Checked := True;


  EdtCom.Text := Fdm.CdsTtSchGetCMPSCH.AsString;
  EdtBrn.Text := Fdm.CdsTtSchGetBRNSCH.AsString;

  EdtYar.Text := IntToStr(Fdm.CdsTtSchGetYARSCH.AsInteger + 543);
  edSearch.Text := Fdm.CdsTtSchGetPRDSCH.AsString;
  RDTRDW.Text := FDM.FSBuddhistDateToStr(_DATOPT);

  if Fdm.CdsTtRdwGet.RecordCount > 0 then
  begin
    DNORDW.Text := Fdm.CdsTtRdwGetDNORDW.AsString;
    RNORDW.Text := Fdm.CdsTtRdwGetRNORDW.AsString;
    RNORDW.ReadOnly := True;
  end
  else
    RNORDW.ReadOnly := False;

   Yar := Fdm.CdsTtSchGetYARSCH.AsInteger;
   Prd := Fdm.CdsTtSchGetPRDSCH.AsInteger;

   if Prd = 12 then
   begin
     Yar := Yar + 1;
     Prd := 1;
   end;

   dbgDataList.Columns.Items[3].Title.Caption := 'สัปดาห์ 1<br>วันที่ ' +  Fdm.CdsTtSchGetNextMMW1.AsString;
   dbgDataList.Columns.Items[4].Title.Caption := 'สัปดาห์ 2<br>วันที่ ' +  Fdm.CdsTtSchGetNextMMW2.AsString;
   dbgDataList.Columns.Items[5].Title.Caption := 'สัปดาห์ 3<br>วันที่ ' +  Fdm.CdsTtSchGetNextMMW3.AsString;
   dbgDataList.Columns.Items[6].Title.Caption := 'สัปดาห์ 4<br>วันที่ ' +  Fdm.CdsTtSchGetNextMMW4.AsString;

   RSetColorReadOnly();

end;

procedure TfrmAWRundownTMTGrid.RdoEditClick(Sender: TObject);
begin
  btnSearch.Visible := RdoEdit.Checked;

end;

procedure TfrmAWRundownTMTGrid.RdoRundownClick(Sender: TObject);
begin
  btnSearch.Visible := RdoEdit.Checked;

end;

procedure TfrmAWRundownTMTGrid.GetDnoRdw(OUT_DNORDW:Integer);
begin
  DNORDW.Text := IntToStr(OUT_DNORDW);
end;

procedure TfrmAWRundownTMTGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupRunDown).Create(UniApplication);
  TfrmPopupRunDown(_Form).Init(FDM);
      if (Assigned(_Form)) then
      begin
        _Form.BorderIcons := [];
        _Form.BorderStyle := bsNone;
        _Form.Position := poDefault;
        _Form.Left := Self.Left;
        _Form.Top := Self.Top;
        _Form.Width := Self.Width;
        _Form.Height := Self.Height;
        _Form.Align := alNone;
        _Form.WindowState := wsNormal;
        _Form.ShowModal();
      end else
      begin
        MessageDlg('There are no FROME related', mtError, [mbOK], nil);
      end;


end;

procedure TfrmAWRundownTMTGrid.btnAddClick(Sender: TObject);
var _RecNo : integer;
  _DNO : INTEGER;

begin
  _RecNo := Fdm.CdsTtRdwGet.RecordCount + 1;

  if _RecNo > 1 then
    _DNO :=  fdm.CdsTtRdwGetDNORDW.AsInteger;

  fdm.CdsTtRdwGet.Append();
  fDM.CdsTtRdwGetSTSRDW.AsString := 'A';
  FDM.CdsTtRdwGetCMPRDW.AsString := FDM.CdsTtSchOptGetCMPOPT.AsString ;
  FDM.CdsTtRdwGetBRNRDW.AsString := FDM.CdsTtSchOptGetBRNOPT.AsString ;
  Fdm.CdsTtRdwGetYARRDW.AsInteger := FDM.CdsTtSchOptGetYAROPT.AsInteger;
  Fdm.CdsTtRdwGetPRDRDW.AsInteger := FDM.CdsTtSchOptGetPRDOPT.AsInteger ;
  fdm.CdsTtRdwGetDCDRDW.AsString := '600';
  if ((TRIM(dNOrdw.Text) = '') OR (_RecNo = 1)) then
     fdm.CdsTtRdwGetDNORDW.AsInteger := 0
  ELSE
      fdm.CdsTtRdwGetDNORDW.AsInteger :=_DNO;

  Fdm.CdsTtRdwGetRNORDW.AsString := RNORDW.Text;
  Fdm.CdsTtRdwGetRDTRDW.AsDateTime := _DATOPT;
  Fdm.CdsTtRdwGetRWKRDW.AsInteger := _WEKOPT;
  Fdm.CdsTtRdwGetSEQRDW.AsInteger := _RecNo;
  Fdm.CdsTtRdwGetQ11RDW.AsInteger := 0;
  Fdm.CdsTtRdwGetQ12RDW.AsInteger := 0;

  Fdm.CdsTtRdwGetQ21RDW.AsInteger := 0;
  Fdm.CdsTtRdwGetQ22RDW.AsInteger := 0;

  Fdm.CdsTtRdwGetQ31RDW.AsInteger := 0;
  Fdm.CdsTtRdwGetQ32RDW.AsInteger := 0;

  Fdm.CdsTtRdwGetQ41RDW.AsInteger := 0;
  Fdm.CdsTtRdwGetQ42RDW.AsInteger := 0;

  Fdm.CdsTtRdwGetQ51RDW.AsInteger := 0;
  Fdm.CdsTtRdwGetQ52RDW.AsInteger := 0;



  ShowData();

end;

procedure TfrmAWRundownTMTGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.TtSchDel(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
           fdm.CdsTtSchGetYARSCH.AsInteger,fdm.CdsTtSchGetPRDSCH.AsInteger)) THEN
        begin
          fdm.CdsTtSchGet.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmAWRundownTMTGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtSchGet.Active) or
    (Fdm.CdsTtSchGet.IsEmpty) then
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

procedure TfrmAWRundownTMTGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsTtSchGet.Active) or
    (Fdm.CdsTtSchGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;
  fdm.CdsTtRdwGet.Edit();

  ShowData();

end;

procedure TfrmAWRundownTMTGrid.btnSearchClick(Sender: TObject);
var _DNO : integer;
begin
   if Fdm.TtRdwCopy(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
               Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,
               '600',_DATOPT,Fdm.UserID,_DNO) then
   begin
      Fdm.CdsTtRdwGet.Close();
      Fdm.TtRdwGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
               Fdm.CdsTtSchGetYARSCH.AsInteger,Fdm.CdsTtSchGetPRDSCH.AsInteger,
               '600',_DATOPT);
      Fdm.CdsTtRdwGet.Open();
      DNORDW.Text := Fdm.CdsTtRdwGetDNORDW.AsString;

      showmessage('คัดลอกจากต้นฉบับเรียบร้อยแล้ว');
   end;


end;

procedure TfrmAWRundownTMTGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtSchGet.Active) or
    (Fdm.CdsTtSchGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure TfrmAWRundownTMTGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);
end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);

end.
