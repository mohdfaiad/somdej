unit MainReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIFrame, MainDataFormClass, StdCtrls, UniButton, ExtCtrls,
  UniPanel, UniLabel, Mask, DBCtrls, UniDBEdit, UniDBComboBox, Grids, DBGrids,
  uniDBGrid, uniGroupBox, ComCtrls, UniPageControl, UniCheckBox, UniDateTimePicker,
  MainModuleEx,
  UniDBLookupComboBox, DB, UniScrollBox, uniEdit, uniGUIClasses, uniMultiItem,
  uniComboBox, uniGUIBaseClasses, uniBasicGrid, DSMainIntfDM,  UniGUIForm,
  ServerModuleEx, MainPrintForm,
  uniDBDateTimePicker,UniGUIAbstractClasses,  //frmRepDebtOvdFrame,
  uniImage, uniScreenMask, Vcl.Imaging.GIFImg;

type
  TMainReportFrm = class(TMainDataForm)
    smProcess: TUniScreenMask;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
//    procedure dbgDataListCellClick(Column: TUniDBGridColumn);
    procedure ReportPrint(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    FUserSession: TUniMainModule;
    FDM: TDSMainDM;

    LFile, LFilePath, LURL, Fr3Name, _Sql_Txt, _Pl_Param: String;
  //  _Frame: TUniForm;
    _PrintFlage:Boolean;

  protected
//    FDMch : TDSCashierDM;
//    FDMcp : TDSCommonPrepDM;
//    FDMctm: TDSCTMDM;
  public
     PReportCode :string;
    procedure PrintReport() ;
    procedure PrepareReport(_ClearLastPage :Boolean = False) ;

    property RPTDM : TDSMainDM read FDM write FDM ;

  end;

implementation

{$R *.dfm}

procedure TMainReportFrm.btnCancelClick(Sender: TObject);
begin
  Close;

end;

procedure TMainReportFrm.PrepareReport(_ClearLastPage :Boolean = False) ;
begin
  _PrintFlage:=True;
  FDM.cdsReportInfo.Close;
  FDM.GetReportInfo(FDM.RReportCode);
  FDM.cdsReportInfo.Open;

  _Pl_Param := Trim(FDM.cdsReportInfoPL_NAME.AsString) ;
  if FDM.RSqlParam <> '' then
  _Pl_Param := _Pl_Param +'('+Trim(FDM.RSqlParam)+')' ;

  FDM.frxRepData.DataSet := FDM.cdsGetFrmReport ;
  LFile := 'ReportTmp_' + FormatDateTime('hhmmss_zzz', Now()) + '.pdf';

  FDM.cdsGetFrmReport.Close;
  _Sql_Txt := 'SELECT * FROM '+ _Pl_Param ;
//  FDM.GetPrintReportForm('SELECT * FROM SP_REP_DEBT_OVD('+QuotedStr(RepDebtOvdFrame.dpDateFr.Text)+')'); // edit!
    FDM.WriteLog('GetPrintReportForm Sql : '+  _Sql_Txt) ;
  FDM.GetPrintReportForm(_Sql_Txt);
  FDM.cdsGetFrmReport.Open;

  if (FDM.cdsGetFrmReport.RecordCount > 0) then
  begin
        try
          Fr3Name :=  FDM.cdsReportInfoFR3_NAME.AsString ;
          FDM.WriteLog('FDM.frxReport.LoadFromFile :'+   UniServerModule.FilesFolderPath+Fr3Name) ;
          FDM.WriteLog('FDM.frxPDFExport.FileName :'+   LFile) ;
          FDM.WriteLog('FDM.frxPDFExport.DefaultPath :'+    UniServerModule.TempFolderPath) ;
          FDM.WriteLog('Link :'+ UniServerModule.LocalCacheURL+LFile);

          IF FDM.frxReport.LoadFromFile(UniServerModule.FilesFolderPath+Fr3Name,False) Then
          Begin
            //FDM.frxPDFExport.FileName := LFile ;
            //FDM.frxPDFExport.DefaultPath := UniServerModule.LocalCachePath ;
            FDM.frxReport.PrepareReport(_ClearLastPage);
            //FDM.frxReport.Export(FDM.frxPDFExport);
            FDM.CreatePDFFile(LFile);
            //FDM.frxReport.
          end;
        finally

        end;
  end
  else
  begin
     _PrintFlage :=False;
     ShowMessage('ไม่พบข้อมูลที่ค้นหา');
    Exit;
  end;

(*
//**************************************//
  if (DM.cdsMiscDataSet.Active) then
    DM.cdsMiscDataSet.Close;
  DM.cdsMiscDataSet.CommandText :=
    'SELECT * FROM SP_FRM_WHT(' + IntToStr(_AccUpdHeadRecID) + ')';

  _Fr3Name :=  'wht.fr3';
  DM.frxReport.LoadFromFile(UniServerModule.FilesFolderPath+_Fr3Name,False);

  DM.cdsMiscDataSet.Open();
  if (not DM.cdsMiscDataSet.IsEmpty) then
    DM.frxReport.PrepareReport(False);
//****************************************//
*)

end;

procedure TMainReportFrm.PrintReport() ;
var
  _Form: TMainPrint;
begin
        _Form := TMainPrint.Create(UniApplication);
        if (Assigned(_Form)) then
        begin
          _Form.PreviewReport(
                FDM.cdsReportInfo.FieldByName('REPORT_NAME').AsString,
                UniServerModule.LocalCacheURL+LFile + '#');
          _Form.ShowModal();
          _Form.BringToFront();
        end;

end;
(*
procedure TMainReportFrm.PrintReport() ;
var
  LFile, LFilePath, LURL, Fr3Name, _Sql_Txt, _Pl_Param: String;
  _Frame: TUniForm;
begin
  FDM.cdsReportInfo.Close;
  FDM.GetReportInfo(FDM.RReportCode);
  FDM.cdsReportInfo.Open;

  _Pl_Param := Trim(FDM.cdsReportInfoPL_NAME.AsString) ;
  if FDM.RSqlParam <> '' then
  _Pl_Param := _Pl_Param +'('+Trim(FDM.RSqlParam)+')' ;

  FDM.frxRepData.DataSet := FDM.cdsGetFrmReport ;
  LFile := 'ReportTmp_' + FormatDateTime('hhmmss', Now()) + '.pdf';

  FDM.cdsGetFrmReport.Close;
  _Sql_Txt := 'SELECT * FROM '+ _Pl_Param ;
//  FDM.GetPrintReportForm('SELECT * FROM SP_REP_DEBT_OVD('+QuotedStr(RepDebtOvdFrame.dpDateFr.Text)+')'); // edit!
    FDM.WriteLog('GetPrintReportForm Sql : '+  _Sql_Txt) ;
  FDM.GetPrintReportForm(_Sql_Txt);
  FDM.cdsGetFrmReport.Open;

  if (FDM.cdsGetFrmReport.RecordCount > 0) then
  begin
        try
          Fr3Name :=  FDM.cdsReportInfoFR3_NAME.Value ;
          FDM.WriteLog('FDM.frxReport.LoadFromFile :'+   UniServerModule.FilesFolderPath+Fr3Name) ;
          FDM.WriteLog('FDM.frxPDFExport.FileName :'+   LFile) ;
          FDM.WriteLog('FDM.frxPDFExport.DefaultPath :'+    UniServerModule.TempFolderPath) ;
          FDM.WriteLog('Link :'+ UniServerModule.LocalCacheURL+LFile);

          IF FDM.frxReport.LoadFromFile(UniServerModule.FilesFolderPath+Fr3Name,False) Then
          Begin
            FDM.frxPDFExport.FileName := LFile ;
            FDM.frxPDFExport.DefaultPath := UniServerModule.LocalCachePath ;
            FDM.frxReport.PrepareReport();
            FDM.frxReport.Export(FDM.frxPDFExport);
          end;
        finally

        end;

        _Frame := TUniFormClass(TMainPrint).Create(UniApplication);
        if (Assigned(_Frame)) then
        begin
          TMainPrint(_Frame).PreviewReport(
                FDM.cdsReportInfo.FieldByName('REPORT_NAME').AsString,
                UniServerModule.LocalCacheURL+LFile + '#');
          _Frame.ShowModal();
          _Frame.BringToFront();
        end;
  end
  else
  begin
     ShowMessage('ไม่พบข้อมูลที่ค้นหา');
    Exit;
  end;
end;
*)
procedure TMainReportFrm.ReportPrint(Sender: TObject);
begin
  PrepareReport(True) ;
  if(_PrintFlage) Then PrintReport();
end;

procedure TMainReportFrm.UniFormCreate(Sender: TObject);
begin
  FUserSession :=  UniMainModule();
  FDM:= FUsersession.DSMainDM;
// FDMch := FUserSession.DSCashierDM;
//  FDMcp := FUsersession.DSCommonPrepDM;
//  Fdmctm := FUsersession.DSCTMDM;

  if (WebMode) then
  begin
    WebForm.ExtWindow.Draggable := False;
    WebForm.ExtWindow.Resizable := False;
  end;

////////////////////////////////////////////////////////////////////////////////
{$IFNDEF OBSS}
  FDM.UserID := UniApplication.Cookies.Values['userid'];
  FDM.UserPWD := UniApplication.Cookies.Values['userpwd'];

  {$IFDEF RELEASE}
  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    UniServerModule.ServerMessages.TerminateTemplate.Text :=
      '<html> ' +
      '<body bgcolor="#E6E6FA"> ' +
      '<p style="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p style="text-align:center;color:#0000A0">please sign-on using FS LOS Application Center.</p> <br>' +
      '<p style="text-align:center;color:#0000A0">ระบบต้องการสิทธิ์ในการเข้าถึงโปรแกรม</p> ' +
      '<p style="text-align:center;color:#0000A0">กรุณา Sign-On เข้าใช้งานโดยใช้ FS LOS Application Center.</p> ' +
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

//  FDM.LogIn(FDM.UserID, FDM.UserPWD, RemoteIP);
////////////////////////////////////////////////////////////////////////////////

{$IFDEF GETCOMPONENTS}
//  GetControlList(FDM, Self, '');
{$ELSE}
{$IFDEF SETCOMPONENTS}
//  SetControlList(FDM, Self, '');
{$ENDIF}
{$ENDIF}

(*
  DsReportList.DataSet:= FDM.cdsReportList;

  FDM.cdsReportList.Close;
  fdm.GetReportList();
  FDM.cdsReportList.open;

  FDM.cdsReportList.Edit;
*)

  btnBack.Caption := 'ปิดโปรแกรม';
  btnBack.Visible := True;
  btnCancel.Caption := 'พิมพ์รายงาน';
  btnCancel.Visible := True;
  btnConfirm.Visible := false;
end;

procedure TMainReportFrm.UniFormDestroy(Sender: TObject);
begin
  {$IFDEF OBSS}
  //FreeAndNil(FDM);
  {$ELSE}
  Exit;
  {$ENDIF}
end;

procedure TMainReportFrm.UniFormShow(Sender: TObject);
begin
  inherited;
  FDM.cdsReportInfo.Close;
  FDM.GetReportInfo(FDM.RReportCode);
  FDM.cdsReportInfo.Open;
  Caption := 'เงื่อนไขรายงาน - '+ FDM.cdsReportInfoREPORT_NAME.AsString ;
end;

end.
