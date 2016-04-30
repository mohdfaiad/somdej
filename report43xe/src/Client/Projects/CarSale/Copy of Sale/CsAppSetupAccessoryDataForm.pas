unit CsAppSetupAccessoryDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniScreenMask,DSCarsaleIntfDM, DsSetupIntfDm,uniSplitter;

type
  TfrmCsAppSetupAccessoryData = class(TMainDataForm)
    PnHeadDtl: TUniPanel;
    PnDtl1: TUniPanel;
    PnDtl2: TUniPanel;
    UniLabel10: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    PnDtl3: TUniPanel;
    UniLabel12: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel44: TUniLabel;
    DBTWHOM3: TUniDBEdit;
    PnDtl4: TUniPanel;
    UniLabel45: TUniLabel;
    DSEOM3: TUniDBMemo;
    dsMtAppGet: TDataSource;
    CNOOT5lb: TUniLabel;
    CNOOT5: TUniDBEdit;
    TNMCSM: TUniDBEdit;
    UniLabel1: TUniLabel;
    TA1CSM: TUniDBEdit;
    TA2CSM: TUniDBEdit;
    UniLabel3: TUniLabel;
    CHGCSM: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniLabel7: TUniLabel;
    TELCSM: TUniDBEdit;
    DNOOT5: TUniDBEdit;
    IDTOT5: TUniDateTimePicker;
    SRSPM1: TUniDBLookupComboBox;
    SEROT5: TUniDBEdit;
    ENGOT5: TUniDBEdit;
    COLOT5: TUniDBLookupComboBox;
    STSOT5lb: TUniLabel;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    DNOOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPOM3: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNOM3: TUniDBLookupComboBox;
    ORDOM3: TUniDBEdit;
    IDTOT5lb: TUniLabel;
    IDTOM3: TUniDateTimePicker;
    STSOT5: TUniDBLookupComboBox;
    SDTOM3: TUniDateTimePicker;
    PSTOT5: TUniDBLookupComboBox;
    dsAddr01: TDataSource;
    BtnSelectApp: TUniButton;
    dsAccessory: TDataSource;
    DbgAccessory: TUniDBGrid;
    UniLabel2: TUniLabel;
    DBVNOOM3: TUniDBEdit;
    BtnSelectVN: TUniButton;
    UniLabel5: TUniLabel;
    DBTNMVNO: TUniDBEdit;
    UniLabel6: TUniLabel;
    TA1VNO: TUniDBEdit;
    UniPanel2: TUniPanel;
    UniLabel8: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniLabel9: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniButton2: TUniButton;
    UniLabel11: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    ChkVAT: TUniCheckBox;
    VPCPT1: TUniEdit;
    UniLabel24: TUniLabel;
    DDTPT1: TUniDateTimePicker;
    TWHOM3: TUniDBLookupComboBox;
    DbSetUpAccessory: TUniDBGrid;
    dsSetupAccessory: TDataSource;
    SpterAccessory: TUniSplitter;
    SMNOT5: TUniDBLookupComboBox;
    UniPanel1: TUniPanel;
    BtnOk: TUniButton;
    dsSetupAccessoryGetList: TDataSource;
    DEPOT5lb: TUniLabel;
    DEPOM3: TUniDBLookupComboBox;
    BtnPrint: TUniButton;
    Rdo502: TUniRadioButton;
    Rdo503: TUniRadioButton;
    procedure BtnSelectAppClick(Sender: TObject);
    procedure Rdo502Click(Sender: TObject);
    procedure BtnSelectVNClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure Rdo503Click(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSCarsaleDM;
    FSetupdm : TDSSetupDm;

    DCD , BRD: String;
    LFile: String;
     procedure GetAddr(cno : int64);
     procedure ShowEdtAmtAndDate();
     procedure GetMtApp();
     procedure ApplicationSelected(YAR:Integer;CMP,BRN,DCD:String;DNO : Integer);
     procedure DealerGetAddr(_COD : string);
     procedure DealerSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
     Procedure  PrintReport(_Sql_Txt : String);

  public
    procedure Init(DM : TDSCarsaleDM);
  end;

const
  App_DCD = '102';

var
  frmCsAppSetupAccessoryData: TfrmCsAppSetupAccessoryData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm, PopupApplicationForm,PopupApForm,
  ServerModuleEx, MainPrintForm;

procedure TfrmCsAppSetupAccessoryData.GetAddr(cno : int64);
begin
  Fdm.CdsMtCsmGetAddr01.Close();
  Fdm.MtCsmGetAddr(cno,'1');
  Fdm.CdsMtCsmGetAddr01.Open();
end;

procedure TfrmCsAppSetupAccessoryData.ShowEdtAmtAndDate();
begin
   IDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsSetupAccessoryGetListIDTOT5.AsDateTime);
   IDTOM3.Text := FDM.FSBuddhistDateToStr(fDM.CdsSetupAccessoryGetListIDTOM3.AsDateTime);

   ddyyyy.Text := copy(IDTOM3.Text,4,7);

 end;


procedure TfrmCsAppSetupAccessoryData.GetMtApp();
begin
   fdm.CdsMtAppGet.Close();
  fdm.MtAppGet(fdm.CdsSetupAccessoryGetListYAROM3.AsInteger,fdm.CdsSetupAccessoryGetListCMPOM3.AsString,
               fdm.CdsSetupAccessoryGetListBRNOM3.AsString,App_DCD,fdm.CdsSetupAccessoryGetListDNOOT5.AsInteger);
  fdm.CdsMtAppGet.Open();

  Fdm.CdsMtAppGetAccessory.Close();
  Fdm.MtAppGetAccessory(fdm.CdsSetupAccessoryGetListYAROM3.AsInteger,fdm.CdsSetupAccessoryGetListCMPOM3.AsString,
               fdm.CdsSetupAccessoryGetListBRNOM3.AsString,App_DCD,fdm.CdsSetupAccessoryGetListDNOOT5.AsInteger);
  Fdm.CdsMtAppGetAccessory.Open();

  Fdm.CdsMtAppGetAccessory.Filtered := True;
  Fdm.CdsMtAppGetAccessory.Filter := 'BRDPM1=' + QuotedStr(BRD);

end;

procedure TfrmCsAppSetupAccessoryData.ApplicationSelected(YAR:Integer;CMP,BRN,DCD:String;DNO : Integer);
begin
  Fdm.CdsSetupAccessoryGetListDNOOT5.AsInteger := DNO;
  Rdo502Click(Rdo502);
  GetMtApp();
end;

procedure TfrmCsAppSetupAccessoryData.btnCancelClick(Sender: TObject);
begin
   if Fdm.CdsMtCsmGetAddr01.State in [dsInsert, dsEdit]then
      Fdm.CdsMtCsmGetAddr01.Cancel;


   if Fdm.CdsSetupAccessoryGet.State in [dsInsert, dsEdit]then
      Fdm.CdsSetupAccessoryGet.Cancel;

   if Fdm.CdsSetupAccessoryGetList.State in [dsInsert, dsEdit]then
      Fdm.CdsSetupAccessoryGetList.Cancel;

   if Fdm.CdsMtAppGetAccessory.State in [dsInsert, dsEdit]then
      Fdm.CdsMtAppGetAccessory.Cancel;

   if Fdm.CdsSetupAccessoryGetList.State in [dsInsert, dsEdit]then
      Fdm.CdsSetupAccessoryGetList.Cancel;

   if Fdm.CdsMtAppGet.State in [dsInsert, dsEdit]then
      Fdm.CdsMtAppGet.Cancel;

   Fdm.CdsMtAppGet.Close();
   Fdm.CdsMtCsmGetAddr01.Close();
   Fdm.CdsMtAppGetAccessory.Close();
   Fdm.CdsSetupAccessoryGet.Close();


  inherited;

end;

procedure TfrmCsAppSetupAccessoryData.btnConfirmClick(Sender: TObject);
var mm : integer;
    _ORDOM3 : integer;
    ch_Head,Ch : Boolean;
    Str_Sql : String;
begin
  if Fdm.CdsSetupAccessoryGetList.State in [dsInsert] then
  begin
    mm := StrToInt(FormatDateTime('mm',Fdm.CdsSetupAccessoryGetListIDTOM3.AsDateTime));
    Ch_Head:= Fdm.TtInsUpdHead(fdm.CdsSetupAccessoryGetListCMPOM3.AsString,fdm.CdsSetupAccessoryGetListBRNOM3.AsString,
               fdm.CdsSetupAccessoryGetListYAROM3.AsInteger,mm,Fdm.CdsSetupAccessoryGetListDCDOM3.AsString,_ORDOM3);
    Fdm.CdsSetupAccessoryGetListORDOM3.AsInteger := _ORDOM3;
  end;

  fDM.CdsSetupAccessoryGet.First();
  while not Fdm.CdsSetupAccessoryGet.Eof do
  begin
     ch := Fdm.MtSetupAccessoryInsUpd(
        Fdm.CdsSetupAccessoryGetyarom3.AsInteger,
        Fdm.CdsSetupAccessoryGetcmpom3.AsString,
        Fdm.CdsSetupAccessoryGetbrnom3.AsString,
        Fdm.CdsSetupAccessoryGetdcdom3.AsString,
        Fdm.CdsSetupAccessoryGetListORDOM3.AsInteger,
        Fdm.CdsSetupAccessoryGetseqom3.AsInteger,
        Fdm.CdsSetupAccessoryGetfsrom3.AsString,
        Fdm.CdsSetupAccessoryGetidtom3.AsFloat,
        Fdm.CdsSetupAccessoryGetdepom3.AsString,
        Fdm.CdsSetupAccessoryGetvnoom3.AsString,
        Fdm.CdsSetupAccessoryGetvtpom3.AsString,
        Fdm.CdsSetupAccessoryGetcpsom3.AsString,
        Fdm.CdsSetupAccessoryGetcrtom3.AsInteger,
        Fdm.CdsSetupAccessoryGetrdcom3.AsString,
        Fdm.CdsSetupAccessoryGetrdnom3.AsInteger,

        Fdm.CdsSetupAccessoryGetRSQOM3.AsInteger,
        Fdm.CdsSetupAccessoryGetRDTOM3.AsFloat,
        Fdm.CdsSetupAccessoryGetPRDOM3.AsString,

        Fdm.CdsSetupAccessoryGetqo1om3.AsInteger,
        Fdm.CdsSetupAccessoryGetqo2om3.AsInteger,
        Fdm.CdsSetupAccessoryGetqr1om3.AsInteger,
        Fdm.CdsSetupAccessoryGetqr2om3.AsInteger,
        Fdm.CdsSetupAccessoryGetUC1OM3.AsFloat,
        Fdm.CdsSetupAccessoryGetUC2OM3.AsFloat,
        Fdm.CdsSetupAccessoryGetTWHOM3.AsString,
        Fdm.CdsSetupAccessoryGetNTEOM3.AsString,
        Fdm.CdsMtAppGetSEROT5.AsString,
        Fdm.CdsMtAppGetENGOT5.AsString,
        Fdm.CdsSetupAccessoryGetDSEOM3.AsString,
        Fdm.UserID);

     Fdm.CdsSetupAccessoryGet.Next();
  end;

  if ch then
  begin
    Str_Sql :='SELECT * FROM SP_REP_ACCESSORY(' +
       Fdm.CdsSetupAccessoryGetListYAROM3.AsString + ',' +
       QuotedStr(Fdm.CdsSetupAccessoryGetListCMPOM3.AsString) + ',' +
       QuotedStr(Fdm.CdsSetupAccessoryGetListBRNOM3.AsString) + ',' +
       QuotedStr(Fdm.CdsSetupAccessoryGetListDCDOM3.AsString) + ',' +
       Fdm.CdsSetupAccessoryGetListORDOM3.AsString + ')';

 // Str_Sql := 'SELECT * FROM SP_PRT_ACCESSORY(2013,''99'',''99'',''502'',30001) ' ;
  PrintReport(Str_Sql);

    btnConfirm.Enabled := False;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmCsAppSetupAccessoryData.BtnOkClick(Sender: TObject);
var RecNo : integer;
begin

  fDM.CdsMtAppGetAccessory.First();
  while not Fdm.CdsMtAppGetAccessory.Eof do
  begin
     if Fdm.CdsMtAppGetAccessoryFLAG.AsBoolean then
     begin
        RecNo := Fdm.CdsSetupAccessoryGet.RecNo + 1;
        Fdm.CdsSetupAccessoryGet.Append();
        Fdm.CdsSetupAccessoryGetyarom3.AsInteger := Fdm.CdsSetupAccessoryGetListYAROM3.AsInteger;
        Fdm.CdsSetupAccessoryGetcmpom3.AsString := Fdm.CdsSetupAccessoryGetListCMPOM3.AsString;
        Fdm.CdsSetupAccessoryGetbrnom3.AsString := Fdm.CdsSetupAccessoryGetListBRNOM3.AsString;
        Fdm.CdsSetupAccessoryGetdcdom3.AsString := Fdm.CdsSetupAccessoryGetListDCDOM3.AsString;
        Fdm.CdsSetupAccessoryGetordom3.AsInteger := Fdm.CdsSetupAccessoryGetListORDOM3.AsInteger;
        Fdm.CdsSetupAccessoryGetseqom3.AsInteger := RecNo;
        Fdm.CdsSetupAccessoryGetfsrom3.AsString := Fdm.CdsMtAppGetAccessoryFSROT6.AsString;
        Fdm.CdsSetupAccessoryGetTNMPM1.AsString := Fdm.CdsMtAppGetAccessoryTNMPM1.AsString;
        Fdm.CdsSetupAccessoryGetidtom3.AsFloat := Fdm.CdsSetupAccessoryGetListidtom3.AsFloat;
        Fdm.CdsSetupAccessoryGetdepom3.AsString := Fdm.CdsSetupAccessoryGetListdepom3.AsString;
        Fdm.CdsSetupAccessoryGetvnoom3.AsString := Fdm.CdsSetupAccessoryGetListvnoom3.AsString;
        Fdm.CdsSetupAccessoryGetvtpom3.AsString := '1';
        Fdm.CdsSetupAccessoryGetcpsom3.AsString := Fdm.CdsSetupAccessoryGetListCPSOM3.AsString;
        Fdm.CdsSetupAccessoryGetcrtom3.AsInteger := Fdm.CdsSetupAccessoryGetListcrtom3.AsInteger;
        Fdm.CdsSetupAccessoryGetrdcom3.AsString := Fdm.CdsMtAppGetDCDOT5.AsString;
        Fdm.CdsSetupAccessoryGetrdnom3.AsInteger := Fdm.CdsMtAppGetDNOOT5.AsInteger;
        Fdm.CdsSetupAccessoryGetrsqom3.AsInteger := Fdm.CdsMtAppGetSEQOT5.AsInteger;
        Fdm.CdsSetupAccessoryGetrdtom3.AsFloat := Fdm.CdsMtAppGetIDTOT5.AsFloat;
        Fdm.CdsSetupAccessoryGetprdom3.AsString := Fdm.CdsMtAppGetPRDOT5.AsString;
        Fdm.CdsSetupAccessoryGetcolom3.AsString := Fdm.CdsMtAppGetCOLOT5.AsString;
        Fdm.CdsSetupAccessoryGetserom3.AsString := Fdm.CdsMtAppGetSEROT5.AsString;
        Fdm.CdsSetupAccessoryGetengom3.AsString := Fdm.CdsMtAppGetENGOT5.AsString;
        Fdm.CdsSetupAccessoryGetTWHOM3.AsString := Fdm.CdsSetupAccessoryGetListTWHOM3.AsString;
        Fdm.CdsSetupAccessoryGetqo1om3.AsInteger := Fdm.CdsMtAppGetAccessoryFQ1OT6.AsInteger;
        Fdm.CdsSetupAccessoryGetqo2om3.AsInteger := Fdm.CdsMtAppGetAccessoryFQ2OT6.AsInteger;
        Fdm.CdsSetupAccessoryGetqr1om3.AsInteger := Fdm.CdsMtAppGetAccessoryFQ1OT6.AsInteger;
        Fdm.CdsSetupAccessoryGetqr2om3.AsInteger := Fdm.CdsMtAppGetAccessoryFQ2OT6.AsInteger;

        if Fdm.CdsSetupAccessoryGetListBRDPM1.AsString = '11' then
        begin
           Fdm.CdsSetupAccessoryGetuc1om3.AsFloat := 0.00;
           Fdm.CdsSetupAccessoryGetuc2om3.AsFloat := 0.00;
        end
        else
        begin
           Fdm.CdsSetupAccessoryGetuc1om3.AsFloat := Fdm.CdsMtAppGetAccessoryFU1OT6.AsFloat;
           Fdm.CdsSetupAccessoryGetuc2om3.AsFloat := Fdm.CdsMtAppGetAccessoryFU2OT6.AsFloat;
        end;

        Fdm.CdsSetupAccessoryGettwhom3.AsString := Fdm.CdsSetupAccessoryGetListtwhom3.AsString;
//        Fdm.CdsSetupAccessoryGetnteom3.AsString := '';
        Fdm.CdsSetupAccessoryGetdseom3.AsString := Fdm.CdsSetupAccessoryGetListdseom3.AsString; // NOTE ด้านบน

        Fdm.CdsSetupAccessoryGet.Post();

     end;

     Fdm.CdsMtAppGetAccessory.Next();
  end;

end;

procedure TfrmCsAppSetupAccessoryData.BtnPrintClick(Sender: TObject);
var Str_Sql : String;
begin

   Str_Sql :='SELECT * FROM SP_REP_ACCESSORY(' +
       Fdm.CdsSetupAccessoryGetListYAROM3.AsString + ',' +
       QuotedStr(Fdm.CdsSetupAccessoryGetListCMPOM3.AsString) + ',' +
       QuotedStr(Fdm.CdsSetupAccessoryGetListBRNOM3.AsString) + ',' +
       QuotedStr(Fdm.CdsSetupAccessoryGetListDCDOM3.AsString) + ',' +
       Fdm.CdsSetupAccessoryGetListORDOM3.AsString + ')';

 // Str_Sql := 'SELECT * FROM SP_PRT_ACCESSORY(2013,''99'',''99'',''502'',30001) ' ;
  PrintReport(Str_Sql);

end;

Procedure TfrmCsAppSetupAccessoryData.PrintReport(_Sql_Txt : String);
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
    if Fdm.CdsSetupAccessoryGetListDCDOM3.AsString = '502' then
       Fr3Name :=  'CS_AccessoryPo.fr3'//FDM.cdsReportInfoFR3_NAME.Value ;
    else
       Fr3Name := 'CS_AccessoryInstall.fr3';

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


procedure TfrmCsAppSetupAccessoryData.BtnSelectAppClick(Sender: TObject);
begin
  if fdm.CdsSetupAccessoryGetListBRNOM3.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupApplication.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกคำขอ',
      Fdm.CdsSetupAccessoryGetListCMPOM3.AsString,
      Fdm.CdsSetupAccessoryGetListBRNOM3.AsString,'C');

    OnSelectData := ApplicationSelected;
    ShowModal();
  end;


end;

procedure TfrmCsAppSetupAccessoryData.DealerGetAddr(_COD : string);
begin
  Fsetupdm.CdsSTVm1GetAddr01.Close();
  Fsetupdm.StVm1GetAddr(_COD,'1');
  Fsetupdm.CdsSTVm1GetAddr01.Open();
  fdm.CdsSetupAccessoryGetListTA1VNO.AsString := Fsetupdm.CdsSTVm1GetAddr01TA1VMA.AsString;
  Fsetupdm.CdsSTVm1GetAddr01.Close();

end;


procedure TfrmCsAppSetupAccessoryData.DealerSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
begin
  Fdm.CdsSetupAccessoryGetListVNOOM3.AsString := CNOvm1;
  Fdm.CdsSetupAccessoryGetListTNMVNO.AsString := TNMvm1;
  Fdm.CdsSetupAccessoryGetListVTPOM3.AsString := '1'; // นิติบุคคล
  Fdm.CdsSetupAccessoryGetListCPSOM3.AsString := cspvm1;
  Fdm.CdsSetupAccessoryGetListCRTOM3.AsInteger := CRTYM3;
  DealerGetAddr(fdm.CdsSetupAccessoryGetListVNOOM3.AsString);
end;


procedure TfrmCsAppSetupAccessoryData.BtnSelectVNClick(Sender: TObject);
begin
  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกโบรกเกอร์', Fdm.CMPUser,Fdm.BRNUser);

    OnSelectData := DealerSelected;
    ShowModal();
  end;

end;

procedure TfrmCsAppSetupAccessoryData.Init(DM : TDSCarsaleDM);
begin
    Fdm := dm;

    FUserSession :=  UniMainModule();
    FSetupdm := FUserSession.DSSetupDM;

   dsSetupAccessoryGetList.DataSet := Fdm.CdsSetupAccessoryGetList;
   dsMtAppGet.DataSet := Fdm.CdsMtAppGet;
   dsAccessory.DataSet := Fdm.CdsMtAppGetAccessory;
   dsSetupAccessory.DataSet := Fdm.CdsSetupAccessoryGet;

   dsAddr01.DataSet := Fdm.CdsMtCsmGetAddr01;

   STSOT5.ListSource := Fdm.GetDSC('STS');
   BRNOM3.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPOm3.ListSource := Fdm.GetDSC('DP'); //แผนก
   CHGCSM.ListSource := Fdm.GetDSC('AC');//จังหวัด
   SRSPM1.ListSource := Fdm.GetDSC('IF'); //รุ่นรถ
   COLOT5.ListSource := Fdm.GetDSC('IC'); //สี
   SMNOT5.ListSource := Fdm.GetDSC('SM'); //พนักงานขาย
   PSTOT5.ListSource := Fdm.GetDSC('CP'); // ผู้มาติดต่อ
   TWHOM3.ListSource := Fdm.GetDSC('WH'); //คลังสินค้า

   STSOT5.ReadOnly := True;
   SRSPM1.ReadOnly := True;
   DEPOm3.ReadOnly := True;
   CHGCSM.ReadOnly := True;
   SRSPM1.ReadOnly := True;
   COLOT5.ReadOnly := True;
   SMNOT5.ReadOnly := True;
   PSTOT5.ReadOnly := True;
   BRNOM3.ReadOnly := True;
   CMPOM3.ReadOnly := True;
   ChkVAT.Enabled := False;

  if Fdm.CdsSetupAccessoryGetListDCDOM3.AsString = '502' then
  begin
    Rdo502.Checked := True;
    Rdo503.Checked := False;
  end
  else
  begin
    Rdo502.Checked := False;
    Rdo503.Checked := True;
  end;

  if Rdo502.Checked then
  begin
     Dcd := '502';
     BRD := '12';
     DbSetUpAccessory.ReadOnly := True;
  end;

  if Rdo503.Checked then
  begin
     Dcd := '503';
     BRD := '11';
     DbSetUpAccessory.ReadOnly := False;
  end;

//  Fdm.CdsMtAppGetAccessory.Filtered := True;
//  Fdm.CdsMtAppGetAccessory.Filter := 'FLAG_SELECT = ''N''';

  if (fdm.CdsSetupAccessoryGetList.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;
    VPCPT1.Text := FloatToStr(Fdm.GetPercentVAT);

    ShowEdtAmtAndDate();
  end
  else if (fdm.CdsSetupAccessoryGetList.State in [dsEdit]) then
  begin
     Rdo502.Enabled := False;
     Rdo503.Enabled := False;
     SRSPM1.ListSource := Fdm.GetDSC('S'+ Fdm.CdsMtAppGetSRSPM1.AsString); //แบบ
     CMPOM3.ReadOnly := True;
     BRNOM3.ReadOnly := True;
//     DNOOT5.ReadOnly := True;
     GetMtApp();
     ShowEdtAmtAndDate();

     GetAddr(fdm.CdsSetupAccessoryGetListCNOOT5.AsLargeInt);
  //   DealerGetAddr(fdm.CdsSetupAccessoryGetListVNOOM3.AsString);
  end
  else
  begin
     Rdo502.Enabled := False;
     Rdo503.Enabled := False;
     BtnOk.Visible := False;
     SRSPM1.ListSource := Fdm.GetDSC('S'+ Fdm.CdsMtAppGetSRSPM1.AsString); //แบบ
     btnConfirm.Visible := False;

     ShowEdtAmtAndDate();
     GetMtApp();
     GetAddr(fdm.CdsSetupAccessoryGetListCNOOT5.AsLargeInt);
  //   DealerGetAddr(fdm.CdsSetupAccessoryGetListVNOOM3.AsString);
     RSetReadOnly();
  end;

  Fdm.CdsSetupAccessoryGet.Close();
  Fdm.MtSetupAccessoryGet(fdm.CdsSetupAccessoryGetListYAROM3.AsInteger,fdm.CdsSetupAccessoryGetListCMPOM3.AsString,
               fdm.CdsSetupAccessoryGetListBRNOM3.AsString,Fdm.CdsSetupAccessoryGetListDCDOM3.AsString,fdm.CdsSetupAccessoryGetListORDOM3.AsInteger);
  Fdm.CdsSetupAccessoryGet.Open();

  RSetColorReadOnly();

end;

procedure TfrmCsAppSetupAccessoryData.Rdo502Click(Sender: TObject);
begin
  if Rdo502.Checked then
  begin
     Dcd := '502';
     BRD := '12';
     DbSetUpAccessory.ReadOnly := True;
     GetMtApp();
  end;


end;

procedure TfrmCsAppSetupAccessoryData.Rdo503Click(Sender: TObject);
begin

  if Rdo503.Checked then
  begin
     Dcd := '503';
     BRD := '11';
     DbSetUpAccessory.ReadOnly := False;
     GetMtApp();
  end;



end;

end.
