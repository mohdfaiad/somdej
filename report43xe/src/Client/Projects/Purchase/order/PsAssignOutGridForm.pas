unit PsAssignOutGridForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSAssignWorkIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg ,ServerModuleEx;

type
  TfrmPsAssignOutGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    EdtCom: TUniEdit;
    UniLabel2: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    IFRM: TUniDateTimePicker;
    UniLabel5: TUniLabel;
    ITO: TUniDateTimePicker;
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
   FDM: TDSAssignWorkDM ;

   V_FRM , V_TO : Double;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

  public
    property DM : TDSAssignWorkDM read FDM write FDM;

  end;

var
  frmPsAssignOutGrid: TfrmPsAssignOutGrid;

const
  DCD = '604';

implementation

{$R *.dfm}

uses uniGUIForm, XeUniGUIComponents,PsAssignOutForm;

procedure TfrmPsAssignOutGrid.ShowData();
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPsAssignOutData).Create(UniApplication);
  TfrmPsAssignOutData(_Form).Init(FDM,FDM.CdsTtAd1GetListIDTAD1.AsFloat,Fdm.CdsTtAd1GetListIWKAD1.AsInteger);
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

procedure TfrmPsAssignOutGrid.btnAddClick(Sender: TObject);
begin

  FDM.CdsTtAd1GetList.Append();
  fDM.CdsTtAd1GetListCMPAD1.AsString := Fdm.CMPUser;
  fDM.CdsTtAd1GetListBRNAD1.AsString := Fdm.BRNUser;
  fDM.CdsTtAd1GetListIDTAD1.AsDateTime := Fdm.GetSystemDate;
  fDM.CdsTtAd1GetListYARAD1.AsInteger := StrToInt(FormatDateTime('yyyy',Fdm.GetSystemDate));
  fDM.CdsTtAd1GetListPRDAD1.AsInteger := StrToInt(FormatDateTime('MM',Fdm.GetSystemDate));


  ShowData();

end;


procedure TfrmPsAssignOutGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
      {
        iF (Fdm.MtAppDel(fdm.CdsMtAppGetListYAROT5.AsInteger,fdm.CdsMtAppGetListCMPOT5.AsString,
               fdm.CdsMtAppGetListBRNOT5.AsString,DCD,FDM.CdsMtAppGetListDNOOT5.AsInteger)) THEN
        begin
          fdm.CdsMtAppGetList.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');

          btnSearchClick(btnSearch);
        end;}
        end;
  end;
end;

procedure TfrmPsAssignOutGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtAd1GetList.Active) or
    (Fdm.CdsTtAd1GetList.IsEmpty) then
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

procedure TfrmPsAssignOutGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsTtAd1GetList.Active) or
    (Fdm.CdsTtAd1GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  Fdm.CdsTtAd1Get.Close();
  Fdm.TtAD1Get(Fdm.CdsTtAd1GetListCMPAD1.AsString,Fdm.CdsTtAd1GetListBRNAD1.AsString,
         Fdm.CdsTtAd1GetListYARAD1.AsInteger,Fdm.CdsTtAd1GetListPRDAD1.AsInteger,Fdm.CdsTtAd1GetListDNOAD1.AsLargeInt,
         Fdm.CdsTtAd1GetListIDTAD1.AsFloat,Fdm.CdsTtAd1GetListIWKAD1.AsInteger,99999,'R');  //chang ed
  Fdm.CdsTtAd1Get.Open();

  FDM.CdsTtAd1GetList.Edit();

  ShowData();

end;

procedure TfrmPsAssignOutGrid.btnSearchClick(Sender: TObject);
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

    FDM.CdsTtAd1GetList.Close;
    IF not(FDM.TtAd1GetList(cirt,order,EdtCom.Text,EdtBrn.Text,0,0,0,Now)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsTtAd1GetList.Open;

end;

procedure TfrmPsAssignOutGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtAd1GetList.Active) or
    (Fdm.CdsTtAd1GetList.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsTtAd1Get.Close();
  Fdm.TtAD1Get(Fdm.CdsTtAd1GetListCMPAD1.AsString,Fdm.CdsTtAd1GetListBRNAD1.AsString,
         Fdm.CdsTtAd1GetListYARAD1.AsInteger,Fdm.CdsTtAd1GetListPRDAD1.AsInteger,Fdm.CdsTtAd1GetListDNOAD1.AsLargeInt,
         Fdm.CdsTtAd1GetListIDTAD1.AsFloat,Fdm.CdsTtAd1GetListIWKAD1.AsInteger,99999,'R');  //chang ed
  Fdm.CdsTtAd1Get.Open();

  ShowData();


end;

procedure TfrmPsAssignOutGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;

procedure TfrmPsAssignOutGrid.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSAssignWorkDM;

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

  dsgrid.DataSet:= FDM.CdsTtAd1GetList;
  order:='';

  IFRM.Text := FDM.FSBuddhistDateToStr(FDM.GetSystemDate - (365*2));
  ITO.Text := FDM.FSBuddhistDateToStr(FDM.GetSystemDate);
  btnSearchClick(btnSearch);

end;

//initialization
//  RegisterMainFormClass(TfrmStArGrid);

end.
