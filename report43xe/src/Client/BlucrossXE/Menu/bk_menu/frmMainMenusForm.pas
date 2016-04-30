unit frmMainMenusForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUIFrame, uniGUITypes, StdCtrls, Buttons, UniBitBtn,
  pngimage, ExtCtrls, UniImage, UniLabel, UniPanel, ComCtrls, UniTreeView,
  OleCtrls, SHDocVw, UniURLFrame, UniSplitter, UniStatusBar,
  MainModuleEx, uniButton, uniGUIClasses,
  uniGUIAbstractClasses, uniGUIBaseClasses, uniScreenMask, MainMasterForm,
  Vcl.Imaging.GIFImg, Vcl.Imaging.jpeg;

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

  TfrmMainMemus = class(TUniForm)
    pnTitle: TUniPanel;
    pnFooter: TUniPanel;
    btnQuit: TUniBitBtn;
    stbFooter: TUniStatusBar;
    scmMenusLoading: TUniScreenMask;
    pnMainBody: TUniPanel;
    pnAppFrame: TUniPanel;
    imgBackground: TUniImage;
    pnMenus: TUniPanel;
    imgLogo: TUniImage;
    tvMenus: TUniTreeView;
    ImgTitleLogo: TUniImage;
    LbCompany: TUniLabel;
    imgBotton: TUniImage;
    procedure btnQuitClick(Sender: TObject);
    procedure tvMenusClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
  private

    FCurrentAppForm: TUniForm;
    FCurrentAppIndex: Integer;
    FOBSSURLList: array of TMnMenus;

    FMenusCreating: Boolean;
    procedure InternalInitForm();
    procedure ConfirmSignedOn();
    procedure CancelSignedOn();
    procedure DoSignedOn(var IsAuthenticated: Boolean);
    procedure DoChangePassword(NewPassword, OldPassword: String);
    procedure CreateAppForm(AppIndex: Integer);

    procedure SetShowBody(IsShown: Boolean);
    procedure ConfirmChangePasswordDlg(Result: Integer);
    procedure ConfirmChangePasswordDlgEx(Result: Integer);
    procedure DeleteMenusNode(Index: Integer);
    procedure ReStartApp(Result: Integer);
  public
    //
  end;

function frmMainMemus: TfrmMainMemus;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModuleEx, DateUtils, StHdrCodeForm, StRunningForm,
  PaAnalystInqForm, PopupCarForm, PopupMainClassForm, PsAppApprPaymentDataForm,
  PsAppApprPaymentGridForm, PsAppPoDataForm, PsAppPoGridForm,
  PsApprCreditGridForm, PsCashPaymentDataForm, PsCashPaymentGridForm,
  PsChequeClearingGridForm, PsDebitCreditNoteDataForm, PsPaymentByAppDataForm,
  PsPaymentByAppGridForm, PsPoDataForm, PsPoGridForm, PsRcvByPoDataForm,
  PsRcvByPoGridForm, PsRcvProductNoPoForm, SkMoveCarBetweenBrnDataForm,
  SkOutCarFromMixerDataForm, SkRcvCarFromComDataForm, SkRcvCarFromMixerDataForm,
  SkRcvCarInMixerDataForm, SkStockInqDataForm, SkStockInqForm, StApForm,
  StArForm, StProductForm,
  StStarttProductForm, StFrameNoForm, ApInqDataForm, ApInqGridForm,
  StTargetByProductForm,StTargetBySalemanForm,
  CsCustomerForm, CsCustomerDataForm,
  CsAppSaleCarForm, CsAppSetupAccessoryForm, CsApprSetupAccessoryDataForm,
  CsRcvMoneyAdvanceForm, CsApprSaleCarForm, NsPurchaseOrderForm,
  NSSentOrderForm, NSSentNoOrderForm, NSDebitCreditNoteForm, RmReceiveMoneyForm,
  RmReceiveDownForm, RmCheqToBankDataForm, RmChangeNewCheqDataForm,
  RgGetMoneyPayForm, RgSentMoneyPayForm, RgRegisToOutForm, RgRegisFromOutForm,
  RgBookFromOutForm,RgInqRegistationDataForm, RrRcvMoneyRedCardForm,
  RrGetMoneyAdvancePayForm, RrSentMoneyPayForm, RrInqRedCardDataForm,
  TaSetupCalendaDataForm, TaRundownFromTMTDataForm, TaPreAssignDataForm,
  TaAssignNOWeekDataForm, TaAssignWeekDataForm, TaOrderColorForm,
  TaAssignWeekOutColorForm, TaAssignPersonalForm, ArInqGridForm,
  SaAnalystInqForm, MsSetupMoneyCodeForm, MsSetupAccountTextForm,
  MsSetupLineSummarryForm, MsSelectCodeMoneyDataForm, MsChangeMoneyDataForm,
  MsSetupCopyCancelCodeForm, AsSetupOrgForm, AsSetupAccForm,
  AsSetupAccOnBookForm, AsSetupTargetDataForm, AsSetupBBFDataForm,
  AsDocDailyDataForm, AsGLDataForm, AssAmtLostForm, AsSetupAccDataForm,
  AssSaleAssetForm, AssSaleAssetLostForm, AssUndefinedAssetForm,
  AssMoveAssetBetweenBrnForm, TxChangeDescInTaxBuyForm,
  TxChangeDescInTaxSaleForm, TxSelectSentTaxBuyForm, TxSelectSentTaxSaleForm,
  TxTaxDataForm, TxTaxForm, TxChangeDocNoWHTForm, StCtShpForm, StCtCm3Form,
  StCtRm1Form, StMtRegForm, StArOvdAmtForm, StApOvdAmtForm, TaSetupCalendaForm;

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

procedure TfrmMainMemus.CreateAppForm(AppIndex: Integer);
var i  : integer;
begin
    i :=  2;

     if AppIndex = 2 then
       FCurrentAppForm := TfrmStHdrCodeGrid.Create(UniApplication)
     else if AppIndex = 3 then
       FCurrentAppForm := TfrmStRunningGrid.Create(UniApplication)
     else if AppIndex = 4 then
       FCurrentAppForm := TfrmStApGrid.Create(UniApplication)
     else if AppIndex = 5 then
       FCurrentAppForm := TfrmStArGrid.Create(UniApplication)
     else if AppIndex = 6 then
       FCurrentAppForm := TfrmStProductGrid.Create(UniApplication)
     else if AppIndex = 8 then
       FCurrentAppForm := TfrmStTargetByProductGrid.Create(UniApplication)
     else if AppIndex = 9 then
       FCurrentAppForm := TfrmStTargetBySalemanGrid.Create(UniApplication)
     else if AppIndex = I + 8 then
       FCurrentAppForm := TfrmStStartProductGrid.Create(UniApplication)
     else if AppIndex = i + 9 then
       FCurrentAppForm := TfrmStFrameNoGrid.Create(UniApplication)
     else if AppIndex = i +  10 then
       FCurrentAppForm :=  TfrmStCtShpGrid.Create(UniApplication) //--TfrmStServiceNewCar.Create(UniApplication)
     else if AppIndex = i +  11 then
       FCurrentAppForm := TfrmStMtRegGrid.Create(UniApplication)
     else if AppIndex = i +  12 then
       FCurrentAppForm := TfrmStCtRm1Grid.Create(UniApplication)
     else if AppIndex = i +  13 then
       FCurrentAppForm := TfrmStCtCm3Grid.Create(UniApplication)

     else if AppIndex = i +  14 then
       FCurrentAppForm := TfrmStApOvdAmtGrid.Create(UniApplication)
     else if AppIndex = i +  15 then
       FCurrentAppForm := TfrmStArOvdAmtGrid.Create(UniApplication)

     else if AppIndex =  33 then
       FCurrentAppForm := TfrmPsAppPoGrid.Create(UniApplication)
     else if AppIndex =  34 then
       FCurrentAppForm := TfrmPsPoGrid.Create(UniApplication)
     else if AppIndex =  36 then
       FCurrentAppForm := TfrmPsRcvByPoGrid.Create(UniApplication)
     else if AppIndex =  37 then
       FCurrentAppForm := TfrmPsRcvProductNoPoGrid.Create(UniApplication)
     else if AppIndex =  38 then
       FCurrentAppForm := TfrmPsDebitCreditNoteData.Create(UniApplication)
     else if AppIndex =  39 then
       FCurrentAppForm := TfrmPsApprCreditGrid.Create(UniApplication)
     else if AppIndex =  45 then
       FCurrentAppForm := TfrmPsAppApprPaymentGrid.Create(UniApplication)
     else if AppIndex =  46 then
       FCurrentAppForm := TfrmPsPaymentByAppGrid.Create(UniApplication)
     else if AppIndex =  47then
       FCurrentAppForm := TfrmPsCashPaymentGrid.Create(UniApplication)
     else if AppIndex =  49 then
       FCurrentAppForm := TfrmPsChequeClearingGrid.Create(UniApplication)
     else if AppIndex =  63 then
       FCurrentAppForm := TfrmApInqGrid.Create(UniApplication)
     else if AppIndex =  75 then
       FCurrentAppForm := TfrmPaAnalystInq.Create(UniApplication)
     else if AppIndex =  78 then
       FCurrentAppForm := TfrmSkRcvCarInMixerData.Create(UniApplication)
     else if AppIndex =  79 then
       FCurrentAppForm := TfrmSkOutCarFromMixerData.Create(UniApplication)
     else if AppIndex =  80 then
       FCurrentAppForm := TfrmSkRcvCarFromMixerData.Create(UniApplication)
     else if AppIndex =  81 then
       FCurrentAppForm := TfrmSkRcvCarFromComData.Create(UniApplication)
     else if AppIndex =  82 then
       FCurrentAppForm := TfrmSkMoveCarBetweenBrnData.Create(UniApplication)
     else if AppIndex =  93 then
       FCurrentAppForm := TfrmSkStockInq.Create(UniApplication)

     else if AppIndex =  96 then
       FCurrentAppForm := TfrmCsCustomerGrid.Create(UniApplication)
     else if AppIndex =  97 then
       FCurrentAppForm := TfrmCsCustomerGrid.Create(UniApplication)
     else if AppIndex =  102 then
       FCurrentAppForm := TfrmCsAppCarsaleGrid.Create(UniApplication)
     else if AppIndex =  103 then
       FCurrentAppForm := TfrmCsAppSetupAccessoryGrid.Create(UniApplication)
     else if AppIndex =  104 then
       FCurrentAppForm := TfrmCsApprSetupAccessoryData.Create(UniApplication)
     else if AppIndex =  105 then
       FCurrentAppForm := TfrmCsRcvMoneyAdvanceGrid.Create(UniApplication)
     else if AppIndex =  106 then
       FCurrentAppForm := TfrmCsApprSaleCarGrid.Create(UniApplication)

     else if AppIndex =  121 then
       FCurrentAppForm := TfrmNsPurchaseOrderGrid.Create(UniApplication)
     else if AppIndex =  122 then
       FCurrentAppForm := TfrmNsSentOrderGrid.Create(UniApplication)
     else if AppIndex =  123 then
       FCurrentAppForm := TfrmNsSentNoOrderGrid.Create(UniApplication)
     else if AppIndex =  124 then
       FCurrentAppForm := TfrmNsDebitCreditNoteGrid.Create(UniApplication)

     else if AppIndex =  132 then
       FCurrentAppForm := TfrmRmReceiveMoneyGrid.Create(UniApplication)
     else if AppIndex =  133 then
       FCurrentAppForm := TfrmRmReceiveDownGrid.Create(UniApplication)
     else if AppIndex =  134 then
       FCurrentAppForm := TfrmRmCheqToBankData.Create(UniApplication)
     else if AppIndex =  135 then
       FCurrentAppForm := TfrmRmChangeNewCheqData.Create(UniApplication)

     else if AppIndex =  140 then
       FCurrentAppForm := TfrmRgGetMoneyPayGrid.Create(UniApplication)
     else if AppIndex =  141 then
       FCurrentAppForm := TfrmRgSentMoneyPayGrid.Create(UniApplication)

     else if AppIndex =  151 then
       FCurrentAppForm := TfrmRgRegisToOutGrid.Create(UniApplication)
     else if AppIndex =  152 then
       FCurrentAppForm := TfrmRgRegisFromOutGrid.Create(UniApplication)
     else if AppIndex =  153 then
       FCurrentAppForm := TfrmRgBookFromOutGrid.Create(UniApplication)
     else if AppIndex =  162 then
       FCurrentAppForm := TfrmRgInqRegistationData.Create(UniApplication)

     else if AppIndex =  165 then
       FCurrentAppForm := TfrmRrRcvMoneyRedCardGrid.Create(UniApplication)
     else if AppIndex =  166 then
       FCurrentAppForm := TfrmRrGetMoneyAdvancePayGrid.Create(UniApplication)
     else if AppIndex =  167 then
       FCurrentAppForm := TfrmRrSentMoneyPayGrid.Create(UniApplication)
     else if AppIndex =  175 then
       FCurrentAppForm := TfrmRrInqRedCardData.Create(UniApplication)

     else if AppIndex =  212 then
       FCurrentAppForm := TfrmArInqGrid.Create(UniApplication)

     else if AppIndex =  225 then
       FCurrentAppForm := TfrmSaAnalystInq.Create(UniApplication)

     else if AppIndex =  229 then
       FCurrentAppForm := TfrmAsSetupOrgGrid.Create(UniApplication)
     else if AppIndex =  230 then
       FCurrentAppForm := TfrmAsSetupAccGrid.Create(UniApplication)
     else if AppIndex =  231 then
       FCurrentAppForm := TfrmAsSetupAccOnBookGrid.Create(UniApplication)
     else if AppIndex =  232 then
       FCurrentAppForm := TfrmAsSetupTargetData.Create(UniApplication)
     else if AppIndex =  233 then
       FCurrentAppForm := TfrmAsSetupBBFData.Create(UniApplication)
     else if AppIndex =  241 then
       FCurrentAppForm := TfrmAsDocDailyData.Create(UniApplication)
     else if AppIndex =  256 then
       FCurrentAppForm := TfrmAsGLData.Create(UniApplication)

     else if AppIndex =  267 then
       FCurrentAppForm := TfrmMsSetupMoneyCodeGrid.Create(UniApplication)
     else if AppIndex =  268 then
       FCurrentAppForm := TfrmMsSetupAccountTextGrid.Create(UniApplication)
     else if AppIndex =  269 then
       FCurrentAppForm := TfrmMsSetupLineSummarryGrid.Create(UniApplication)
     else if AppIndex =  270 then
       FCurrentAppForm := TfrmMsSetupCopyCancelCodeGrid.Create(UniApplication)
     else if AppIndex =  276 then
       FCurrentAppForm := TfrmMsSelectCodeMoneyData.Create(UniApplication)
     else if AppIndex =  280 then
       FCurrentAppForm := TfrmMsChangeMoneyData.Create(UniApplication)

     else if AppIndex =  301 then
       FCurrentAppForm := TfrmAssAmtLostGrid.Create(UniApplication)
     else if AppIndex =  302 then
       FCurrentAppForm := TfrmAssSaleAssetLostGrid.Create(UniApplication)
     else if AppIndex =  303 then
       FCurrentAppForm := TfrmAssSaleAssetGrid.Create(UniApplication)
     else if AppIndex =  304 then
       FCurrentAppForm :=  TfrmAssMoveAssetBetweenBrnGrid.Create(UniApplication)
     else if AppIndex =  305 then
       FCurrentAppForm := TfrmAssUndefinedAssetGrid.Create(UniApplication)

     else if AppIndex =  368 then
       FCurrentAppForm := TfrmTxTaxGrid.Create(UniApplication)
     else if AppIndex =  369 then
       FCurrentAppForm := TfrmTxChangeDescInTaxSaleGrid.Create(UniApplication)
     else if AppIndex =  370 then
       FCurrentAppForm := TfrmTxSelectSentTaxSaleGrid.Create(UniApplication)
     else if AppIndex =  376 then
       FCurrentAppForm :=  TfrmTxChangeDescInTaxBuyGrid.Create(UniApplication)
     else if AppIndex =  377 then
       FCurrentAppForm := TfrmTxSelectSentTaxBuyGrid.Create(UniApplication)
     else if AppIndex =  383 then
       FCurrentAppForm := TfrmTxChangeDocNoWHTGrid.Create(UniApplication)

     else if AppIndex =  444 then
       FCurrentAppForm := TfrmTaSetupCalendaGrid.Create(UniApplication)
     else if AppIndex =  445 then
       FCurrentAppForm := TfrmTaRundownFromTMTData.Create(UniApplication)
     else if AppIndex =  446 then
       FCurrentAppForm := TfrmTaPreAssignData.Create(UniApplication)
     else if AppIndex =  447 then
       FCurrentAppForm := TfrmTaPAssignNoWeekData.Create(UniApplication)
     else if AppIndex =  448 then
       FCurrentAppForm := TfrmTaPAssignWeekData.Create(UniApplication)
     else if AppIndex =  449 then
       FCurrentAppForm := TfrmTaOrderColorGrid.Create(UniApplication)
     else if AppIndex =  450 then
       FCurrentAppForm := TfrmTaAssignWeekOutColorGrid.Create(UniApplication)
     else if AppIndex =  451 then
       FCurrentAppForm := TfrmTaAssignPersonalGrid.Create(UniApplication)


     else
       FCurrentAppForm := nil;

    if (Assigned(FCurrentAppForm)) then
    begin
      FCurrentAppForm.WindowState := wsNormal;
  //    FCurrentAppForm.Parent := pnAppFrame;
      FCurrentAppForm.Align := alNone;
      FCurrentAppForm.BorderStyle := bsNone;
      FCurrentAppForm.Left := 0;//pnAppFrame.Left;
      FCurrentAppForm.Top := pnTitle.Height;
      FCurrentAppForm.Height := pnMainBody.Height + pnFooter.Height;
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

procedure TfrmMainMemus.SetShowBody(IsShown: Boolean);
begin
end;

procedure TfrmMainMemus.tvMenusClick(Sender: TObject);
begin
// ShowMessage( IntToStr(tvMenus.Selected.AbsoluteIndex));
// exit;
  if (not FMenusCreating) then
  begin
     CreateAppForm(tvMenus.Selected.AbsoluteIndex);
  end
  else
  begin

    ShowMessage('กำลังเปิดโปรแกรม ' + tvMenus.Items[FCurrentAppIndex].Text +
      ' อยู่ กรุณารอสักครู่');
  end;
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

procedure TfrmMainMemus.UniFormCreate(Sender: TObject);
begin

  InternalInitForm();
  FMenusCreating := False;

end;

procedure TfrmMainMemus.UniFormScreenResize(Sender: TObject;
  AWidth, AHeight: Integer);
var
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

 //   RLeft :=  0;
 //   RTop :=  0;//pnTitle.Height;
 //   RHeight := pnMainBody.Height + pnFooter.Height;
 //   RWidth := pnMainBody.Width ;

end;

initialization
  RegisterMainFormClass(TfrmMainMemus);

end.
