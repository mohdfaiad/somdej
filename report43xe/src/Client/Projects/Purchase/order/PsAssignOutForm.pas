unit PsAssignOutForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSAssignWorkIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg, uniPageControl,
  uniBitBtn, uniSpeedButton ,DateUtils, uniSpinEdit;

type
  TfrmPsAssignOutData = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    DNOAD1: TUniEdit;
    btnConfirm: TUniButton;
    btnCancel: TUniButton;
    LbEdt: TUniLabel;
    LbITN: TUniLabel;
    EdtITN: TUniEdit;
    LbCol: TUniLabel;
    COLAD1: TUniDBLookupComboBox;
    GrpAssign: TUniGroupBox;
    LbAssignMonth: TUniLabel;
    EdtAssignMonth: TUniEdit;
    LbAssignYare: TUniLabel;
    EdtAssignYear: TUniEdit;
    LbAssignWeek: TUniLabel;
    CmbWISAD1: TUniComboBox;
    EdtQT1: TUniSpinEdit;
    LbQT1: TUniLabel;
    BtnDelAssign: TUniButton;
    BtnOk: TUniButton;
    IDTAD1: TUniDateTimePicker;
    CmbEDT: TUniEdit;
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnBackClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnDelAssignClick(Sender: TObject);
    procedure EdtYarChange(Sender: TObject);
    procedure DNOAD1Change(Sender: TObject);
    procedure IDTAD1Change(Sender: TObject);
//
    private

   order : String;
   FDM: TDSAssignWorkDM ;
   _DATOPT : TDateTime;
   _WEKOPT : INTEGER;

//    procedure ShowData();
    procedure _Confirm(AResult: Integer);
    procedure _ConfirmGrid(AResult: Integer);

  public
    procedure Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);

  end;

var
  frmPsAssignOutData: TfrmPsAssignOutData;

implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents,ServerModuleEx,
  PopupOrderColForm;

procedure TfrmPsAssignOutData.IDTAD1Change(Sender: TObject);
     var eeee,yyyy : Integer;
begin
  if Trim(IDTAD1.Text) = '' then
    Fdm.CdsTtAd1GetListIDTAD1.AsDateTime := 0

  else
  begin
     Fdm.CdsTtAd1GetListIDTAD1.AsDateTime :=
     Fdm.FSBuddhistDateToDate(IDTAD1.DateTime);

     IDTAD1.Text := FDM.FSBuddhistDateToStr(Fdm.CdsTtAd1GetListIDTAD1.AsDateTime);
  end;
end;

procedure TfrmPsAssignOutData.Init(DM : TDSAssignWorkDM;DATOPT_: TDateTime;WEKOPT_ : INTEGER);
var Yar, prd : integer;
begin

  Fdm := dm;
  _DATOPT := DATOPT_;      // DATE  ASSIGN
  _WEKOPT := WEKOPT_;      // WEEK  ASSIGN

  dsgrid.DataSet := Fdm.CdsTtAd1Get;

   Yar := Fdm.CdsTtAd1GetListYARAD1.AsInteger + 543;
   Prd := Fdm.CdsTtAd1GetListPRDAD1.AsInteger;
   EdtCom.Text  := fDM.CdsTtAd1GetListCMPAD1.AsString;
   edSearch.Text  := fDM.CdsTtAd1GetListBRNAD1.AsString;

  COLAD1.ListSource := Fdm.GetDSC('IC'); //สี

   if Prd = 12 then
   begin
     Yar := Yar + 1;
     Prd := 1;
   end;

  if (fdm.CdsTtAd1GetList.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

   EdtCom.ReadOnly := True;
   edSearch.ReadOnly := True;
   //IWKAD1.ReadOnly := False;
   IDTAD1.Text := FDM.FSBuddhistDateToStr(FDM.CdsTtAd1GetIDTAD1.AsDateTime);
   EdtCom.Text  := fDM.CdsTtAd1GetListCMPAD1.AsString;
   edSearch.Text  := fDM.CdsTtAd1GetListBRNAD1.AsString;
   IDTAD1.ReadOnly := False;

   BtnOk.Visible := True;
   BtnDelAssign.Visible := True;

  end
  else if (fdm.CdsTtAd1GetList.State in [dsEdit]) then
  begin
    btnConfirm.Visible := True;

   EdtCom.ReadOnly := True;
   edSearch.ReadOnly := True;
   //IWKAD1.ReadOnly := True;
   IDTAD1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtAd1GetIDTAD1.AsDateTime);
   EdtCom.Text  := fDM.CdsTtAd1GetListCMPAD1.AsString;
   edSearch.Text  := fDM.CdsTtAd1GetListBRNAD1.AsString;
   DNOAD1.Text  := fDM.CdsTtAd1GetListDNOAD1.AsString;
   //IWKAD1.Text  := fDM.CdsTtAd1GetListIWKAD1.AsString;
   IDTAD1.ReadOnly := True;

   BtnOk.Visible := True;
   BtnDelAssign.Visible := True;
  end
  else
  begin
    btnConfirm.Visible := False;

   EdtCom.ReadOnly := True;
   edSearch.ReadOnly := True;
   //IWKAD1.ReadOnly := True;
   IDTAD1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtAd1GetIDTAD1.AsDateTime);
  EdtCom.Text  := fDM.CdsTtAd1GetListCMPAD1.AsString;
  edSearch.Text  := fDM.CdsTtAd1GetListBRNAD1.AsString;
  DNOAD1.Text  := fDM.CdsTtAd1GetListDNOAD1.AsString;
  //IWKAD1.Text  := fDM.CdsTtAd1GetListIWKAD1.AsString;
   IDTAD1.ReadOnly := True;

   BtnOk.Visible := False;
   BtnDelAssign.Visible := False;

   RSetReadOnly();

  end;

  RSetColorReadOnly();

end;

procedure TfrmPsAssignOutData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
  //      iF (Fdm.xxxx(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
  //         fdm.CdsTtSchGetYARSCH.AsInteger,fdm.CdsTtSchGetPRDSCH.AsInteger)) THEN
        begin
  //        fdm.xxx.Delete();
          ShowMessage('ลบรายการเรียยร้อยแล้ว');
      //    btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmPsAssignOutData._ConfirmGrid(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        Fdm.CdsTtAd1Get.Delete();
      end;
  end;
end;

procedure TfrmPsAssignOutData.btnBackClick(Sender: TObject);
begin
   if Fdm.CdsTtAd1Get.Active then

   Fdm.CdsTtAd1Get.Close();
   inherited;

end;

procedure TfrmPsAssignOutData.btnConfirmClick(Sender: TObject);
var OUT_DNO : String;
   ch : Boolean;
begin
 OUT_DNO := Fdm.CdsTtAd1GetDNOAD1.AsString;


  Fdm.CdsTtAd1Get.First();

  while not Fdm.CdsTtAd1Get.Eof do
  begin

    ch:= Fdm.TtAD1InsUpd(Fdm.CdsTtAd1GetCMPAD1.AsString,Fdm.CdsTtAd1GetBRNAD1.AsString,
        Fdm.CdsTtAd1GetYARAD1.AsInteger,Fdm.CdsTtAd1GetPRDAD1.AsInteger,
        Fdm.CdsTtAd1GetDCDAD1.AsString, StrToInt(OUT_DNO),Fdm.CdsTtAd1GetSEQAD1.AsInteger,
        Fdm.CdsTtAd1GetIWKAD1.AsInteger,Fdm.CdsTtAd1GetIDTAD1.AsFloat,
        Fdm.CdsTtAd1GetEDTAD1.AsFloat,Fdm.CdsTtAd1GetWISAD1.AsInteger,
        Fdm.CdsTtAd1GetITNAD1.AsString,Fdm.CdsTtAd1GetCOLAD1.AsString,
        Fdm.CdsTtAd1GetQT1AD1.AsInteger,'admin','x');


     Fdm.CdsTtAd1Get.Next();
  end;

  if ch then
  begin
     DNOAD1.Text := OUT_DNO;
     ShowMessage('บันทึกเรียบร้อยแล้ว');
  end
  else
     ShowMessage('มีข้อผิดพลาด!');
end;

procedure TfrmPsAssignOutData.BtnDelAssignClick(Sender: TObject);
begin
   if (not Fdm.CdsTtAd1Get.Active) or
    (Fdm.CdsTtAd1Get.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

//  if RecordVerify() then
  if True then
  begin
    MessageDlg('คุณต้องการลบข้อมูลใช่หรือไม่?', mtConfirmation, mbYesNo,
      _ConfirmGrid);
  end
  else
    ShowMessage('ไม่สามารถทำการลบข้อมูลได้เนื่องจาก ' +
      Fdm.GetLastErrorMessage);

end;

procedure TfrmPsAssignOutData.btnDeleteClick(Sender: TObject);
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

procedure TfrmPsAssignOutData.BtnOkClick(Sender: TObject);
VAR _REC : INTEGER;
    _EDT : TDateTime;
    _DNO : integer;
begin
   if EdtITN.Text = '' then
   begin
     ShowMessage('กรุณากรอกรหัสสินค้า');
     exit;
   end;



  _REC := Fdm.CdsTtAd1Get.RecNo;
  _EDT := StrToDateTime(cmbEDT.Text + '/' + EdtAssignMonth.Text  + '/' + IntToStr(StrToInt(EdtAssignYear.Text)- 543));

  if DNOAD1.Text = '' then
    _Dno := -1
  else
    _Dno := StrToInt(DNOAD1.Text);


  Fdm.CdsTtAd1Get.Append();
  Fdm.CdsTtAd1GetCMPAD1.AsString := Fdm.CdsTtAd1GetListCMPAD1.AsString;
  Fdm.CdsTtAd1GetBRNAD1.AsString := Fdm.CdsTtAd1GetListBRNAD1.AsString;
  Fdm.CdsTtAd1GetYARAD1.AsInteger := Fdm.CdsTtAd1GetListYARAD1.AsInteger;
  Fdm.CdsTtAd1GetPRDAD1.AsInteger := Fdm.CdsTtAd1GetListPRDAD1.AsInteger;
  Fdm.CdsTtAd1GetDNOAD1.AsInteger :=  _DNO ;
  Fdm.CdsTtAd1GetDCDAD1.AsString := '604';
  Fdm.CdsTtAd1GetSEQAD1.AsInteger := _REC;
  Fdm.CdsTtAd1GetIDTAD1.AsFloat := Fdm.FSBuddhistDateToDate(IDTAD1.DateTime);
  Fdm.CdsTtAd1GetIWKAD1.AsInteger := 1;

  Fdm.CdsTtAd1GetEDTAD1.AsFloat := _EDT;
  Fdm.CdsTtAd1GetWISAD1.AsInteger := StrToInt(CmbWISAD1.Text);
  Fdm.CdsTtAd1GetITNAD1.AsString := EdtITN.Text;
  Fdm.CdsTtAd1GetCOLAD1.AsString := COLAD1.KeyValue;
  Fdm.CdsTtAd1GetTNMCOL.AsString := COLAD1.Text;
  Fdm.CdsTtAd1GetQT1AD1.AsInteger := StrToInt(EdtQT1.Text);
  Fdm.CdsTtAd1Get.Post();

end;


procedure TfrmPsAssignOutData.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  //btnSearchClick(btnsearch);
end;

procedure TfrmPsAssignOutData.DNOAD1Change(Sender: TObject);
begin
  Fdm.CdsTtAd1GetListDNOAD1.AsLargeInt := StrToInt(DNOAD1.Text);
  Fdm.CdsTtAd1Get.Close();
  Fdm.TtAD1Get(Fdm.CdsTtAd1GetListCMPAD1.AsString,Fdm.CdsTtAd1GetListBRNAD1.AsString,
         Fdm.CdsTtAd1GetListYARAD1.AsInteger,Fdm.CdsTtAd1GetListPRDAD1.AsInteger,Fdm.CdsTtAd1GetListDNOAD1.AsLargeInt,
         Fdm.CdsTtAd1GetListIDTAD1.AsFloat,Fdm.CdsTtAd1GetListIWKAD1.AsInteger,99999,'R');  //chang ed
  Fdm.CdsTtAd1Get.Open();

end;

procedure TfrmPsAssignOutData.EdtYarChange(Sender: TObject);
begin

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);

end.
