unit DS43FileIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, DS43FileIntf, SqlExpr,
  DBXDataSnap, DBXCommon, DBXPool, frxClass, frxDBSet, frxExportPDF, frxRich,
  IndyPeerImpl, DbxDevartMySql, Data.FMTBcd, Datasnap.Provider,System.DateUtils;

type
  TActionMode = (amView, amEdit, amAppend, amRemove);

TString = class(TObject)
   private
     fStr: String;
   public
     constructor Create(const AStr: String) ;
     property Str: String read FStr write FStr;
   end;


  TDS43FileDM = class(TDSMainDM)
    cdsGetReport43Person: TClientDataSet;
    cdsGetReport43PersonHOSPCODE: TWideStringField;
    cdsGetReport43PersonCID: TWideStringField;
    cdsGetReport43PersonHID: TWideStringField;
    cdsGetReport43PersonPRENAME: TWideStringField;
    cdsGetReport43PersonNAME: TWideStringField;
    cdsGetReport43PersonLNAME: TWideStringField;
    cdsGetReport43PersonHN: TWideStringField;
    cdsGetReport43PersonSEX: TWideStringField;
    cdsGetReport43PersonBIRTH: TDateField;
    cdsGetReport43PersonMSTATUS: TWideStringField;
    cdsGetReport43PersonOCCUPATION_OLD: TWideStringField;
    cdsGetReport43PersonOCCUPATION_NEW: TWideStringField;
    cdsGetReport43PersonRACE: TWideStringField;
    cdsGetReport43PersonNATION: TWideStringField;
    cdsGetReport43PersonRELIGION: TWideStringField;
    cdsGetReport43PersonEDUCATION: TWideStringField;
    cdsGetReport43PersonFSTATUS: TWideStringField;
    cdsGetReport43PersonFATHER: TWideStringField;
    cdsGetReport43PersonMOTHER: TWideStringField;
    cdsGetReport43PersonCOUPLE: TWideStringField;
    cdsGetReport43PersonVSTATUS: TWideStringField;
    cdsGetReport43PersonMOVEIN: TDateField;
    cdsGetReport43PersonDISCHARGE: TWideStringField;
    cdsGetReport43PersonDDISCHARGE: TDateField;
    cdsGetReport43PersonABOGROUP: TWideStringField;
    cdsGetReport43PersonRHGROUP: TWideStringField;
    cdsGetReport43PersonLABOR: TWideStringField;
    cdsGetReport43PersonPASSPORT: TWideStringField;
    cdsGetReport43PersonTYPEAREA: TWideStringField;
    cdsGetReport43PersonD_UPDATE: TSQLTimeStampField;
    cdsGetReport43PersonEXPORT_DATE: TSQLTimeStampField;
    cdsGetReport43Service: TClientDataSet;
    cdsGetReport43PersonPID: TIntegerField;
    cdsGetReport43ServiceList: TClientDataSet;
    cdsGetReport43DiagnosisOpd: TClientDataSet;
    cdsGetReport43DiagnosisOpdList: TClientDataSet;
    cdsGetReport43DiagnosisOpdHOSPCODE: TWideStringField;
    cdsGetReport43DiagnosisOpdPID: TIntegerField;
    cdsGetReport43DiagnosisOpdSEQ: TIntegerField;
    cdsGetReport43DiagnosisOpdDATE_SERV: TDateField;
    cdsGetReport43DiagnosisOpdDIAGTYPE: TWideStringField;
    cdsGetReport43DiagnosisOpdDIAGCODE: TWideStringField;
    cdsGetReport43DiagnosisOpdCLINIC: TWideStringField;
    cdsGetReport43DiagnosisOpdPROVIDER: TWideStringField;
    cdsGetReport43DiagnosisOpdD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DiagnosisOpdEXPORT_DATE: TSQLTimeStampField;
    cdsGetReport43DiagnosisOpdListHOSPCODE: TWideStringField;
    cdsGetReport43DiagnosisOpdListPID: TIntegerField;
    cdsGetReport43DiagnosisOpdListSEQ: TIntegerField;
    cdsGetReport43DiagnosisOpdListDATE_SERV: TDateField;
    cdsGetReport43DiagnosisOpdListDIAGTYPE: TWideStringField;
    cdsGetReport43DiagnosisOpdListDIAGCODE: TWideStringField;
    cdsGetReport43DiagnosisOpdListCLINIC: TWideStringField;
    cdsGetReport43DiagnosisOpdListPROVIDER: TWideStringField;
    cdsGetReport43DiagnosisOpdListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DiagnosisOpdListEXPORT_DATE: TSQLTimeStampField;
    cdsGetReport43ProcedureOpd: TClientDataSet;
    cdsGetReport43ProcedureOpdList: TClientDataSet;
    cdsGetReport43DrugOpd: TClientDataSet;
    cdsGetReport43DrugListOpd: TClientDataSet;
    cdsGetReport43Appointment: TClientDataSet;
    cdsGetReport43AppointmentList: TClientDataSet;
    cdsGetReport43AppointmentREPORTID: TIntegerField;
    cdsGetReport43AppointmentHOSPCODE: TWideStringField;
    cdsGetReport43AppointmentPID: TIntegerField;
    cdsGetReport43AppointmentAN: TIntegerField;
    cdsGetReport43AppointmentSEQ: TIntegerField;
    cdsGetReport43AppointmentDATE_SERV: TDateField;
    cdsGetReport43AppointmentCLINIC: TWideStringField;
    cdsGetReport43AppointmentAPDATE: TDateField;
    cdsGetReport43AppointmentAPTYPE: TWideStringField;
    cdsGetReport43AppointmentAPDIAG: TWideStringField;
    cdsGetReport43AppointmentPROVIDER: TWideStringField;
    cdsGetReport43AppointmentD_UPDATE: TSQLTimeStampField;
    cdsGetReport43AppointmentListREPORTID: TIntegerField;
    cdsGetReport43AppointmentListHOSPCODE: TWideStringField;
    cdsGetReport43AppointmentListPID: TIntegerField;
    cdsGetReport43AppointmentListAN: TIntegerField;
    cdsGetReport43AppointmentListSEQ: TIntegerField;
    cdsGetReport43AppointmentListDATE_SERV: TDateField;
    cdsGetReport43AppointmentListCLINIC: TWideStringField;
    cdsGetReport43AppointmentListAPDATE: TDateField;
    cdsGetReport43AppointmentListAPTYPE: TWideStringField;
    cdsGetReport43AppointmentListAPDIAG: TWideStringField;
    cdsGetReport43AppointmentListPROVIDER: TWideStringField;
    cdsGetReport43AppointmentListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Anc: TClientDataSet;
    cdsGetReport43AncList: TClientDataSet;
    cdsGetReport43AncREPORTID: TIntegerField;
    cdsGetReport43AncHOSPCODE: TWideStringField;
    cdsGetReport43AncPID: TIntegerField;
    cdsGetReport43AncSEQ: TIntegerField;
    cdsGetReport43AncDATE_SERV: TDateField;
    cdsGetReport43AncGRAVIDA: TWideStringField;
    cdsGetReport43AncANCNO: TWideStringField;
    cdsGetReport43AncGA: TWideStringField;
    cdsGetReport43AncANCRESULT: TWideStringField;
    cdsGetReport43AncANCPLACE: TWideStringField;
    cdsGetReport43AncPROVIDER: TWideStringField;
    cdsGetReport43AncD_UPDATE: TSQLTimeStampField;
    cdsGetReport43AncListREPORTID: TIntegerField;
    cdsGetReport43AncListHOSPCODE: TWideStringField;
    cdsGetReport43AncListPID: TIntegerField;
    cdsGetReport43AncListSEQ: TIntegerField;
    cdsGetReport43AncListDATE_SERV: TDateField;
    cdsGetReport43AncListGRAVIDA: TWideStringField;
    cdsGetReport43AncListANCNO: TWideStringField;
    cdsGetReport43AncListGA: TWideStringField;
    cdsGetReport43AncListANCRESULT: TWideStringField;
    cdsGetReport43AncListANCPLACE: TWideStringField;
    cdsGetReport43AncListPROVIDER: TWideStringField;
    cdsGetReport43AncListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Prenatal: TClientDataSet;
    cdsGetReport43PrenatalList: TClientDataSet;
    cdsGetReport43PrenatalREPORTID: TIntegerField;
    cdsGetReport43PrenatalHOSPCODE: TWideStringField;
    cdsGetReport43PrenatalPID: TIntegerField;
    cdsGetReport43PrenatalGRAVIDA: TWideStringField;
    cdsGetReport43PrenatalLMP: TDateField;
    cdsGetReport43PrenatalEDC: TDateField;
    cdsGetReport43PrenatalVDRL_RESULT: TWideStringField;
    cdsGetReport43PrenatalHB_RESULT: TWideStringField;
    cdsGetReport43PrenatalHIV_RESULT: TWideStringField;
    cdsGetReport43PrenatalDATE_HCT: TDateField;
    cdsGetReport43PrenatalHCT_RESULT: TIntegerField;
    cdsGetReport43PrenatalTHALASSEMIA: TWideStringField;
    cdsGetReport43PrenatalD_UPDATE: TSQLTimeStampField;
    cdsGetReport43PrenatalListREPORTID: TIntegerField;
    cdsGetReport43PrenatalListHOSPCODE: TWideStringField;
    cdsGetReport43PrenatalListPID: TIntegerField;
    cdsGetReport43PrenatalListGRAVIDA: TWideStringField;
    cdsGetReport43PrenatalListLMP: TDateField;
    cdsGetReport43PrenatalListEDC: TDateField;
    cdsGetReport43PrenatalListVDRL_RESULT: TWideStringField;
    cdsGetReport43PrenatalListHB_RESULT: TWideStringField;
    cdsGetReport43PrenatalListHIV_RESULT: TWideStringField;
    cdsGetReport43PrenatalListDATE_HCT: TDateField;
    cdsGetReport43PrenatalListHCT_RESULT: TIntegerField;
    cdsGetReport43PrenatalListTHALASSEMIA: TWideStringField;
    cdsGetReport43PrenatalListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Postnatal: TClientDataSet;
    cdsGetReport43PostnatalList: TClientDataSet;
    cdsGetReport43PostnatalREPORTID: TIntegerField;
    cdsGetReport43PostnatalHOSPCODE: TWideStringField;
    cdsGetReport43PostnatalPID: TIntegerField;
    cdsGetReport43PostnatalSEQ: TWideStringField;
    cdsGetReport43PostnatalGRAVIDA: TWideStringField;
    cdsGetReport43PostnatalBDATE: TDateField;
    cdsGetReport43PostnatalPPCARE: TDateField;
    cdsGetReport43PostnatalPPPLACE: TWideStringField;
    cdsGetReport43PostnatalPPRESULT: TWideStringField;
    cdsGetReport43PostnatalPROVIDER: TWideStringField;
    cdsGetReport43PostnatalD_UPDATE: TSQLTimeStampField;
    cdsGetReport43PostnatalListREPORTID: TIntegerField;
    cdsGetReport43PostnatalListHOSPCODE: TWideStringField;
    cdsGetReport43PostnatalListPID: TIntegerField;
    cdsGetReport43PostnatalListSEQ: TWideStringField;
    cdsGetReport43PostnatalListGRAVIDA: TWideStringField;
    cdsGetReport43PostnatalListBDATE: TDateField;
    cdsGetReport43PostnatalListPPCARE: TDateField;
    cdsGetReport43PostnatalListPPPLACE: TWideStringField;
    cdsGetReport43PostnatalListPPRESULT: TWideStringField;
    cdsGetReport43PostnatalListPROVIDER: TWideStringField;
    cdsGetReport43PostnatalListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43LabOr: TClientDataSet;
    cdsGetReport43LabOrList: TClientDataSet;
    cdsGetReport43LabOrREPORTID: TIntegerField;
    cdsGetReport43LabOrHOSPCODE: TWideStringField;
    cdsGetReport43LabOrPID: TIntegerField;
    cdsGetReport43LabOrGRAVIDA: TWideStringField;
    cdsGetReport43LabOrLMP: TDateField;
    cdsGetReport43LabOrEDC: TDateField;
    cdsGetReport43LabOrBDATE: TDateField;
    cdsGetReport43LabOrBRESULT: TWideStringField;
    cdsGetReport43LabOrBPLACE: TWideStringField;
    cdsGetReport43LabOrBHOSP: TWideStringField;
    cdsGetReport43LabOrBTYPE: TWideStringField;
    cdsGetReport43LabOrBDOCTOR: TWideStringField;
    cdsGetReport43LabOrLBORN: TIntegerField;
    cdsGetReport43LabOrSBORN: TIntegerField;
    cdsGetReport43LabOrD_UPDATE: TSQLTimeStampField;
    cdsGetReport43LabOrListREPORTID: TIntegerField;
    cdsGetReport43LabOrListHOSPCODE: TWideStringField;
    cdsGetReport43LabOrListPID: TIntegerField;
    cdsGetReport43LabOrListGRAVIDA: TWideStringField;
    cdsGetReport43LabOrListLMP: TDateField;
    cdsGetReport43LabOrListEDC: TDateField;
    cdsGetReport43LabOrListBDATE: TDateField;
    cdsGetReport43LabOrListBRESULT: TWideStringField;
    cdsGetReport43LabOrListBPLACE: TWideStringField;
    cdsGetReport43LabOrListBHOSP: TWideStringField;
    cdsGetReport43LabOrListBTYPE: TWideStringField;
    cdsGetReport43LabOrListBDOCTOR: TWideStringField;
    cdsGetReport43LabOrListLBORN: TIntegerField;
    cdsGetReport43LabOrListSBORN: TIntegerField;
    cdsGetReport43LabOrListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Women: TClientDataSet;
    cdsGetReport43WomenList: TClientDataSet;
    cdsGetReport43WomenListREPORTID: TIntegerField;
    cdsGetReport43WomenListHOSPCODE: TWideStringField;
    cdsGetReport43WomenListPID: TIntegerField;
    cdsGetReport43WomenListFPTYPE: TWideStringField;
    cdsGetReport43WomenListNOFPCAUSE: TWideStringField;
    cdsGetReport43WomenListTOTALSON: TIntegerField;
    cdsGetReport43WomenListNUMBERSON: TIntegerField;
    cdsGetReport43WomenListABORTION: TIntegerField;
    cdsGetReport43WomenListSTILLBIRTH: TIntegerField;
    cdsGetReport43WomenListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43WomenREPORTID: TIntegerField;
    cdsGetReport43WomenHOSPCODE: TWideStringField;
    cdsGetReport43WomenPID: TIntegerField;
    cdsGetReport43WomenFPTYPE: TWideStringField;
    cdsGetReport43WomenNOFPCAUSE: TWideStringField;
    cdsGetReport43WomenTOTALSON: TIntegerField;
    cdsGetReport43WomenNUMBERSON: TIntegerField;
    cdsGetReport43WomenABORTION: TIntegerField;
    cdsGetReport43WomenSTILLBIRTH: TIntegerField;
    cdsGetReport43WomenD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Fp: TClientDataSet;
    cdsGetReport43FpList: TClientDataSet;
    cdsGetReport43FpREPORTID: TIntegerField;
    cdsGetReport43FpHOSPCODE: TWideStringField;
    cdsGetReport43FpPID: TIntegerField;
    cdsGetReport43FpSEQ: TIntegerField;
    cdsGetReport43FpDATE_SERV: TDateField;
    cdsGetReport43FpFPTYPE: TWideStringField;
    cdsGetReport43FpFPPLACE: TWideStringField;
    cdsGetReport43FpPROVIDER: TWideStringField;
    cdsGetReport43FpD_UPDATE: TSQLTimeStampField;
    cdsGetReport43FpListREPORTID: TIntegerField;
    cdsGetReport43FpListHOSPCODE: TWideStringField;
    cdsGetReport43FpListPID: TIntegerField;
    cdsGetReport43FpListSEQ: TIntegerField;
    cdsGetReport43FpListDATE_SERV: TDateField;
    cdsGetReport43FpListFPTYPE: TWideStringField;
    cdsGetReport43FpListFPPLACE: TWideStringField;
    cdsGetReport43FpListPROVIDER: TWideStringField;
    cdsGetReport43FpListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Epi: TClientDataSet;
    cdsGetReport43EpiList: TClientDataSet;
    cdsGetReport43EpiREPORTID: TIntegerField;
    cdsGetReport43EpiHOSPCODE: TWideStringField;
    cdsGetReport43EpiPID: TIntegerField;
    cdsGetReport43EpiSEQ: TIntegerField;
    cdsGetReport43EpiDATE_SERV: TDateField;
    cdsGetReport43EpiVACCINETYPE: TWideStringField;
    cdsGetReport43EpiVACCINEPLACE: TWideStringField;
    cdsGetReport43EpiPROVIDER: TWideStringField;
    cdsGetReport43EpiD_UPDATE: TSQLTimeStampField;
    cdsGetReport43EpiListREPORTID: TIntegerField;
    cdsGetReport43EpiListHOSPCODE: TWideStringField;
    cdsGetReport43EpiListPID: TIntegerField;
    cdsGetReport43EpiListSEQ: TIntegerField;
    cdsGetReport43EpiListDATE_SERV: TDateField;
    cdsGetReport43EpiListVACCINETYPE: TWideStringField;
    cdsGetReport43EpiListVACCINEPLACE: TWideStringField;
    cdsGetReport43EpiListPROVIDER: TWideStringField;
    cdsGetReport43EpiListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Icf: TClientDataSet;
    cdsGetReport43IcfList: TClientDataSet;
    cdsGetReport43IcfREPORTID: TIntegerField;
    cdsGetReport43IcfHOSPCODE: TWideStringField;
    cdsGetReport43IcfDISABID: TWideStringField;
    cdsGetReport43IcfPID: TIntegerField;
    cdsGetReport43IcfSEQ: TIntegerField;
    cdsGetReport43IcfDATE_SERV: TDateField;
    cdsGetReport43IcfICF: TWideStringField;
    cdsGetReport43IcfQUALIFIER: TWideStringField;
    cdsGetReport43IcfPROVIDER: TWideStringField;
    cdsGetReport43IcfD_UPDATE: TSQLTimeStampField;
    cdsGetReport43IcfListREPORTID: TIntegerField;
    cdsGetReport43IcfListHOSPCODE: TWideStringField;
    cdsGetReport43IcfListDISABID: TWideStringField;
    cdsGetReport43IcfListPID: TIntegerField;
    cdsGetReport43IcfListSEQ: TIntegerField;
    cdsGetReport43IcfListDATE_SERV: TDateField;
    cdsGetReport43IcfListICF: TWideStringField;
    cdsGetReport43IcfListQUALIFIER: TWideStringField;
    cdsGetReport43IcfListPROVIDER: TWideStringField;
    cdsGetReport43IcfListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43SpecialPp: TClientDataSet;
    cdsGetReport43SpecialPpList: TClientDataSet;
    cdsGetReport43SpecialPpREPORTID: TIntegerField;
    cdsGetReport43SpecialPpHOSPCODE: TWideStringField;
    cdsGetReport43SpecialPpPID: TWideStringField;
    cdsGetReport43SpecialPpSEQ: TWideStringField;
    cdsGetReport43SpecialPpDATE_SERV: TDateField;
    cdsGetReport43SpecialPpSERVPLACE: TWideStringField;
    cdsGetReport43SpecialPpPPSPECIAL: TWideStringField;
    cdsGetReport43SpecialPpPPSPLACE: TWideStringField;
    cdsGetReport43SpecialPpPROVIDER: TWideStringField;
    cdsGetReport43SpecialPpD_UPDATE: TSQLTimeStampField;
    cdsGetReport43SpecialPpListREPORTID: TIntegerField;
    cdsGetReport43SpecialPpListHOSPCODE: TWideStringField;
    cdsGetReport43SpecialPpListPID: TWideStringField;
    cdsGetReport43SpecialPpListSEQ: TWideStringField;
    cdsGetReport43SpecialPpListDATE_SERV: TDateField;
    cdsGetReport43SpecialPpListSERVPLACE: TWideStringField;
    cdsGetReport43SpecialPpListPPSPECIAL: TWideStringField;
    cdsGetReport43SpecialPpListPPSPLACE: TWideStringField;
    cdsGetReport43SpecialPpListPROVIDER: TWideStringField;
    cdsGetReport43SpecialPpListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Chronic: TClientDataSet;
    cdsGetReport43ChronicList: TClientDataSet;
    cdsGetReport43ChronicREPORTID: TIntegerField;
    cdsGetReport43ChronicHOSPCODE: TWideStringField;
    cdsGetReport43ChronicPID: TWideStringField;
    cdsGetReport43ChronicDATE_DIAG: TDateField;
    cdsGetReport43ChronicCHRONIC: TWideStringField;
    cdsGetReport43ChronicHOSP_DX: TWideStringField;
    cdsGetReport43ChronicHOSP_RX: TWideStringField;
    cdsGetReport43ChronicDATE_DISCH: TDateField;
    cdsGetReport43ChronicTYPEDISCH: TWideStringField;
    cdsGetReport43ChronicD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ChronicListREPORTID: TIntegerField;
    cdsGetReport43ChronicListHOSPCODE: TWideStringField;
    cdsGetReport43ChronicListPID: TWideStringField;
    cdsGetReport43ChronicListDATE_DIAG: TDateField;
    cdsGetReport43ChronicListCHRONIC: TWideStringField;
    cdsGetReport43ChronicListHOSP_DX: TWideStringField;
    cdsGetReport43ChronicListHOSP_RX: TWideStringField;
    cdsGetReport43ChronicListDATE_DISCH: TDateField;
    cdsGetReport43ChronicListTYPEDISCH: TWideStringField;
    cdsGetReport43ChronicListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ChronicFu: TClientDataSet;
    cdsGetReport43ChronicFuList: TClientDataSet;
    cdsGetReport43ChronicFuREPORTID: TIntegerField;
    cdsGetReport43ChronicFuHOSPCODE: TWideStringField;
    cdsGetReport43ChronicFuPID: TIntegerField;
    cdsGetReport43ChronicFuSEQ: TIntegerField;
    cdsGetReport43ChronicFuDATE_SERV: TDateField;
    cdsGetReport43ChronicFuWEIGHT: TIntegerField;
    cdsGetReport43ChronicFuHEIGHT: TIntegerField;
    cdsGetReport43ChronicFuWAIST_CM: TIntegerField;
    cdsGetReport43ChronicFuSBP: TIntegerField;
    cdsGetReport43ChronicFuDBP: TIntegerField;
    cdsGetReport43ChronicFuFOOT: TWideStringField;
    cdsGetReport43ChronicFuRETINA: TWideStringField;
    cdsGetReport43ChronicFuPROVIDER: TWideStringField;
    cdsGetReport43ChronicFuD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ChronicFuListREPORTID: TIntegerField;
    cdsGetReport43ChronicFuListHOSPCODE: TWideStringField;
    cdsGetReport43ChronicFuListPID: TIntegerField;
    cdsGetReport43ChronicFuListSEQ: TIntegerField;
    cdsGetReport43ChronicFuListDATE_SERV: TDateField;
    cdsGetReport43ChronicFuListWEIGHT: TIntegerField;
    cdsGetReport43ChronicFuListHEIGHT: TIntegerField;
    cdsGetReport43ChronicFuListWAIST_CM: TIntegerField;
    cdsGetReport43ChronicFuListSBP: TIntegerField;
    cdsGetReport43ChronicFuListDBP: TIntegerField;
    cdsGetReport43ChronicFuListFOOT: TWideStringField;
    cdsGetReport43ChronicFuListRETINA: TWideStringField;
    cdsGetReport43ChronicFuListPROVIDER: TWideStringField;
    cdsGetReport43ChronicFuListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Nutrition: TClientDataSet;
    cdsGetReport43NutritionList: TClientDataSet;
    cdsGetReport43NutritionREPORTID: TIntegerField;
    cdsGetReport43NutritionHOSPCODE: TWideStringField;
    cdsGetReport43NutritionPID: TIntegerField;
    cdsGetReport43NutritionSEQ: TIntegerField;
    cdsGetReport43NutritionDATE_SERV: TDateField;
    cdsGetReport43NutritionNUTRITIONPLACE: TWideStringField;
    cdsGetReport43NutritionWEIGHT: TIntegerField;
    cdsGetReport43NutritionHEIGHT: TIntegerField;
    cdsGetReport43NutritionHEADCIRCUM: TIntegerField;
    cdsGetReport43NutritionCHILDDEVELOP: TWideStringField;
    cdsGetReport43NutritionFOOD: TWideStringField;
    cdsGetReport43NutritionBOTTLE: TWideStringField;
    cdsGetReport43NutritionPROVIDER: TWideStringField;
    cdsGetReport43NutritionD_UPDATE: TSQLTimeStampField;
    cdsGetReport43NutritionListREPORTID: TIntegerField;
    cdsGetReport43NutritionListHOSPCODE: TWideStringField;
    cdsGetReport43NutritionListPID: TIntegerField;
    cdsGetReport43NutritionListSEQ: TIntegerField;
    cdsGetReport43NutritionListDATE_SERV: TDateField;
    cdsGetReport43NutritionListNUTRITIONPLACE: TWideStringField;
    cdsGetReport43NutritionListWEIGHT: TIntegerField;
    cdsGetReport43NutritionListHEIGHT: TIntegerField;
    cdsGetReport43NutritionListHEADCIRCUM: TIntegerField;
    cdsGetReport43NutritionListCHILDDEVELOP: TWideStringField;
    cdsGetReport43NutritionListFOOD: TWideStringField;
    cdsGetReport43NutritionListBOTTLE: TWideStringField;
    cdsGetReport43NutritionListPROVIDER: TWideStringField;
    cdsGetReport43NutritionListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Death: TClientDataSet;
    cdsGetReport43DeathList: TClientDataSet;
    cdsGetReport43DeathREPORTID: TIntegerField;
    cdsGetReport43DeathHOSPCODE: TWideStringField;
    cdsGetReport43DeathPID: TIntegerField;
    cdsGetReport43DeathHOSPDEATH: TWideStringField;
    cdsGetReport43DeathAN: TWideStringField;
    cdsGetReport43DeathSEQ: TIntegerField;
    cdsGetReport43DeathDDEATH: TDateField;
    cdsGetReport43DeathCDEATH_A: TWideStringField;
    cdsGetReport43DeathCDEATH_B: TWideStringField;
    cdsGetReport43DeathCDEATH_C: TWideStringField;
    cdsGetReport43DeathCDEATH_D: TWideStringField;
    cdsGetReport43DeathODISEASE: TWideStringField;
    cdsGetReport43DeathCDEATH: TWideStringField;
    cdsGetReport43DeathPREGDEATH: TWideStringField;
    cdsGetReport43DeathPDEATH: TWideStringField;
    cdsGetReport43DeathPROVIDER: TWideStringField;
    cdsGetReport43DeathD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DeathListREPORTID: TIntegerField;
    cdsGetReport43DeathListHOSPCODE: TWideStringField;
    cdsGetReport43DeathListPID: TIntegerField;
    cdsGetReport43DeathListHOSPDEATH: TWideStringField;
    cdsGetReport43DeathListAN: TWideStringField;
    cdsGetReport43DeathListSEQ: TIntegerField;
    cdsGetReport43DeathListDDEATH: TDateField;
    cdsGetReport43DeathListCDEATH_A: TWideStringField;
    cdsGetReport43DeathListCDEATH_B: TWideStringField;
    cdsGetReport43DeathListCDEATH_C: TWideStringField;
    cdsGetReport43DeathListCDEATH_D: TWideStringField;
    cdsGetReport43DeathListODISEASE: TWideStringField;
    cdsGetReport43DeathListCDEATH: TWideStringField;
    cdsGetReport43DeathListPREGDEATH: TWideStringField;
    cdsGetReport43DeathListPDEATH: TWideStringField;
    cdsGetReport43DeathListPROVIDER: TWideStringField;
    cdsGetReport43DeathListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Card: TClientDataSet;
    cdsGetReport43CardList: TClientDataSet;
    cdsGetReport43CardREPORTID: TIntegerField;
    cdsGetReport43CardHOSPCODE: TWideStringField;
    cdsGetReport43CardPID: TIntegerField;
    cdsGetReport43CardINSTYPE_OLD: TWideStringField;
    cdsGetReport43CardINSTYPE_NEW: TWideStringField;
    cdsGetReport43CardINSID: TWideStringField;
    cdsGetReport43CardSTARTDATE: TDateField;
    cdsGetReport43CardEXPIREDATE: TDateField;
    cdsGetReport43CardMAIN: TWideStringField;
    cdsGetReport43CardSUB: TWideStringField;
    cdsGetReport43CardD_UPDATE: TSQLTimeStampField;
    cdsGetReport43CardListREPORTID: TIntegerField;
    cdsGetReport43CardListHOSPCODE: TWideStringField;
    cdsGetReport43CardListPID: TIntegerField;
    cdsGetReport43CardListINSTYPE_OLD: TWideStringField;
    cdsGetReport43CardListINSTYPE_NEW: TWideStringField;
    cdsGetReport43CardListINSID: TWideStringField;
    cdsGetReport43CardListSTARTDATE: TDateField;
    cdsGetReport43CardListEXPIREDATE: TDateField;
    cdsGetReport43CardListMAIN: TWideStringField;
    cdsGetReport43CardListSUB: TWideStringField;
    cdsGetReport43CardListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Drugallergy: TClientDataSet;
    cdsGetReport43DrugallergyList: TClientDataSet;
    cdsGetReport43DrugallergyREPORTID: TIntegerField;
    cdsGetReport43DrugallergyHOSPCODE: TWideStringField;
    cdsGetReport43DrugallergyPID: TIntegerField;
    cdsGetReport43DrugallergyDATERECORD: TDateField;
    cdsGetReport43DrugallergyDRUGALLERGY: TWideStringField;
    cdsGetReport43DrugallergyDNAME: TWideStringField;
    cdsGetReport43DrugallergyTYPEDX: TWideStringField;
    cdsGetReport43DrugallergyALEVEL: TWideStringField;
    cdsGetReport43DrugallergySYMPTOM: TWideStringField;
    cdsGetReport43DrugallergyINFORMANT: TWideStringField;
    cdsGetReport43DrugallergyINFORMHOSP: TWideStringField;
    cdsGetReport43DrugallergyD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DrugallergyListREPORTID: TIntegerField;
    cdsGetReport43DrugallergyListHOSPCODE: TWideStringField;
    cdsGetReport43DrugallergyListPID: TIntegerField;
    cdsGetReport43DrugallergyListDATERECORD: TDateField;
    cdsGetReport43DrugallergyListDRUGALLERGY: TWideStringField;
    cdsGetReport43DrugallergyListDNAME: TWideStringField;
    cdsGetReport43DrugallergyListTYPEDX: TWideStringField;
    cdsGetReport43DrugallergyListALEVEL: TWideStringField;
    cdsGetReport43DrugallergyListSYMPTOM: TWideStringField;
    cdsGetReport43DrugallergyListINFORMANT: TWideStringField;
    cdsGetReport43DrugallergyListINFORMHOSP: TWideStringField;
    cdsGetReport43DrugallergyListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Accident: TClientDataSet;
    cdsGetReport43AccidentList: TClientDataSet;
    cdsGetReport43AccidentREPORTID: TIntegerField;
    cdsGetReport43AccidentHOSPCODE: TWideStringField;
    cdsGetReport43AccidentPID: TIntegerField;
    cdsGetReport43AccidentSEQ: TIntegerField;
    cdsGetReport43AccidentDATETIME_SERV: TSQLTimeStampField;
    cdsGetReport43AccidentDATETIME_AE: TSQLTimeStampField;
    cdsGetReport43AccidentAETYPE: TWideStringField;
    cdsGetReport43AccidentAEPLACE: TWideStringField;
    cdsGetReport43AccidentTYPEIN_AE: TWideStringField;
    cdsGetReport43AccidentTRAFFIC: TWideStringField;
    cdsGetReport43AccidentVEHICLE: TWideStringField;
    cdsGetReport43AccidentALCOHOL: TWideStringField;
    cdsGetReport43AccidentNACROTIC_DRUG: TWideStringField;
    cdsGetReport43AccidentBELT: TWideStringField;
    cdsGetReport43AccidentHELMET: TWideStringField;
    cdsGetReport43AccidentAIRWAY: TWideStringField;
    cdsGetReport43AccidentSTOPBLEED: TWideStringField;
    cdsGetReport43AccidentSPLINT: TWideStringField;
    cdsGetReport43AccidentFLUID: TWideStringField;
    cdsGetReport43AccidentURGENCY: TWideStringField;
    cdsGetReport43AccidentCOMA_EYE: TWideStringField;
    cdsGetReport43AccidentCOMA_SPEAK: TWideStringField;
    cdsGetReport43AccidentCOMA_MOVEMENT: TWideStringField;
    cdsGetReport43AccidentD_UPDATE: TSQLTimeStampField;
    cdsGetReport43AccidentListREPORTID: TIntegerField;
    cdsGetReport43AccidentListHOSPCODE: TWideStringField;
    cdsGetReport43AccidentListPID: TIntegerField;
    cdsGetReport43AccidentListSEQ: TIntegerField;
    cdsGetReport43AccidentListDATETIME_SERV: TSQLTimeStampField;
    cdsGetReport43AccidentListDATETIME_AE: TSQLTimeStampField;
    cdsGetReport43AccidentListAETYPE: TWideStringField;
    cdsGetReport43AccidentListAEPLACE: TWideStringField;
    cdsGetReport43AccidentListTYPEIN_AE: TWideStringField;
    cdsGetReport43AccidentListTRAFFIC: TWideStringField;
    cdsGetReport43AccidentListVEHICLE: TWideStringField;
    cdsGetReport43AccidentListALCOHOL: TWideStringField;
    cdsGetReport43AccidentListNACROTIC_DRUG: TWideStringField;
    cdsGetReport43AccidentListBELT: TWideStringField;
    cdsGetReport43AccidentListHELMET: TWideStringField;
    cdsGetReport43AccidentListAIRWAY: TWideStringField;
    cdsGetReport43AccidentListSTOPBLEED: TWideStringField;
    cdsGetReport43AccidentListSPLINT: TWideStringField;
    cdsGetReport43AccidentListFLUID: TWideStringField;
    cdsGetReport43AccidentListURGENCY: TWideStringField;
    cdsGetReport43AccidentListCOMA_EYE: TWideStringField;
    cdsGetReport43AccidentListCOMA_SPEAK: TWideStringField;
    cdsGetReport43AccidentListCOMA_MOVEMENT: TWideStringField;
    cdsGetReport43AccidentListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ChargeOrd: TClientDataSet;
    cdsGetReport43ChargeOrdList: TClientDataSet;
    cdsGetReport43Admission: TClientDataSet;
    cdsGetReport43AdmissionList: TClientDataSet;
    cdsGetReport43DiagnosisIpd: TClientDataSet;
    cdsGetReport43DiagnosisIpdList: TClientDataSet;
    cdsGetReport43DiagnosisIpdREPORTID: TIntegerField;
    cdsGetReport43DiagnosisIpdHOSPCODE: TWideStringField;
    cdsGetReport43DiagnosisIpdPID: TIntegerField;
    cdsGetReport43DiagnosisIpdAN: TWideStringField;
    cdsGetReport43DiagnosisIpdDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43DiagnosisIpdWARDDIAG: TWideStringField;
    cdsGetReport43DiagnosisIpdDIAGTYPE: TWideStringField;
    cdsGetReport43DiagnosisIpdDIAGCODE: TWideStringField;
    cdsGetReport43DiagnosisIpdPROVIDER: TWideStringField;
    cdsGetReport43DiagnosisIpdD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DiagnosisIpdListREPORTID: TIntegerField;
    cdsGetReport43DiagnosisIpdListHOSPCODE: TWideStringField;
    cdsGetReport43DiagnosisIpdListPID: TIntegerField;
    cdsGetReport43DiagnosisIpdListAN: TWideStringField;
    cdsGetReport43DiagnosisIpdListDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43DiagnosisIpdListWARDDIAG: TWideStringField;
    cdsGetReport43DiagnosisIpdListDIAGTYPE: TWideStringField;
    cdsGetReport43DiagnosisIpdListDIAGCODE: TWideStringField;
    cdsGetReport43DiagnosisIpdListPROVIDER: TWideStringField;
    cdsGetReport43DiagnosisIpdListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ProcedureIpd: TClientDataSet;
    cdsGetReport43ProcedureIpdList: TClientDataSet;
    cdsGetReport43ProcedureIpdREPORTID: TIntegerField;
    cdsGetReport43ProcedureIpdHOSPCODE: TWideStringField;
    cdsGetReport43ProcedureIpdPID: TIntegerField;
    cdsGetReport43ProcedureIpdAN: TWideStringField;
    cdsGetReport43ProcedureIpdDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43ProcedureIpdWARDSTAY: TWideStringField;
    cdsGetReport43ProcedureIpdPROCEDCODE: TWideStringField;
    cdsGetReport43ProcedureIpdTIMESTART: TSQLTimeStampField;
    cdsGetReport43ProcedureIpdTIMEFINISH: TSQLTimeStampField;
    cdsGetReport43ProcedureIpdSERVICEPRICE: TIntegerField;
    cdsGetReport43ProcedureIpdPROVIDER: TWideStringField;
    cdsGetReport43ProcedureIpdD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ProcedureIpdListREPORTID: TIntegerField;
    cdsGetReport43ProcedureIpdListHOSPCODE: TWideStringField;
    cdsGetReport43ProcedureIpdListPID: TIntegerField;
    cdsGetReport43ProcedureIpdListAN: TWideStringField;
    cdsGetReport43ProcedureIpdListDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43ProcedureIpdListWARDSTAY: TWideStringField;
    cdsGetReport43ProcedureIpdListPROCEDCODE: TWideStringField;
    cdsGetReport43ProcedureIpdListTIMESTART: TSQLTimeStampField;
    cdsGetReport43ProcedureIpdListTIMEFINISH: TSQLTimeStampField;
    cdsGetReport43ProcedureIpdListSERVICEPRICE: TIntegerField;
    cdsGetReport43ProcedureIpdListPROVIDER: TWideStringField;
    cdsGetReport43ProcedureIpdListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DrugIpd: TClientDataSet;
    cdsGetReport43DrugIpdList: TClientDataSet;
    cdsGetReport43DrugIpdREPORTID: TIntegerField;
    cdsGetReport43DrugIpdORDER_NO: TWideStringField;
    cdsGetReport43DrugIpdHOSPCODE: TWideStringField;
    cdsGetReport43DrugIpdPID: TIntegerField;
    cdsGetReport43DrugIpdAN: TWideStringField;
    cdsGetReport43DrugIpdDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43DrugIpdWARDSTAY: TWideStringField;
    cdsGetReport43DrugIpdTYPEDRUG: TWideStringField;
    cdsGetReport43DrugIpdDIDSTD: TWideStringField;
    cdsGetReport43DrugIpdDNAME: TWideStringField;
    cdsGetReport43DrugIpdDATESTART: TDateField;
    cdsGetReport43DrugIpdDATEFINISH: TDateField;
    cdsGetReport43DrugIpdAMOUNT: TIntegerField;
    cdsGetReport43DrugIpdUNIT: TWideStringField;
    cdsGetReport43DrugIpdUNIT_PACKING: TWideStringField;
    cdsGetReport43DrugIpdDRUGPRICE: TIntegerField;
    cdsGetReport43DrugIpdDRUGCOST: TIntegerField;
    cdsGetReport43DrugIpdPROVIDER: TWideStringField;
    cdsGetReport43DrugIpdD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DrugIpdListREPORTID: TIntegerField;
    cdsGetReport43DrugIpdListORDER_NO: TWideStringField;
    cdsGetReport43DrugIpdListHOSPCODE: TWideStringField;
    cdsGetReport43DrugIpdListPID: TIntegerField;
    cdsGetReport43DrugIpdListAN: TWideStringField;
    cdsGetReport43DrugIpdListDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43DrugIpdListWARDSTAY: TWideStringField;
    cdsGetReport43DrugIpdListTYPEDRUG: TWideStringField;
    cdsGetReport43DrugIpdListDIDSTD: TWideStringField;
    cdsGetReport43DrugIpdListDNAME: TWideStringField;
    cdsGetReport43DrugIpdListDATESTART: TDateField;
    cdsGetReport43DrugIpdListDATEFINISH: TDateField;
    cdsGetReport43DrugIpdListAMOUNT: TIntegerField;
    cdsGetReport43DrugIpdListUNIT: TWideStringField;
    cdsGetReport43DrugIpdListUNIT_PACKING: TWideStringField;
    cdsGetReport43DrugIpdListDRUGPRICE: TIntegerField;
    cdsGetReport43DrugIpdListDRUGCOST: TIntegerField;
    cdsGetReport43DrugIpdListPROVIDER: TWideStringField;
    cdsGetReport43DrugIpdListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ChargeIpd: TClientDataSet;
    cdsGetReport43ChargeIpdList: TClientDataSet;
    cdsGetReport43ChargeIpdREPORTID: TIntegerField;
    cdsGetReport43ChargeIpdHOSPCODE: TWideStringField;
    cdsGetReport43ChargeIpdPID: TIntegerField;
    cdsGetReport43ChargeIpdAN: TWideStringField;
    cdsGetReport43ChargeIpdDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43ChargeIpdWARDSTAY: TWideStringField;
    cdsGetReport43ChargeIpdCHARGEITEM: TWideStringField;
    cdsGetReport43ChargeIpdCHARGELIST: TWideStringField;
    cdsGetReport43ChargeIpdQUANTITY: TIntegerField;
    cdsGetReport43ChargeIpdINSTYPE: TWideStringField;
    cdsGetReport43ChargeIpdCOST: TIntegerField;
    cdsGetReport43ChargeIpdPRICE: TIntegerField;
    cdsGetReport43ChargeIpdPAYPRICE: TIntegerField;
    cdsGetReport43ChargeIpdD_UPDATE: TSQLTimeStampField;
    cdsGetReport43ChargeIpdListREPORTID: TIntegerField;
    cdsGetReport43ChargeIpdListHOSPCODE: TWideStringField;
    cdsGetReport43ChargeIpdListPID: TIntegerField;
    cdsGetReport43ChargeIpdListAN: TWideStringField;
    cdsGetReport43ChargeIpdListDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43ChargeIpdListWARDSTAY: TWideStringField;
    cdsGetReport43ChargeIpdListCHARGEITEM: TWideStringField;
    cdsGetReport43ChargeIpdListCHARGELIST: TWideStringField;
    cdsGetReport43ChargeIpdListQUANTITY: TIntegerField;
    cdsGetReport43ChargeIpdListINSTYPE: TWideStringField;
    cdsGetReport43ChargeIpdListCOST: TIntegerField;
    cdsGetReport43ChargeIpdListPRICE: TIntegerField;
    cdsGetReport43ChargeIpdListPAYPRICE: TIntegerField;
    cdsGetReport43ChargeIpdListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Surveillance: TClientDataSet;
    cdsGetReport43SurveillanceList: TClientDataSet;
    cdsGetReport43SurveillanceREPORTID: TIntegerField;
    cdsGetReport43SurveillanceHOSPCODE: TWideStringField;
    cdsGetReport43SurveillancePID: TIntegerField;
    cdsGetReport43SurveillanceSEQ: TIntegerField;
    cdsGetReport43SurveillanceDATE_SERV: TDateField;
    cdsGetReport43SurveillanceAN: TWideStringField;
    cdsGetReport43SurveillanceDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43SurveillanceSYNDROME: TWideStringField;
    cdsGetReport43SurveillanceDIAGCODE: TWideStringField;
    cdsGetReport43SurveillanceCODE506: TWideStringField;
    cdsGetReport43SurveillanceDIAGCODELAST: TWideStringField;
    cdsGetReport43SurveillanceCODE506LAST: TWideStringField;
    cdsGetReport43SurveillanceILLDATE: TDateField;
    cdsGetReport43SurveillanceILLHOUSE: TWideStringField;
    cdsGetReport43SurveillanceILLVILLAGE: TWideStringField;
    cdsGetReport43SurveillanceILLTAMBON: TWideStringField;
    cdsGetReport43SurveillanceILLAMPUR: TWideStringField;
    cdsGetReport43SurveillanceILLCHANGWAT: TWideStringField;
    cdsGetReport43SurveillanceLATITUDE: TIntegerField;
    cdsGetReport43SurveillanceLONGITUDE: TIntegerField;
    cdsGetReport43SurveillancePTSTATUS: TWideStringField;
    cdsGetReport43SurveillanceDATE_DEATH: TDateField;
    cdsGetReport43SurveillanceCOMPLICATION: TWideStringField;
    cdsGetReport43SurveillanceORGANISM: TWideStringField;
    cdsGetReport43SurveillancePROVIDER: TWideStringField;
    cdsGetReport43SurveillanceD_UPDATE: TSQLTimeStampField;
    cdsGetReport43SurveillanceListREPORTID: TIntegerField;
    cdsGetReport43SurveillanceListHOSPCODE: TWideStringField;
    cdsGetReport43SurveillanceListPID: TIntegerField;
    cdsGetReport43SurveillanceListSEQ: TIntegerField;
    cdsGetReport43SurveillanceListDATE_SERV: TDateField;
    cdsGetReport43SurveillanceListAN: TWideStringField;
    cdsGetReport43SurveillanceListDATETIME_ADMIT: TSQLTimeStampField;
    cdsGetReport43SurveillanceListSYNDROME: TWideStringField;
    cdsGetReport43SurveillanceListDIAGCODE: TWideStringField;
    cdsGetReport43SurveillanceListCODE506: TWideStringField;
    cdsGetReport43SurveillanceListDIAGCODELAST: TWideStringField;
    cdsGetReport43SurveillanceListCODE506LAST: TWideStringField;
    cdsGetReport43SurveillanceListILLDATE: TDateField;
    cdsGetReport43SurveillanceListILLHOUSE: TWideStringField;
    cdsGetReport43SurveillanceListILLVILLAGE: TWideStringField;
    cdsGetReport43SurveillanceListILLTAMBON: TWideStringField;
    cdsGetReport43SurveillanceListILLAMPUR: TWideStringField;
    cdsGetReport43SurveillanceListILLCHANGWAT: TWideStringField;
    cdsGetReport43SurveillanceListLATITUDE: TIntegerField;
    cdsGetReport43SurveillanceListLONGITUDE: TIntegerField;
    cdsGetReport43SurveillanceListPTSTATUS: TWideStringField;
    cdsGetReport43SurveillanceListDATE_DEATH: TDateField;
    cdsGetReport43SurveillanceListCOMPLICATION: TWideStringField;
    cdsGetReport43SurveillanceListORGANISM: TWideStringField;
    cdsGetReport43SurveillanceListPROVIDER: TWideStringField;
    cdsGetReport43SurveillanceListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Newborn: TClientDataSet;
    cdsGetReport43NewbornList: TClientDataSet;
    cdsGetReport43NewbornListREPORTID: TIntegerField;
    cdsGetReport43NewbornListHOSPCODE: TWideStringField;
    cdsGetReport43NewbornListPID: TIntegerField;
    cdsGetReport43NewbornListMPID: TWideStringField;
    cdsGetReport43NewbornListGRAVIDA: TWideStringField;
    cdsGetReport43NewbornListGA: TWideStringField;
    cdsGetReport43NewbornListBDATE: TDateField;
    cdsGetReport43NewbornListBTIME: TTimeField;
    cdsGetReport43NewbornListBPLACE: TWideStringField;
    cdsGetReport43NewbornListBHOSP: TWideStringField;
    cdsGetReport43NewbornListBIRTHNO: TWideStringField;
    cdsGetReport43NewbornListBTYPE: TWideStringField;
    cdsGetReport43NewbornListBDOCTOR: TWideStringField;
    cdsGetReport43NewbornListBWEIGHT: TIntegerField;
    cdsGetReport43NewbornListASPHYXIA: TWideStringField;
    cdsGetReport43NewbornListVITK: TWideStringField;
    cdsGetReport43NewbornListTSH: TWideStringField;
    cdsGetReport43NewbornListTSHRESULT: TIntegerField;
    cdsGetReport43NewbornListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43NewbornREPORTID: TIntegerField;
    cdsGetReport43NewbornHOSPCODE: TWideStringField;
    cdsGetReport43NewbornPID: TIntegerField;
    cdsGetReport43NewbornMPID: TWideStringField;
    cdsGetReport43NewbornGRAVIDA: TWideStringField;
    cdsGetReport43NewbornGA: TWideStringField;
    cdsGetReport43NewbornBDATE: TDateField;
    cdsGetReport43NewbornBTIME: TTimeField;
    cdsGetReport43NewbornBPLACE: TWideStringField;
    cdsGetReport43NewbornBHOSP: TWideStringField;
    cdsGetReport43NewbornBIRTHNO: TWideStringField;
    cdsGetReport43NewbornBTYPE: TWideStringField;
    cdsGetReport43NewbornBDOCTOR: TWideStringField;
    cdsGetReport43NewbornBWEIGHT: TIntegerField;
    cdsGetReport43NewbornASPHYXIA: TWideStringField;
    cdsGetReport43NewbornVITK: TWideStringField;
    cdsGetReport43NewbornTSH: TWideStringField;
    cdsGetReport43NewbornTSHRESULT: TIntegerField;
    cdsGetReport43NewbornD_UPDATE: TSQLTimeStampField;
    cdsGetReport43NewbornCare: TClientDataSet;
    cdsGetReport43NewbornCareList: TClientDataSet;
    cdsGetReport43NewbornCareREPORTID: TIntegerField;
    cdsGetReport43NewbornCareHOSPCODE: TWideStringField;
    cdsGetReport43NewbornCarePID: TIntegerField;
    cdsGetReport43NewbornCareSEQ: TIntegerField;
    cdsGetReport43NewbornCareBDATE: TDateField;
    cdsGetReport43NewbornCareBCARE: TDateField;
    cdsGetReport43NewbornCareBCPLACE: TWideStringField;
    cdsGetReport43NewbornCareBCARERESULT: TWideStringField;
    cdsGetReport43NewbornCareFOOD: TWideStringField;
    cdsGetReport43NewbornCarePROVIDER: TWideStringField;
    cdsGetReport43NewbornCareD_UPDATE: TSQLTimeStampField;
    cdsGetReport43NewbornCareListREPORTID: TIntegerField;
    cdsGetReport43NewbornCareListHOSPCODE: TWideStringField;
    cdsGetReport43NewbornCareListPID: TIntegerField;
    cdsGetReport43NewbornCareListSEQ: TIntegerField;
    cdsGetReport43NewbornCareListBDATE: TDateField;
    cdsGetReport43NewbornCareListBCARE: TDateField;
    cdsGetReport43NewbornCareListBCPLACE: TWideStringField;
    cdsGetReport43NewbornCareListBCARERESULT: TWideStringField;
    cdsGetReport43NewbornCareListFOOD: TWideStringField;
    cdsGetReport43NewbornCareListPROVIDER: TWideStringField;
    cdsGetReport43NewbornCareListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Dental: TClientDataSet;
    cdsGetReport43DentalList: TClientDataSet;
    cdsGetReport43DentalREPORTID: TIntegerField;
    cdsGetReport43DentalHOSPCODE: TWideStringField;
    cdsGetReport43DentalPID: TIntegerField;
    cdsGetReport43DentalSEQ: TIntegerField;
    cdsGetReport43DentalDATE_SERV: TDateField;
    cdsGetReport43DentalDENTTYPE: TWideStringField;
    cdsGetReport43DentalSERVPLACE: TWideStringField;
    cdsGetReport43DentalPTEETH: TIntegerField;
    cdsGetReport43DentalPCARIES: TIntegerField;
    cdsGetReport43DentalPFILLING: TIntegerField;
    cdsGetReport43DentalPEXTRACT: TIntegerField;
    cdsGetReport43DentalDTEETH: TIntegerField;
    cdsGetReport43DentalDCARIES: TIntegerField;
    cdsGetReport43DentalDFILLING: TIntegerField;
    cdsGetReport43DentalDEXTRACT: TIntegerField;
    cdsGetReport43DentalNEED_FLUORIDE: TWideStringField;
    cdsGetReport43DentalNEED_SCALING: TWideStringField;
    cdsGetReport43DentalNEED_SEALANT: TIntegerField;
    cdsGetReport43DentalNEED_PFILLING: TIntegerField;
    cdsGetReport43DentalNEED_DFILLING: TIntegerField;
    cdsGetReport43DentalNEED_PEXTRACT: TIntegerField;
    cdsGetReport43DentalNEED_DEXTRACT: TIntegerField;
    cdsGetReport43DentalNPROSTHESIS: TWideStringField;
    cdsGetReport43DentalPERMANENT_PERMANENT: TIntegerField;
    cdsGetReport43DentalPERMANENT_PROSTHESIS: TIntegerField;
    cdsGetReport43DentalPROSTHESIS_PROSTHESIS: TIntegerField;
    cdsGetReport43DentalGUM: TWideStringField;
    cdsGetReport43DentalSCHOOLTYPE: TWideStringField;
    cdsGetReport43DentalCLASS: TWideStringField;
    cdsGetReport43DentalPROVIDER: TWideStringField;
    cdsGetReport43DentalD_UPDATE: TSQLTimeStampField;
    cdsGetReport43DentalListREPORTID: TIntegerField;
    cdsGetReport43DentalListHOSPCODE: TWideStringField;
    cdsGetReport43DentalListPID: TIntegerField;
    cdsGetReport43DentalListSEQ: TIntegerField;
    cdsGetReport43DentalListDATE_SERV: TDateField;
    cdsGetReport43DentalListDENTTYPE: TWideStringField;
    cdsGetReport43DentalListSERVPLACE: TWideStringField;
    cdsGetReport43DentalListPTEETH: TIntegerField;
    cdsGetReport43DentalListPCARIES: TIntegerField;
    cdsGetReport43DentalListPFILLING: TIntegerField;
    cdsGetReport43DentalListPEXTRACT: TIntegerField;
    cdsGetReport43DentalListDTEETH: TIntegerField;
    cdsGetReport43DentalListDCARIES: TIntegerField;
    cdsGetReport43DentalListDFILLING: TIntegerField;
    cdsGetReport43DentalListDEXTRACT: TIntegerField;
    cdsGetReport43DentalListNEED_FLUORIDE: TWideStringField;
    cdsGetReport43DentalListNEED_SCALING: TWideStringField;
    cdsGetReport43DentalListNEED_SEALANT: TIntegerField;
    cdsGetReport43DentalListNEED_PFILLING: TIntegerField;
    cdsGetReport43DentalListNEED_DFILLING: TIntegerField;
    cdsGetReport43DentalListNEED_PEXTRACT: TIntegerField;
    cdsGetReport43DentalListNEED_DEXTRACT: TIntegerField;
    cdsGetReport43DentalListNPROSTHESIS: TWideStringField;
    cdsGetReport43DentalListPERMANENT_PERMANENT: TIntegerField;
    cdsGetReport43DentalListPERMANENT_PROSTHESIS: TIntegerField;
    cdsGetReport43DentalListPROSTHESIS_PROSTHESIS: TIntegerField;
    cdsGetReport43DentalListGUM: TWideStringField;
    cdsGetReport43DentalListSCHOOLTYPE: TWideStringField;
    cdsGetReport43DentalListCLASS: TWideStringField;
    cdsGetReport43DentalListPROVIDER: TWideStringField;
    cdsGetReport43DentalListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43Ncdscreen: TClientDataSet;
    cdsGetReport43NcdscreenList: TClientDataSet;
    cdsGetReport43NcdscreenREPORTID: TIntegerField;
    cdsGetReport43NcdscreenHOSPCODE: TWideStringField;
    cdsGetReport43NcdscreenPID: TIntegerField;
    cdsGetReport43NcdscreenSEQ: TIntegerField;
    cdsGetReport43NcdscreenDATE_SERV: TDateField;
    cdsGetReport43NcdscreenSERVPLACE: TWideStringField;
    cdsGetReport43NcdscreenSMOKE: TWideStringField;
    cdsGetReport43NcdscreenALCOHOL: TWideStringField;
    cdsGetReport43NcdscreenDMFAMILY: TWideStringField;
    cdsGetReport43NcdscreenHTFAMILY: TWideStringField;
    cdsGetReport43NcdscreenWEIGHT: TIntegerField;
    cdsGetReport43NcdscreenHEIGHT: TIntegerField;
    cdsGetReport43NcdscreenWAIST_CM: TIntegerField;
    cdsGetReport43NcdscreenSBP_1: TIntegerField;
    cdsGetReport43NcdscreenDBP_1: TIntegerField;
    cdsGetReport43NcdscreenSBP_2: TIntegerField;
    cdsGetReport43NcdscreenDBP_2: TIntegerField;
    cdsGetReport43NcdscreenBSLEVEL: TIntegerField;
    cdsGetReport43NcdscreenBSTEST: TWideStringField;
    cdsGetReport43NcdscreenSCREENPLACE: TWideStringField;
    cdsGetReport43NcdscreenPROVIDER: TWideStringField;
    cdsGetReport43NcdscreenD_UPDATE: TSQLTimeStampField;
    cdsGetReport43NcdscreenListREPORTID: TIntegerField;
    cdsGetReport43NcdscreenListHOSPCODE: TWideStringField;
    cdsGetReport43NcdscreenListPID: TIntegerField;
    cdsGetReport43NcdscreenListSEQ: TIntegerField;
    cdsGetReport43NcdscreenListDATE_SERV: TDateField;
    cdsGetReport43NcdscreenListSERVPLACE: TWideStringField;
    cdsGetReport43NcdscreenListSMOKE: TWideStringField;
    cdsGetReport43NcdscreenListALCOHOL: TWideStringField;
    cdsGetReport43NcdscreenListDMFAMILY: TWideStringField;
    cdsGetReport43NcdscreenListHTFAMILY: TWideStringField;
    cdsGetReport43NcdscreenListWEIGHT: TIntegerField;
    cdsGetReport43NcdscreenListHEIGHT: TIntegerField;
    cdsGetReport43NcdscreenListWAIST_CM: TIntegerField;
    cdsGetReport43NcdscreenListSBP_1: TIntegerField;
    cdsGetReport43NcdscreenListDBP_1: TIntegerField;
    cdsGetReport43NcdscreenListSBP_2: TIntegerField;
    cdsGetReport43NcdscreenListDBP_2: TIntegerField;
    cdsGetReport43NcdscreenListBSLEVEL: TIntegerField;
    cdsGetReport43NcdscreenListBSTEST: TWideStringField;
    cdsGetReport43NcdscreenListSCREENPLACE: TWideStringField;
    cdsGetReport43NcdscreenListPROVIDER: TWideStringField;
    cdsGetReport43NcdscreenListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43LabFu: TClientDataSet;
    cdsGetReport43LabFuList: TClientDataSet;
    cdsGetReport43LabFuListREPORTID: TIntegerField;
    cdsGetReport43LabFuListHOSPCODE: TWideStringField;
    cdsGetReport43LabFuListPID: TIntegerField;
    cdsGetReport43LabFuListSEQ: TIntegerField;
    cdsGetReport43LabFuListDATE_SERV: TDateField;
    cdsGetReport43LabFuListLABTEST: TWideStringField;
    cdsGetReport43LabFuListLABRESULT: TIntegerField;
    cdsGetReport43LabFuListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43LabFuREPORTID: TIntegerField;
    cdsGetReport43LabFuHOSPCODE: TWideStringField;
    cdsGetReport43LabFuPID: TIntegerField;
    cdsGetReport43LabFuSEQ: TIntegerField;
    cdsGetReport43LabFuDATE_SERV: TDateField;
    cdsGetReport43LabFuLABTEST: TWideStringField;
    cdsGetReport43LabFuLABRESULT: TIntegerField;
    cdsGetReport43LabFuD_UPDATE: TSQLTimeStampField;
    cdsKeywords: TClientDataSet;
    cdsKeywordsID: TIntegerField;
    cdsKeywordsWideStringField43FILE_TABLE: TWideStringField;
    cdsKeywordsWideStringField43FILE_FILED: TWideStringField;
    cdsKeywordsWideStringField43FILE_CODE: TWideStringField;
    cdsKeywordsNAME1: TWideStringField;
    cdsKeywordsNAME2: TWideStringField;
    cdsKeywordsNAME3: TWideStringField;
    cdsKeywordsNAME4: TWideStringField;
    cdsKeywordsNAME5: TWideStringField;
    cdsKeywordsDETAIL1: TWideStringField;
    cdsKeywordsDETAIL2: TWideStringField;
    cdsKeywordsTYPE: TWideStringField;
    cdsKeywordsENTRYDATE: TSQLTimeStampField;
    cdsKeywordsUSER_ENTRY: TWideStringField;
    cdsKeywordsCONTROL: TIntegerField;
    cdsKeywordsUSER_CANCEL: TWideStringField;
    cdsKeywordsCANCELDATE: TSQLTimeStampField;
    cdsGetHospName: TClientDataSet;
    cdsGetHospNameID: TIntegerField;
    cdsGetHospNameCODE1: TWideStringField;
    cdsGetHospNameCODE2: TWideStringField;
    cdsGetHospNameCODE3: TWideStringField;
    cdsGetHospNameNAME1: TWideStringField;
    cdsGetHospNameNAME2: TWideStringField;
    cdsGetHospNameADDRESS: TWideStringField;
    cdsGetHospNameMOO: TIntegerField;
    cdsGetHospNameVILLAGE: TWideStringField;
    cdsGetHospNameROAD: TWideStringField;
    cdsGetHospNameSOI: TWideStringField;
    cdsGetHospNamePRV: TWideStringField;
    cdsGetHospNameAMP: TWideStringField;
    cdsGetHospNameTUMBON: TWideStringField;
    cdsGetHospNamePOSTCODE: TIntegerField;
    cdsGetHospNameTEL: TWideStringField;
    cdsGetHospNameFAX: TWideStringField;
    cdsGetHospNameBED_NUM: TIntegerField;
    cdsGetHospNameUNDER: TWideStringField;
    cdsGetHospNameTYPE: TWideStringField;
    cdsGetHospNameTYPE_S: TWideStringField;
    cdsGetHospNameDEGREE: TIntegerField;
    cdsGetHospNameSTATUS: TIntegerField;
    cdsGetHospNameENTRYDATE: TSQLTimeStampField;
    cdsGetHospNameUSER_ENTRY: TWideStringField;
    cdsGetHospNameCONTROL: TIntegerField;
    cdsGetHospNameCANCELDATE: TSQLTimeStampField;
    cdsGetHospNameUSER_CANCEL: TWideStringField;
    cdsGetIcd10List: TClientDataSet;
    cdsGetIcd10ListID: TIntegerField;
    cdsGetIcd10ListCODE1: TWideStringField;
    cdsGetIcd10ListCODE2: TWideStringField;
    cdsGetIcd10ListNAME1: TWideStringField;
    cdsGetIcd10ListNAME2: TWideStringField;
    cdsGetIcd10ListBRANCH: TWideStringField;
    cdsGetIcd10ListGROUP: TWideStringField;
    cdsGetIcd10ListENTRYDATE: TSQLTimeStampField;
    cdsGetIcd10ListUSER_ENTRY: TWideStringField;
    cdsGetIcd10ListCONTROL: TIntegerField;
    cdsGetIcd10ListCANCELDATE: TSQLTimeStampField;
    cdsGetIcd10ListUSER_CANCEL: TWideStringField;
    cdsGetIcd9List: TClientDataSet;
    cdsGetIcd9ListID: TIntegerField;
    cdsGetIcd9ListCODE1: TWideStringField;
    cdsGetIcd9ListCODE2: TWideStringField;
    cdsGetIcd9ListNAME1: TWideStringField;
    cdsGetIcd9ListNAME2: TWideStringField;
    cdsGetIcd9ListSECTION: TWideStringField;
    cdsGetIcd9ListS_SECTION: TWideStringField;
    cdsGetIcd9ListENTRYDATE: TSQLTimeStampField;
    cdsGetIcd9ListUSER_ENTRY: TWideStringField;
    cdsGetIcd9ListCONTROL: TIntegerField;
    cdsGetIcd9ListCANCELDATE: TSQLTimeStampField;
    cdsGetIcd9ListUSER_CANCEL: TWideStringField;
    cdsGetReport43Address: TClientDataSet;
    cdsGetReport43AddressList: TClientDataSet;
    cdsGetReport43AddressREPORTID: TIntegerField;
    cdsGetReport43AddressHOSPCODE: TWideStringField;
    cdsGetReport43AddressPID: TIntegerField;
    cdsGetReport43AddressADDRESSTYPE: TWideStringField;
    cdsGetReport43AddressHOUSE_ID: TWideStringField;
    cdsGetReport43AddressHOUSETYPE: TWideStringField;
    cdsGetReport43AddressROOMNO: TWideStringField;
    cdsGetReport43AddressCONDO: TWideStringField;
    cdsGetReport43AddressHOUSENO: TWideStringField;
    cdsGetReport43AddressSOISUB: TWideStringField;
    cdsGetReport43AddressSOIMAIN: TWideStringField;
    cdsGetReport43AddressROAD: TWideStringField;
    cdsGetReport43AddressVILLANAME: TWideStringField;
    cdsGetReport43AddressVILLAGE: TWideStringField;
    cdsGetReport43AddressTAMBON: TWideStringField;
    cdsGetReport43AddressAMPUR: TWideStringField;
    cdsGetReport43AddressCHANGWAT: TWideStringField;
    cdsGetReport43AddressTELEPHONE: TWideStringField;
    cdsGetReport43AddressMOBILE: TWideStringField;
    cdsGetReport43AddressD_UPDATE: TSQLTimeStampField;
    cdsGetReport43AddressListREPORTID: TIntegerField;
    cdsGetReport43AddressListHOSPCODE: TWideStringField;
    cdsGetReport43AddressListPID: TIntegerField;
    cdsGetReport43AddressListADDRESSTYPE: TWideStringField;
    cdsGetReport43AddressListHOUSE_ID: TWideStringField;
    cdsGetReport43AddressListHOUSETYPE: TWideStringField;
    cdsGetReport43AddressListROOMNO: TWideStringField;
    cdsGetReport43AddressListCONDO: TWideStringField;
    cdsGetReport43AddressListHOUSENO: TWideStringField;
    cdsGetReport43AddressListSOISUB: TWideStringField;
    cdsGetReport43AddressListSOIMAIN: TWideStringField;
    cdsGetReport43AddressListROAD: TWideStringField;
    cdsGetReport43AddressListVILLANAME: TWideStringField;
    cdsGetReport43AddressListVILLAGE: TWideStringField;
    cdsGetReport43AddressListTAMBON: TWideStringField;
    cdsGetReport43AddressListAMPUR: TWideStringField;
    cdsGetReport43AddressListCHANGWAT: TWideStringField;
    cdsGetReport43AddressListTELEPHONE: TWideStringField;
    cdsGetReport43AddressListMOBILE: TWideStringField;
    cdsGetReport43AddressListD_UPDATE: TSQLTimeStampField;
    cdsGetTumbonList: TClientDataSet;
    cdsGetAmp: TClientDataSet;
    cdsGetProvince: TClientDataSet;
    cdsGetTumbon: TClientDataSet;
    cdsGetIcd10: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    WideStringField7: TWideStringField;
    IntegerField2: TIntegerField;
    SQLTimeStampField2: TSQLTimeStampField;
    WideStringField8: TWideStringField;
    cdsGetIcd9: TClientDataSet;
    IntegerField3: TIntegerField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    SQLTimeStampField3: TSQLTimeStampField;
    WideStringField15: TWideStringField;
    IntegerField4: TIntegerField;
    SQLTimeStampField4: TSQLTimeStampField;
    WideStringField16: TWideStringField;
    cdsGetReport43Home: TClientDataSet;
    cdsGetReport43HomeList: TClientDataSet;
    cdsGetReport43HomeREPORTID: TIntegerField;
    cdsGetReport43HomeHOSPCODE: TWideStringField;
    cdsGetReport43HomeHID: TWideStringField;
    cdsGetReport43HomeHOUSE_ID: TWideStringField;
    cdsGetReport43HomeHOUSETYPE: TWideStringField;
    cdsGetReport43HomeROOMNO: TWideStringField;
    cdsGetReport43HomeCONDO: TWideStringField;
    cdsGetReport43HomeHOUSE: TWideStringField;
    cdsGetReport43HomeSOISUB: TWideStringField;
    cdsGetReport43HomeSOIMAIN: TWideStringField;
    cdsGetReport43HomeROAD: TWideStringField;
    cdsGetReport43HomeVILLANAME: TWideStringField;
    cdsGetReport43HomeVILLAGE: TWideStringField;
    cdsGetReport43HomeTAMBON: TWideStringField;
    cdsGetReport43HomeAMPUR: TWideStringField;
    cdsGetReport43HomeCHANGWAT: TWideStringField;
    cdsGetReport43HomeTELEPHONE: TWideStringField;
    cdsGetReport43HomeLATITUDE: TIntegerField;
    cdsGetReport43HomeLONGITUDE: TIntegerField;
    cdsGetReport43HomeNFAMILY: TWideStringField;
    cdsGetReport43HomeLOCATYPE: TWideStringField;
    cdsGetReport43HomeVHVID: TWideStringField;
    cdsGetReport43HomeHEADID: TWideStringField;
    cdsGetReport43HomeTOILET: TWideStringField;
    cdsGetReport43HomeWATER: TWideStringField;
    cdsGetReport43HomeWATERTYPE: TWideStringField;
    cdsGetReport43HomeGARBAGE: TWideStringField;
    cdsGetReport43HomeHOUSING: TWideStringField;
    cdsGetReport43HomeDURABILITY: TWideStringField;
    cdsGetReport43HomeCLEANLINESS: TWideStringField;
    cdsGetReport43HomeVENTILATION: TWideStringField;
    cdsGetReport43HomeLIGHT: TWideStringField;
    cdsGetReport43HomeWATERTM: TWideStringField;
    cdsGetReport43HomeMFOOD: TWideStringField;
    cdsGetReport43HomeBCONTROL: TWideStringField;
    cdsGetReport43HomeACONTROL: TWideStringField;
    cdsGetReport43HomeCHEMICAL: TWideStringField;
    cdsGetReport43HomeOUTDATE: TDateField;
    cdsGetReport43HomeD_UPDATE: TSQLTimeStampField;
    cdsGetReport43HomeListREPORTID: TIntegerField;
    cdsGetReport43HomeListHOSPCODE: TWideStringField;
    cdsGetReport43HomeListHID: TWideStringField;
    cdsGetReport43HomeListHOUSE_ID: TWideStringField;
    cdsGetReport43HomeListHOUSETYPE: TWideStringField;
    cdsGetReport43HomeListROOMNO: TWideStringField;
    cdsGetReport43HomeListCONDO: TWideStringField;
    cdsGetReport43HomeListHOUSE: TWideStringField;
    cdsGetReport43HomeListSOISUB: TWideStringField;
    cdsGetReport43HomeListSOIMAIN: TWideStringField;
    cdsGetReport43HomeListROAD: TWideStringField;
    cdsGetReport43HomeListVILLANAME: TWideStringField;
    cdsGetReport43HomeListVILLAGE: TWideStringField;
    cdsGetReport43HomeListTAMBON: TWideStringField;
    cdsGetReport43HomeListAMPUR: TWideStringField;
    cdsGetReport43HomeListCHANGWAT: TWideStringField;
    cdsGetReport43HomeListTELEPHONE: TWideStringField;
    cdsGetReport43HomeListLATITUDE: TIntegerField;
    cdsGetReport43HomeListLONGITUDE: TIntegerField;
    cdsGetReport43HomeListNFAMILY: TWideStringField;
    cdsGetReport43HomeListLOCATYPE: TWideStringField;
    cdsGetReport43HomeListVHVID: TWideStringField;
    cdsGetReport43HomeListHEADID: TWideStringField;
    cdsGetReport43HomeListTOILET: TWideStringField;
    cdsGetReport43HomeListWATER: TWideStringField;
    cdsGetReport43HomeListWATERTYPE: TWideStringField;
    cdsGetReport43HomeListGARBAGE: TWideStringField;
    cdsGetReport43HomeListHOUSING: TWideStringField;
    cdsGetReport43HomeListDURABILITY: TWideStringField;
    cdsGetReport43HomeListCLEANLINESS: TWideStringField;
    cdsGetReport43HomeListVENTILATION: TWideStringField;
    cdsGetReport43HomeListLIGHT: TWideStringField;
    cdsGetReport43HomeListWATERTM: TWideStringField;
    cdsGetReport43HomeListMFOOD: TWideStringField;
    cdsGetReport43HomeListBCONTROL: TWideStringField;
    cdsGetReport43HomeListACONTROL: TWideStringField;
    cdsGetReport43HomeListCHEMICAL: TWideStringField;
    cdsGetReport43HomeListOUTDATE: TDateField;
    cdsGetReport43HomeListD_UPDATE: TSQLTimeStampField;
    cdsGetReport43AddressType1: TClientDataSet;
    cdsGetReport43AddressType2: TClientDataSet;
    cdsGetDefaultValue: TClientDataSet;
    cdsGetPageList: TClientDataSet;
    cdsDocrun: TClientDataSet;
    cdsDoc_Pid: TClientDataSet;
    cdsGetReport43Community_ServiceList: TClientDataSet;
    cdsGetreport43Community_ActivityList: TClientDataSet;
    cdsGetReport43Village: TClientDataSet;
    cdsSettingGetHospName: TClientDataSet;
    cdsGetBathList: TClientDataSet;
    cdsGetBatchDetail: TClientDataSet;
    cdsGetBatchError: TClientDataSet;
    cdsGetBatchErrorByFilename: TClientDataSet;
    cdsGetBatchErrorGrpByFilename: TClientDataSet;
    procedure GetFmtDate(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStRm1GetPDTRM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStAm1GetDDTAM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStAm1GetIDTAM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStYm1GetDDTYM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStYm1GetIDTYM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStIm2GetCT1IM2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStShpGetAMTSHPGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStRegGetAMTREGGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStRm1GetPATRM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlDT1CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlAC1CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlAC2CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStCdeGetDtlVA1CDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetListSUMAMTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetDtlAM1FG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetDtlFAMFG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsStFg1GetDtlFU1FG1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGetReport43ServiceListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43ProcedureOpdListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43DrugListOpdAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43AppointmentListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43AncListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43PrenatalListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43PostnatalListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43LabOrListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43WomenListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43FpListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43EpiListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43IcfListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43SpecialPpListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43ChronicListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43ChronicFuListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43NutritionListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43DeathListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43CardListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43DrugallergyListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43AccidentListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43ChargeOrdListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43DiagnosisIpdListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43ProcedureIpdListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43DrugIpdListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43ChargeIpdListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43SurveillanceListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43NewbornListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43NewbornCareListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43DentalListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43NcdscreenListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43LabFuListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43AddressListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43AncListBeforePost(DataSet: TDataSet);
    procedure cdsGetReport43LabOrListBeforePost(DataSet: TDataSet);
    procedure cdsGetReport43PersonNewRecord(DataSet: TDataSet);
    procedure cdsGetReport43AddressType1NewRecord(DataSet: TDataSet);
    procedure cdsGetReport43AddressType2NewRecord(DataSet: TDataSet);
    procedure cdsGetReport43CardListNewRecord(DataSet: TDataSet);
    procedure cdsGetReport43PrenatalListBeforePost(DataSet: TDataSet);
    procedure cdsGetReport43DiagnosisOpdListAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43PersonAfterScroll(DataSet: TDataSet);
    procedure cdsGetReport43ServiceListBeforePost(DataSet: TDataSet);
    procedure cdsGetReport43NewbornListBeforePost(DataSet: TDataSet);
  private
    FAccMode : TActionMode;
    FSysTableMode : TActionMode;

    function GetDSProxy(): TDS43FileClient; inline;

  public

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property Rp43OPD01Proxy: TDS43FileClient read GetDSProxy;

    function samObj(Obj: TPerson4): boolean;
    function getPerson(CID:string):boolean;
    function DownloadFile(sFilePath: string): TStream;
    procedure syncPerson(CID:string);
    function getServerVersion:string;

    function getHospName(hospcode,hospname:string):boolean;
    function setHospName(hospcode,hospname:string):boolean;

    function getBatchList():boolean;
    function getBatchDetail(batchcode:string):boolean;
    function getBatchError(batchcode:string):boolean;
    function getBatchErrorByFileName(batchcode,filename:string):boolean;
    function getBatchErrorByGrpFileName(batchcode:string):boolean;



    function InsUpdPerson(
        REPORTID: Integer;
        HOSPCODE,
        CID:string;
        PID:integer;
        HID,
        PRENAME,
        NAME,
        LNAME,
        HN,
        SEX: String;
        BIRTH: Double;
        MSTATUS,
        OCCUPATION_OLD,
        OCCUPATION_NEW,
        RACE,
        NATION,
        RELIGION,
        EDUCATION,
        FSTATUS,
        FATHER,
        MOTHER,
        COUPLE,
        VSTATUS: String;
        MOVEIN: Double;
        DISCHARGE: String;
        DDISCHARGE: Double;
        ABOGROUP,
        RHGROUP,
        LABOR,
        PASSPORT:string{,
        TYPEAREA: String{;
        D_UPDATE,
        EXPORT_DATE: double }
    ):boolean;

    function checkPersonArea1(PID:integer):boolean;
    function checkPersonArea2(PID:integer):boolean;
    function checkPersonArea3(PID:integer):boolean;
    function checkPersonArea4(PID:integer):boolean;
    function checkPersonArea5(PID:integer):boolean;

    {
    function InsUpdPerson(REPORTID:Integer;HOSPCODE:String;CID:String;PID:String;HID:String;PRENAME:String;NAME:String;LNAME:String;HN:String;
            SEX:String;BIRTH:Double;MSTATUS:String;OCCUPATION_OLD:String;OCCUPATION_NEW:String;RACE:String;NATION:String;RELIGION:String;
            EDUCATION:String;FSTATUS:String;FATHER:String;MOTHER:String;COUPLE:String;VSTATUS:String;MOVEIN:Double;DISCHARGE:String;DDISCHARGE:Double;
            ABOGROUP:String;RHGROUP:String;LABOR:String;PASSPORT:String;TYPEAREA:String;D_UPDATE:double;EXPORT_DATE:double):boolean;
            }
    function getService(PID,SEQ:integer):boolean;
    function getServiceList(PID:integer):boolean;
    function syncServiceList(PID:integer):boolean;
     function InsUpdService(
        HOSPCODE:String;
        PID:Integer;
        HN:String;
        SEQ:Integer;
        DATE_SERV,
        TIME_SERV:Double;
        LOCATION,
        INTIME,
        INSTYPE,
        INSID,
        MAIN,
        TYPEIN,
        REFERINHOSP,
        CAUSEIN,
        CHIEFCOMP,
        SERVPLACE:String;
        BTEMP,
        SBP,
        DBP,
        PR,
        RR:Integer;
        TYPEOUT,
        REFEROUTHOSP,
        CAUSEOUT:String;
        COST,
        PRICE,
        PAYPRICE,
        ACTUALPAY:Integer;
        D_UPDATE:Double
    ):boolean;

    function getDiagnosisOpd(PID,SEQ:integer):boolean;
    function getDiagnosisOpdList(PID,SEQ:integer):boolean;
    function syncDiagnosisOpdList(PID:integer):boolean;
    function InsUpdDiagnosisOpd(
        HOSPCODE:String;
        PID,
        SEQ:Integer;
        DATE_SERV:Double;
        DIAGTYPE,
        DIAGCODE,
        CLINIC,
        PROVIDER:String;
        D_UPDATE,
        EXPORT_DATE:double
    ):boolean;


    function getProcedureOpd(REPORTID:integer):boolean;
    function getProcedureOpdList(PID,SEQ:integer):boolean;
    function syncProcedureOpdList(PID:integer):boolean;
    function InsUpdProcedureOpd(
        REPORTID:Integer;
        HOSPCODE:String;
        PID,
        SEQ:Integer;
        DATE_SERV:Double;
        CLINIC,
        PROCEDCODE:String;
        SERVICEPRICE:Integer;
        PROVIDER:String;
        D_UPDATE:Double
    ):boolean;


    function getDrugOpd(REPORTID:integer):boolean;
    function getDrugOpdList(PID,SEQ:integer):boolean;
    function InsUpdDrugOpd(
        REPORTID:Integer;
        ORDER_NO,
        HOSPCODE:String;
        PID,
        SEQ:Integer;
        DATE_SERV:Double;
        CLINIC,
        DIDSTD,
        DNAME:String;
        AMOUNT:Integer;
        _UNIT,
        UNIT_PACKING:String;
        DRUGPRICE,
        DRUGCOST:Integer;
        PROVIDER:String;
        D_UPDATE:double
    ):boolean;

    function getAppointment(REPORTID:integer):boolean;
    function getAppointmentList(PID,SEQ:integer):boolean;
    function syncAppointmentList(PID:integer):boolean;
    function InsUpdAppointment(
            REPORTID:Integer;
            HOSPCODE:String;
            PID,
            AN,
            SEQ:Integer;
            DATE_SERV:Double;
            CLINIC:String;
            APDATE:Double;
            APTYPE,
            APDIAG,
            PROVIDER:String;
            D_UPDATE:Double
    ):boolean;

    function getAnc(REPORTID:integer):boolean;
    function getAncList(PID:integer;GRAVIDA:string):boolean;
    function InsUpdAnc(
        REPORTID:Integer;
        HOSPCODE:String;
        PID,
        SEQ:Integer;
        DATE_SERV:Double;
        GRAVIDA,
        ANCNO,
        GA,
        ANCRESULT,
        ANCPLACE,
        PROVIDER:String;
        D_UPDATE:Double
    ):boolean;


    function getPrenatal(REPORTID:integer):boolean;
    function getPrenatalList(PID:Integer):boolean;
    function InsUpdPrenatal(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      GRAVIDA:String;
      LMP,
      EDC:Double;
      VDRL_RESULT,
      HB_RESULT,
      HIV_RESULT:String;
      DATE_HCT:Double;
      HCT_RESULT:Integer;
      THALASSEMIA:String;
      D_UPDATE:Double
    ):boolean;

    function getPostnatal(REPORTID:integer):boolean;
    function getPostnatalList(PID:integer):boolean;
    function InsUpdPostnatal(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      SEQ,
      GRAVIDA:String;
      BDATE,
      PPCARE:Double;
      PPPLACE,
      PPRESULT,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;


    function getLabOr(REPORTID:integer):boolean;
    function syncLabOrList(PID: integer): boolean;
    function getLabOrList(PID:integer;GRAVIDA:string):boolean;
    function InsUpdLabOr(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      GRAVIDA:String;
      LMP,
      EDC,
      BDATE:Double;
      BRESULT,
      BPLACE,
      BHOSP,
      BTYPE,
      BDOCTOR:String;
      LBORN,
      SBORN:Integer;
      D_UPDATE:double
    ):boolean;


    function getWomen(REPORTID:integer):boolean;
    function getWomenList(PID:integer):boolean;
    function InsUpdWomen(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      FPTYPE,
      NOFPCAUSE:String;
      TOTALSON,
      NUMBERSON,
      ABORTION,
      STILLBIRTH:Integer;
      D_UPDATE:Double
    ):boolean;

    function getFp(REPORTID:integer):boolean;
    function getFpList(PID:integer):boolean;
    function InsUpdFp(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      FPTYPE,
      FPPLACE,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getCommunity_Activity(VID:string):boolean;
    function InsUpdCommunity_Activity(
      REPORTID:Integer;
      HOSPCODE,
      VID:String;
      DATE_START,
      DATE_FINISH:Double;
      COMACTIVITY,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getvillage(VID:string):boolean;
    function InsUpdVillage_A(
      REPORTID:Integer;
      HOSPCODE:String;
      VID:String;
      NTRADITIONAL,
      NMONK,
      NRELIGIONLEADER,
      NBROADCAST,
      NRADIO,
      NPCHC,
      NCLINIC,
      NDRUGSTORE,
      NCHILDCENTER,
      NPSCHOOL,
      NSSCHOOL,
      NTEMPLE,
      NRELIGIOUSPLACE,
      NMARKET,
      NSHOP,
      NFOODSHOP,
      NSTALL:Integer

    ):boolean;

    function InsUpdVillage_B(
      NRAINTANK,
      NCHICKENFARM,
      NPIGFARM:Integer;
      WASTEWATER,
      GARBAGE:String;
      NFACTORY,
      LATITUDE,
      LONGITUDE:Integer;
      OUTDATE:Double;
      NUMACTUALLY,
      RISKTYPE,
      NUMSTATELESS,
      NEXERCISECLUB,
      NOLDERLYCLUB,
      NDISABLECLUB,
      NNUMBERONECLUB:Integer;
       D_UPDATE:Double
    ):boolean;

    function getCommunity_ServiceList(PID,SEQ:integer):boolean;
    function InsUpdCommunity_Service(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      SEQ:Integer;
      DATE_SERV:Double;
      COMSERVICE,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;


    function getEpi(REPORTID:integer):boolean;
    function getEpiList(PID,SEQ:integer):boolean;
    function InsUpdEpi(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      VACCINETYPE,
      VACCINEPLACE,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getIcf(REPORTID:integer):boolean;
    function getIcfList(PID,SEQ:integer):boolean;
    function InsUpdIcf(
      REPORTID:Integer;
      HOSPCODE,
      DISABID:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      ICF:String;
      QUALIFIER,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getSpecialPp(PID:integer):boolean;
    function getSpecialPpList(PID,SEQ:integer):boolean;
    function InsUpdSpecialPp(
        REPORTID:Integer;
        HOSPCODE,
        PID,
        SEQ:String;
        DATE_SERV:Double;
        SERVPLACE,
        PPSPECIAL,
        PPSPLACE,
        PROVIDER:String;
        D_UPDATE:Double
    ):boolean;

    function getChronic(REPORTID:integer):boolean;
    function getChronicList(PID:integer):boolean;
    function InsUpdChronic(
        REPORTID:Integer;
        HOSPCODE:String;
        PID:String;
        DATE_DIAG:Double;
        CHRONIC,
        HOSP_DX,
        HOSP_RX:String;
        DATE_DISCH:Double;
        TYPEDISCH:String;
        D_UPDATE:Double
    ):boolean;

    function getChronicFu(REPORTID:integer):boolean;
    function getChronicFuList(PID,SEQ:integer):boolean;
    function InsUpdChronicFu(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      WEIGHT,
      HEIGHT,
      WAIST_CM,
      SBP,
      DBP:Integer;
      FOOT,
      RETINA,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getNutrition(REPORTID:integer):boolean;
    function getNutritionList(PID,SEQ:integer):boolean;
    function InsUpdNutrition(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      NUTRITIONPLACE:String;
      WEIGHT,
      HEIGHT,
      HEADCIRCUM:Integer;
      CHILDDEVELOP:String;
      FOOD,
      BOTTLE,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getDeath(REPORTID:integer):boolean;
    function getDeathList(PID:integer):boolean;
    function syncDeathList(PID:integer):boolean;
    function InsUpdDeath(
        REPORTID:Integer;
        HOSPCODE:String;
        PID:Integer;
        HOSPDEATH:String;
        AN:String;
        SEQ:Integer;
        DDEATH:Double;
        CDEATH_A,
        CDEATH_B,
        CDEATH_C,
        CDEATH_D,
        ODISEASE,
        CDEATH,
        PREGDEATH,
        PDEATH,
        PROVIDER:String;
        D_UPDATE:Double
    ):boolean;

    function getCard(REPORTID:integer):boolean;
    function getCardList(PID:integer):boolean;
    function syncCardList(PID:integer):boolean;
    function syncIfxRecord(pid:integer;tableName,aloha_name,arrDFields,updateKeys:string):boolean;

    function InsUpdCard(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      INSTYPE_OLD,
      INSTYPE_NEW:String;
      INSID:String;
      STARTDATE,
      EXPIREDATE:Double;
      MAIN,
      SUB:String;
      D_UPDATE:Double
    ):boolean;

    function getDugallergy(REPORTID:integer):boolean;
    function getDugallergyList(PID:integer):boolean;
    function InsUpdDrugallergy(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      DATERECORD:Double;
      DRUGALLERGY:String;
      DNAME,
      TYPEDX,
      ALEVEL,
      SYMPTOM,
      INFORMANT,
      INFORMHOSP:String;
      D_UPDATE:Double
    ):boolean;

    function getAccident(REPORTID:integer):boolean;
    function getAccidentList(PID,SEQ:integer):boolean;
    function InsUpdAccident(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATETIME_SERV,
      DATETIME_AE:Double;
      AETYPE,
      AEPLACE,
      TYPEIN_AE,
      TRAFFIC,
      VEHICLE,
      ALCOHOL,
      NACROTIC_DRUG,
      BELT,
      HELMET,
      AIRWAY,
      STOPBLEED,
      SPLINT,
      FLUID,
      URGENCY,
      COMA_EYE,
      COMA_SPEAK,
      COMA_MOVEMENT:String;
      D_UPDATE:Double
    ):boolean;

    function getChargeOpd(REPORTID:integer):boolean;
    function getChargeOpdList(PID,SEQ:integer):boolean;
    function InsUpdChargeOpd(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      CLINIC,
      CHARGEITEM,
      CHARGELIST:String;
      QUANTITY:Integer;
      INSTYPE:String;
      COST,
      PRICE,
      PAYPRICE:Integer;
      D_UPDATE:Double
    ):boolean;

    function getAdmission(REPORTID:integer):boolean;
    function getAdmissionList(PID,SEQ:integer):boolean;
    function syncAdmissionList(PID:integer):boolean;
    function InsUpdAdmission(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      AN:String;
      DATETIME_ADMIT:Double;
      WARDADMIT,
      INSTYPE,
      TYPEIN,
      REFERINHOSP,
      CAUSEIN:String;
      ADMITWEIGHT,
      ADMITHEIGHT:Integer;
      DATETIME_DISCH:Double;
      WARDDISCH,
      DISCHSTATUS,
      DISCHTYPE,
      REFEROUTHOSP,
      CAUSEOUT:String;
      COST,
      PRICE,
      PAYPRICE,
      ACTUALPAY:Integer;
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getDiagnosisIpd(REPORTID:integer):boolean;
    function getDiagnosisIpdList(PID:integer):boolean;
    function InsUpdDiagnosisIpd(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      AN:String;
      DATETIME_ADMIT:Double;
      WARDDIAG,
      DIAGTYPE,
      DIAGCODE,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getProcedureIpd(REPORTID:integer):boolean;
    function getProcedureIpdList(PID:integer):boolean;
    function InsUpdProcedureIpd(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      AN:String;
      DATETIME_ADMIT:Double;
      WARDSTAY,
      PROCEDCODE:String;
      TIMESTART,
      TIMEFINISH:Double;
      SERVICEPRICE:Integer;
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getDrugIpd(REPORTID:integer):boolean;
    function getDrugIpdList(PID:integer):boolean;
    function InsUpdDrugIpd(
      REPORTID:Integer;
      ORDER_NO,
      HOSPCODE:String;
      PID:Integer;
      AN:String;
      DATETIME_ADMIT:Double;
      WARDSTAY,
      TYPEDRUG,
      DIDSTD,
      DNAME:String;
      DATESTART,
      DATEFINISH:Double;
      AMOUNT:Integer;
      _UNIT,
      UNIT_PACKING:String;
      DRUGPRICE,
      DRUGCOST:Integer;
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getChargeIpd(REPORTID:integer):boolean;
    function getChargeIpdList(PID:integer):boolean;
    function InsUpdChargeIpd(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      AN:String;
      DATETIME_ADMIT:Double;
      WARDSTAY,
      CHARGEITEM,
      CHARGELIST:String;
      QUANTITY:Integer;
      INSTYPE:String;
      COST,
      PRICE,
      PAYPRICE:Integer;
      D_UPDATE:Double
    ):boolean;

    function getSurveillance(REPORTID:integer):boolean;
    function getSurveillanceList(PID:integer):boolean;
    function InsUpdSurveillance(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      AN:String;
      DATETIME_ADMIT:Double;
      SYNDROME,
      DIAGCODE,
      CODE506,
      DIAGCODELAST,
      CODE506LAST:String;
      ILLDATE:Double;
      ILLHOUSE,
      ILLVILLAGE,
      ILLTAMBON,
      ILLAMPUR,
      ILLCHANGWAT:String;
      LATITUDE,
      LONGITUDE:Integer;
      PTSTATUS:String;
      DATE_DEATH:Double;
      COMPLICATION,
      ORGANISM,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getNewborn(REPORTID:integer):boolean;
    function getNewbornList(MPID:string;GRAVIDA:string):boolean;
    function InsUpdNewborn(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      MPID,
      GRAVIDA,
      GA:String;
      BDATE,
      BTIME:Double;
      BPLACE,
      BHOSP,
      BIRTHNO,
      BTYPE,
      BDOCTOR:String;
      BWEIGHT:Integer;
      ASPHYXIA,
      VITK,
      TSH:String;
      TSHRESULT:Integer;
      D_UPDATE:Double
    ):boolean;

    function getNewbornCare(REPORTID:integer):boolean;
    function getNewbornCareList(PID,SEQ:integer):boolean;
    function InsUpdNewbornCare(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      BDATE,
      BCARE:Double;
      BCPLACE,
      BCARERESULT:String;
      FOOD,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getDental(REPORTID:integer):boolean;
    function getDentalList(PID,SEQ:integer):boolean;
    function InsUpdDental(
      REPORTID:Integer;
      HOSPCODE:String;
      PID,
      SEQ:Integer;
      DATE_SERV:Double;
      DENTTYPE,
      SERVPLACE:String;
      PTEETH,
      PCARIES,
      PFILLING,
      PEXTRACT,
      DTEETH,
      DCARIES,
      DFILLING,
      DEXTRACT:Integer;
      NEED_FLUORIDE,
      NEED_SCALING:String;
      NEED_SEALANT,
      NEED_PFILLING,
      NEED_DFILLING,
      NEED_PEXTRACT,
      NEED_DEXTRACT:Integer
      {
      NPROSTHESIS:String;
      PERMANENT_PERMANENT,
      PERMANENT_PROSTHESIS,
      PROSTHESIS_PROSTHESIS:Integer;
      GUM,
      SCHOOLTYPE,
      _CLASS,
      PROVIDER:String;
      D_UPDATE:Double }

    ):boolean;

    function InsUpdDental2(
      NPROSTHESIS:String;
      PERMANENT_PERMANENT,
      PERMANENT_PROSTHESIS,
      PROSTHESIS_PROSTHESIS:Integer;
      GUM,
      SCHOOLTYPE,
      _CLASS,
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getNcdscreen(REPORTID:integer):boolean;
    function getNcdscreenList(PID,SEQ:integer):boolean;
    function InsUpdNcdscreen(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      SEQ:Integer;
      DATE_SERV:Double;
      SERVPLACE:String;
      SMOKE:String;
      ALCOHOL:String;
      DMFAMILY:String;
      HTFAMILY:String;
      WEIGHT:Integer;
      HEIGHT:Integer;
      WAIST_CM:Integer;
      SBP_1:Integer;
      DBP_1:Integer;
      SBP_2:Integer;
      DBP_2:Integer;
      BSLEVEL:Integer;
      BSTEST:String;
      SCREENPLACE:String;
      PROVIDER:String;
      D_UPDATE:Double
    ):boolean;

    function getLabFu(REPORTID:integer):boolean;
    function getLabFuList(PID,SEQ:integer):boolean;
    function InsUpdLabFu(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      SEQ:Integer;
      DATE_SERV:Double;
      LABTEST:String;
      LABRESULT:Integer;
      D_UPDATE:Double
    ):boolean;

    function getAddress(REPORTID:integer):boolean;
    function getAddressType1(PID:integer):boolean;
    function getAddressType2(PID:integer):boolean;
    function syncAddressType1(PID:integer):boolean;
    function syncAddressType2(PID:integer):boolean;
    function getHN(PID:integer):string;


    function setAddressType1(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      ADDRESSTYPE,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSENO,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE,
      MOBILE:String;
      D_UPDATE:Double
    ):boolean;
    function setAddressType2(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      ADDRESSTYPE,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSENO,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE,
      MOBILE:String;
      D_UPDATE:Double
    ):boolean;

    function getAddressList(PID:integer):boolean;
    function InsUpdAddress(
      REPORTID:Integer;
      HOSPCODE:String;
      PID:Integer;
      ADDRESSTYPE,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSENO,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE,
      MOBILE:String;
      D_UPDATE:Double
    ):boolean;


    function getHome(REPORTID:integer):boolean;
    function getHomeList(Tambon,Ampur,Changwat:string):boolean;
    function InsUpdHomeA(
      REPORTID:Integer;
      HOSPCODE,
      HID,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSE,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE:String;
      LATITUDE,
      LONGITUDE:Integer;
      NFAMILY:String
    ):boolean;
    function InsUpdHomeB(
      LOCATYPE,
      VHVID,
      HEADID,
      TOILET,
      WATER,
      WATERTYPE,
      GARBAGE,
      HOUSING,
      DURABILITY,
      CLEANLINESS,
      VENTILATION,
      LIGHT,
      WATERTM,
      MFOOD,
      BCONTROL,
      ACONTROL,
      CHEMICAL:String;
      OUTDATE,
      D_UPDATE:Double
    ):boolean;


    function loadCmbItems(CmbITem:TStrings;tbl,Abbr,fCode,fName,defaultCode:string;showCode:boolean):integer;
    function loadBatchItems(CmbITem:TStrings;defaultCode:string;showCode:boolean):integer;
    function getKeywords(tbl,abbr:string):boolean;
    function getHospNameList(prv,amp,tumbon:string):boolean;
    function getIcd10(code:string):boolean;
    function getIcd10List(group:string):boolean;
    function getIcd9(code:string):boolean;
    function getIcd9List(Section:string):boolean;
    function getTumbon(code:string):boolean;
    function getTumbonList(prv,amp:string):boolean;
    function getAmpList(prv:string):boolean;
    function getProvinceList(control:integer):boolean;
    function getDefaultValue(tableName,fieldName:string):boolean;
    function getDefaultValueA(tableName,fieldName:string):string;
    function WriteClientLog(Msg: string):boolean;
    function getNewPID:integer;
    function getPageList(dep,station,loc:string):boolean;
    function ExportAllFile(batchcode,zipfName,fileName:string;dd,month,year,_dd,_month,_year:integer):boolean;

    function loadHospNameList2CmbItems(CmbITem:TStrings;defaultCode:string;showCode:boolean):integer;

    function getIcd10List2CmbItems(CmbITem:TStrings;strSearch,defaultCode:string;showCode:boolean):integer;
    function loadIcd10List2CmbItems(CmbITem:TStrings;strSearch,defaultCode:string;showCode:boolean):integer;

    function loadIcd9List2CmbItems(CmbITem:TStrings;defaultCode:string;showCode:boolean):integer;

    function loadTumbonList2CmbItems(CmbITem:TStrings;prv,amp:string;defaultCode:string;showCode:boolean):integer;
    function loadAmpList2CmbItems(CmbITem:TStrings;prv:string;defaultCode:string;showCode:boolean):integer;
    function loadProviceList2CmbItems(CmbITem:TStrings;control:integer;defaultCode:string;showCode:boolean):integer;

    function GetDoc(DOCT: String): string;


    property AccMode: TActionMode read FAccMode write FAccMode;
    property SysTableMode: TActionMode read FSysTableMode write FSysTableMode;
  end;

var
  DS43FileDM: TDS43FileDM;

implementation

{$R *.dfm}


{
function loadCmbItems(CmbITem:TStrings;cds:TClientDataset;strSQL,fCode,fName,defaultCode:string):integer;
var i,defaultIndex: integer;
begin
  cds.close;
  cds.CommandText:=strsql;
  cds.open;

  defaultIndex:=0;



  cdsRaceList.close;
  getKeywords('RACE');
  cdsRaceList.Open;



  CmbITem.Clear;
  if cds.RecordCount>0 then
  begin
    cds.first;

    if defaultCode='9999'  then
      CmbITem.AddObject('---- select ----',TString.Create('0'));
    for i := 0 to cds.RecordCount-1 do
    begin
      CmbITem.AddObject(trim(cds.fieldbyname(fName).AsString),TString.Create(trim(cds.fieldbyname(fCode).AsString)));
      if trim(cds.fieldbyname(fCode).AsString)=trim(defaultCode) then  defaultIndex:=i;

      if not cds.Eof then cds.next;
    end;
  end;

  result:=defaultIndex;
end;
}




function TDS43FileDM.GetDSProxy(): TDS43FileClient;
begin
  Result := TDS43FileClient(DSProxy);
end;

function TDS43FileDM.getDugallergy(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getDugallergy(REPORTID);
end;

function TDS43FileDM.getDugallergyList(PID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getDugallergyList(PID);
end;

function TDS43FileDM.getEpi(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getEpi(REPORTID);
end;

function TDS43FileDM.getEpiList(PID,SEQ: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getEpiList(PID,SEQ);
end;

procedure TDS43FileDM.GetFmtDate(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;


function TDS43FileDM.getFp(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getFp(REPORTID);
end;

function TDS43FileDM.getFpList(PID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getFpList(PID);
end;

function TDS43FileDM.getHN(PID: integer): string;
begin
  Result:=Rp43OPD01Proxy.getHN(PID);
end;

function TDS43FileDM.getHome(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getHome(REPORTID);
end;

function TDS43FileDM.getHomeList(Tambon, Ampur, Changwat: string): boolean;
begin
  Result:=Rp43OPD01Proxy.getHomeList(Tambon, Ampur, Changwat);
end;

function TDS43FileDM.getHospName(hospcode, hospname: string): boolean;
begin
    Result:=Rp43OPD01Proxy.getHospName(hospcode, hospname);
end;

function TDS43FileDM.getHospNameList(prv, amp, tumbon: string): boolean;
begin
   Result:=Rp43OPD01Proxy.getHospNameList(prv, amp, tumbon);
end;

function TDS43FileDM.getIcd10(code: string): boolean;
begin
  Result:=Rp43OPD01Proxy.getIcd10(code);
end;

function TDS43FileDM.getIcd10List(group: string): boolean;
begin
   Result:=Rp43OPD01Proxy.getIcd10List(group)
end;

function TDS43FileDM.getIcd10List2CmbItems(CmbITem: TStrings; strSearch,
  defaultCode: string; showCode: boolean): integer;
var i,defaultIndex: integer;
begin
  defaultIndex:=0;

  cdsGetIcd10.close;
  getIcd10(defaultCode);
  cdsGetIcd10.Open;

  CmbITem.Clear;
  if cdsGetIcd10.RecordCount>0 then
  begin
    cdsGetIcd10.first;

    if defaultCode='9999'  then
      CmbITem.AddObject('---- select ----',TString.Create('0'));
    for i := 0 to cdsGetIcd10.RecordCount-1 do
    begin
      if showCode then
        CmbITem.AddObject(trim(cdsGetIcd10.fieldbyname('CODE1').AsString)+'-'+trim(cdsGetIcd10.fieldbyname('NAME1').AsString),TString.Create(trim(cdsGetIcd10.fieldbyname('CODE1').AsString)))
      else
        CmbITem.AddObject(trim(cdsGetIcd10.fieldbyname('CODE1').AsString),TString.Create(trim(cdsGetIcd10.fieldbyname('NAME1').AsString)));

      if trim(cdsGetIcd10.fieldbyname('CODE1').AsString)=trim(defaultCode) then  defaultIndex:=i else defaultIndex:=-1;

      if not cdsGetIcd10.Eof then cdsGetIcd10.next;
    end;
  end;

  result:=defaultIndex;
end;

function TDS43FileDM.getIcd9(code: string): boolean;
begin
 Result :=Rp43OPD01Proxy.getIcd9(code);
end;

function TDS43FileDM.getIcd9List(Section: string): boolean;
begin
   Result:=Rp43OPD01Proxy.getIcd9List(Section);
end;

function TDS43FileDM.getIcf(REPORTID: integer): boolean;
begin
   Result:=Rp43OPD01Proxy.getIcf(REPORTID)
end;

function TDS43FileDM.getIcfList(PID,SEQ: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getIcfList(PID,SEQ)
end;

function TDS43FileDM.getKeywords(tbl,abbr: string): boolean;
begin
  Result:=Rp43OPD01Proxy.getKeywords(tbl,abbr)
end;

function TDS43FileDM.getLabFu(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getLabFu(REPORTID);
end;

function TDS43FileDM.getLabFuList(PID,SEQ: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getLabFuList(PID,SEQ);
end;

function TDS43FileDM.getLabOr(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getLabOr(REPORTID);
end;

function TDS43FileDM.getLabOrList(PID: integer;GRAVIDA:string): boolean;
begin
 Result:=Rp43OPD01Proxy.getLabOrList(PID,GRAVIDA)
end;

function TDS43FileDM.getNcdscreen(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getNcdscreen(REPORTID);
end;

function TDS43FileDM.getNcdscreenList(PID,SEQ: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getNcdscreenList(PID,SEQ);
end;

function TDS43FileDM.getNewborn(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getNewborn(REPORTID);
end;

function TDS43FileDM.getNewbornCare(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getNewbornCare(REPORTID);
end;

function TDS43FileDM.getNewbornCareList(PID,SEQ: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getNewbornCareList(PID,SEQ);
end;

function TDS43FileDM.getNewbornList(MPID: string;GRAVIDA:string): boolean;
begin
  Result:=Rp43OPD01Proxy.getNewbornList(MPID,GRAVIDA);
end;

function TDS43FileDM.getNewPID: integer;
begin
  Result:=Rp43OPD01Proxy.getNewPID;
end;

function TDS43FileDM.getNutrition(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getNutrition(REPORTID);
end;

function TDS43FileDM.getNutritionList(PID,SEQ: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getNutritionList(PID,SEQ);
end;

function TDS43FileDM.getPageList(dep, station, loc: string): boolean;
begin
  Result:=Rp43OPD01Proxy.getPageList(dep, station, loc);
end;

function TDS43FileDM.getPerson(CID: string): boolean;
begin
  //d
  Result:=Rp43OPD01Proxy.getPerson(CID);
end;

function TDS43FileDM.getPostnatal(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getPostnatal(REPORTID);
end;

function TDS43FileDM.getPostnatalList(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getPostnatalList(PID);
end;

function TDS43FileDM.getPrenatal(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getPrenatal(REPORTID);
end;

function TDS43FileDM.getPrenatalList(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getPrenatalList(PID);
end;

function TDS43FileDM.getProcedureIpd(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getProcedureIpd(REPORTID);
end;

function TDS43FileDM.getProcedureIpdList(PID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getProcedureIpdList(PID);
end;

function TDS43FileDM.getProcedureOpd(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getProcedureOpd(REPORTID);
end;

function TDS43FileDM.getProcedureOpdList(PID,SEQ: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getProcedureOpdList(PID,SEQ);
end;

function TDS43FileDM.getProvinceList(control: integer): boolean;
begin
   Result:=Rp43OPD01Proxy.getProvinceList(control);
end;

function TDS43FileDM.getServerVersion: string;
begin
  Result:=Rp43OPD01Proxy.getServerVersion;
end;

function TDS43FileDM.getService(PID, SEQ: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getService(PID,SEQ);
end;

function TDS43FileDM.getServiceList(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getServiceList(PID);
end;

function TDS43FileDM.getSpecialPp(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getSpecialPp(PID);
end;

function TDS43FileDM.getSpecialPpList(PID,SEQ: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getSpecialPpList(PID,SEQ);
end;

function TDS43FileDM.getSurveillance(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getSurveillance(REPORTID);
end;

function TDS43FileDM.getSurveillanceList(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getSurveillanceList(PID);
end;

function TDS43FileDM.getTumbon(code: string): boolean;
begin
  Result:=Rp43OPD01Proxy.getTumbon(code);
end;

function TDS43FileDM.getTumbonList(prv, amp: string): boolean;
begin
   Result:=Rp43OPD01Proxy.getTumbonList(prv, amp);
end;

function TDS43FileDM.getvillage(VID: string): boolean;
begin
  Result:=Rp43OPD01Proxy.getvillage(VID);
end;

function TDS43FileDM.getWomen(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getWomen(REPORTID);
end;

function TDS43FileDM.getWomenList(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getWomenList(PID);
end;

function TDS43FileDM.InsUpdAccident(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATETIME_SERV, DATETIME_AE: Double; AETYPE, AEPLACE,
  TYPEIN_AE, TRAFFIC, VEHICLE, ALCOHOL, NACROTIC_DRUG, BELT, HELMET,
  AIRWAY, STOPBLEED, SPLINT, FLUID, URGENCY, COMA_EYE, COMA_SPEAK,
  COMA_MOVEMENT: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdAccident(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      DATETIME_SERV,
      DATETIME_AE,
      AETYPE,
      AEPLACE,
      TYPEIN_AE,
      TRAFFIC,
      VEHICLE,
      ALCOHOL,
      NACROTIC_DRUG,
      BELT,
      HELMET,
      AIRWAY,
      STOPBLEED,
      SPLINT,
      FLUID,
      URGENCY,
      COMA_EYE,
      COMA_SPEAK,
      COMA_MOVEMENT,
      D_UPDATE
  );
end;

function TDS43FileDM.InsUpdAddress(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSENO,
  SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT,
  TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdAddress(
      REPORTID,
      HOSPCODE,
      PID,
      ADDRESSTYPE,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSENO,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE,
      MOBILE,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdAdmission(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; AN: String; DATETIME_ADMIT: Double; WARDADMIT,
  INSTYPE, TYPEIN, REFERINHOSP, CAUSEIN: String; ADMITWEIGHT,
  ADMITHEIGHT: Integer; DATETIME_DISCH: Double; WARDDISCH, DISCHSTATUS,
  DISCHTYPE, REFEROUTHOSP, CAUSEOUT: String; COST, PRICE, PAYPRICE,
  ACTUALPAY: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdAdmission(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      AN,
      DATETIME_ADMIT,
      WARDADMIT,
      INSTYPE,
      TYPEIN,
      REFERINHOSP,
      CAUSEIN,
      ADMITWEIGHT,
      ADMITHEIGHT,
      DATETIME_DISCH,
      WARDDISCH,
      DISCHSTATUS,
      DISCHTYPE,
      REFEROUTHOSP,
      CAUSEOUT,
      COST,
      PRICE,
      PAYPRICE,
      ACTUALPAY,
      PROVIDER,
      D_UPDATE
  );
end;

function TDS43FileDM.InsUpdAnc(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; GRAVIDA, ANCNO, GA, ANCRESULT, ANCPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdAnc(REPORTID,HOSPCODE,PID,
  SEQ,DATE_SERV,GRAVIDA, ANCNO, GA, ANCRESULT, ANCPLACE,
  PROVIDER,D_UPDATE);
end;

function TDS43FileDM.InsUpdAppointment(REPORTID: Integer; HOSPCODE: String;
  PID, AN, SEQ: Integer; DATE_SERV: Double; CLINIC: String; APDATE: Double;
  APTYPE, APDIAG, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdAppointment(REPORTID,HOSPCODE,
  PID, AN, SEQ,DATE_SERV,CLINIC,APDATE,
  APTYPE, APDIAG, PROVIDER,D_UPDATE);
end;

function TDS43FileDM.InsUpdCard(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; INSTYPE_OLD, INSTYPE_NEW, INSID: String; STARTDATE,
  EXPIREDATE: Double; MAIN, SUB: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdCard(REPORTID,HOSPCODE,
  PID,INSTYPE_OLD, INSTYPE_NEW, INSID,STARTDATE,
  EXPIREDATE,MAIN, SUB, D_UPDATE);
end;

function TDS43FileDM.InsUpdChargeIpd(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; AN: String; DATETIME_ADMIT: Double; WARDSTAY, CHARGEITEM,
  CHARGELIST: String; QUANTITY: Integer; INSTYPE: String; COST, PRICE,
  PAYPRICE: Integer; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdChargeIpd(
      REPORTID,
      HOSPCODE,
      PID,
      AN,
      DATETIME_ADMIT,
      WARDSTAY,
      CHARGEITEM,
      CHARGELIST,
      QUANTITY,
      INSTYPE,
      COST,
      PRICE,
      PAYPRICE,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdChargeOpd(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; CLINIC, CHARGEITEM,
  CHARGELIST: String; QUANTITY: Integer; INSTYPE: String; COST, PRICE,
  PAYPRICE: Integer; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdChargeOpd(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      DATE_SERV,
      CLINIC,
      CHARGEITEM,
      CHARGELIST,
      QUANTITY,
      INSTYPE,
      COST,
      PRICE,
      PAYPRICE,
      D_UPDATE
  );
end;

function TDS43FileDM.InsUpdChronic(REPORTID: Integer; HOSPCODE,
  PID: String; DATE_DIAG: Double; CHRONIC, HOSP_DX, HOSP_RX: String;
  DATE_DISCH: Double; TYPEDISCH: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdChronic(
  REPORTID,HOSPCODE,
  PID,DATE_DIAG,CHRONIC, HOSP_DX, HOSP_RX,
  DATE_DISCH,TYPEDISCH, D_UPDATE
  );
end;

function TDS43FileDM.InsUpdChronicFu(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; WEIGHT, HEIGHT, WAIST_CM, SBP,
  DBP: Integer; FOOT, RETINA, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdChronicFu(
  REPORTID,HOSPCODE,
  PID, SEQ, DATE_SERV, WEIGHT, HEIGHT, WAIST_CM, SBP,
  DBP, FOOT, RETINA, PROVIDER, D_UPDATE
  );
end;

function TDS43FileDM.InsUpdCommunity_Activity(REPORTID: Integer; HOSPCODE,
  VID: String; DATE_START, DATE_FINISH: Double; COMACTIVITY, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
 Rp43OPD01Proxy.InsUpdCommunity_Activity(REPORTID,HOSPCODE,VID,DATE_START,DATE_FINISH,COMACTIVITY,PROVIDER,D_UPDATE);
end;

function TDS43FileDM.InsUpdCommunity_Service(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; COMSERVICE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  Rp43OPD01Proxy.InsUpdCommunity_Service(REPORTID,HOSPCODE,PID,SEQ,DATE_SERV,COMSERVICE,PROVIDER,D_UPDATE);
end;

function TDS43FileDM.InsUpdDeath(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; HOSPDEATH, AN: String; SEQ: Integer; DDEATH: Double;
  CDEATH_A, CDEATH_B, CDEATH_C, CDEATH_D, ODISEASE, CDEATH, PREGDEATH,
  PDEATH, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  Rp43OPD01Proxy.InsUpdDeath(REPORTID,HOSPCODE,PID,HOSPDEATH, AN, SEQ, DDEATH,
  CDEATH_A, CDEATH_B, CDEATH_C, CDEATH_D, ODISEASE, CDEATH, PREGDEATH,
  PDEATH, PROVIDER, D_UPDATE);
end;

function TDS43FileDM.InsUpdDental(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; DENTTYPE, SERVPLACE: String; PTEETH,
  PCARIES, PFILLING, PEXTRACT, DTEETH, DCARIES, DFILLING,
  DEXTRACT: Integer; NEED_FLUORIDE, NEED_SCALING: String; NEED_SEALANT,
  NEED_PFILLING, NEED_DFILLING, NEED_PEXTRACT, NEED_DEXTRACT: Integer): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdDental(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      DATE_SERV,
      DENTTYPE,
      SERVPLACE,
      PTEETH,
      PCARIES,
      PFILLING,
      PEXTRACT,
      DTEETH,
      DCARIES,
      DFILLING,
      DEXTRACT,
      NEED_FLUORIDE,
      NEED_SCALING,
      NEED_SEALANT,
      NEED_PFILLING,
      NEED_DFILLING,
      NEED_PEXTRACT,
      NEED_DEXTRACT{,
      NPROSTHESIS,
      PERMANENT_PERMANENT,
      PERMANENT_PROSTHESIS,
      PROSTHESIS_PROSTHESIS,
      GUM,
      SCHOOLTYPE,
      _CLASS,
      PROVIDER,
      D_UPDATE }
  );
end;

function TDS43FileDM.InsUpdDental2(NPROSTHESIS: String;
  PERMANENT_PERMANENT, PERMANENT_PROSTHESIS,
  PROSTHESIS_PROSTHESIS: Integer; GUM, SCHOOLTYPE, _CLASS,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdDental2(
      NPROSTHESIS,
      PERMANENT_PERMANENT,
      PERMANENT_PROSTHESIS,
      PROSTHESIS_PROSTHESIS,
      GUM,
      SCHOOLTYPE,
      _CLASS,
      PROVIDER,
      D_UPDATE
  );
end;

function TDS43FileDM.InsUpdDiagnosisIpd(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDDIAG, DIAGTYPE, DIAGCODE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdDiagnosisIpd(
      REPORTID,
      HOSPCODE,
      PID,
      AN,
      DATETIME_ADMIT,
      WARDDIAG,
      DIAGTYPE,
      DIAGCODE,
      PROVIDER,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdDiagnosisOpd(HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; DIAGTYPE, DIAGCODE, CLINIC,
  PROVIDER: String; D_UPDATE, EXPORT_DATE: double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdDiagnosisOpd(
  HOSPCODE,
  PID,
  SEQ,
  DATE_SERV,
  DIAGTYPE,
  DIAGCODE,
  CLINIC,
  PROVIDER,
  D_UPDATE,
  EXPORT_DATE
 );
end;

function TDS43FileDM.InsUpdDrugallergy(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; DATERECORD: Double; DRUGALLERGY, DNAME, TYPEDX, ALEVEL,
  SYMPTOM, INFORMANT, INFORMHOSP: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdDrugallergy(REPORTID,HOSPCODE,
  PID, DATERECORD, DRUGALLERGY, DNAME, TYPEDX, ALEVEL,
  SYMPTOM, INFORMANT, INFORMHOSP,D_UPDATE);
end;

function TDS43FileDM.InsUpdDrugIpd(REPORTID: Integer; ORDER_NO,
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDSTAY, TYPEDRUG, DIDSTD, DNAME: String; DATESTART, DATEFINISH: Double;
  AMOUNT: Integer; _UNIT, UNIT_PACKING: String; DRUGPRICE,
  DRUGCOST: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdDrugIpd(
      REPORTID,
      ORDER_NO,
      HOSPCODE,
      PID,
      AN,
      DATETIME_ADMIT,
      WARDSTAY,
      TYPEDRUG,
      DIDSTD,
      DNAME,
      DATESTART,
      DATEFINISH,
      AMOUNT,
      _UNIT,
      UNIT_PACKING,
      DRUGPRICE,
      DRUGCOST,
      PROVIDER,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdDrugOpd(REPORTID: Integer; ORDER_NO,
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; CLINIC, DIDSTD,
  DNAME: String; AMOUNT: Integer; _UNIT, UNIT_PACKING: String; DRUGPRICE,
  DRUGCOST: Integer; PROVIDER: String; D_UPDATE: double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdDrugOpd(
  REPORTID, ORDER_NO,
  HOSPCODE,PID,SEQ,DATE_SERV,CLINIC, DIDSTD,
  DNAME,AMOUNT,_UNIT, UNIT_PACKING,DRUGPRICE,
  DRUGCOST,PROVIDER,D_UPDATE
  );
end;

function TDS43FileDM.InsUpdEpi(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; VACCINETYPE, VACCINEPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdEpi(REPORTID,HOSPCODE,PID,
  SEQ,DATE_SERV,VACCINETYPE, VACCINEPLACE,
  PROVIDER,D_UPDATE);
end;

function TDS43FileDM.InsUpdFp(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; FPTYPE, FPPLACE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdFp(
  REPORTID,HOSPCODE,PID,
  SEQ,DATE_SERV,FPTYPE, FPPLACE, PROVIDER,
  D_UPDATE
  );
end;

function TDS43FileDM.InsUpdHomeA(REPORTID: Integer; HOSPCODE, HID,
  HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSE, SOISUB, SOIMAIN, ROAD,
  VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT, TELEPHONE: String; LATITUDE,
  LONGITUDE: Integer; NFAMILY: String): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdHomeA(
      REPORTID,
      HOSPCODE,
      HID,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSE,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE,
      LATITUDE,
      LONGITUDE,
      NFAMILY
  );
end;

function TDS43FileDM.InsUpdHomeB(LOCATYPE, VHVID, HEADID, TOILET, WATER,
  WATERTYPE, GARBAGE, HOUSING, DURABILITY, CLEANLINESS, VENTILATION, LIGHT,
  WATERTM, MFOOD, BCONTROL, ACONTROL, CHEMICAL: String; OUTDATE,
  D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdHomeB(
      LOCATYPE,
      VHVID,
      HEADID,
      TOILET,
      WATER,
      WATERTYPE,
      GARBAGE,
      HOUSING,
      DURABILITY,
      CLEANLINESS,
      VENTILATION,
      LIGHT,
      WATERTM,
      MFOOD,
      BCONTROL,
      ACONTROL,
      CHEMICAL,
      OUTDATE,
      D_UPDATE
  );
end;

function TDS43FileDM.InsUpdIcf(REPORTID: Integer; HOSPCODE,
  DISABID: String; PID, SEQ: Integer; DATE_SERV: Double; ICF, QUALIFIER,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdIcf(
  REPORTID,HOSPCODE,
  DISABID,PID, SEQ,DATE_SERV,ICF, QUALIFIER,
  PROVIDER,D_UPDATE
  );
end;

function TDS43FileDM.InsUpdLabFu(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; LABTEST: String; LABRESULT: Integer;
  D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdLabFu(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      DATE_SERV,
      LABTEST,
      LABRESULT,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdLabOr(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; GRAVIDA: String; LMP, EDC, BDATE: Double; BRESULT, BPLACE,
  BHOSP, BTYPE, BDOCTOR: String; LBORN, SBORN: Integer;
  D_UPDATE: double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdLabOr(
  REPORTID,HOSPCODE,
  PID,GRAVIDA,LMP, EDC, BDATE,BRESULT, BPLACE,
  BHOSP, BTYPE, BDOCTOR,LBORN, SBORN,
  D_UPDATE
  );
end;

function TDS43FileDM.InsUpdNcdscreen(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; SERVPLACE, SMOKE, ALCOHOL,
  DMFAMILY, HTFAMILY: String; WEIGHT, HEIGHT, WAIST_CM, SBP_1, DBP_1,
  SBP_2, DBP_2, BSLEVEL: Integer; BSTEST, SCREENPLACE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdNcdscreen(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      DATE_SERV,
      SERVPLACE,
      SMOKE,
      ALCOHOL,
      DMFAMILY,
      HTFAMILY,
      WEIGHT,
      HEIGHT,
      WAIST_CM,
      SBP_1,
      DBP_1,
      SBP_2,
      DBP_2,
      BSLEVEL,
      BSTEST,
      SCREENPLACE,
      PROVIDER,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdNewborn(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; MPID, GRAVIDA, GA: String; BDATE, BTIME: Double; BPLACE,
  BHOSP, BIRTHNO, BTYPE, BDOCTOR: String; BWEIGHT: Integer; ASPHYXIA, VITK,
  TSH: String; TSHRESULT: Integer; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdNewborn(
  REPORTID,
  HOSPCODE,
  PID,
  MPID,
  GRAVIDA,
  GA,
  BDATE,
  BTIME,
  BPLACE,
  BHOSP,
  BIRTHNO,
  BTYPE,
  BDOCTOR,
  BWEIGHT,
  ASPHYXIA,
  VITK,
  TSH,
  TSHRESULT,
  D_UPDATE
 );
end;

function TDS43FileDM.InsUpdNewbornCare(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; BDATE, BCARE: Double; BCPLACE, BCARERESULT, FOOD,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdNewbornCare(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      BDATE,
      BCARE,
      BCPLACE,
      BCARERESULT,
      FOOD,
      PROVIDER,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdNutrition(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; NUTRITIONPLACE: String; WEIGHT,
  HEIGHT, HEADCIRCUM: Integer; CHILDDEVELOP, FOOD, BOTTLE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdNutrition(REPORTID,HOSPCODE,
  PID, SEQ,DATE_SERV, NUTRITIONPLACE,WEIGHT,
  HEIGHT, HEADCIRCUM,CHILDDEVELOP, FOOD, BOTTLE,
  PROVIDER, D_UPDATE);
end;

function TDS43FileDM.InsUpdPerson(
  REPORTID: Integer;
  HOSPCODE,
  CID:string;
  PID:integer;
  HID,
  PRENAME,
  NAME,
  LNAME,
  HN,
  SEX: String;
  BIRTH: Double;
  MSTATUS,
  OCCUPATION_OLD,
  OCCUPATION_NEW,
  RACE,
  NATION,
  RELIGION,
  EDUCATION,
  FSTATUS,
  FATHER,
  MOTHER,
  COUPLE,
  VSTATUS: String;
  MOVEIN: Double;
  DISCHARGE: String;
  DDISCHARGE: Double;
  ABOGROUP,
  RHGROUP,
  LABOR,
  PASSPORT:string{,
  TYPEAREA: String{;
  D_UPDATE,
  EXPORT_DATE: double }
): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdPerson(
          REPORTID,
          HOSPCODE,
          CID,
          PID,
          HID,
          PRENAME,
          NAME,
          LNAME,
          HN,
          SEX,
          BIRTH,
          MSTATUS,
          OCCUPATION_OLD,
          OCCUPATION_NEW,
          RACE,
          NATION,
          RELIGION,
          EDUCATION,
          FSTATUS,
          FATHER,
          MOTHER,
          COUPLE,
          VSTATUS,
          MOVEIN,
          DISCHARGE,
          DDISCHARGE,
          ABOGROUP,
          RHGROUP,
          LABOR,
          PASSPORT{,
          TYPEAREA{,
          D_UPDATE,
          EXPORT_DATE }
          );
end;

function TDS43FileDM.InsUpdPostnatal(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; SEQ, GRAVIDA: String; BDATE, PPCARE: Double; PPPLACE,
  PPRESULT, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  result := Rp43OPD01Proxy.InsUpdPostnatal(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      GRAVIDA,
      BDATE,
      PPCARE,
      PPPLACE,
      PPRESULT,
      PROVIDER,
      D_UPDATE
  );
end;

function TDS43FileDM.InsUpdPrenatal(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; GRAVIDA: String; LMP, EDC: Double; VDRL_RESULT, HB_RESULT,
  HIV_RESULT: String; DATE_HCT: Double; HCT_RESULT: Integer;
  THALASSEMIA: String; D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdPrenatal(
  REPORTID,HOSPCODE,
  PID,GRAVIDA,LMP, EDC,VDRL_RESULT, HB_RESULT,
  HIV_RESULT,DATE_HCT,HCT_RESULT,
  THALASSEMIA,D_UPDATE

  );
end;

function TDS43FileDM.InsUpdProcedureIpd(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDSTAY, PROCEDCODE: String; TIMESTART, TIMEFINISH: Double;
  SERVICEPRICE: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdProcedureIpd(
      REPORTID,
      HOSPCODE,
      PID,
      AN,
      DATETIME_ADMIT,
      WARDSTAY,
      PROCEDCODE,
      TIMESTART,
      TIMEFINISH,
      SERVICEPRICE,
      PROVIDER,
      D_UPDATE
 );
end;

function TDS43FileDM.InsUpdProcedureOpd(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; CLINIC,
  PROCEDCODE: String; SERVICEPRICE: Integer; PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
Result:=Rp43OPD01Proxy.InsUpdProcedureOpd(REPORTID,
  HOSPCODE,PID, SEQ,DATE_SERV,CLINIC,
  PROCEDCODE,SERVICEPRICE,PROVIDER,D_UPDATE);
end;

function TDS43FileDM.InsUpdService(HOSPCODE: String; PID: Integer;
  HN: String; SEQ: Integer; DATE_SERV, TIME_SERV: Double; LOCATION, INTIME,
  INSTYPE, INSID, MAIN, TYPEIN, REFERINHOSP, CAUSEIN, CHIEFCOMP,
  SERVPLACE: String; BTEMP, SBP, DBP, PR, RR: Integer; TYPEOUT,
  REFEROUTHOSP, CAUSEOUT: String; COST, PRICE, PAYPRICE,
  ACTUALPAY: Integer; D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdService(
        HOSPCODE,
        PID,
        HN,
        SEQ,
        DATE_SERV,
        TIME_SERV,
        LOCATION,
        INTIME,
        INSTYPE,
        INSID,
        MAIN,
        TYPEIN,
        REFERINHOSP,
        CAUSEIN,
        CHIEFCOMP,
        SERVPLACE,
        BTEMP,
        SBP,
        DBP,
        PR,
        RR,
        TYPEOUT,
        REFEROUTHOSP,
        CAUSEOUT,
        COST,
        PRICE,
        PAYPRICE,
        ACTUALPAY,
        D_UPDATE
  );
end;

function TDS43FileDM.InsUpdSpecialPp(REPORTID: Integer; HOSPCODE, PID,
  SEQ: String; DATE_SERV: Double; SERVPLACE, PPSPECIAL, PPSPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
   result:=Rp43OPD01Proxy.InsUpdSpecialPp(REPORTID,HOSPCODE, PID,
  SEQ,DATE_SERV,SERVPLACE, PPSPECIAL, PPSPLACE,
  PROVIDER,D_UPDATE);
end;

function TDS43FileDM.InsUpdSurveillance(REPORTID:integer; HOSPCODE:string; PID,
  SEQ: integer; DATE_SERV: Double; AN: String; DATETIME_ADMIT: Double;
  SYNDROME, DIAGCODE, CODE506, DIAGCODELAST, CODE506LAST: String;
  ILLDATE: Double; ILLHOUSE, ILLVILLAGE, ILLTAMBON, ILLAMPUR,
  ILLCHANGWAT: String; LATITUDE, LONGITUDE: Integer; PTSTATUS: String;
  DATE_DEATH: Double; COMPLICATION, ORGANISM, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdSurveillance(
      REPORTID,
      HOSPCODE,
      PID,
      SEQ,
      DATE_SERV,
      AN,
      DATETIME_ADMIT,
      SYNDROME,
      DIAGCODE,
      CODE506,
      DIAGCODELAST,
      CODE506LAST,
      ILLDATE,
      ILLHOUSE,
      ILLVILLAGE,
      ILLTAMBON,
      ILLAMPUR,
      ILLCHANGWAT,
      LATITUDE,
      LONGITUDE,
      PTSTATUS,
      DATE_DEATH,
      COMPLICATION,
      ORGANISM,
      PROVIDER,
      D_UPDATE
  );
end;

function TDS43FileDM.InsUpdVillage_A(REPORTID: Integer; HOSPCODE, VID: String;
  NTRADITIONAL, NMONK, NRELIGIONLEADER, NBROADCAST, NRADIO, NPCHC, NCLINIC,
  NDRUGSTORE, NCHILDCENTER, NPSCHOOL, NSSCHOOL, NTEMPLE, NRELIGIOUSPLACE,
  NMARKET, NSHOP, NFOODSHOP, NSTALL: Integer): boolean;
begin
 Result:=Rp43OPD01Proxy.InsUpdVillage_A(REPORTID,HOSPCODE,VID,NTRADITIONAL,
          NMONK, NRELIGIONLEADER, NBROADCAST, NRADIO, NPCHC, NCLINIC,
          NDRUGSTORE, NCHILDCENTER, NPSCHOOL, NSSCHOOL, NTEMPLE, NRELIGIOUSPLACE,
          NMARKET, NSHOP, NFOODSHOP, NSTALL);
end;

function TDS43FileDM.InsUpdVillage_B(NRAINTANK, NCHICKENFARM, NPIGFARM: Integer;
  WASTEWATER, GARBAGE: String; NFACTORY, LATITUDE, LONGITUDE:Integer; OUTDATE:Double;
  NUMACTUALLY, RISKTYPE, NUMSTATELESS, NEXERCISECLUB, NOLDERLYCLUB,
  NDISABLECLUB, NNUMBERONECLUB: Integer; D_UPDATE: Double): boolean;
begin
   result:=Rp43OPD01Proxy.InsUpdVillage_B(NRAINTANK, NCHICKENFARM, NPIGFARM,
           WASTEWATER, GARBAGE,NFACTORY, LATITUDE, LONGITUDE, OUTDATE,
           NUMACTUALLY, RISKTYPE, NUMSTATELESS, NEXERCISECLUB, NOLDERLYCLUB,
           NDISABLECLUB, NNUMBERONECLUB,D_UPDATE);
end;

function TDS43FileDM.InsUpdWomen(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; FPTYPE, NOFPCAUSE: String; TOTALSON, NUMBERSON, ABORTION,
  STILLBIRTH: Integer; D_UPDATE: Double): boolean;
begin
  result:=Rp43OPD01Proxy.InsUpdWomen(REPORTID,HOSPCODE,
  PID,FPTYPE, NOFPCAUSE,TOTALSON, NUMBERSON, ABORTION,
  STILLBIRTH,D_UPDATE);
end;

function TDS43FileDM.loadAmpList2CmbItems(CmbITem: TStrings; prv,
  defaultCode: string; showCode: boolean): integer;
var i,defaultIndex: integer;
begin
  defaultIndex:=0;

  if CmbITem.Count<=0 then
  begin


  cdsGetAmp.close;
  getAmpList(prv);
  cdsGetAmp.Open;

  CmbITem.Clear;
  if cdsGetAmp.RecordCount>0 then
  begin
    cdsGetAmp.first;

    if defaultCode='9999'  then
      CmbITem.AddObject('---- select ----',TString.Create('0'));
    for i := 0 to cdsGetAmp.RecordCount-1 do
    begin
      if showCode then
        CmbITem.AddObject(trim(cdsGetAmp.fieldbyname('CODE').AsString)+'-'+trim(cdsGetAmp.fieldbyname('NAME1').AsString),TString.Create(trim(cdsGetAmp.fieldbyname('CODE').AsString)))
      else
        CmbITem.AddObject(trim(cdsGetAmp.fieldbyname('CODE').AsString),TString.Create(trim(cdsGetAmp.fieldbyname('NAME1').AsString)));

      if trim(cdsGetAmp.fieldbyname('CODE').AsString)=trim(defaultCode) then  defaultIndex:=i;

      if not cdsGetAmp.Eof then cdsGetAmp.next;
    end;
  end;
  end else
    begin
        for i := 0 to CmbITem.Count-1 do
        begin
          if trim(TString(CmbITem.Objects[i]).Str)=trim(defaultCode) then  defaultIndex:=i;
        end;

    end;
  result:=defaultIndex;
end;

function TDS43FileDM.loadBatchItems(CmbITem: TStrings; defaultCode: string;
  showCode: boolean): integer;
var i,defaultIndex: integer;
  defaultCodeIfNull:string;
begin
  defaultIndex:=0;



  //WriteLog('DEFAULT CODE:'+defaultCode);
  //WriteLog('DEFAULT:['+tbl+':'+abbr+']:'+defaultCodeIfNull);


  if CmbITem.Count<=0 then
  begin

    cdsGetBathList.close;
    getBatchList;
    cdsGetBathList.Open;

    CmbITem.Clear;
    if cdsGetBathList.RecordCount>0 then
    begin
      cdsGetBathList.first;

      if defaultCode='9999'  then
        CmbITem.AddObject('---- select ----',TString.Create('0'));

      for i := 0 to cdsGetBathList.RecordCount-1 do
      begin
        //if showCode then
        //  CmbITem.AddObject(trim(cdsKeywords.fieldbyname('BatchCode').AsString)+'-'+trim(cdsKeywords.fieldbyname('BatchCode').AsString)
        //  ,TString.Create(trim(cdsKeywords.fieldbyname('BatchCode').AsString)))
        //else
          CmbITem.AddObject(trim(cdsGetBathList.fieldbyname('BatchCode').AsString),TString.Create(trim(cdsGetBathList.fieldbyname('BatchCode').AsString)));


        if defaultIndex=0 then
          if trim(defaultCode)<>'' then
          begin
            if trim(cdsGetBathList.fieldbyname('BatchCode').AsString)=trim(defaultCode) then
            begin
              defaultIndex:=i;
              //WriteLog('detect default code #1:'+inttostr(i));
            end;
          end else // if trim(defaultCodeIfNull)<>'' then
          begin
            if trim(cdsGetBathList.fieldbyname('BatchCode').AsString)=trim(defaultCodeIfNull) then
            begin
              defaultIndex:=i;
              //WriteLog('detect default code #2:'+inttostr(i));
            end;
          end;

        if not cdsGetBathList.Eof then cdsGetBathList.next;
      end;
    end;
  end
   else
        for i := 0 to CmbITem.Count-1 do
        begin
          if defaultIndex=0 then
            if trim(defaultCode)<>'' then
            begin
              if i<CmbITem.Count then
                if CmbITem.Objects[i]<>nil then
                  if trim(TString(CmbITem.Objects[i]).Str)=trim(defaultCode) then
                  begin
                    defaultIndex:=i;
                  end;
            end else
            if trim(defaultCodeIfNull)<>'' then
            begin
              //if trim(cdsKeywords.fieldbyname(fCode).AsString)=trim(defaultCodeIfNull) then
              if i<=CmbITem.Count then
                if CmbITem.Objects[i]<>nil then
                  if trim(TString(CmbITem.Objects[i]).Str)=trim(defaultCodeIfNull) then
                  begin
                    defaultIndex:=i;
                    //WriteLog('detect default code ##2:'+inttostr(i));
                  end;
            end;

        end;

  result:=defaultIndex;
end;


function TDS43FileDM.loadCmbItems(CmbITem: TStrings;tbl,
  Abbr, fCode, fName, defaultCode: string;showCode:boolean): integer;
var i,defaultIndex: integer;
  defaultCodeIfNull:string;
begin
  defaultIndex:=0;

  defaultCodeIfNull:=getDefaultValueA(tbl,Abbr);

  //WriteLog('DEFAULT CODE:'+defaultCode);
  //WriteLog('DEFAULT:['+tbl+':'+abbr+']:'+defaultCodeIfNull);


  if CmbITem.Count<=0 then
  begin

    cdsKeywords.close;
    getKeywords(tbl,Abbr);
    cdsKeywords.Open;

    CmbITem.Clear;
    if cdsKeywords.RecordCount>0 then
    begin
      cdsKeywords.first;

      if defaultCode='9999'  then
        CmbITem.AddObject('---- select ----',TString.Create('0'));

      for i := 0 to cdsKeywords.RecordCount-1 do
      begin
        if showCode then
          CmbITem.AddObject(trim(cdsKeywords.fieldbyname(fCode).AsString)+'-'+trim(cdsKeywords.fieldbyname(fName).AsString)
          ,TString.Create(trim(cdsKeywords.fieldbyname(fCode).AsString)))
        else
          CmbITem.AddObject(trim(cdsKeywords.fieldbyname(fName).AsString),TString.Create(trim(cdsKeywords.fieldbyname(fCode).AsString)));


        if defaultIndex=0 then
          if trim(defaultCode)<>'' then
          begin
            if trim(cdsKeywords.fieldbyname(fCode).AsString)=trim(defaultCode) then
            begin
              defaultIndex:=i;
              //WriteLog('detect default code #1:'+inttostr(i));
            end;
          end else // if trim(defaultCodeIfNull)<>'' then
          begin
            if trim(cdsKeywords.fieldbyname(fCode).AsString)=trim(defaultCodeIfNull) then
            begin
              defaultIndex:=i;
              //WriteLog('detect default code #2:'+inttostr(i));
            end;
          end;

        if not cdsKeywords.Eof then cdsKeywords.next;
      end;
    end;
  end
   else
        for i := 0 to CmbITem.Count-1 do
        begin
          if defaultIndex=0 then
            if trim(defaultCode)<>'' then
            begin
              if i<CmbITem.Count then
                if CmbITem.Objects[i]<>nil then
                  if trim(TString(CmbITem.Objects[i]).Str)=trim(defaultCode) then
                  begin
                    defaultIndex:=i;
                  end;
            end else
            if trim(defaultCodeIfNull)<>'' then
            begin
              //if trim(cdsKeywords.fieldbyname(fCode).AsString)=trim(defaultCodeIfNull) then
              if i<=CmbITem.Count then
                if CmbITem.Objects[i]<>nil then
                  if trim(TString(CmbITem.Objects[i]).Str)=trim(defaultCodeIfNull) then
                  begin
                    defaultIndex:=i;
                    //WriteLog('detect default code ##2:'+inttostr(i));
                  end;
            end;

        end;

  result:=defaultIndex;
end;


function TDS43FileDM.loadHospNameList2CmbItems(CmbITem: TStrings;
  defaultCode: string; showCode: boolean): integer;
var i,defaultIndex: integer;
begin
  defaultIndex:=0;

  cdsGetHospName.close;
  getHospNameList('','','');
  cdsGetHospName.Open;

  CmbITem.Clear;
  if cdsGetHospName.RecordCount>0 then
  begin
    cdsGetHospName.first;

    if defaultCode='9999'  then
      CmbITem.AddObject('---- select ----',TString.Create('0'));
    for i := 0 to cdsGetHospName.RecordCount-1 do
    begin
      if showCode then
        CmbITem.AddObject(trim(cdsGetHospName.fieldbyname('CODE3').AsString)+'-'+trim(cdsGetHospName.fieldbyname('NAME1').AsString),TString.Create(trim(cdsGetHospName.fieldbyname('CODE3').AsString)))
      else
        CmbITem.AddObject(trim(cdsGetHospName.fieldbyname('CODE3').AsString),TString.Create(trim(cdsGetHospName.fieldbyname('NAME1').AsString)));

      if trim(cdsGetHospName.fieldbyname('CODE3').AsString)=trim(defaultCode) then  defaultIndex:=i;

      if not cdsGetHospName.Eof then cdsGetHospName.next;
    end;
  end;

  result:=defaultIndex;
end;

function TDS43FileDM.loadIcd10List2CmbItems(CmbITem: TStrings;
  strSearch,defaultCode: string; showCode: boolean): integer;
var i,defaultIndex: integer;
begin
  defaultIndex:=0;

  cdsGetIcd10List.close;
  getIcd10List(strSearch);
  cdsGetIcd10List.Open;

  CmbITem.Clear;
  if cdsGetIcd10List.RecordCount>0 then
  begin
    cdsGetIcd10List.first;

    if defaultCode='9999'  then
      CmbITem.AddObject('---- select ----',TString.Create('0'));
    for i := 0 to cdsGetIcd10List.RecordCount-1 do
    begin
      if showCode then
        CmbITem.AddObject(trim(cdsGetIcd10List.fieldbyname('CODE1').AsString)+'-'+trim(cdsGetIcd10List.fieldbyname('NAME1').AsString),TString.Create(trim(cdsGetIcd10List.fieldbyname('CODE1').AsString)))
      else
        CmbITem.AddObject(trim(cdsGetIcd10List.fieldbyname('CODE1').AsString),TString.Create(trim(cdsGetIcd10List.fieldbyname('NAME1').AsString)));

      if trim(cdsGetIcd10List.fieldbyname('CODE1').AsString)=trim(defaultCode) then  defaultIndex:=i else defaultIndex:=-1;

      if not cdsGetIcd10List.Eof then cdsGetIcd10List.next;
    end;
  end;

  result:=defaultIndex;
end;

function TDS43FileDM.loadIcd9List2CmbItems(CmbITem: TStrings;
  defaultCode: string; showCode: boolean): integer;
var i,defaultIndex: integer;
begin
  defaultIndex:=-1;

  cdsGetIcd9List.close;
  getIcd9List('');
  cdsGetIcd9List.Open;

  CmbITem.Clear;
  if cdsGetIcd9List.RecordCount>0 then
  begin
    cdsGetIcd9List.first;

    if defaultCode='9999'  then
      CmbITem.AddObject('---- select ----',TString.Create('0'));
    for i := 0 to cdsGetIcd9List.RecordCount-1 do
    begin
      if showCode then
        CmbITem.AddObject(trim(cdsGetIcd9List.fieldbyname('CODE1').AsString)+'-'+trim(cdsGetIcd9List.fieldbyname('NAME1').AsString),TString.Create(trim(cdsGetIcd9List.fieldbyname('CODE1').AsString)))
      else
        CmbITem.AddObject(trim(cdsGetIcd9List.fieldbyname('CODE1').AsString),TString.Create(trim(cdsGetIcd9List.fieldbyname('NAME1').AsString)));

      if trim(cdsGetIcd9List.fieldbyname('CODE1').AsString)=trim(defaultCode) then  defaultIndex:=i;

      if not cdsGetIcd9List.Eof then cdsGetIcd9List.next;
    end;
  end;

  result:=defaultIndex;
end;

function TDS43FileDM.loadProviceList2CmbItems(CmbITem: TStrings;
  control: integer; defaultCode: string; showCode: boolean): integer;
var i,defaultIndex: integer;
begin
  defaultIndex:=0;

  if CmbITem.Count<=0 then
  begin


    cdsGetProvince.close;
    getProvinceList(control);
    cdsGetProvince.Open;

    CmbITem.Clear;
    if cdsGetProvince.RecordCount>0 then
    begin
      cdsGetProvince.first;

      if defaultCode='9999'  then
        CmbITem.AddObject('---- select ----',TString.Create('0'));
      for i := 0 to cdsGetProvince.RecordCount-1 do
      begin
        if showCode then
          CmbITem.AddObject(trim(cdsGetProvince.fieldbyname('CODE').AsString)+'-'+trim(cdsGetProvince.fieldbyname('NAME1').AsString),TString.Create(trim(cdsGetProvince.fieldbyname('CODE').AsString)))
        else
          CmbITem.AddObject(trim(cdsGetProvince.fieldbyname('CODE').AsString),TString.Create(trim(cdsGetProvince.fieldbyname('NAME1').AsString)));

        if trim(cdsGetProvince.fieldbyname('CODE').AsString)=trim(defaultCode) then  defaultIndex:=i;

        if not cdsGetProvince.Eof then cdsGetProvince.next;
      end;
    end;

  end else
    begin
        for i := 0 to CmbITem.Count-1 do
        begin
          if trim(TString(CmbITem.Objects[i]).Str)=trim(defaultCode) then  defaultIndex:=i;
        end;

    end;

  result:=defaultIndex;
end;

function TDS43FileDM.loadTumbonList2CmbItems(CmbITem: TStrings; prv, amp,
  defaultCode: string; showCode: boolean): integer;
var i,defaultIndex: integer;
begin
  defaultIndex:=0;
  if CmbITem.Count<=0 then
  begin


    cdsGetTumbonList.close;
    getTumbonList(prv,amp);
    cdsGetTumbonList.Open;

    CmbITem.Clear;
    if cdsGetTumbonList.RecordCount>0 then
    begin
      cdsGetTumbonList.first;

      if defaultCode='9999'  then
        CmbITem.AddObject('---- select ----',TString.Create('0'));
      for i := 0 to cdsGetTumbonList.RecordCount-1 do
      begin
        if showCode then
          CmbITem.AddObject(trim(cdsGetTumbonList.fieldbyname('CODE').AsString)+'-'+trim(cdsGetTumbonList.fieldbyname('NAME1').AsString),TString.Create(trim(cdsGetTumbonList.fieldbyname('CODE').AsString)))
        else
          CmbITem.AddObject(trim(cdsGetTumbonList.fieldbyname('CODE').AsString),TString.Create(trim(cdsGetTumbonList.fieldbyname('NAME1').AsString)));

        if trim(cdsGetTumbonList.fieldbyname('CODE').AsString)=trim(defaultCode) then  defaultIndex:=i;

        if not cdsGetTumbonList.Eof then cdsGetTumbonList.next;
      end;
    end;
  end else
    begin
        for i := 0 to CmbITem.Count-1 do
        begin
          if trim(TString(CmbITem.Objects[i]).Str)=trim(defaultCode) then  defaultIndex:=i;
        end;

    end;
  result:=defaultIndex;
end;

function TDS43FileDM.samObj(Obj: TPerson4): boolean;
begin
   result:=Rp43OPD01Proxy.samObj(Obj);
end;

function TDS43FileDM.setAddressType1(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSENO,
  SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT,
  TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.setAddressType1(
      REPORTID,
      HOSPCODE,
      PID,
      ADDRESSTYPE,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSENO,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE,
      MOBILE,
      D_UPDATE
 );
end;

function TDS43FileDM.setAddressType2(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSENO,
  SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT,
  TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
begin
 Result:=Rp43OPD01Proxy.setAddressType2(
      REPORTID,
      HOSPCODE,
      PID,
      ADDRESSTYPE,
      HOUSE_ID,
      HOUSETYPE,
      ROOMNO,
      CONDO,
      HOUSENO,
      SOISUB,
      SOIMAIN,
      ROAD,
      VILLANAME,
      VILLAGE,
      TAMBON,
      AMPUR,
      CHANGWAT,
      TELEPHONE,
      MOBILE,
      D_UPDATE
 );
end;

function TDS43FileDM.setHospName(hospcode, hospname: string): boolean;
begin
  Result:=Rp43OPD01Proxy.setHospName(hospcode, hospname);
end;

function TDS43FileDM.syncAddressType1(PID: integer): boolean;
begin
  Rp43OPD01Proxy.syncAddressType1(PID);
end;

function TDS43FileDM.syncAddressType2(PID: integer): boolean;
begin
  Rp43OPD01Proxy.syncAddressType2(PID);
end;

function TDS43FileDM.syncAdmissionList(PID: integer): boolean;
begin
 result := Rp43OPD01Proxy.syncAdmissionList(PID);
end;

function TDS43FileDM.syncAppointmentList(PID: integer): boolean;
begin
  Result := Rp43OPD01Proxy.syncAppointmentList(PID);
end;

function TDS43FileDM.syncCardList(PID: integer): boolean;
begin
  Result := Rp43OPD01Proxy.syncCardList(PID);
end;

function TDS43FileDM.syncDeathList(PID: integer): boolean;
begin
 Result:=  Rp43OPD01Proxy.syncDeathList(PID);
end;

function TDS43FileDM.syncDiagnosisOpdList(PID: integer): boolean;
begin
 Result:=  Rp43OPD01Proxy.syncDiagnosisOpdList(PID);
end;

function TDS43FileDM.syncIfxRecord(pid: integer; tableName, aloha_name,
  arrDFields, updateKeys: string): boolean;
begin
  Result := Rp43OPD01Proxy.syncIfxRecord(pid,tablename,aloha_name,arrDFields,updateKeys);
end;

function TDS43FileDM.syncLabOrList(PID:integer): boolean;
begin
 Rp43OPD01Proxy.syncLabOrList(PID);
end;

procedure TDS43FileDM.syncPerson(CID: string);
begin
  Rp43OPD01Proxy.syncPerson(CID);
end;

function TDS43FileDM.syncProcedureOpdList(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.syncProcedureOpdList(PID);
end;

function TDS43FileDM.syncServiceList(PID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.syncServiceList(PID);
end;

function TDS43FileDM.WriteClientLog(Msg: string): boolean;
begin
  Result := Rp43OPD01Proxy.WriteClientLog(Msg);
end;

{
function TDS43FileDM.InsUpdPerson(REPORTID: Integer; HOSPCODE, CID, PID,
  HID, PRENAME, NAME, LNAME, HN, SEX: String; BIRTH: Double; MSTATUS,
  OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION, EDUCATION,
  FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: String; MOVEIN: Double;
  DISCHARGE: String; DDISCHARGE: Double; ABOGROUP, RHGROUP, LABOR,
  PASSPORT, TYPEAREA: String; D_UPDATE, EXPORT_DATE: double): boolean;
begin
  Result:=Rp43OPD01Proxy.InsUpdPerson(
        REPORTID,HOSPCODE,CID,PID,HID,PRENAME,NAME
      ,LNAME,HN,SEX,BIRTH,MSTATUS,OCCUPATION_OLD,OCCUPATION_NEW,RACE,NATION,RELIGION,EDUCATION
      ,FSTATUS,FATHER,MOTHER,COUPLE,VSTATUS,MOVEIN,DISCHARGE,DDISCHARGE,ABOGROUP,RHGROUP,LABOR
      ,PASSPORT,TYPEAREA,D_UPDATE,EXPORT_DATE
  );
end;
}

procedure TDS43FileDM.cdsGetReport43AccidentListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Accident.close;
  getAccident(cdsGetReport43AccidentListREPORTID.AsInteger);
  cdsGetReport43Accident.open;
end;

procedure TDS43FileDM.cdsGetReport43AddressListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  {
  cdsGetReport43Address.close;
  getAddress(cdsGetReport43AddressListREPORTID.AsInteger);
  cdsGetReport43Address.open;
  }
end;

procedure TDS43FileDM.cdsGetReport43AddressType1NewRecord(DataSet: TDataSet);
begin
  inherited;
    cdsGetReport43AddressType1.FieldByName('PID').AsInteger:=cdsGetReport43PersonPID.AsInteger;
    cdsGetReport43AddressType1.FieldByName('HOSPCODE').AsString :='13754';

end;

procedure TDS43FileDM.cdsGetReport43AddressType2NewRecord(DataSet: TDataSet);
begin
  inherited;
   cdsGetReport43AddressType2.FieldByName('PID').AsInteger:=cdsGetReport43PersonPID.AsInteger;
   cdsGetReport43AddressType2.FieldByName('HOSPCODE').AsString :='13754';

end;

procedure TDS43FileDM.cdsGetReport43AncListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Anc.close;
  getAnc(cdsGetReport43AncListREPORTID.AsInteger);
  cdsGetReport43Anc.open;
end;

procedure TDS43FileDM.cdsGetReport43AncListBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43AncList.FieldByName('D_UPDATE').AsFloat:=now;
  cdsGetReport43AncListPID.AsInteger:=cdsGetReport43PersonPID.AsInteger;
  cdsGetReport43AncListGRAVIDA.AsString :=cdsGetReport43PrenatalListGRAVIDA.AsString;
  cdsGetReport43AncListHOSPCODE.AsString :='13754';
end;

procedure TDS43FileDM.cdsGetReport43AppointmentListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Appointment.close;
  getAppointment(cdsGetReport43AppointmentList.FieldByName('PID').AsInteger);
  cdsGetReport43Appointment.open;

end;

procedure TDS43FileDM.cdsGetReport43CardListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  {cdsGetReport43Card.close;
  getCard(cdsGetReport43CardListREPORTID.AsInteger);
  cdsGetReport43Card.open; }

end;

procedure TDS43FileDM.cdsGetReport43CardListNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43CardListD_UPDATE.AsDateTime:=Now;
  cdsGetReport43CardListHOSPCODE.AsString :='13754';
 // cdsGetReport43CardListPID.AsInteger:=cdsGetReport43PersonPID.AsInteger;
end;

procedure TDS43FileDM.cdsGetReport43ChargeIpdListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43ChargeIpd.close;
  getChargeIpd(cdsGetReport43ChargeIpdListREPORTID.AsInteger);
  cdsGetReport43ChargeIpd.open;
end;

procedure TDS43FileDM.cdsGetReport43ChargeOrdListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43ChargeOrd.close;
  getChargeOpd(cdsGetReport43ChargeOrdList.FieldByName('PID').AsInteger);
  cdsGetReport43ChargeOrd.open;
end;

procedure TDS43FileDM.cdsGetReport43ChronicFuListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43ChronicFu.close;
  getChronicFu(cdsGetReport43ChronicFuListREPORTID.AsInteger);
  cdsGetReport43ChronicFu.open;
end;

procedure TDS43FileDM.cdsGetReport43ChronicListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Chronic.close;
  getChronic(cdsGetReport43ChronicListREPORTID.AsInteger);
  cdsGetReport43Chronic.open;
end;

procedure TDS43FileDM.cdsGetReport43DeathListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  {
  cdsGetReport43Death.close;
  getDeath(cdsGetReport43DeathListREPORTID.AsInteger);
  cdsGetReport43Death.open;
  }

end;

procedure TDS43FileDM.cdsGetReport43DentalListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Dental.close;
  getDental(cdsGetReport43DentalListREPORTID.AsInteger);
  cdsGetReport43Dental.open;
end;

procedure TDS43FileDM.cdsGetReport43DiagnosisIpdListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43DiagnosisIpd.close;
  getDiagnosisIpd(cdsGetReport43DiagnosisIpdListREPORTID.AsInteger);
  cdsGetReport43DiagnosisIpd.open;
end;

procedure TDS43FileDM.cdsGetReport43DiagnosisOpdListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43DiagnosisOpd.Close;
  getDiagnosisOpd(cdsGetReport43DiagnosisOpdList.FieldByName('PID').AsInteger,cdsGetReport43DiagnosisOpdList.FieldByName('SEQ').AsInteger);
  cdsGetReport43DiagnosisOpd.Open;
end;

procedure TDS43FileDM.cdsGetReport43DrugallergyListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Drugallergy.close;
  getDugallergy(cdsGetReport43DrugallergyListREPORTID.AsInteger);
  cdsGetReport43Drugallergy.open;
end;

procedure TDS43FileDM.cdsGetReport43DrugIpdListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43DrugIpd.close;
  getDrugIpd(cdsGetReport43DrugIpdListREPORTID.AsInteger);
  cdsGetReport43DrugIpd.open;
end;

procedure TDS43FileDM.cdsGetReport43DrugListOpdAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43DrugOpd.close;
  getDrugOpd(cdsGetReport43DrugListOpd.FieldByName('PID').AsInteger);
  cdsGetReport43DrugOpd.open;

end;

procedure TDS43FileDM.cdsGetReport43EpiListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Epi.close;
  getEpi(cdsGetReport43EpiListREPORTID.AsInteger);
  cdsGetReport43Epi.Open;
end;

procedure TDS43FileDM.cdsGetReport43FpListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Fp.close;
  getFp(cdsGetReport43FpListREPORTID.AsInteger);
  cdsGetReport43Fp.Open;
end;

procedure TDS43FileDM.cdsGetReport43IcfListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Icf.close;
  getIcf(cdsGetReport43IcfListREPORTID.AsInteger);
  cdsGetReport43Icf.Open;

end;

procedure TDS43FileDM.cdsGetReport43LabFuListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43LabFu.close;
  getLabFu(cdsGetReport43LabFuListREPORTID.AsInteger);
  cdsGetReport43LabFu.Open;
end;

procedure TDS43FileDM.cdsGetReport43LabOrListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43LabOr.close;
  getLabOr(cdsGetReport43LabOrListREPORTID.AsInteger);
  cdsGetReport43LabOr.Open;
end;

procedure TDS43FileDM.cdsGetReport43LabOrListBeforePost(DataSet: TDataSet);
begin
  inherited;
   cdsGetReport43LabOrList.FieldByName('D_UPDATE').AsFloat:= NOW;
   cdsGetReport43LabOrListPID.AsInteger:=cdsGetReport43PersonPID.AsInteger;
   cdsGetReport43LabOrListGRAVIDA.AsString :=cdsGetReport43PrenatalListGRAVIDA.AsString;
   cdsGetReport43LabOrListLMP.AsString :=cdsGetReport43PrenatalListLMP.AsString;
   cdsGetReport43LabOrListEDC.AsString :=cdsGetReport43PrenatalListEDC.AsString;
   cdsGetReport43LabOrListHOSPCODE.AsString :='13754';
end;

procedure TDS43FileDM.cdsGetReport43NcdscreenListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Ncdscreen.close;
  getNcdscreen(cdsGetReport43NcdscreenListREPORTID.AsInteger);
  cdsGetReport43Ncdscreen.Open;
end;

procedure TDS43FileDM.cdsGetReport43NewbornCareListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43NewbornCare.close;
  getNewbornCare(cdsGetReport43NewbornCareListREPORTID.AsInteger);
  cdsGetReport43NewbornCare.Open;
end;

procedure TDS43FileDM.cdsGetReport43NewbornListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Newborn.close;
  getNewborn(cdsGetReport43NewbornListREPORTID.AsInteger);
  cdsGetReport43Newborn.Open;
end;

procedure TDS43FileDM.cdsGetReport43NewbornListBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43NewbornListD_UPDATE.AsFloat:=now;
  cdsGetReport43NewbornListHOSPCODE.AsString :='13754';

end;

procedure TDS43FileDM.cdsGetReport43NutritionListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Nutrition.close;
  getNutrition(cdsGetReport43NutritionListREPORTID.AsInteger);
  cdsGetReport43Nutrition.Open;
end;

procedure TDS43FileDM.cdsGetReport43PersonAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43CardList.close;
  getCardList(cdsGetReport43PersonPID.AsInteger);
  cdsGetReport43CardList.Open;
end;

procedure TDS43FileDM.cdsGetReport43PersonNewRecord(DataSet: TDataSet);
begin
  inherited;
 // cdsGetReport43PersonD_UPDATE.AsDateTime:=Now;
end;

procedure TDS43FileDM.cdsGetReport43PostnatalListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Postnatal.close;
  getPostnatal(cdsGetReport43PostnatalListREPORTID.AsInteger);
  cdsGetReport43Postnatal.Open;

end;

procedure TDS43FileDM.cdsGetReport43PrenatalListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Prenatal.close;
  getPrenatal(cdsGetReport43PrenatalListREPORTID.AsInteger);
  cdsGetReport43Prenatal.Open;
  cdsGetReport43AncList.close;
  getAncList(cdsGetReport43PrenatalListPID.AsInteger,cdsGetReport43PrenatalListGRAVIDA.AsString);
  cdsGetReport43AncList.Open;
  cdsGetReport43LabOrList.close;
  getLabOrList(cdsGetReport43PrenatalListPID.AsInteger,cdsGetReport43PrenatalListGRAVIDA.AsString);
  cdsGetReport43LabOrList.Open;
  cdsGetReport43NewbornList.close;
  getNewbornList(cdsGetReport43PrenatalListPID.AsString,cdsGetReport43PrenatalListGRAVIDA.AsString);
  cdsGetReport43NewbornList.Open;

end;

procedure TDS43FileDM.cdsGetReport43PrenatalListBeforePost(DataSet: TDataSet);
begin
  inherited;
   cdsGetReport43PrenatalList.FieldByName('D_UPDATE').AsFloat:= NOW;
   cdsGetReport43PrenatalListPID.AsInteger:=cdsGetReport43PersonPID.AsInteger;
   cdsGetReport43PrenatalListHOSPCODE.AsString :='13754';
end;

procedure TDS43FileDM.cdsGetReport43ProcedureOpdListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43ProcedureOpd.close;
  getProcedureOpd(cdsGetReport43ProcedureOpdList.FieldByName('PID').AsInteger);
  cdsGetReport43ProcedureOpd.Open;
end;

procedure TDS43FileDM.cdsGetReport43ProcedureIpdListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43ProcedureIpd.close;
  getProcedureIpd(cdsGetReport43ProcedureIpdListREPORTID.AsInteger);
  cdsGetReport43ProcedureIpd.open;
end;

procedure TDS43FileDM.cdsGetReport43ServiceListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Service.close;
  getService(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43Service.open;

  cdsGetReport43DiagnosisOpdList.close;
  getDiagnosisOpdList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43DiagnosisOpdList.open;

  cdsGetReport43ProcedureOpdList.close;
  getProcedureOpdList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43ProcedureOpdList.open;

  cdsGetReport43DrugListOpd.close;
  getDrugOpdList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43DrugListOpd.open;

  cdsGetReport43ChargeOrdList.close;
  getChargeOpdList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43ChargeOrdList.open;

  cdsGetReport43AppointmentList.close;
  getAppointmentList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43AppointmentList.open;

  cdsGetReport43SpecialPpList.close;
  getSpecialPpList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43SpecialPpList.open;

  cdsGetReport43EpiList.close;
  getEpiList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43EpiList.open;

  cdsGetReport43DentalList.close;
  getDentalList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43DentalList.open;

  cdsGetReport43Community_ServiceList.close;
  getCommunity_ServiceList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43Community_ServiceList.open;

  cdsGetReport43AdmissionList.close;
  getAdmissionList(cdsGetReport43ServiceList.FieldByName('PID').AsInteger,cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
  cdsGetReport43AdmissionList.open;





end;

procedure TDS43FileDM.cdsGetReport43ServiceListBeforePost(DataSet: TDataSet);
begin
  inherited;
   cdsGetReport43ServiceList.FieldByName('D_UPDATE').AsFloat:= NOW;
   cdsGetReport43ServiceList.FieldByName('PID').AsInteger:=cdsGetReport43PersonPID.AsInteger;
   cdsGetReport43ServiceList.FieldByName('HN').AsInteger:=cdsGetReport43PersonHN.AsInteger;
   cdsGetReport43ServiceList.FieldByName('HOSPCODE').AsString :='13754';
end;

procedure TDS43FileDM.cdsGetReport43SpecialPpListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43SpecialPp.close;
  getSpecialPp(cdsGetReport43SpecialPpListREPORTID.AsInteger);
  cdsGetReport43SpecialPp.open;
end;

procedure TDS43FileDM.cdsGetReport43SurveillanceListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Surveillance.close;
  getSurveillance(cdsGetReport43SurveillanceListREPORTID.AsInteger);
  cdsGetReport43Surveillance.open;
end;

procedure TDS43FileDM.cdsGetReport43WomenListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cdsGetReport43Women.close;
  getWomen(cdsGetReport43WomenListREPORTID.AsInteger);
  cdsGetReport43Women.open;
end;

procedure TDS43FileDM.CdsStAm1GetDDTAM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDS43FileDM.CdsStAm1GetIDTAM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDS43FileDM.CdsStCdeGetDtlAC1CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
 
begin
    if Length(Sender.AsString) = 6 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,3)  
    else if Length(Sender.AsString) = 7 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,4)   
    else 
      Text := Sender.AsString;
  
end;

procedure TDS43FileDM.CdsStCdeGetDtlAC2CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
    if Length(Sender.AsString) = 6 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,3)  
    else if Length(Sender.AsString) = 7 then
      Text := Copy(Sender.AsString,1,1) + '-' +
              Copy(Sender.AsString,2,1) + '-' +
              Copy(Sender.AsString,3,2) + '-' +
              Copy(Sender.AsString,4,4)   
    else
      Text := Sender.AsString;

end;

procedure TDS43FileDM.CdsStCdeGetDtlDT1CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDS43FileDM.CdsStCdeGetDtlVA1CDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsFloat > 0 then
    Text := FormatFloat('#,##0.00',Sender.AsFloat)
  else 
    Text := '';

end;

procedure TDS43FileDM.CdsStFg1GetDtlAM1FG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStFg1GetDtlFAMFG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStFg1GetDtlFU1FG1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStFg1GetListSUMAMTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStIm2GetCT1IM2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStRegGetAMTREGGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStRm1GetPATRM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStRm1GetPDTRM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);
end;

procedure TDS43FileDM.CdsStShpGetAMTSHPGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDS43FileDM.CdsStYm1GetDDTYM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDS43FileDM.CdsStYm1GetIDTYM1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

function TDS43FileDM.checkPersonArea1(PID: integer): boolean;
begin
 result := Rp43OPD01Proxy.checkPersonArea1(PID);
end;

function TDS43FileDM.checkPersonArea2(PID: integer): boolean;
begin
result := Rp43OPD01Proxy.checkPersonArea2(PID);
end;

function TDS43FileDM.checkPersonArea3(PID: integer): boolean;
begin
result := Rp43OPD01Proxy.checkPersonArea3(PID);
end;

function TDS43FileDM.checkPersonArea4(PID: integer): boolean;
begin
 result := Rp43OPD01Proxy.checkPersonArea4(PID);
end;

function TDS43FileDM.checkPersonArea5(PID: integer): boolean;
begin
  result := Rp43OPD01Proxy.checkPersonArea5(PID);
end;

function TDS43FileDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDS43FileClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;


function TDS43FileDM.DownloadFile(sFilePath: string): TStream;
begin
 result := Rp43OPD01Proxy.DownloadFile(sFilePath);
end;

function TDS43FileDM.ExportAllFile(batchcode,zipfName,fileName:string;dd,month,year,_dd,_month,_year:integer): boolean;
begin
result := Rp43OPD01Proxy.ExportAllFile(batchcode,zipfName,fileName,dd,month,year,_dd,_month,_year);
end;

function TDS43FileDM.getAccident(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getAccident(REPORTID);
end;

function TDS43FileDM.getAccidentList(PID,SEQ: integer): boolean;
begin
  result := Rp43OPD01Proxy.getAccidentList(PID,SEQ);
end;

function TDS43FileDM.getAddress(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getAddress(REPORTID);
end;

function TDS43FileDM.getAddressList(PID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getAddressList(PID);
end;

function TDS43FileDM.getAddressType1(PID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getAddressType1(PID);
end;

function TDS43FileDM.getAddressType2(PID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getAddressType2(PID);
end;

function TDS43FileDM.getAdmission(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getAdmission(REPORTID);
end;

function TDS43FileDM.getAdmissionList(PID,SEQ: integer): boolean;
begin
  result := Rp43OPD01Proxy.getAdmissionList(PID,SEQ);
end;

function TDS43FileDM.getAmpList(prv: string): boolean;
begin
   Result:=Rp43OPD01Proxy.getAmpList(prv);
end;

function TDS43FileDM.getAnc(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getAnc(REPORTID);
end;

function TDS43FileDM.getAncList(PID: integer;GRAVIDA:string): boolean;
begin
  result := Rp43OPD01Proxy.getAncList(PID,GRAVIDA);
end;

function TDS43FileDM.getAppointment(REPORTID: integer): boolean;
begin
  Result := Rp43OPD01Proxy.getAppointment(REPORTID);
end;

function TDS43FileDM.getAppointmentList(PID,SEQ: integer): boolean;
begin
  Result := Rp43OPD01Proxy.getAppointmentList(PID,SEQ);
end;

function TDS43FileDM.getBatchDetail(batchcode: string): boolean;
begin
   Result := Rp43OPD01Proxy.getBatchDetail(batchcode);
end;

function TDS43FileDM.getBatchError(batchcode: string): boolean;
begin
  Result := Rp43OPD01Proxy.getBatchError(batchcode);
end;

function TDS43FileDM.getBatchErrorByFileName(batchcode,
  filename: string): boolean;
begin
  Result := Rp43OPD01Proxy.getBatchErrorByFileName(batchcode,filename);
end;

function TDS43FileDM.getBatchErrorByGrpFileName(
  batchcode: string): boolean;
begin
  Result := Rp43OPD01Proxy.getBatchErrorByGrpFileName(batchcode);
end;

function TDS43FileDM.getBatchList: boolean;
begin
  Result := Rp43OPD01Proxy.getBatchList;
end;

function TDS43FileDM.getCard(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getCard(REPORTID);
end;

function TDS43FileDM.getCardList(PID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getCardList(PID);
end;

function TDS43FileDM.getChargeIpd(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getChargeIpd(REPORTID);
end;

function TDS43FileDM.getChargeIpdList(PID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getChargeIpdList(PID);
end;

function TDS43FileDM.getChargeOpd(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getChargeOpd(REPORTID);
end;

function TDS43FileDM.getChargeOpdList(PID,SEQ: integer): boolean;
begin
  result := Rp43OPD01Proxy.getChargeOpdList(PID,SEQ);
end;

function TDS43FileDM.getChronic(REPORTID: integer): boolean;
begin
 result := Rp43OPD01Proxy.getChronic(REPORTID);
end;

function TDS43FileDM.getChronicFu(REPORTID: integer): boolean;
begin
 result := Rp43OPD01Proxy.getChronicFu(REPORTID);
end;

function TDS43FileDM.getChronicFuList(PID,SEQ: integer): boolean;
begin
 result := Rp43OPD01Proxy.getChronicFuList(PID,SEQ);
end;

function TDS43FileDM.getChronicList(PID: integer): boolean;
begin
 result := Rp43OPD01Proxy.getChronicList(PID);
end;

function TDS43FileDM.getCommunity_Activity(VID: string): boolean;
begin
   Result:=Rp43OPD01Proxy.getCommunity_Activity(VID);
end;

function TDS43FileDM.getCommunity_ServiceList(PID, SEQ: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getCommunity_ServiceList(PID,SEQ);
end;

function TDS43FileDM.getDeath(REPORTID: integer): boolean;
begin
 result := Rp43OPD01Proxy.getDeath(REPORTID);
end;

function TDS43FileDM.getDeathList(PID: integer): boolean;
begin
  Rp43OPD01Proxy.getDeathList(PID);
end;


function TDS43FileDM.getDefaultValue(tableName,
  fieldName: string): boolean;
begin
  Result := Rp43OPD01Proxy.getDefaultValue(tableName,fieldName);
end;

function TDS43FileDM.getDefaultValueA(tableName,
  fieldName: string): string;
var rep :string;
begin
  rep :='';
  cdsGetDefaultValue.close;
  getDefaultValue(tableName,fieldName);
  cdsGetDefaultValue.open;
   {
  WriteLog('DefaultValue count:'+inttostr(cdsGetDefaultValue.RecordCount));
  WriteLog('DefaultValue f1:'+cdsGetDefaultValue.Fields[0].FieldName);
  WriteLog('DefaultValue f2:'+cdsGetDefaultValue.Fields[1].FieldName);
  WriteLog('DefaultValue f3:'+cdsGetDefaultValue.Fields[2].FieldName);
  }

  if cdsGetDefaultValue.RecordCount>0 then
  begin
    rep := trim(cdsGetDefaultValue.FieldByName('DefaultValue').AsString);
  end;

  Result := rep;
end;

function TDS43FileDM.getDental(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getDental(REPORTID);
end;

function TDS43FileDM.getDentalList(PID,SEQ: integer): boolean;
begin
  result := Rp43OPD01Proxy.getDentalList(PID,SEQ);
end;

function TDS43FileDM.getDiagnosisIpd(REPORTID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getDiagnosisIpd(REPORTID);
end;

function TDS43FileDM.getDiagnosisIpdList(PID: integer): boolean;
begin
  result := Rp43OPD01Proxy.getDiagnosisIpdList(PID);
end;

function TDS43FileDM.getDiagnosisOpd(PID, SEQ: integer): boolean;
begin
 Result := Rp43OPD01Proxy.getDiagnosisOpd(PID,SEQ);
end;

function TDS43FileDM.getDiagnosisOpdList(PID, SEQ: integer): boolean;
begin
  result := Rp43OPD01Proxy.getDiagnosisOpdList(PID,SEQ);
end;

function TDS43FileDM.GetDoc(DOCT: String): string;
var
  Doc,Prefix,Delimiter,RunFormate,HideDate,Y,M,D,LY,LM,LD,SM,SD,NM,ND : string;
  LastRun,DiffNum,FF, i: Integer;
  LastDate,StartDate: TDateTime;
begin
  cdsDocrun.Close;
  cdsDocrun.CommandText := 'SELECT * FROM run_doc WHERE DOC_TYPE='''+ DOCT +'''';
  cdsDocrun.open;
  Prefix    := cdsDocrun.FieldByName('PREFIX').AsString;
  Delimiter := cdsDocrun.FieldByName('DELIMITER').AsString;
  RunFormate:= cdsDocrun.FieldByName('RUN_FORMAT').AsString;
  LastRun   := cdsDocrun.FieldByName('LAST_RUN').AsInteger;
  LastDate  := cdsDocrun.FieldByName('LAST_DATE').AsDateTime;
  DiffNum   := cdsDocrun.FieldByName('DIFF_NUM').AsInteger;
  StartDate := cdsDocrun.FieldByName('START_DATE').AsDateTime;
  HideDate  :=  cdsDocrun.FieldByName('HIDE_DATE').AsString;
  Y := '';
  M := '';
  D := '';
  LY := '';
  LM := '';
  LD := '';
  FF := 0;
  Doc := UpperCase(RunFormate);
  SM := FormatDateTime('M',StartDate);
  SD := FormatDateTime('D',StartDate);
  NM := FormatDateTime('M',Now);
  ND := FormatDateTime('D',Now);


      if ((not cdsDocrun.FieldByName('START_DATE').isnull) and (SM>NM)) or ((SM=NM) and (SD>ND)) then
         begin
          DiffNum := DiffNum+0;
         end
      else if not cdsDocrun.FieldByName('START_DATE').isnull then
         begin
          DiffNum := DiffNum+1;
         end;

			if Pos('YYYY',UpperCase(RunFormate))>0 then
        begin
          Y := IntToStr(yearof(Now)+DiffNum);
          LY := IntToStr(yearof(LastDate)+DiffNum);
          Doc := StringReplace(Doc,'YYYY',Y,[rfReplaceAll]);
        end
			else if (Pos('YY',UpperCase(RunFormate))>0)then
        begin
          Y := Copy(IntToStr(yearof(Now)+DiffNum),3,2);
          LY:= Copy(IntToStr(yearof(LastDate)+DiffNum),3,2);
          Doc := StringReplace(Doc,'YY',Y,[rfReplaceAll]);
        end;
			if (Pos('MM',UpperCase(RunFormate))>0) then
        begin
          M := FormatDateTime('MM',Now);
				  LM:= FormatDateTime('MM',LastDate);
				  Doc := StringReplace(Doc,'MM',M,[rfReplaceAll]);
        end;
			if (Pos('DD',UpperCase(RunFormate))>0) then
        begin
          D := FormatDateTime('DD',Now);
				  LD:= FormatDateTime('DD',LastDate);
				  Doc := StringReplace(Doc,'DD',D,[rfReplaceAll]);
        end;

      FF := 0;

			for i :=pos('0',RunFormate)-1 to Length(RunFormate)-1 do
			//for i :=0 to Length(RunFormate)-1 do
      begin
         if (RunFormate[i]='0') then FF := FF+1;
      end;
      if (not cdsDocrun.FieldByName('START_DATE').IsNull) then
          begin
             if (Y+M+D = LY+LM+LD)then
                LastRun := LastRun+1
             else
                LastRun := 1;
          end
			else
      if ((SM=NM) and (SD=ND) and ((LM<>SM) or (LD<>SD)))then
        LastRun := 1
      else LastRun :=LastRun+1;
			if (UpperCase(HideDate)='Y') then
				Doc := Prefix+Delimiter+Format('%.'+inttostr(ff+1)+'d',[LastRun])
			else Doc := Prefix+Delimiter+copy(Doc,1,(length(Doc)-FF))+Format('%.'+inttostr(ff)+'d',[LastRun]);
      cdsDocrun.Close;
      cdsDocrun.CommandText := 'UPDATE run_doc SET LAST_RUN='+ IntToStr(LastRun) +',LAST_DATE=NOW() WHERE doc_type='''+ DOCT +'''';
      cdsDocrun.Execute;
      Result :=Doc;
end;

function TDS43FileDM.getDrugIpd(REPORTID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getDrugIpd(REPORTID);
end;

function TDS43FileDM.getDrugIpdList(PID: integer): boolean;
begin
 Result:=Rp43OPD01Proxy.getDrugIpdList(PID);
end;

function TDS43FileDM.getDrugOpd(REPORTID: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getDrugOpd(REPORTID);
end;

function TDS43FileDM.getDrugOpdList(PID,SEQ: integer): boolean;
begin
  Result:=Rp43OPD01Proxy.getDrugOpdList(PID,SEQ);
end;


constructor TString.Create(const AStr: String);
begin
    inherited Create;
   FStr := AStr;
end;

end.
