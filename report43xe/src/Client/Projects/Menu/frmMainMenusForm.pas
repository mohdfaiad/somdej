unit frmMainMenusForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUIFrame, uniGUITypes, StdCtrls, Buttons, UniBitBtn,
  pngimage, ExtCtrls, UniImage, UniLabel, UniPanel, ComCtrls, UniTreeView,
  OleCtrls, SHDocVw, UniURLFrame, UniSplitter, UniStatusBar,
  MainModuleEx, uniButton, uniGUIClasses,
  uniGUIAbstractClasses, uniGUIBaseClasses, uniScreenMask, MainMasterForm,
  Vcl.Imaging.GIFImg, Vcl.Imaging.jpeg, uniHTMLFrame, uniTimer, uniEdit,
  uniSpeedButton, Vcl.ImgList, uniGroupBox,IniFiles,DS43FileIntfDM;

var
  _APP_NAME_LIST_: array of String;

type
  TmnMenus = packed record
    ItemIndex: Integer;
    SelfRecID: Int64;
    ParentRecID: Int64;
    TreeViewNode: TUniTreeNode;
    AppName: String;
    FormName: String;
    ParamList: String;
    AppDesc: String;
    AppForm: TUniForm;
    AppOnClose: TCloseEvent;
    IsEnabled: Boolean;
    IsVisibled: Boolean;
  end;

type
  TEXEVersionData = record
    CompanyName,
    FileDescription,
    FileVersion,
    InternalName,
    LegalCopyright,
    LegalTrademarks,
    OriginalFileName,
    ProductName,
    ProductVersion,
    Comments,
    PrivateBuild,
    SpecialBuild: string;
  end;


  TfrmMainMemus = class(TUniForm)
    pnTitle: TUniPanel;
    stbFooter: TUniStatusBar;
    pnMainBody: TUniPanel;
    pnAppFrame: TUniPanel;
    pnMenus: TUniPanel;
    tvMenus: TUniTreeView;
    LbDateTime: TUniLabel;
    LbUserLogIn: TUniLabel;
    LbCompany: TUniLabel;
    UTimer: TUniTimer;
    ImgHeadRight: TUniImage;
    PnSetup: TUniPanel;
    ImageList1: TImageList;
    GrpSetupEntry: TUniGroupBox;
    BtnStHdrCodeGrid: TUniBitBtn;
    BtnStRunningGrid: TUniBitBtn;
    BtnStApGrid: TUniBitBtn;
    BtnStArGrid: TUniBitBtn;
    BtnStProductGrid: TUniBitBtn;
    BtnStTargetByProductGrid: TUniBitBtn;
    BtnStTargetBySalemanGrid: TUniBitBtn;
    BtnStStartProductGrid: TUniBitBtn;
    BtnStFrameNoGrid: TUniBitBtn;
    BtnStCtShpGrid: TUniBitBtn;
    BtnStMtRegGrid: TUniBitBtn;
    BtnStCtRm1Grid: TUniBitBtn;
    BtnStCtCm3Grid: TUniBitBtn;
    BtnStApOvdAmtGrid: TUniBitBtn;
    BtnStArOvdAmtGrid: TUniBitBtn;
    PnPurechase: TUniPanel;
    GrpPurechase: TUniGroupBox;
    BtnPsAppPoGrid: TUniBitBtn;
    BtnPsPoGrid: TUniBitBtn;
    BtnPsRcvByPoGrid: TUniBitBtn;
    BtnPsRcvProductNoPoGrid: TUniBitBtn;
    BtnPsDebitCreditNoteData: TUniBitBtn;
    BtnPsApprCreditGrid: TUniBitBtn;
    PnCarSale: TUniPanel;
    GrpCarSale: TUniGroupBox;
    BtnCsCustomerGrid: TUniBitBtn;
    BtnCsCustomerGrid2: TUniBitBtn;
    LBCustomerGar: TUniLabel;
    BtnCsAppCarsaleGrid: TUniBitBtn;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    BtnCsAppSetupAccessoryGrid: TUniBitBtn;
    UniLabel4: TUniLabel;
    BtnCsApprSetupAccessoryData: TUniBitBtn;
    BtnCsRcvMoneyAdvanceGrid: TUniBitBtn;
    UniLabel5: TUniLabel;
    BtnCsApprSaleCarGrid: TUniBitBtn;
    PnNormalSale: TUniPanel;
    GrpNormalSale: TUniGroupBox;
    UniLabel6: TUniLabel;
    BtnNsPurchaseOrderGrid: TUniBitBtn;
    UniLabel7: TUniLabel;
    BtnNsSentOrderGrid: TUniBitBtn;
    UniLabel8: TUniLabel;
    BtnNsSentNoOrderGrid: TUniBitBtn;
    BtnNsDebitCreditNoteGrid: TUniBitBtn;
    PnReceiveMoney: TUniPanel;
    GrpReceiveMoney: TUniGroupBox;
    UniLabel9: TUniLabel;
    BtnRmReceiveMoneyGrid: TUniBitBtn;
    UniLabel10: TUniLabel;
    BtnRmReceiveDownGrid: TUniBitBtn;
    UniLabel11: TUniLabel;
    BtnRmCheqToBankData: TUniBitBtn;
    BtnRmChangeNewCheqData: TUniBitBtn;
    PnRegistation: TUniPanel;
    GrpRegistation: TUniGroupBox;
    LbRegRedAdvancd: TUniLabel;
    BtnRgGetMoneyPayGrid: TUniBitBtn;
    BtnRgSentMoneyPayGrid: TUniBitBtn;
    PnRegistationOut: TUniPanel;
    GrpRegistationOut: TUniGroupBox;
    LblOutReceipt: TUniLabel;
    BtnRgRegistationToOutGrid: TUniBitBtn;
    LblReceiptBook: TUniLabel;
    BtnRgRegistationFromOutGrid: TUniBitBtn;
    BtnRgRegistationBookFromOutGrid: TUniBitBtn;
    PnRedRegistation: TUniPanel;
    GrpRedRegistation: TUniGroupBox;
    UniLabel12: TUniLabel;
    BtnRrRcvMoneyRedCardGrid: TUniBitBtn;
    UniLabel13: TUniLabel;
    BtnRrGetAdvanceMoneyGrid: TUniBitBtn;
    BtnRrReturnMoneyRedCardGrid: TUniBitBtn;
    PnCommission: TUniPanel;
    GrpCommission: TUniGroupBox;
    UniLabel14: TUniLabel;
    BtnCom1: TUniBitBtn;
    UniLabel15: TUniLabel;
    BtnCom2: TUniBitBtn;
    BtnCom3: TUniBitBtn;
    BtnCom4: TUniBitBtn;
    BtnCom5: TUniBitBtn;
    BtnCom6: TUniBitBtn;
    BtnCom7: TUniBitBtn;
    BtnCom8: TUniBitBtn;
    GrpCommission2: TUniGroupBox;
    UniLabel16: TUniLabel;
    BtnCom9: TUniBitBtn;
    BtnCom10: TUniBitBtn;
    PnAccount: TUniPanel;
    GrpAccount: TUniGroupBox;
    UniLabel17: TUniLabel;
    BtnAccount1: TUniBitBtn;
    UniLabel18: TUniLabel;
    BtnAsSetupOrgGrid: TUniBitBtn;
    BttnAsSetupAccGrid: TUniBitBtn;
    BtnAsSetupAccOnBookGrid: TUniBitBtn;
    BtnAsSetupTargetData: TUniBitBtn;
    BtnAsSetupBBFData: TUniBitBtn;
    GrpAccount2: TUniGroupBox;
    BtnAsDocDailyData: TUniBitBtn;
    BtnAccPrint: TUniBitBtn;
    PnMoney: TUniPanel;
    GrpMoney: TUniGroupBox;
    UniLabel19: TUniLabel;
    BtnMsSetupMoneyCodeGrid: TUniBitBtn;
    UniLabel20: TUniLabel;
    BtnMsSetupAccountTextGrid: TUniBitBtn;
    BtnMsSetupLineSummarryGrid: TUniBitBtn;
    BtnMsSetupCopyCancelCodeGrid: TUniBitBtn;
    BtnMoney1: TUniBitBtn;
    BtnMoney2: TUniBitBtn;
    GrpMoney2: TUniGroupBox;
    BtnMsSelectCodeMoneyData: TUniBitBtn;
    BtnMsChangeMoneyData: TUniBitBtn;
    PnAsset: TUniPanel;
    GrpAsset: TUniGroupBox;
    BtnAssAmtLostGrid: TUniBitBtn;
    BtnAssSaleAssetLostGrid: TUniBitBtn;
    BtnAssSaleAssetGrid: TUniBitBtn;
    BtnAssMoveAssetBetweenBrnGrid: TUniBitBtn;
    BtnAssUndefinedAssetGrid: TUniBitBtn;
    PnAccountRelation: TUniPanel;
    GrpAccountRelation: TUniGroupBox;
    BtnAccountRelation1: TUniBitBtn;
    BtnAccountRelation2: TUniBitBtn;
    BtnAccountRelation3: TUniBitBtn;
    BtnAccountRelation4: TUniBitBtn;
    BtnAccountRelation5: TUniBitBtn;
    PnSalarry: TUniPanel;
    GrpSalary1: TUniGroupBox;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    GrpSalary2: TUniGroupBox;
    UniBitBtn7: TUniBitBtn;
    UniBitBtn8: TUniBitBtn;
    UniBitBtn9: TUniBitBtn;
    UniBitBtn10: TUniBitBtn;
    UniBitBtn11: TUniBitBtn;
    UniBitBtn12: TUniBitBtn;
    UniBitBtn13: TUniBitBtn;
    UniBitBtn14: TUniBitBtn;
    UniBitBtn15: TUniBitBtn;
    UniBitBtn16: TUniBitBtn;
    UniBitBtn17: TUniBitBtn;
    UniBitBtn18: TUniBitBtn;
    UniBitBtn19: TUniBitBtn;
    UniBitBtn20: TUniBitBtn;
    UniBitBtn21: TUniBitBtn;
    UniBitBtn22: TUniBitBtn;
    PnTax: TUniPanel;
    GrpTAX1: TUniGroupBox;
    BtnTxTaxGrid: TUniBitBtn;
    BtnTxChangeDescInTaxSaleGrid: TUniBitBtn;
    BtnTxSelectSentTaxSaleGrid: TUniBitBtn;
    GrpTAX2: TUniGroupBox;
    BtnTxChangeDescInTaxBuyGrid: TUniBitBtn;
    BtnTxSelectSentTaxBuyGrid: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    BtnTax1: TUniBitBtn;
    BtnTax2: TUniBitBtn;
    UniGroupBox2: TUniGroupBox;
    BtnTxChangeDocNoWHTGrid: TUniBitBtn;
    BtnTAX3: TUniBitBtn;
    PnAssignWork: TUniPanel;
    UniGroupBox3: TUniGroupBox;
    LbAss1: TUniLabel;
    BtnAWSetupCalendaGrid: TUniBitBtn;
    LbAss2: TUniLabel;
    BtnAWRundownTMTCalendaGrid: TUniBitBtn;
    BtnAWPreAssignCalendaGrid: TUniBitBtn;
    BtnAWAssignNoWeekCalendaGrid: TUniBitBtn;
    BtnAWAssignWeekCalendaGrid: TUniBitBtn;
    BtnAWOrderColCalendaGrid: TUniBitBtn;
    BtnAWAssignOutCalendaGrid: TUniBitBtn;
    BtnAWAssignPersonalCalendaGrid: TUniBitBtn;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    BtnReceiveProductCarAssign: TUniBitBtn;
    btnQuit: TUniBitBtn;
    BrnPoAssignAccessory: TUniBitBtn;
    BtnStFg1: TUniBitBtn;
    lbTiltle: TUniLabel;
    imgLogo: TUniImage;
    UniLbInfo: TUniLabel;
    UniBitBtn23: TUniBitBtn;
    UniBitBtn24: TUniBitBtn;
    scRefresh: TUniScreenMask;
    UniTimer1: TUniTimer;
    scRefresh2: TUniScreenMask;
    btnSystemSetting: TUniButton;
    btnReport43Old: TUniButton;
    btnExportHistory: TUniButton;
    UniScreenMask1: TUniScreenMask;
    UniScreenMask2: TUniScreenMask;
    UniScreenMask3: TUniScreenMask;
    procedure btnQuitClick(Sender: TObject);
    procedure tvMenusClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure UTimerTimer(Sender: TObject);
    procedure UniFormActivate(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnSystemSettingClick(Sender: TObject);
    procedure btnExportHistoryClick(Sender: TObject);
    procedure btnReport43OldClick(Sender: TObject);
  private

    FCurrentAppForm: TUniForm;
    FCurrentAppIndex: Integer;
    FAppServer    :string;
    FAppServerPort  :string;
    FAppHttpPort    :string;
    FOBSSURLList: array of TMnMenus;

    FMenusCreating: Boolean;
    FDM: TDS43FileDM;
    procedure InternalInitForm();
    procedure ConfirmSignedOn();
    procedure CancelSignedOn();
    procedure DoSignedOn(var IsAuthenticated: Boolean);
    procedure DoChangePassword(NewPassword, OldPassword: String);
    procedure CreateAppForm(AppIndex: Integer);
    procedure ShowPanel(AppIndex: Integer);
    procedure ShowWeb();
    procedure showwebData();

    procedure SetShowBody(IsShown: Boolean);
    procedure ConfirmChangePasswordDlg(Result: Integer);
    procedure ConfirmChangePasswordDlgEx(Result: Integer);
    procedure DeleteMenusNode(Index: Integer);
    procedure ReStartApp(Result: Integer);

    procedure ShowConfigurationInfo();

  public
    property DM : TDS43FileDM  read FDM write FDM;
    //
  end;

var FAppIdx:integer;
    FAppDefaultIdx:integer;

function frmMainMemus: TfrmMainMemus;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModuleEx, DateUtils,
   PopupMainClassForm, uPatientInfo,
  XeUniGUIComponents, uNutrition, uHISSystemSetting, SstmPgCon01Frm,
  Rp43OPD01Form, Rp43ExportForm, Rp43LaborRoom, Rp43OPD02Form, Rp43Person,
  Rp43ThaiMassage, Rp43Community, uSystemSetting, uBatchHistory,
  CliConstant;

var
  MenusCS: TRTLCriticalSection;

function IIF(IsTrue: Boolean; Value1, Value2: String): String;
begin
  if (IsTrue) then
    Result := Value1
  else
    Result := Value2;
end;

function frmMainMemus: TfrmMainMemus;
begin
  Result := TfrmMainMemus(UniMainModule.GetFormInstance
    (TfrmMainMemus));
end;

procedure TfrmMainMemus.InternalInitForm();
var
  I: Integer;
begin
//  if (not Assigned(FDM)) then
//    FDM := UniMainModule.DSAuthorizedManagerDM;

//  FDM.HasLoggedIn := False;

  SetLength(FOBSSURLList, 0);
{
  for I := Low(FOBSSURLList) to High(FOBSSURLList) do
  begin
    FOBSSURLList[I].AppName := '';
    FOBSSURLList[I].FormName := '';
    FOBSSURLList[I].AppForm := nil;
    FOBSSURLList[I].AppOnClose := nil;
    FOBSSURLList[I].IsVisibled := True;
  end;
}
//  try
//    UniMainModule.PanelLeft := 0;
//    UniMainModule.PanelTop :=  pnTitle.Height;
//    UniMainModule.PanelHeight := pnMainBody.Height + pnFooter.Height;
 //   UniMainModule.PanelWidth :=  pnMainBody.Width ;
//  except
 // end;

//  FCurrentAppForm := nil;
end;


procedure TfrmMainMemus.ConfirmSignedOn();
begin
end;

procedure TfrmMainMemus.DeleteMenusNode(Index: Integer);
  procedure DeleteMenusArray();
  var
    Idx: Integer;
  begin
    for Idx := Index + 1 to  High(FOBSSURLList) do
    begin
      FOBSSURLList[Idx - 1].ItemIndex := FOBSSURLList[Idx].ItemIndex;
      FOBSSURLList[Idx - 1].SelfRecID := FOBSSURLList[Idx].SelfRecID;
      FOBSSURLList[Idx - 1].ParentRecID := FOBSSURLList[Idx].ParentRecID;
      FOBSSURLList[Idx - 1].AppName := FOBSSURLList[Idx].AppName;
      FOBSSURLList[Idx - 1].FormName := FOBSSURLList[Idx].FormName;
      FOBSSURLList[Idx - 1].ParamList := FOBSSURLList[Idx].ParamList;
      FOBSSURLList[Idx - 1].AppDesc := FOBSSURLList[Idx].AppDesc;
      FOBSSURLList[Idx - 1].IsEnabled := FOBSSURLList[Idx].IsEnabled;
      FOBSSURLList[Idx - 1].IsVisibled := FOBSSURLList[Idx].IsVisibled;
    end;
    SetLength(FOBSSURLList, High(FOBSSURLList));
  end;

begin
  DeleteMenusArray();
//  tvMenus.Items.Delete(tvMenus.Items[Index]);
end;

procedure TfrmMainMemus.btnReport43OldClick(Sender: TObject);
begin
     FCurrentAppForm := TfrmRp43OPD01Grid.Create(UniApplication);
     if FAppDefaultIdx>0 then TfrmRp43OPD01Grid(FCurrentAppForm).DefaultPageIdx:=FAppDefaultIdx;
     ShowWeb;
end;

procedure TfrmMainMemus.btnSystemSettingClick(Sender: TObject);
begin
      FCurrentAppForm:=nil;
      FCurrentAppForm :=  TfrmSystemSetting.Create(UniApplication);
      TfrmSystemSetting(FCurrentAppForm).DM := FDM;
      ShowWeb;
end;

procedure TfrmMainMemus.CancelSignedOn();
begin
  Close();
end;

procedure TfrmMainMemus.ConfirmChangePasswordDlg(Result: Integer);
begin

end;

procedure TfrmMainMemus.ConfirmChangePasswordDlgEx(Result: Integer);
begin

end;

procedure TfrmMainMemus.DoSignedOn(var IsAuthenticated: Boolean);
begin
  SetLength(FOBSSURLList, 0);
end;

procedure TfrmMainMemus.DoChangePassword(NewPassword, OldPassword: String);
begin
end;

procedure TfrmMainMemus.showweb();
begin
      if (Assigned(FCurrentAppForm)) then
    begin

      FCurrentAppForm.WindowState := wsNormal;
  //    FCurrentAppForm.Parent := pnAppFrame;
      FCurrentAppForm.Align := alNone;
      FCurrentAppForm.BorderStyle := bsSingle;
//      FCurrentAppForm.BorderStyle := bsSizeable;
      FCurrentAppForm.Left := 0;//pnAppFrame.Left;
      FCurrentAppForm.Top := pnTitle.Height;
   //   FCurrentAppForm.Height := pnMainBody.Height + pnFooter.Height + stbFooter.Height;
      FCurrentAppForm.Height := pnMainBody.Height +  stbFooter.Height;
      FCurrentAppForm.Width := pnMainBody.Width ;


      if (WebMode) then
      begin
        FCurrentAppForm.WebForm.ExtWindow.Draggable := False;
        FCurrentAppForm.WebForm.ExtWindow.Resizable := False;
      end;

      FCurrentAppForm.Show();
      FCurrentAppForm.BringToFront();

     // if (FCurrentAppForm is TfrmRp43OPD01Grid ) then
     //   TfrmRp43OPD01Grid(FCurrentAppForm).setFileArr([1,2,3,4,5]);

     // ( FCurrentAppForm as TfrmRp43OPD01Grid ).setFileArr([1,2,3,4,5]);


    end;
end;


procedure TfrmMainMemus.showwebData();
begin
      if (Assigned(FCurrentAppForm)) then
    begin

      FCurrentAppForm.WindowState := wsNormal;
  //    FCurrentAppForm.Parent := pnAppFrame;
      FCurrentAppForm.Align := alNone;
      FCurrentAppForm.BorderStyle := bsSingle;
  //    FCurrentAppForm.BorderStyle := bsNone;
      FCurrentAppForm.Left := 0;//pnAppFrame.Left;
      FCurrentAppForm.Top := pnTitle.Height;
   //   FCurrentAppForm.Height := pnMainBody.Height + pnFooter.Height + stbFooter.Height;
      FCurrentAppForm.Height := pnMainBody.Height +  stbFooter.Height;
      FCurrentAppForm.Width := pnMainBody.Width ;


      if (WebMode) then
      begin
        FCurrentAppForm.WebForm.ExtWindow.Draggable := False;
        FCurrentAppForm.WebForm.ExtWindow.Resizable := False;
      end;

      FCurrentAppForm.Show();
      FCurrentAppForm.BringToFront();

    end;
end;

procedure TfrmMainMemus.ShowConfigurationInfo;
const A_CONFIG_FILE_='dsconfigcli.conf';
begin
  with TIniFile.Create(UniServerModule.StartPath+ A_CONFIG_FILE_) do
  try
    FAppServer      :=  Readstring('AppServer', 'HostName', '');
    FAppServerPort  :=  Readstring('AppServer', 'ServerPort', '');
    FAppHttpPort    :=  Readstring('AppServer', 'HttpPort', '');

    if FAppServer='' then
    begin
      WriteString('AppServer', 'HostName', '127.0.0.1');
      WriteString('AppServer', 'ServerPort', '244');
      WriteString('AppServer', 'HttpPort', '8086');
    end;

    stbFooter.Panels[1].Text:='Server:'+FAppServer+':'+FAppServerPort;


  finally
    Free();
  end;
end;
procedure TfrmMainMemus.ShowPanel(AppIndex: Integer);
begin
     if ((AppIndex >= 0) and (AppIndex < 31 )) then
       PnSetup.Align := alClient
     else
       PnSetup.Align := alCustom;

     if ((AppIndex >= 31) and (AppIndex < 52 )) then
       PnPurechase.Align := alClient
     else
       PnPurechase.Align := alCustom;
{
     if ((AppIndex >= 52) and (AppIndex < 64 )) then
       PnAP.Align := alClient
     else
       PnAP.Align := alCustom;

     if ((AppIndex >= 64) and (AppIndex < 76 )) then
       PnBuyAnalyst.Align := alClient
     else
       PnBuyAnalyst.Align := alCustom;
 }

     if ((AppIndex >= 94) and (AppIndex < 119 )) then
       PnCarSale.Align := alClient
     else
       PnCarSale.Align := alCustom;

     if ((AppIndex >= 119) and (AppIndex < 130 )) then
       PnNormalSale.Align := alClient
     else
       PnNormalSale.Align := alCustom;

     if ((AppIndex >= 130) and (AppIndex < 138 )) then
       PnReceiveMoney.Align := alClient
     else
       PnReceiveMoney.Align := alCustom;

     if ((AppIndex >= 138) and (AppIndex < 149 )) then
       PnRegistation.Align := alClient
     else
       PnRegistation.Align := alCustom;

     if ((AppIndex >= 149) and (AppIndex < 163 )) then
       PnRegistationOut.Align := alClient
     else
       PnRegistationOut.Align := alCustom;
////
     if ((AppIndex >= 163) and (AppIndex < 176 )) then
       PnRedRegistation.Align := alClient
     else
       PnRedRegistation.Align := alCustom;

     if ((AppIndex >= 176) and (AppIndex < 202 )) then
       PnCommission.Align := alClient
     else
       PnCommission.Align := alCustom;
 {
     if ((AppIndex >= 202) and (AppIndex < 213 )) then
       PnAR.Align := alClient
     else
       PnAR.Align := alCustom;

     if ((AppIndex >= 213) and (AppIndex < 226 )) then
       PnSaleAnalyst.Align := alClient
     else
       PnSaleAnalyst.Align := alCustom;
}
     if ((AppIndex >= 226) and (AppIndex < 265 )) then
       PnAccount.Align := alClient
     else
       PnAccount.Align := alCustom;

     if ((AppIndex >= 265) and (AppIndex < 299 )) then
       PnMoney.Align := alClient
     else
       PnMoney.Align := alCustom;

     if ((AppIndex >= 299) and (AppIndex < 314 )) then
       PnAsset.Align := alClient
     else
       PnAsset.Align := alCustom;

     if ((AppIndex >= 314) and (AppIndex < 327 )) then
       PnAccountRelation.Align := alClient
     else
       PnAccountRelation.Align := alCustom;

     if ((AppIndex >= 327) and (AppIndex < 366 )) then
       PnSalarry.Align := alClient
     else
       PnSalarry.Align := alCustom;

     if ((AppIndex >= 366) and (AppIndex < 385 )) then
       PnTax.Align := alClient
     else
       PnTax.Align := alCustom;
{
     if ((AppIndex >= 385) and (AppIndex < 423 )) then
       PnDayEnd.Align := alClient
     else
       PnDayEnd.Align := alCustom;

     if ((AppIndex >= 423) and (AppIndex < 429 )) then
       PnMonthEnd.Align := alClient
     else
       PnMonthEnd.Align := alCustom;

     if ((AppIndex >= 429) and (AppIndex < 443 )) then
       PnAuthorization.Align := alClient
     else
       PnAuthorization.Align := alCustom;
 }
     if ((AppIndex >= 443) and (AppIndex < 451 )) then
       PnAssignWork.Align := alClient
     else
       PnAssignWork.Align := alCustom;


end;

procedure TfrmMainMemus.CreateAppForm(AppIndex: Integer);
var i  : integer;
begin
    i :=  2;


  //FCurrentAppForm := nil;


     //ShowPanel(AppIndex);

//     ShowMessage(IntToStr(AppIndex));


     if (FAppIdx = 2) and (FAppDefaultIdx<>12) and (FAppDefaultIdx<>1) then
  //           FCurrentAppForm := TfrmSstmPgCon01.Create(UniApplication)
  //     FCurrentAppForm := TfrmStHdrCodeGrid.Create(UniApplication)
      begin
        // FCurrentAppForm := nil;
         FCurrentAppForm := TfrmRp43OPD01Grid.Create(UniApplication);
         if FAppDefaultIdx>0 then TfrmRp43OPD01Grid(FCurrentAppForm).DefaultPageIdx:=FAppDefaultIdx;

        // ( FCurrentAppForm as TfrmRp43OPD01Grid ).setFileArr([1,2,3,4,5]);
      end else
     if (FAppIdx = 4)  or   (FAppDefaultIdx=12) then
      begin
         FCurrentAppForm := TfrmRp43LaborRoom.Create(UniApplication);
      end
     else
     if (FAppIdx = 5)  or   (FAppDefaultIdx=1) then
      begin
         FCurrentAppForm := TfrmRp43Person.Create(UniApplication);
      end
     else
     if (FAppIdx = 6)  or   (FAppDefaultIdx=17) then
       begin
        FCurrentAppForm := TfrmRp43ThaiMassage.Create(UniApplication);
       end
     else
     if (FAppIdx=7) or (FAppDefaultIdx=18) then
       begin
         FCurrentAppForm:=TfrmRp43Community.Create(UniApplication);
       end
     else
      if (FAppIdx = 5) then
       FCurrentAppForm := TfrmRp43OPD02Grid.Create(UniApplication)
     else
      if (FAppIdx = 6) or (FAppDefaultIdx=1) then
        begin
           FCurrentAppForm := TfrmRp43OPD02Grid.Create(UniApplication)
        end
     ELSE
      if FAppIdx = 3 then
       FCurrentAppForm := TfrmRp43Export.Create(UniApplication)

     else if AppIndex =  453 then
       FCurrentAppForm := TfrmPatientInfo.Create(UniApplication)
     else if AppIndex =  455 then
       FCurrentAppForm := TfrmNutrition.Create(UniApplication)

     else if AppIndex =  458 then
       FCurrentAppForm := TfrmSstmPgCon01.Create(UniApplication)
     else
       FCurrentAppForm := nil;
    ShowWeb();
end;




procedure TfrmMainMemus.SetShowBody(IsShown: Boolean);
begin
end;

procedure TfrmMainMemus.tvMenusClick(Sender: TObject);
begin
// ShowMessage( IntToStr(tvMenus.Selected.AbsoluteIndex));
// exit;

  {
  if (not FMenusCreating) then
  begin
     //ShowMessage(inttostr(tvMenus.Selected.AbsoluteIndex));
    Screen.Cursor:=crHourGlass;
    try

     stbFooter.Panels[2].Text :=' Clicked id:'+inttostr(tvMenus.Selected.AbsoluteIndex);
     CreateAppForm(tvMenus.Selected.AbsoluteIndex);
    finally
      Screen.Cursor:=crDefault;
    end;


  end
  else
  begin

    ShowMessage('กำลังเปิดโปรแกรม ' + tvMenus.Items[FCurrentAppIndex].Text +
      ' อยู่ กรุณารอสักครู่');
  end;

  }
  //btnShow43Click(sender);
  stbFooter.Panels[2].Text :='id:'+inttostr(tvMenus.Selected.AbsoluteIndex);

  FAppIdx := tvMenus.Selected.AbsoluteIndex;
  UniTimer1.Enabled:=true;
end;

procedure TfrmMainMemus.ReStartApp(Result: Integer);
var
  I: Integer;
begin
  if (Result = ID_YES) then
  begin
    try
      SetShowBody(False);
    except
      on E: Exception do
      begin
        UniServerModule.Logger.AddLog('FREE_HIDE_PANEL', E.Message);
      end;
    end;
    //FCurrentAppForm.Close();
    FCurrentAppForm := nil;
    for I := Low(FOBSSURLList) to High(FOBSSURLList) do
    begin
      {***** Hide Current Form *****}
      if (Assigned(FOBSSURLList[I].AppForm)) then
      try
        FOBSSURLList[I].AppForm.Visible := False;
      except
        on E: Exception do
        begin
          UniServerModule.Logger.AddLog('FREE_UNI_FORM_HIDE', E.Message);
        end;
      end;

      {***** Free Current Form *****}
      try
        FreeAndNil(FOBSSURLList[I].AppForm);
      except
        on E: Exception do
        begin
          FOBSSURLList[I].AppForm := nil;
          UniServerModule.Logger.AddLog('FREE_UNI_FORM_FREE', E.Message);
        end;
      end;
    end;

    try
      UniMainModule.FreeAllDSClass();
    except
      on E: Exception do
      begin
        UniServerModule.Logger.AddLog('FREE_DS_CLASS', E.Message);
      end;
    end;

    try
      InternalInitForm();
    except
      on E: Exception do
      begin
        UniServerModule.Logger.AddLog('FREE_INIT_FORM', E.Message);
      end;
    end;

  end;
  close;
end;

procedure TfrmMainMemus.btnQuitClick(Sender: TObject);
begin
  MessageDlg
    ('ระบบจะทำการปิดตัวเองและเริ่มต้นระบบใหม่ คุณคุณแน่ใจว่าต้องการออกจากระบบหรือไม่?',
    mtConfirmation, mbYesNo, ReStartApp);
end;

procedure TfrmMainMemus.btnExportHistoryClick(Sender: TObject);
begin
      FCurrentAppForm:=nil;
      FCurrentAppForm :=  TfrmBatchHistory.Create(UniApplication);
      TfrmBatchHistory(FCurrentAppForm).DM := FDM;
      ShowWeb;
end;

procedure TfrmMainMemus.UniFormActivate(Sender: TObject);
begin
  if UniApplication.Parameters.Values['IDX']<>'' then
  begin
      FAppDefaultIdx:=strtoint(UniApplication.Parameters.Values['IDX']);
      FAppIdx:=2;
      UniTimer1.Enabled:=true;
      pnMenus.Visible:=false;
      btnQuit.Visible:=false;
  end;
  if UniApplication.Parameters.Values['PID']<>'' then
  begin
      FAppIdx:=2;
      UniTimer1.Enabled:=true;
      pnMenus.Visible:=false;
      btnQuit.Visible:=false;
  end;


end;

procedure TfrmMainMemus.UniFormCreate(Sender: TObject);
begin
{  pnFooter.Visible := False;
  pnMainBody.Visible := False;
  pnTitle.Visible := False;
  stbFooter.Visible := False;
}
    InternalInitForm();
    FMenusCreating := False;
    FAppDefaultIdx:=0;


end;

procedure TfrmMainMemus.UniFormScreenResize(Sender: TObject;
  AWidth, AHeight: Integer);
var
  Pn ,wd ,I: integer;
begin
{  wd := 1024;
  Pn := AWidth - wd;
  if AWidth < wd then
  begin
    PnCenter.Width := wd ;
    PnLeft.Width := 0;
    PnRight.Width := 0 ;
  end
  else
  begin
    PnCenter.Width := wd ;
    PnLeft.Width := Pn div 2;
    PnRight.Width := Pn div 2 ;
  end;
 }
  {var
  I: Integer;
begin
    UniMainModule.PanelWidth := AWidth - (tvMenus.Width);
    UniMainModule.PanelHeight := AHeight -
      (pnTitle.Height + pnFooter.Height + stbFooter.Height);

    imgBackground.Width := UniMainModule.PanelWidth;
    imgBackground.Height := UniMainModule.PanelHeight;

    for I := Low(FOBSSURLList) to High(FOBSSURLList) do
    begin
      if (Assigned(FOBSSURLList[I].AppForm)) then
      begin
        try
          FOBSSURLList[I].AppForm.Height := UniMainModule.PanelHeight;
          FOBSSURLList[I].AppForm.Width := UniMainModule.PanelWidth;
        except
        end;
      end;
    end;
 }

 //   RLeft :=  0;
 //   RTop :=  0;//pnTitle.Height;
 //   RHeight := pnMainBody.Height + pnFooter.Height;
 //   RWidth := pnMainBody.Width ;

end;


function GetEXEVersionData(const FileName: string): TEXEVersionData;
type
  PLandCodepage = ^TLandCodepage;
  TLandCodepage = record
    wLanguage,
    wCodePage: word;
  end;
var
  dummy,
  len: cardinal;
  buf, pntr: pointer;
  lang: string;
begin
  len := GetFileVersionInfoSize(PChar(FileName), dummy);
  if len = 0 then
    RaiseLastOSError;
  GetMem(buf, len);
  try
    if not GetFileVersionInfo(PChar(FileName), 0, len, buf) then
      RaiseLastOSError;

    if not VerQueryValue(buf, '\VarFileInfo\Translation\', pntr, len) then
      RaiseLastOSError;

    lang := Format('%.4x%.4x', [PLandCodepage(pntr)^.wLanguage, PLandCodepage(pntr)^.wCodePage]);

    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\CompanyName'), pntr, len){ and (@len <> nil)} then
      result.CompanyName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\FileDescription'), pntr, len){ and (@len <> nil)} then
      result.FileDescription := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\FileVersion'), pntr, len){ and (@len <> nil)} then
      result.FileVersion := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\InternalName'), pntr, len){ and (@len <> nil)} then
      result.InternalName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\LegalCopyright'), pntr, len){ and (@len <> nil)} then
      result.LegalCopyright := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\LegalTrademarks'), pntr, len){ and (@len <> nil)} then
      result.LegalTrademarks := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\OriginalFileName'), pntr, len){ and (@len <> nil)} then
      result.OriginalFileName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\ProductName'), pntr, len){ and (@len <> nil)} then
      result.ProductName := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\ProductVersion'), pntr, len){ and (@len <> nil)} then
      result.ProductVersion := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\Comments'), pntr, len){ and (@len <> nil)} then
      result.Comments := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\PrivateBuild'), pntr, len){ and (@len <> nil)} then
      result.PrivateBuild := PChar(pntr);
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\SpecialBuild'), pntr, len){ and (@len <> nil)} then
      result.SpecialBuild := PChar(pntr);
  finally
    FreeMem(buf);
  end;
end;


function GetAppVersionStr: string;
var
  //Rec: LongRec;
  rec:TEXEVersionData ;
begin

  rec := GetEXEVersionData(ParamStr(0));

  Result:=rec.FileVersion;
 // Rec := LongRec(GetFileVersion(ParamStr(0)));
 // Result := Format('%d.%d', [Rec.Hi, Rec.Lo])



end;

function GetFileModDate(filename : string) : TDateTime;
var
   F : TSearchRec;
begin
   FindFirst(filename,faAnyFile,F);
   Result := F.TimeStamp;
   //if you really wanted an Int, change the return type and use this line:
   //Result := F.Time;
   FindClose(F);
end;


function GetAppVersionReleaseDate: string;
var
  //Rec: LongRec;
  rec:TDateTime ;
begin

  rec := GetFileModDate(ParamStr(0));


  Result:=FormatDateTime('dd/MM/yyyy',rec);
 // Rec := LongRec(GetFileVersion(ParamStr(0)));
 // Result := Format('%d.%d', [Rec.Hi, Rec.Lo])



end;


{
function GetAppVersionStr: string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  Exe := ParamStr(0);
  Size := GetFileVersionInfoSize(PChar(Exe), Handle);
  if Size = 0 then
    RaiseLastOSError;
  SetLength(Buffer, Size);
  if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
    RaiseLastOSError;
  if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
    RaiseLastOSError;
  Result := Format('%d.%d.%d.%d',
    [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
     LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
     LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
     LongRec(FixedPtr.dwFileVersionLS).Lo]) //build
end;
}




procedure TfrmMainMemus.UniFormShow(Sender: TObject);
begin
  FAppIdx:=0;
  ShowConfigurationInfo;
  FDM := UniMainModule.DS43FileDM;
  lbTiltle.Caption:=SYS_SOFTWARE_TITLE;
  UniLbInfo.Caption:='Report 43 System v'+GetAppVersionStr+','+FDM.getServerVersion+' (Release '+GetAppVersionReleaseDate+')';

  //UniLbInfo.Caption:= GetAppVersionStr;

end;

procedure TfrmMainMemus.UniTimer1Timer(Sender: TObject);
begin
  if (not FMenusCreating) then
  begin
     //ShowMessage(inttostr(tvMenus.Selected.AbsoluteIndex));
    Screen.Cursor:=crHourGlass;
    try

     stbFooter.Panels[2].Text :='HN:000001';
     CreateAppForm(2);
    finally
      Screen.Cursor:=crDefault;
    end;
  end
  else
  begin
    ShowMessage('กำลังเปิดโปรแกรม ' + tvMenus.Items[FCurrentAppIndex].Text +
      ' อยู่ กรุณารอสักครู่');
  end;
end;

procedure TfrmMainMemus.UTimerTimer(Sender: TObject);
var STime : String;
    yy : integer;
begin

  yy := StrToInt(FormatDateTime('yyyy', Now)) + 543;
  LbDateTime.Caption := FormatDateTime('dd  mmmmmm  ', Now) + IntToStr(yy) + FormatDateTime('  hh:mm:ss',Now);

end;

initialization
  RegisterMainFormClass(TfrmMainMemus);

end.

