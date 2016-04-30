unit StHdrCodeForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSSetupIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg,MainDataFormClass,
  uniPageControl, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdTime, IdUnixTime ;

type
  TfrmStHdrCodeGrid = class(TMainDataForm) //TMainGridForm
    dsgrid: TDataSource;
    BtnAddEdtSubCode: TUniButton;
    UniLabel1: TUniLabel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    UniTabSheet6: TUniTabSheet;
    UniTabSheet7: TUniTabSheet;
    UniTabSheet8: TUniTabSheet;
    UniTabSheet9: TUniTabSheet;
    UniTabSheet10: TUniTabSheet;
    UniTabSheet11: TUniTabSheet;
    UniTabSheet12: TUniTabSheet;
    UniTabSheet13: TUniTabSheet;
    UniTabSheet14: TUniTabSheet;
    UniTabSheet15: TUniTabSheet;
    UniTabSheet16: TUniTabSheet;
    UniTabSheet17: TUniTabSheet;
    UniLabel2: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniDBEdit18: TUniDBEdit;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniDBEdit19: TUniDBEdit;
    UniLabel24: TUniLabel;
    UniDBEdit20: TUniDBEdit;
    UniLabel25: TUniLabel;
    UniDBEdit21: TUniDBEdit;
    UniLabel26: TUniLabel;
    UniDBEdit22: TUniDBEdit;
    UniLabel27: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    UniDBEdit24: TUniDBEdit;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniDBEdit26: TUniDBEdit;
    UniLabel30: TUniLabel;
    UniLabel31: TUniLabel;
    UniDBEdit27: TUniDBEdit;
    UniDBEdit28: TUniDBEdit;
    UniLabel32: TUniLabel;
    UniLabel33: TUniLabel;
    UniDBEdit29: TUniDBEdit;
    UniDBEdit30: TUniDBEdit;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    UniDBComboBox2: TUniDBComboBox;
    UniDBComboBox3: TUniDBComboBox;
    UniDBComboBox4: TUniDBComboBox;
    dsReport43Person: TDataSource;
    btnRefresh: TUniButton;
    dsReport43Service: TDataSource;
    edPID: TUniEdit;
    IdUnixTime1: TIdUnixTime;
    UniButton1: TUniButton;
    procedure btnAddClick(Sender: TObject);
    procedure BtnAddEdtSubCodeClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure BtnViewClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);

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
  frmStHdrCodeGrid: TfrmStHdrCodeGrid;

implementation

{$R *.dfm}

uses uniGUIForm, StDtlCodeForm, PopupStDtlCodeForm,
  XeUniGUIComponents,PopupStHdrCodeForm, ServerModuleEx;

const
SecsPerDay = 24 *60 *60;

function UnixTime(DateTime: TDateTime): Double;
begin
result := Trunc( (DateTime -EncodeDate(1970,1,1)) * SecsPerDay);
end;

function UnixDateTimeToDelphiDateTime(UnixDateTime: longint): Double;
begin
result := EncodeDate(1970, 1, 1) +( UnixDateTime / SecsPerDay );
end;

procedure TfrmStHdrCodeGrid.ShowData();
var
  _Form: TUniForm;
begin




end;

procedure TfrmStHdrCodeGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsStCdeGet.Active then
  begin
     IF not(FDM.StCidGet('','','0','---')) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');

     FDM.CdsStCdeGet.Open;
  end;

  fdm.CdsStCdeGet.Append();

  ShowData();

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
procedure TfrmStHdrCodeGrid.BtnAddEdtSubCodeClick(Sender: TObject);
var
  _Form: TUniForm;
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  _Form := TUniFormClass(TfrmStDtlCodeGrid).Create(UniApplication);

  if (Assigned(_Form)) then
  begin
//    {$IFDEF OBSS}
    _Form.BorderIcons := [];
      _Form.WindowState := wsNormal;
  //    FCurrentAppForm.Parent := pnAppFrame;
      _Form.Align := alNone;
      _Form.BorderStyle := bsSingle;

     _Form.Left := 0;
     _Form.Top := Top;
     _Form.Height := Height;
     _Form.Width := Width;

//    {$ENDIF}

        _Form.WebForm.ExtWindow.Draggable := False;
        _Form.WebForm.ExtWindow.Resizable := False;

       _Form.Show();
      _Form.BringToFront();


  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmStHdrCodeGrid._Confirm(AResult: Integer);
begin

end;

procedure TfrmStHdrCodeGrid.btnConfirmClick(Sender: TObject);
var yyyy,dd,mm:Word;
    BIRTH,MOVIN,DDISCHARGE,D_UPDATE,EXPORT_DATE:TDate;
begin
if fdm.cdsGetReport43Person.State in [dsInsert,dsEdit] then fdm.cdsGetReport43Person.post;
  //fdm.HisSamUpdate('267638');
 //

  if fdm.HisSamUpdate(FDM.cdsGetReport43Person.FieldByName('PID').AsString,FDM.cdsGetReport43Person.FieldByName('CID').AsString,
        FDM.cdsGetReport43Person.FieldByName('HOSPCODE').AsString,
        FDM.cdsGetReport43Person.FieldByName('HID').AsString,
        FDM.cdsGetReport43Person.FieldByName('PRENAME').AsString,
        FDM.cdsGetReport43Person.FieldByName('NAME').AsString,
        FDM.cdsGetReport43Person.FieldByName('LNAME').AsString,
        FDM.cdsGetReport43Person.FieldByName('HN').AsString,

        FDM.cdsGetReport43Person.FieldByName('SEX').AsString,
        FDM.cdsGetReport43Person.FieldByName('BIRTH').AsFloat
        )
  then ShowMessage('update person finish') else  ShowMessage('update un-success.')

    //inherited;
    {

    DecodeDate(FDM.cdsGetReport43Person.FieldByName('BIRTH').AsDateTime,yyyy,mm,dd);
    BIRTH := EncodeDate(yyyy,mm,dd);

    DecodeDate(FDM.cdsGetReport43Person.FieldByName('MOVEIN').AsDateTime,yyyy,mm,dd);
    MOVIN := EncodeDate(yyyy,mm,dd);

    DecodeDate(FDM.cdsGetReport43Person.FieldByName('DDISCHARGE').AsDateTime,yyyy,mm,dd);
    DDISCHARGE := EncodeDate(yyyy,mm,dd);

    DecodeDate(FDM.cdsGetReport43Person.FieldByName('D_UPDATE').AsDateTime,yyyy,mm,dd);
    D_UPDATE := EncodeDate(yyyy,mm,dd);

    DecodeDate(FDM.cdsGetReport43Person.FieldByName('EXPORT_DATE').AsDateTime,yyyy,mm,dd);
    EXPORT_DATE := EncodeDate(yyyy,mm,dd);
    }

   {

    if FDM.cdsGetReport43Person.ChangeCount>0 then

     if  FDM.HISInsUpdPerson(
        FDM.cdsGetReport43Person.FieldByName('CID').AsString,
        FDM.cdsGetReport43Person.FieldByName('REPORTID').AsInteger,
        FDM.cdsGetReport43Person.FieldByName('HOSPCODE').AsString,
        FDM.cdsGetReport43Person.FieldByName('PID').AsString,

        FDM.cdsGetReport43Person.FieldByName('HID').AsString,
        FDM.cdsGetReport43Person.FieldByName('PRENAME').AsString,
        FDM.cdsGetReport43Person.FieldByName('NAME').AsString,
        FDM.cdsGetReport43Person.FieldByName('LNAME').AsString,
        FDM.cdsGetReport43Person.FieldByName('HN').AsString,

        FDM.cdsGetReport43Person.FieldByName('SEX').AsString
      )  then ShowMessage('update person finish') else  ShowMessage('update un-success.')

     }

end;

procedure TfrmStHdrCodeGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
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

procedure TfrmStHdrCodeGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsStCdeGet.Edit();

  ShowData();

end;

procedure TfrmStHdrCodeGrid.btnRefreshClick(Sender: TObject);
begin
  //inherited;

  fdm.cdsGetReport43Person.close;
  fdm.HisGetReport43Person(strtoint(edPID.text));
  fdm.cdsGetReport43Person.open;


  fdm.cdsGetReport43Service.close;
  fdm.HisGetReport43Service(strtoint(edPID.text));
  fdm.cdsGetReport43Service.open;


    //cid := Trim(EdCid.Text);
 //   FDM.CdsStCdeGet.Close;
//    FDM.CdsStCdeGet.Open;
 // ShowMessage(FDM.SstmSam('ddddd'));


   // FDM.CdsStCdeGet.Close;
   // IF not(FDM.StCidGet(cirt,order,'0',cid)) THEN
   //    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
   // FDM.CdsStCdeGet.Open;

    //SstmSam
   // ShowMessage(FDM.SstmSam(' Joe '));
    //ShowMessage(inttostr(fdm.cdsGetReport43Service.RecordCount));




end;

procedure TfrmStHdrCodeGrid.btnSearchClick(Sender: TObject);
var inform: string;
    cirt,cid : String;

begin
    //cirt := Trim(edSearch.Text);
    //cid := Trim(EdCid.Text);
    FDM.CdsStCdeGet.Close;
    //IF not(FDM.StCidGet(cirt,order,'0',cid)) THEN
    //   ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStCdeGet.Open;

end;

procedure TfrmStHdrCodeGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsStCdeGet.Active) or
    (Fdm.CdsStCdeGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure SetDateParamValue(P: TParam; Value: Double);
begin
  P.DataType := ftDate;
  if (Value <> 0) then
    P.AsDate := TDate(Value)
  else
   P.Clear();
end;

procedure TfrmStHdrCodeGrid.UniButton1Click(Sender: TObject);
begin
 // inherited;
if not (fdm.cdsGetReport43Person.State in [dsInsert,dsEdit] ) then fdm.cdsGetReport43Person.edit;
// SetDateParamValue(fdm.cdsGetReport43Person.FieldByName('BIRTH'),

//ShowMessage(FloatToStr(fdm.cdsGetReport43Person.FieldByName('BIRTH').AsFloat));

  fdm.cdsGetReport43Person.FieldByName('BIRTH').AsFloat := 41667;

//  41667


end;

procedure TfrmStHdrCodeGrid.UniFormCreate(Sender: TObject);
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

  dsgrid.DataSet:= FDM.CdsStCdeGet;
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

procedure TfrmStHdrCodeGrid.UniFormShow(Sender: TObject);
begin
 // inherited;
 UniLabel1.Caption:=UniApplication.Parameters.Values['Button'];
end;

end.
