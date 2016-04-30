unit Rp43OPD02Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  DS43FileIntfDM,MainModuleEx, uniButton, Vcl.Imaging.GIFImg, uniImage,
  uniTimer, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdTime,
  IdUnixTime, Data.DB, uniScreenMask, uniEdit, uniBitBtn, uniMultiItem,
  uniComboBox, uniBasicGrid, uniDBGrid, uniDBEdit, uniLabel, uniPageControl,
  MainDataFormClass, uniDBComboBox;

type
  TfrmRp43OPD02Grid = class(TMainDataForm)
    pgAll43File: TUniPageControl;
    UniTabSheet12: TUniTabSheet;
    UniLabel132: TUniLabel;
    UniDBEdit81: TUniDBEdit;
    UniDBEdit85: TUniDBEdit;
    UniDBGrid8: TUniDBGrid;
    UniLabel136: TUniLabel;
    UniLabel137: TUniLabel;
    UniLabel138: TUniLabel;
    UniLabel139: TUniLabel;
    UniDBEdit91: TUniDBEdit;
    btnAddNewEPI: TUniButton;
    cmbEpiVACCINETYPE: TUniComboBox;
    UniLabel227: TUniLabel;
    cmbEpiVACCINEPLACE: TUniComboBox;
    UniTabSheet7: TUniTabSheet;
    UniLabel72: TUniLabel;
    UniDBEdit46: TUniDBEdit;
    UniLabel73: TUniLabel;
    UniDBEdit48: TUniDBEdit;
    UniLabel74: TUniLabel;
    UniDBEdit51: TUniDBEdit;
    UniLabel81: TUniLabel;
    UniLabel82: TUniLabel;
    UniDBEdit54: TUniDBEdit;
    UniLabel84: TUniLabel;
    UniLabel85: TUniLabel;
    UniDBEdit55: TUniDBEdit;
    UniLabel86: TUniLabel;
    UniLabel88: TUniLabel;
    UniDBGrid14: TUniDBGrid;
    btnAddNewPrenatal: TUniButton;
    cmbPrenatalVDRL_RESULT: TUniComboBox;
    cmbPrenatalHB_RESULT: TUniComboBox;
    cmbPrenatalHIV_RESULT: TUniComboBox;
    cmbPrenatalTHALASSEMIA: TUniComboBox;
    UniTabSheet6: TUniTabSheet;
    UniLabel54: TUniLabel;
    UniDBEdit37: TUniDBEdit;
    GRAVIDA: TUniDBEdit;
    UniLabel55: TUniLabel;
    UniDBEdit39: TUniDBEdit;
    UniDBGrid5: TUniDBGrid;
    UniLabel59: TUniLabel;
    UniDBEdit40: TUniDBEdit;
    UniLabel64: TUniLabel;
    UniDBEdit41: TUniDBEdit;
    UniLabel65: TUniLabel;
    UniLabel67: TUniLabel;
    UniLabel69: TUniLabel;
    UniDBEdit43: TUniDBEdit;
    UniLabel70: TUniLabel;
    cmbAncANCNO: TUniComboBox;
    btnAddNewANC: TUniBitBtn;
    cmbAncANCRESULT: TUniComboBox;
    cmbAncANCPLACE: TUniComboBox;
    UniTabSheet9: TUniTabSheet;
    UniLabel111: TUniLabel;
    UniDBEdit69: TUniDBEdit;
    UniDBEdit70: TUniDBEdit;
    UniLabel112: TUniLabel;
    UniDBEdit71: TUniDBEdit;
    UniLabel113: TUniLabel;
    UniDBEdit72: TUniDBEdit;
    UniLabel114: TUniLabel;
    UniLabel115: TUniLabel;
    UniLabel117: TUniLabel;
    UniDBEdit76: TUniDBEdit;
    UniLabel118: TUniLabel;
    UniLabel121: TUniLabel;
    UniLabel122: TUniLabel;
    LBORN: TUniDBEdit;
    UniLabel116: TUniLabel;
    SBORN: TUniDBEdit;
    UniLabel119: TUniLabel;
    UniDBGrid15: TUniDBGrid;
    cmbLaborBPLACE: TUniComboBox;
    cmbLaborBTYPE: TUniComboBox;
    cmbLaborBDOCTOR: TUniComboBox;
    btnAddNewLabor: TUniButton;
    cmbLaborBRESULT: TUniComboBox;
    UniTabSheet8: TUniTabSheet;
    UniLabel89: TUniLabel;
    UniDBEdit61: TUniDBEdit;
    UniDBEdit62: TUniDBEdit;
    UniLabel100: TUniLabel;
    UniDBEdit63: TUniDBEdit;
    UniDBGrid6: TUniDBGrid;
    UniLabel102: TUniLabel;
    UniLabel104: TUniLabel;
    UniDBEdit64: TUniDBEdit;
    UniDBEdit65: TUniDBEdit;
    UniLabel106: TUniLabel;
    UniLabel108: TUniLabel;
    UniDBEdit67: TUniDBEdit;
    UniLabel109: TUniLabel;
    btnAddNewPOSTNATAL: TUniBitBtn;
    cmbPostnatalPPRESULT: TUniComboBox;
    UniTabSheet32: TUniTabSheet;
    UniDBGrid28: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniDBEdit74: TUniDBEdit;
    UniLabel299: TUniLabel;
    UniDBEdit180: TUniDBEdit;
    UniLabel316: TUniLabel;
    UniDBEdit196: TUniDBEdit;
    UniDBEdit200: TUniDBEdit;
    UniLabel322: TUniLabel;
    UniLabel323: TUniLabel;
    UniDBEdit201: TUniDBEdit;
    UniLabel324: TUniLabel;
    UniLabel325: TUniLabel;
    UniLabel326: TUniLabel;
    UniLabel327: TUniLabel;
    UniLabel328: TUniLabel;
    UniLabel329: TUniLabel;
    UniDBEdit207: TUniDBEdit;
    UniLabel330: TUniLabel;
    UniDBEdit208: TUniDBEdit;
    UniLabel331: TUniLabel;
    UniLabel332: TUniLabel;
    UniLabel333: TUniLabel;
    UniDBEdit212: TUniDBEdit;
    UniLabel334: TUniLabel;
    UniLabel335: TUniLabel;
    UniDBEdit213: TUniDBEdit;
    btnAddNewNEWBORN: TUniBitBtn;
    cmbNewbornBPLACE: TUniComboBox;
    cmbNewbornBHOSP: TUniComboBox;
    cmbNewbornBIRTHNO: TUniComboBox;
    cmbNewbornBTYPE: TUniComboBox;
    cmbNewbornBDOCTOR: TUniComboBox;
    cmbNewbornASPHYXIA: TUniComboBox;
    cmbNewbornVITK: TUniComboBox;
    cmbNewbornTSH: TUniComboBox;
    BtnAddEdtSubCode: TUniButton;
    btnRefresh: TUniButton;
    edSearchCID: TUniEdit;
    UniButton1: TUniButton;
    UniLabel2: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel10: TUniLabel;
    cmbPersonSEX: TUniComboBox;
    cmbDepartment: TUniComboBox;
    UniLabel7: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniLabel9: TUniLabel;
    btnSync: TUniButton;
    dsReport43Diagnosis: TDataSource;
    dsReport43ServiceList: TDataSource;
    scRefresh: TUniScreenMask;
    dsGetReport43DiagnosisOpd: TDataSource;
    dsGetReport43DiagnosisOpdList: TDataSource;
    dsGetReport43ProcedureOpd: TDataSource;
    dsGetReport43ProcedureOpdList: TDataSource;
    dsGetReport43DrugOpd: TDataSource;
    dsGetReport43DrugListOpd: TDataSource;
    dsGetReport43Appointment: TDataSource;
    dsGetReport43AppointmentList: TDataSource;
    dsGetReport43Anc: TDataSource;
    dsGetReport43AncList: TDataSource;
    dsGetReport43Prenatal: TDataSource;
    dsGetReport43PrenatalList: TDataSource;
    dsGetReport43Postnatal: TDataSource;
    dsGetReport43PostnatalList: TDataSource;
    dsGetReport43LabOr: TDataSource;
    dsGetReport43LabOrList: TDataSource;
    dsGetReport43Women: TDataSource;
    dsGetReport43WomenList: TDataSource;
    dsGetReport43Fp: TDataSource;
    dsGetReport43FpList: TDataSource;
    dsGetReport43Epi: TDataSource;
    dsGetReport43EpiList: TDataSource;
    dsGetReport43Icf: TDataSource;
    dsGetReport43IcfList: TDataSource;
    dsGetReport43SpecialPp: TDataSource;
    dsGetReport43SpecialPpList: TDataSource;
    dsGetReport43Chronic: TDataSource;
    dsGetReport43ChronicList: TDataSource;
    dsGetReport43ChronicFu: TDataSource;
    dsGetReport43ChronicFuList: TDataSource;
    dsGetReport43NutritionList: TDataSource;
    dsGetReport43Nutrition: TDataSource;
    dsGetReport43Death: TDataSource;
    dsGetReport43DeathList: TDataSource;
    dsGetReport43Card: TDataSource;
    dsGetReport43CardList: TDataSource;
    dsGetReport43Drugallergy: TDataSource;
    dsGetReport43DrugallergyList: TDataSource;
    dsGetReport43Accident: TDataSource;
    dsGetReport43AccidentList: TDataSource;
    dsGetReport43ChargeOpdList: TDataSource;
    dsGetReport43ChargeOpd: TDataSource;
    dsGetReport43Admission: TDataSource;
    dsGetReport43AdmissionList: TDataSource;
    dsGetReport43DiagnosisIpd: TDataSource;
    dsGetReport43DiagnosisIpdList: TDataSource;
    dsGetReport43ProcedureIpd: TDataSource;
    dsGetReport43ProcedureIpdList: TDataSource;
    dsGetReport43DrugIpd: TDataSource;
    dsGetReport43DrugList: TDataSource;
    dsGetReport43ChargeIpd: TDataSource;
    dsGetReport43ChargeIpdList: TDataSource;
    dsGetReport43Surveillance: TDataSource;
    dsGetReport43SurveillanceList: TDataSource;
    dsGetReport43Newborn: TDataSource;
    dsGetReport43NewbornList: TDataSource;
    dsGetReport43NewbornCare: TDataSource;
    dsGetReport43NewbornCareList: TDataSource;
    dsGetReport43Dental: TDataSource;
    dsGetReport43DentalList: TDataSource;
    dsGetReport43Ncdscreen: TDataSource;
    dsGetReport43NcdscreenList: TDataSource;
    dsGetReport43Newbon: TDataSource;
    dsGetReport43LabFuList: TDataSource;
    cdsRaceList: TDataSource;
    dsGetReport43Home: TDataSource;
    dsGetReport43HomeList: TDataSource;
    UniScreenMask1: TUniScreenMask;
    UniTimerAutoGet: TUniTimer;
    scRefreshAuto: TUniScreenMask;
    dsReport43Person: TDataSource;
    dsGetReport43: TDataSource;
    cmbPostnatalPPPLACE: TUniComboBox;
    UniLabel3: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnAddNewEPIClick(Sender: TObject);
    procedure btnAddNewPrenatalClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnAddNewANCClick(Sender: TObject);
    procedure cmbEpiVACCINEPLACESelect(Sender: TObject);
    procedure btnAddNewLaborClick(Sender: TObject);
    procedure btnAddNewPOSTNATALClick(Sender: TObject);
    procedure btnAddNewNEWBORNClick(Sender: TObject);
    procedure cmbPrenatalVDRL_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalHB_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalHIV_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalTHALASSEMIASelect(Sender: TObject);
    procedure cmbAncANCNOSelect(Sender: TObject);
    procedure cmbAncANCPLACESelect(Sender: TObject);
    procedure cmbAncANCRESULTSelect(Sender: TObject);
    procedure cmbLaborBPLACESelect(Sender: TObject);
    procedure cmbLaborBTYPESelect(Sender: TObject);
    procedure cmbLaborBRESULTSelect(Sender: TObject);
    procedure cmbLaborBDOCTORSelect(Sender: TObject);
    procedure cmbPostnatalPPRESULTSelect(Sender: TObject);
    procedure cmbNewbornBPLACESelect(Sender: TObject);
    procedure cmbNewbornBHOSPSelect(Sender: TObject);
    procedure cmbNewbornBIRTHNOSelect(Sender: TObject);
    procedure cmbNewbornBTYPESelect(Sender: TObject);
    procedure cmbNewbornBDOCTORSelect(Sender: TObject);
    procedure cmbNewbornASPHYXIASelect(Sender: TObject);
    procedure cmbNewbornVITKSelect(Sender: TObject);
    procedure cmbNewbornTSHSelect(Sender: TObject);
    procedure cmbEpiVACCINETYPESelect(Sender: TObject);
    procedure cmbPostnatalPPPLACESelect(Sender: TObject);
    procedure dsGetReport43PrenatalListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43PostnatalListDataChange(Sender: TObject;
      Field: TField);
  private
    FUserSession: TUniMainModule;
    FDM: TDS43FileDM ;
  public
    procedure initial(intArr : array of Integer);
    function inarr(n:integer;arr:array of Integer):boolean;
  end;

type
  TIntArray = array of Integer;
var
  pagesIndex : array of TIntArray ;
implementation

uses
  uniGUIApplication;

{$R *.dfm}


procedure TfrmRp43OPD02Grid.btnAddNewANCClick(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43Anc.Active then
  begin
    FDM.getAnc(0);
    FDM.cdsGetReport43Anc.Open;
    cmbAncANCNO.Items.Clear;
    cmbAncANCNO.ItemIndex  :=fdm.loadCmbItems(cmbAncANCNO.Items,'ANC','ANCNO','43FILE_CODE','NAME1','',true);
  end;


  if not (FDM.cdsGetReport43Anc.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Anc.Append;
    FDM.cdsGetReport43AncPID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD02Grid.btnAddNewEPIClick(Sender: TObject);
begin
 inherited;
  if not FDM.cdsGetReport43Epi.Active then
  begin
    FDM.getEpi(0);
    FDM.cdsGetReport43Epi.Open;
  end;


  if not (FDM.cdsGetReport43Epi.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Epi.Append;
    FDM.cdsGetReport43EpiPID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD02Grid.btnAddNewLaborClick(Sender: TObject);
begin
  inherited;
 if not FDM.cdsGetReport43LabOr.Active then
  begin
    FDM.getLabOr(0);
    FDM.cdsGetReport43LabOr.Open;

    cmbLaborBPLACE.Items.clear;
    cmbLaborBTYPE.items.clear;
    cmbLaborBDOCTOR.items.clear;

    cmbLaborBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1','',true);
    cmbLaborBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1', '',true);
    cmbLaborBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbLaborBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1', '',true);

  end;


  if not (FDM.cdsGetReport43LabOr.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43LabOr.Append;
    FDM.cdsGetReport43LabOrPID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD02Grid.btnAddNewNEWBORNClick(Sender: TObject);
begin
  inherited;
 if not FDM.cdsGetReport43Newborn.Active then
  begin
    FDM.getNewborn(0);
    FDM.cdsGetReport43Newborn.Open;
  end;


  if not (FDM.cdsGetReport43Newborn.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Newborn.Append;
    FDM.cdsGetReport43NewbornPID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD02Grid.btnAddNewPOSTNATALClick(Sender: TObject);
begin
  inherited;
 if not FDM.cdsGetReport43Postnatal.Active then
  begin
    FDM.getPostnatal(0);
    FDM.cdsGetReport43Postnatal.Open;
  end;


  if not (FDM.cdsGetReport43Postnatal.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Postnatal.Append;
    FDM.cdsGetReport43PostnatalPID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD02Grid.btnAddNewPrenatalClick(Sender: TObject);
begin
 inherited;
  if not FDM.cdsGetReport43Prenatal.Active then
  begin
    FDM.getPrenatal(0);
    FDM.cdsGetReport43Prenatal.Open;
  end;


  if not (FDM.cdsGetReport43Prenatal.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Prenatal.Append;
    FDM.cdsGetReport43PrenatalPID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD02Grid.btnConfirmClick(Sender: TObject);
var yyyy,dd,mm:Word;
    BIRTH,MOVIN,DDISCHARGE,D_UPDATE,EXPORT_DATE:TDate;
begin

if pgAll43File.Pages[0].TabVisible then
   if fdm.cdsGetReport43Epi.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update epi...');
     //FDM.WriteLog('epi:'+TString(cmbEpiVACCINETYPE.Items.Objects[cmbEpiVACCINETYPE.ItemIndex]).Str);

     fdm.cdsGetReport43Epi.post;
     fdm.InsUpdEpi(
          fdm.cdsGetReport43Epi.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Epi.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Epi.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Epi.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43Epi.FieldByName('DATE_SERV').AsFloat,
          TString(cmbEpiVACCINETYPE.Items.Objects[cmbEpiVACCINETYPE.ItemIndex]).Str,
          TString(cmbEpiVACCINEPLACE.Items.Objects[cmbEpiVACCINEPLACE.ItemIndex]).Str,
          fdm.cdsGetReport43Epi.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43Epi.FieldByName('D_UPDATE').AsFloat
     );
 //   fdm.cdsGetReport43EpiList.close;
//    fdm.cdsGetReport43EpiList.open;

   end;

    if pgAll43File.Pages[1].TabVisible then
   if fdm.cdsGetReport43Prenatal.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update prenatal...');
     fdm.cdsGetReport43Prenatal.post;
     fdm.InsUpdPrenatal(
          fdm.cdsGetReport43Prenatal.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Prenatal.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Prenatal.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Prenatal.FieldByName('GRAVIDA').AsString,
          fdm.cdsGetReport43Prenatal.FieldByName('LMP').AsFloat,
          fdm.cdsGetReport43Prenatal.FieldByName('EDC').AsFloat,
          TString(cmbPrenatalVDRL_RESULT.Items.Objects[cmbPrenatalVDRL_RESULT.ItemIndex]).Str,
          TString(cmbPrenatalHB_RESULT.Items.Objects[cmbPrenatalHB_RESULT.ItemIndex]).Str,
          TString(cmbPrenatalHIV_RESULT.Items.Objects[cmbPrenatalHIV_RESULT.ItemIndex]).Str,
          fdm.cdsGetReport43Prenatal.FieldByName('DATE_HCT').AsDateTime,
          fdm.cdsGetReport43Prenatal.FieldByName('HCT_RESULT').AsInteger,
          TString(cmbPrenatalTHALASSEMIA.Items.Objects[cmbPrenatalTHALASSEMIA.ItemIndex]).Str,
          fdm.cdsGetReport43Prenatal.FieldByName('D_UPDATE').AsFloat
     );
 //    fdm.cdsGetReport43PrenatalList.close;
 //    fdm.cdsGetReport43PrenatalList.open;
   end;

    if pgAll43File.Pages[2].TabVisible then
   if fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] then
   begin
     FDM.WriteLog('update anc...');
     fdm.cdsGetReport43Anc.post;
     fdm.InsUpdAnc(
          fdm.cdsGetReport43Anc.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Anc.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Anc.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Anc.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43Anc.FieldByName('DATE_SERV').AsFloat,
          fdm.cdsGetReport43Anc.FieldByName('GRAVIDA').AsString,
          TString(cmbAncANCNO.Items.Objects[cmbAncANCNO.ItemIndex]).Str,
          //fdm.cdsGetReport43Anc.FieldByName('ANCNO').AsString,
          fdm.cdsGetReport43Anc.FieldByName('GA').AsString,
          TString(cmbAncANCRESULT.Items.Objects[cmbAncANCRESULT.ItemIndex]).Str,
          TString(cmbAncANCPLACE.Items.Objects[cmbAncANCPLACE.ItemIndex]).Str,
          fdm.cdsGetReport43Anc.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43Anc.FieldByName('D_UPDATE').AsFloat
     );
  //   fdm.cdsGetReport43AncList.Close;
 //    fdm.cdsGetReport43AncList.Open;
   end;

   if pgAll43File.Pages[4].TabVisible then
   if fdm.cdsGetReport43Postnatal.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update postnatal...');
     fdm.cdsGetReport43Postnatal.post;
     fdm.InsUpdPostnatal(
          fdm.cdsGetReport43Postnatal.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Postnatal.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Postnatal.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Postnatal.FieldByName('SEQ').AsString,
          fdm.cdsGetReport43Postnatal.FieldByName('GRAVIDA').AsString,
          fdm.cdsGetReport43Postnatal.FieldByName('BDATE').AsFloat,
          fdm.cdsGetReport43Postnatal.FieldByName('PPCARE').AsFloat,
      //    fdm.cdsGetReport43Postnatal.FieldByName('PPPLACE').AsString,
          TString(cmbPostnatalPPPLACE.Items.Objects[cmbPostnatalPPPLACE.ItemIndex]).Str,
          TString(cmbPostnatalPPRESULT.Items.Objects[cmbPostnatalPPRESULT.ItemIndex]).Str,
          fdm.cdsGetReport43Postnatal.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43Postnatal.FieldByName('D_UPDATE').AsFloat
     );
   //    fdm.cdsGetReport43PostnatalList.close;
   //    fdm.cdsGetReport43PostnatalList.open;
   end;

    if pgAll43File.Pages[3].TabVisible then
   if fdm.cdsGetReport43LabOr.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update lobor...');
     fdm.cdsGetReport43LabOr.post;
     fdm.InsUpdLabOr(
          fdm.cdsGetReport43LabOr.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43LabOr.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43LabOr.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43LabOr.FieldByName('GRAVIDA').AsString,
          fdm.cdsGetReport43LabOr.FieldByName('LMP').AsFloat,
          fdm.cdsGetReport43LabOr.FieldByName('EDC').AsFloat,
          fdm.cdsGetReport43LabOr.FieldByName('BDATE').AsFloat,
          TString(cmbLaborBRESULT.Items.Objects[cmbLaborBRESULT.ItemIndex]).Str,
          TString(cmbLaborBPLACE.Items.Objects[cmbLaborBPLACE.ItemIndex]).Str,
          //fdm.cdsGetReport43LabOr.FieldByName('BPLACE').AsString,
          fdm.cdsGetReport43LabOr.FieldByName('BHOSP').AsString,
          TString(cmbLaborBTYPE.Items.Objects[cmbLaborBTYPE.ItemIndex]).Str,
          TString(cmbLaborBDOCTOR.Items.Objects[cmbLaborBDOCTOR.ItemIndex]).Str,
          //fdm.cdsGetReport43LabOr.FieldByName('BTYPE').AsString,
          //fdm.cdsGetReport43LabOr.FieldByName('BDOCTOR').AsString,
          fdm.cdsGetReport43LabOr.FieldByName('LBORN').AsInteger,
          fdm.cdsGetReport43LabOr.FieldByName('SBORN').AsInteger,
          fdm.cdsGetReport43LabOr.FieldByName('D_UPDATE').AsFloat
     );
   //    fdm.cdsGetReport43LabOrList.close;
   //    fdm.cdsGetReport43LabOrList.open;
   end;

 if pgAll43File.Pages[5].TabVisible then
   if fdm.cdsGetReport43Newborn.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update newborn...');
     fdm.cdsGetReport43Newborn.Post;
     fdm.InsUpdNewborn(
        fdm.cdsGetReport43Newborn.FieldByName('REPORTID').AsInteger ,
        fdm.cdsGetReport43Newborn.FieldByName('HOSPCODE').AsString ,
        fdm.cdsGetReport43Newborn.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43Newborn.FieldByName('MPID').AsString ,
        fdm.cdsGetReport43Newborn.FieldByName('GRAVIDA').AsString ,
        fdm.cdsGetReport43Newborn.FieldByName('GA').AsString ,
        fdm.cdsGetReport43Newborn.FieldByName('BDATE').AsFloat,
        fdm.cdsGetReport43Newborn.FieldByName('BTIME').AsFloat,
        TString(cmbNewbornBPLACE.Items.Objects[cmbNewbornBPLACE.ItemIndex]).Str,
        TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBHOSP.ItemIndex]).Str,
        TString(cmbNewbornBIRTHNO.Items.Objects[cmbNewbornBIRTHNO.ItemIndex]).Str,
        TString(cmbNewbornBTYPE.Items.Objects[cmbNewbornBTYPE.ItemIndex]).Str,
        TString(cmbNewbornBDOCTOR.Items.Objects[cmbNewbornBDOCTOR.ItemIndex]).Str,
        fdm.cdsGetReport43Newborn.FieldByName('BWEIGHT').AsInteger ,
        TString(cmbNewbornASPHYXIA.Items.Objects[cmbNewbornASPHYXIA.ItemIndex]).Str,
        TString(cmbNewbornVITK.Items.Objects[cmbNewbornVITK.ItemIndex]).Str,
        TString(cmbNewbornTSH.Items.Objects[cmbNewbornTSH.ItemIndex]).Str,
        fdm.cdsGetReport43Newborn.FieldByName('TSHRESULT').AsInteger,
        fdm.cdsGetReport43Newborn.FieldByName('D_UPDATE').AsFloat
     );
    //   fdm.cdsGetReport43NewbornList.close;
    //   fdm.cdsGetReport43NewbornList.open;
   end;


end;

procedure TfrmRp43OPD02Grid.btnRefreshClick(Sender: TObject);
begin
if trim(edSearchCID.Text)='' then exit;
 initial([22,24,25,26,27,28]);
end;

procedure TfrmRp43OPD02Grid.cmbAncANCNOSelect(Sender: TObject);
begin
  inherited;
  if fdm.cdsGetReport43Anc.Active then
  begin
    if not (fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Anc.edit;
    fdm.cdsGetReport43AncANCNO.AsString
      :=Before('-',TString(cmbAncANCNO.Items.Objects[cmbAncANCNO.ItemIndex]).Str);
  end;
end;

procedure TfrmRp43OPD02Grid.cmbAncANCPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Anc.edit;
  fdm.cdsGetReport43AncANCPLACE.AsString:=TString(cmbAncANCPLACE.Items.Objects[cmbAncANCPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbAncANCRESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Anc.edit;
  fdm.cdsGetReport43AncANCRESULT.AsString:=TString(cmbAncANCRESULT.Items.Objects[cmbAncANCRESULT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbEpiVACCINEPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Epi.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Epi.edit;
  fdm.cdsGetReport43EpiVACCINEPLACE.AsString:=TString(cmbEpiVACCINEPLACE.Items.Objects[cmbEpiVACCINEPLACE.ItemIndex]).Str
end;

procedure TfrmRp43OPD02Grid.cmbEpiVACCINETYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Epi.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Epi.edit;
  fdm.cdsGetReport43EpiVACCINETYPE.AsString:=TString(cmbEpiVACCINETYPE.Items.Objects[cmbEpiVACCINETYPE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbLaborBDOCTORSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBDOCTOR.AsString
    :=Before('-',TString(cmbLaborBDOCTOR.Items.Objects[cmbLaborBDOCTOR.ItemIndex]).Str);

end;

procedure TfrmRp43OPD02Grid.cmbLaborBPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBPLACE.AsString
    :=Before('-',TString(cmbLaborBPLACE.Items.Objects[cmbLaborBPLACE.ItemIndex]).Str);

end;

procedure TfrmRp43OPD02Grid.cmbLaborBRESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBRESULT.AsString:=Before('-',TString(cmbLaborBRESULT.Items.Objects[cmbLaborBRESULT.ItemIndex]).Str);

end;

procedure TfrmRp43OPD02Grid.cmbLaborBTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBTYPE.AsString
    :=Before('-',TString(cmbLaborBTYPE.Items.Objects[cmbLaborBTYPE.ItemIndex]).Str);

end;

procedure TfrmRp43OPD02Grid.cmbNewbornASPHYXIASelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornASPHYXIA.AsString:=TString(cmbNewbornASPHYXIA.Items.Objects[cmbNewbornASPHYXIA.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbNewbornBDOCTORSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBDOCTOR.AsString:=TString(cmbNewbornBDOCTOR.Items.Objects[cmbNewbornBDOCTOR.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbNewbornBHOSPSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBHOSP.AsString:=TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbNewbornBIRTHNOSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBIRTHNO.AsString:=TString(cmbNewbornBIRTHNO.Items.Objects[cmbNewbornBIRTHNO.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbNewbornBPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBPLACE.AsString:=TString(cmbNewbornBPLACE.Items.Objects[cmbNewbornBPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbNewbornBTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBTYPE.AsString:=TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbNewbornTSHSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornTSH.AsString:=TString(cmbNewbornTSH.Items.Objects[cmbNewbornTSH.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbNewbornVITKSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornVITK.AsString:=TString(cmbNewbornVITK.Items.Objects[cmbNewbornVITK.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbPostnatalPPPLACESelect(Sender: TObject);
begin
  inherited;
 if not (fdm.cdsGetReport43Postnatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Postnatal.edit;
  fdm.cdsGetReport43PostnatalPPPLACE.AsString:=TString(cmbPostnatalPPPLACE.Items.Objects[cmbPostnatalPPPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD02Grid.cmbPostnatalPPRESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Postnatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Postnatal.edit;
  fdm.cdsGetReport43PostnatalPPRESULT.AsString:=TString(cmbPostnatalPPRESULT.Items.Objects[cmbPostnatalPPRESULT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbPrenatalHB_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalHB_RESULT.AsString:=TString(cmbPrenatalHB_RESULT.Items.Objects[cmbPrenatalHB_RESULT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbPrenatalHIV_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalHIV_RESULT.AsString:=TString(cmbPrenatalHIV_RESULT.Items.Objects[cmbPrenatalHIV_RESULT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbPrenatalTHALASSEMIASelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalTHALASSEMIA.AsString:=TString(cmbPrenatalTHALASSEMIA.Items.Objects[cmbPrenatalTHALASSEMIA.ItemIndex]).Str;

end;

procedure TfrmRp43OPD02Grid.cmbPrenatalVDRL_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalVDRL_RESULT.AsString:=TString(cmbPrenatalVDRL_RESULT.Items.Objects[cmbPrenatalVDRL_RESULT.ItemIndex]).Str;
end;

procedure TfrmRp43OPD02Grid.dsGetReport43PostnatalListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if FDM.cdsGetReport43PostnatalList.RecordCount>0 then
  begin
   cmbPostnatalPPRESULT.ItemIndex:=fdm.loadCmbItems(cmbPostnatalPPRESULT.Items,'POSTNATAL','PPRESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PostnatalPPRESULT.AsString,true);
   cmbPostnatalPPPLACE.ItemIndex := fdm.loadHospNameList2CmbItems(cmbPostnatalPPPLACE.Items,fdm.cdsGetReport43PostnatalList.FieldByName('PPPLACE').AsString,true);

  end;
end;

procedure TfrmRp43OPD02Grid.dsGetReport43PrenatalListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if FDM.cdsGetReport43PrenatalList.RecordCount>0 then
  begin
    cmbPrenatalVDRL_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalVDRL_RESULT.Items,'PRENATAL','VDRL_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListVDRL_RESULT.AsString,true);
    cmbPrenatalHB_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHB_RESULT.Items,'PRENATAL','HB_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHB_RESULT.AsString,true);
    cmbPrenatalHIV_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHIV_RESULT.Items,'PRENATAL','HIV_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHIV_RESULT.AsString,true);
    cmbPrenatalTHALASSEMIA.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalTHALASSEMIA.Items,'PRENATAL','THALASSEMIA','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListTHALASSEMIA.AsString,true);
  end;
end;

function TfrmRp43OPD02Grid.inarr(n: integer; arr: array of Integer): boolean;
 var i:integer;
      rep:boolean;
begin
    rep:=false;
      for i := 0 to High(arr) do
        if rep=false then
          rep:=arr[i]=n;

        Result:=rep;
end;

procedure TfrmRp43OPD02Grid.initial(intArr: array of Integer);
var defaltPersonArea,k,icount,defaultNum:integer;
    defCode:string;
    yrrStr,runStr,HN,_HN:string;
begin
  icount:=1;
  if high(intArr)<=0 then exit;

  for k:=0 to pgAll43File.PageCount-1 do
  begin
    if inarr(pgAll43File.Pages[k].Tag,intArr) then
    begin
      pgAll43File.Pages[k].TabVisible:=true;
      if icount=1 then  pgAll43File.ActivePage:=pgAll43File.Pages[k];

      inc(icount);
    end
      else pgAll43File.Pages[k].TabVisible:=false;

      //pgAll43File.Pages[1].TabVisible:=false;
  end;
  HN := trim(edSearchCID.Text);

  if trim(HN)='' then Exit;

  if length(HN)<8 then
  begin
   yrrStr:=Copy(HN,1,2);
   runStr:=Copy(HN,3,length(HN)-2);
   _HN:=yrrStr+FormatCurr('000000',strtoint(runStr));
  end else
    _HN:=HN; //edSearchCID

    FDM.cdsGetReport43Person.close;
    FDM.getPerson(_HN);
    FDM.cdsGetReport43Person.open;

    if fdm.cdsGetReport43Person.RecordCount<=0 then
    begin
      ShowMessage('ไม่พบ HN ที่ต้องการคนหา!!!');
      exit;
    end;

    if trim(fdm.cdsGetReport43Person.FieldByName('CID').AsString)='' then
    begin
      ShowMessage('รหัสประจำตัวประชาชนเป้นค่าว่าง ไม่สามารถ ดำเนินการ ได้!!!');
      exit;
    end;

  cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonSEX.AsString,true);
  if inarr(0,intarr) or inarr(1,intarr) then
  begin
    FDM.WriteLog('### Initial 0');

    cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonSEX.AsString,true);

    defaltPersonArea:=4;
    if FDM.checkPersonArea1(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=1;
    if FDM.checkPersonArea2(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=2;
    if FDM.checkPersonArea3(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=3;
    if FDM.checkPersonArea4(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=4;
    if FDM.checkPersonArea5(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=5;


    FDM.cdsGetReport43Person.edit;
    FDM.cdsGetReport43PersonTYPEAREA.AsInteger:=defaltPersonArea;
    FDM.cdsGetReport43Person.Post;



    fdm.cdsGetReport43AddressType1.close;
    fdm.getAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43AddressType1.Open;
  end;
  // fixed error
  if fdm.cdsGetReport43Person.RecordCount<=0 then exit;


  if inarr(22,intarr) then
  begin
    FDM.WriteLog('### Initial 22');
    fdm.cdsGetReport43EpiList.close;
    fdm.getEpiList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43EpiList.open;
    if fdm.cdsGetReport43EpiList.RecordCount>0 then
    begin
      cmbEpiVACCINETYPE.ItemIndex:=fdm.loadCmbItems(cmbEpiVACCINETYPE.Items,'EPI','VACCINETYPE','43FILE_CODE','NAME1','',true);
      cmbEpiVACCINEPLACE.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbEpiVACCINEPLACE.Items,fdm.cdsGetReport43EpiVACCINEPLACE.AsString,true)
    end;
  end;

  if inarr(24,intarr) then
  begin
    FDM.WriteLog('### Initial 24');
    fdm.cdsGetReport43PrenatalList.close;
    fdm.getPrenatalList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43PrenatalList.open;
    if fdm.cdsGetReport43PrenatalList.RecordCount>0 then
    begin
      cmbPrenatalVDRL_RESULT.ItemIndex:=fdm.loadCmbItems(cmbPrenatalVDRL_RESULT.Items,'PRENATAL','VDRL_RESULT','43FILE_CODE','NAME1','',true);
      cmbPrenatalHB_RESULT.ItemIndex:=fdm.loadCmbItems(cmbPrenatalHB_RESULT.Items,'PRENATAL','HB_RESULT','43FILE_CODE','NAME1','',true);
      cmbPrenatalHIV_RESULT.ItemIndex:=fdm.loadCmbItems(cmbPrenatalHIV_RESULT.Items,'PRENATAL','HIV_RESULT','43FILE_CODE','NAME1','',true);
      cmbPrenatalTHALASSEMIA.ItemIndex:=fdm.loadCmbItems(cmbPrenatalTHALASSEMIA.Items,'PRENATAL','THALASSEMIA','43FILE_CODE','NAME1','',true);
    end;

  end;

     if inarr(25,intarr) then
  begin
    FDM.WriteLog('### Initial 25');
    fdm.cdsGetReport43AncList.close;
    fdm.getAncList(fdm.cdsGetReport43PrenatalListPID.AsInteger,fdm.cdsGetReport43PrenatalListGRAVIDA.AsString);
    fdm.cdsGetReport43AncList.open;

    if fdm.cdsGetReport43Anc.Active then
      if fdm.cdsGetReport43Anc.RecordCount>0 then
      begin
        cmbAncANCNO.ItemIndex  :=fdm.loadCmbItems(cmbAncANCNO.Items,'ANC','ANCNO','43FILE_CODE','NAME1', fdm.cdsGetReport43AncANCNO.AsString,true);
        cmbAncANCRESULT.ItemIndex  :=fdm.loadCmbItems(cmbAncANCRESULT.Items,'ANC','ANCRESULT','43FILE_CODE','NAME1', fdm.cdsGetReport43AncANCRESULT.AsString,true);
        cmbAncANCPLACE.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbAncANCPLACE.Items,fdm.cdsGetReport43AncANCPLACE.AsString,true);
      end;
  end;

  if inarr(26,intarr) then
  begin
    FDM.WriteLog('### Initial 26');
    fdm.cdsGetReport43LabOrList.close;
    fdm.getLabOrList(fdm.cdsGetReport43PrenatalListPID.AsInteger,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
    fdm.cdsGetReport43LabOrList.open;

    if fdm.cdsGetReport43LabOrList.RecordCount>0 then
    begin
      cmbLaborBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BPLACE').AsString,true);
      cmbLaborBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BTYPE').AsString,true);
      cmbLaborBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbLaborBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BDOCTOR').AsString,true);
      cmbLaborBRESULT.ItemIndex :=fdm.loadIcd10List2CmbItems(cmbLaborBRESULT.Items,'GROUP',fdm.cdsGetReport43LabOrBRESULT.AsString,true);

    end;
  end;

  if inarr(27,intarr) then
  begin
    FDM.WriteLog('### Initial 27');
    fdm.cdsGetReport43PostnatalList.close;
    fdm.getPostnatalList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43PostnatalList.open;
    if fdm.cdsGetReport43PostnatalList.RecordCount>0 then
    begin
      cmbPostnatalPPRESULT.ItemIndex  :=fdm.loadCmbItems(cmbPostnatalPPRESULT.Items,'POSTNATAL','PPRESULT','43FILE_CODE','NAME1', fdm.cdsGetReport43PostnatalList.FieldByName('PPRESULT').AsString,true);
      cmbPostnatalPPPLACE.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbPostnatalPPPLACE.Items,fdm.cdsGetReport43PostnatalPPCARE.AsString,true);
    end;
  end;

  if inarr(28,intarr) then
  begin
    FDM.WriteLog('### Initial 28');
    fdm.cdsGetReport43NewbornList.close;
    fdm.getNewbornList(fdm.cdsGetReport43PrenatalListPID.AsString,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
    fdm.cdsGetReport43NewbornList.open;
   if fdm.cdsGetReport43NewbornList.RecordCount>0 then
   begin
     cmbNewbornBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbNewbornBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43NewbornList.FieldByName('BPLACE').AsString,true);
     cmbNewbornBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbNewbornBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43NewbornList.FieldByName('BTYPE').AsString,true);
     cmbNewbornBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbNewbornBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1', fdm.cdsGetReport43NewbornList.FieldByName('BDOCTOR').AsString,true);
     cmbNewbornBHOSP.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbNewbornBHOSP.Items,fdm.cdsGetReport43NewbornBHOSP.AsString,true);
     cmbNewbornASPHYXIA.ItemIndex  :=fdm.loadCmbItems(cmbNewbornASPHYXIA.Items,'NEWBORN','ASPHYXIA','43FILE_CODE','NAME1', fdm.cdsGetReport43NewbornASPHYXIA.AsString,true);
     cmbNewbornBIRTHNO.ItemIndex  :=fdm.loadCmbItems(cmbNewbornBIRTHNO.Items,'NEWBORN','BIRTHNO','43FILE_CODE','NAME1', fdm.cdsGetReport43NewbornListBIRTHNO.AsString,true);
     cmbNewbornTSH.ItemIndex  :=fdm.loadCmbItems(cmbNewbornTSH.Items,'NEWBORN','TSH','43FILE_CODE','NAME1', fdm.cdsGetReport43NewbornTSH.AsString,true);
     cmbNewbornVITK.ItemIndex  :=fdm.loadCmbItems(cmbNewbornVITK.Items,'NEWBORN','VITK','43FILE_CODE','NAME1', fdm.cdsGetReport43NewbornVITK.AsString,true);
    end;
  end;



end;

procedure TfrmRp43OPD02Grid.UniFormCreate(Sender: TObject);
var k:integer;
begin

   FUserSession :=  UniMainModule();
   FDM:= FUserSession.DS43FileDM;



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

  //order:='';

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


procedure TfrmRp43OPD02Grid.UniFormShow(Sender: TObject);
begin
  inherited;
  RsetComboBox;
end;

end.
