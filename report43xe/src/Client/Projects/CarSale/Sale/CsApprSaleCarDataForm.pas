unit CsApprSaleCarDataForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CsAppSaleCarDataForm, Data.DB,
  uniGUIClasses, uniScreenMask, Vcl.Imaging.GIFImg, uniBasicGrid, uniDBGrid,
    uniGUIForm,  uniGUIVars, MainModuleEx,
  uniEdit, uniImage, uniMemo, uniDBMemo, uniDateTimePicker, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniButton, uniDBEdit,
  uniLabel, uniGroupBox, uniPageControl, uniGUIBaseClasses, uniPanel
  ,ServerModuleEx,MainPrintForm;

type
  TfrmCsApprSaleCarData = class(TfrmCsAppSaleCarData)
    BtnSelectApp: TUniButton;
    UniLabel2: TUniLabel;
    DBDNOST3: TUniDBEdit;
    IDTST3: TUniDateTimePicker;
    LbIDTST3: TUniLabel;
    BtnConfirmAppr: TUniButton;
    BtnPrint: TUniButton;
    UniLabel5: TUniLabel;
    dsMtApprGetDoc: TDataSource;
    CmbSelectPrint: TUniDBLookupComboBox;
    procedure BtnSelectAppClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure IDTST3Change(Sender: TObject);
    procedure BtnConfirmApprClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    //FUserSession: TUniMainModule;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;
    FG : STRING;
    LFile: String;
    procedure subRSetReadOnly();
    procedure ApplicationSelected(YAR:Integer;CMP,BRN,DCD:String;DNO : Integer;app_sts:integer;APPR_TEXT:string);
    Procedure PrintReport(_Sql_Txt : String);
  public
    procedure Showdate();
  end;

var
  frmCsApprSaleCarData: TfrmCsApprSaleCarData;

implementation

{$R *.dfm}

uses PopupApplicationForm ;

procedure TfrmCsApprSaleCarData.Showdate();
begin
  dsMtApprGetDoc.DataSet := dm.CdsMtApprGetDoc;

  IDTST3.Text := DM.FSBuddhistDateToStr(DM.CdsMtApprGetListIDTST3.AsDateTime);
  dM.CdsMtApprGetDoc.Close();
  dm.MtApprGetDoc(dm.CdsMtAppGetDNOOT5.AsInteger);
  dM.CdsMtApprGetDoc.Open();

  {
  CmbGetDoc.Clear();
  dm.CdsMtApprGetDoc.First();
  while not dm.CdsMtApprGetDoc.Eof do
  begin
    CmbGetDoc.Items.Add(dm.CdsMtApprGetDocDNORTH.AsString);
    dm.CdsMtApprGetDoc.Next();
  end;
  }
end;

procedure TfrmCsApprSaleCarData.subRSetReadOnly();
var
  I: Integer;
  IsEnabled : Boolean;
  Pn ,wd : integer;
begin
  wd := 1024;
  Pn := Width - wd;
  IsEnabled := True;

  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 5 then
    begin
      TUniDBEdit(Components[I]).ReadOnly := IsEnabled;
    //  TUniDBEdit(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 5 then
    begin
      TUniEdit(Components[I]).ReadOnly := IsEnabled;
   //   TUniEdit(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 5 then
    begin
      TUniDateTimePicker(Components[I]).ReadOnly := IsEnabled;
   //   TUniDateTimePicker(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 5 then
    begin
      TUniDBLookupComboBox(Components[I]).ReadOnly := IsEnabled;
   //   TUniDBLookupComboBox(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 5 then
    begin
      TUniDBMemo(Components[I]).ReadOnly := IsEnabled;
   //   TUniDBLookupComboBox(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 10 then
    begin

      if Width < wd then
      begin
        if TUniPanel(Components[I] as TComponent).Name = 'PnCenter' then
            TUniPanel(Components[I] as TComponent).Width := wd
        else if TUniPanel(Components[I] as TComponent).Name = 'PnLeft' then
            TUniPanel(Components[I] as TComponent).Width := 0
        else if TUniPanel(Components[I] as TComponent).Name = 'PnRight' then
            TUniPanel(Components[I] as TComponent).Width := 0 ;
      end
      else
      begin
        if TUniPanel(Components[I] as TComponent).Name = 'PnCenter' then
            TUniPanel(Components[I] as TComponent).Width := wd
        else if TUniPanel(Components[I] as TComponent).Name = 'PnLeft' then
            TUniPanel(Components[I] as TComponent).Width := Pn div 2
        else if TUniPanel(Components[I] as TComponent).Name = 'PnRight' then
            TUniPanel(Components[I] as TComponent).Width := Pn div 2;
      end;

     ;
    end;
  end;

end;

procedure TfrmCsApprSaleCarData.ApplicationSelected(YAR:Integer;CMP,BRN,DCD:String;DNO : Integer;app_sts:integer;APPR_TEXT:string);
var str : string;
begin
     dm.CdsMtAppGet.Close();
     dm.MtAppGet(YAR,CMP,BRN,DCD,DNO);
     dm.CdsMtAppGet.Open();

     MNMPM1.ListSource := dm.GetDSC('S'+ dm.CdsMtAppGetSRSPM1.AsString); //แบบ
     btnConfirm.Visible := False;
     BtnSelectcno.Enabled := False;
     BtnSelectProduct.Enabled := False;

     ShowEdtAmtAndDate();
     GetImage();
     GetAddr(dm.CdsMtAppGetCNOOT5.AsLargeInt);
     GetCard(dm.CdsMtAppGetCNOOT5.AsLargeInt);

//     str := dm.MtApprGetCheck(dm.CdsMtAppGetYAROT5.AsInteger,dm.CdsMtAppGetCMPOT5.AsString,dm.CdsMtAppGetBRNOT5.AsString,
//       dm.CdsMtAppGetDCDOT5.AsString,dm.CdsMtAppGetDNOOT5.AsInteger);

     if  app_sts = 1 then
     begin
       showmessage(APPR_TEXT);
       BtnConfirmAppr.Enabled := False;
     end
     else
       BtnConfirmAppr.Enabled := True;

end;

procedure TfrmCsApprSaleCarData.btnCancelClick(Sender: TObject);
begin
  if dm.CdsMtApprGetList.State in [dsInsert] then
    dm.CdsMtApprGetList.Cancel();
  inherited;

end;

procedure TfrmCsApprSaleCarData.BtnConfirmApprClick(Sender: TObject);
var ch : boolean;
    out_dnost3 : integer;
begin
  if (dm.CdsMtAppGetDNOOT5.AsString = '') then
  begin
    ShowMessage('กรอกเลือกคำขอที่ต้องการอนุมัติ');
    Exit;
  end;

  ch:= DM.MtApprInsUpd(
        dm.CdsMtAppGetYAROT5.AsInteger,
        dm.CdsMtAppGetCMPOT5.AsString,
        dm.CdsMtAppGetBRNOT5.AsString,
        dm.CdsMtAppGetDCDOT5.AsString,
        dm.CdsMtAppGetDNOOT5.AsInteger,
        dm.CdsMtApprGetListIDTST3.AsFloat,
        dm.UserID, out_dnost3);

  if ch  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    dm.CdsMtApprGetListDNOST3.AsInteger := out_dnost3;
    btnConfirm.Enabled := False;

    dM.CdsMtApprGetDoc.Close();
    dm.MtApprGetDoc(dm.CdsMtAppGetDNOOT5.AsInteger);
    dM.CdsMtApprGetDoc.Open();

    {CmbGetDoc.Clear();
    CmbGetDoc.Items.Add(dm.CdsMtApprGetListDNOST3.AsString);

    dm.CdsMtApprGetDoc.First();
    while not dm.CdsMtApprGetDoc.Eof do
    begin
      CmbGetDoc.Items.Add(dm.CdsMtApprGetDocDNORTH.AsString);
      dm.CdsMtApprGetDoc.Next();
    end;
      }
     dM.CdsMtApprGetDoc.Close();
     dm.MtApprGetDoc(dm.CdsMtAppGetDNOOT5.AsInteger);
     dM.CdsMtApprGetDoc.Open();
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??') ;

end;

Procedure TfrmCsApprSaleCarData.PrintReport(_Sql_Txt : String);
var
  LFilePath, LURL, Fr3Name: String;

   _Frame: TUniForm;

begin

//  DM.RReportCode := ReportCode;

//  DM.cdsReportInfo.Close;
//  DM.GetReportInfo(DM.RReportCode);
//  DM.cdsReportInfo.Open;


//  DM.frxRepData.DataSet := DM.cdsGetFrmReport ;
  LFile := 'ReportTmp_' + FormatDateTime('hhmmss', Now()) + '.pdf';
  DM.cdsGetFrmReport.Close;
  //_Sql_Txt := 'SELECT * FROM '+
//              Trim(DM.cdsReportInfoPL_NAME.AsString)+'('+
//              inttostr(DM.cdsGetFinDocAllListACC_UPD_HDR_REC_ID_PRT.AsLargeInt)+')' ;

 // _Sql_Txt := 'SELECT * FROM SP_REP_ACCESSORY(2013,''99'',''99'',''502'',30001) ' ;

  DM.WriteLog('GetPrintReportForm Sql : '+  _Sql_Txt) ;
  DM.GetPrintReportForm(_Sql_Txt);
  DM.cdsGetFrmReport.Open;

  try
   if DM.CdsMtApprGetDocDCDRTH.AsString = '115' then
     Fr3Name := 'APPR_RCV.fr3'
   else
     Fr3Name := 'APPR_RCV_DOC.fr3';

    DM.WriteLog('DM.frxReport.LoadFromFile :'+   UniServerModule.FilesFolderPath+Fr3Name) ;
    DM.WriteLog('DM.frxPDFExport.FileName :'+   LFile) ;
    DM.WriteLog('DM.frxPDFExport.DefaultPath :'+    UniServerModule.TempFolderPath) ;
    DM.WriteLog('Link :'+ UniServerModule.LocalCacheURL+LFile);

    IF DM.frxReport.LoadFromFile(UniServerModule.FilesFolderPath+Fr3Name,False) Then
    Begin
       DM.frxReport.PrepareReport();
      LURL := DM.CreatePDFFileEx(LFile);
    end;
  finally
    _Frame := TUniFormClass(TMainPrint).Create(UniApplication);
    if (Assigned(_Frame)) then
    begin
      TMainPrint(_Frame).PreviewReport(DM.cdsReportInfo.FieldByName('REPORT_NAME').AsString, LURL);
      _Frame.ShowModal();
      _Frame.BringToFront();
    end;

  end;


end;

procedure TfrmCsApprSaleCarData.BtnPrintClick(Sender: TObject);
var Str_Sql : String;
begin
   if DM.CdsMtApprGetDocDCDRTH.AsString = '115' then
   begin
      Str_Sql :='SELECT * FROM SP_REP_APPR(' +
              DM.CdsMtApprGetListYAROT5.AsString + ',' +
              '0' + ',' +
              QuotedStr(DM.CdsMtApprGetListCMPOT5.AsString) + ',' +
              QuotedStr(DM.CdsMtApprGetListBRNOT5.AsString) + ',' +
              QuotedStr('115') + ',' +
              DM.CdsMtApprGetListDNOST3.AsString  + ')';
     PrintReport(Str_Sql);
  end
  else            // SELECT * FROM SP_REP_RM_RCV_MONEY(2013,7,'99','99','421',70001,'A')
  begin
      Str_Sql :='SELECT * FROM SP_REP_APPR_RCV_MONEY(' +
              QuotedStr(DM.CdsMtApprGetDocREF_DOC.AsString) + ',' +
              DM.CdsMtApprGetListYAROT5.AsString + ',' +
              DM.CdsMtApprGetDocPRDRTH.AsString+ ',' +
              QuotedStr(DM.CdsMtApprGetDocCMPRTH.AsString) + ',' +
              QuotedStr(DM.CdsMtApprGetDocBRNRTH.AsString) + ',' +
              QuotedStr(dm.CdsMtApprGetDocDCDRTH.AsString) + ',' +
              QuotedStr(dm.CdsMtApprGetDocDNORTH.AsString) + ',' +
              QuotedStr('A') + ')';
     PrintReport(Str_Sql);
  end;


end;

procedure TfrmCsApprSaleCarData.BtnSelectAppClick(Sender: TObject);
begin
  with TfrmPopupApplication.Create(UniApplication) do
  begin
    Init(dm, 'เลือกคำขอ',
      dm.CMPUser,
      dm.BRNUser,'C','N');

    OnSelectData := ApplicationSelected;
    ShowModal();
  end;

end;

procedure TfrmCsApprSaleCarData.IDTST3Change(Sender: TObject);
begin
  if dm.CdsMtApprGetList.State in [dsInsert] then
    if Trim(IDTST3.Text) = '' then
      dm.CdsMtApprGetListIDTST3.AsDateTime := 0
    else
    begin
     dm.CdsMtApprGetListIDTST3.AsDateTime :=
       dm.FSBuddhistDateToDate(IDTST3.DateTime);
     BtnSelectApp.Visible := False;
    end;

end;

procedure TfrmCsApprSaleCarData.UniFormCreate(Sender: TObject);
begin
  App_Appr := 'APPR';
  subRSetReadOnly();

end;

end.
