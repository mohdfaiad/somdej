unit Rp43OPD01Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,DS43FileIntfDM,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox ,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg,MainDataFormClass,
  uniPageControl, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdTime, IdUnixTime, uniCheckBox, uniTimer, uniBitBtn,
  uniDBDateTimePicker ;

type
  TfrmRp43OPD01Grid = class(TMainDataForm) //TMainGridForm
    dsgrid: TDataSource;
    BtnAddEdtSubCode: TUniButton;
    pgAll43File: TUniPageControl;
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
    dsReport43Person: TDataSource;
    btnRefresh: TUniButton;
    dsReport43Service: TDataSource;
    edSearchCID: TUniEdit;
    IdUnixTime1: TIdUnixTime;
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
    UniDBEdit43: TUniComboBox;
    UniLabel70: TUniLabel;
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
    UniDBEdit75: TUniDBEdit;
    UniDBEdit77: TUniDBEdit;
    UniLabel123: TUniLabel;
    UniLabel124: TUniLabel;
    UniDBEdit79: TUniDBEdit;
    UniLabel125: TUniLabel;
    UniDBEdit80: TUniDBEdit;
    UniLabel126: TUniLabel;
    UniDBEdit82: TUniDBEdit;
    UniLabel128: TUniLabel;
    UniDBEdit87: TUniDBEdit;
    UniLabel133: TUniLabel;
    UniLabel151: TUniLabel;
    UniDBEdit93: TUniDBEdit;
    UniDBEdit95: TUniDBEdit;
    UniDBGrid10: TUniDBGrid;
    UniLabel153: TUniLabel;
    UniDBEdit97: TUniDBEdit;
    UniLabel154: TUniLabel;
    UniDBEdit98: TUniDBEdit;
    UniLabel155: TUniLabel;
    UniDBEdit99: TUniDBEdit;
    UniLabel156: TUniLabel;
    UniLabel157: TUniLabel;
    UniDBEdit100: TUniDBEdit;
    UniDBGrid11: TUniDBGrid;
    UniLabel158: TUniLabel;
    UniDBEdit94: TUniDBEdit;
    UniDBEdit102: TUniDBEdit;
    UniLabel160: TUniLabel;
    UniDBEdit103: TUniDBEdit;
    UniLabel161: TUniLabel;
    UniDBEdit104: TUniDBEdit;
    UniLabel162: TUniLabel;
    UniDBEdit105: TUniDBEdit;
    UniLabel163: TUniLabel;
    UniLabel164: TUniLabel;
    UniDBEdit106: TUniDBEdit;
    UniDBEdit107: TUniDBEdit;
    UniLabel165: TUniLabel;
    UniLabel166: TUniLabel;
    UniDBEdit108: TUniDBEdit;
    UniLabel167: TUniLabel;
    UniDBEdit109: TUniDBEdit;
    UniDBEdit110: TUniDBEdit;
    UniLabel168: TUniLabel;
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
    UniDBGrid14: TUniDBGrid;
    dsGetReport43Postnatal: TDataSource;
    dsGetReport43PostnatalList: TDataSource;
    dsGetReport43LabOr: TDataSource;
    dsGetReport43LabOrList: TDataSource;
    UniDBGrid15: TUniDBGrid;
    UniDBGrid16: TUniDBGrid;
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
    UniTabSheet18: TUniTabSheet;
    UniLabel184: TUniLabel;
    UniLabel182: TUniLabel;
    UniLabel185: TUniLabel;
    UniLabel186: TUniLabel;
    UniLabel187: TUniLabel;
    UniLabel188: TUniLabel;
    UniLabel189: TUniLabel;
    UniLabel190: TUniLabel;
    UniLabel191: TUniLabel;
    UniLabel192: TUniLabel;
    UniLabel193: TUniLabel;
    UniLabel194: TUniLabel;
    UniLabel195: TUniLabel;
    UniLabel196: TUniLabel;
    UniLabel197: TUniLabel;
    UniLabel198: TUniLabel;
    UniLabel199: TUniLabel;
    UniLabel200: TUniLabel;
    UniLabel201: TUniLabel;
    UniLabel202: TUniLabel;
    UniLabel203: TUniLabel;
    UniDBEdit66: TUniDBEdit;
    UniDBEdit112: TUniDBEdit;
    UniDBEdit113: TUniDBEdit;
    cmbReligion: TUniComboBox;
    cmbNation: TUniComboBox;
    cmbRace: TUniComboBox;
    cmbAbogroup: TUniComboBox;
    cmbRhGroup: TUniComboBox;
    cmbEducation: TUniComboBox;
    cmbOccupationOld: TUniComboBox;
    cmbOccupationNew: TUniComboBox;
    cmbVstatus: TUniComboBox;
    cmbMSTATUS: TUniComboBox;
    cmbPersonTypeArea: TUniComboBox;
    cmbFStatus: TUniComboBox;
    cmbDISCHARGE: TUniComboBox;
    UniDBEdit115: TUniDBEdit;
    UniDBEdit116: TUniDBEdit;
    UniDBEdit117: TUniDBEdit;
    UniTabSheet19: TUniTabSheet;
    UniTabSheet20: TUniTabSheet;
    UniLabel38: TUniLabel;
    UniLabel39: TUniLabel;
    UniLabel40: TUniLabel;
    UniLabel41: TUniLabel;
    UniLabel42: TUniLabel;
    UniLabel43: TUniLabel;
    UniDBEdit121: TUniDBEdit;
    UniDBEdit122: TUniDBEdit;
    UniDBEdit123: TUniDBEdit;
    UniDBEdit124: TUniDBEdit;
    UniLabel44: TUniLabel;
    UniLabel52: TUniLabel;
    UniLabel62: TUniLabel;
    UniLabel120: TUniLabel;
    UniLabel159: TUniLabel;
    UniLabel66: TUniLabel;
    UniLabel68: TUniLabel;
    dsGetReport43Death: TDataSource;
    dsGetReport43DeathList: TDataSource;
    UniTabSheet21: TUniTabSheet;
    UniDBGrid18: TUniDBGrid;
    UniLabel71: TUniLabel;
    UniDBEdit128: TUniDBEdit;
    UniLabel83: TUniLabel;
    UniLabel87: TUniLabel;
    UniLabel91: TUniLabel;
    UniDBEdit129: TUniDBEdit;
    UniLabel99: TUniLabel;
    UniLabel101: TUniLabel;
    UniLabel103: TUniLabel;
    UniDBEdit130: TUniDBEdit;
    dsGetReport43Card: TDataSource;
    dsGetReport43CardList: TDataSource;
    UniTabSheet22: TUniTabSheet;
    UniDBGrid19: TUniDBGrid;
    UniLabel105: TUniLabel;
    UniDBEdit131: TUniDBEdit;
    UniDBEdit132: TUniDBEdit;
    UniLabel107: TUniLabel;
    UniLabel110: TUniLabel;
    UniDBEdit133: TUniDBEdit;
    UniLabel129: TUniLabel;
    UniLabel140: TUniLabel;
    UniLabel150: TUniLabel;
    UniLabel152: TUniLabel;
    UniLabel175: TUniLabel;
    UniDBEdit134: TUniDBEdit;
    dsGetReport43Drugallergy: TDataSource;
    dsGetReport43DrugallergyList: TDataSource;
    UniTabSheet23: TUniTabSheet;
    UniTabSheet24: TUniTabSheet;
    dsGetReport43Accident: TDataSource;
    dsGetReport43AccidentList: TDataSource;
    UniTabSheet25: TUniTabSheet;
    UniDBGrid21: TUniDBGrid;
    dsGetReport43ChargeOpdList: TDataSource;
    dsGetReport43ChargeOpd: TDataSource;
    UniDBEdit135: TUniDBEdit;
    UniLabel183: TUniLabel;
    UniTabSheet26: TUniTabSheet;
    UniLabel211: TUniLabel;
    UniDBEdit137: TUniDBEdit;
    UniDBGrid22: TUniDBGrid;
    dsGetReport43Admission: TDataSource;
    dsGetReport43AdmissionList: TDataSource;
    UniTabSheet27: TUniTabSheet;
    UniLabel217: TUniLabel;
    UniDBEdit138: TUniDBEdit;
    UniDBGrid23: TUniDBGrid;
    dsGetReport43DiagnosisIpd: TDataSource;
    dsGetReport43DiagnosisIpdList: TDataSource;
    UniTabSheet28: TUniTabSheet;
    dsGetReport43ProcedureIpd: TDataSource;
    dsGetReport43ProcedureIpdList: TDataSource;
    UniLabel222: TUniLabel;
    UniDBEdit139: TUniDBEdit;
    UniDBGrid24: TUniDBGrid;
    UniTabSheet29: TUniTabSheet;
    UniLabel223: TUniLabel;
    UniDBEdit140: TUniDBEdit;
    UniDBGrid25: TUniDBGrid;
    dsGetReport43DrugIpd: TDataSource;
    dsGetReport43DrugList: TDataSource;
    UniTabSheet30: TUniTabSheet;
    UniLabel225: TUniLabel;
    UniDBEdit141: TUniDBEdit;
    UniDBGrid26: TUniDBGrid;
    dsGetReport43ChargeIpd: TDataSource;
    dsGetReport43ChargeIpdList: TDataSource;
    UniTabSheet31: TUniTabSheet;
    UniDBEdit142: TUniDBEdit;
    UniLabel226: TUniLabel;
    UniDBGrid27: TUniDBGrid;
    dsGetReport43Surveillance: TDataSource;
    dsGetReport43SurveillanceList: TDataSource;
    UniTabSheet32: TUniTabSheet;
    UniDBGrid28: TUniDBGrid;
    dsGetReport43Newborn: TDataSource;
    dsGetReport43NewbornList: TDataSource;
    UniTabSheet33: TUniTabSheet;
    UniLabel228: TUniLabel;
    UniDBEdit144: TUniDBEdit;
    UniDBGrid29: TUniDBGrid;
    dsGetReport43NewbornCare: TDataSource;
    dsGetReport43NewbornCareList: TDataSource;
    UniTabSheet34: TUniTabSheet;
    UniLabel229: TUniLabel;
    UniDBEdit145: TUniDBEdit;
    UniDBGrid30: TUniDBGrid;
    dsGetReport43Dental: TDataSource;
    dsGetReport43DentalList: TDataSource;
    UniTabSheet35: TUniTabSheet;
    dsGetReport43Ncdscreen: TDataSource;
    dsGetReport43NcdscreenList: TDataSource;
    UniTabSheet36: TUniTabSheet;
    UniLabel231: TUniLabel;
    UniDBEdit147: TUniDBEdit;
    UniDBGrid32: TUniDBGrid;
    dsGetReport43LabFu: TDataSource;
    dsGetReport43LabFuList: TDataSource;
    cdsRaceList: TDataSource;
    cmbDeathHospdeath: TUniComboBox;
    UniLabel3: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel232: TUniLabel;
    cmbChargeOpdCLINIC: TUniComboBox;
    UniLabel233: TUniLabel;
    cmbChargeOpdINSTYPE: TUniComboBox;
    UniLabel234: TUniLabel;
    cmbChargeOpdCHARGEITEM: TUniComboBox;
    cmbCardINSTYPEOLD: TUniComboBox;
    cmbCardINSTYP: TUniComboBox;
    cmbCardMAIN: TUniComboBox;
    cmbCardSUB: TUniComboBox;
    dsGetReport43Address: TDataSource;
    dsGetReport43AddressList: TDataSource;
    UniDBGrid33: TUniDBGrid;
    cmbDeathPREGDEATH: TUniComboBox;
    cmbDeathPDEATH: TUniComboBox;
    cmbPersonSEX: TUniComboBox;
    cmbDeathCDEATH_A: TUniComboBox;
    cmbDeathCDEATH_C: TUniComboBox;
    cmbDeathODISEASE: TUniComboBox;
    cmbDeathCDEATH_B: TUniComboBox;
    cmbDeathCDEATH_D: TUniComboBox;
    cmbDeathCDEATH: TUniComboBox;
    UniDBEdit118: TUniDBEdit;
    UniDBEdit119: TUniDBEdit;
    cmbDrugAllergySYMPTOM: TUniComboBox;
    cmbDrugAllergyTYPEDX: TUniComboBox;
    cmbDrugAllergyALEVEL: TUniComboBox;
    UniDBEdit148: TUniDBEdit;
    UniDBGrid34: TUniDBGrid;
    UniLabel205: TUniLabel;
    UniLabel206: TUniLabel;
    UniLabel207: TUniLabel;
    UniLabel209: TUniLabel;
    UniLabel210: TUniLabel;
    UniLabel212: TUniLabel;
    UniLabel214: TUniLabel;
    UniDBEdit149: TUniDBEdit;
    cmbHomeLOCATYPE: TUniComboBox;
    cmbHomeHOUSETYPE: TUniComboBox;
    UniDBEdit150: TUniDBEdit;
    UniDBEdit151: TUniDBEdit;
    UniDBEdit152: TUniDBEdit;
    UniDBEdit153: TUniDBEdit;
    UniLabel215: TUniLabel;
    UniLabel216: TUniLabel;
    UniDBEdit154: TUniDBEdit;
    UniDBEdit155: TUniDBEdit;
    UniLabel218: TUniLabel;
    UniLabel219: TUniLabel;
    UniDBEdit156: TUniDBEdit;
    UniDBEdit157: TUniDBEdit;
    UniLabel220: TUniLabel;
    UniDBEdit158: TUniDBEdit;
    UniLabel221: TUniLabel;
    cmbHomeTAMBON: TUniComboBox;
    UniLabel224: TUniLabel;
    cmbHomeAMPUR: TUniComboBox;
    UniLabel249: TUniLabel;
    cmbHomeCHANGWAT: TUniComboBox;
    UniDBEdit159: TUniDBEdit;
    UniLabel250: TUniLabel;
    UniLabel251: TUniLabel;
    UniDBEdit160: TUniDBEdit;
    UniDBEdit161: TUniDBEdit;
    UniLabel252: TUniLabel;
    UniLabel253: TUniLabel;
    UniDBEdit162: TUniDBEdit;
    UniLabel254: TUniLabel;
    UniLabel255: TUniLabel;
    UniDBEdit164: TUniDBEdit;
    UniDBEdit165: TUniDBEdit;
    UniLabel256: TUniLabel;
    UniLabel257: TUniLabel;
    cmbHomeTOILET: TUniComboBox;
    UniLabel258: TUniLabel;
    cmbHomeWATER: TUniComboBox;
    UniLabel259: TUniLabel;
    cmbHomeWATERTYPE: TUniComboBox;
    UniLabel260: TUniLabel;
    cmbHomeGARBAGE: TUniComboBox;
    UniLabel261: TUniLabel;
    cmbHomeHOUSING: TUniComboBox;
    UniLabel262: TUniLabel;
    cmbHomeDURABILITY: TUniComboBox;
    UniLabel263: TUniLabel;
    cmbHomeCLEANLINESS: TUniComboBox;
    UniLabel208: TUniLabel;
    cmbHomeVENTILATION: TUniComboBox;
    UniLabel213: TUniLabel;
    cmbHomeLIGHT: TUniComboBox;
    UniLabel264: TUniLabel;
    cmbHomeWATERTM: TUniComboBox;
    UniLabel265: TUniLabel;
    cmbHomeMFOOD: TUniComboBox;
    UniLabel266: TUniLabel;
    cmbHomeBCONTROL: TUniComboBox;
    UniLabel267: TUniLabel;
    cmbHomeACONTROL: TUniComboBox;
    UniLabel268: TUniLabel;
    cmbHomeCHEMICAL: TUniComboBox;
    UniDBEdit163: TUniDBEdit;
    UniLabel269: TUniLabel;
    UniDBEdit166: TUniDBEdit;
    UniLabel270: TUniLabel;
    dsGetReport43Home: TDataSource;
    dsGetReport43HomeList: TDataSource;
    UniDBEdit167: TUniDBEdit;
    cmbDepartment: TUniComboBox;
    UniScreenMask1: TUniScreenMask;
    UniTabSheet37: TUniTabSheet;
    UniTabSheet38: TUniTabSheet;
    UniTabSheet39: TUniTabSheet;
    UniTabSheet40: TUniTabSheet;
    UniTabSheet41: TUniTabSheet;
    UniTabSheet42: TUniTabSheet;
    UniTabSheet43: TUniTabSheet;
    UniLabel271: TUniLabel;
    UniLabel272: TUniLabel;
    UniDBEdit169: TUniDBEdit;
    UniLabel273: TUniLabel;
    UniDBEdit170: TUniDBEdit;
    UniLabel274: TUniLabel;
    UniDBEdit171: TUniDBEdit;
    UniLabel275: TUniLabel;
    UniLabel276: TUniLabel;
    UniLabel277: TUniLabel;
    UniLabel278: TUniLabel;
    UniLabel279: TUniLabel;
    UniLabel280: TUniLabel;
    UniDBEdit177: TUniDBEdit;
    UniLabel281: TUniLabel;
    UniDBEdit178: TUniDBEdit;
    UniLabel282: TUniLabel;
    UniDBEdit179: TUniDBEdit;
    UniLabel283: TUniLabel;
    UniLabel284: TUniLabel;
    UniLabel285: TUniLabel;
    UniLabel286: TUniLabel;
    UniLabel287: TUniLabel;
    UniLabel288: TUniLabel;
    UniDBEdit185: TUniDBEdit;
    UniLabel289: TUniLabel;
    UniDBEdit186: TUniDBEdit;
    UniLabel290: TUniLabel;
    UniDBEdit187: TUniDBEdit;
    UniLabel291: TUniLabel;
    UniDBEdit188: TUniDBEdit;
    cmbAdmissionHOSPCODE: TUniComboBox;
    cmbAdmissionWARDADMIT: TUniComboBox;
    cmbAdmissionINSTYPE: TUniComboBox;
    cmbAdmissionTYPEIN: TUniComboBox;
    cmbAdmissionREFERINHOSP: TUniComboBox;
    cmbAdmissonCAUSEIN: TUniComboBox;
    cmbAdmissionWARDDISCH: TUniComboBox;
    cmbAdmissionDISCHSTATUS: TUniComboBox;
    cmbAdmissionDISCHTYPE: TUniComboBox;
    cmbAdmissionREFEROUTHOSP: TUniComboBox;
    cmbAdmissionCAUSEOUT: TUniComboBox;
    IdUnixTime2: TIdUnixTime;
    IdUnixTime3: TIdUnixTime;
    UniLabel7: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    cmbAddrADDRESSTYPE: TUniComboBox;
    cmbAddrProvince: TUniComboBox;
    cmbAddrAMPUR: TUniComboBox;
    cmbAddrTAMBON: TUniComboBox;
    cmbAddrHOUSETYPE: TUniComboBox;
    UniLabel248: TUniLabel;
    UniDBEdit19: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniLabel247: TUniLabel;
    UniLabel246: TUniLabel;
    UniLabel245: TUniLabel;
    UniLabel244: TUniLabel;
    UniLabel243: TUniLabel;
    UniLabel242: TUniLabel;
    UniLabel241: TUniLabel;
    UniLabel240: TUniLabel;
    UniLabel239: TUniLabel;
    UniLabel238: TUniLabel;
    UniLabel237: TUniLabel;
    UniLabel236: TUniLabel;
    UniLabel235: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniDBEdit29: TUniDBEdit;
    UniDBEdit34: TUniDBEdit;
    UniDBEdit36: TUniDBEdit;
    UniDBEdit38: TUniDBEdit;
    UniDBEdit49: TUniDBEdit;
    UniDBEdit58: TUniDBEdit;
    UniDBEdit120: TUniDBEdit;
    grpBoxAddrType1: TUniGroupBox;
    UniLabel305: TUniLabel;
    cmbAddrADDRESSTYPE1: TUniComboBox;
    UniLabel302: TUniLabel;
    UniDBEdit173: TUniDBEdit;
    UniLabel294: TUniLabel;
    UniDBEdit174: TUniDBEdit;
    UniDBEdit175: TUniDBEdit;
    UniLabel304: TUniLabel;
    UniLabel297: TUniLabel;
    UniDBEdit176: TUniDBEdit;
    UniLabel298: TUniLabel;
    UniDBEdit172: TUniDBEdit;
    UniLabel296: TUniLabel;
    UniDBEdit183: TUniDBEdit;
    UniLabel292: TUniLabel;
    cmbAddrHOUSETYPE1: TUniComboBox;
    UniLabel306: TUniLabel;
    UniDBEdit184: TUniDBEdit;
    UniLabel295: TUniLabel;
    UniDBEdit182: TUniDBEdit;
    UniLabel293: TUniLabel;
    cmbAddrTAMBON1: TUniComboBox;
    UniLabel301: TUniLabel;
    cmbAddrAMPUR1: TUniComboBox;
    UniLabel300: TUniLabel;
    cmbAddrProvince1: TUniComboBox;
    UniLabel303: TUniLabel;
    UniDBEdit168: TUniDBEdit;
    UniDBEdit181: TUniDBEdit;
    grpBoxAddrType2: TUniGroupBox;
    UniLabel307: TUniLabel;
    cmbAddrADDRESSTYPE2: TUniComboBox;
    UniLabel308: TUniLabel;
    UniDBEdit189: TUniDBEdit;
    UniLabel309: TUniLabel;
    UniDBEdit190: TUniDBEdit;
    UniDBEdit191: TUniDBEdit;
    UniLabel310: TUniLabel;
    UniLabel311: TUniLabel;
    UniDBEdit192: TUniDBEdit;
    UniLabel312: TUniLabel;
    UniDBEdit193: TUniDBEdit;
    UniLabel313: TUniLabel;
    UniDBEdit194: TUniDBEdit;
    UniLabel314: TUniLabel;
    cmbAddrHOUSETYPE2: TUniComboBox;
    UniLabel315: TUniLabel;
    UniDBEdit195: TUniDBEdit;
    UniLabel317: TUniLabel;
    UniDBEdit197: TUniDBEdit;
    UniLabel318: TUniLabel;
    cmbAddrTAMBON2: TUniComboBox;
    UniLabel319: TUniLabel;
    cmbAddrAMPUR2: TUniComboBox;
    UniLabel320: TUniLabel;
    cmbAddrProvince2: TUniComboBox;
    UniLabel321: TUniLabel;
    UniDBEdit198: TUniDBEdit;
    UniDBEdit199: TUniDBEdit;
    dsGetReport43AddressType1: TDataSource;
    dsGetReport43AddressType2: TDataSource;
    UniDBEdit6: TUniDBEdit;
    UniLabel9: TUniLabel;
    btnSync: TUniButton;
    scSync: TUniScreenMask;
    UniTimerAutoGet: TUniTimer;
    scRefreshAuto: TUniScreenMask;
    cmbLaborBPLACE: TUniComboBox;
    cmbLaborBTYPE: TUniComboBox;
    cmbLaborBDOCTOR: TUniComboBox;
    cmbAncANCNO: TUniComboBox;
    btnAddPerson: TUniBitBtn;
    UniLabel1: TUniLabel;
    UniDBEdit74: TUniDBEdit;
    UniLabel299: TUniLabel;
    UniDBEdit180: TUniDBEdit;
    UniLabel316: TUniLabel;
    UniDBEdit196: TUniDBEdit;
    UniDBEdit200: TUniDBEdit;
    UniLabel322: TUniLabel;
    UniLabel323: TUniLabel;
    UniDBEdit201: TUniDBDateTimePicker;
    UniLabel324: TUniLabel;
    UniLabel325: TUniLabel;
    UniLabel326: TUniLabel;
    UniLabel327: TUniLabel;
    UniLabel328: TUniLabel;
    UniLabel330: TUniLabel;
    UniDBEdit208: TUniDBEdit;
    UniLabel331: TUniLabel;
    UniLabel332: TUniLabel;
    UniLabel333: TUniLabel;
    UniDBEdit212: TUniDBEdit;
    UniLabel334: TUniLabel;
    UniLabel335: TUniLabel;
    UniDBEdit213: TUniDBDateTimePicker;
    UniLabel336: TUniLabel;
    UniDBEdit214: TUniDBEdit;
    UniLabel337: TUniLabel;
    UniDBEdit215: TUniDBEdit;
    UniLabel338: TUniLabel;
    UniDBEdit216: TUniDBDateTimePicker;
    UniLabel339: TUniLabel;
    UniDBEdit217: TUniDBDateTimePicker;
    UniLabel340: TUniLabel;
    CmbBCPLACE: TUniComboBox;
    UniLabel341: TUniLabel;
    CmbBCARERESULT: TUniComboBox;
    CmbFOOD_New: TUniComboBox;
    UniLabel342: TUniLabel;
    UniLabel343: TUniLabel;
    UniDBEdit221: TUniDBEdit;
    UniDBEdit222: TUniDBDateTimePicker;
    UniLabel344: TUniLabel;
    btnAddNewANC: TUniBitBtn;
    btnAddNewNEWBORN: TUniBitBtn;
    btnAddNewNEWBORNCARE: TUniBitBtn;
    btnAddNewPOSTNATAL: TUniBitBtn;
    btnAddNewPrenatal: TUniButton;
    btnAddNewLabor: TUniButton;
    cmbLaborBRESULT: TUniComboBox;
    cmbPrenatalVDRL_RESULT: TUniComboBox;
    cmbPrenatalHB_RESULT: TUniComboBox;
    cmbPrenatalHIV_RESULT: TUniComboBox;
    cmbPrenatalTHALASSEMIA: TUniComboBox;
    cmbAncANCRESULT: TUniComboBox;
    cmbAncANCPLACE: TUniComboBox;
    cmbPostnatalPPRESULT: TUniComboBox;
    cmbNewbornBPLACE: TUniComboBox;
    cmbNewbornBHOSP: TUniComboBox;
    cmbNewbornBIRTHNO: TUniComboBox;
    cmbNewbornBTYPE: TUniComboBox;
    cmbNewbornBDOCTOR: TUniComboBox;
    cmbNewbornASPHYXIA: TUniComboBox;
    cmbNewbornVITK: TUniComboBox;
    cmbNewbornTSH: TUniComboBox;
    UniLabel329: TUniLabel;
    UniDBEdit207: TUniDBEdit;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniLabel11: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel12: TUniLabel;
    CmbLocation: TUniComboBox;
    UniLabel13: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    CmbIntime: TUniComboBox;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniDBEdit18: TUniDBEdit;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniDBEdit20: TUniDBEdit;
    UniLabel25: TUniLabel;
    CmbTYPEOUT: TUniComboBox;
    UniLabel26: TUniLabel;
    UniDBEdit22: TUniDBEdit;
    UniLabel27: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    UniDBEdit24: TUniDBEdit;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniLabel30: TUniLabel;
    UniLabel31: TUniLabel;
    UniDBEdit27: TUniDBEdit;
    UniDBEdit28: TUniDBEdit;
    UniLabel32: TUniLabel;
    UniLabel33: TUniLabel;
    UniDBEdit30: TUniDBEdit;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    cmbServiceREFERINHOSP: TUniComboBox;
    cmbServiceSERVPLACE: TUniComboBox;
    cmbServiceMAIN: TUniComboBox;
    cmbServiceCAUSEIN: TUniComboBox;
    cmbServiceINSTYPE: TUniComboBox;
    cmbServiceTYPEIN: TUniComboBox;
    cmbServiceREFEROUTHOSP: TUniComboBox;
    cmbServiceCAUSEOUT: TUniComboBox;
    UniPanel4: TUniPanel;
    UniDBGrid35: TUniDBGrid;
    UniDBGrid13: TUniDBGrid;
    UniPanel5: TUniPanel;
    UniLabel48: TUniLabel;
    AN: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    UniLabel53: TUniLabel;
    UniDBEdit32: TUniDBEdit;
    UniLabel56: TUniLabel;
    UniDBEdit33: TUniDBEdit;
    UniLabel57: TUniLabel;
    UniLabel58: TUniLabel;
    UniDBEdit35: TUniDBEdit;
    UniLabel60: TUniLabel;
    UniLabel61: TUniLabel;
    UniLabel63: TUniLabel;
    cmbAppAPTYPE: TUniComboBox;
    cmbAppCLINIC: TUniComboBox;
    cmbAppIcd10: TUniComboBox;
    UniPanel6: TUniPanel;
    UniLabel45: TUniLabel;
    SEQ: TUniDBEdit;
    UniLabel46: TUniLabel;
    UniLabel47: TUniLabel;
    UniLabel49: TUniLabel;
    DATE_SERV: TUniDBEdit;
    UniLabel50: TUniLabel;
    UniLabel51: TUniLabel;
    PROVIDER: TUniDBEdit;
    cmbDiagOpdDIAGTYPE: TUniComboBox;
    cmbDiagOpdClinic: TUniComboBox;
    cmbDiagOpdDIAGCODE: TUniComboBox;
    UniPanel7: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel8: TUniPanel;
    UniLabel75: TUniLabel;
    UniDBEdit47: TUniDBEdit;
    UniLabel76: TUniLabel;
    UniLabel77: TUniLabel;
    UniLabel78: TUniLabel;
    UniDBEdit50: TUniDBEdit;
    SERVICEPRICE: TUniDBEdit;
    UniLabel79: TUniLabel;
    UniLabel80: TUniLabel;
    UniDBEdit52: TUniDBEdit;
    cmbProcedureOpdCLINIC: TUniComboBox;
    cmbProcedureOpdPROCEDCODE: TUniComboBox;
    UniPanel9: TUniPanel;
    UniDBGrid3: TUniDBGrid;
    UniPanel10: TUniPanel;
    UniLabel90: TUniLabel;
    UniDBEdit57: TUniDBEdit;
    UniLabel92: TUniLabel;
    DIDSTD: TUniDBEdit;
    UniLabel93: TUniLabel;
    UniDBEdit60: TUniDBEdit;
    DRUGPRICE: TUniDBEdit;
    UniLabel94: TUniLabel;
    UniLabel95: TUniLabel;
    DNAME: TUniDBEdit;
    UniLabel96: TUniLabel;
    AMOUNT: TUniDBEdit;
    UniLabel97: TUniLabel;
    UNIT_D: TUniDBEdit;
    UniLabel98: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBEdit14: TUniDBEdit;
    UniLabel36: TUniLabel;
    UniLabel37: TUniLabel;
    UniDBEdit16: TUniDBEdit;
    DRUGCOST: TUniDBEdit;
    cmbDrugOpdCLINIC: TUniComboBox;
    UniPanel11: TUniPanel;
    UniDBGrid4: TUniDBGrid;
    UniPanel12: TUniPanel;
    UniLabel204: TUniLabel;
    UniDBEdit136: TUniDBEdit;
    UniDBEdit42: TUniDBEdit;
    UniDBEdit44: TUniComboBox;
    UniDBEdit45: TUniComboBox;
    UniDBEdit53: TUniComboBox;
    UniDBEdit56: TUniComboBox;
    UniDBEdit59: TUniDBEdit;
    UniDBEdit68: TUniDBDateTimePicker;
    UniDBEdit73: TUniComboBox;
    UniDBEdit143: TUniComboBox;
    UniDBEdit202: TUniComboBox;
    UniDBEdit203: TUniComboBox;
    UniDBEdit204: TUniComboBox;
    UniDBEdit205: TUniDBEdit;
    UniDBEdit206: TUniDBDateTimePicker;
    UniDBEdit209: TUniComboBox;
    UniDBEdit210: TUniComboBox;
    UniDBEdit211: TUniComboBox;
    UniDBEdit223: TUniComboBox;
    UniPanel13: TUniPanel;
    UniDBGrid20: TUniDBGrid;
    UniLabel345: TUniLabel;
    UniLabel346: TUniLabel;
    UniLabel347: TUniLabel;
    UniLabel348: TUniLabel;
    UniLabel349: TUniLabel;
    UniLabel350: TUniLabel;
    UniLabel351: TUniLabel;
    UniLabel352: TUniLabel;
    UniLabel353: TUniLabel;
    UniLabel354: TUniLabel;
    UniLabel355: TUniLabel;
    UniLabel362: TUniLabel;
    UniLabel363: TUniLabel;
    UniLabel356: TUniLabel;
    UniLabel357: TUniLabel;
    UniLabel358: TUniLabel;
    UniLabel359: TUniLabel;
    UniLabel360: TUniLabel;
    UniLabel361: TUniLabel;
    UniDBEdit224: TUniDBEdit;
    UniPanel14: TUniPanel;
    UniLabel176: TUniLabel;
    UniDBEdit125: TUniDBEdit;
    UniLabel177: TUniLabel;
    UniDBEdit126: TUniDBEdit;
    UniLabel178: TUniLabel;
    UniLabel179: TUniLabel;
    UniLabel180: TUniLabel;
    UniLabel181: TUniLabel;
    UniDBEdit127: TUniDBEdit;
    cmbSpecialPpPPSPLACE: TUniComboBox;
    cmbSpecialPpSERVPLACE: TUniComboBox;
    PPSPECIAL: TUniComboBox;
    UniPanel15: TUniPanel;
    UniPanel16: TUniPanel;
    UniLabel132: TUniLabel;
    UniDBEdit81: TUniDBEdit;
    UniDBEdit85: TUniDBEdit;
    UniLabel136: TUniLabel;
    UniLabel137: TUniLabel;
    UniLabel138: TUniLabel;
    UniLabel139: TUniLabel;
    UniDBEdit91: TUniDBEdit;
    btnAddNewEPI: TUniButton;
    cmbEpiVACCINETYPE: TUniComboBox;
    UniLabel227: TUniLabel;
    cmbEpiVACCINEPLACE: TUniComboBox;
    UniPanel17: TUniPanel;
    UniPanel18: TUniPanel;
    UniLabel141: TUniLabel;
    UniDBEdit89: TUniDBEdit;
    UniDBEdit90: TUniDBEdit;
    UniLabel142: TUniLabel;
    UniDBEdit92: TUniDBEdit;
    UniLabel143: TUniLabel;
    WEIGHT: TUniDBEdit;
    UniLabel144: TUniLabel;
    HEIGHT: TUniDBEdit;
    UniLabel145: TUniLabel;
    HEADCIRCUM: TUniDBEdit;
    UniLabel146: TUniLabel;
    UniLabel147: TUniLabel;
    UniDBEdit96: TUniDBEdit;
    CmbFood: TUniComboBox;
    UniLabel148: TUniLabel;
    UniLabel149: TUniLabel;
    CmbChilddevelop: TUniComboBox;
    UniLabel364: TUniLabel;
    CmbBottle: TUniComboBox;
    UniPanel19: TUniPanel;
    UniDBGrid9: TUniDBGrid;
    UniPanel20: TUniPanel;
    UniLabel127: TUniLabel;
    UniDBEdit78: TUniDBEdit;
    UniDBEdit83: TUniDBEdit;
    UniLabel130: TUniLabel;
    UniDBEdit84: TUniDBEdit;
    UniLabel131: TUniLabel;
    UniDBEdit86: TUniDBEdit;
    UniLabel134: TUniLabel;
    UniLabel135: TUniLabel;
    UniDBEdit88: TUniDBEdit;
    UniPanel21: TUniPanel;
    UniDBGrid7: TUniDBGrid;
    UniPanel22: TUniPanel;
    UniLabel169: TUniLabel;
    UniDBEdit101: TUniDBEdit;
    UniDBEdit111: TUniDBEdit;
    UniLabel170: TUniLabel;
    ICF: TUniDBEdit;
    UniLabel171: TUniLabel;
    QUALIFER: TUniDBEdit;
    UniLabel172: TUniLabel;
    UniLabel173: TUniLabel;
    UniDBEdit114: TUniDBEdit;
    DISABID: TUniDBEdit;
    UniLabel174: TUniLabel;
    UniPanel23: TUniPanel;
    UniDBGrid12: TUniDBGrid;
    UniDBGrid17: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniPanel24: TUniPanel;
    UniLabel230: TUniLabel;
    UniDBEdit146: TUniDBEdit;
    CmbSMOKE: TUniComboBox;
    UniDBEdit12: TUniDBEdit;
    CmbHTFAMILY: TUniComboBox;
    UniDBEdit225: TUniDBEdit;
    CmbBSTEST: TUniComboBox;
    UniDBEdit227: TUniDBEdit;
    cmbALCOHOL: TUniComboBox;
    UniDBEdit229: TUniDBEdit;
    UniDBEdit230: TUniDBEdit;
    UniDBEdit231: TUniDBEdit;
    CmbSCREENPLACE: TUniComboBox;
    cmbSERVPLACE: TUniComboBox;
    cmbDMFAMILY: TUniComboBox;
    UniDBEdit235: TUniDBEdit;
    UniDBEdit236: TUniDBEdit;
    UniDBEdit237: TUniDBEdit;
    UniDBEdit238: TUniDBEdit;
    UniLabel365: TUniLabel;
    UniLabel366: TUniLabel;
    UniLabel367: TUniLabel;
    UniLabel368: TUniLabel;
    UniLabel369: TUniLabel;
    UniLabel370: TUniLabel;
    UniLabel371: TUniLabel;
    UniLabel372: TUniLabel;
    UniLabel373: TUniLabel;
    UniLabel374: TUniLabel;
    UniLabel375: TUniLabel;
    UniLabel376: TUniLabel;
    UniLabel377: TUniLabel;
    UniLabel378: TUniLabel;
    UniLabel379: TUniLabel;
    UniLabel380: TUniLabel;
    UniLabel381: TUniLabel;
    UniPanel25: TUniPanel;
    UniDBGrid31: TUniDBGrid;
    UniDBGrid8: TUniDBGrid;
    UniDBEdit8: TUniDBEdit;
    CmbLABTEST: TUniComboBox;
    UniDBEdit219: TUniDBEdit;
    UniLabel382: TUniLabel;
    UniLabel383: TUniLabel;
    UniLabel384: TUniLabel;
    procedure btnAddClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure dsGetReport43AppointmentDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43ProcedureOpdDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43DrugOpdDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43ChargeOpdDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43SpecialPpDataChange(Sender: TObject;
      Field: TField);
    procedure cmbAddrProvinceSelect(Sender: TObject);
    procedure cmbAddrAMPURSelect(Sender: TObject);
    procedure cmbAddrTAMBONSelect(Sender: TObject);
    procedure dsGetReport43DeathDataChange(Sender: TObject; Field: TField);
    procedure cmbDeathCDEATH_AKeyPress(Sender: TObject; var Key: Char);
    procedure cmbAppIcd10KeyPress(Sender: TObject; var Key: Char);
    procedure dsGetReport43AppointmentListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbAppIcd10Select(Sender: TObject);
    procedure cmbDeathCDEATH_ASelect(Sender: TObject);
    procedure cmbDeathCDEATH_CSelect(Sender: TObject);
    procedure cmbDeathCDEATH_BSelect(Sender: TObject);
    procedure cmbDeathCDEATH_DSelect(Sender: TObject);
    procedure cmbDeathCDEATHSelect(Sender: TObject);
    procedure cmbAbogroupSelect(Sender: TObject);
    procedure cmbOccupationOldSelect(Sender: TObject);
    procedure cmbFStatusSelect(Sender: TObject);
    procedure cmbDISCHARGESelect(Sender: TObject);
    procedure cmbNationSelect(Sender: TObject);
    procedure cmbEducationSelect(Sender: TObject);
    procedure cmbOccupationNewSelect(Sender: TObject);
    procedure cmbPersonTypeAreaSelect(Sender: TObject);
    procedure cmbReligionSelect(Sender: TObject);
    procedure cmbVstatusSelect(Sender: TObject);
    procedure cmbMSTATUSSelect(Sender: TObject);
    procedure cmbRaceSelect(Sender: TObject);
    procedure cmbAddrADDRESSTYPESelect(Sender: TObject);
    procedure cmbAddrHOUSETYPESelect(Sender: TObject);
    procedure cmbCardINSTYPEOLDSelect(Sender: TObject);
    procedure cmbCardINSTYPSelect(Sender: TObject);
    procedure cmbCardMAINSelect(Sender: TObject);
    procedure cmbCardSUBSelect(Sender: TObject);
    procedure dsGetReport43CardListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43DrugallergyListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbDrugAllergyTYPEDXSelect(Sender: TObject);
    procedure cmbDrugAllergyALEVELSelect(Sender: TObject);
    procedure cmbDrugAllergySYMPTOMSelect(Sender: TObject);
    procedure cmbDeathODISEASESelect(Sender: TObject);
    procedure dsGetReport43DeathListDataChange(Sender: TObject;
      Field: TField);
    procedure dsReport43ServiceListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbServiceREFERINHOSPSelect(Sender: TObject);
    procedure cmbServiceSERVPLACESelect(Sender: TObject);
    procedure cmbServiceMAINSelect(Sender: TObject);
    procedure cmbServiceCAUSEINSelect(Sender: TObject);
    procedure cmbServiceREFEROUTHOSPSelect(Sender: TObject);
    procedure cmbServiceINSTYPESelect(Sender: TObject);
    procedure cmbServiceTYPEINSelect(Sender: TObject);
    procedure cmbServiceCAUSEOUTSelect(Sender: TObject);
    procedure dsGetReport43HomeListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbHomeHOUSETYPESelect(Sender: TObject);
    procedure cmbHomeLOCATYPESelect(Sender: TObject);
    procedure cmbHomeTOILETSelect(Sender: TObject);
    procedure cmbHomeWATERSelect(Sender: TObject);
    procedure cmbHomeWATERTYPESelect(Sender: TObject);
    procedure cmbHomeGARBAGESelect(Sender: TObject);
    procedure cmbHomeHOUSINGSelect(Sender: TObject);
    procedure cmbHomeDURABILITYSelect(Sender: TObject);
    procedure cmbHomeCLEANLINESSSelect(Sender: TObject);
    procedure cmbHomeVENTILATIONSelect(Sender: TObject);
    procedure cmbHomeLIGHTSelect(Sender: TObject);
    procedure cmbHomeWATERTMSelect(Sender: TObject);
    procedure cmbHomeMFOODSelect(Sender: TObject);
    procedure cmbHomeBCONTROLSelect(Sender: TObject);
    procedure cmbHomeACONTROLSelect(Sender: TObject);
    procedure cmbHomeCHEMICALSelect(Sender: TObject);
    procedure cmbHomeTAMBONSelect(Sender: TObject);
    procedure cmbHomeAMPURSelect(Sender: TObject);
    procedure cmbHomeCHANGWATSelect(Sender: TObject);
    procedure cmbDepartmentSelect(Sender: TObject);
    procedure dsGetReport43AddressListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43DiagnosisOpdListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbDiagOpdDIAGCODESelect(Sender: TObject);
    procedure cmbDiagOpdDIAGTYPESelect(Sender: TObject);
    procedure cmbDiagOpdClinicSelect(Sender: TObject);
    procedure cmbDiagOpdDIAGCODEKeyPress(Sender: TObject; var Key: Char);
    procedure dsGetReport43AdmissionListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbAdmissionHOSPCODESelect(Sender: TObject);
    procedure cmbAdmissionWARDADMITSelect(Sender: TObject);
    procedure cmbAdmissionINSTYPESelect(Sender: TObject);
    procedure cmbAdmissionTYPEINSelect(Sender: TObject);
    procedure cmbAdmissionREFERINHOSPSelect(Sender: TObject);
    procedure cmbAdmissonCAUSEINSelect(Sender: TObject);
    procedure cmbAdmissionWARDDISCHSelect(Sender: TObject);
    procedure cmbAdmissionDISCHSTATUSSelect(Sender: TObject);
    procedure cmbAdmissionDISCHTYPESelect(Sender: TObject);
    procedure cmbAdmissionREFEROUTHOSPSelect(Sender: TObject);
    procedure cmbAdmissionCAUSEOUTSelect(Sender: TObject);
    procedure cmbAddrProvince1Select(Sender: TObject);
    procedure cmbAddrProvince2Select(Sender: TObject);
    procedure cmbAddrAMPUR2Select(Sender: TObject);
    procedure cmbAddrTAMBON2Select(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure UniTimerAutoGetTimer(Sender: TObject);
    procedure cmbDeathPREGDEATHSelect(Sender: TObject);
    procedure cmbDeathPDEATHSelect(Sender: TObject);
    procedure cmbLaborBPLACESelect(Sender: TObject);
    procedure cmbLaborBTYPESelect(Sender: TObject);
    procedure cmbLaborBDOCTORSelect(Sender: TObject);
    procedure cmbAncANCNOSelect(Sender: TObject);
    procedure cmbAddrAMPUR1Select(Sender: TObject);
    procedure cmbAddrTAMBON1Select(Sender: TObject);
    procedure btnAddPersonClick(Sender: TObject);
    procedure btnAddNewANCClick(Sender: TObject);
    procedure btnAddNewNEWBORNClick(Sender: TObject);
    procedure btnAddNewNEWBORNCAREClick(Sender: TObject);
    procedure btnAddNewPOSTNATALClick(Sender: TObject);
    procedure edSearchCIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddNewEPIClick(Sender: TObject);
    procedure btnAddNewPrenatalClick(Sender: TObject);
    procedure btnAddNewLaborClick(Sender: TObject);
    procedure cmbLaborBRESULTKeyPress(Sender: TObject; var Key: Char);
    procedure cmbLaborBRESULTSelect(Sender: TObject);
    procedure dsGetReport43LabOrListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43EpiListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbEpiVACCINETYPESelect(Sender: TObject);
    procedure cmbEpiVACCINEPLACESelect(Sender: TObject);
    procedure dsGetReport43PrenatalListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbPrenatalVDRL_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalHB_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalHIV_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalTHALASSEMIASelect(Sender: TObject);
    procedure cmbAncANCPLACESelect(Sender: TObject);
    procedure cmbAncANCRESULTSelect(Sender: TObject);
    procedure dsGetReport43AncListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbPostnatalPPRESULTSelect(Sender: TObject);
    procedure dsGetReport43PostnatalListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbNewbornBPLACESelect(Sender: TObject);
    procedure cmbNewbornBHOSPSelect(Sender: TObject);
    procedure cmbNewbornBIRTHNOSelect(Sender: TObject);
    procedure cmbNewbornBTYPESelect(Sender: TObject);
    procedure cmbNewbornBDOCTORSelect(Sender: TObject);
    procedure cmbNewbornASPHYXIASelect(Sender: TObject);
    procedure cmbNewbornVITKSelect(Sender: TObject);
    procedure cmbNewbornTSHSelect(Sender: TObject);
    procedure dsGetReport43NewbornListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43ProcedureOpdListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbProcedureOpdPROCEDCODESelect(Sender: TObject);
    procedure cmbProcedureOpdCLINICSelect(Sender: TObject);
    procedure dsGetReport43DrugListOpdDataChange(Sender: TObject;
      Field: TField);
    procedure cmbDrugOpdCLINICSelect(Sender: TObject);
    procedure dsGetReport43AccidentListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43SpecialPpListDataChange(Sender: TObject;
      Field: TField);
    procedure CmbLocationSelect(Sender: TObject);
    procedure CmbIntimeSelect(Sender: TObject);
    procedure CmbTYPEOUTSelect(Sender: TObject);
    procedure dsGetReport43NutritionListDataChange(Sender: TObject;
      Field: TField);
    procedure PPSPECIALSelect(Sender: TObject);
    procedure cmbSpecialPpPPSPLACESelect(Sender: TObject);
    procedure cmbSpecialPpSERVPLACESelect(Sender: TObject);
    procedure CmbSCREENPLACESelect(Sender: TObject);
    procedure CmbSMOKESelect(Sender: TObject);
    procedure CmbHTFAMILYSelect(Sender: TObject);
    procedure CmbBSTESTSelect(Sender: TObject);
    procedure cmbALCOHOLSelect(Sender: TObject);
    procedure cmbSERVPLACESelect(Sender: TObject);
    procedure cmbDMFAMILYSelect(Sender: TObject);
    procedure dsGetReport43NcdscreenListDataChange(Sender: TObject;
      Field: TField);
    procedure CmbFoodSelect(Sender: TObject);
    procedure CmbChilddevelopSelect(Sender: TObject);
    procedure CmbBottleSelect(Sender: TObject);
    procedure CmbBCPLACESelect(Sender: TObject);
    procedure CmbBCARERESULTSelect(Sender: TObject);
    procedure CmbFOOD_NewSelect(Sender: TObject);
    procedure dsGetReport43NewbornCareListDataChange(Sender: TObject;
      Field: TField);
    procedure CmbLABTESTSelect(Sender: TObject);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDS43FileDM ;
   FileArrNum: array of integer;
    FDefaultPageIdx: integer;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);
    procedure SetDefaultPageIdx(const Value: integer);

  public
    property DM : TDS43FileDM read FDM write FDM;
    property DefaultPageIdx:integer read FDefaultPageIdx write SetDefaultPageIdx;

    procedure initDepsArrayPage;
    procedure initial(intArr : array of Integer);
    procedure syncIfx(intArr : array of Integer);

    procedure setDefaultValue(_cmb:TUniComboBox;fieldValue, defaultValue:string);
    procedure setFileArr(_arr:array of integer);
    function inarr(n:integer;arr:array of Integer):boolean;

  end;

type
  TIntArray = array of Integer;


var
  frmStHdrCodeGrid: TfrmRp43OPD01Grid;
  //pagesIndex : array[0..15] of TIntArray ;
  pagesIndex : array of TIntArray ;

implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents, ServerModuleEx, DS43FileIntf;

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


procedure TfrmRp43OPD01Grid.ShowData();
var
  _Form: TUniForm;
begin




end;

procedure TfrmRp43OPD01Grid.syncIfx(intArr: array of Integer);
var defaltPersonArea,defaultNum:integer;
    yrrStr,runStr,HN,_HN:string;
begin
  if trim(edSearchCID.Text)='' then exit;

  if trim(edSearchCID.Text)='' then exit;
  HN := trim(edSearchCID.Text);

  if length(HN)<8 then
  begin
   yrrStr:=Copy(HN,1,2);
   runStr:=Copy(HN,3,length(HN)-2);
   _HN:=yrrStr+FormatCurr('000000',strtoint(runStr));
  end else
    _HN:=HN;

  if fdm.cdsGetReport43Person.RecordCount<=0 then exit;

  if inarr(0,intarr) or inarr(1,intarr) then
  begin
    fdm.syncPerson(_HN);
    if fdm.cdsGetReport43Person.RecordCount>0 then
      begin
        fdm.syncCardList(fdm.cdsGetReport43PersonPID.AsInteger);
        fdm.syncAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
        fdm.syncAddressType2(fdm.cdsGetReport43PersonPID.AsInteger);
      end;
  end;


{
  if inarr(3,intarr) then
  begin
    FDM.WriteLog('### Sync 3 Death');
    fdm.syncAppointmentList(fdm.cdsGetReport43PersonPID.AsInteger)
  end;
  }

  if inarr(3,intarr) then
  begin
    FDM.WriteLog('### Sync 3 Death');
    fdm.syncDeathList(fdm.cdsGetReport43PersonPID.AsInteger)
  end;

  if inarr(8,intarr) then
  begin
    FDM.WriteLog('### Sync 8 Appintment');
    fdm.syncAppointmentList(fdm.cdsGetReport43PersonPID.AsInteger)
  end;



  if inarr(10,intarr) then
  begin
    FDM.WriteLog('### Sync 10 Diagnosis Opd');
    fdm.syncDiagnosisOpdList(fdm.cdsGetReport43PersonPID.AsInteger)
  end;

  if inarr(11,intarr) then
  begin
    FDM.WriteLog('### Sync 11 Procedure Opd');
    fdm.syncProcedureOpdList(fdm.cdsGetReport43PersonPID.AsInteger)
  end;

  if inarr(7,intarr) then
  begin
    FDM.WriteLog('### Sync 7 Service');
    fdm.syncServiceList(fdm.cdsGetReport43PersonPID.AsInteger);
  end;

  if inarr(14,intarr) then
  begin
    FDM.WriteLog('### Sync 14 Admission');
    fdm.syncAdmissionList(fdm.cdsGetReport43PersonPID.AsInteger);
  end;

  if inarr(26,intarr) then
  begin
    FDM.WriteLog('### Sync 26 Labor');
    fdm.syncLabOrList(fdm.cdsGetReport43PersonPID.AsInteger);
  end;


  exit;

  { **** remove address tab
  if inarr(2,intarr) then
  begin
    fdm.cdsGetReport43AddressList.close;
    fdm.getAddressList(fdm.cdsGetReport43PersonPID.AsInteger);
    //fdm.cdsGetReport43AddressList.open;
  end;
    //exit;
    FDM.WriteLog('###3');
   }


    {
  cmbServiceREFERINHOSP.ItemIndex
    := fdm.loadCmbItems(cmbServiceREFERINHOSP.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43ServiceListMAIN.AsString,false);
  cmbServiceREFERINHOSP.ItemIndex
    := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);
  cmbPersonTypeArea.ItemIndex
    := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);
    }
  //


  if inarr(11,intarr) then
  begin
    FDM.WriteLog('### Initial 11');
    fdm.cdsGetReport43ProcedureOpdList.close;
    fdm.getProcedureOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('PID').AsInteger);
    fdm.cdsGetReport43ProcedureOpdList.open;
    cmbProcedureOpdPROCEDCODE.ItemIndex := fdm.loadIcd9List2CmbItems(cmbProcedureOpdPROCEDCODE.Items,fdm.cdsGetReport43ProcedureOpdList.FieldByName('PROCEDCODE').AsString,true);
    cmbProcedureOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbProcedureOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43ProcedureOpdList.FieldByName('CLINIC').AsString,true);
   // cmb
  end;

  if inarr(12,intarr) then
  begin
    FDM.WriteLog('### Initial 12');
    fdm.cdsGetReport43DrugListOpd.close;
    fdm.getDrugOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('PID').AsInteger);
    fdm.cdsGetReport43DrugListOpd.open;
  end;

  if inarr(8,intarr) then
  begin
    FDM.WriteLog('### Initial 8');
    fdm.cdsGetReport43AppointmentList.close;
    fdm.getAppointmentList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('PID').AsInteger);
    fdm.cdsGetReport43AppointmentList.open;
  end;

  if inarr(25,intarr) then
  begin
    FDM.WriteLog('### Initial 25');
    fdm.cdsGetReport43AncList.close;
    fdm.getAncList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43PrenatalGRAVIDA.AsString);
    fdm.cdsGetReport43AncList.open;
  end;

  if inarr(24,intarr) then
  begin
    FDM.WriteLog('### Initial 24');
    fdm.cdsGetReport43PrenatalList.close;
    fdm.getPrenatalList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43PrenatalList.open;
  end;


  if inarr(27,intarr) then
  begin
    FDM.WriteLog('### Initial 27');
    fdm.cdsGetReport43PostnatalList.close;
    fdm.getPostnatalList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43PostnatalList.open;
  end;

  if inarr(26,intarr) then
  begin
    FDM.WriteLog('### Initial 26');
    fdm.cdsGetReport43LabOrList.close;
    fdm.getLabOrList(fdm.cdsGetReport43PrenatalListPID.AsInteger,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
    fdm.cdsGetReport43LabOrList.open;
  end;


  {if inarr(7,intarr) then
  begin
    fdm.cdsGetReport43LabOrList.close;
    fdm.getLabOrList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43LabOrList.open;
  end;
  }

  if inarr(20,intarr) then
  begin
    FDM.WriteLog('### Initial 20');
    fdm.cdsGetReport43WomenList.close;
    fdm.getWomenList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43WomenList.open;
  end;

  if inarr(21,intarr) then
  begin
    FDM.WriteLog('### Initial 21');
    fdm.cdsGetReport43FpList.close;
    fdm.getFpList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43FpList.open;
  end;

  if inarr(22,intarr) then
  begin
    FDM.WriteLog('### Initial 22');
    fdm.cdsGetReport43EpiList.close;
    fdm.getEpiList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43EpiList.open;
  end;


  if inarr(38,intarr) then
  begin
    FDM.WriteLog('### Initial 38');
    fdm.cdsGetReport43IcfList.close;
    fdm.getIcfList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43IcfList.open;
  end;

  if inarr(31,intarr) then
  begin
    FDM.WriteLog('### Initial 31');
    fdm.cdsGetReport43SpecialPpList.close;
    fdm.getSpecialPpList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43SpecialPpList.open;
  end;

  if inarr(33,intarr) then
  begin
    FDM.WriteLog('### Initial 33');
    fdm.cdsGetReport43ChronicList.close;
    fdm.getChronicList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43ChronicList.open;
  end;

  if inarr(34,intarr) then
  begin
    FDM.WriteLog('### Initial 34');
    fdm.cdsGetReport43ChronicFuList.close;
    fdm.getChronicFuList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43ChronicFuList.open;
  end;

  if inarr(23,intarr) then
  begin
    FDM.WriteLog('### Initial 23');
    fdm.cdsGetReport43NutritionList.close;
    fdm.getNutritionList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43NutritionList.open;
    CmbFood.ItemIndex := fdm.loadCmbItems(CmbFood.Items,'*','FOOD','43FILE_CODE','NAME1', fdm.cdsGetReport43NutritionList.FieldByName('CLINIC').AsString,true);
    CmbBottle.ItemIndex := fdm.loadCmbItems(CmbBottle.Items,'NUTRITION','BOTTLE','43FILE_CODE','NAME1', fdm.cdsGetReport43NutritionList.FieldByName('CLINIC').AsString,true);
    CmbChilddevelop.ItemIndex := fdm.loadCmbItems(CmbChilddevelop.Items,'NUTRITION','CHILDDEVELOP','43FILE_CODE','NAME1', fdm.cdsGetReport43NutritionList.FieldByName('CLINIC').AsString,true);


  end;

  if inarr(3,intarr) then
  begin
    FDM.WriteLog('### Initial 3');
    fdm.cdsGetReport43DeathList.close;
    fdm.getDeathList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DeathList.open;


    if fdm.cdsGetReport43DeathList.RecordCount>0 then
    begin
      cmbDeathCDEATH_A.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_A.Items,'',fdm.cdsGetReport43DeathCDEATH_A.AsString,true);
      cmbDeathCDEATH_B.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_B.Items,'',fdm.cdsGetReport43DeathCDEATH_B.AsString,true);
      cmbDeathCDEATH_C.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_C.Items,'',fdm.cdsGetReport43DeathCDEATH_C.AsString,true);
      cmbDeathCDEATH_D.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_D.Items,'',fdm.cdsGetReport43DeathCDEATH_D.AsString,true);
      cmbDeathODISEASE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathODISEASE.Items,'',fdm.cdsGetReport43DeathODISEASE.AsString,true);
      cmbDeathCDEATH.ItemIndex   := fdm.getIcd10List2CmbItems(cmbDeathCDEATH.Items,'',fdm.cdsGetReport43DeathCDEATH.AsString,true);
    end;
  end;


  if inarr(4,intarr) then
  begin
    FDM.WriteLog('### Initial 4');
    fdm.cdsGetReport43CardList.close;
    fdm.getCardList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43CardList.open;
  end;


  if inarr(5,intarr) then
  begin
    FDM.WriteLog('### Initial 5');
    fdm.cdsGetReport43DrugallergyList.close;
    fdm.getDugallergyList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DrugallergyList.open;
  end;

  if inarr(9,intarr) then
  begin
    FDM.WriteLog('### Initial 9');
    fdm.cdsGetReport43AccidentList.close;
    fdm.getAccidentList(fdm.cdsGetReport43PersonPID.AsInteger,fdm.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43AccidentList.open;
  end;

  if inarr(13,intarr) then
  begin
    FDM.WriteLog('### Initial 13');
    fdm.cdsGetReport43ChargeOrdList.close;
    fdm.getChargeOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
 //   fdm.cdsGetReport43DrugListOpd.open;
    fdm.cdsGetReport43ChargeOrdList.open;
  end;

  if inarr(15,intarr) then
  begin
    FDM.WriteLog('### Initial 15');
    fdm.cdsGetReport43DiagnosisIpdList.close;
    fdm.getDiagnosisIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DiagnosisIpdList.open;
  end;

  if inarr(16,intarr) then
  begin
    FDM.WriteLog('### Initial 16');
    fdm.cdsGetReport43ProcedureIpdList.close;
    fdm.getProcedureIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43ProcedureIpdList.open;
  end;

  if inarr(17,intarr) then
  begin
    FDM.WriteLog('### Initial 17');
    fdm.cdsGetReport43DrugIpdList.close;
    fdm.getDrugIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DrugIpdList.open;
  end;

  if inarr(18,intarr) then
  begin
    FDM.WriteLog('### Initial 18');
    fdm.cdsGetReport43ChargeIpdList.close;
    fdm.getChargeIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43ChargeIpdList.open;
  end;

  if inarr(19,intarr) then
  begin
    FDM.WriteLog('### Initial 19');
    fdm.cdsGetReport43SurveillanceList.close;
    fdm.getSurveillanceList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43SurveillanceList.open;
  end;

  if inarr(28,intarr) then
  begin
    FDM.WriteLog('### Initial 28');
    fdm.cdsGetReport43NewbornList.close;
    fdm.getNewbornList(FDM.cdsGetReport43NewbornList.FieldByName('MPID').AsString,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
    fdm.cdsGetReport43NewbornList.open;
  end;

  if inarr(29,intarr) then
  begin
    FDM.WriteLog('### Initial 29');
    fdm.cdsGetReport43NewbornCareList.close;
    fdm.getNewbornCareList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43NewbornCareList.open;
  end;

  if inarr(30,intarr) then
  begin
    FDM.WriteLog('### Initial 30');
    fdm.cdsGetReport43DentalList.close;
    fdm.getDentalList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DentalList.open;
  end;

  if inarr(32,intarr) then
  begin
    FDM.WriteLog('### Initial 32');
    fdm.cdsGetReport43NcdscreenList.close;
    fdm.getNcdscreenList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43NcdscreenList.open;
  end;

  if inarr(35,intarr) then
  begin
    FDM.WriteLog('### Initial 35');
    fdm.cdsGetReport43LabFuList.close;
    fdm.getLabFuList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43LabFuList.open;
  end;


  if inarr(6,intarr) then
  begin
    FDM.WriteLog('### Initial 6');
    fdm.cdsGetReport43HomeList.close;
    fdm.getHomeList('00','00','00');
    fdm.cdsGetReport43HomeList.open;
  end;

end;


procedure TfrmRp43OPD01Grid.btnAddClick(Sender: TObject);

begin


end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
procedure TfrmRp43OPD01Grid._Confirm(AResult: Integer);
begin

end;

procedure TfrmRp43OPD01Grid.btnAddNewANCClick(Sender: TObject);
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

procedure TfrmRp43OPD01Grid.btnAddNewEPIClick(Sender: TObject);
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

procedure TfrmRp43OPD01Grid.btnAddNewLaborClick(Sender: TObject);
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

procedure TfrmRp43OPD01Grid.btnAddNewNEWBORNCAREClick(Sender: TObject);
begin
  inherited;
  if not (FDM.cdsGetReport43NewbornCare.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43NewbornCare.Append;
    FDM.cdsGetReport43NewbornCarePID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD01Grid.btnAddNewNEWBORNClick(Sender: TObject);
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

procedure TfrmRp43OPD01Grid.btnAddNewPOSTNATALClick(Sender: TObject);
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

procedure TfrmRp43OPD01Grid.btnAddNewPrenatalClick(Sender: TObject);
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

procedure TfrmRp43OPD01Grid.btnAddPersonClick(Sender: TObject);
begin
  inherited;
  if not (FDM.cdsGetReport43Person.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Person.Append;
    FDM.cdsGetReport43PersonPID.AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
  end;
end;

procedure TfrmRp43OPD01Grid.btnConfirmClick(Sender: TObject);
var yyyy,dd,mm:Word;
    BIRTH,MOVIN,DDISCHARGE,D_UPDATE,EXPORT_DATE:TDate;
begin
try

  // update person
  if pgAll43File.Pages[0].TabVisible then
  begin
    if fdm.cdsGetReport43Person.State in [dsInsert,dsEdit] then
     begin
      FDM.WriteLog('update person...');
      fdm.cdsGetReport43Person.post;
       FDM.InsUpdPerson(
            0
            ,FDM.cdsGetReport43Person.FieldByName('HOSPCODE').AsString
            ,FDM.cdsGetReport43Person.FieldByName('CID').AsString
            ,FDM.cdsGetReport43Person.FieldByName('PID').AsInteger
            ,FDM.cdsGetReport43Person.FieldByName('HID').AsString
            ,FDM.cdsGetReport43Person.FieldByName('PRENAME').AsString
            ,FDM.cdsGetReport43Person.FieldByName('NAME').AsString
            ,FDM.cdsGetReport43Person.FieldByName('LNAME').AsString
            ,FDM.cdsGetReport43Person.FieldByName('HN').AsString
            ,TString(cmbPersonSEX.Items.Objects[cmbPersonSEX.ItemIndex]).Str
            //,FDM.cdsGetReport43Person.FieldByName('SEX').AsString
            ,FDM.cdsGetReport43Person.FieldByName('BIRTH').AsFloat
            //,FDM.cdsGetReport43Person.FieldByName('MSTATUS').AsString
            ,TString(cmbMSTATUS.Items.Objects[cmbMSTATUS.ItemIndex]).Str
            ,TString(cmbOccupationOld.Items.Objects[cmbOccupationOld.ItemIndex]).Str
            ,TString(cmbOccupationNew.Items.Objects[cmbOccupationNew.ItemIndex]).Str
            //,FDM.cdsGetReport43Person.FieldByName('OCCUPATION_OLD').AsString
            //,FDM.cdsGetReport43Person.FieldByName('OCCUPATION_NEW').AsString
            ,TString(cmbRace.Items.Objects[cmbRace.ItemIndex]).Str
            ,TString(cmbNation.Items.Objects[cmbNation.ItemIndex]).Str

            //,FDM.cdsGetReport43Person.FieldByName('RACE').AsString
            //,FDM.cdsGetReport43Person.FieldByName('NATION').AsString
            //,FDM.cdsGetReport43Person.FieldByName('RELIGION').AsString
            //,FDM.cdsGetReport43Person.FieldByName('EDUCATION').AsString

            ,TString(cmbReligion.Items.Objects[cmbReligion.ItemIndex]).Str
            ,TString(cmbEducation.Items.Objects[cmbEducation.ItemIndex]).Str
            ,TString(cmbFStatus.Items.Objects[cmbFStatus.ItemIndex]).Str

            //,FDM.cdsGetReport43Person.FieldByName('FSTATUS').AsString
            ,FDM.cdsGetReport43Person.FieldByName('FATHER').AsString
            ,FDM.cdsGetReport43Person.FieldByName('MOTHER').AsString
            ,FDM.cdsGetReport43Person.FieldByName('COUPLE').AsString
            //,FDM.cdsGetReport43Person.FieldByName('VSTATUS').AsString
            ,TString(cmbVstatus.Items.Objects[cmbVstatus.ItemIndex]).Str
            ,FDM.cdsGetReport43Person.FieldByName('MOVEIN').AsFloat
            //,FDM.cdsGetReport43Person.FieldByName('DISCHARGE').AsString
            ,TString(cmbDISCHARGE.Items.Objects[cmbDISCHARGE.ItemIndex]).Str
            ,FDM.cdsGetReport43Person.FieldByName('DDISCHARGE').AsFloat
            ,TString(cmbAbogroup.Items.Objects[cmbAbogroup.ItemIndex]).Str
            ,TString(cmbRhGroup.Items.Objects[cmbRhGroup.ItemIndex]).Str
            //,FDM.cdsGetReport43Person.FieldByName('ABOGROUP').AsString
            //,FDM.cdsGetReport43Person.FieldByName('RHGROUP').AsString
            ,FDM.cdsGetReport43Person.FieldByName('LABOR').AsString
            ,FDM.cdsGetReport43Person.FieldByName('PASSPORT').AsString
            //,FDM.cdsGetReport43Person.FieldByName('TYPEAREA').AsString
            {,FDM.cdsGetReport43Person.FieldByName('D_UPDATE').AsFloat
            ,FDM.cdsGetReport43Person.FieldByName('EXPORT_DATE').AsFloat}
       );// then   ShowMessage('update person finish') else  ShowMessage('update un-success.');

     end;

     // update Address  type 1
     with fdm.cdsGetReport43AddressType1 do
     begin
       if state in [dsinsert,dsedit] then
       begin
         FDM.WriteLog('update address type 1...');
         Post;
         fdm.setAddressType1(
            FieldByName('REPORTID').AsInteger,
            FieldByName('HOSPCODE').AsString ,
            FieldByName('PID').AsInteger ,'1',
            //TString(cmbAddrADDRESSTYPE1.Items.Objects[cmbAddrADDRESSTYPE1.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('ADDRESSTYPE').AsString ,
            FieldByName('HOUSE_ID').AsString,
            TString(cmbAddrHOUSETYPE1.Items.Objects[cmbAddrHOUSETYPE1.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('HOUSETYPE').AsString ,
            FieldByName('ROOMNO').AsString,
            FieldByName('CONDO').AsString ,
            FieldByName('HOUSENO').AsString ,
            FieldByName('SOISUB').AsString ,
            FieldByName('SOIMAIN').AsString ,
            FieldByName('ROAD').AsString,
            FieldByName('VILLANAME').AsString ,
            FieldByName('VILLAGE').AsString,
            TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str,
            TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('TAMBON').AsString,
            //fdm.cdsGetReport43Address.FieldByName('AMPUR').AsString ,
            TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('CHANGWAT').AsString ,
            FieldByName('TELEPHONE').AsString ,
            FieldByName('MOBILE').AsString ,
            FieldByName('D_UPDATE').AsFloat
         );
       end;
     end;

     // update Address  type 2
     with fdm.cdsGetReport43AddressType2 do
     begin
       if state in [dsinsert,dsedit] then
       begin
         FDM.WriteLog('update address type 2...');
         Post;
         fdm.setAddressType2(
            FieldByName('REPORTID').AsInteger,
            FieldByName('HOSPCODE').AsString ,
            FieldByName('PID').AsInteger ,'2',
            //TString(cmbAddrADDRESSTYPE1.Items.Objects[cmbAddrADDRESSTYPE1.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('ADDRESSTYPE').AsString ,
            FieldByName('HOUSE_ID').AsString,
            TString(cmbAddrHOUSETYPE2.Items.Objects[cmbAddrHOUSETYPE2.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('HOUSETYPE').AsString ,
            FieldByName('ROOMNO').AsString,
            FieldByName('CONDO').AsString ,
            FieldByName('HOUSENO').AsString ,
            FieldByName('SOISUB').AsString ,
            FieldByName('SOIMAIN').AsString ,
            FieldByName('ROAD').AsString,
            FieldByName('VILLANAME').AsString ,
            FieldByName('VILLAGE').AsString,
            TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str,
            TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('TAMBON').AsString,
            //fdm.cdsGetReport43Address.FieldByName('AMPUR').AsString ,
            TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,
            //fdm.cdsGetReport43Address.FieldByName('CHANGWAT').AsString ,
            FieldByName('TELEPHONE').AsString ,
            FieldByName('MOBILE').AsString ,
            FieldByName('D_UPDATE').AsFloat
         );
       end;
     end;


  end;




  // update appointmnet
  if pgAll43File.Pages[7].TabVisible then
  if fdm.cdsGetReport43Appointment.state in [dsinsert,dsedit] then
  begin
    FDM.WriteLog('update appointment...');
    fdm.cdsGetReport43Appointment.post;
    fdm.InsUpdAppointment(
        fdm.cdsGetReport43Appointment.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Appointment.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43Appointment.FieldByName('PID').AsInteger ,
        fdm.cdsGetReport43Appointment.FieldByName('AN').AsInteger,
        fdm.cdsGetReport43Appointment.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43Appointment.FieldByName('DATE_SERV').AsFloat,
        TString(cmbAppCLINIC.Items.Objects[cmbAppCLINIC.ItemIndex]).Str,
        //fdm.cdsGetReport43Appointment.FieldByName('CLINIC').AsString ,
        fdm.cdsGetReport43Appointment.FieldByName('APDATE').AsDateTime,
        TString(cmbAppAPTYPE.Items.Objects[cmbAppAPTYPE.ItemIndex]).Str,
        Before('-',cmbAppIcd10.text),
        //TString(cmbAppIcd10.Items.Objects[cmbAppIcd10.ItemIndex]).Str,
        //fdm.cdsGetReport43Appointment.FieldByName('APTYPE').AsString,
        //fdm.cdsGetReport43Appointment.FieldByName('APDIAG').AsString,
        fdm.cdsGetReport43Appointment.FieldByName('PROVIDER').AsString,
        fdm.cdsGetReport43Appointment.FieldByName('D_UPDATE').AsFloat
    );
  end;




  // ShowMessage(TString(cmbServiceSERVPLACE.Items.Objects[cmbServiceSERVPLACE.ItemIndex]).Str);
  // update service
  if pgAll43File.Pages[6].TabVisible then
  if fdm.cdsGetReport43Service.State in [dsInsert,dsEdit] then
   begin
    FDM.WriteLog('update service...');
    fdm.cdsGetReport43Service.post;
     FDM.InsUpdService(
               FDM.cdsGetReport43Service.FieldByName('HOSPCODE').AsString
              ,FDM.cdsGetReport43Service.FieldByName('PID').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('HN').AsString
              ,FDM.cdsGetReport43Service.FieldByName('SEQ').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('DATE_SERV').AsFloat
              ,FDM.cdsGetReport43Service.FieldByName('TIME_SERV').AsFloat
              ,FDM.cdsGetReport43Service.FieldByName('LOCATION').AsString
              ,FDM.cdsGetReport43Service.FieldByName('INTIME').AsString
              ,TString(cmbServiceINSTYPE.Items.Objects[cmbServiceINSTYPE.ItemIndex]).Str
              //,FDM.cdsGetReport43Service.FieldByName('INSTYPE').AsString
              ,FDM.cdsGetReport43Service.FieldByName('INSID').AsString
              ,TString(cmbServiceMAIN.Items.Objects[cmbServiceMAIN.ItemIndex]).Str
              ,TString(cmbServiceTYPEIN.Items.Objects[cmbServiceTYPEIN.ItemIndex]).Str
              //,FDM.cdsGetReport43Service.FieldByName('MAIN').AsString
              //,FDM.cdsGetReport43Service.FieldByName('TYPEIN').AsString
              ,TString(cmbServiceREFERINHOSP.Items.Objects[cmbServiceREFERINHOSP.ItemIndex]).Str
              ,TString(cmbServiceCAUSEIN.Items.Objects[cmbServiceCAUSEIN.ItemIndex]).Str
              //,FDM.cdsGetReport43Service.FieldByName('REFERINHOSP').AsString
              //,FDM.cdsGetReport43Service.FieldByName('CAUSEIN').AsString
              ,FDM.cdsGetReport43Service.FieldByName('CHIEFCOMP').AsString
              ,TString(cmbServiceSERVPLACE.Items.Objects[cmbServiceSERVPLACE.ItemIndex]).Str
              //,FDM.cdsGetReport43Service.FieldByName('SERVPLACE').AsString
              ,FDM.cdsGetReport43Service.FieldByName('BTEMP').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('SBP').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('DBP').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('PR').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('RR').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('TYPEOUT').AsString
              ,TString(cmbServiceREFEROUTHOSP.Items.Objects[cmbServiceREFEROUTHOSP.ItemIndex]).Str
              ,TString(cmbServiceCAUSEOUT.Items.Objects[cmbServiceCAUSEOUT.ItemIndex]).Str
              //,FDM.cdsGetReport43Service.FieldByName('REFEROUTHOSP').AsString
              //,FDM.cdsGetReport43Service.FieldByName('CAUSEOUT').AsString
              ,FDM.cdsGetReport43Service.FieldByName('COST').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('PRICE').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('PAYPRICE').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('ACTUALPAY').AsInteger
              ,FDM.cdsGetReport43Service.FieldByName('D_UPDATE').AsFloat
     ) ;//then   ShowMessage('update service finish') else  ShowMessage('update service un-success.');
   end;



   // update diagnosis opd
   if pgAll43File.Pages[9].TabVisible then
   //ShowMessage(TString(cmbDiagOpdDIAGCODE.Items.Objects[cmbDiagOpdDIAGCODE.ItemIndex]).Str);
   if fdm.cdsGetReport43DiagnosisOpd.State in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update diagnosis opd...');
     fdm.cdsGetReport43DiagnosisOpd.post;
     fdm.InsUpdDiagnosisOpd(
            fdm.cdsGetReport43DiagnosisOpd.FieldByName('HOSPCODE').AsString,
            fdm.cdsGetReport43DiagnosisOpd.FieldByName('PID').AsInteger,
            fdm.cdsGetReport43DiagnosisOpd.FieldByName('SEQ').AsInteger,
            fdm.cdsGetReport43DiagnosisOpd.FieldByName('DATE_SERV').AsFloat,
            TString(cmbDiagOpdDIAGTYPE.Items.Objects[cmbDiagOpdDIAGTYPE.ItemIndex]).Str,
            TString(cmbDiagOpdDIAGCODE.Items.Objects[cmbDiagOpdDIAGCODE.ItemIndex]).Str,
            TString(cmbDiagOpdClinic.Items.Objects[cmbDiagOpdClinic.ItemIndex]).Str,
            //fdm.cdsGetReport43DiagnosisOpd.FieldByName('DIAGTYPE').AsString,
            //fdm.cdsGetReport43DiagnosisOpd.FieldByName('DIAGCODE').AsString,
            //fdm.cdsGetReport43DiagnosisOpd.FieldByName('CLINIC').AsString,
            fdm.cdsGetReport43DiagnosisOpd.FieldByName('PROVIDER').AsString,
            fdm.cdsGetReport43DiagnosisOpd.FieldByName('D_UPDATE').AsFloat,
            fdm.cdsGetReport43DiagnosisOpd.FieldByName('EXPORT_DATE').AsFloat
     );
   end;




   // update procedure opd
   if pgAll43File.Pages[10].TabVisible then
   if fdm.cdsGetReport43ProcedureOpd.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update procedure opd...');
     fdm.cdsGetReport43ProcedureOpd.post;
     fdm.InsUpdProcedureOpd(
        fdm.cdsGetReport43ProcedureOpd.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43ProcedureOpd.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43ProcedureOpd.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43ProcedureOpd.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43ProcedureOpd.FieldByName('DATE_SERV').AsFloat,
        TString(cmbProcedureOpdCLINIC.Items.Objects[cmbProcedureOpdCLINIC.ItemIndex]).Str,
        TString(cmbProcedureOpdPROCEDCODE.Items.Objects[cmbProcedureOpdPROCEDCODE.ItemIndex]).Str,
        //fdm.cdsGetReport43ProcedureOpd.FieldByName('CLINIC').AsString,
        //fdm.cdsGetReport43ProcedureOpd.FieldByName('PROCEDCODE').AsString ,
        fdm.cdsGetReport43ProcedureOpd.FieldByName('SERVICEPRICE').AsInteger,
        fdm.cdsGetReport43ProcedureOpd.FieldByName('PROVIDER').AsString,
        fdm.cdsGetReport43ProcedureOpd.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update drug opd
   if pgAll43File.Pages[11].TabVisible then
   if fdm.cdsGetReport43DrugOpd.State in [dsInsert,dsedit] then
   begin
     FDM.WriteLog('update drug opd...');
     fdm.cdsGetReport43DrugOpd.Post;
     fdm.InsUpdDrugOpd(
          fdm.cdsGetReport43DrugOpd.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43DrugOpd.FieldByName('ORDER_NO').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43DrugOpd.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43DrugOpd.FieldByName('DATE_SERV').AsFloat,
          TString(cmbDrugOpdCLINIC.Items.Objects[cmbDrugOpdCLINIC.ItemIndex]).Str,
          //fdm.cdsGetReport43DrugOpd.FieldByName('CLINIC').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('DIDSTD').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('DNAME').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('AMOUNT').AsInteger,
          fdm.cdsGetReport43DrugOpd.FieldByName('UNIT').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('UNIT_PACKING').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('DRUGPRICE').AsInteger,
          fdm.cdsGetReport43DrugOpd.FieldByName('DRUGCOST').AsInteger,
          fdm.cdsGetReport43DrugOpd.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43DrugOpd.FieldByName('D_UPDATE').AsFloat
     );
   end;


   // update anc
   if pgAll43File.Pages[24].TabVisible then
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
   end;


   // update prenatal
   if pgAll43File.Pages[23].TabVisible then
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
   end;


   // update postnatal
   if pgAll43File.Pages[26].TabVisible then
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
          fdm.cdsGetReport43Postnatal.FieldByName('PPPLACE').AsString,
          TString(cmbPostnatalPPRESULT.Items.Objects[cmbPostnatalPPRESULT.ItemIndex]).Str,
          fdm.cdsGetReport43Postnatal.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43Postnatal.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update labor
   if pgAll43File.Pages[25].TabVisible then
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
   end;

   // update women
   if pgAll43File.Pages[19].TabVisible then
   if fdm.cdsGetReport43Women.state in [dsinsert,dsedit] then
   begin
   FDM.WriteLog('update women...');
     fdm.cdsGetReport43Women.post;
     fdm.InsUpdWomen(
          fdm.cdsGetReport43Women.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Women.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Women.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Women.FieldByName('FPTYPE').AsString,
          fdm.cdsGetReport43Women.FieldByName('NOFPCAUSE').AsString,
          fdm.cdsGetReport43Women.FieldByName('TOTALSON').AsInteger,
          fdm.cdsGetReport43Women.FieldByName('NUMBERSON').AsInteger,
          fdm.cdsGetReport43Women.FieldByName('ABORTION').AsInteger,
          fdm.cdsGetReport43Women.FieldByName('STILLBIRTH').AsInteger,
          fdm.cdsGetReport43Women.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update fp
   if pgAll43File.Pages[20].TabVisible then
   if fdm.cdsGetReport43Fp.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update fp...');
     fdm.cdsGetReport43Fp.post;
     fdm.InsUpdFp(
          fdm.cdsGetReport43Fp.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Fp.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Fp.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Fp.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43Fp.FieldByName('DATE_SERV').AsFloat,
          fdm.cdsGetReport43Fp.FieldByName('FPTYPE').AsString,
          fdm.cdsGetReport43Fp.FieldByName('FPPLACE').AsString,
          fdm.cdsGetReport43Fp.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43Fp.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update epi
   if pgAll43File.Pages[21].TabVisible then
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
   end;

   // update Icf
   if pgAll43File.Pages[37].TabVisible then
   if fdm.cdsGetReport43Icf.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update Icf...');
     fdm.cdsGetReport43Icf.post;
     fdm.InsUpdIcf(
          fdm.cdsGetReport43Icf.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Icf.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Icf.FieldByName('DISABID').AsString,
          fdm.cdsGetReport43Icf.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Icf.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43Icf.FieldByName('DATE_SERV').AsFloat,
          fdm.cdsGetReport43Icf.FieldByName('ICF').AsString,
          fdm.cdsGetReport43Icf.FieldByName('QUALIFIER').AsString ,
          fdm.cdsGetReport43Icf.FieldByName('PROVIDER').AsString ,
          fdm.cdsGetReport43Icf.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update Special pp
   if pgAll43File.Pages[30].TabVisible then
   if fdm.cdsGetReport43SpecialPp.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update Special pp...');
     fdm.cdsGetReport43SpecialPp.post;
     fdm.InsUpdSpecialPp(
          fdm.cdsGetReport43SpecialPp.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43SpecialPp.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43SpecialPp.FieldByName('PID').AsString,
          fdm.cdsGetReport43SpecialPp.FieldByName('SEQ').AsString,
          fdm.cdsGetReport43SpecialPp.FieldByName('DATE_SERV').AsFloat,
          TString(cmbSpecialPpSERVPLACE.Items.Objects[cmbSpecialPpSERVPLACE.ItemIndex]).Str,
          //fdm.cdsGetReport43SpecialPp.FieldByName('SERVPLACE').AsString,
          fdm.cdsGetReport43SpecialPp.FieldByName('PPSPECIAL').AsString,
          TString(cmbSpecialPpPPSPLACE.Items.Objects[cmbSpecialPpPPSPLACE.ItemIndex]).Str,
          //fdm.cdsGetReport43SpecialPp.FieldByName('PPSPLACE').AsString,
          fdm.cdsGetReport43SpecialPp.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43SpecialPp.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update chronic
   if pgAll43File.Pages[32].TabVisible then
   if fdm.cdsGetReport43Chronic.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update chronic...');
     fdm.cdsGetReport43Chronic.post;
     fdm.InsUpdChronic(
          fdm.cdsGetReport43Chronic.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Chronic.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Chronic.FieldByName('PID').AsString,
          fdm.cdsGetReport43Chronic.FieldByName('DATE_DIAG').AsFloat,
          fdm.cdsGetReport43Chronic.FieldByName('CHRONIC').AsString,
          fdm.cdsGetReport43Chronic.FieldByName('HOSP_DX').AsString,
          fdm.cdsGetReport43Chronic.FieldByName('HOSP_RX').AsString,
          fdm.cdsGetReport43Chronic.FieldByName('DATE_DISCH').AsFloat,
          fdm.cdsGetReport43Chronic.FieldByName('TYPEDISCH').AsString,
          fdm.cdsGetReport43Chronic.FieldByName('D_UPDATE').AsFloat
     );
   end;

   //update chronicfu
   if pgAll43File.Pages[33].TabVisible then
   if fdm.cdsGetReport43ChronicFu.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update chronicfu...');
     fdm.cdsGetReport43ChronicFu.Post;
     fdm.InsUpdChronicFu(
          fdm.cdsGetReport43ChronicFu.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43ChronicFu.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43ChronicFu.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43ChronicFu.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43ChronicFu.FieldByName('DATE_SERV').AsFloat,
          fdm.cdsGetReport43ChronicFu.FieldByName('WEIGHT').AsInteger,
          fdm.cdsGetReport43ChronicFu.FieldByName('HEIGHT').AsInteger,
          fdm.cdsGetReport43ChronicFu.FieldByName('WAIST_CM').AsInteger,
          fdm.cdsGetReport43ChronicFu.FieldByName('SBP').AsInteger,
          fdm.cdsGetReport43ChronicFu.FieldByName('DBP').AsInteger ,
          fdm.cdsGetReport43ChronicFu.FieldByName('FOOT').AsString,
          fdm.cdsGetReport43ChronicFu.FieldByName('RETINA').AsString,
          fdm.cdsGetReport43ChronicFu.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43ChronicFu.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update nutrition
   if pgAll43File.Pages[22].TabVisible then
   if fdm.cdsGetReport43Nutrition.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update nutrition...');
     fdm.cdsGetReport43Nutrition.Post;
     fdm.InsUpdNutrition(
          fdm.cdsGetReport43Nutrition.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Nutrition.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Nutrition.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Nutrition.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43Nutrition.FieldByName('DATE_SERV').AsFloat ,
          fdm.cdsGetReport43Nutrition.FieldByName('NUTRITIONPLACE').AsString ,
          fdm.cdsGetReport43Nutrition.FieldByName('WEIGHT').AsInteger,
          fdm.cdsGetReport43Nutrition.FieldByName('HEIGHT').AsInteger,
          fdm.cdsGetReport43Nutrition.FieldByName('HEADCIRCUM').AsInteger,
          fdm.cdsGetReport43Nutrition.FieldByName('CHILDDEVELOP').AsString ,
          fdm.cdsGetReport43Nutrition.FieldByName('FOOD').AsString,
          fdm.cdsGetReport43Nutrition.FieldByName('BOTTLE').AsString ,
          fdm.cdsGetReport43Nutrition.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43Nutrition.FieldByName('D_UPDATE').AsFloat
     );
   end;



   // update death
   if pgAll43File.Pages[2].TabVisible then
   if fdm.cdsGetReport43Death.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update death...');
     fdm.cdsGetReport43Death.Post;
     fdm.InsUpdDeath(
        fdm.cdsGetReport43Death.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Death.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43Death.FieldByName('PID').AsInteger ,
        TString(cmbDeathHospdeath.Items.Objects[cmbDeathHospdeath.ItemIndex]).Str,
        //fdm.cdsGetReport43Death.FieldByName('HOSPDEATH').AsString ,
        fdm.cdsGetReport43Death.FieldByName('AN').AsString,
        fdm.cdsGetReport43Death.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43Death.FieldByName('DDEATH').AsFloat,
        Before('-',cmbDeathCDEATH_A.Text),
        Before('-',cmbDeathCDEATH_B.Text),
        Before('-',cmbDeathCDEATH_C.Text),
        Before('-',cmbDeathCDEATH_D.Text),
        Before('-',cmbDeathODISEASE.Text),
        //fdm.cdsGetReport43Death.FieldByName('CDEATH_A').AsString,
        //fdm.cdsGetReport43Death.FieldByName('CDEATH_B').AsString,
        //fdm.cdsGetReport43Death.FieldByName('CDEATH_C').AsString,
        //fdm.cdsGetReport43Death.FieldByName('CDEATH_D').AsString,
        //fdm.cdsGetReport43Death.FieldByName('ODISEASE').AsString,
        Before('-',cmbDeathCDEATH.Text),
        //fdm.cdsGetReport43Death.FieldByName('CDEATH').AsString,
        TString(cmbDeathPREGDEATH.Items.Objects[cmbDeathPREGDEATH.ItemIndex]).Str,
        TString(cmbDeathPDEATH.Items.Objects[cmbDeathPDEATH.ItemIndex]).Str,
        //fdm.cdsGetReport43Death.FieldByName('PREGDEATH').AsString,
        //fdm.cdsGetReport43Death.FieldByName('PDEATH').AsString,
        fdm.cdsGetReport43Death.FieldByName('PROVIDER').AsString,
        fdm.cdsGetReport43Death.FieldByName('D_UPDATE').AsFloat
     );
   end;



   // update card
   if pgAll43File.Pages[3].TabVisible then
   if fdm.cdsGetReport43Card.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update card...');
     fdm.cdsGetReport43Card.Post;
     fdm.InsUpdCard(
        fdm.cdsGetReport43Card.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Card.FieldByName('HOSPCODE').AsString ,
        fdm.cdsGetReport43Card.FieldByName('PID').AsInteger,
        TString(cmbCardINSTYPEOLD.Items.Objects[cmbCardINSTYPEOLD.ItemIndex]).Str,
        TString(cmbCardINSTYP.Items.Objects[cmbCardINSTYP.ItemIndex]).Str,
        //fdm.cdsGetReport43Card.FieldByName('INSTYPE_OLD').AsString ,
        //fdm.cdsGetReport43Card.FieldByName('INSTYPE_NEW').AsString ,
        fdm.cdsGetReport43Card.FieldByName('INSID').AsString ,
        fdm.cdsGetReport43Card.FieldByName('STARTDATE').AsFloat,
        fdm.cdsGetReport43Card.FieldByName('EXPIREDATE').AsFloat ,
        TString(cmbCardMAIN.Items.Objects[cmbCardMAIN.ItemIndex]).Str,
        TString(cmbCardSUB.Items.Objects[cmbCardSUB.ItemIndex]).Str,
        //fdm.cdsGetReport43Card.FieldByName('MAIN').AsString ,
        //fdm.cdsGetReport43Card.FieldByName('SUB').AsString ,
        fdm.cdsGetReport43Card.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update drugallergy
   if pgAll43File.Pages[4].TabVisible then
   if fdm.cdsGetReport43Drugallergy.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update drugallergy...');
     fdm.cdsGetReport43Drugallergy.Post;
     fdm.InsUpdDrugallergy(
        fdm.cdsGetReport43Drugallergy.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Drugallergy.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43Drugallergy.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43Drugallergy.FieldByName('DATERECORD').AsFloat,
        fdm.cdsGetReport43Drugallergy.FieldByName('DRUGALLERGY').AsString ,
        fdm.cdsGetReport43Drugallergy.FieldByName('DNAME').AsString,
        TString(cmbDrugAllergyTYPEDX.Items.Objects[cmbDrugAllergyTYPEDX.ItemIndex]).Str,
        TString(cmbDrugAllergyALEVEL.Items.Objects[cmbDrugAllergyALEVEL.ItemIndex]).Str,
        TString(cmbDrugAllergySYMPTOM.Items.Objects[cmbDrugAllergySYMPTOM.ItemIndex]).Str,
        //fdm.cdsGetReport43Drugallergy.FieldByName('TYPEDX').AsString ,
        //fdm.cdsGetReport43Drugallergy.FieldByName('ALEVEL').AsString,
        //fdm.cdsGetReport43Drugallergy.FieldByName('SYMPTOM').AsString ,
        fdm.cdsGetReport43Drugallergy.FieldByName('INFORMANT').AsString ,
        fdm.cdsGetReport43Drugallergy.FieldByName('INFORMHOSP').AsString ,
        fdm.cdsGetReport43Drugallergy.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update accident
   if pgAll43File.Pages[8].TabVisible then
   if fdm.cdsGetReport43Accident.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update accident...');
     fdm.cdsGetReport43Accident.Post;
     fdm.InsUpdAccident(
        fdm.cdsGetReport43Accident.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Accident.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43Accident.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43Accident.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43Accident.FieldByName('DATETIME_SERV').AsFloat,
        fdm.cdsGetReport43Accident.FieldByName('DATETIME_AE').AsFloat,
        fdm.cdsGetReport43Accident.FieldByName('AETYPE').AsString,
        fdm.cdsGetReport43Accident.FieldByName('AEPLACE').AsString,
        fdm.cdsGetReport43Accident.FieldByName('TYPEIN_AE').AsString,
        fdm.cdsGetReport43Accident.FieldByName('TRAFFIC').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('VEHICLE').AsString,
        fdm.cdsGetReport43Accident.FieldByName('ALCOHOL').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('NACROTIC_DRUG').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('BELT').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('HELMET').AsString,
        fdm.cdsGetReport43Accident.FieldByName('AIRWAY').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('STOPBLEED').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('SPLINT').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('FLUID').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('URGENCY').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('COMA_EYE').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('COMA_SPEAK').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('COMA_MOVEMENT').AsString ,
        fdm.cdsGetReport43Accident.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update charge opd
   if pgAll43File.Pages[12].TabVisible then
   if fdm.cdsGetReport43ChargeOrd.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update charge opd...');
     fdm.cdsGetReport43ChargeOrd.Post;
     fdm.InsUpdChargeOpd(
        fdm.cdsGetReport43ChargeOrd.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43ChargeOrd.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43ChargeOrd.FieldByName('PID').AsInteger ,
        fdm.cdsGetReport43ChargeOrd.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43ChargeOrd.FieldByName('DATE_SERV').AsFloat ,
        TString(cmbChargeOpdCLINIC.Items.Objects[cmbChargeOpdCLINIC.ItemIndex]).Str,
        TString(cmbChargeOpdCHARGEITEM.Items.Objects[cmbChargeOpdCHARGEITEM.ItemIndex]).Str,
        //fdm.cdsGetReport43ChargeOrd.FieldByName('CLINIC').AsString ,
        //fdm.cdsGetReport43ChargeOrd.FieldByName('CHARGEITEM').AsString ,
        fdm.cdsGetReport43ChargeOrd.FieldByName('CHARGELIST').AsString,
        fdm.cdsGetReport43ChargeOrd.FieldByName('QUANTITY').AsInteger,
        TString(cmbChargeOpdINSTYPE.Items.Objects[cmbChargeOpdINSTYPE.ItemIndex]).Str,
        //fdm.cdsGetReport43ChargeOrd.FieldByName('INSTYPE').AsString ,
        fdm.cdsGetReport43ChargeOrd.FieldByName('COST').AsInteger ,
        fdm.cdsGetReport43ChargeOrd.FieldByName('PRICE').AsInteger ,
        fdm.cdsGetReport43ChargeOrd.FieldByName('PAYPRICE').AsInteger,
        fdm.cdsGetReport43ChargeOrd.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update admission
   if pgAll43File.Pages[13].TabVisible then
   if fdm.cdsGetReport43Admission.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update admission...');
     fdm.cdsGetReport43Admission.Post;
     fdm.InsUpdAdmission(
        fdm.cdsGetReport43Admission.FieldByName('REPORTID').AsInteger,
        TString(cmbAdmissionHOSPCODE.Items.Objects[cmbAdmissionHOSPCODE.ItemIndex]).Str,
        //fdm.cdsGetReport43Admission.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43Admission.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43Admission.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43Admission.FieldByName('AN').AsString ,
        fdm.cdsGetReport43Admission.FieldByName('DATETIME_ADMIT').AsFloat,
        TString(cmbAdmissionWARDADMIT.Items.Objects[cmbAdmissionWARDADMIT.ItemIndex]).Str,
        TString(cmbAdmissionINSTYPE.Items.Objects[cmbAdmissionINSTYPE.ItemIndex]).Str,
        TString(cmbAdmissionTYPEIN.Items.Objects[cmbAdmissionTYPEIN.ItemIndex]).Str,
        TString(cmbAdmissionREFEROUTHOSP.Items.Objects[cmbAdmissionREFEROUTHOSP.ItemIndex]).Str,
        TString(cmbAdmissonCAUSEIN.Items.Objects[cmbAdmissonCAUSEIN.ItemIndex]).Str,
        //fdm.cdsGetReport43Admission.FieldByName('WARDADMIT').AsString,
        //fdm.cdsGetReport43Admission.FieldByName('INSTYPE').AsString,
        //fdm.cdsGetReport43Admission.FieldByName('TYPEIN').AsString,
        //fdm.cdsGetReport43Admission.FieldByName('REFERINHOSP').AsString,
        //fdm.cdsGetReport43Admission.FieldByName('CAUSEIN').AsString,
        fdm.cdsGetReport43Admission.FieldByName('ADMITWEIGHT').AsInteger ,
        fdm.cdsGetReport43Admission.FieldByName('ADMITHEIGHT').AsInteger ,
        fdm.cdsGetReport43Admission.FieldByName('DATETIME_DISCH').AsFloat ,
        TString(cmbAdmissionWARDDISCH.Items.Objects[cmbAdmissionWARDDISCH.ItemIndex]).Str,
        TString(cmbAdmissionDISCHSTATUS.Items.Objects[cmbAdmissionDISCHSTATUS.ItemIndex]).Str,
        TString(cmbAdmissionDISCHTYPE.Items.Objects[cmbAdmissionDISCHTYPE.ItemIndex]).Str,
        TString(cmbAdmissionREFEROUTHOSP.Items.Objects[cmbAdmissionREFEROUTHOSP.ItemIndex]).Str,
        TString(cmbAdmissionCAUSEOUT.Items.Objects[cmbAdmissionCAUSEOUT.ItemIndex]).Str,
        //fdm.cdsGetReport43Admission.FieldByName('WARDDISCH').AsString ,
        //fdm.cdsGetReport43Admission.FieldByName('DISCHSTATUS').AsString ,
        //fdm.cdsGetReport43Admission.FieldByName('DISCHTYPE').AsString ,
        //fdm.cdsGetReport43Admission.FieldByName('REFEROUTHOSP').AsString ,
        //fdm.cdsGetReport43Admission.FieldByName('CAUSEOUT').AsString ,
        fdm.cdsGetReport43Admission.FieldByName('COST').AsInteger,
        fdm.cdsGetReport43Admission.FieldByName('PRICE').AsInteger ,
        fdm.cdsGetReport43Admission.FieldByName('PAYPRICE').AsInteger,
        fdm.cdsGetReport43Admission.FieldByName('ACTUALPAY').AsInteger ,
        fdm.cdsGetReport43Admission.FieldByName('PROVIDER').AsString ,
        fdm.cdsGetReport43Admission.FieldByName('D_UPDATE').AsFloat
      );
   end;


   // update diagnosis ipd
   if pgAll43File.Pages[14].TabVisible then
   if fdm.cdsGetReport43DiagnosisIpd.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update diagnosis ipd...');
     fdm.cdsGetReport43DiagnosisIpd.Post;
     fdm.InsUpdDiagnosisIpd(
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('AN').AsString ,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('DATETIME_ADMIT').AsFloat ,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('WARDDIAG').AsString,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('DIAGTYPE').AsString ,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('DIAGCODE').AsString ,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('PROVIDER').AsString ,
        fdm.cdsGetReport43DiagnosisIpd.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update procedure ipd
   if pgAll43File.Pages[15].TabVisible then
   if fdm.cdsGetReport43ProcedureIpd.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update procedure ipd...');
     fdm.cdsGetReport43ProcedureIpd.Post;
     fdm.InsUpdProcedureIpd(
        fdm.cdsGetReport43ProcedureIpd.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('AN').AsString,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('DATETIME_ADMIT').AsFloat,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('WARDSTAY').AsString,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('PROCEDCODE').AsString,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('TIMESTART').AsFloat,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('TIMEFINISH').AsFloat,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('SERVICEPRICE').AsInteger,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('PROVIDER').AsString ,
        fdm.cdsGetReport43ProcedureIpd.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update drug ipd
   if pgAll43File.Pages[16].TabVisible then
   if fdm.cdsGetReport43DrugIpd.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update drug ipd...');
     fdm.cdsGetReport43DrugIpd.Post;
     fdm.InsUpdDrugIpd(
        fdm.cdsGetReport43DrugIpd.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43DrugIpd.FieldByName('ORDER_NO').AsString,
        fdm.cdsGetReport43DrugIpd.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43DrugIpd.FieldByName('PID').AsInteger ,
        fdm.cdsGetReport43DrugIpd.FieldByName('AN').AsString ,
        fdm.cdsGetReport43DrugIpd.FieldByName('DATETIME_ADMIT').AsFloat,
        fdm.cdsGetReport43DrugIpd.FieldByName('WARDSTAY').AsString ,
        fdm.cdsGetReport43DrugIpd.FieldByName('TYPEDRUG').AsString,
        fdm.cdsGetReport43DrugIpd.FieldByName('DIDSTD').AsString,
        fdm.cdsGetReport43DrugIpd.FieldByName('DNAME').AsString ,
        fdm.cdsGetReport43DrugIpd.FieldByName('DATESTART').AsFloat ,
        fdm.cdsGetReport43DrugIpd.FieldByName('DATEFINISH').AsFloat ,
        fdm.cdsGetReport43DrugIpd.FieldByName('AMOUNT').AsInteger ,
        fdm.cdsGetReport43DrugIpd.FieldByName('UNIT').AsString ,
        fdm.cdsGetReport43DrugIpd.FieldByName('UNIT_PACKING').AsString ,
        fdm.cdsGetReport43DrugIpd.FieldByName('DRUGPRICE').AsInteger,
        fdm.cdsGetReport43DrugIpd.FieldByName('DRUGCOST').AsInteger,
        fdm.cdsGetReport43DrugIpd.FieldByName('PROVIDER').AsString,
        fdm.cdsGetReport43DrugIpd.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update charge ipd
   if pgAll43File.Pages[17].TabVisible then
   if fdm.cdsGetReport43ChargeIpd.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update charge ipd...');
     fdm.cdsGetReport43ChargeIpd.Post;
     fdm.InsUpdChargeIpd(
        fdm.cdsGetReport43ChargeIpd.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43ChargeIpd.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43ChargeIpd.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43ChargeIpd.FieldByName('AN').AsString,
        fdm.cdsGetReport43ChargeIpd.FieldByName('DATETIME_ADMIT').AsFloat,
        fdm.cdsGetReport43ChargeIpd.FieldByName('WARDSTAY').AsString ,
        fdm.cdsGetReport43ChargeIpd.FieldByName('CHARGEITEM').AsString ,
        fdm.cdsGetReport43ChargeIpd.FieldByName('CHARGELIST').AsString ,
        fdm.cdsGetReport43ChargeIpd.FieldByName('QUANTITY').AsInteger,
        fdm.cdsGetReport43ChargeIpd.FieldByName('INSTYPE').AsString ,
        fdm.cdsGetReport43ChargeIpd.FieldByName('COST').AsInteger ,
        fdm.cdsGetReport43ChargeIpd.FieldByName('PRICE').AsInteger,
        fdm.cdsGetReport43ChargeIpd.FieldByName('PAYPRICE').AsInteger,
        fdm.cdsGetReport43ChargeIpd.FieldByName('D_UPDATE').AsFloat
     );
   end;


   // update Surveillance
   if pgAll43File.Pages[18].TabVisible then
   if fdm.cdsGetReport43Surveillance.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update surveillance...');
     fdm.cdsGetReport43Surveillance.Post;
     fdm.InsUpdSurveillance(
        fdm.cdsGetReport43Surveillance.FieldByName('REPORTID').AsInteger ,
        fdm.cdsGetReport43Surveillance.FieldByName('HOSPCODE').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('PID').AsInteger ,
        fdm.cdsGetReport43Surveillance.FieldByName('SEQ').AsInteger ,
        fdm.cdsGetReport43Surveillance.FieldByName('DATE_SERV').AsFloat ,
        fdm.cdsGetReport43Surveillance.FieldByName('AN').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('DATETIME_ADMIT').AsFloat ,
        fdm.cdsGetReport43Surveillance.FieldByName('SYNDROME').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('DIAGCODE').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('CODE506').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('DIAGCODELAST').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('CODE506LAST').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('ILLDATE').AsDateTime,
        fdm.cdsGetReport43Surveillance.FieldByName('ILLHOUSE').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('ILLVILLAGE').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('ILLTAMBON').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('ILLAMPUR').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('ILLCHANGWAT').AsString ,
        fdm.cdsGetReport43Surveillance.FieldByName('LATITUDE').AsInteger ,
        fdm.cdsGetReport43Surveillance.FieldByName('LONGITUDE').AsInteger ,
        fdm.cdsGetReport43Surveillance.FieldByName('PTSTATUS').AsString,
        fdm.cdsGetReport43Surveillance.FieldByName('DATE_DEATH').AsDateTime ,
        fdm.cdsGetReport43Surveillance.FieldByName('COMPLICATION').AsString,
        fdm.cdsGetReport43Surveillance.FieldByName('ORGANISM').AsString,
        fdm.cdsGetReport43Surveillance.FieldByName('PROVIDER').AsString,
        fdm.cdsGetReport43Surveillance.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update newborn
   if pgAll43File.Pages[27].TabVisible then
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
   end;


   // update newborn care
   if pgAll43File.Pages[28].TabVisible then
   if fdm.cdsGetReport43NewbornCare.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update newborn care...');
     fdm.cdsGetReport43NewbornCare.Post;
     fdm.InsUpdNewbornCare(
        fdm.cdsGetReport43NewbornCare.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43NewbornCare.FieldByName('HOSPCODE').AsString ,
        fdm.cdsGetReport43NewbornCare.FieldByName('PID').AsInteger ,
        fdm.cdsGetReport43NewbornCare.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43NewbornCare.FieldByName('BDATE').AsFloat ,
        fdm.cdsGetReport43NewbornCare.FieldByName('BCARE').AsFloat ,
        fdm.cdsGetReport43NewbornCare.FieldByName('BCPLACE').AsString ,
        fdm.cdsGetReport43NewbornCare.FieldByName('BCARERESULT').AsString,
        fdm.cdsGetReport43NewbornCare.FieldByName('FOOD').AsString ,
        fdm.cdsGetReport43NewbornCare.FieldByName('PROVIDER').AsString ,
        fdm.cdsGetReport43NewbornCare.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update dental
   if pgAll43File.Pages[29].TabVisible then
   if fdm.cdsGetReport43Dental.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update dental...');
     fdm.cdsGetReport43Dental.Post;
     fdm.InsUpdDental(
        fdm.cdsGetReport43Dental.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Dental.FieldByName('HOSPCODE').AsString,
        fdm.cdsGetReport43Dental.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43Dental.FieldByName('SEQ').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('DATE_SERV').AsFloat ,
        fdm.cdsGetReport43Dental.FieldByName('DENTTYPE').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('SERVPLACE').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('PTEETH').AsInteger,
        fdm.cdsGetReport43Dental.FieldByName('PCARIES').AsInteger,
        fdm.cdsGetReport43Dental.FieldByName('PFILLING').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('PEXTRACT').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('DTEETH').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('DCARIES').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('DFILLING').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('DEXTRACT').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('NEED_FLUORIDE').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('NEED_SCALING').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('NEED_SEALANT').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('NEED_PFILLING').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('NEED_DFILLING').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('NEED_PEXTRACT').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('NEED_DEXTRACT').AsInteger {
        fdm.cdsGetReport43Dental.FieldByName('NPROSTHESIS').AsString,
        fdm.cdsGetReport43Dental.FieldByName('PERMANENT_PERMANENT').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('PERMANENT_PROSTHESIS').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('PROSTHESIS_PROSTHESIS').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('GUM').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('SCHOOLTYPE').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('CLASS').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('PROVIDER').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('D_UPDATE').AsFloat}
     );


     FDM.WriteLog('update dental-2...');
     fdm.InsUpdDental2(
        fdm.cdsGetReport43Dental.FieldByName('NPROSTHESIS').AsString,
        fdm.cdsGetReport43Dental.FieldByName('PERMANENT_PERMANENT').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('PERMANENT_PROSTHESIS').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('PROSTHESIS_PROSTHESIS').AsInteger ,
        fdm.cdsGetReport43Dental.FieldByName('GUM').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('SCHOOLTYPE').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('CLASS').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('PROVIDER').AsString ,
        fdm.cdsGetReport43Dental.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update ncdscreen
   if pgAll43File.Pages[31].TabVisible then
   if fdm.cdsGetReport43Ncdscreen.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update ncdscreen...');
     fdm.cdsGetReport43Ncdscreen.Post;
     fdm.InsUpdNcdscreen(
        fdm.cdsGetReport43Ncdscreen.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('HOSPCODE').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('SEQ').AsInteger ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('DATE_SERV').AsFloat ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('SERVPLACE').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('SMOKE').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('ALCOHOL').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('DMFAMILY').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('HTFAMILY').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('WEIGHT').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('HEIGHT').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('WAIST_CM').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('SBP_1').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('DBP_1').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('SBP_2').AsInteger,
        fdm.cdsGetReport43Ncdscreen.FieldByName('DBP_2').AsInteger ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('BSLEVEL').AsInteger ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('BSTEST').AsString,
        fdm.cdsGetReport43Ncdscreen.FieldByName('SCREENPLACE').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('PROVIDER').AsString ,
        fdm.cdsGetReport43Ncdscreen.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update labfu
   if pgAll43File.Pages[34].TabVisible then
   if fdm.cdsGetReport43LabFu.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update labfu...');
     fdm.cdsGetReport43LabFu.Post;
     fdm.InsUpdLabFu(
        fdm.cdsGetReport43LabFu.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43LabFu.FieldByName('HOSPCODE').AsString ,
        fdm.cdsGetReport43LabFu.FieldByName('PID').AsInteger,
        fdm.cdsGetReport43LabFu.FieldByName('SEQ').AsInteger,
        fdm.cdsGetReport43LabFu.FieldByName('DATE_SERV').AsFloat ,
        fdm.cdsGetReport43LabFu.FieldByName('LABTEST').AsString ,
        fdm.cdsGetReport43LabFu.FieldByName('LABRESULT').AsInteger ,
        fdm.cdsGetReport43LabFu.FieldByName('D_UPDATE').AsFloat
     );
   end;



   // update Address
   //if pgAll43File.Pages[1].TabVisible then
   if pgAll43File.Pages[0].TabVisible then
   if fdm.cdsGetReport43Address.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update address...');
     fdm.cdsGetReport43Address.Post;
     fdm.InsUpdAddress(
        fdm.cdsGetReport43Address.FieldByName('REPORTID').AsInteger,
        fdm.cdsGetReport43Address.FieldByName('HOSPCODE').AsString ,
        fdm.cdsGetReport43Address.FieldByName('PID').AsInteger ,
        TString(cmbAddrADDRESSTYPE.Items.Objects[cmbAddrADDRESSTYPE.ItemIndex]).Str,
        //fdm.cdsGetReport43Address.FieldByName('ADDRESSTYPE').AsString ,
        fdm.cdsGetReport43Address.FieldByName('HOUSE_ID').AsString ,
        TString(cmbAddrHOUSETYPE.Items.Objects[cmbAddrHOUSETYPE.ItemIndex]).Str,
        //fdm.cdsGetReport43Address.FieldByName('HOUSETYPE').AsString ,
        fdm.cdsGetReport43Address.FieldByName('ROOMNO').AsString,
        fdm.cdsGetReport43Address.FieldByName('CONDO').AsString ,
        fdm.cdsGetReport43Address.FieldByName('HOUSENO').AsString ,
        fdm.cdsGetReport43Address.FieldByName('SOISUB').AsString ,
        fdm.cdsGetReport43Address.FieldByName('SOIMAIN').AsString ,
        fdm.cdsGetReport43Address.FieldByName('ROAD').AsString,
        fdm.cdsGetReport43Address.FieldByName('VILLANAME').AsString ,
        fdm.cdsGetReport43Address.FieldByName('VILLAGE').AsString,
        TString(cmbAddrTAMBON.Items.Objects[cmbAddrTAMBON.ItemIndex]).Str,
        TString(cmbAddrAMPUR.Items.Objects[cmbAddrAMPUR.ItemIndex]).Str,
        //fdm.cdsGetReport43Address.FieldByName('TAMBON').AsString,
        //fdm.cdsGetReport43Address.FieldByName('AMPUR').AsString ,
        TString(cmbAddrProvince.Items.Objects[cmbAddrProvince.ItemIndex]).Str,
        //fdm.cdsGetReport43Address.FieldByName('CHANGWAT').AsString ,
        fdm.cdsGetReport43Address.FieldByName('TELEPHONE').AsString ,
        fdm.cdsGetReport43Address.FieldByName('MOBILE').AsString ,
        fdm.cdsGetReport43Address.FieldByName('D_UPDATE').AsFloat
     );
   end;


   // update home
   if pgAll43File.Pages[5].TabVisible then
   if fdm.cdsGetReport43Home.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update home-a...');
     fdm.cdsGetReport43Home.Post;
     fdm.InsUpdHomeA(
          fdm.cdsGetReport43Home.FieldByName('REPORTID').AsInteger ,
          fdm.cdsGetReport43Home.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Home.FieldByName('HID').AsString ,
          fdm.cdsGetReport43Home.FieldByName('HOUSE_ID').AsString,
          TString(cmbHomeHOUSETYPE.Items.Objects[cmbHomeHOUSETYPE.ItemIndex]).Str,
          //fdm.cdsGetReport43Home.FieldByName('HOUSETYPE').AsString,
          fdm.cdsGetReport43Home.FieldByName('ROOMNO').AsString ,
          fdm.cdsGetReport43Home.FieldByName('CONDO').AsString,
          fdm.cdsGetReport43Home.FieldByName('HOUSE').AsString ,
          fdm.cdsGetReport43Home.FieldByName('SOISUB').AsString,
          fdm.cdsGetReport43Home.FieldByName('SOIMAIN').AsString ,
          fdm.cdsGetReport43Home.FieldByName('ROAD').AsString ,
          fdm.cdsGetReport43Home.FieldByName('VILLANAME').AsString ,
          fdm.cdsGetReport43Home.FieldByName('VILLAGE').AsString ,
          TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,
          TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str,
          TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,
          //fdm.cdsGetReport43Home.FieldByName('TAMBON').AsString,
          //fdm.cdsGetReport43Home.FieldByName('AMPUR').AsString ,
          //fdm.cdsGetReport43Home.FieldByName('CHANGWAT').AsString ,
          fdm.cdsGetReport43Home.FieldByName('TELEPHONE').AsString ,
          fdm.cdsGetReport43Home.FieldByName('LATITUDE').AsInteger ,
          fdm.cdsGetReport43Home.FieldByName('LONGITUDE').AsInteger,
          fdm.cdsGetReport43Home.FieldByName('NFAMILY').AsString
     );


     FDM.WriteLog('update home-b...');
     fdm.InsUpdHomeB(
          //fdm.cdsGetReport43Home.FieldByName('LOCATYPE').AsString,
          TString(cmbHomeLOCATYPE.Items.Objects[cmbHomeLOCATYPE.ItemIndex]).Str,
          fdm.cdsGetReport43Home.FieldByName('VHVID').AsString,
          fdm.cdsGetReport43Home.FieldByName('HEADID').AsString ,

          TString(cmbHomeTOILET.Items.Objects[cmbHomeTOILET.ItemIndex]).Str,
          TString(cmbHomeWATER.Items.Objects[cmbHomeWATER.ItemIndex]).Str,
          TString(cmbHomeWATERTYPE.Items.Objects[cmbHomeWATERTYPE.ItemIndex]).Str,
          TString(cmbHomeGARBAGE.Items.Objects[cmbHomeGARBAGE.ItemIndex]).Str,
          TString(cmbHomeHOUSING.Items.Objects[cmbHomeHOUSING.ItemIndex]).Str,

          TString(cmbHomeDURABILITY.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
          TString(cmbHomeCLEANLINESS.Items.Objects[cmbHomeCLEANLINESS.ItemIndex]).Str,
          TString(cmbHomeVENTILATION.Items.Objects[cmbHomeVENTILATION.ItemIndex]).Str,

          TString(cmbHomeLIGHT.Items.Objects[cmbHomeLIGHT.ItemIndex]).Str,
          TString(cmbHomeWATERTM.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
          TString(cmbHomeMFOOD.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
          TString(cmbHomeBCONTROL.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
          TString(cmbHomeACONTROL.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
          TString(cmbHomeCHEMICAL.Items.Objects[cmbHomeCHEMICAL.ItemIndex]).Str,

          //fdm.cdsGetReport43Home.FieldByName('TOILET').AsString,
          //fdm.cdsGetReport43Home.FieldByName('WATER').AsString,
          //fdm.cdsGetReport43Home.FieldByName('WATERTYPE').AsString ,
          //fdm.cdsGetReport43Home.FieldByName('GARBAGE').AsString,
          //fdm.cdsGetReport43Home.FieldByName('HOUSING').AsString ,

          //fdm.cdsGetReport43Home.FieldByName('DURABILITY').AsString ,
          //fdm.cdsGetReport43Home.FieldByName('CLEANLINESS').AsString,
          //fdm.cdsGetReport43Home.FieldByName('VENTILATION').AsString ,

          //fdm.cdsGetReport43Home.FieldByName('LIGHT').AsString ,
          //fdm.cdsGetReport43Home.FieldByName('WATERTM').AsString,
          //fdm.cdsGetReport43Home.FieldByName('MFOOD').AsString,
          //fdm.cdsGetReport43Home.FieldByName('BCONTROL').AsString ,
          //fdm.cdsGetReport43Home.FieldByName('ACONTROL').AsString ,
          //fdm.cdsGetReport43Home.FieldByName('CHEMICAL').AsString ,
          fdm.cdsGetReport43Home.FieldByName('OUTDATE').AsDateTime ,
          fdm.cdsGetReport43Home.FieldByName('D_UPDATE').AsFloat
     );
   end;









   ShowMessage('update success');
except
  on ee:Exception do
    ShowMessage(ee.message);

end;
 // ShowMessage('NAME='+FDM.cdsGetReport43Person.FieldByName('NAME').AsString);



 {
  if fdm.InsUpdPerson(FDM.cdsGetReport43Person.FieldByName('PID').AsString,FDM.cdsGetReport43Person.FieldByName('CID').AsString,
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

    }
end;

procedure TfrmRp43OPD01Grid.btnRefreshClick(Sender: TObject);
var defaltPersonArea:integer;
begin

  cmbDepartmentSelect(sender);

  //RsetComboBox;
  //initial([1,2,3,4,5]);
  //initial(FileArrNum);

  //exit;

  //inherited;
  {

  fdm.cdsGetReport43Person.close;
  fdm.HisGetReport43Person(strtoint(edPID.text));
  fdm.cdsGetReport43Person.open;


  fdm.cdsGetReport43Service.close;
  fdm.HisGetReport43Service(strtoint(edPID.text));
  fdm.cdsGetReport43Service.open;

  }

  {
    fdm.cdsKeywords.close;
    fdm.getKeywords('RACE');
    fdm.cdsKeywords.Open;
  }


  //cmbAppIcd10.Items.Clear;




  (*





  FDM.cdsGetReport43Person.close;
  FDM.getPerson(edSearchCID.text);
  FDM.cdsGetReport43Person.open;

  fdm.cdsGetReport43AddressList.close;
  fdm.getAddressList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43AddressList.open;


  cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonSEX.AsString,true);

  cmbRace.ItemIndex         := fdm.loadCmbItems(cmbRace.Items,'PERSON','RACE','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRACE.AsString,true);
  cmbNation.ItemIndex       := fdm.loadCmbItems(cmbNation.Items,'PERSON','NATION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonNATION.AsString,true);
  cmbAbogroup.ItemIndex     := fdm.loadCmbItems(cmbAbogroup.Items,'PERSON','ABOGROUP','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonABOGROUP.AsString,false);
  cmbRhGroup.ItemIndex      := fdm.loadCmbItems(cmbRhGroup.Items,'PERSON','RHGROUP','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRHGROUP.AsString,false);
  cmbOccupationOld.ItemIndex:= fdm.loadCmbItems(cmbOccupationOld.Items,'PERSON','OCCUPATION_OLD','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonOCCUPATION_OLD.AsString,true);
  cmbOccupationNew.ItemIndex:= fdm.loadCmbItems(cmbOccupationNew.Items,'PERSON','OCCUPATION_NEW','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonOCCUPATION_NEW.AsString,true);
  cmbEducation.ItemIndex    := fdm.loadCmbItems(cmbEducation.Items,'PERSON','EDUCATION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonEDUCATION.AsString,true);
  cmbReligion.ItemIndex     := fdm.loadCmbItems(cmbReligion.Items,'PERSON','RELIGION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRELIGION.AsString,true);
  cmbVstatus.ItemIndex      := fdm.loadCmbItems(cmbVstatus.Items,'PERSON','VSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonVSTATUS.AsString,false);
  cmbMSTATUS.ItemIndex      := fdm.loadCmbItems(cmbMSTATUS.Items,'PERSON','MSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonMSTATUS.AsString,false);
  cmbFStatus.ItemIndex      := fdm.loadCmbItems(cmbFStatus.Items,'PERSON','FSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonFSTATUS.AsString,false);
  cmbDISCHARGE.ItemIndex    := fdm.loadCmbItems(cmbDISCHARGE.Items,'PERSON','DISCHARGE','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonDISCHARGE.AsString,false);

  // set defalt area for person
  defaltPersonArea:=4;
  if FDM.checkPersonArea1(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=1;
  if FDM.checkPersonArea2(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=2;
  if FDM.checkPersonArea3(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=3;
  if FDM.checkPersonArea4(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=4;
  if FDM.checkPersonArea5(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=5;


  FDM.cdsGetReport43Person.edit;
  FDM.cdsGetReport43PersonTYPEAREA.AsInteger:=defaltPersonArea;
  FDM.cdsGetReport43Person.Post;


  cmbPersonTypeArea.ItemIndex
    := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);

    {
  cmbServiceREFERINHOSP.ItemIndex
    := fdm.loadCmbItems(cmbServiceREFERINHOSP.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43ServiceListMAIN.AsString,false);
  cmbServiceREFERINHOSP.ItemIndex
    := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);
  cmbPersonTypeArea.ItemIndex
    := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);
    }

  //


  fdm.cdsGetReport43ServiceList.close;
  fdm.getServiceList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43ServiceList.open;


  fdm.cdsGetReport43DiagnosisOpdList.close;
  fdm.getDiagnosisOpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43DiagnosisOpdList.Open;

  fdm.cdsGetReport43ProcedureOpdList.close;
  fdm.getProcedureOpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43ProcedureOpdList.open;

  fdm.cdsGetReport43DrugListOpd.close;
  fdm.getDrugOpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43DrugListOpd.open;

  fdm.cdsGetReport43AppointmentList.close;
  fdm.getAppointmentList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43AppointmentList.open;


  fdm.cdsGetReport43AncList.close;
  fdm.getAncList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43AncList.open;

  fdm.cdsGetReport43PrenatalList.close;
  fdm.getPrenatalList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43PrenatalList.open;

  fdm.cdsGetReport43PostnatalList.close;
  fdm.getPostnatalList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43PostnatalList.open;

  fdm.cdsGetReport43LabOrList.close;
  fdm.getLabOrList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43LabOrList.open;

  fdm.cdsGetReport43LabOrList.close;
  fdm.getLabOrList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43LabOrList.open;

  fdm.cdsGetReport43WomenList.close;
  fdm.getWomenList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43WomenList.open;

  fdm.cdsGetReport43FpList.close;
  fdm.getFpList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43FpList.open;

  fdm.cdsGetReport43EpiList.close;
  fdm.getEpiList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43EpiList.open;

  fdm.cdsGetReport43IcfList.close;
  fdm.getIcfList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43IcfList.open;

  fdm.cdsGetReport43SpecialPpList.close;
  fdm.getSpecialPpList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43SpecialPpList.open;

  fdm.cdsGetReport43ChronicList.close;
  fdm.getChronicList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43ChronicList.open;

  fdm.cdsGetReport43ChronicFuList.close;
  fdm.getChronicFuList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43ChronicFuList.open;

  fdm.cdsGetReport43NutritionList.close;
  fdm.getNutritionList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43NutritionList.open;

  fdm.cdsGetReport43DeathList.close;
  fdm.getDeathList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43DeathList.open;

  if fdm.cdsGetReport43DeathList.RecordCount>0 then
  begin
    cmbDeathCDEATH_A.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_A.Items,'',fdm.cdsGetReport43DeathCDEATH_A.AsString,true);
    cmbDeathCDEATH_B.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_B.Items,'',fdm.cdsGetReport43DeathCDEATH_B.AsString,true);
    cmbDeathCDEATH_C.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_C.Items,'',fdm.cdsGetReport43DeathCDEATH_C.AsString,true);
    cmbDeathCDEATH_D.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_D.Items,'',fdm.cdsGetReport43DeathCDEATH_D.AsString,true);
    cmbDeathODISEASE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathODISEASE.Items,'',fdm.cdsGetReport43DeathODISEASE.AsString,true);
    cmbDeathCDEATH.ItemIndex   := fdm.getIcd10List2CmbItems(cmbDeathCDEATH.Items,'',fdm.cdsGetReport43DeathCDEATH.AsString,true);
  end;


  fdm.cdsGetReport43CardList.close;
  fdm.getCardList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43CardList.open;

  fdm.cdsGetReport43DrugallergyList.close;
  fdm.getDugallergyList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43DrugallergyList.open;

  fdm.cdsGetReport43AccidentList.close;
  fdm.getAccidentList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43AccidentList.open;

  fdm.cdsGetReport43ChargeOrdList.close;
  fdm.getChargeOpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43ChargeOrdList.open;

  fdm.cdsGetReport43AdmissionList.close;
  fdm.getAdmissionList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43AdmissionList.open;

  fdm.cdsGetReport43DiagnosisIpdList.close;
  fdm.getDiagnosisIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43DiagnosisIpdList.open;

  fdm.cdsGetReport43ProcedureIpdList.close;
  fdm.getProcedureIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43ProcedureIpdList.open;

  fdm.cdsGetReport43DrugIpdList.close;
  fdm.getDrugIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43DrugIpdList.open;

  fdm.cdsGetReport43ChargeIpdList.close;
  fdm.getChargeIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43ChargeIpdList.open;

  fdm.cdsGetReport43SurveillanceList.close;
  fdm.getSurveillanceList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43SurveillanceList.open;

  fdm.cdsGetReport43NewbornList.close;
  fdm.getNewbornList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43NewbornList.open;



  fdm.cdsGetReport43NewbornCareList.close;
  fdm.getNewbornCareList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43NewbornCareList.open;

  fdm.cdsGetReport43DentalList.close;
  fdm.getDentalList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43DentalList.open;

  fdm.cdsGetReport43NcdscreenList.close;
  fdm.getNcdscreenList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43NcdscreenList.open;

  fdm.cdsGetReport43LabFuList.close;
  fdm.getLabFuList(fdm.cdsGetReport43PersonPID.AsInteger);
  fdm.cdsGetReport43LabFuList.open;



  fdm.cdsGetReport43HomeList.close;
  fdm.getHomeList('00','00','00');
  fdm.cdsGetReport43HomeList.open;

  *)



  // ShowMessage(inttostr(fdm.cdsGetReport43DiagnosisOpdList);

  // FDM.cdsGetReport43Service.close;
  // fdm.getService(267638,645);
  // fdm.getService(fdm.cdsGetReport43PersonPID.AsInteger,);
  // FDM.cdsGetReport43Service.open;


end;

procedure TfrmRp43OPD01Grid.btnSyncClick(Sender: TObject);
begin
  inherited;
  if trim(edSearchCID.Text)='' then exit;
  syncIfx(pagesIndex[cmbDepartment.ItemIndex]);

  btnRefreshClick(sender);

  {
  if trim(edSearchCID.Text)='' then exit;

  fdm.syncPerson(edSearchCID.Text);
  if fdm.cdsGetReport43Person.RecordCount>0 then
    begin
      fdm.syncCardList(fdm.cdsGetReport43PersonPID.AsInteger);
      fdm.syncAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
      fdm.syncAddressType2(fdm.cdsGetReport43PersonPID.AsInteger);
    end;
    }
end;

procedure TfrmRp43OPD01Grid.cmbAbogroupSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonABOGROUP.AsString
    :=Before('-',TString(cmbAbogroup.Items.Objects[cmbAbogroup.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrADDRESSTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Address.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Address.edit;
    fdm.cdsGetReport43AddressADDRESSTYPE.AsString
      :=Before('-',TString(cmbAddrADDRESSTYPE.Items.Objects[cmbAddrADDRESSTYPE.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrAMPUR1Select(Sender: TObject);
begin
  inherited;
  cmbAddrTAMBON1.Items.Clear;

  cmbAddrTAMBON1.ItemIndex
  := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str,TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str
  ,fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43AddressType1.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
    fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString
      :=Before('-',TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrAMPUR2Select(Sender: TObject);
begin
  inherited;
  cmbAddrTAMBON2.Items.Clear;

  cmbAddrTAMBON2.ItemIndex := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
    fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString
      :=Before('-',TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrAMPURSelect(Sender: TObject);
begin
  inherited;
  //ShowMessage(inttostr(cmbAddrAMPUR.ItemIndex));
  cmbAddrTAMBON.Items.Clear;


  cmbAddrTAMBON.ItemIndex := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON.Items,TString(cmbAddrProvince.Items.Objects[cmbAddrProvince.ItemIndex]).Str,TString(cmbAddrAMPUR.Items.Objects[cmbAddrAMPUR.ItemIndex]).Str,fdm.cdsGetReport43AddressTAMBON.AsString,true);

  if not (fdm.cdsGetReport43Address.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Address.edit;
    fdm.cdsGetReport43AddressAMPUR.AsString
      :=Before('-',TString(cmbAddrAMPUR.Items.Objects[cmbAddrAMPUR.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbAddrHOUSETYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Address.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Address.edit;
    fdm.cdsGetReport43AddressHOUSETYPE.AsString
      :=Before('-',TString(cmbAddrHOUSETYPE.Items.Objects[cmbAddrHOUSETYPE.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrProvince1Select(Sender: TObject);
begin
  inherited;

  cmbAddrAMPUR1.Items.Clear;

  cmbAddrAMPUR1.ItemIndex
  := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str,fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString,true);


  if not (fdm.cdsGetReport43AddressType1.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType1.edit;
    fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString
      :=Before('-',TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrProvince2Select(Sender: TObject);
begin
  inherited;
  cmbAddrAMPUR2.Items.Clear;

  cmbAddrAMPUR2.ItemIndex
  := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString,true);


  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
    fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString
      :=Before('-',TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrProvinceSelect(Sender: TObject);
begin
  inherited;
  //ShowMessage(inttostr(cmbAddrProvince.ItemIndex));
  cmbAddrAMPUR.Items.Clear;

  cmbAddrAMPUR.ItemIndex
  := fdm.loadAmpList2CmbItems(cmbAddrAMPUR.Items,TString(cmbAddrProvince.Items.Objects[cmbAddrProvince.ItemIndex]).Str,fdm.cdsGetReport43AddressAMPUR.AsString,true);


  if not (fdm.cdsGetReport43Address.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Address.edit;
    fdm.cdsGetReport43AddressCHANGWAT.AsString
      :=Before('-',TString(cmbAddrProvince.Items.Objects[cmbAddrProvince.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbAddrTAMBON1Select(Sender: TObject);
begin
  inherited;
  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;

  cmbAddrAMPUR1.Items.Clear;
  cmbAddrProvince1.Items.Clear;

  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbAddrAMPUR1.ItemIndex
      := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str,true);
    cmbAddrProvince1.ItemIndex
      := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43AddressType1.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType1.edit;
    fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString
      :=Before('-',TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrTAMBON2Select(Sender: TObject);
begin
  inherited;

  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;

  cmbAddrAMPUR2.Items.Clear;
  cmbAddrProvince2.Items.Clear;

  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbAddrAMPUR2.ItemIndex
      := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str,true);
    cmbAddrProvince2.ItemIndex
      := fdm.loadProviceList2CmbItems(cmbAddrProvince2.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
    fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString
      :=Before('-',TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbAddrTAMBONSelect(Sender: TObject);
begin
  inherited;
  //ShowMessage(inttostr(cmbAddrTAMBON.ItemIndex));

  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbAddrTAMBON.Items.Objects[cmbAddrTAMBON.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;

  cmbAddrAMPUR.Items.Clear;
  cmbAddrProvince.Items.Clear;

  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbAddrAMPUR.ItemIndex
      := fdm.loadAmpList2CmbItems(cmbAddrAMPUR.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbAddrTAMBON.Items.Objects[cmbAddrTAMBON.ItemIndex]).Str,true);
    cmbAddrProvince.ItemIndex
      := fdm.loadProviceList2CmbItems(cmbAddrProvince.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43Address.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Address.edit;
    fdm.cdsGetReport43AddressTAMBON.AsString
      :=TString(cmbAddrTAMBON.Items.Objects[cmbAddrTAMBON.ItemIndex]).Str;


end;

procedure TfrmRp43OPD01Grid.cmbAdmissionCAUSEOUTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('CAUSEOUT').AsString
     :=TString(cmbAdmissionCAUSEOUT.Items.Objects[cmbAdmissionCAUSEOUT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionDISCHSTATUSSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('DISCHSTATUS').AsString
     :=TString(cmbAdmissionDISCHSTATUS.Items.Objects[cmbAdmissionDISCHSTATUS.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionDISCHTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('DISCHTYPE').AsString
     :=TString(cmbAdmissionDISCHTYPE.Items.Objects[cmbAdmissionDISCHTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionHOSPCODESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('HOSPCODE').AsString
     :=TString(cmbServiceREFERINHOSP.Items.Objects[cmbServiceREFERINHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionINSTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('INSTYPE').AsString
     :=TString(cmbAdmissionINSTYPE.Items.Objects[cmbAdmissionINSTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionREFERINHOSPSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('REFERINHOSP').AsString
     :=TString(cmbAdmissionREFERINHOSP.Items.Objects[cmbAdmissionREFERINHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionREFEROUTHOSPSelect(
  Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('REFEROUTHOSP').AsString
     :=TString(cmbAdmissionREFEROUTHOSP.Items.Objects[cmbAdmissionREFEROUTHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionTYPEINSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('TYPEIN').AsString
     :=TString(cmbAdmissionTYPEIN.Items.Objects[cmbAdmissionTYPEIN.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionWARDADMITSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('WARDADMIT').AsString
     :=TString(cmbAdmissionWARDADMIT.Items.Objects[cmbAdmissionWARDADMIT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissionWARDDISCHSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('WARDDISCH').AsString
     :=TString(cmbAdmissionWARDDISCH.Items.Objects[cmbAdmissionWARDDISCH.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbAdmissonCAUSEINSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AdmissionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AdmissionList.edit;
     fdm.cdsGetReport43AdmissionList.FieldByName('CAUSEIN').AsString
     :=TString(cmbAdmissonCAUSEIN.Items.Objects[cmbAdmissonCAUSEIN.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbALCOHOLSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NcdscreenList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NcdscreenList.edit;
  fdm.cdsGetReport43NcdscreenList.FieldByName('ALCOHOL').AsString:=TString(cmbALCOHOL.Items.Objects[cmbALCOHOL.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbAncANCNOSelect(Sender: TObject);
begin
  inherited;
  if fdm.cdsGetReport43Anc.Active then
  begin
    if not (fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Anc.edit;
       fdm.cdsGetReport43AncANCNO.AsString
      :=TString(cmbAncANCNO.Items.Objects[cmbAncANCNO.ItemIndex]).Str;
  end;
end;

procedure TfrmRp43OPD01Grid.cmbAncANCPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Anc.edit;
  fdm.cdsGetReport43AncANCPLACE.AsString:=TString(cmbAncANCPLACE.Items.Objects[cmbAncANCPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbAncANCRESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Anc.edit;
  fdm.cdsGetReport43AncANCRESULT.AsString:=TString(cmbAncANCRESULT.Items.Objects[cmbAncANCRESULT.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbAppIcd10KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);
end;

procedure TfrmRp43OPD01Grid.cmbAppIcd10Select(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Appointment.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Appointment.edit;
  fdm.cdsGetReport43AppointmentAPDIAG.AsString:=Before('-',TString(cmbAppIcd10.Items.Objects[cmbAppIcd10.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.CmbBCARERESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NewbornCareList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornCareList.edit;
  fdm.cdsGetReport43NewbornCareListBCARERESULT.AsString:=TString(CmbBCARERESULT.Items.Objects[CmbBCARERESULT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.CmbBCPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NewbornCareList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornCareList.edit;
  fdm.cdsGetReport43NewbornCareListBCPLACE.AsString:=TString(CmbBCPLACE.Items.Objects[CmbBCPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.CmbBottleSelect(Sender: TObject);
begin
  inherited;
 if not (fdm.cdsGetReport43NutritionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NutritionList.edit;
  fdm.cdsGetReport43NutritionListBOTTLE.AsString:=TString(CmbBottle.Items.Objects[CmbBottle.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.CmbBSTESTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NcdscreenList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NcdscreenList.edit;
  fdm.cdsGetReport43NcdscreenList.FieldByName('BSTEST').AsString:=TString(CmbBSTEST.Items.Objects[CmbBSTEST.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbCardINSTYPEOLDSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Card.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Card.edit;
    fdm.cdsGetReport43CardINSTYPE_OLD.AsString
      :=Before('-',TString(cmbCardINSTYPEOLD.Items.Objects[cmbCardINSTYPEOLD.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbCardINSTYPSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Card.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Card.edit;
    fdm.cdsGetReport43CardINSTYPE_NEW.AsString
      :=Before('-',TString(cmbCardINSTYP.Items.Objects[cmbCardINSTYP.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbCardMAINSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Card.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Card.edit;
    fdm.cdsGetReport43CardMAIN.AsString
      :=Before('-',TString(cmbCardMAIN.Items.Objects[cmbCardMAIN.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbCardSUBSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Card.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Card.edit;
    fdm.cdsGetReport43CardSUB.AsString
      :=Before('-',TString(cmbCardSUB.Items.Objects[cmbCardSUB.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.CmbChilddevelopSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NutritionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NutritionList.edit;
  fdm.cdsGetReport43NutritionListCHILDDEVELOP.AsString:=TString(CmbChilddevelop.Items.Objects[CmbChilddevelop.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43AccidentListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
//
end;

procedure TfrmRp43OPD01Grid.dsGetReport43AddressListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  fdm.cdsGetReport43Address.close;
  fdm.getAddress(fdm.cdsGetReport43AddressListREPORTID.AsInteger);
  fdm.cdsGetReport43Address.open;

  if fdm.cdsGetReport43Address.RecordCount>0 then
  begin
    cmbAddrProvince.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince.Items,0,fdm.cdsGetReport43AddressCHANGWAT.AsString,true);
    cmbAddrAMPUR.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR.Items,'',fdm.cdsGetReport43AddressAMPUR.AsString,true);
    cmbAddrTAMBON.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON.Items,'','',fdm.cdsGetReport43AddressTAMBON.AsString,true);

    cmbAddrADDRESSTYPE.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressADDRESSTYPE.AsString,true);
    cmbAddrHOUSETYPE.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressHOUSETYPE.AsString,true);
  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43AdmissionListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  with fdm do
  begin
    cdsGetReport43Admission.close;
    getAdmission(cdsGetReport43AdmissionList.FieldByName('REPORTID').AsInteger);
    cdsGetReport43Admission.open;

    if (FDM.cdsGetReport43Admission.RecordCount>0)  and not (FDM.cdsGetReport43Admission.State in [dsEdit,dsInsert])then
    begin

      cmbAdmissionHOSPCODE.ItemIndex:=loadHospNameList2CmbItems(cmbAdmissionHOSPCODE.Items,cdsGetReport43AdmissionList.FieldByName('HOSPCODE').AsString,true);
      cmbAdmissionWARDADMIT.ItemIndex:=loadCmbItems(cmbAdmissionWARDADMIT.Items,'*','WARD','43FILE_CODE','NAME1',cdsGetReport43AdmissionList.FieldByName('WARDADMIT').AsString,true);
      cmbAdmissionINSTYPE.ItemIndex:=loadCmbItems(cmbAdmissionINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1',cdsGetReport43AdmissionList.FieldByName('INSTYPE').AsString,true);

      cmbAdmissionTYPEIN.ItemIndex:=loadCmbItems(cmbAdmissionTYPEIN.Items,'SERVICE','TYPEIN','43FILE_CODE','NAME1', cdsGetReport43AdmissionList.FieldByName('TYPEIN').AsString,true);
      cmbAdmissionREFERINHOSP.ItemIndex:=loadHospNameList2CmbItems(cmbAdmissionREFERINHOSP.Items,cdsGetReport43AdmissionList.FieldByName('REFERINHOSP').AsString,true);
      cmbAdmissonCAUSEIN.ItemIndex:=loadCmbItems(cmbAdmissonCAUSEIN.Items,'SERVICE','CAUSEIN','43FILE_CODE','NAME1', cdsGetReport43AdmissionList.FieldByName('CAUSEIN').AsString,true);

      cmbAdmissionWARDDISCH.ItemIndex := loadCmbItems(cmbAdmissionWARDDISCH.Items,'*','WARD','43FILE_CODE','NAME1',cdsGetReport43AdmissionList.FieldByName('WARDDISCH').AsString,true);
      cmbAdmissionDISCHSTATUS.ItemIndex := loadCmbItems(cmbAdmissionDISCHSTATUS.Items,'ADMISSION','DISCHSTATUS','43FILE_CODE','NAME1',cdsGetReport43AdmissionList.FieldByName('DISCHSTATUS').AsString,true);
      cmbAdmissionDISCHTYPE.ItemIndex := loadCmbItems(cmbAdmissionDISCHTYPE.Items,'ADMISSION','DISCHTYPE','43FILE_CODE','NAME1',cdsGetReport43AdmissionList.FieldByName('DISCHTYPE').AsString,true);

      cmbAdmissionREFEROUTHOSP.ItemIndex := loadCmbItems(cmbAdmissionREFEROUTHOSP.Items,'ADMISSION','DISCHTYPE','43FILE_CODE','NAME1',cdsGetReport43AdmissionList.FieldByName('REFEROUTHOSP').AsString,true);
      cmbAdmissionCAUSEOUT.ItemIndex := loadCmbItems(cmbAdmissionCAUSEOUT.Items,'SERVICE','CAUSEOUT','43FILE_CODE','NAME1',cdsGetReport43AdmissionList.FieldByName('CAUSEOUT').AsString,true);
    end;
  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43AncListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if FDM.cdsGetReport43AncList.RecordCount>0 then
  begin
    cmbAncANCRESULT.ItemIndex:=fdm.loadCmbItems(cmbAncANCRESULT.Items,'ANC','ANCRESULT','43FILE_CODE','NAME1', fdm.cdsGetReport43AncLISTANCRESULT.AsString,true);
    cmbAncANCPLACE.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbAncANCPLACE.Items,fdm.cdsGetReport43AncLISTANCPLACE.AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43AppointmentDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  cmbAppAPTYPE.ItemIndex := fdm.loadCmbItems(cmbAppAPTYPE.Items,'APPOINTMENT','APTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AppointmentAPTYPE.AsString,true);
  cmbAppCLINIC.ItemIndex := fdm.loadCmbItems(cmbAppCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43AppointmentCLINIC.AsString,true);

  if cmbAppIcd10.Items.Count>0  then
  begin
   // if TString(cmbAppIcd10.Items.Objects[cmbAppIcd10.ItemIndex]).str<>fdm.cdsGetReport43AppointmentAPDIAG.AsString then
   //   cmbAppIcd10.ItemIndex := fdm.getIcd10List2CmbItems(cmbAppIcd10.Items,'',fdm.cdsGetReport43AppointmentAPDIAG.AsString,true);
  end else
  begin
      cmbAppIcd10.ItemIndex := fdm.getIcd10List2CmbItems(cmbAppIcd10.Items,'',fdm.cdsGetReport43AppointmentAPDIAG.AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43AppointmentListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (dsGetReport43AppointmentList.DataSet.RecordCount >0) AND not (FDM.cdsGetReport43AppointmentList.State in [dsInsert,dsEdit]) then

  cmbAppIcd10.ItemIndex := fdm.getIcd10List2CmbItems(cmbAppIcd10.Items,'',fdm.cdsGetReport43AppointmentlistAPDIAG.AsString,true);
  cmbAppAPTYPE.ItemIndex := fdm.loadCmbItems(cmbAppAPTYPE.Items,'APPOINTMENT','APTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AppointmentlistAPTYPE.AsString,true);
  cmbAppCLINIC.ItemIndex := fdm.loadCmbItems(cmbAppCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43AppointmentlistCLINIC.AsString,true);

end;

procedure TfrmRp43OPD01Grid.dsGetReport43CardListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  fdm.cdsGetReport43Card.close;
  fdm.getCard(FDM.cdsGetReport43CardListREPORTID.AsInteger);
  fdm.cdsGetReport43Card.open;

  if fdm.cdsGetReport43Card.RecordCount>0 then
  begin
    cmbCardINSTYPEOLD.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYPEOLD.Items,'CARD','INSTYPE_OLD','43FILE_CODE','NAME1', fdm.cdsGetReport43CardINSTYPE_OLD.AsString,true);
    cmbCardINSTYP.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYP.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43CardINSTYPE_NEW.AsString,true);
    cmbCardMAIN.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardMAIN.Items,fdm.cdsGetReport43CardMAIN.AsString,true);
    cmbCardSUB.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardSUB.Items,fdm.cdsGetReport43CardSUB.AsString,true);
  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43ChargeOpdDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  cmbChargeOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbChargeOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43ChargeOrd.FieldByName('CLINIC').AsString,true);
  cmbChargeOpdINSTYPE.ItemIndex   := fdm.loadCmbItems(cmbChargeOpdINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43ChargeOrd.FieldByName('INSTYPE').AsString,true);
  cmbChargeOpdCHARGEITEM.ItemIndex   := fdm.loadCmbItems(cmbChargeOpdCHARGEITEM.Items,'*','CHARGEITEM','43FILE_CODE','NAME1', fdm.cdsGetReport43ChargeOrd.FieldByName('CHARGEITEM').AsString,true);
end;

procedure TfrmRp43OPD01Grid.dsGetReport43DeathDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
{
    cmbDeathCDEATH_A.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_A.Items,'',fdm.cdsGetReport43DeathCDEATH_A.AsString,true);
    cmbDeathCDEATH_B.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_B.Items,'',fdm.cdsGetReport43DeathCDEATH_B.AsString,true);
    cmbDeathCDEATH_C.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_C.Items,'',fdm.cdsGetReport43DeathCDEATH_C.AsString,true);
    cmbDeathCDEATH_D.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_D.Items,'',fdm.cdsGetReport43DeathCDEATH_D.AsString,true);
    cmbDeathCDEATH.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH.Items,'',fdm.cdsGetReport43DeathCDEATH.AsString,true);
    }

end;

procedure TfrmRp43OPD01Grid.dsGetReport43DeathListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  fdm.cdsGetReport43Death.close;
  fdm.getDeath(fdm.cdsGetReport43DeathListREPORTID.AsInteger);
  fdm.cdsGetReport43Death.open;

  if fdm.cdsGetReport43Death.RecordCount>0 then
  begin

    cmbDeathHospdeath.ItemIndex := fdm.loadHospNameList2CmbItems(cmbDeathHospdeath.Items,fdm.cdsGetReport43DeathHOSPDEATH.AsString,true);
    cmbDeathPREGDEATH.ItemIndex := fdm.loadCmbItems(cmbDeathPREGDEATH.Items,'DEATH','PREGDEATH','43FILE_CODE','NAME1', fdm.cdsGetReport43DeathPREGDEATH.AsString,true);
    cmbDeathPDEATH.ItemIndex := fdm.loadCmbItems(cmbDeathPDEATH.Items,'DEATH','PDEATH','43FILE_CODE','NAME1', fdm.cdsGetReport43DeathPDEATH.AsString,true);

    cmbDeathCDEATH_A.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_A.Items,'',fdm.cdsGetReport43DeathCDEATH_A.AsString,true);
    cmbDeathCDEATH_B.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_B.Items,'',fdm.cdsGetReport43DeathCDEATH_B.AsString,true);
    cmbDeathCDEATH_C.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_C.Items,'',fdm.cdsGetReport43DeathCDEATH_C.AsString,true);
    cmbDeathCDEATH_D.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_D.Items,'',fdm.cdsGetReport43DeathCDEATH_D.AsString,true);
    cmbDeathODISEASE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathODISEASE.Items,'',fdm.cdsGetReport43DeathODISEASE.AsString,true);
    cmbDeathCDEATH.ItemIndex   := fdm.getIcd10List2CmbItems(cmbDeathCDEATH.Items,'',fdm.cdsGetReport43DeathCDEATH.AsString,true);
  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43DiagnosisOpdListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
{

  fdm.cdsGetReport43DiagnosisOpd.close;
  fdm.getDiagnosisOpd(fdm.cdsGetReport43DiagnosisOpdListPID.AsInteger,fdm.cdsGetReport43DiagnosisOpdListSEQ.AsInteger);
  fdm.cdsGetReport43DiagnosisOpd.open;

  cmbDiagOpdDIAGCODE.Items.Clear;
 }
  if (fdm.cdsGetReport43DiagnosisOpdList.RecordCount>0) and  not (FDM.cdsGetReport43DiagnosisOpdList.State in [dsEdit,dsInsert]) then
  begin
    cmbDiagOpdDIAGTYPE.ItemIndex := fdm.loadCmbItems(cmbDiagOpdDIAGTYPE.Items,'*','DIAGTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdlistDIAGTYPE.AsString,true);
    cmbDiagOpdClinic.ItemIndex := fdm.loadCmbItems(cmbDiagOpdClinic.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdlistCLINIC.AsString,true);
    cmbDiagOpdDIAGCODE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDiagOpdDIAGCODE.Items,'',fdm.cdsGetReport43DiagnosisOpdlistDIAGCODE.AsString,true);
  end;



end;

procedure TfrmRp43OPD01Grid.dsGetReport43DrugallergyListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  FDM.cdsGetReport43Drugallergy.close;
  fdm.getDugallergy(fdm.cdsGetReport43DrugallergyListREPORTID.AsInteger);
  FDM.cdsGetReport43Drugallergy.open;

  if FDM.cdsGetReport43Drugallergy.RecordCount>0 then
  begin
    cmbDrugAllergyTYPEDX.ItemIndex   := fdm.loadCmbItems(cmbDrugAllergyTYPEDX.Items,'DRUGALLERGY','TYPEDX','43FILE_CODE','NAME1', fdm.cdsGetReport43DrugallergyTYPEDX.AsString,true);
    cmbDrugAllergyALEVEL.ItemIndex   := fdm.loadCmbItems(cmbDrugAllergyALEVEL.Items,'DRUGALLERGY','ALEVEL','43FILE_CODE','NAME1', fdm.cdsGetReport43DrugallergyALEVEL.AsString,true);
    cmbDrugAllergySYMPTOM.ItemIndex   := fdm.loadCmbItems(cmbDrugAllergySYMPTOM.Items,'DRUGALLERGY','SYMPTOM','43FILE_CODE','NAME1', fdm.cdsGetReport43DrugallergySYMPTOM.AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43DrugListOpdDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (TDataSource(Sender).DataSet.RecordCount>0) AND not (TDataSource(Sender).DataSet.State in [dsInsert,dsEdit])then
  begin
  cmbDrugOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbDrugOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DrugListOpd.FieldByName('CLINIC').AsString,true);
  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43DrugOpdDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
 cmbDrugOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbDrugOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DrugOpd.FieldByName('CLINIC').AsString,true);
end;

procedure TfrmRp43OPD01Grid.dsGetReport43EpiListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cmbEpiVACCINETYPE.ItemIndex:=fdm.loadCmbItems(cmbEpiVACCINETYPE.Items,'EPI','VACCINETYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43EpiListVACCINETYPE.AsString,true);

  if FDM.cdsGetReport43EpiList.RecordCount>0 then
    cmbEpiVACCINEPLACE.ItemIndex        := fdm.loadHospNameList2CmbItems(cmbEpiVACCINEPLACE.Items,fdm.cdsGetReport43EpiList.FieldByName('VACCINEPLACE').AsString,true);

end;

procedure TfrmRp43OPD01Grid.dsGetReport43HomeListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  fdm.cdsGetReport43Home.close;
  fdm.getHome(fdm.cdsGetReport43HomeListREPORTID.AsInteger);
  fdm.cdsGetReport43Home.open;

  if FDM.cdsGetReport43Home.RecordCount>0 then
  begin
    //

    cmbHomeHOUSETYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeHOUSETYPE.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeHOUSETYPE.AsString,true);
    cmbHomeLOCATYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeLOCATYPE.Items,'HOME','LOCATYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeLOCATYPE.AsString,true);
    cmbHomeTOILET.ItemIndex   := fdm.loadCmbItems(cmbHomeTOILET.Items,'HOME','TOILET','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeTOILET.AsString,true);
    cmbHomeWATER.ItemIndex   := fdm.loadCmbItems(cmbHomeWATER.Items,'HOME','WATER','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeWATER.AsString,true);

    cmbHomeWATERTYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeWATERTYPE.Items,'HOME','WATERTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeWATERTYPE.AsString,true);
    cmbHomeGARBAGE.ItemIndex   := fdm.loadCmbItems(cmbHomeGARBAGE.Items,'HOME','GARBAGE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeGARBAGE.AsString,true);
    cmbHomeHOUSING.ItemIndex   := fdm.loadCmbItems(cmbHomeHOUSING.Items,'HOME','HOUSING','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeHOUSING.AsString,true);
    cmbHomeDURABILITY.ItemIndex   := fdm.loadCmbItems(cmbHomeDURABILITY.Items,'HOME','DURABILITY','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeDURABILITY.AsString,true);
    cmbHomeCLEANLINESS.ItemIndex   := fdm.loadCmbItems(cmbHomeCLEANLINESS.Items,'HOME','CLEANLINESS','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeCLEANLINESS.AsString,true);
    cmbHomeVENTILATION.ItemIndex   := fdm.loadCmbItems(cmbHomeVENTILATION.Items,'HOME','VENTILATION','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeVENTILATION.AsString,true);

    cmbHomeLIGHT.ItemIndex   := fdm.loadCmbItems(cmbHomeLIGHT.Items,'HOME','LIGHT','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeLIGHT.AsString,true);
    cmbHomeWATERTM.ItemIndex   := fdm.loadCmbItems(cmbHomeWATERTM.Items,'HOME','WATERTM','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeWATERTM.AsString,true);
    cmbHomeMFOOD.ItemIndex   := fdm.loadCmbItems(cmbHomeMFOOD.Items,'HOME','MFOOD','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeMFOOD.AsString,true);
    cmbHomeBCONTROL.ItemIndex   := fdm.loadCmbItems(cmbHomeBCONTROL.Items,'HOME','BCONTROL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeBCONTROL.AsString,true);
    cmbHomeACONTROL.ItemIndex   := fdm.loadCmbItems(cmbHomeACONTROL.Items,'HOME','ACONTROL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeACONTROL.AsString,true);
    cmbHomeCHEMICAL.ItemIndex   := fdm.loadCmbItems(cmbHomeCHEMICAL.Items,'HOME','CHEMICAL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeCHEMICAL.AsString,true);


    cmbHomeCHANGWAT.ItemIndex := fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,fdm.cdsGetReport43HomeCHANGWAT.AsString,true);
    cmbHomeAMPUR.ItemIndex    := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,'',fdm.cdsGetReport43HomeAMPUR.AsString,true);
    cmbHomeTAMBON.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,'','',fdm.cdsGetReport43HomeTAMBON.AsString,true);



  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43LabOrListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  cmbLaborBRESULT.ItemIndex := fdm.getIcd10List2CmbItems(cmbLaborBRESULT.Items,'',fdm.cdsGetReport43LabOrBRESULT.AsString,true);
  cmbLaborBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1',fdm.cdsGetReport43LabOrBPLACE.AsString,true);
  cmbLaborBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43LabOrBTYPE.AsString,true);
  cmbLaborBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbLaborBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43LabOrBDOCTOR.AsString,true);
end;

procedure TfrmRp43OPD01Grid.dsGetReport43NcdscreenListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (FDM.cdsGetReport43NcdscreenList.RecordCount >0) and not(FDM.cdsGetReport43NcdscreenList.State in [dsEdit,dsInsert]) then
  begin
    CmbSERVPLACE.ItemIndex   := fdm.loadCmbItems(CmbSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbSMOKE.ItemIndex   := fdm.loadCmbItems(CmbSMOKE.Items,'NCDSCREEN','SMOKE','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    cmbALCOHOL.ItemIndex   := fdm.loadCmbItems(cmbALCOHOL.Items,'NCDSCREEN','ALCOHOL','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbDMFAMILY.ItemIndex   := fdm.loadCmbItems(CmbDMFAMILY.Items,'NCDSCREEN','DMFAMILY','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbHTFAMILY.ItemIndex   := fdm.loadCmbItems(CmbHTFAMILY.Items,'NCDSCREEN','HTFAMILY','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbBSTEST.ItemIndex   := fdm.loadCmbItems(CmbBSTEST.Items,'NCDSCREEN','BSTEST','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbSCREENPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(CmbSCREENPLACE.Items,fdm.cdsGetReport43NcdscreenList.FieldByName('SCREENPLACE').AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43NewbornCareListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
 if (FDM.cdsGetReport43NewbornCareList.RecordCount>0 ) and not(FDM.cdsGetReport43NewbornCareList.State in [dsEdit,dsInsert]) then
  begin
    CmbFOOD_New.ItemIndex  :=fdm.loadCmbItems(CmbFOOD_New.Items,'*','Food','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornCareListFOOD.AsString,true);
    CmbBCARERESULT.ItemIndex  :=fdm.loadCmbItems(CmbBCARERESULT.Items,'NEWBORNCARE','BCARERESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornCareListBCARERESULT.AsString,true);
    CmbBCPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(CmbBCPLACE.Items,fdm.cdsGetReport43NewbornCareListBCPLACE.AsString,true);
  END;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43NewbornListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (FDM.cdsGetReport43NewbornList.RecordCount>0 ) and not(FDM.cdsGetReport43NewbornList.State in [dsEdit,dsInsert]) then
  begin
    cmbNewbornBPLACE.ItemIndex:=fdm.loadCmbItems(cmbNewbornBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornBPLACE.AsString,true);
    cmbNewbornBHOSP.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbNewbornBHOSP.Items,fdm.cdsGetReport43NewbornBHOSP.AsString,true);
    cmbNewbornBIRTHNO.ItemIndex:=fdm.loadCmbItems(cmbNewbornBIRTHNO.Items,'NEWBORN','BIRTHNO','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornBIRTHNO.AsString,true);
    cmbNewbornBTYPE.ItemIndex:=fdm.loadCmbItems(cmbNewbornBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornBTYPE.AsString,true);
    cmbNewbornBDOCTOR.ItemIndex:=fdm.loadCmbItems(cmbNewbornBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornBDOCTOR.AsString,true);
    cmbNewbornASPHYXIA.ItemIndex:=fdm.loadCmbItems(cmbNewbornASPHYXIA.Items,'NEWBORN','ASPHYXIA','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornASPHYXIA.AsString,true);
    cmbNewbornBDOCTOR.ItemIndex:=fdm.loadCmbItems(cmbNewbornBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornBDOCTOR.AsString,true);
    cmbNewbornVITK.ItemIndex:=fdm.loadCmbItems(cmbNewbornVITK.Items,'NEWBORN','VITK','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornVITK.AsString,true);
    cmbNewbornTSH.ItemIndex:=fdm.loadCmbItems(cmbNewbornTSH.Items,'NEWBORN','TSH','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornTSH.AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43NutritionListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (FDM.cdsGetReport43NutritionList.RecordCount>0) AND not (FDM.cdsGetReport43NutritionList.State in [dsEdit,dsInsert]) then
  begin
    CmbFood.ItemIndex  :=fdm.loadCmbItems(CmbFood.Items,'*','Food','43FILE_CODE','NAME1',fdm.cdsGetReport43NutritionListFOOD.AsString,true);
    CmbBottle.ItemIndex  :=fdm.loadCmbItems(CmbBottle.Items,'NUTRITION','BOTTLE','43FILE_CODE','NAME1',fdm.cdsGetReport43NutritionListBOTTLE.AsString,true);
    CmbChilddevelop.ItemIndex  :=fdm.loadCmbItems(CmbChilddevelop.Items,'NUTRITION','CHILDDEVELOP','43FILE_CODE','NAME1',fdm.cdsGetReport43NutritionListCHILDDEVELOP.AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43PostnatalListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (FDM.cdsGetReport43PostnatalList.RecordCount>0 )AND not (FDM.cdsGetReport43PostnatalList.State in [dsEdit,dsInsert]) then
  begin
    cmbPostnatalPPRESULT.ItemIndex:=fdm.loadCmbItems(cmbPostnatalPPRESULT.Items,'POSTNATAL','PPRESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PostnatalPPRESULT.AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.dsGetReport43PrenatalListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (FDM.cdsGetReport43PrenatalList.RecordCount>0 )AND not(FDM.cdsGetReport43PrenatalList.State IN [dsInsert,dsEdit])then
  begin
    cmbPrenatalVDRL_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalVDRL_RESULT.Items,'PRENATAL','VDRL_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListVDRL_RESULT.AsString,true);
    cmbPrenatalHB_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHB_RESULT.Items,'PRENATAL','HB_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHB_RESULT.AsString,true);
    cmbPrenatalHIV_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHIV_RESULT.Items,'PRENATAL','HIV_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHIV_RESULT.AsString,true);
    cmbPrenatalTHALASSEMIA.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalTHALASSEMIA.Items,'PRENATAL','THALASSEMIA','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListTHALASSEMIA.AsString,true);
  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43ProcedureOpdDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  cmbProcedureOpdPROCEDCODE.ItemIndex := fdm.loadIcd9List2CmbItems(cmbProcedureOpdPROCEDCODE.Items,fdm.cdsGetReport43ProcedureOpd.FieldByName('PROCEDCODE').AsString,true);
  cmbProcedureOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbProcedureOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43ProcedureOpd.FieldByName('CLINIC').AsString,true);
end;

procedure TfrmRp43OPD01Grid.dsGetReport43ProcedureOpdListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
if (fdm.cdsGetReport43ProcedureOpdList.RecordCount>0) and NOT (fdm.cdsGetReport43ProcedureOpdList.State in [dsEdit,dsInsert]) then
  begin

    cmbProcedureOpdPROCEDCODE.ItemIndex := fdm.loadIcd9List2CmbItems(cmbProcedureOpdPROCEDCODE.Items,fdm.cdsGetReport43ProcedureOpdList.FieldByName('PROCEDCODE').AsString,true);
    cmbProcedureOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbProcedureOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43ProcedureOpdList.FieldByName('CLINIC').AsString,true);
  end;

end;

procedure TfrmRp43OPD01Grid.dsGetReport43SpecialPpDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;


  cmbSpecialPpPPSPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbSpecialPpPPSPLACE.Items,fdm.cdsGetReport43SpecialPpPPSPLACE.AsString,true);
  cmbSpecialPpSERVPLACE.ItemIndex :=  fdm.loadCmbItems(cmbSpecialPpSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43SpecialPpSERVPLACE.AsString,true);
end;

procedure TfrmRp43OPD01Grid.dsGetReport43SpecialPpListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
   if (fdm.cdsGetReport43SpecialPpList.RecordCount>0) and not(FDM.cdsGetReport43SpecialPpList.State in [dsEdit,dsInsert]) then
    begin
     cmbSpecialPpPPSPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbSpecialPpPPSPLACE.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString,true);
     cmbSpecialPpSERVPLACE.ItemIndex :=  fdm.loadCmbItems(cmbSpecialPpSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString,true);
     PPSPECIAL.ItemIndex   := fdm.loadHospNameList2CmbItems(PPSPECIAL.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString,true);
     end;
end;

procedure TfrmRp43OPD01Grid.dsReport43ServiceListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  //cmbDeathHospdeath.ItemIndex := fdm.loadHospNameList2CmbItems(cmbDeathHospdeath.Items,FDM.cdsGetReport43Service,true);
  FDM.cdsGetReport43Service.Close;
  fdm.getService(FDM.cdsGetReport43ServiceList.FieldByName('PID').AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  FDM.cdsGetReport43Service.Open;

  if fdm.cdsGetReport43Service.RecordCount>0 then
  begin
    cmbServiceREFERINHOSP.ItemIndex := fdm.loadHospNameList2CmbItems(cmbServiceREFERINHOSP.Items,fdm.cdsGetReport43Service.FieldByName('REFERINHOSP').AsString,true);
    cmbServiceSERVPLACE.ItemIndex   := fdm.loadCmbItems(cmbServiceSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43Service.FieldByName('SERVPLACE').AsString,true);
    cmbServiceMAIN.ItemIndex        := fdm.loadHospNameList2CmbItems(cmbServiceMAIN.Items,fdm.cdsGetReport43Service.FieldByName('MAIN').AsString,true);

    cmbServiceCAUSEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEIN.Items,'SERVICE','CAUSEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43Service.FieldByName('CAUSEIN').AsString,true);
    cmbServiceINSTYPE.ItemIndex   := fdm.loadCmbItems(cmbServiceINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43Service.FieldByName('INSTYPE').AsString,true);
    cmbServiceTYPEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceTYPEIN.Items,'SERVICE','TYPEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43Service.FieldByName('TYPEIN').AsString,true);

    cmbServiceREFEROUTHOSP.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbServiceREFEROUTHOSP.Items,fdm.cdsGetReport43Service.FieldByName('REFEROUTHOSP').AsString,true);
    cmbServiceCAUSEOUT.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEOUT.Items,'SERVICE','CAUSEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43Service.FieldByName('CAUSEOUT').AsString,true);
  end;
end;

procedure TfrmRp43OPD01Grid.edSearchCIDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then btnRefreshClick(sender);

end;

function TfrmRp43OPD01Grid.inarr(n: integer;
  arr: array of Integer): boolean;
 var i:integer;
      rep:boolean;
begin
  rep:=false;
  for i := 0 to High(arr) do
    if rep=false then
      rep:=arr[i]=n;

    Result:=rep;

end;

procedure TfrmRp43OPD01Grid.initDepsArrayPage;
var ipage,ilen,i:integer;
    intarr,_intArr : TIntArray;
    //strList : TStringList;

    value,delimiter,txt,ns:string;
    //strArr : array of integer;
    strArrCount,delta,dx:integer;
begin

  FDM.cdsGetPageList.Close;
  fdm.getPageList('01','001','0001');
  fdm.cdsGetPageList.Open;


  ipage:=0;
  {

       for  ipage:=0 to 15 do
       begin

         SetLength(_intArr, 3);


         _intArr[0]:=1;
         _intArr[1]:=2;
         _intArr[2]:=4;


        // pagesIndex[ipage]:=TIntArray.Create(1,2,4);

         pagesIndex[ipage]:=_intArr;
        // ShowMessage(inttostr(high(pagesIndex[ipage])));
         //for i:= 0 to high(_intarr) do
         // fdm.WriteLog('xxxxxx:');


         //pagesIndex[ipage]:=TIntArray.Create(1,2,4);

         //SetLength(pagesIndex[ipage],2);
         //pagesIndex[ipage][0]:=1;
         //pagesIndex[ipage][1]:=2;
         //pagesIndex[ipage][2]:=4;
       end;

       }

  if FDM.cdsGetPageList.Active then
    if fdm.cdsGetPageList.RecordCount>0 then
    begin
      cmbDepartment.Items.Clear;
      fdm.cdsGetPageList.First;

      SetLength(pagesIndex,fdm.cdsGetPageList.RecordCount);

      while not fdm.cdsGetPageList.eof do
        begin
         strArrCount:=0;
         value := fdm.cdsGetPageList.FieldByName('PageList').AsString;
         delimiter:=',';

         cmbDepartment.Items.AddObject(fdm.cdsGetPageList.FieldByName('PageDesc').AsString,TString.Create(fdm.cdsGetPageList.FieldByName('PageIdx').AsString));


         delta := Length(delimiter);
         txt := value + delimiter;

           while Length(txt) > 0 do
           begin
             dx := Pos(delimiter, txt) ;
             ns := Copy(txt,0,dx-1) ;
             SetLength(intarr,strArrCount+1);
             intarr[strArrCount]:=strtoint(ns);
             txt := Copy(txt,dx+delta,MaxInt) ;
             Inc(strArrCount);
           end;

           pagesIndex[ipage]:=intarr;

           inc(ipage);




        // end;

          if not fdm.cdsGetPageList.Eof then
          fdm.cdsGetPageList.next;
        end;
    end;


 {
  pagesIndex[0] := TIntArray.Create(1,2,4);
  pagesIndex[1] := TIntArray.Create(3,10);
  pagesIndex[2] := TIntArray.Create(7,14);
  pagesIndex[3] := TIntArray.Create(7,14,8,10,11);
  pagesIndex[4] := TIntArray.Create(7,14,8,10,11,12);
  pagesIndex[5] := TIntArray.Create(7,14,10,11,8,9);
  pagesIndex[6] := TIntArray.Create(7,8,14,10,11,20,21,22,23,24,25,26,31,32,33,34,35,38,39);
  pagesIndex[7] := TIntArray.Create(7,8,14,10,11,22,31,32,33,34,35);
  pagesIndex[8] := TIntArray.Create(7,8,14,10,11,22,29,23,31,32);
  pagesIndex[9] := TIntArray.Create(7,8,14,10,11,30);
  pagesIndex[10] := TIntArray.Create(7,8,14,10,11,31,32,37,38,39,40);
  pagesIndex[11] := TIntArray.Create(7,8,14,10,11,31,32,37,38,39,40);
  pagesIndex[12] := TIntArray.Create(7,8,14,25,26,28);
  pagesIndex[13] := TIntArray.Create(7,8,14,28,29,22);
  pagesIndex[14] := TIntArray.Create(1,2,6,36,41,42);
  pagesIndex[15] := TIntArray.Create(5);
  }





end;

procedure TfrmRp43OPD01Grid.initial(intArr: array of Integer);
var defaltPersonArea,k,icount,defaultNum:integer;
    defCode:string;
    yrrStr,runStr,HN,_HN:string;
begin
  icount:=1;

  {
  for k:=0 to pgAll43File.PageCount-1 do
  begin
     pgAll43File.Pages[k].TabVisible:=false;
  end;
  }


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

      pgAll43File.Pages[1].TabVisible:=false;
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




    // load person for all case

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


  if inarr(0,intarr) or inarr(1,intarr) then
  begin
    FDM.WriteLog('### Initial 0');

    cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonSEX.AsString,true);


    cmbRace.ItemIndex         := fdm.loadCmbItems(cmbRace.Items,'PERSON','RACE','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRACE.AsString,true);
    cmbNation.ItemIndex       := fdm.loadCmbItems(cmbNation.Items,'PERSON','NATION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonNATION.AsString,true);
    cmbAbogroup.ItemIndex     := fdm.loadCmbItems(cmbAbogroup.Items,'PERSON','ABOGROUP','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonABOGROUP.AsString,false);
    cmbRhGroup.ItemIndex      := fdm.loadCmbItems(cmbRhGroup.Items,'PERSON','RHGROUP','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRHGROUP.AsString,false);
    cmbOccupationOld.ItemIndex:= fdm.loadCmbItems(cmbOccupationOld.Items,'PERSON','OCCUPATION_OLD','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonOCCUPATION_OLD.AsString,true);
    cmbOccupationNew.ItemIndex:= fdm.loadCmbItems(cmbOccupationNew.Items,'PERSON','OCCUPATION_NEW','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonOCCUPATION_NEW.AsString,true);
    cmbEducation.ItemIndex    := fdm.loadCmbItems(cmbEducation.Items,'PERSON','EDUCATION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonEDUCATION.AsString,true);
    cmbReligion.ItemIndex     := fdm.loadCmbItems(cmbReligion.Items,'PERSON','RELIGION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRELIGION.AsString,true);
    cmbVstatus.ItemIndex      := fdm.loadCmbItems(cmbVstatus.Items,'PERSON','VSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonVSTATUS.AsString,false);
    cmbMSTATUS.ItemIndex      := fdm.loadCmbItems(cmbMSTATUS.Items,'PERSON','MSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonMSTATUS.AsString,false);
    cmbFStatus.ItemIndex      := fdm.loadCmbItems(cmbFStatus.Items,'PERSON','FSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonFSTATUS.AsString,false);
    cmbDISCHARGE.ItemIndex    := fdm.loadCmbItems(cmbDISCHARGE.Items,'PERSON','DISCHARGE','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonDISCHARGE.AsString,false);

   {
   setDefaultValue(cmbDISCHARGE,FDM.cdsGetReport43PersonDISCHARGE.AsString,FDM.getDefaultValueA('PERSON','DISCHARGE'));
   setDefaultValue(cmbVstatus,FDM.cdsGetReport43PersonVSTATUS.AsString,FDM.getDefaultValueA('PERSON','VSTATUS'));
   setDefaultValue(cmbFStatus,FDM.cdsGetReport43PersonFSTATUS.AsString,FDM.getDefaultValueA('PERSON','FSTATUS'));
   setDefaultValue(cmbMSTATUS,FDM.cdsGetReport43PersonMSTATUS.AsString,FDM.getDefaultValueA('PERSON','MSTATUS'));

   setDefaultValue(cmbNation,FDM.cdsGetReport43PersonNATION.AsString,FDM.getDefaultValueA('PERSON','NATION'));
   fdm.WriteLog('nation default value:'+FDM.getDefaultValueA('PERSON','NATION'));
   setDefaultValue(cmbRace,FDM.cdsGetReport43PersonRACE.AsString,FDM.getDefaultValueA('PERSON','RACE'));
   setDefaultValue(cmbRhGroup,FDM.cdsGetReport43PersonRHGROUP.AsString,FDM.getDefaultValueA('PERSON','RHGROUP'));
   }


   //ShowMessage(inttostr(defaultNum));

    // set defalt area for person
    defaltPersonArea:=4;
    if FDM.checkPersonArea1(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=1;
    if FDM.checkPersonArea2(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=2;
    if FDM.checkPersonArea3(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=3;
    if FDM.checkPersonArea4(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=4;
    if FDM.checkPersonArea5(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=5;


    FDM.cdsGetReport43Person.edit;
    FDM.cdsGetReport43PersonTYPEAREA.AsInteger:=defaltPersonArea;
    FDM.cdsGetReport43Person.Post;


    cmbPersonTypeArea.ItemIndex
      := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);


    // load address
    fdm.cdsGetReport43AddressType1.close;
    fdm.getAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43AddressType1.Open;


    if fdm.cdsGetReport43AddressType1.RecordCount>0 then
    begin
      grpBoxAddrType1.Enabled:=true;




      cmbAddrProvince1.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString,true);
      if length(trim(fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString))<=2 then
        defCode:=fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString+fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString else
          defCode := fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString;

      cmbAddrAMPUR1.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,'',defCode,true);

      if length(trim(fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString))<=2 then
        defCode:=fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString+fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString+fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString else
          defCode := fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString;
      cmbAddrTAMBON1.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,'','',defCode,true);

      //cmbAddrAMPUR.Items.clear;
      //cmbAddrTAMBON.Items.Clear;

      cmbAddrADDRESSTYPE1.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE1.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType1.FieldByName('ADDRESSTYPE').AsString,true);
      cmbAddrHOUSETYPE1.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE1.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString,true);
    end else
      grpBoxAddrType1.Enabled:=false;


    fdm.cdsGetReport43AddressType2.close;
    fdm.getAddressType2(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43AddressType2.Open;
    if fdm.cdsGetReport43AddressType2.RecordCount>0 then
    begin
      grpBoxAddrType2.Enabled:=true;
      cmbAddrProvince2.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince2.Items,0,fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString,true);

      if length(trim(fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString))<=2 then
        defCode:=fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString+fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString else
          defCode := fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString;

      cmbAddrAMPUR2.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,'',defCode,true);

      if length(trim(fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString))<=2 then
        defCode:=fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString+fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString+fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString else
          defCode := fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString;
      cmbAddrTAMBON2.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,'','',defCode,true);

      //cmbAddrAMPUR.Items.clear;
      //cmbAddrTAMBON.Items.Clear;

      cmbAddrADDRESSTYPE2.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE2.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType2.FieldByName('ADDRESSTYPE').AsString,true);
      cmbAddrHOUSETYPE2.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE2.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString,true);
    end
     else grpBoxAddrType2.Enabled:=false;




  end;
  // fixed error
  if fdm.cdsGetReport43Person.RecordCount<=0 then exit;

   cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonSEX.AsString,true);



  { **** remove address tab
  if inarr(2,intarr) then
  begin
    fdm.cdsGetReport43AddressList.close;
    fdm.getAddressList(fdm.cdsGetReport43PersonPID.AsInteger);
    //fdm.cdsGetReport43AddressList.open;
  end;
    //exit;
    FDM.WriteLog('###3');
   }


    {
  cmbServiceREFERINHOSP.ItemIndex
    := fdm.loadCmbItems(cmbServiceREFERINHOSP.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43ServiceListMAIN.AsString,false);
  cmbServiceREFERINHOSP.ItemIndex
    := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);
  cmbPersonTypeArea.ItemIndex
    := fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);
    }

  //


  if inarr(7,intarr) then
  begin
    FDM.WriteLog('### Initial 7');
    fdm.cdsGetReport43ServiceList.close;
    fdm.getServiceList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43ServiceList.open;
  end;




  if inarr(10,intarr) then
  begin
     FDM.WriteLog('### Initial 10');
    fdm.cdsGetReport43DiagnosisOpdList.close;
    fdm.getDiagnosisOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DiagnosisOpdList.Open;
  end;



  if inarr(11,intarr) then
  begin
    FDM.WriteLog('### Initial 11');
    fdm.cdsGetReport43ProcedureOpdList.close;
    fdm.getProcedureOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43ProcedureOpdList.open;
  end;

  if inarr(12,intarr) then
  begin
    FDM.WriteLog('### Initial 12');
    fdm.cdsGetReport43DrugListOpd.close;
    fdm.getDrugOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DrugListOpd.open;
  end;

  if inarr(8,intarr) then
  begin
    FDM.WriteLog('### Initial 8');
    fdm.cdsGetReport43AppointmentList.close;
    fdm.getAppointmentList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43AppointmentList.open;
  end;

  if inarr(25,intarr) then
  begin
    FDM.WriteLog('### Initial 25');
    fdm.cdsGetReport43AncList.close;
    fdm.getAncList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43PrenatalGRAVIDA.AsString);
    fdm.cdsGetReport43AncList.open;

    if fdm.cdsGetReport43Anc.Active then
      if fdm.cdsGetReport43Anc.RecordCount>0 then
      begin
        cmbAncANCNO.ItemIndex  :=fdm.loadCmbItems(cmbAncANCNO.Items,'ANC','ANCNO','43FILE_CODE','NAME1', fdm.cdsGetReport43AncANCNO.AsString,true);
      end;

  end;

  if inarr(24,intarr) then
  begin
    FDM.WriteLog('### Initial 24');
    fdm.cdsGetReport43PrenatalList.close;
    fdm.getPrenatalList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43PrenatalList.open;
  end;


  if inarr(27,intarr) then
  begin
    FDM.WriteLog('### Initial 27');
    fdm.cdsGetReport43PostnatalList.close;
    fdm.getPostnatalList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43PostnatalList.open;
  end;

  if inarr(26,intarr) then
  begin
    FDM.WriteLog('### Initial 26');
    fdm.cdsGetReport43LabOrList.close;
    fdm.getLabOrList(fdm.cdsGetReport43PrenatalListPID.AsInteger,fdm.cdsGetReport43PrenatalListGRAVIDA.AsString);
    fdm.cdsGetReport43LabOrList.open;

    if fdm.cdsGetReport43LabOrList.RecordCount>0 then
    begin
      cmbLaborBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BPLACE').AsString,true);
      cmbLaborBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BTYPE').AsString,true);
      cmbLaborBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbLaborBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BDOCTOR').AsString,true);
    end;

  end;

  {if inarr(7,intarr) then
  begin
    fdm.cdsGetReport43LabOrList.close;
    fdm.getLabOrList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43LabOrList.open;
  end;
  }

  if inarr(20,intarr) then
  begin
    FDM.WriteLog('### Initial 20');
    fdm.cdsGetReport43WomenList.close;
    fdm.getWomenList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43WomenList.open;
  end;

  if inarr(21,intarr) then
  begin
    FDM.WriteLog('### Initial 21');
    fdm.cdsGetReport43FpList.close;
    fdm.getFpList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43FpList.open;
  end;

  if inarr(22,intarr) then
  begin
    FDM.WriteLog('### Initial 22');
    fdm.cdsGetReport43EpiList.close;
    fdm.getEpiList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43EpiList.open;


    if fdm.cdsGetReport43EpiList.RecordCount>0 then
    begin
      cmbEpiVACCINETYPE.ItemIndex:=fdm.loadCmbItems(cmbEpiVACCINETYPE.Items,'EPI','VACCINETYPE','43FILE_CODE','NAME1','',true);
    end;


  end;


  if inarr(38,intarr) then
  begin
    FDM.WriteLog('### Initial 38');
    fdm.cdsGetReport43IcfList.close;
    fdm.getIcfList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43IcfList.open;
  end;

  if inarr(31,intarr) then
  begin
    FDM.WriteLog('### Initial 31');
    fdm.cdsGetReport43SpecialPpList.close;
    fdm.getSpecialPpList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43SpecialPpList.open;
  end;

  if inarr(33,intarr) then
  begin
    FDM.WriteLog('### Initial 33');
    fdm.cdsGetReport43ChronicList.close;
    fdm.getChronicList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43ChronicList.open;
    ShowMessage(IntToStr(FDM.cdsGetReport43ChronicList.RecordCount));
  end;

  if inarr(34,intarr) then
  begin
    FDM.WriteLog('### Initial 34');
    fdm.cdsGetReport43ChronicFuList.close;
    fdm.getChronicFuList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43ChronicFuList.open;
  end;

  if inarr(23,intarr) then
  begin
    FDM.WriteLog('### Initial 23');
    fdm.cdsGetReport43NutritionList.close;
    fdm.getNutritionList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43NutritionList.open;
    CmbFood.ItemIndex  :=fdm.loadCmbItems(CmbFood.Items,'*','Food','43FILE_CODE','NAME1',fdm.cdsGetReport43NutritionListFOOD.AsString,true);
    CmbBottle.ItemIndex  :=fdm.loadCmbItems(CmbBottle.Items,'NUTRITION','BOTTLE','43FILE_CODE','NAME1',fdm.cdsGetReport43NutritionListBOTTLE.AsString,true);
    CmbChilddevelop.ItemIndex  :=fdm.loadCmbItems(CmbChilddevelop.Items,'NUTRITION','CHILDDEVELOP','43FILE_CODE','NAME1',fdm.cdsGetReport43NutritionListCHILDDEVELOP.AsString,true);

  end;

  if inarr(3,intarr) then
  begin
    FDM.WriteLog('### Initial 3');
    fdm.cdsGetReport43DeathList.close;
    fdm.getDeathList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DeathList.open;


    if fdm.cdsGetReport43DeathList.RecordCount>0 then
    begin
      cmbDeathCDEATH_A.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_A.Items,'',fdm.cdsGetReport43DeathCDEATH_A.AsString,true);
      cmbDeathCDEATH_B.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_B.Items,'',fdm.cdsGetReport43DeathCDEATH_B.AsString,true);
      cmbDeathCDEATH_C.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_C.Items,'',fdm.cdsGetReport43DeathCDEATH_C.AsString,true);
      cmbDeathCDEATH_D.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathCDEATH_D.Items,'',fdm.cdsGetReport43DeathCDEATH_D.AsString,true);
      cmbDeathODISEASE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDeathODISEASE.Items,'',fdm.cdsGetReport43DeathODISEASE.AsString,true);
      cmbDeathCDEATH.ItemIndex   := fdm.getIcd10List2CmbItems(cmbDeathCDEATH.Items,'',fdm.cdsGetReport43DeathCDEATH.AsString,true);
    end;
  end;


  if inarr(4,intarr) then
  begin
    FDM.WriteLog('### Initial 4');
    fdm.cdsGetReport43CardList.close;
    fdm.getCardList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43CardList.open;
  end;


  if inarr(5,intarr) then
  begin
    FDM.WriteLog('### Initial 5');
    fdm.cdsGetReport43DrugallergyList.close;
    fdm.getDugallergyList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DrugallergyList.open;
  end;

  if inarr(9,intarr) then
  begin
    FDM.WriteLog('### Initial 9');
    fdm.cdsGetReport43AccidentList.close;
    fdm.getAccidentList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43AccidentList.open;
 //   ShowMessage(IntToStr(FDM.cdsGetReport43AccidentList.RecordCount));
//    dsGetReport43AccidentList.DataSet := FDM.cdsGetReport43AccidentList;
  end;

  if inarr(13,intarr) then
  begin
    FDM.WriteLog('### Initial 13');
    fdm.cdsGetReport43ChargeOrdList.close;
    fdm.getChargeOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DrugListOpd.open;
    fdm.cdsGetReport43ChargeOrdList.open;
  end;

  if inarr(14,intarr) then
  begin
    FDM.WriteLog('### Initial 34');
    fdm.cdsGetReport43AdmissionList.close;
    fdm.getAdmissionList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43AdmissionList.open;
  end;

  if inarr(15,intarr) then
  begin
    FDM.WriteLog('### Initial 15');
    fdm.cdsGetReport43DiagnosisIpdList.close;
    fdm.getDiagnosisIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DiagnosisIpdList.open;
  end;

  if inarr(16,intarr) then
  begin
    FDM.WriteLog('### Initial 16');
    fdm.cdsGetReport43ProcedureIpdList.close;
    fdm.getProcedureIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43ProcedureIpdList.open;
  end;

  if inarr(17,intarr) then
  begin
    FDM.WriteLog('### Initial 17');
    fdm.cdsGetReport43DrugIpdList.close;
    fdm.getDrugIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43DrugIpdList.open;
  end;

  if inarr(18,intarr) then
  begin
    FDM.WriteLog('### Initial 18');
    fdm.cdsGetReport43ChargeIpdList.close;
    fdm.getChargeIpdList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43ChargeIpdList.open;
  end;

  if inarr(19,intarr) then
  begin
    FDM.WriteLog('### Initial 19');
    fdm.cdsGetReport43SurveillanceList.close;
    fdm.getSurveillanceList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43SurveillanceList.open;
  end;

  if inarr(28,intarr) then
  begin
    FDM.WriteLog('### Initial 28');
    fdm.cdsGetReport43NewbornList.close;
    fdm.getNewbornList(fdm.cdsGetReport43PrenatalListPID.AsString,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
    fdm.cdsGetReport43NewbornList.open;
  end;

  if inarr(29,intarr) then
  begin
    FDM.WriteLog('### Initial 29');
    fdm.cdsGetReport43NewbornCareList.close;
    fdm.getNewbornCareList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43NewbornCareList.open;
    CmbFOOD_New.ItemIndex  :=fdm.loadCmbItems(CmbFOOD_New.Items,'*','Food','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornCareListFOOD.AsString,true);
    CmbBCARERESULT.ItemIndex  :=fdm.loadCmbItems(CmbBCARERESULT.Items,'NEWBORNCARE','BCARERESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornCareListBCARERESULT.AsString,true);
    CmbBCPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(CmbBCPLACE.Items,fdm.cdsGetReport43NewbornCareListBCPLACE.AsString,true);

  end;

  if inarr(30,intarr) then
  begin
    FDM.WriteLog('### Initial 30');
    fdm.cdsGetReport43DentalList.close;
    fdm.getDentalList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DentalList.open;
  end;

  if inarr(32,intarr) then
  begin
    FDM.WriteLog('### Initial 32');
    fdm.cdsGetReport43NcdscreenList.close;
    fdm.getNcdscreenList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43NcdscreenList.open;

    CmbSERVPLACE.ItemIndex   := fdm.loadCmbItems(CmbSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbSMOKE.ItemIndex   := fdm.loadCmbItems(CmbSMOKE.Items,'NCDSCREEN','SMOKE','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    cmbALCOHOL.ItemIndex   := fdm.loadCmbItems(cmbALCOHOL.Items,'NCDSCREEN','ALCOHOL','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbDMFAMILY.ItemIndex   := fdm.loadCmbItems(CmbDMFAMILY.Items,'NCDSCREEN','DMFAMILY','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbHTFAMILY.ItemIndex   := fdm.loadCmbItems(CmbHTFAMILY.Items,'NCDSCREEN','HTFAMILY','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbBSTEST.ItemIndex   := fdm.loadCmbItems(CmbBSTEST.Items,'NCDSCREEN','BSTEST','43FILE_CODE','NAME1', fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString,true);
    CmbSCREENPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(CmbSCREENPLACE.Items,fdm.cdsGetReport43NcdscreenList.FieldByName('SCREENPLACE').AsString,true);

  end;

  if inarr(35,intarr) then
  begin
    FDM.WriteLog('### Initial 35');
    fdm.cdsGetReport43LabFuList.close;
    fdm.getLabFuList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43LabFuList.open;
    CmbLABTEST.ItemIndex   := fdm.loadCmbItems(CmbLABTEST.Items,'LABFU','LABTEST','43FILE_CODE','NAME1', fdm.cdsGetReport43LabFuList.FieldByName('LABTEST').AsString,true);
  end;


  if inarr(6,intarr) then
  begin
    FDM.WriteLog('### Initial 6');
    fdm.cdsGetReport43HomeList.close;
    fdm.getHomeList('00','00','00');
    fdm.cdsGetReport43HomeList.open;
  end;

end;


procedure TfrmRp43OPD01Grid.PPSPECIALSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
   fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString:=TString(PPSPECIAL.Items.Objects[PPSPECIAL.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.SetDefaultPageIdx(const Value: integer);
begin
  FDefaultPageIdx := Value;
end;

procedure TfrmRp43OPD01Grid.setDefaultValue(_cmb:TUniComboBox;fieldValue, defaultValue:string);
var i,rep:integer;
begin
  rep :=0;

  if Trim(fieldValue)='' then
    for i := 0 to _cmb.items.Count-1 do
      if  TString(_cmb.items.Objects[i]).Str=defaultValue then
      rep:=i;

    if rep>0 then
      _cmb.ItemIndex:=rep;


end;

procedure TfrmRp43OPD01Grid.setFileArr(_arr: array of integer);
var i:integer;
begin
  FileArrNum:=nil;
  for i := 0 to High(_arr) do
  begin
    SetLength(FileArrNum,i);
    FileArrNum[i]:=_arr[i];
  end;
end;

procedure SetDateParamValue(P: TParam; Value: Double);
begin
  P.DataType := ftDate;
  if (Value <> 0) then
    P.AsDate := TDate(Value)
  else
   P.Clear();
end;

procedure TfrmRp43OPD01Grid.UniButton1Click(Sender: TObject);
var pp:TPerson4;
begin
  cmbDeathHospdeath.ItemIndex := fdm.loadHospNameList2CmbItems(cmbDeathHospdeath.Items,'NAME1',true);
//  ShowMessage(inttostr(fdm.cdsGetHospName.RecordCount));
end;

procedure TfrmRp43OPD01Grid.cmbDeathCDEATHSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathCDEATH.AsString:=Before('-',TString(cmbDeathCDEATH.Items.Objects[cmbDeathCDEATH.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbDeathCDEATH_AKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);
{  if (trim(cmbDeathCDEATH_A.Text)<>'') and (trim(cmbDeathCDEATH_A.Text)<>'null') then
    if (Length(cmbDeathCDEATH_A.Text)>=2 ) and (Length(cmbDeathCDEATH_A.Text)<=4)  then
      cmbDeathCDEATH_A.ItemIndex := FDM.loadIcd10List2CmbItems(cmbDeathCDEATH_A.Items,cmbDeathCDEATH_A.Text,fdm.cdsGetReport43DeathCDEATH_A.AsString,true);
      }
end;

procedure TfrmRp43OPD01Grid.cmbDeathCDEATH_ASelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathCDEATH_A.AsString:=Before('-',TString(cmbDeathCDEATH_A.Items.Objects[cmbDeathCDEATH_A.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDeathCDEATH_BSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathCDEATH_B.AsString:=Before('-',TString(cmbDeathCDEATH_B.Items.Objects[cmbDeathCDEATH_B.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDeathCDEATH_CSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathCDEATH_C.AsString:=Before('-',TString(cmbDeathCDEATH_C.Items.Objects[cmbDeathCDEATH_C.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDeathCDEATH_DSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathCDEATH_D.AsString:=Before('-',TString(cmbDeathCDEATH_D.Items.Objects[cmbDeathCDEATH_D.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbDeathODISEASESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathODISEASE.AsString:=Before('-',TString(cmbDeathODISEASE.Items.Objects[cmbDeathODISEASE.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDeathPDEATHSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathPDEATH.AsString:=Before('-',TString(cmbDeathPDEATH.Items.Objects[cmbDeathPDEATH.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDeathPREGDEATHSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Death.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Death.edit;
  fdm.cdsGetReport43DeathPREGDEATH.AsString:=Before('-',TString(cmbDeathPREGDEATH.Items.Objects[cmbDeathPREGDEATH.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDepartmentSelect(Sender: TObject);
//var yrrStr,runStr,HN,_HN:string;
begin
  inherited;


  if trim(edSearchCID.Text)='' then exit;
  {
  HN := trim(edSearchCID.Text);

  if length(HN)<8 then
  begin
   yrrStr:=Copy(HN,1,2);
   runStr:=Copy(HN,3,length(HN)-2);
   _HN:=yrrStr+FormatCurr('000000'+runStr);



  end;
  }

 // ShowMessage(yrrStr);
 // ShowMessage(runStr);


 // exit;

  initial(pagesIndex[strtoint(TString(cmbDepartment.Items.Objects[cmbDepartment.ItemIndex]).Str)]);

  (*
  exit;

  if cmbDepartment.ItemIndex=0 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([1,2,4]);
  end
  else if cmbDepartment.ItemIndex=1 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([3,10]);
  end
  else if cmbDepartment.ItemIndex=2 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,14]);
  end
  else if cmbDepartment.ItemIndex=3 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,14,8,10,11]);
  end
  else if cmbDepartment.ItemIndex=4 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,14,8,10,11,12]);
  end
  else if cmbDepartment.ItemIndex=5 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,14,10,11,8,9]);
  end
  else if cmbDepartment.ItemIndex=6 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,10,11,20,21,22,23,24,25,26,31,32,33,34,35,38,39]);
  end
  else if cmbDepartment.ItemIndex=7 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,10,11,22,31,32,33,34,35]);
  end
  else if cmbDepartment.ItemIndex=8 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,10,11,22,29,23,31,32]);
  end
  else if cmbDepartment.ItemIndex=9 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,10,11,30]);
  end
  else if cmbDepartment.ItemIndex=10 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,10,11,31,32,37,38,39,40]);
  end
  else if cmbDepartment.ItemIndex=11 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,10,11,31,32,37,38,39,40]);
  end
  else if cmbDepartment.ItemIndex=12 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,25,26,28]);
  end
  else if cmbDepartment.ItemIndex=13 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([7,8,14,28,29,22]);
  end
  else if cmbDepartment.ItemIndex=14 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([1,2,6,36,41,42]);
  end
  else if cmbDepartment.ItemIndex=15 then
  begin
    //RsetComboBox;
    //ShowMessage(inttostr(cmbDepartment.ItemIndex));
    initial([5]);
  end

  *)



end;

procedure TfrmRp43OPD01Grid.cmbDiagOpdClinicSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
  fdm.cdsGetReport43DiagnosisOpdListCLINIC.AsString:=Before('-',TString(cmbDiagOpdClinic.Items.Objects[cmbDiagOpdClinic.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbDiagOpdDIAGCODEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);
end;

procedure TfrmRp43OPD01Grid.cmbDiagOpdDIAGCODESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
  fdm.cdsGetReport43DiagnosisOpdListDIAGCODE.AsString:=Before('-',TString(cmbDiagOpdDIAGCODE.Items.Objects[cmbDiagOpdDIAGCODE.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDiagOpdDIAGTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
  fdm.cdsGetReport43DiagnosisOpdListDIAGTYPE.AsString:=Before('-',TString(cmbDiagOpdDIAGTYPE.Items.Objects[cmbDiagOpdDIAGTYPE.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbDISCHARGESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonDISCHARGE.AsString
    :=Before('-',TString(cmbDISCHARGE.Items.Objects[cmbDISCHARGE.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDMFAMILYSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NcdscreenList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NcdscreenList.edit;
  fdm.cdsGetReport43NcdscreenList.FieldByName('DMFAMILY').AsString:=TString(cmbDMFAMILY.Items.Objects[cmbDMFAMILY.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbDrugAllergyALEVELSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Drugallergy.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Drugallergy.edit;
    fdm.cdsGetReport43DrugallergyALEVEL.AsString
      :=Before('-',TString(cmbDrugAllergyALEVEL.Items.Objects[cmbDrugAllergyALEVEL.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbDrugAllergySYMPTOMSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Drugallergy.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Drugallergy.edit;
    fdm.cdsGetReport43DrugallergySYMPTOM.AsString
      :=Before('-',TString(cmbDrugAllergySYMPTOM.Items.Objects[cmbDrugAllergySYMPTOM.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbDrugAllergyTYPEDXSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Drugallergy.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Drugallergy.edit;
    fdm.cdsGetReport43DrugallergyTYPEDX.AsString
      :=Before('-',TString(cmbDrugAllergyTYPEDX.Items.Objects[cmbDrugAllergyTYPEDX.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbDrugOpdCLINICSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DrugListOpd.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DrugListOpd.edit;
  fdm.cdsGetReport43DrugListOpd.FieldByName('CLINIC').AsString:=TString(cmbDrugOpdCLINIC.Items.Objects[cmbDrugOpdCLINIC.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbEducationSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonEDUCATION.AsString
    :=Before('-',TString(cmbEducation.Items.Objects[cmbEducation.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbEpiVACCINEPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43EpiList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43EpiList.edit;
  fdm.cdsGetReport43EpiListVACCINEPLACE.AsString:=TString(cmbEpiVACCINEPLACE.Items.Objects[cmbEpiVACCINEPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbEpiVACCINETYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43EpiList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43EpiList.edit;
  fdm.cdsGetReport43EpiListVACCINETYPE.AsString:=TString(cmbEpiVACCINETYPE.Items.Objects[cmbEpiVACCINETYPE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.CmbFoodSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NutritionList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NutritionList.edit;
  fdm.cdsGetReport43NutritionListFOOD.AsString:=TString(CmbFood.Items.Objects[CmbFood.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.CmbFOOD_NewSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NewbornCareList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornCareList.edit;
  fdm.cdsGetReport43NewbornCareListFOOD.AsString:=TString(CmbFOOD_New.Items.Objects[CmbFOOD_New.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbFStatusSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonFSTATUS.AsString
    :=Before('-',TString(cmbFStatus.Items.Objects[cmbFStatus.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbHomeACONTROLSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeACONTROL.AsString
    :=Before('-',TString(cmbHomeACONTROL.Items.Objects[cmbHomeACONTROL.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeAMPURSelect(Sender: TObject);
begin
  inherited;
  cmbHomeTAMBON.ItemIndex := fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str,fdm.cdsGetReport43HomeTAMBON.AsString,true);

  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
    fdm.cdsGetReport43HomeAMPUR.AsString
      :=Before('-',TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeBCONTROLSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeBCONTROL.AsString
    :=Before('-',TString(cmbHomeBCONTROL.Items.Objects[cmbHomeBCONTROL.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeCHANGWATSelect(Sender: TObject);
begin
  inherited;
  cmbHomeAMPUR.ItemIndex
  := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,fdm.cdsGetReport43HomeAMPUR.AsString,true);

  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
    fdm.cdsGetReport43HomeCHANGWAT.AsString
      :=Before('-',TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeCHEMICALSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeCHEMICAL.AsString
    :=Before('-',TString(cmbHomeCHEMICAL.Items.Objects[cmbHomeCHEMICAL.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeCLEANLINESSSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeCLEANLINESS.AsString
    :=Before('-',TString(cmbHomeCLEANLINESS.Items.Objects[cmbHomeCLEANLINESS.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeDURABILITYSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeDURABILITY.AsString
    :=Before('-',TString(cmbHomeDURABILITY.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeGARBAGESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeGARBAGE.AsString
    :=Before('-',TString(cmbHomeGARBAGE.Items.Objects[cmbHomeGARBAGE.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeHOUSETYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeHOUSETYPE.AsString
    :=Before('-',TString(cmbHomeHOUSETYPE.Items.Objects[cmbHomeHOUSETYPE.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbHomeHOUSINGSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeHOUSING.AsString
    :=Before('-',TString(cmbHomeHOUSING.Items.Objects[cmbHomeHOUSING.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeLIGHTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeLIGHT.AsString
    :=Before('-',TString(cmbHomeLIGHT.Items.Objects[cmbHomeLIGHT.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeLOCATYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeLOCATYPE.AsString
    :=Before('-',TString(cmbHomeLOCATYPE.Items.Objects[cmbHomeLOCATYPE.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeMFOODSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeMFOOD.AsString
    :=Before('-',TString(cmbHomeMFOOD.Items.Objects[cmbHomeMFOOD.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeTAMBONSelect(Sender: TObject);
begin
  inherited;

  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;



  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbHomeAMPUR.ItemIndex
      := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,true);
    cmbHomeCHANGWAT.ItemIndex
      := fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
    fdm.cdsGetReport43HomeTAMBON.AsString
      :=Before('-',TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeTOILETSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeTOILET.AsString
    :=Before('-',TString(cmbHomeTOILET.Items.Objects[cmbHomeTOILET.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeVENTILATIONSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeVENTILATION.AsString
    :=Before('-',TString(cmbHomeVENTILATION.Items.Objects[cmbHomeVENTILATION.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeWATERSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeWATER.AsString
    :=Before('-',TString(cmbHomeWATER.Items.Objects[cmbHomeWATER.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeWATERTMSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeWATERTM.AsString
    :=Before('-',TString(cmbHomeWATERTM.Items.Objects[cmbHomeWATERTM.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbHomeWATERTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Home.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Home.edit;
  fdm.cdsGetReport43HomeWATERTYPE.AsString
    :=Before('-',TString(cmbHomeWATERTYPE.Items.Objects[cmbHomeWATERTYPE.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.CmbHTFAMILYSelect(Sender: TObject);
begin
  inherited;
 if not (fdm.cdsGetReport43NcdscreenList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NcdscreenList.edit;
  fdm.cdsGetReport43NcdscreenList.FieldByName('HTFAMILY').AsString:=TString(CmbHTFAMILY.Items.Objects[CmbHTFAMILY.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.CmbIntimeSelect(Sender: TObject);
begin
  inherited;
 if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
    fdm.cdsGetReport43ServiceList.FieldByName('INTIME').AsString
    := TString(cmbInTime.Items.Objects[cmbInTime.ItemIndex]).Str ;

end;

procedure TfrmRp43OPD01Grid.cmbLaborBDOCTORSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBDOCTOR.AsString
    :=TString(cmbLaborBDOCTOR.Items.Objects[cmbLaborBDOCTOR.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbLaborBPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBPLACE.AsString
    :=TString(cmbLaborBPLACE.Items.Objects[cmbLaborBPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbLaborBRESULTKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);
end;

procedure TfrmRp43OPD01Grid.cmbLaborBRESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBRESULT.AsString:=TString(cmbLaborBRESULT.Items.Objects[cmbLaborBRESULT.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbLaborBTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabOr.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOr.edit;
  fdm.cdsGetReport43LabOrBTYPE.AsString
    :=TString(cmbLaborBTYPE.Items.Objects[cmbLaborBTYPE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.CmbLABTESTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43LabFuList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabFuList.edit;
      fdm.cdsGetReport43LabFuList.FieldByName('LABTEST').AsString:= TString(CmbLABTEST.Items.Objects[CmbLABTEST.ItemIndex]).Str

end;

procedure TfrmRp43OPD01Grid.CmbLocationSelect(Sender: TObject);
begin
  inherited;
       if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('LOCATION').AsString
      := TString(CmbLocation.Items.Objects[CmbLocation.ItemIndex]).Str ;

end;

procedure TfrmRp43OPD01Grid.cmbMSTATUSSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonMSTATUS.AsString:=TString(cmbMSTATUS.Items.Objects[cmbMSTATUS.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbNationSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonNATION.AsString
    :=TString(cmbNation.Items.Objects[cmbNation.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbNewbornASPHYXIASelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornASPHYXIA.AsString:=TString(cmbNewbornASPHYXIA.Items.Objects[cmbNewbornASPHYXIA.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbNewbornBDOCTORSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBDOCTOR.AsString:=TString(cmbNewbornBDOCTOR.Items.Objects[cmbNewbornBDOCTOR.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbNewbornBHOSPSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBHOSP.AsString:=TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbNewbornBIRTHNOSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBIRTHNO.AsString:=TString(cmbNewbornBIRTHNO.Items.Objects[cmbNewbornBIRTHNO.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbNewbornBPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBPLACE.AsString:=TString(cmbNewbornBPLACE.Items.Objects[cmbNewbornBPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbNewbornBTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornBTYPE.AsString:=TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBTYPE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbNewbornTSHSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornTSH.AsString:=TString(cmbNewbornTSH.Items.Objects[cmbNewbornTSH.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbNewbornVITKSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Newborn.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Newborn.edit;
  fdm.cdsGetReport43NewbornVITK.AsString:=TString(cmbNewbornVITK.Items.Objects[cmbNewbornVITK.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbOccupationNewSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonOCCUPATION_NEW.AsString
    :=Before('-',TString(cmbOccupationNew.Items.Objects[cmbOccupationNew.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbOccupationOldSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonOCCUPATION_OLD.AsString
    :=Before('-',TString(cmbOccupationOld.Items.Objects[cmbOccupationOld.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbPersonTypeAreaSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonTYPEAREA.AsString
    :=Before('-',TString(cmbPersonTypeArea.Items.Objects[cmbPersonTypeArea.ItemIndex]).Str);
end;

procedure TfrmRp43OPD01Grid.cmbPostnatalPPRESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Postnatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Postnatal.edit;
  fdm.cdsGetReport43PostnatalPPRESULT.AsString:=TString(cmbPostnatalPPRESULT.Items.Objects[cmbPostnatalPPRESULT.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbPrenatalHB_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalHB_RESULT.AsString:=TString(cmbPrenatalHB_RESULT.Items.Objects[cmbPrenatalHB_RESULT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbPrenatalHIV_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalHIV_RESULT.AsString:=TString(cmbPrenatalHIV_RESULT.Items.Objects[cmbPrenatalHIV_RESULT.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbPrenatalTHALASSEMIASelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalTHALASSEMIA.AsString:=TString(cmbPrenatalTHALASSEMIA.Items.Objects[cmbPrenatalTHALASSEMIA.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbPrenatalVDRL_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Prenatal.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Prenatal.edit;
  fdm.cdsGetReport43PrenatalVDRL_RESULT.AsString:=TString(cmbPrenatalVDRL_RESULT.Items.Objects[cmbPrenatalVDRL_RESULT.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbProcedureOpdCLINICSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43ProcedureOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ProcedureOpdList.edit;
  fdm.cdsGetReport43ProcedureOpdList.FieldByName('CLINIC').AsString:=TString(cmbProcedureOpdCLINIC.Items.Objects[cmbProcedureOpdCLINIC.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbProcedureOpdPROCEDCODESelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43ProcedureOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ProcedureOpdList.edit;
     fdm.cdsGetReport43ProcedureOpdList.FieldByName('PROCEDCODE').AsString:=TString(cmbProcedureOpdPROCEDCODE.Items.Objects[cmbProcedureOpdPROCEDCODE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbRaceSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonRACE.AsString
    :=Before('-',TString(cmbRace.Items.Objects[cmbRace.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.cmbReligionSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonRELIGION.AsString
    :=Before('-',TString(cmbReligion.Items.Objects[cmbReligion.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.CmbSCREENPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NcdscreenList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NcdscreenList.edit;
  fdm.cdsGetReport43NcdscreenList.FieldByName('SCREENPLACE').AsString:=TString(CmbSCREENPLACE.Items.Objects[CmbSCREENPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbServiceCAUSEINSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('CAUSEIN').AsString
    :=TString(cmbServiceCAUSEIN.Items.Objects[cmbServiceCAUSEIN.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbServiceCAUSEOUTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('CAUSEOUT').AsString
    :=TString(cmbServiceCAUSEOUT.Items.Objects[cmbServiceCAUSEOUT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbServiceINSTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('INSTYPE').AsString
    :=TString(cmbServiceINSTYPE.Items.Objects[cmbServiceINSTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbServiceMAINSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('MAIN').AsString
    :=TString(cmbServiceMAIN.Items.Objects[cmbServiceMAIN.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbServiceREFERINHOSPSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('REFERINHOSP').AsString
    :=TString(cmbServiceREFERINHOSP.Items.Objects[cmbServiceREFERINHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbServiceREFEROUTHOSPSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('REFEROUTHOSP').AsString
    :=TString(cmbServiceREFEROUTHOSP.Items.Objects[cmbServiceREFEROUTHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbServiceSERVPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('SERVPLACE').AsString
    :=TString(cmbServiceSERVPLACE.Items.Objects[cmbServiceSERVPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbServiceTYPEINSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Service.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Service.edit;
  fdm.cdsGetReport43Service.FieldByName('TYPEIN').AsString
    :=TString(cmbServiceTYPEIN.Items.Objects[cmbServiceTYPEIN.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbSERVPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NcdscreenList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NcdscreenList.edit;
  fdm.cdsGetReport43NcdscreenList.FieldByName('SERVPLACE').AsString:=TString(cmbSERVPLACE.Items.Objects[cmbSERVPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.CmbSMOKESelect(Sender: TObject);
begin
  inherited;
 if not (fdm.cdsGetReport43NcdscreenList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NcdscreenList.edit;
  fdm.cdsGetReport43NcdscreenList.FieldByName('SMOKE').AsString:=TString(CmbSMOKE.Items.Objects[CmbSMOKE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbSpecialPpPPSPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
   fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString:=TString(cmbSpecialPpPPSPLACE.Items.Objects[cmbSpecialPpPPSPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43OPD01Grid.cmbSpecialPpSERVPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
  fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString:=TString(cmbSpecialPpSERVPLACE.Items.Objects[cmbSpecialPpSERVPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.CmbTYPEOUTSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
    fdm.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString:=TString(CmbTYPEOUT.Items.Objects[CmbTYPEOUT.ItemIndex]).Str;

end;

procedure TfrmRp43OPD01Grid.cmbVstatusSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
  fdm.cdsGetReport43PersonVSTATUS.AsString
    :=Before('-',TString(cmbVstatus.Items.Objects[cmbVstatus.ItemIndex]).Str);

end;

procedure TfrmRp43OPD01Grid.UniFormCreate(Sender: TObject);
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

procedure TfrmRp43OPD01Grid.UniFormShow(Sender: TObject);
var k:integer;
begin


  // inherited;
 // UniLabel1.Caption:=UniApplication.Parameters.Values['Button'];
  // init
  RsetComboBox;
  initDepsArrayPage;
  // reset all tab
  for k:=1 to pgAll43File.PageCount-1 do
      pgAll43File.Pages[k].TabVisible:=false;


  if UniApplication.Parameters.Values['PID']<>'' then
  begin
    cmbDepartment.ItemIndex:=0;
    UniTimerAutoGet.Enabled:=true;
  end;

  if FDefaultPageIdx>0 then
   cmbDepartment.ItemIndex:=FDefaultPageIdx-1;



end;


procedure TfrmRp43OPD01Grid.UniTimerAutoGetTimer(Sender: TObject);
var HN:string;
begin
  inherited;
  hn:=  FDM.getHN(strtoint(UniApplication.Parameters.Values['PID']));
  if HN<>'' then
  begin
    edSearchCID.Text:=HN;
    cmbDepartmentSelect(sender);
  end else
    ShowMessage('ไม่พบ PID ที่ต้องการค้นหา');

end;

end.
