{$define UNIGUI_VCL}

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  BluecrossXE;



uses
  uniGUIISAPI,
  Forms,
  ServerModuleEx in 'ServerModuleEx.pas' {UniServerModule: TUniGUIServerModule},
  MainModuleEx in 'MainModuleEx.pas' {UniMainModule: TUniGUIMainModule},
  MainMasterForm in '..\..\lib\ClientForm\MainMasterForm.pas' {MasterForm: TUniForm},
  MainFrameClass in '..\..\lib\ClientForm\MainFrameClass.pas' {FrameMainClass: TUniFrame},
  MainDataFormClass in '..\..\lib\ClientForm\MainDataFormClass.pas' {MainDataForm: TUniForm},
  MainGridFormClass in '..\..\lib\ClientForm\MainGridFormClass.pas' {MainGridForm: TUniForm},
  PopupMainClassForm in '..\..\lib\ClientForm\PopupMainClassForm.pas' {PopupMainClass},
  DSMainIntf in '..\..\lib\DSClientIntf\DSMainIntf.pas',
  DSMainIntfDM in '..\..\lib\DSClientIntf\DSMainIntfDM.pas' {DSMainDM: TDataModule},
  ClientUtils in '..\..\lib\ClientUnit\ClientUtils.pas',
  XeUniGUIComponents in '..\..\lib\ClientUnit\XeUniGUIComponents.pas',
  PopupArForm in '..\..\lib\popupForm\PopupArForm.pas' {frmPopupAr},
  PopupProductForm in '..\..\lib\popupForm\PopupProductForm.pas' {frmPopupProduct},
  PopupApForm in '..\..\lib\popupForm\PopupApForm.pas' {frmPopupAp},
  PopupAc1Form in '..\..\lib\popupForm\PopupAc1Form.pas' {frmPopupAc1},
  PopupCsmForm in '..\..\lib\popupForm\PopupCsmForm.pas' {frmPopupCsm},
  PopupProductIM1Form in '..\..\lib\popupForm\PopupProductIM1Form.pas' {frmPopupProductIM1},
  PopupProductByItcForm in '..\..\lib\popupForm\PopupProductByItcForm.pas' {frmPopupProductByItc},
  MainPopupDataFormClass in '..\..\lib\ClientForm\MainPopupDataFormClass.pas' {MainPopupDataForm: TUniForm},
  frmMainMenusForm in 'menu\frmMainMenusForm.pas' {frmMainMemus: TUniForm},
  PopupRedCardForm in '..\..\lib\popupForm\PopupRedCardForm.pas' {frmPopupRedCard},
  PopupApplicationForm in '..\..\lib\popupForm\PopupApplicationForm.pas' {frmPopupApplication},
  MainReportForm in '..\..\lib\ClientForm\MainReportForm.pas' {MainReportFrm: TUniForm},
  MainPrintForm in '..\..\lib\ClientForm\MainPrintForm.pas' {MainPrint},
  PopupFg1ListForm in '..\..\lib\popupForm\PopupFg1ListForm.pas' {frmPopupFg1List},
  uPatientInfo in 'Patients\uPatientInfo.pas' {frmPatientInfo: TUniForm},
  uNutrition in 'Nutrition\uNutrition.pas' {frmNutrition: TUniForm},
  uHISSystemSetting in 'HISSystemSetting\uHISSystemSetting.pas' {frmHISSystemSetting: TUniForm},
  SstmPgCon01Frm in 'HISSystemSetting\SstmPgCon01Frm.pas' {frmSstmPgCon01: TUniForm},
  DS43FileIntf in '..\..\lib\DSClientIntf\DS43FileIntf.pas',
  DS43FileIntfDM in '..\..\lib\DSClientIntf\DS43FileIntfDM.pas' {DS43FileDM: TDataModule},
  Rp43OPD01Form in 'Report43File\Rp43OPD01Form.pas' {frmRp43OPD01Grid: TUniForm},
  Rp43ExportForm in 'Report43File\Rp43ExportForm.pas' {frmRp43Export: TUniForm},
  Rp43LaborRoom in 'Report43File\Rp43LaborRoom.pas' {frmRp43LaborRoom: TUniForm},
  Rp43OPD02Form in 'Report43File\Rp43OPD02Form.pas' {frmRp43OPD02Grid: TUniForm},
  Rp43Person in 'Report43File\Rp43Person.pas' {frmRp43Person: TUniForm},
  Rp43ThaiMassage in 'Report43File\Rp43ThaiMassage.pas' {frmRp43ThaiMassage: TUniForm},
  Rp43Community in 'Report43File\Rp43Community.pas' {frmRp43Community: TUniForm},
  uSystemSetting in 'Report43File\uSystemSetting.pas' {frmSystemSetting: TUniForm},
  uBatchHistory in 'Report43File\uBatchHistory.pas' {frmBatchHistory: TUniForm},
  CliConstant in 'CliConstant.pas';

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  Application.Initialize;
  TUniServerModule.Create(Application);
  //Application.CreateForm(TfrmSystemSetting, frmSystemSetting);
  //Application.CreateForm(TfrmBatchHistory, frmBatchHistory);
  Application.Run;
{$endif}
end.
