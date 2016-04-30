unit RmReceiveMoneyDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx, DSSetupIntfDM,DSReceiveMoneyIntfDM,   DSCarSaleIntfDM,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage, uniSplitter, Datasnap.DBClient,
  ServerModuleEx,MainPrintForm;

type
  TfrmRmReceiveMoneyData = class(TMainDataForm)
    UniLabel6: TUniLabel;
    PnHeadRt4: TUniPanel;
    UniLabel13: TUniLabel;
    PnDtl1: TUniPanel;
    PnDtl2: TUniPanel;
    PnDtl3: TUniPanel;
    UniLabel10: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    PTPRT4: TUniDBLookupComboBox;
    BCMRT4: TUniDBLookupComboBox;
    MEMRT4: TUniDBMemo;
    UniLabel23: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    DDTRT4: TUniDateTimePicker;
    PINRT4: TUniDBLookupComboBox;
    BAKRT4: TUniDBLookupComboBox;
    BBRRT4: TUniDBEdit;
    CNOOT5lb: TUniLabel;
    CNORT4: TUniDBEdit;
    BtnSelectcno: TUniButton;
    TNMCSM: TUniDBEdit;
    UniLabel1: TUniLabel;
    TA1CSM: TUniDBEdit;
    TA2CSM: TUniDBEdit;
    UniLabel3: TUniLabel;
    CHGCSM: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniLabel7: TUniLabel;
    CTYOT5lb: TUniLabel;
    CTYRT4: TUniDBLookupComboBox;
    TELCSM: TUniDBEdit;
    dsgrid: TDataSource;
    dsAddr01: TDataSource;
    STSOT5lb: TUniLabel;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPRT4: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNRT4: TUniDBLookupComboBox;
    DEPOT5lb: TUniLabel;
    DEPRT4: TUniDBLookupComboBox;
    STSRT4: TUniDBLookupComboBox;
    DNORT4: TUniDBEdit;
    IDTRT4: TUniDateTimePicker;
    NOTRT4: TUniDBEdit;
    PnAm4: TUniPanel;
    pnHeadAm4: TUniPanel;
    dsRcvGetRt4: TDataSource;
    dsRcvGetAm4: TDataSource;
    dsRcvGetGt1: TDataSource;
    DbRt4: TUniDBGrid;
    BtnAddRt4: TUniButton;
    BtnDeleteRt4: TUniButton;
    AMTRT4: TUniEdit;
    csDeleteRt4: TUniScreenMask;
    BtnPrint: TUniButton;
    PnBottomAmt: TUniPanel;
    LbSumAmt: TUniLabel;
    EdtSumAmtRt4: TUniEdit;
    procedure BtnSelectcnoClick(Sender: TObject);
    procedure BtnAddRt4Click(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure AMTRT4Exit(Sender: TObject);
    procedure AMTRT4KeyPress(Sender: TObject; var Key: Char);
    procedure BtnDeleteRt4Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSReceiveMoneyDM;
    FCarSaledm : TDSCarsaleDM;
//    FSetupdm : TDSSetupDM;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;
    FG : STRING;
    LFile: String;

    Procedure PrintReport(_Sql_Txt : String);
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmtAndDate();
    procedure GetAddr(cno : int64);

    procedure GetAm4;
    procedure GetRt4;
    procedure GetGt1;

    procedure _Confirm(AResult: Integer);

    procedure CustomerSelected(CCNCSM:int64;TNMCSM:String);
    procedure _SumAmtRt4(SumAmtRt4 : Double);
    procedure CallSumAmtRt4();

  public
    procedure Init(DM : TDSReceiveMoneyDM; _FG : STRING);
    property  DM : TDSReceiveMoneyDM read FDM;
  end;

var
  frmRmReceiveMoneyData: TfrmRmReceiveMoneyData;

implementation

{$R *.dfm}


uses PopupCsmForm, PopupApForm, Math,
   PopupAddressForm, PopupRcvMoneyForm, PopupRcvAm4Form;


Procedure TfrmRmReceiveMoneyData.PrintReport(_Sql_Txt : String);
var
  LFilePath, LURL, Fr3Name: String;

   _Frame: TUniForm;

begin

//  FDM.RReportCode := ReportCode;

//  FDM.cdsReportInfo.Close;
//  FDM.GetReportInfo(FDM.RReportCode);
//  FDM.cdsReportInfo.Open;


//  FDM.frxRepData.DataSet := FDM.cdsGetFrmReport ;
  LFile := 'ReportTmp_' + FormatDateTime('hhmmss', Now()) + '.pdf';
  FDM.cdsGetFrmReport.Close;
  //_Sql_Txt := 'SELECT * FROM '+
//              Trim(FDM.cdsReportInfoPL_NAME.AsString)+'('+
//              inttostr(FDM.cdsGetFinDocAllListACC_UPD_HDR_REC_ID_PRT.AsLargeInt)+')' ;

 // _Sql_Txt := 'SELECT * FROM SP_REP_ACCESSORY(2013,''99'',''99'',''502'',30001) ' ;

  FDM.WriteLog('GetPrintReportForm Sql : '+  _Sql_Txt) ;
  FDM.GetPrintReportForm(_Sql_Txt);
  FDM.cdsGetFrmReport.Open;

  try
   Fr3Name := 'RCV.fr3';

    FDM.WriteLog('FDM.frxReport.LoadFromFile :'+   UniServerModule.FilesFolderPath+Fr3Name) ;
    FDM.WriteLog('FDM.frxPDFExport.FileName :'+   LFile) ;
    FDM.WriteLog('FDM.frxPDFExport.DefaultPath :'+    UniServerModule.TempFolderPath) ;
    FDM.WriteLog('Link :'+ UniServerModule.LocalCacheURL+LFile);

    IF FDM.frxReport.LoadFromFile(UniServerModule.FilesFolderPath+Fr3Name,False) Then
    Begin
      FDM.frxReport.PrepareReport();
      LURL := FDM.CreatePDFFileEx(LFile);
    end;
  finally
    _Frame := TUniFormClass(TMainPrint).Create(UniApplication);
    if (Assigned(_Frame)) then
    begin
      TMainPrint(_Frame).PreviewReport(FDM.cdsReportInfo.FieldByName('REPORT_NAME').AsString, LURL);
      _Frame.ShowModal();
      _Frame.BringToFront();
    end;

  end;


end;

procedure TfrmRmReceiveMoneyData.ShowEdtAmtAndDate();
begin
   IDTRT4.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtRcvGetIDTRT4.AsDateTime);
   DDTRT4.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtRcvGetDDTRT4.AsDateTime);

   ddyyyy.Text := copy(IDTRT4.Text,4,7);

   AMTRT4.Text := FormatFloat('#,##0.00',Fdm.CdsTtRcvGetAMTRT4.AsFloat);
end;


procedure TfrmRmReceiveMoneyData.UniFormCreate(Sender: TObject);
begin
  inherited;
  FG := 'N';
end;

procedure TfrmRmReceiveMoneyData.GetAddr(cno : int64);
begin
  FCarSaledm.CdsMtCsmGetAddr01.Close();
  FCarSaledm.MtCsmGetAddr(cno,'1');
  FCarSaledm.CdsMtCsmGetAddr01.Open();
end;

procedure TfrmRmReceiveMoneyData.GetAm4;
begin
  Fdm.CdsTtRcvGetAm4.Close;
  if Fdm.TtRcvGetAm4(Fdm.CdsTtRcvGetYARRT4.AsInteger,Fdm.CdsTtRcvGetCMPRT4.AsString,
     Fdm.CdsTtRcvGetBRNRT4.AsString,'102',Fdm.CdsTtRcvGetCTYRT4.AsString,
     Fdm.CdsTtRcvGetCNORT4.AsLargeInt,FG) then
    Fdm.CdsTtRcvGetAm4.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
end;

procedure TfrmRmReceiveMoneyData.GetRt4;
begin
  Fdm.CdsTtRcvGetRt4.Close;
  if Fdm.TtRcvGetRt4(Fdm.CdsTtRcvGetYARRT4.AsInteger,Fdm.CdsTtRcvGetPRDRT4.AsInteger,
     Fdm.CdsTtRcvGetCMPRT4.AsString,
     Fdm.CdsTtRcvGetBRNRT4.AsString,Fdm.CdsTtRcvGetDCDRT4.AsString,Fdm.CdsTtRcvGetDNORT4.AsInteger,FG) then
    Fdm.CdsTtRcvGetRt4.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
end;

procedure TfrmRmReceiveMoneyData.GetGt1;
begin
  Fdm.CdsTtGetGt1ByNo.Close;
  if Fdm.TtGetGT1ByNo(Fdm.CdsTtRcvGetYARRT4.AsInteger,Fdm.CdsTtRcvGetPRDRT4.AsInteger,
     Fdm.CdsTtRcvGetCMPRT4.AsString,
     Fdm.CdsTtRcvGetBRNRT4.AsString,Fdm.CdsTtRcvGetDCDRT4.AsString,Fdm.CdsTtRcvGetDNORT4.AsInteger) then
    Fdm.CdsTtGetGt1ByNo.Open
  else
    ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
end;

procedure TfrmRmReceiveMoneyData.CustomerSelected(CCNCSM:int64;TNMCSM:String);
begin
  Fdm.CdsTtRcvGetCNORT4.AsLargeInt := CCNCSM;
  Fdm.CdsTtRcvGetTNMCSM.AsString := TNMCSM;

  GetAddr(fdm.CdsTtRcvGetCNORT4.AsLargeInt);
  GetAm4;
end;

procedure TfrmRmReceiveMoneyData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsTtRcvGet.State in [dsInsert, dsEdit] then
    Fdm.CdsTtRcvGet.Cancel;

  if Fdm.CdsTtRcvGetAm4.Active then
     Fdm.CdsTtRcvGetAm4.Close;

  if Fdm.CdsTtRcvGetRt4.Active then
     Fdm.CdsTtRcvGetRt4.Close;

  if Fdm.CdsTtGetGt1ByNo.Active then
     Fdm.CdsTtGetGt1ByNo.Close;

  if FCarSaledm.CdsMtCsmGet.Active then
     FCarSaledm.CdsMtCsmGet.Close;

  if FCarSaledm.CdsMtCsmGetAddr01.Active then
     FCarSaledm.CdsMtCsmGetAddr01.Close;

  fdm.CdsTtRcvGet.Close;
  fdm.CdsTtRcvGet.Open;
  inherited;
end;

procedure TfrmRmReceiveMoneyData.btnConfirmClick(Sender: TObject);
var Out_DnoRt4 : Integer;
    ch : Boolean;
    Str_Sql : STRING;
begin
  if fDM.CdsTtRcvGetRt4.IsEmpty then
  begin
    ShowMessage('ไม่มีรายการรับชำระ กรุณากรอกรายการก่อน');
    Exit;
  end;

  btnConfirm.Enabled := False;
  Out_DnoRt4 := Fdm.CdsTtRcvGetDNORT4.AsInteger;

  if Fdm.CdsTtRcvGet.State in [dsInsert] then
  BEGIN

    if not (Fdm.TtInsUpdHead(Fdm.CdsTtRcvGetCMPRT4.AsString,Fdm.CdsTtRcvGetBRNRT4.AsString,
      Fdm.CdsTtRcvGetYARRT4.AsInteger,Fdm.CdsTtRcvGetPRDRT4.AsInteger,
      Fdm.CdsTtRcvGetDCDRT4.AsString,Out_DnoRt4)) then
    begin
      showmessage('เกิดข้อผิดพลาด TTRcvInsUpdHeader');
      btnConfirm.Enabled := True;
      exit;
    end

  END;

  Fdm.CdsTtRcvGetDNORT4.AsInteger := Out_DnoRt4;

   ch := Fdm.TtRcvInsUpd(
      Fdm.CdsTtRcvGetCMPRT4.ASString,
      Fdm.CdsTtRcvGetBRNRT4.ASString,
      Fdm.CdsTtRcvGetYARRT4.ASInteger,
      Fdm.CdsTtRcvGetPRDRT4.ASInteger,
      Fdm.CdsTtRcvGetDCDRT4.ASString,
      Fdm.CdsTtRcvGetDNORT4.ASInteger,
      0, // 0 IS HEADER
      Fdm.CdsTtRcvGetIDTRT4.AsFloat,//Fdm.CdsTtRcvGetRt4IDTRT4.ASFloat,
      Fdm.CdsTtRcvGetRt4RDCRT4.ASString,
      Fdm.CdsTtRcvGetRt4RDNRT4.ASInteger,
      Fdm.CdsTtRcvGetRt4RSQRT4.ASInteger,
      Fdm.CdsTtRcvGetRDTRT4.ASFloat,
      '',
      Fdm.CdsTtRcvGetDEPRT4.ASString,
      Fdm.CdsTtRcvGetCTYRT4.ASString,
      Fdm.CdsTtRcvGetCNORT4.ASLargeInt,
      Fdm.CdsTtRcvGetPTPRT4.ASString,
      '',
      Fdm.CdsTtRcvGetAMTRT4.ASFloat,
      Fdm.CdsTtRcvGetBCMRT4.ASString,
      Fdm.CdsTtRcvGetPINRT4.ASString,
      Fdm.CdsTtRcvGetBAKRT4.ASString,
      Fdm.CdsTtRcvGetBBRRT4.ASString,
      Fdm.CdsTtRcvGetNOTRT4.ASString,
      Fdm.CdsTtRcvGetDDTRT4.ASFloat,
      Fdm.CdsTtRcvGetMEMRT4.ASString,
      Fdm.CdsTtRcvGetRt4REGRT7.ASString,
      0,
      '',
       Fdm.CdsTtRcvGetRt4ENTUSR.ASString );

  if not CH then
  begin
    showmessage('เกิดความผิดพลาด ไม่สามารถบันทึกได้');
    exit;
  end;

  Fdm.CdsTtRcvGetRt4.First;
  while not (Fdm.CdsTtRcvGetRT4.Eof) do
  begin
    ch := Fdm.TtRcvInsUpd(
      Fdm.CdsTtRcvGetRt4CMPRT4.ASString,
      Fdm.CdsTtRcvGetRt4BRNRT4.ASString,
      Fdm.CdsTtRcvGetRt4YARRT4.ASInteger,
      Fdm.CdsTtRcvGetRt4PRDRT4.ASInteger,
      Fdm.CdsTtRcvGetRt4DCDRT4.ASString,
      Fdm.CdsTtRcvGetDNORT4.ASInteger,
      Fdm.CdsTtRcvGetRt4SEQRT4.ASInteger,
      Fdm.CdsTtRcvGetIDTRT4.ASFloat,
      Fdm.CdsTtRcvGetRt4RDCRT4.ASString,
      Fdm.CdsTtRcvGetRt4RDNRT4.ASInteger,
      Fdm.CdsTtRcvGetRt4RSQRT4.ASInteger,
      Fdm.CdsTtRcvGetRt4RDTRT4.ASFloat,
      Fdm.CdsTtRcvGetRt4RTPRT4.ASString,
      Fdm.CdsTtRcvGetRt4DEPRT4.ASString,
      Fdm.CdsTtRcvGetRt4CTYRT4.ASString,
      Fdm.CdsTtRcvGetRt4CNORT4.ASLargeInt,
      Fdm.CdsTtRcvGetRt4PTPRT4.ASString,
      Fdm.CdsTtRcvGetRt4TYPRT4.ASString,
      Fdm.CdsTtRcvGetRt4AMTRT4.ASFloat,
      Fdm.CdsTtRcvGetRt4BCMRT4.ASString,
      Fdm.CdsTtRcvGetRt4PINRT4.ASString,
      Fdm.CdsTtRcvGetRt4BAKRT4.ASString,
      Fdm.CdsTtRcvGetRt4BBRRT4.ASString,
      Fdm.CdsTtRcvGetRt4NOTRT4.ASString,
      Fdm.CdsTtRcvGetRt4DDTRT4.ASFloat,
      Fdm.CdsTtRcvGetMEMRT4.ASString,
      Fdm.CdsTtRcvGetRt4REGRT7.ASString,
      Fdm.CdsTtRcvGetRt4RENRT7.AsInteger,
      Fdm.CdsTtRcvGetRt4PRVRT7.ASString,
      Fdm.CdsTtRcvGetRt4ENTUSR.ASString
      );

      Fdm.CdsTtRcvGetRt4.Next;
  end;

  GetAm4();
  GetRt4();
  GetGt1();

//  showmessage('บันทึกเรียบร้อยแล้ว');
  btnConfirm.Enabled := False;
   Str_Sql :='SELECT * FROM SP_REP_RM_RCV_MONEY(' +
              Fdm.CdsTtRcvGetYARRT4.AsString + ',' +
              Fdm.CdsTtRcvGetPRDRT4.AsString + ',' +
              QuotedStr(Fdm.CdsTtRcvGetCMPRT4.AsString) + ',' +
              QuotedStr(Fdm.CdsTtRcvGetBRNRT4.AsString) + ',' +
              QuotedStr(Fdm.CdsTtRcvGetDCDRT4.AsString) + ',' +
              Fdm.CdsTtRcvGetDNORT4.AsString + ',' +
              QuotedStr(FG) + ')';
  PrintReport(Str_Sql);
end;

procedure TfrmRmReceiveMoneyData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
var
  cur : Currency;
  F: TField;
  Str,Tmp : String;
  i : integer;
begin
  if CdsTmp.State in [dsInsert,dsEdit] then
  begin
    if ((Sender as TUniEdit).text = '')then
      (Sender as TUniEdit).text := '0.00';

    Str := Trim((Sender as TUniEdit).text);
    Tmp := '0';

    for i := 0 to Length(Str) do
    begin
      if (Str[i] in ['0','1','2','3','4','5','6','7','8','9','.'])  then
        Tmp := Tmp + Str[i];
    end;

    try
      (Sender as TUniEdit).text := Tmp;
    except
      (Sender as TUniEdit).text := '0.00';
    end;

    try
      F := CdsTmp.FieldByName((Sender as TUniEdit).HelpKeyword);
      cur := FloatToCurr(StrToFloat(StringReplace((Sender as TUniEdit).text, ',','', [rfReplaceAll])));

      F.AsCurrency := cur;
      if (cur >= 0) then
      begin
        (Sender as TUniEdit).text := Format('%.2n',[cur]);
      end else
      begin
        ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' มีค่าน้อยกว่า ศูนย์ไม่ได้');
        F.AsCurrency := 0.00;
        (Sender as TUniEdit).text := '0.00';
      end;
    except
      ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' ให้ระบุเป็นตัวเลข');
      F.AsCurrency := 0.00;
      (Sender as TUniDBEdit).text := '0.00';
    end;
  end;
end;

procedure TfrmRmReceiveMoneyData.AMTRT4Exit(Sender: TObject);
begin
  checkCur(AMTRT4,fdm.CdsTtRcvGet);

end;

procedure TfrmRmReceiveMoneyData.AMTRT4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(AMTRT4,fdm.CdsTtRcvGet);
  end;

end;

procedure TfrmRmReceiveMoneyData.CallSumAmtRt4();
var SumAmt : Double;
begin
  SumAmt := 0;

  Fdm.CdsTtRcvGetRt4.First;
  while not Fdm.CdsTtRcvGetRt4.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsTtRcvGetRt4AMTRT4.AsFloat;
    Fdm.CdsTtRcvGetRt4.Next;
  end;
   EdtSumAmtRt4.Text := FormatFloat('#,##0.00',SumAmt);
end;

procedure TfrmRmReceiveMoneyData._SumAmtRt4(SumAmtRt4 : Double);
begin
  EdtSumAmtRt4.Text := FormatFloat('#,##0.00',SumAmtRt4);
end;

procedure TfrmRmReceiveMoneyData.BtnAddRt4Click(Sender: TObject);
begin

  with TfrmPopupRcvAm4.Create(UniApplication) do
  begin
    Init(FDM,PTPRT4.Text,BAKRT4.Text,FG);

    OnSumAmtRt4 := _SumAmtRt4;
    ShowModal();
  end;

end;

procedure TfrmRmReceiveMoneyData._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:  fdm.CdsTtRcvGetRt4.Delete();
  end;
end;


procedure TfrmRmReceiveMoneyData.BtnDeleteRt4Click(Sender: TObject);
begin
   if (not Fdm.CdsTtRcvGetRt4.Active) or
    (Fdm.CdsTtRcvGetRt4.IsEmpty) then
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

procedure TfrmRmReceiveMoneyData.BtnPrintClick(Sender: TObject);
var Str_Sql : String;
begin
   Str_Sql :='SELECT * FROM SP_REP_RM_RCV_MONEY(' +
              Fdm.CdsTtRcvGetYARRT4.AsString + ',' +
              Fdm.CdsTtRcvGetPRDRT4.AsString + ',' +
              QuotedStr(Fdm.CdsTtRcvGetCMPRT4.AsString) + ',' +
              QuotedStr(Fdm.CdsTtRcvGetBRNRT4.AsString) + ',' +
              QuotedStr(Fdm.CdsTtRcvGetDCDRT4.AsString) + ',' +
              Fdm.CdsTtRcvGetDNORT4.AsString + ',' +
              QuotedStr(FG) + ')';
  PrintReport(Str_Sql);

end;

procedure TfrmRmReceiveMoneyData.BtnSelectcnoClick(Sender: TObject);
begin
  if fdm.CdsTtRcvGetBRNRT4.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupCsm.Create(UniApplication) do
  begin
    Init(FCarSaledm, 'เลือกลูกค้้า', Fdm.CMPUser,Fdm.BRNUser,'C');

    OnSelectData := CustomerSelected;
    ShowModal();
  end;

end;

procedure TfrmRmReceiveMoneyData.Init(DM : TDSReceiveMoneyDM; _FG : STRING);
begin

    Fdm := dm;
    FG := _FG;

    FUserSession :=  UniMainModule();

  //  FSetupdm:= FUsersession.DSSetupDM;
    FCarSaledm:= FUsersession.DSCarsaleDM;

   dsgrid.DataSet := Fdm.CdsTtRcvGet;
   dsRcvGetAm4.DataSet := Fdm.CdsTtRcvGetAm4;
   dsRcvGetRt4.DataSet := Fdm.CdsTtRcvGetRt4;
   dsRcvGetGt1.DataSet := Fdm.CdsTtGetGt1ByNo;

   dsAddr01.DataSet := FCarSaledm.CdsMtCsmGetAddr01;



   STSRT4.ListSource := Fdm.GetDSC('STS');
   BRNRT4.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPRT4.ListSource := Fdm.GetDSC('DP'); //แผนก
   CTYRT4.ListSource := Fdm.GetDSC('TY'); // ประเภทลูกค้า
   CHGCSM.ListSource := Fdm.GetDSC('AC');//จังหวัด

   PTPRT4.ListSource := Fdm.GetDSC('PTP'); //ชำระโดย
   BCMRT4.ListSource := Fdm.GetDSC('BK'); //ฝากเข้าสมุดธนาคาร
   PINRT4.ListSource := Fdm.GetDSC('PIN'); // ต่าง/ในสาขา
   BAKRT4.ListSource := Fdm.GetDSC('BAK'); // ธนาคาร

   STSRT4.ReadOnly := True;
   CHGCSM.ReadOnly := True;

  if (fdm.CdsTtRcvGet.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTRT4.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtRcvGetIDTRT4.AsDateTime);
    DDTRT4.Text := '';

    ddyyyy.Text := copy(IDTRT4.Text,4,7);
     GetAm4();
     GetRt4();
     GetGt1();

    ShowEdtAmtAndDate();

  end
  else if (fdm.CdsTtRcvGet.State in [dsEdit]) then
  begin
     CMPRT4.ReadOnly := True;
     BRNRT4.ReadOnly := True;
     DEPRT4.ReadOnly := True;
     IDTRT4.ReadOnly := True;
     CTYRT4.ReadOnly := True;
     CNORT4.ReadOnly := True;
     BtnSelectcno.Enabled := False;
     PTPRT4.ReadOnly := True;
     BCMRT4.ReadOnly := True;
     PINRT4.ReadOnly := True;
     BAKRT4.ReadOnly := True;
     BBRRT4.ReadOnly := True;
     NOTRT4.ReadOnly := True;
     DDTRT4.ReadOnly := True;

     GetAddr(fdm.CdsTtRcvGetCNORT4.AsLargeInt);

     ShowEdtAmtAndDate();
     GetAm4();
     GetRt4();
     GetGt1();
     CallSumAmtRt4();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectcno.Enabled := False;
     pnHeadAm4.Visible := False;
     BtnAddRt4.Visible := False;
     BtnDeleteRt4.Visible := False;

     GetAddr(fdm.CdsTtRcvGetCNORT4.AsLargeInt);

     ShowEdtAmtAndDate();
     GetAm4();
     GetRt4();
     GetGt1();
     CallSumAmtRt4();

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
