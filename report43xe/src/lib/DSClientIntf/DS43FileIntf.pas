unit DS43FileIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type

  TPerson4=class(TObject)
  private
    FLNAME: string;
    FFNAME: string;
    procedure SetFNAME(const Value: string);
    procedure SetLNAME(const Value: string);
    public
     property FNAME:string read FFNAME write SetFNAME;
     property LNAME:string read FLNAME write SetLNAME;
  end;

    TDS43FileClient = class(TDSMainClient)
  private
    FRp43OPD01PersonSetCommand: TDBXCommand;
    FRp43OPD01PersonGetCommand: TDBXCommand;
    FRp43OPD01PersonSyncCommand: TDBXCommand;
    FRp43OPD01GetServerVersionCommand: TDBXCommand;

    FRp43OPD01GetBatchListCommand: TDBXCommand;
    FRp43OPD01GetBatchDetailCommand: TDBXCommand;
    FRp43OPD01GetBatchErrorCommand: TDBXCommand;
    FRp43OPD01GetBatchErrorByFilenameCommand: TDBXCommand;
    FRp43OPD01GetBatchErrorGrpByFilenameCommand: TDBXCommand;


    FRp43OPD01SamObjCommand: TDBXCommand;

    FRp43OPD01PersonChkArea1Command: TDBXCommand;
    FRp43OPD01PersonChkArea2Command: TDBXCommand;
    FRp43OPD01PersonChkArea3Command: TDBXCommand;
    FRp43OPD01PersonChkArea4Command: TDBXCommand;
    FRp43OPD01PersonChkArea5Command: TDBXCommand;

    FRp43OPD01CommunityServiceListGetCommand: TDBXCommand;
    FRp43OPD01CommunityServiceListGet1Command: TDBXCommand;



    FRp43OPD01CommunityActivityListGetCommand: TDBXCommand;
    FRp43OPD01CommunityActivityListGet1Command: TDBXCommand;

    FRp43OPD01ServiceListGetCommand: TDBXCommand;
    FRp43OPD01ServiceListSyncCommand: TDBXCommand;
    FRp43OPD01ServiceGetCommand: TDBXCommand;
    FRp43OPD01ServiceSetCommand: TDBXCommand;

    FRp43OPD01DiagnosisListGetCommand: TDBXCommand;
    FRp43OPD01DiagnosisListSyncCommand: TDBXCommand;
    FRp43OPD01DiagnosisGetCommand: TDBXCommand;
    FRp43OPD01DiagnosisSetCommand: TDBXCommand;

    FRp43OPD01ProcedureOpdListGetCommand: TDBXCommand;
    FRp43OPD01ProcedureOpdListSyncCommand: TDBXCommand;
    FRp43OPD01ProcedureOpdGetCommand: TDBXCommand;
    FRp43OPD01ProcedureOpdSetCommand: TDBXCommand;

    FRp43OPD01DrugOpdListGetCommand: TDBXCommand;
    FRp43OPD01DrugOpdGetCommand: TDBXCommand;
    FRp43OPD01DrugOpdSetCommand: TDBXCommand;

    FRp43OPD01AppointmentListGetCommand: TDBXCommand;
    FRp43OPD01AppointmentListSyncCommand: TDBXCommand;
    FRp43OPD01AppointmentGetCommand: TDBXCommand;
    FRp43OPD01AppointmentSetCommand: TDBXCommand;

    FRp43OPD01AncListGetCommand: TDBXCommand;
    FRp43OPD01AncGetCommand: TDBXCommand;
    FRp43OPD01AncSetCommand: TDBXCommand;

    FRp43OPD01PrenatalListGetCommand: TDBXCommand;
    FRp43OPD01PrenatalGetCommand: TDBXCommand;
    FRp43OPD01PrenatalSetCommand: TDBXCommand;

    FRp43OPD01PostnatalListGetCommand: TDBXCommand;
    FRp43OPD01PostnatalGetCommand: TDBXCommand;
    FRp43OPD01PostnatalSetCommand: TDBXCommand;

    FRp43OPD01LabOrListGetCommand: TDBXCommand;
    FRp43OPD01LabOrListSyncCommand :TDBXCommand;

    FRp43OPD01LabOrGetCommand: TDBXCommand;
    FRp43OPD01LabOrSetCommand: TDBXCommand;

    FRp43OPD01Community_serviceListGetCommand: TDBXCommand;
    FRp43OPD01Community_serviceGetCommand: TDBXCommand;
    FRp43OPD01Community_serviceSetCommand: TDBXCommand;


    FRp43OPD01VilageSetCommand: TDBXCommand;
    FRp43OPD01VilageGetCommand: TDBXCommand;
    FRp43OPD01VilageGetBCommand: TDBXCommand;

    FRp43OPD01WomenListGetCommand: TDBXCommand;
    FRp43OPD01WomenGetCommand: TDBXCommand;
    FRp43OPD01WomenSetCommand: TDBXCommand;

    FRp43OPD01FpListGetCommand: TDBXCommand;
    FRp43OPD01FpGetCommand: TDBXCommand;
    FRp43OPD01FpSetCommand: TDBXCommand;

    FRp43OPD01EpiListGetCommand: TDBXCommand;
    FRp43OPD01EpiGetCommand: TDBXCommand;
    FRp43OPD01EpiSetCommand: TDBXCommand;

    FRp43OPD01IcfListGetCommand: TDBXCommand;
    FRp43OPD01IcfGetCommand: TDBXCommand;
    FRp43OPD01IcfSetCommand: TDBXCommand;

    FRp43OPD01SpecialPpListGetCommand: TDBXCommand;
    FRp43OPD01SpecialPpGetCommand: TDBXCommand;
    FRp43OPD01SpecialPpSetCommand: TDBXCommand;

    FRp43OPD01ChronicListGetCommand: TDBXCommand;
    FRp43OPD01ChronicGetCommand: TDBXCommand;
    FRp43OPD01ChronicSetCommand: TDBXCommand;

    FRp43OPD01ChronicFuListGetCommand: TDBXCommand;
    FRp43OPD01ChronicFuGetCommand: TDBXCommand;
    FRp43OPD01ChronicFuSetCommand: TDBXCommand;

    FRp43OPD01NutritionListGetCommand: TDBXCommand;
    FRp43OPD01NutritionGetCommand: TDBXCommand;
    FRp43OPD01NutritionSetCommand: TDBXCommand;

    FRp43OPD01DeathListGetCommand: TDBXCommand;
    FRp43OPD01DeathListSyncCommand: TDBXCommand;
    FRp43OPD01DeathGetCommand: TDBXCommand;
    FRp43OPD01DeathSetCommand: TDBXCommand;

    FRp43OPD01CardListGetCommand: TDBXCommand;
    FRp43OPD01CardListSyncCommand: TDBXCommand;

    FRp43OPD01CardGetCommand: TDBXCommand;
    FRp43OPD01CardSetCommand: TDBXCommand;

    FRp43OPD01DrugallergyListGetCommand: TDBXCommand;
    FRp43OPD01DrugallergyGetCommand: TDBXCommand;
    FRp43OPD01DrugallergySetCommand: TDBXCommand;

    FRp43OPD01AccidentListGetCommand: TDBXCommand;
    FRp43OPD01AccidentGetCommand: TDBXCommand;
    FRp43OPD01AccidentSetCommand: TDBXCommand;

    FRp43OPD01ChargeOpdListGetCommand: TDBXCommand;
    FRp43OPD01ChargeOpdGetCommand: TDBXCommand;
    FRp43OPD01ChargeOpdSetCommand: TDBXCommand;

    FRp43OPD01AdmissionListGetCommand: TDBXCommand;
    FRp43OPD01AdmissionListSyncCommand: TDBXCommand;
    FRp43OPD01AdmissionGetCommand: TDBXCommand;
    FRp43OPD01AdmissionSetCommand: TDBXCommand;

    FRp43OPD01DiagnosisIpdListGetCommand: TDBXCommand;
    FRp43OPD01DiagnosisIpdGetCommand: TDBXCommand;
    FRp43OPD01DiagnosisIpdSetCommand: TDBXCommand;

    FRp43OPD01ProcedureIpdListGetCommand: TDBXCommand;
    FRp43OPD01ProcedureIpdGetCommand: TDBXCommand;
    FRp43OPD01ProcedureIpdSetCommand: TDBXCommand;

    FRp43OPD01DrugIpdListGetCommand: TDBXCommand;
    FRp43OPD01DrugIpdGetCommand: TDBXCommand;
    FRp43OPD01DrugIpdSetCommand: TDBXCommand;

    FRp43OPD01ChargeIpdListGetCommand: TDBXCommand;
    FRp43OPD01ChargeIpdGetCommand: TDBXCommand;
    FRp43OPD01ChargeIpdSetCommand: TDBXCommand;

    FRp43OPD01SurveillanceListGetCommand: TDBXCommand;
    FRp43OPD01SurveillanceGetCommand: TDBXCommand;
    FRp43OPD01SurveillanceSetCommand: TDBXCommand;

    FRp43OPD01NewbornListGetCommand: TDBXCommand;
    FRp43OPD01NewbornGetCommand: TDBXCommand;
    FRp43OPD01NewbornSetCommand: TDBXCommand;

    FRp43OPD01NewbornCareListGetCommand: TDBXCommand;
    FRp43OPD01NewbornCareGetCommand: TDBXCommand;
    FRp43OPD01NewbornCareSetCommand: TDBXCommand;

    FRp43OPD01DentalListGetCommand: TDBXCommand;
    FRp43OPD01DentalGetCommand: TDBXCommand;
    FRp43OPD01DentalSetCommand: TDBXCommand;
    FRp43OPD01Dental2SetCommand: TDBXCommand;

    FRp43OPD01NcdscreenListGetCommand: TDBXCommand;
    FRp43OPD01NcdscreenGetCommand: TDBXCommand;
    FRp43OPD01NcdscreenSetCommand: TDBXCommand;

    FRp43OPD01LabFuListGetCommand: TDBXCommand;
    FRp43OPD01LabFuGetCommand: TDBXCommand;
    FRp43OPD01LabFuSetCommand: TDBXCommand;

    FRp43OPD01AddressListGetCommand: TDBXCommand;
    FRp43OPD01AddressGetCommand: TDBXCommand;
    FRp43OPD01AddressType1GetCommand: TDBXCommand;
    FRp43OPD01AddressType2GetCommand: TDBXCommand;

    FRp43OPD01AddressType1SetCommand: TDBXCommand;
    FRp43OPD01AddressType2SetCommand: TDBXCommand;
    FRp43OPD01AddressType1SyncCommand: TDBXCommand;
    FRp43OPD01AddressType2SyncCommand: TDBXCommand;
    FRp43OPD01AddressSetCommand: TDBXCommand;

    FRp43OPD01HomeListGetCommand: TDBXCommand;
    FRp43OPD01HomeGetCommand: TDBXCommand;
    FRp43OPD01HomeASetCommand: TDBXCommand;
    FRp43OPD01HomeBSetCommand: TDBXCommand;

    FRp43OPD01KeywordsGetCommand: TDBXCommand;
    FRp43OPD01HopNameListGetCommand: TDBXCommand;
    FRp43OPD01HospNameGetCommand: TDBXCommand;
    FRp43OPD01HospNameSetCommand: TDBXCommand;
    FRp43OPD01Icd10GetCommand: TDBXCommand;
    FRp43OPD01Icd10ListGetCommand: TDBXCommand;
    FRp43OPD01Icd9GetCommand: TDBXCommand;
    FRp43OPD01Icd9ListGetCommand: TDBXCommand;
    FRp43OPD01DefaultValueGetCommand: TDBXCommand;
    FRp43OPD01NewPIDGetCommand: TDBXCommand;

    FRp43OPD01TumbonGetCommand: TDBXCommand;
    FRp43OPD01TumbonListGetCommand: TDBXCommand;
    FRp43OPD01AmpListGetCommand: TDBXCommand;
    FRp43OPD01ProvinceListGetCommand: TDBXCommand;

    FRp43OPD01ClientLogSetCommand: TDBXCommand;

    FRp43OPD01ClientHNGetCommand: TDBXCommand;
    FRp43OPD01syncIfxRecordCommand: TDBXCommand;
    FRp43OPD01PageListGetCommand: TDBXCommand;
    FRp43OPD01ExportCommand: TDBXCommand;

    FRp43OPD01DownloadFileCommand: TDBXCommand;





  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

    function samObj(Obj:TPerson4):boolean;


    function getHN(PID:integer):string;

    function DownloadFile(sFilePath: string): TStream;


    function getHospName(hospcode,hospname:string):boolean;
    function setHospName(hospcode,hospname:string):boolean;

    function getBatchList():boolean;
    function getBatchDetail(batchcode:string):boolean;
    function getBatchError(batchcode:string):boolean;
    function getBatchErrorByFileName(batchcode,filename:string):boolean;
    function getBatchErrorByGrpFileName(batchcode:string):boolean;




    function getPerson(CID:string):boolean;
    procedure syncPerson(CID:string);
    function getServerVersion:string;
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
    function getPrenatalList(PID:integer):boolean;
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
    function getLabOrList(PID:integer;GRAVIDA:string):boolean;
    function syncLabOrList(PID: integer): boolean;

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
      D_UPDATE:Double  }

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
    function WriteClientLog(Msg: string):boolean;
    function getNewPID:integer;
    function getPageList(dep,station,loc:string):boolean;
    function ExportAllFile(batchcode,zipfName,fileName:string;dd,month,year,_dd,_month,_year:integer):boolean;




    function getAddress(REPORTID:integer):boolean;
    function getAddressType1(PID:integer):boolean;
    function getAddressType2(PID:integer):boolean;
    function syncAddressType1(PID:integer):boolean;
    function syncAddressType2(PID:integer):boolean;


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








  end;

implementation

constructor TDS43FileClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSHIS43File';
end;

function TDS43FileClient.checkPersonArea1(PID: integer): boolean;
begin
  if FRp43OPD01PersonChkArea1Command = nil then
  begin
    FRp43OPD01PersonChkArea1Command := FDBXConnection.CreateCommand;
    FRp43OPD01PersonChkArea1Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonChkArea1Command.Text := ServerClassName + '.checkPersonArea1';
    FRp43OPD01PersonChkArea1Command.Prepare;
  end;

  FRp43OPD01PersonChkArea1Command.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01PersonChkArea1Command.ExecuteUpdate;
  Result := FRp43OPD01PersonChkArea1Command.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.checkPersonArea2(PID: integer): boolean;
begin
  if FRp43OPD01PersonChkArea2Command = nil then
  begin
    FRp43OPD01PersonChkArea2Command := FDBXConnection.CreateCommand;
    FRp43OPD01PersonChkArea2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonChkArea2Command.Text := ServerClassName + '.checkPersonArea2';
    FRp43OPD01PersonChkArea2Command.Prepare;
  end;

  FRp43OPD01PersonChkArea2Command.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01PersonChkArea2Command.ExecuteUpdate;
  Result := FRp43OPD01PersonChkArea2Command.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.checkPersonArea3(PID: integer): boolean;
begin
  if FRp43OPD01PersonChkArea3Command = nil then
  begin
    FRp43OPD01PersonChkArea3Command := FDBXConnection.CreateCommand;
    FRp43OPD01PersonChkArea3Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonChkArea3Command.Text := ServerClassName + '.checkPersonArea3';
    FRp43OPD01PersonChkArea3Command.Prepare;
  end;

  FRp43OPD01PersonChkArea3Command.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01PersonChkArea3Command.ExecuteUpdate;
  Result := FRp43OPD01PersonChkArea3Command.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.checkPersonArea4(PID: integer): boolean;
begin
  if FRp43OPD01PersonChkArea4Command = nil then
  begin
    FRp43OPD01PersonChkArea4Command := FDBXConnection.CreateCommand;
    FRp43OPD01PersonChkArea4Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonChkArea4Command.Text := ServerClassName + '.checkPersonArea4';
    FRp43OPD01PersonChkArea4Command.Prepare;
  end;

  FRp43OPD01PersonChkArea4Command.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01PersonChkArea4Command.ExecuteUpdate;
  Result := FRp43OPD01PersonChkArea4Command.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.checkPersonArea5(PID: integer): boolean;
begin
  if FRp43OPD01PersonChkArea5Command = nil then
  begin
    FRp43OPD01PersonChkArea5Command := FDBXConnection.CreateCommand;
    FRp43OPD01PersonChkArea5Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonChkArea5Command.Text := ServerClassName + '.checkPersonArea5';
    FRp43OPD01PersonChkArea5Command.Prepare;
  end;

  FRp43OPD01PersonChkArea5Command.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01PersonChkArea5Command.ExecuteUpdate;
  Result := FRp43OPD01PersonChkArea5Command.Parameters[1].Value.GetBoolean;
end;

constructor TDS43FileClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSHIS43File';
end;

destructor TDS43FileClient.Destroy;
begin
    FreeAndNil(FRp43OPD01DownloadFileCommand);
    FreeAndNil(FRp43OPD01PersonGetCommand);
    FreeAndNil(FRp43OPD01PersonSetCommand);
    FreeAndNil(FRp43OPD01PersonSyncCommand);
    FreeAndNil(FRp43OPD01GetServerVersionCommand);

    FreeAndNil(FRp43OPD01HospNameGetCommand);
    FreeAndNil(FRp43OPD01HospNameSetCommand);
    FreeAndNil(FRp43OPD01GetBatchListCommand);
    FreeAndNil(FRp43OPD01GetBatchDetailCommand);

    FreeAndNil(FRp43OPD01GetBatchErrorCommand);
    FreeAndNil(FRp43OPD01GetBatchErrorByFilenameCommand);
    FreeAndNil(FRp43OPD01GetBatchErrorGrpByFilenameCommand);


    FreeAndNil(FRp43OPD01SamObjCommand);
    FreeAndNil(FRp43OPD01ServiceGetCommand);
    FreeAndNil(FRp43OPD01ServiceSetCommand);
    FreeAndNil(FRp43OPD01ServiceListGetCommand);
    FreeAndNil(FRp43OPD01ServiceListSyncCommand);

    FreeAndNil(FRp43OPD01DiagnosisListGetCommand);
    FreeAndNil(FRp43OPD01DiagnosisListSyncCommand);
    FreeAndNil(FRp43OPD01DiagnosisGetCommand);
    FreeAndNil(FRp43OPD01DiagnosisSetCommand);

    FreeAndNil(FRp43OPD01ProcedureOpdListGetCommand);
    FreeAndNil(FRp43OPD01ProcedureOpdListSyncCommand);
    FreeAndNil(FRp43OPD01ProcedureOpdGetCommand);
    FreeAndNil(FRp43OPD01ProcedureOpdSetCommand);

    FreeAndNil(FRp43OPD01DrugOpdListGetCommand);
    FreeAndNil(FRp43OPD01DrugOpdGetCommand);
    FreeAndNil(FRp43OPD01DrugOpdSetCommand);

    FreeAndNil(FRp43OPD01AppointmentListGetCommand);
    FreeAndNil(FRp43OPD01AppointmentListSyncCommand);

    FreeAndNil(FRp43OPD01AppointmentGetCommand);
    FreeAndNil(FRp43OPD01AppointmentSetCommand);

    FreeAndNil(FRp43OPD01AncListGetCommand);
    FreeAndNil(FRp43OPD01AncGetCommand);
    FreeAndNil(FRp43OPD01AncSetCommand);

    FreeAndNil(FRp43OPD01PrenatalListGetCommand);
    FreeAndNil(FRp43OPD01PrenatalGetCommand);
    FreeAndNil(FRp43OPD01PrenatalSetCommand);

    FreeAndNil(FRp43OPD01PostnatalListGetCommand);
    FreeAndNil(FRp43OPD01PostnatalGetCommand);
    FreeAndNil(FRp43OPD01PostnatalSetCommand);

    FreeAndNil(FRp43OPD01LabOrListGetCommand);
    FreeAndNil(FRp43OPD01LabOrListSyncCommand);
    FreeAndNil(FRp43OPD01LabOrGetCommand);
    FreeAndNil(FRp43OPD01LabOrSetCommand);

    FreeAndNil(FRp43OPD01WomenListGetCommand);
    FreeAndNil(FRp43OPD01WomenGetCommand);
    FreeAndNil(FRp43OPD01WomenSetCommand);

    FreeAndNil(FRp43OPD01FpListGetCommand);
    FreeAndNil(FRp43OPD01FpGetCommand);
    FreeAndNil(FRp43OPD01FpSetCommand);

    FreeAndNil(FRp43OPD01EpiListGetCommand);
    FreeAndNil(FRp43OPD01EpiGetCommand);
    FreeAndNil(FRp43OPD01EpiSetCommand);

    FreeAndNil(FRp43OPD01IcfListGetCommand);
    FreeAndNil(FRp43OPD01IcfGetCommand);
    FreeAndNil(FRp43OPD01IcfSetCommand);

    FreeAndNil(FRp43OPD01SpecialPpListGetCommand);
    FreeAndNil(FRp43OPD01SpecialPpGetCommand);
    FreeAndNil(FRp43OPD01SpecialPpSetCommand);

    FreeAndNil(FRp43OPD01ChronicListGetCommand);
    FreeAndNil(FRp43OPD01ChronicGetCommand);
    FreeAndNil(FRp43OPD01ChronicSetCommand);

    FreeAndNil(FRp43OPD01ChronicFuListGetCommand);
    FreeAndNil(FRp43OPD01ChronicFuGetCommand);
    FreeAndNil(FRp43OPD01ChronicFuSetCommand);

    FreeAndNil(FRp43OPD01NutritionListGetCommand);
    FreeAndNil(FRp43OPD01NutritionGetCommand);
    FreeAndNil(FRp43OPD01NutritionSetCommand);

    FreeAndNil(FRp43OPD01DeathListGetCommand);
    FreeAndNil(FRp43OPD01DeathListSyncCommand);
    FreeAndNil(FRp43OPD01DeathGetCommand);
    FreeAndNil(FRp43OPD01DeathSetCommand);

    FreeAndNil(FRp43OPD01CardListGetCommand);
    FreeAndNil(FRp43OPD01CardListSyncCommand);
    FreeAndNil(FRp43OPD01CardGetCommand);
    FreeAndNil(FRp43OPD01CardSetCommand);

    FreeAndNil(FRp43OPD01DrugallergyListGetCommand);
    FreeAndNil(FRp43OPD01DrugallergyGetCommand);
    FreeAndNil(FRp43OPD01DrugallergySetCommand);

    FreeAndNil(FRp43OPD01AccidentListGetCommand);
    FreeAndNil(FRp43OPD01AccidentGetCommand);
    FreeAndNil(FRp43OPD01AccidentSetCommand);

    FreeAndNil(FRp43OPD01ChargeOpdListGetCommand);
    FreeAndNil(FRp43OPD01ChargeOpdGetCommand);
    FreeAndNil(FRp43OPD01ChargeOpdSetCommand);

    FreeAndNil(FRp43OPD01AdmissionListGetCommand);
    FreeAndNil(FRp43OPD01AdmissionListSyncCommand);
    FreeAndNil(FRp43OPD01AdmissionGetCommand);
    FreeAndNil(FRp43OPD01AdmissionSetCommand);

    FreeAndNil(FRp43OPD01DiagnosisIpdListGetCommand);
    FreeAndNil(FRp43OPD01DiagnosisIpdGetCommand);
    FreeAndNil(FRp43OPD01DiagnosisIpdSetCommand);

    FreeAndNil(FRp43OPD01ProcedureIpdListGetCommand);
    FreeAndNil(FRp43OPD01ProcedureIpdGetCommand);
    FreeAndNil(FRp43OPD01ProcedureIpdSetCommand);

    FreeAndNil(FRp43OPD01DrugIpdListGetCommand);
    FreeAndNil(FRp43OPD01DrugIpdGetCommand);
    FreeAndNil(FRp43OPD01DrugIpdSetCommand);

    FreeAndNil(FRp43OPD01ChargeIpdListGetCommand);
    FreeAndNil(FRp43OPD01ChargeIpdGetCommand);
    FreeAndNil(FRp43OPD01ChargeIpdSetCommand);

    FreeAndNil(FRp43OPD01SurveillanceListGetCommand);
    FreeAndNil(FRp43OPD01SurveillanceGetCommand);
    FreeAndNil(FRp43OPD01SurveillanceSetCommand);

    FreeAndNil(FRp43OPD01NewbornListGetCommand);
    FreeAndNil(FRp43OPD01NewbornGetCommand);
    FreeAndNil(FRp43OPD01NewbornSetCommand);

    FreeAndNil(FRp43OPD01NewbornCareListGetCommand);
    FreeAndNil(FRp43OPD01NewbornCareGetCommand);
    FreeAndNil(FRp43OPD01NewbornCareSetCommand);

    FreeAndNil(FRp43OPD01NcdscreenListGetCommand);
    FreeAndNil(FRp43OPD01NcdscreenGetCommand);
    FreeAndNil(FRp43OPD01NcdscreenSetCommand);


    FreeAndNil(FRp43OPD01DentalListGetCommand);
    FreeAndNil(FRp43OPD01DentalGetCommand);
    FreeAndNil(FRp43OPD01DentalSetCommand);
    FreeAndNil(FRp43OPD01Dental2SetCommand);

    FreeAndNil(FRp43OPD01LabFuListGetCommand);
    FreeAndNil(FRp43OPD01LabFuGetCommand);
    FreeAndNil(FRp43OPD01LabFuSetCommand);

    FreeAndNil(FRp43OPD01AddressListGetCommand);
    FreeAndNil(FRp43OPD01AddressGetCommand);
    FreeAndNil(FRp43OPD01AddressSetCommand);
    FreeAndNil(FRp43OPD01AddressType1GetCommand);
    FreeAndNil(FRp43OPD01AddressType2GetCommand);
    FreeAndNil(FRp43OPD01AddressType1SetCommand);
    FreeAndNil(FRp43OPD01AddressType2SetCommand);

    FreeAndNil(FRp43OPD01AddressType1SyncCommand);
    FreeAndNil(FRp43OPD01AddressType2SyncCommand);

    FreeAndNil(FRp43OPD01KeywordsGetCommand);
    FreeAndNil(FRp43OPD01HopNameListGetCommand);

    FreeAndNil(FRp43OPD01PersonChkArea1Command);
    FreeAndNil(FRp43OPD01PersonChkArea2Command);
    FreeAndNil(FRp43OPD01PersonChkArea3Command);
    FreeAndNil(FRp43OPD01PersonChkArea4Command);
    FreeAndNil(FRp43OPD01PersonChkArea5Command);


    FreeAndNil(FRp43OPD01Icd10GetCommand);
    FreeAndNil(FRp43OPD01Icd10ListGetCommand);

    FreeAndNil(FRp43OPD01TumbonGetCommand);
    FreeAndNil(FRp43OPD01TumbonListGetCommand);
    FreeAndNil(FRp43OPD01AmpListGetCommand);
    FreeAndNil(FRp43OPD01ProvinceListGetCommand);
    FreeAndNil(FRp43OPD01DefaultValueGetCommand);
    FreeAndNil(FRp43OPD01NewPIDGetCommand);


    FreeAndNil(FRp43OPD01HomeListGetCommand);
    FreeAndNil(FRp43OPD01HomeGetCommand);
    FreeAndNil(FRp43OPD01HomeASetCommand);
    FreeAndNil(FRp43OPD01HomeBSetCommand);

    FreeAndNil(FRp43OPD01ClientLogSetCommand);
    FreeAndNil(FRp43OPD01ClientHNGetCommand);
    FreeAndNil(FRp43OPD01syncIfxRecordCommand);
    FreeAndNil(FRp43OPD01PageListGetCommand);
    FreeAndNil(FRp43OPD01ExportCommand);

    FreeAndNil(FRp43OPD01CommunityServiceListGetCommand);
    FreeAndNil(FRp43OPD01CommunityServiceListGet1Command);
    FreeAndNil(FRp43OPD01CommunityActivityListGetCommand);

    FreeAndNil(FRp43OPD01VilageSetCommand);
    FreeAndNil(FRp43OPD01VilageGetCommand);
    FreeAndNil(FRp43OPD01VilageGetBCommand);

    inherited;

end;


function TDS43FileClient.DownloadFile(sFilePath: string): TStream;
begin
  if FRp43OPD01DownloadFileCommand = nil then
  begin
    FRp43OPD01DownloadFileCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DownloadFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DownloadFileCommand.Text := ServerClassName + '.DownloadFile';
    FRp43OPD01DownloadFileCommand.Prepare;
  end;

  FRp43OPD01DownloadFileCommand.Parameters[0].Value.SetWideString(sFilePath);
  FRp43OPD01DownloadFileCommand.ExecuteUpdate;
  Result := FRp43OPD01DownloadFileCommand.Parameters[1].Value.GetStream;
end;

function TDS43FileClient.ExportAllFile(batchcode,zipfName,fileName:string;dd,month,year,_dd,_month,_year:integer): boolean;
begin
  if FRp43OPD01ExportCommand = nil then
  begin
    FRp43OPD01ExportCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ExportCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ExportCommand.Text := ServerClassName + '.ExportAllFile';
    FRp43OPD01ExportCommand.Prepare;
  end;

  FRp43OPD01ExportCommand.Parameters[0].Value.SetWideString(batchcode);
  FRp43OPD01ExportCommand.Parameters[1].Value.SetWideString(zipfName);
  FRp43OPD01ExportCommand.Parameters[2].Value.SetWideString(fileName);
  FRp43OPD01ExportCommand.Parameters[3].Value.SetInt32(dd);
  FRp43OPD01ExportCommand.Parameters[4].Value.SetInt32(month);
  FRp43OPD01ExportCommand.Parameters[5].Value.SetInt32(year);
  FRp43OPD01ExportCommand.Parameters[6].Value.SetInt32(_dd);
  FRp43OPD01ExportCommand.Parameters[7].Value.SetInt32(_month);
  FRp43OPD01ExportCommand.Parameters[8].Value.SetInt32(_year);
  FRp43OPD01ExportCommand.ExecuteUpdate;
  Result := FRp43OPD01ExportCommand.Parameters[9].Value.GetBoolean;
end;

function TDS43FileClient.getAccident(REPORTID: integer): boolean;
begin
  if FRp43OPD01AccidentGetCommand = nil then
  begin
    FRp43OPD01AccidentGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AccidentGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AccidentGetCommand.Text := ServerClassName + '.getAccident';
    FRp43OPD01AccidentGetCommand.Prepare;
  end;

  FRp43OPD01AccidentGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AccidentGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AccidentGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getAccidentList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01AccidentListGetCommand = nil then
  begin
    FRp43OPD01AccidentListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AccidentListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AccidentListGetCommand.Text := ServerClassName + '.getAccidentList';
    FRp43OPD01AccidentListGetCommand.Prepare;
  end;

  FRp43OPD01AccidentListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AccidentListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01AccidentListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AccidentListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getAddress(REPORTID: integer): boolean;
begin
  if FRp43OPD01AddressGetCommand = nil then
  begin
    FRp43OPD01AddressGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressGetCommand.Text := ServerClassName + '.getAddress';
    FRp43OPD01AddressGetCommand.Prepare;
  end;

  FRp43OPD01AddressGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AddressGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AddressGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getAddressList(PID: integer): boolean;
begin
  if FRp43OPD01AddressListGetCommand = nil then
  begin
    FRp43OPD01AddressListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressListGetCommand.Text := ServerClassName + '.getAddressList';
    FRp43OPD01AddressListGetCommand.Prepare;
  end;

  FRp43OPD01AddressListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AddressListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AddressListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getAddressType1(PID: integer): boolean;
begin
  if FRp43OPD01AddressType1GetCommand = nil then
  begin
    FRp43OPD01AddressType1GetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressType1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressType1GetCommand.Text := ServerClassName + '.getAddressType1';
    FRp43OPD01AddressType1GetCommand.Prepare;
  end;

  FRp43OPD01AddressType1GetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AddressType1GetCommand.ExecuteUpdate;
  Result := FRp43OPD01AddressType1GetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getAddressType2(PID: integer): boolean;
begin
  if FRp43OPD01AddressType2GetCommand = nil then
  begin
    FRp43OPD01AddressType2GetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressType2GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressType2GetCommand.Text := ServerClassName + '.getAddressType2';
    FRp43OPD01AddressType2GetCommand.Prepare;
  end;

  FRp43OPD01AddressType2GetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AddressType2GetCommand.ExecuteUpdate;
  Result := FRp43OPD01AddressType2GetCommand.Parameters[1].Value.GetBoolean;
end;


function TDS43FileClient.getAdmission(REPORTID: integer): boolean;
begin
  if FRp43OPD01AdmissionGetCommand = nil then
  begin
    FRp43OPD01AdmissionGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AdmissionGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AdmissionGetCommand.Text := ServerClassName + '.getAdmission';
    FRp43OPD01AdmissionGetCommand.Prepare;
  end;

  FRp43OPD01AdmissionGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AdmissionGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AdmissionGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getAdmissionList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01AdmissionListGetCommand = nil then
  begin
    FRp43OPD01AdmissionListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AdmissionListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AdmissionListGetCommand.Text := ServerClassName + '.getAdmissionList';
    FRp43OPD01AdmissionListGetCommand.Prepare;
  end;

  FRp43OPD01AdmissionListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AdmissionListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01AdmissionListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AdmissionListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getAmpList(prv: string): boolean;
begin
  if FRp43OPD01AmpListGetCommand = nil then
  begin
    FRp43OPD01AmpListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AmpListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AmpListGetCommand.Text := ServerClassName + '.getAmpList';
    FRp43OPD01AmpListGetCommand.Prepare;
  end;

  FRp43OPD01AmpListGetCommand.Parameters[0].Value.SetWideString(prv);

  FRp43OPD01AmpListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AmpListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getAnc(REPORTID: integer): boolean;
begin
  if FRp43OPD01AncGetCommand = nil then
  begin
    FRp43OPD01AncGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AncGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AncGetCommand.Text := ServerClassName + '.getAnc';
    FRp43OPD01AncGetCommand.Prepare;
  end;

  FRp43OPD01AncGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AncGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AncGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getAncList(PID: integer;GRAVIDA:string): boolean;
begin
  if FRp43OPD01AncListGetCommand = nil then
  begin
    FRp43OPD01AncListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AncListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AncListGetCommand.Text := ServerClassName + '.getAncList';
    FRp43OPD01AncListGetCommand.Prepare;
  end;

  FRp43OPD01AncListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AncListGetCommand.Parameters[1].Value.SetWideString(GRAVIDA);
  FRp43OPD01AncListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AncListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getAppointment(REPORTID: integer): boolean;
begin
  if FRp43OPD01AppointmentGetCommand = nil then
  begin
    FRp43OPD01AppointmentGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AppointmentGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AppointmentGetCommand.Text := ServerClassName + '.getAppointment';
    FRp43OPD01AppointmentGetCommand.Prepare;
  end;

  FRp43OPD01AppointmentGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AppointmentGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AppointmentGetCommand.Parameters[1].Value.GetBoolean;
end;



function TDS43FileClient.getAppointmentList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01AppointmentListGetCommand = nil then
  begin
    FRp43OPD01AppointmentListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AppointmentListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AppointmentListGetCommand.Text := ServerClassName + '.getAppointmentList';
    FRp43OPD01AppointmentListGetCommand.Prepare;
  end;

  FRp43OPD01AppointmentListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AppointmentListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01AppointmentListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01AppointmentListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getBatchDetail(batchcode: string): boolean;
begin
  if FRp43OPD01GetBatchDetailCommand = nil then
  begin
    FRp43OPD01GetBatchDetailCommand := FDBXConnection.CreateCommand;
    FRp43OPD01GetBatchDetailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01GetBatchDetailCommand.Text := ServerClassName + '.getBatchDetail';
    FRp43OPD01GetBatchDetailCommand.Prepare;
  end;
  FRp43OPD01GetBatchDetailCommand.Parameters[0].Value.SetWideString(batchcode);
  FRp43OPD01GetBatchDetailCommand.ExecuteUpdate;
  Result := FRp43OPD01GetBatchDetailCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getBatchError(batchcode: string): boolean;
begin
  if FRp43OPD01GetBatchErrorCommand = nil then
  begin
    FRp43OPD01GetBatchErrorCommand := FDBXConnection.CreateCommand;
    FRp43OPD01GetBatchErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01GetBatchErrorCommand.Text := ServerClassName + '.getBatchError';
    FRp43OPD01GetBatchErrorCommand.Prepare;
  end;

  FRp43OPD01GetBatchErrorCommand.Parameters[0].Value.SetWideString(batchcode);
  FRp43OPD01GetBatchErrorCommand.ExecuteUpdate;
  Result := FRp43OPD01GetBatchErrorCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getBatchErrorByFileName(batchcode,
  filename: string): boolean;
begin
  if FRp43OPD01GetBatchErrorByFilenameCommand = nil then
  begin
    FRp43OPD01GetBatchErrorByFilenameCommand := FDBXConnection.CreateCommand;
    FRp43OPD01GetBatchErrorByFilenameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01GetBatchErrorByFilenameCommand.Text := ServerClassName + '.getBatchErrorByFileName';
    FRp43OPD01GetBatchErrorByFilenameCommand.Prepare;
  end;
  FRp43OPD01GetBatchErrorByFilenameCommand.Parameters[0].Value.SetWideString(batchcode);
  FRp43OPD01GetBatchErrorByFilenameCommand.Parameters[1].Value.SetWideString(filename);
  FRp43OPD01GetBatchErrorByFilenameCommand.ExecuteUpdate;
  Result := FRp43OPD01GetBatchErrorByFilenameCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getBatchErrorByGrpFileName(
  batchcode: string): boolean;
begin
  if FRp43OPD01GetBatchErrorGrpByFilenameCommand = nil then
  begin
    FRp43OPD01GetBatchErrorGrpByFilenameCommand := FDBXConnection.CreateCommand;
    FRp43OPD01GetBatchErrorGrpByFilenameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01GetBatchErrorGrpByFilenameCommand.Text := ServerClassName + '.getBatchErrorByGrpFileName';
    FRp43OPD01GetBatchErrorGrpByFilenameCommand.Prepare;
  end;

  FRp43OPD01GetBatchErrorGrpByFilenameCommand.Parameters[0].Value.SetWideString(batchcode);
  FRp43OPD01GetBatchErrorGrpByFilenameCommand.ExecuteUpdate;
  Result := FRp43OPD01GetBatchErrorGrpByFilenameCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getBatchList: boolean;
begin
  if FRp43OPD01GetBatchListCommand = nil then
  begin
    FRp43OPD01GetBatchListCommand := FDBXConnection.CreateCommand;
    FRp43OPD01GetBatchListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01GetBatchListCommand.Text := ServerClassName + '.getBatchList';
    FRp43OPD01GetBatchListCommand.Prepare;
  end;

  FRp43OPD01GetBatchListCommand.ExecuteUpdate;
  Result := FRp43OPD01GetBatchListCommand.Parameters[0].Value.GetBoolean;
end;

function TDS43FileClient.getCard(REPORTID: integer): boolean;
begin
  if FRp43OPD01CardGetCommand = nil then
  begin
    FRp43OPD01CardGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01CardGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01CardGetCommand.Text := ServerClassName + '.getCard';
    FRp43OPD01CardGetCommand.Prepare;
  end;

  FRp43OPD01CardGetCommand.Parameters[0].Value.SetInt32(REPORTID);

  FRp43OPD01CardGetCommand.ExecuteUpdate;
  Result := FRp43OPD01CardGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getCardList(PID: integer): boolean;
begin
  if FRp43OPD01CardListGetCommand = nil then
  begin
    FRp43OPD01CardListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01CardListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01CardListGetCommand.Text := ServerClassName + '.getCardList';
    FRp43OPD01CardListGetCommand.Prepare;
  end;

  FRp43OPD01CardListGetCommand.Parameters[0].Value.SetInt32(PID);

  FRp43OPD01CardListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01CardListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getChargeIpd(REPORTID: integer): boolean;
begin
  if FRp43OPD01ChargeIpdGetCommand = nil then
  begin
    FRp43OPD01ChargeIpdGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChargeIpdGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChargeIpdGetCommand.Text := ServerClassName + '.getChargeIpd';
    FRp43OPD01ChargeIpdGetCommand.Prepare;
  end;

  FRp43OPD01ChargeIpdGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01ChargeIpdGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChargeIpdGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getChargeIpdList(PID: integer): boolean;
begin
  if FRp43OPD01ChargeIpdListGetCommand = nil then
  begin
    FRp43OPD01ChargeIpdListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChargeIpdListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChargeIpdListGetCommand.Text := ServerClassName + '.getChargeIpdList';
    FRp43OPD01ChargeIpdListGetCommand.Prepare;
  end;

  FRp43OPD01ChargeIpdListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ChargeIpdListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChargeIpdListGetCommand.Parameters[1].Value.GetBoolean;
end;


function TDS43FileClient.getChargeOpd(REPORTID: integer): boolean;
begin
  if FRp43OPD01ChargeOpdGetCommand = nil then
  begin
    FRp43OPD01ChargeOpdGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChargeOpdGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChargeOpdGetCommand.Text := ServerClassName + '.getChargeOpd';
    FRp43OPD01ChargeOpdGetCommand.Prepare;
  end;

  FRp43OPD01ChargeOpdGetCommand.Parameters[0].Value.SetInt32(REPORTID);

  FRp43OPD01ChargeOpdGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChargeOpdGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getChargeOpdList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01ChargeOpdListGetCommand = nil then
  begin
    FRp43OPD01ChargeOpdListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChargeOpdListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChargeOpdListGetCommand.Text := ServerClassName + '.getChargeOpdList';
    FRp43OPD01ChargeOpdListGetCommand.Prepare;
  end;

  FRp43OPD01ChargeOpdListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ChargeOpdListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01ChargeOpdListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChargeOpdListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getChronic(REPORTID: integer): boolean;
begin
  if FRp43OPD01ChronicGetCommand = nil then
  begin
    FRp43OPD01ChronicGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChronicGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChronicGetCommand.Text := ServerClassName + '.getChronic';
    FRp43OPD01ChronicGetCommand.Prepare;
  end;

  FRp43OPD01ChronicGetCommand.Parameters[0].Value.SetInt32(REPORTID);

  FRp43OPD01ChronicGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChronicGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getChronicFu(REPORTID: integer): boolean;
begin
  if FRp43OPD01ChronicFuGetCommand = nil then
  begin
    FRp43OPD01ChronicFuGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChronicFuGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChronicFuGetCommand.Text := ServerClassName + '.getChronicFu';
    FRp43OPD01ChronicFuGetCommand.Prepare;
  end;

  FRp43OPD01ChronicFuGetCommand.Parameters[0].Value.SetInt32(REPORTID);

  FRp43OPD01ChronicFuGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChronicFuGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getChronicFuList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01ChronicFuListGetCommand = nil then
  begin
    FRp43OPD01ChronicFuListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChronicFuListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChronicFuListGetCommand.Text := ServerClassName + '.getChronicFuList';
    FRp43OPD01ChronicFuListGetCommand.Prepare;
  end;

  FRp43OPD01ChronicFuListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ChronicFuListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01ChronicFuListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChronicFuListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getChronicList(PID: integer): boolean;
begin
  if FRp43OPD01ChronicListGetCommand = nil then
  begin
    FRp43OPD01ChronicListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChronicListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChronicListGetCommand.Text := ServerClassName + '.getChronicList';
    FRp43OPD01ChronicListGetCommand.Prepare;
  end;

  FRp43OPD01ChronicListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ChronicListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChronicListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getCommunity_Activity(VID: string): boolean;
begin
   if FRp43OPD01CommunityActivityListGetCommand = nil then
        begin
          FRp43OPD01CommunityActivityListGetCommand := FDBXConnection.CreateCommand;
          FRp43OPD01CommunityActivityListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
          FRp43OPD01CommunityActivityListGetCommand.Text := ServerClassName + '.getCommunity_Activity';
          FRp43OPD01CommunityActivityListGetCommand.Prepare;
        end;

        FRp43OPD01CommunityActivityListGetCommand.Parameters[0].Value.SetWideString(VID);
        FRp43OPD01CommunityActivityListGetCommand.ExecuteUpdate;
        Result := FRp43OPD01CommunityActivityListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getCommunity_ServiceList(PID,SEQ: integer): boolean;
begin
     if FRp43OPD01CommunityServiceListGetCommand = nil then
        begin
          FRp43OPD01CommunityServiceListGetCommand := FDBXConnection.CreateCommand;
          FRp43OPD01CommunityServiceListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
          FRp43OPD01CommunityServiceListGetCommand.Text := ServerClassName + '.getCommunity_ServiceList';
          FRp43OPD01CommunityServiceListGetCommand.Prepare;
        end;

        FRp43OPD01CommunityServiceListGetCommand.Parameters[0].Value.SetInt32(PID);
        FRp43OPD01CommunityServiceListGetCommand.Parameters[1].Value.SetInt32(SEQ);
        FRp43OPD01CommunityServiceListGetCommand.ExecuteUpdate;
        Result := FRp43OPD01CommunityServiceListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getDeath(REPORTID: integer): boolean;
begin
  if FRp43OPD01DeathGetCommand = nil then
  begin
    FRp43OPD01DeathGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DeathGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DeathGetCommand.Text := ServerClassName + '.getDeath';
    FRp43OPD01DeathGetCommand.Prepare;
  end;

  FRp43OPD01DeathGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01DeathGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DeathGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getDeathList(PID: integer): boolean;
begin
  if FRp43OPD01DeathListGetCommand = nil then
  begin
    FRp43OPD01DeathListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DeathListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DeathListGetCommand.Text := ServerClassName + '.getDeathList';
    FRp43OPD01DeathListGetCommand.Prepare;
  end;

  FRp43OPD01DeathListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DeathListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DeathListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getDefaultValue(tableName,
  fieldName: string): boolean;
begin
  if FRp43OPD01DefaultValueGetCommand = nil then
  begin
    FRp43OPD01DefaultValueGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DefaultValueGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DefaultValueGetCommand.Text := ServerClassName + '.getDefaultValue';
    FRp43OPD01DefaultValueGetCommand.Prepare;
  end;

  FRp43OPD01DefaultValueGetCommand.Parameters[0].Value.SetWideString(tableName);
  FRp43OPD01DefaultValueGetCommand.Parameters[1].Value.SetWideString(fieldName);
  FRp43OPD01DefaultValueGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DefaultValueGetCommand.Parameters[2].Value.GetBoolean;
end;


function TDS43FileClient.getDental(REPORTID: integer): boolean;
begin
  if FRp43OPD01DentalGetCommand = nil then
  begin
    FRp43OPD01DentalGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DentalGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DentalGetCommand.Text := ServerClassName + '.getDental';
    FRp43OPD01DentalGetCommand.Prepare;
  end;

  FRp43OPD01DentalGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01DentalGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DentalGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getDentalList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01DentalListGetCommand = nil then
  begin
    FRp43OPD01DentalListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DentalListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DentalListGetCommand.Text := ServerClassName + '.getDentalList';
    FRp43OPD01DentalListGetCommand.Prepare;
  end;

  FRp43OPD01DentalListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DentalListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01DentalListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DentalListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getDiagnosisIpd(REPORTID: integer): boolean;
begin
  if FRp43OPD01DiagnosisIpdGetCommand = nil then
  begin
    FRp43OPD01DiagnosisIpdGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DiagnosisIpdGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DiagnosisIpdGetCommand.Text := ServerClassName + '.getDiagnosisIpd';
    FRp43OPD01DiagnosisIpdGetCommand.Prepare;
  end;

  FRp43OPD01DiagnosisIpdGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01DiagnosisIpdGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DiagnosisIpdGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getDiagnosisIpdList(PID: integer): boolean;
begin
  if FRp43OPD01DiagnosisIpdListGetCommand = nil then
  begin
    FRp43OPD01DiagnosisIpdListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DiagnosisIpdListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DiagnosisIpdListGetCommand.Text := ServerClassName + '.getDiagnosisIpdList';
    FRp43OPD01DiagnosisIpdListGetCommand.Prepare;
  end;

  FRp43OPD01DiagnosisIpdListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DiagnosisIpdListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DiagnosisIpdListGetCommand.Parameters[1].Value.GetBoolean;

end;
function TDS43FileClient.getDiagnosisOpd(PID, SEQ: integer): boolean;
begin
  if FRp43OPD01DiagnosisGetCommand = nil then
  begin
    FRp43OPD01DiagnosisGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DiagnosisGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DiagnosisGetCommand.Text := ServerClassName + '.getDiagnosisOpd';
    FRp43OPD01DiagnosisGetCommand.Prepare;
  end;

  FRp43OPD01DiagnosisGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DiagnosisGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01DiagnosisGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DiagnosisGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getDiagnosisOpdList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01DiagnosisListGetCommand = nil then
  begin
    FRp43OPD01DiagnosisListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DiagnosisListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DiagnosisListGetCommand.Text := ServerClassName + '.getDiagnosisOpdList';
    FRp43OPD01DiagnosisListGetCommand.Prepare;
  end;

  FRp43OPD01DiagnosisListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DiagnosisListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01DiagnosisListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DiagnosisListGetCommand.Parameters[2].Value.GetBoolean;
end;
function TDS43FileClient.getDrugIpd(REPORTID: integer): boolean;
begin
  if FRp43OPD01DrugIpdGetCommand = nil then
  begin
    FRp43OPD01DrugIpdGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugIpdGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugIpdGetCommand.Text := ServerClassName + '.getDrugIpd';
    FRp43OPD01DrugIpdGetCommand.Prepare;
  end;

  FRp43OPD01DrugIpdGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01DrugIpdGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugIpdGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getDrugIpdList(PID: integer): boolean;
begin
  if FRp43OPD01DrugIpdListGetCommand = nil then
  begin
    FRp43OPD01DrugIpdListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugIpdListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugIpdListGetCommand.Text := ServerClassName + '.getDrugIpdList';
    FRp43OPD01DrugIpdListGetCommand.Prepare;
  end;

  FRp43OPD01DrugIpdListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DrugIpdListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugIpdListGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getDrugOpd(REPORTID: integer): boolean;
begin
  if FRp43OPD01DrugOpdGetCommand = nil then
  begin
    FRp43OPD01DrugOpdGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugOpdGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugOpdGetCommand.Text := ServerClassName + '.getDrugOpd';
    FRp43OPD01DrugOpdGetCommand.Prepare;
  end;

  FRp43OPD01DrugOpdGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01DrugOpdGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugOpdGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getDrugOpdList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01DrugOpdListGetCommand = nil then
  begin
    FRp43OPD01DrugOpdListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugOpdListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugOpdListGetCommand.Text := ServerClassName + '.getDrugOpdList';
    FRp43OPD01DrugOpdListGetCommand.Prepare;
  end;

  FRp43OPD01DrugOpdListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DrugOpdListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01DrugOpdListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugOpdListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getDugallergy(REPORTID: integer): boolean;
begin
  if FRp43OPD01DrugallergyGetCommand = nil then
  begin
    FRp43OPD01DrugallergyGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugallergyGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugallergyGetCommand.Text := ServerClassName + '.getDugallergy';
    FRp43OPD01DrugallergyGetCommand.Prepare;
  end;

  FRp43OPD01DrugallergyGetCommand.Parameters[0].Value.SetInt32(REPORTID);

  FRp43OPD01DrugallergyGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugallergyGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getDugallergyList(PID: integer): boolean;
begin
  if FRp43OPD01DrugallergyListGetCommand = nil then
  begin
    FRp43OPD01DrugallergyListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugallergyListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugallergyListGetCommand.Text := ServerClassName + '.getDugallergyList';
    FRp43OPD01DrugallergyListGetCommand.Prepare;
  end;

  FRp43OPD01DrugallergyListGetCommand.Parameters[0].Value.SetInt32(PID);

  FRp43OPD01DrugallergyListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugallergyListGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getEpi(REPORTID: integer): boolean;
begin
  if FRp43OPD01EpiGetCommand = nil then
  begin
    FRp43OPD01EpiGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01EpiGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01EpiGetCommand.Text := ServerClassName + '.getEpi';
    FRp43OPD01EpiGetCommand.Prepare;
  end;

  FRp43OPD01EpiGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01EpiGetCommand.ExecuteUpdate;
  Result := FRp43OPD01EpiGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getEpiList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01EpiListGetCommand = nil then
  begin
    FRp43OPD01EpiListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01EpiListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01EpiListGetCommand.Text := ServerClassName + '.getEpiList';
    FRp43OPD01EpiListGetCommand.Prepare;
  end;

  FRp43OPD01EpiListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01EpiListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01EpiListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01EpiListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getFp(REPORTID: integer): boolean;
begin
  if FRp43OPD01FpGetCommand = nil then
  begin
    FRp43OPD01FpGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01FpGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01FpGetCommand.Text := ServerClassName + '.getFp';
    FRp43OPD01FpGetCommand.Prepare;
  end;

  FRp43OPD01FpGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01FpGetCommand.ExecuteUpdate;
  Result := FRp43OPD01FpGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getFpList(PID: integer): boolean;
begin
  if FRp43OPD01FpListGetCommand = nil then
  begin
    FRp43OPD01FpListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01FpListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01FpListGetCommand.Text := ServerClassName + '.getFpList';
    FRp43OPD01FpListGetCommand.Prepare;
  end;

  FRp43OPD01FpListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01FpListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01FpListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getHN(PID: integer): string;
begin
  if FRp43OPD01ClientHNGetCommand = nil then
  begin
    FRp43OPD01ClientHNGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ClientHNGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ClientHNGetCommand.Text := ServerClassName + '.getHN';
    FRp43OPD01ClientHNGetCommand.Prepare;
  end;

  FRp43OPD01ClientHNGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ClientHNGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ClientHNGetCommand.Parameters[1].Value.GetString;
end;

function TDS43FileClient.getHome(REPORTID: integer): boolean;
begin
  if FRp43OPD01HomeGetCommand = nil then
  begin
    FRp43OPD01HomeGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01HomeGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01HomeGetCommand.Text := ServerClassName + '.getHome';
    FRp43OPD01HomeGetCommand.Prepare;
  end;

  FRp43OPD01HomeGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01HomeGetCommand.ExecuteUpdate;
  Result := FRp43OPD01HomeGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getHomeList(Tambon, Ampur,
  Changwat: string): boolean;
begin
  if FRp43OPD01HomeListGetCommand = nil then
  begin
    FRp43OPD01HomeListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01HomeListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01HomeListGetCommand.Text := ServerClassName + '.getHomeList';
    FRp43OPD01HomeListGetCommand.Prepare;
  end;

  FRp43OPD01HomeListGetCommand.Parameters[0].Value.SetWideString(Tambon);
  FRp43OPD01HomeListGetCommand.Parameters[1].Value.SetWideString(Ampur);
  FRp43OPD01HomeListGetCommand.Parameters[2].Value.SetWideString(Changwat);
  FRp43OPD01HomeListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01HomeListGetCommand.Parameters[3].Value.GetBoolean;
end;

function TDS43FileClient.getHospName(hospcode, hospname: string): boolean;
begin
  if FRp43OPD01HospNameGetCommand = nil then
  begin
    FRp43OPD01HospNameGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01HospNameGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01HospNameGetCommand.Text := ServerClassName + '.getHospName';
    FRp43OPD01HospNameGetCommand.Prepare;
  end;

  FRp43OPD01HospNameGetCommand.Parameters[0].Value.SetWideString(hospcode);
  FRp43OPD01HospNameGetCommand.Parameters[1].Value.SetWideString(hospname);

  FRp43OPD01HospNameGetCommand.ExecuteUpdate;
  Result := FRp43OPD01HospNameGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getHospNameList(prv, amp,
  tumbon: string): boolean;
begin
  if FRp43OPD01HopNameListGetCommand = nil then
  begin
    FRp43OPD01HopNameListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01HopNameListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01HopNameListGetCommand.Text := ServerClassName + '.getHospNameList';
    FRp43OPD01HopNameListGetCommand.Prepare;
  end;

  FRp43OPD01HopNameListGetCommand.Parameters[0].Value.SetWideString(prv);
  FRp43OPD01HopNameListGetCommand.Parameters[1].Value.SetWideString(amp);
  FRp43OPD01HopNameListGetCommand.Parameters[2].Value.SetWideString(tumbon);

  FRp43OPD01HopNameListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01HopNameListGetCommand.Parameters[3].Value.GetBoolean;

end;
function TDS43FileClient.getIcd10(code: string): boolean;
begin
  if FRp43OPD01Icd10GetCommand = nil then
  begin
    FRp43OPD01Icd10GetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01Icd10GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01Icd10GetCommand.Text := ServerClassName + '.getIcd10';
    FRp43OPD01Icd10GetCommand.Prepare;
  end;

  FRp43OPD01Icd10GetCommand.Parameters[0].Value.SetWideString(code);

  FRp43OPD01Icd10GetCommand.ExecuteUpdate;
  Result := FRp43OPD01Icd10GetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getIcd10List(group: string): boolean;
begin
  if FRp43OPD01Icd10ListGetCommand = nil then
  begin
    FRp43OPD01Icd10ListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01Icd10ListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01Icd10ListGetCommand.Text := ServerClassName + '.getIcd10List';
    FRp43OPD01Icd10ListGetCommand.Prepare;
  end;

  FRp43OPD01Icd10ListGetCommand.Parameters[0].Value.SetWideString(group);

  FRp43OPD01Icd10ListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01Icd10ListGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getIcd9(code: string): boolean;
begin
  if FRp43OPD01Icd9GetCommand = nil then
  begin
    FRp43OPD01Icd9GetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01Icd9GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01Icd9GetCommand.Text := ServerClassName + '.getIcd9';
    FRp43OPD01Icd9GetCommand.Prepare;
  end;

  FRp43OPD01Icd9GetCommand.Parameters[0].Value.SetWideString(code);

  FRp43OPD01Icd9GetCommand.ExecuteUpdate;
  Result := FRp43OPD01Icd9GetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getIcd9List(Section: string): boolean;
begin
  if FRp43OPD01Icd9ListGetCommand = nil then
  begin
    FRp43OPD01Icd9ListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01Icd9ListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01Icd9ListGetCommand.Text := ServerClassName + '.getIcd9List';
    FRp43OPD01Icd9ListGetCommand.Prepare;
  end;

  FRp43OPD01Icd9ListGetCommand.Parameters[0].Value.SetWideString(Section);

  FRp43OPD01Icd9ListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01Icd9ListGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getIcf(REPORTID: integer): boolean;
begin
  if FRp43OPD01IcfGetCommand = nil then
  begin
    FRp43OPD01IcfGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01IcfGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01IcfGetCommand.Text := ServerClassName + '.getIcf';
    FRp43OPD01IcfGetCommand.Prepare;
  end;

  FRp43OPD01IcfGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01IcfGetCommand.ExecuteUpdate;
  Result := FRp43OPD01IcfGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getIcfList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01IcfListGetCommand = nil then
  begin
    FRp43OPD01IcfListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01IcfListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01IcfListGetCommand.Text := ServerClassName + '.getIcfList';
    FRp43OPD01IcfListGetCommand.Prepare;
  end;

  FRp43OPD01IcfListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01IcfListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01IcfListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01IcfListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getKeywords(tbl,abbr: string): boolean;
begin
  if FRp43OPD01KeywordsGetCommand = nil then
  begin
    FRp43OPD01KeywordsGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01KeywordsGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01KeywordsGetCommand.Text := ServerClassName + '.getKeywords';
    FRp43OPD01KeywordsGetCommand.Prepare;
  end;

  FRp43OPD01KeywordsGetCommand.Parameters[0].Value.SetWideString(tbl);
  FRp43OPD01KeywordsGetCommand.Parameters[1].Value.SetWideString(abbr);

  FRp43OPD01KeywordsGetCommand.ExecuteUpdate;
  Result := FRp43OPD01KeywordsGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getLabFu(REPORTID: integer): boolean;
begin
  if FRp43OPD01LabFuGetCommand = nil then
  begin
    FRp43OPD01LabFuGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01LabFuGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01LabFuGetCommand.Text := ServerClassName + '.getLabFu';
    FRp43OPD01LabFuGetCommand.Prepare;
  end;

  FRp43OPD01LabFuGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01LabFuGetCommand.ExecuteUpdate;
  Result := FRp43OPD01LabFuGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getLabFuList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01LabFuListGetCommand = nil then
  begin
    FRp43OPD01LabFuListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01LabFuListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01LabFuListGetCommand.Text := ServerClassName + '.getLabFuList';
    FRp43OPD01LabFuListGetCommand.Prepare;
  end;

  FRp43OPD01LabFuListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01LabFuListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01LabFuListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01LabFuListGetCommand.Parameters[2].Value.GetBoolean;
end;
function TDS43FileClient.getLabOr(REPORTID: integer): boolean;
begin
  if FRp43OPD01LabOrGetCommand = nil then
  begin
    FRp43OPD01LabOrGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01LabOrGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01LabOrGetCommand.Text := ServerClassName + '.getLabOr';
    FRp43OPD01LabOrGetCommand.Prepare;
  end;

  FRp43OPD01LabOrGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01LabOrGetCommand.ExecuteUpdate;
  Result := FRp43OPD01LabOrGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getLabOrList(PID: integer;GRAVIDA:string): boolean;
begin
  if FRp43OPD01LabOrListGetCommand = nil then
  begin
    FRp43OPD01LabOrListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01LabOrListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01LabOrListGetCommand.Text := ServerClassName + '.getLabOrList';
    FRp43OPD01LabOrListGetCommand.Prepare;
  end;

  FRp43OPD01LabOrListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01LabOrListGetCommand.Parameters[1].Value.SetWideString(GRAVIDA);
  FRp43OPD01LabOrListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01LabOrListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getNcdscreen(REPORTID: integer): boolean;
begin
  if FRp43OPD01NcdscreenGetCommand = nil then
  begin
    FRp43OPD01NcdscreenGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NcdscreenGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NcdscreenGetCommand.Text := ServerClassName + '.getNcdscreen';
    FRp43OPD01NcdscreenGetCommand.Prepare;
  end;

  FRp43OPD01NcdscreenGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01NcdscreenGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NcdscreenGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getNcdscreenList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01NcdscreenListGetCommand = nil then
  begin
    FRp43OPD01NcdscreenListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NcdscreenListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NcdscreenListGetCommand.Text := ServerClassName + '.getNcdscreenList';
    FRp43OPD01NcdscreenListGetCommand.Prepare;
  end;

  FRp43OPD01NcdscreenListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01NcdscreenListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01NcdscreenListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NcdscreenListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getNewborn(REPORTID: integer): boolean;
begin
  if FRp43OPD01NewbornGetCommand = nil then
  begin
    FRp43OPD01NewbornGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NewbornGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NewbornGetCommand.Text := ServerClassName + '.getNewborn';
    FRp43OPD01NewbornGetCommand.Prepare;
  end;

  FRp43OPD01NewbornGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01NewbornGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NewbornGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getNewbornCare(REPORTID: integer): boolean;
begin
  if FRp43OPD01NewbornCareGetCommand = nil then
  begin
    FRp43OPD01NewbornCareGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NewbornCareGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NewbornCareGetCommand.Text := ServerClassName + '.getNewbornCare';
    FRp43OPD01NewbornCareGetCommand.Prepare;
  end;

  FRp43OPD01NewbornCareGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01NewbornCareGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NewbornCareGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getNewbornCareList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01NewbornCareListGetCommand = nil then
  begin
    FRp43OPD01NewbornCareListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NewbornCareListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NewbornCareListGetCommand.Text := ServerClassName + '.getNewbornCareList';
    FRp43OPD01NewbornCareListGetCommand.Prepare;
  end;

  FRp43OPD01NewbornCareListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01NewbornCareListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01NewbornCareListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NewbornCareListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getNewbornList(MPID: string;GRAVIDA:string): boolean;
begin
  if FRp43OPD01NewbornListGetCommand = nil then
  begin
    FRp43OPD01NewbornListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NewbornListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NewbornListGetCommand.Text := ServerClassName + '.getNewbornList';
    FRp43OPD01NewbornListGetCommand.Prepare;
  end;

  FRp43OPD01NewbornListGetCommand.Parameters[0].Value.SetWideString(MPID);
  FRp43OPD01NewbornListGetCommand.Parameters[1].Value.SetWideString(GRAVIDA);
  FRp43OPD01NewbornListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NewbornListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getNewPID: integer;
begin
  if FRp43OPD01NewPIDGetCommand = nil then
  begin
    FRp43OPD01NewPIDGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NewPIDGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NewPIDGetCommand.Text := ServerClassName + '.getNewPID';
    FRp43OPD01NewPIDGetCommand.Prepare;
  end;


  FRp43OPD01NewPIDGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NewPIDGetCommand.Parameters[0].Value.GetInt32;
end;


function TDS43FileClient.getNutrition(REPORTID: integer): boolean;
begin
  if FRp43OPD01NutritionGetCommand = nil then
  begin
    FRp43OPD01NutritionGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NutritionGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NutritionGetCommand.Text := ServerClassName + '.getNutrition';
    FRp43OPD01NutritionGetCommand.Prepare;
  end;

  FRp43OPD01NutritionGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01NutritionGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NutritionGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getNutritionList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01NutritionListGetCommand = nil then
  begin
    FRp43OPD01NutritionListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NutritionListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NutritionListGetCommand.Text := ServerClassName + '.getNutritionList';
    FRp43OPD01NutritionListGetCommand.Prepare;
  end;

  FRp43OPD01NutritionListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01NutritionListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01NutritionListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01NutritionListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getPageList(dep, station, loc: string): boolean;
begin
  if FRp43OPD01PageListGetCommand = nil then
  begin
    FRp43OPD01PageListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PageListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PageListGetCommand.Text := ServerClassName + '.getPageList';
    FRp43OPD01PageListGetCommand.Prepare;
  end;

  FRp43OPD01PageListGetCommand.Parameters[0].Value.SetWideString(dep);
  FRp43OPD01PageListGetCommand.Parameters[1].Value.SetWideString(station);
  FRp43OPD01PageListGetCommand.Parameters[2].Value.SetWideString(loc);
  FRp43OPD01PageListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01PageListGetCommand.Parameters[3].Value.GetBoolean;
end;


function TDS43FileClient.getPerson(CID: string): boolean;
begin
  if FRp43OPD01PersonGetCommand = nil then
  begin
    FRp43OPD01PersonGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PersonGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonGetCommand.Text := ServerClassName + '.getPerson';
    FRp43OPD01PersonGetCommand.Prepare;
  end;

  FRp43OPD01PersonGetCommand.Parameters[0].Value.SetWideString(CID);
  FRp43OPD01PersonGetCommand.ExecuteUpdate;
  Result := FRp43OPD01PersonGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getPostnatal(REPORTID: integer): boolean;
begin
  if FRp43OPD01PostnatalGetCommand = nil then
  begin
    FRp43OPD01PostnatalGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PostnatalGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PostnatalGetCommand.Text := ServerClassName + '.getPostnatal';
    FRp43OPD01PostnatalGetCommand.Prepare;
  end;

  FRp43OPD01PostnatalGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01PostnatalGetCommand.ExecuteUpdate;
  Result := FRp43OPD01PostnatalGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getPostnatalList(PID: integer): boolean;
begin
  if FRp43OPD01PostnatalListGetCommand = nil then
  begin
    FRp43OPD01PostnatalListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PostnatalListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PostnatalListGetCommand.Text := ServerClassName + '.getPostnatalList';
    FRp43OPD01PostnatalListGetCommand.Prepare;
  end;

  FRp43OPD01PostnatalListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01PostnatalListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01PostnatalListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getPrenatal(REPORTID: integer): boolean;
begin
  if FRp43OPD01PrenatalGetCommand = nil then
  begin
    FRp43OPD01PrenatalGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PrenatalGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PrenatalGetCommand.Text := ServerClassName + '.getPrenatal';
    FRp43OPD01PrenatalGetCommand.Prepare;
  end;

  FRp43OPD01PrenatalGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01PrenatalGetCommand.ExecuteUpdate;
  Result := FRp43OPD01PrenatalGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getPrenatalList(PID: integer): boolean;
begin
  if FRp43OPD01PrenatalListGetCommand = nil then
  begin
    FRp43OPD01PrenatalListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PrenatalListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PrenatalListGetCommand.Text := ServerClassName + '.getPrenatalList';
    FRp43OPD01PrenatalListGetCommand.Prepare;
  end;

  FRp43OPD01PrenatalListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01PrenatalListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01PrenatalListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getProcedureIpd(REPORTID: integer): boolean;
begin
  if FRp43OPD01ProcedureIpdGetCommand = nil then
  begin
    FRp43OPD01ProcedureIpdGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProcedureIpdGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProcedureIpdGetCommand.Text := ServerClassName + '.getProcedureIpd';
    FRp43OPD01ProcedureIpdGetCommand.Prepare;
  end;

  FRp43OPD01ProcedureIpdGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01ProcedureIpdGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ProcedureIpdGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getProcedureIpdList(PID: integer): boolean;
begin
  if FRp43OPD01ProcedureIpdListGetCommand = nil then
  begin
    FRp43OPD01ProcedureIpdListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProcedureIpdListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProcedureIpdListGetCommand.Text := ServerClassName + '.getProcedureIpdList';
    FRp43OPD01ProcedureIpdListGetCommand.Prepare;
  end;

  FRp43OPD01ProcedureIpdListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ProcedureIpdListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ProcedureIpdListGetCommand.Parameters[1].Value.GetBoolean;

end;

function TDS43FileClient.getProcedureOpd(REPORTID: integer): boolean;
begin
  if FRp43OPD01ProcedureOpdGetCommand = nil then
  begin
    FRp43OPD01ProcedureOpdGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProcedureOpdGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProcedureOpdGetCommand.Text := ServerClassName + '.getProcedureOpd';
    FRp43OPD01ProcedureOpdGetCommand.Prepare;
  end;

  FRp43OPD01ProcedureOpdGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01ProcedureOpdGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ProcedureOpdGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getProcedureOpdList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01ProcedureOpdListGetCommand = nil then
  begin
    FRp43OPD01ProcedureOpdListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProcedureOpdListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProcedureOpdListGetCommand.Text := ServerClassName + '.getProcedureOpdList';
    FRp43OPD01ProcedureOpdListGetCommand.Prepare;
  end;

  FRp43OPD01ProcedureOpdListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ProcedureOpdListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01ProcedureOpdListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ProcedureOpdListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getProvinceList(control: integer): boolean;
begin
  if FRp43OPD01ProvinceListGetCommand = nil then
  begin
    FRp43OPD01ProvinceListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProvinceListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProvinceListGetCommand.Text := ServerClassName + '.getProvinceList';
    FRp43OPD01ProvinceListGetCommand.Prepare;
  end;

  FRp43OPD01ProvinceListGetCommand.Parameters[0].Value.SetInt32(control);

  FRp43OPD01ProvinceListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ProvinceListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getServerVersion: string;
begin
  if FRp43OPD01GetServerVersionCommand = nil then
  begin
    FRp43OPD01GetServerVersionCommand := FDBXConnection.CreateCommand;
    FRp43OPD01GetServerVersionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01GetServerVersionCommand.Text := ServerClassName + '.getServerVersion';
    FRp43OPD01GetServerVersionCommand.Prepare;
  end;

  FRp43OPD01GetServerVersionCommand.ExecuteUpdate;
  Result := FRp43OPD01GetServerVersionCommand.Parameters[0].Value.GetString;
end;


function TDS43FileClient.getService(PID, SEQ: integer): boolean;
begin
  if FRp43OPD01ServiceGetCommand = nil then
  begin
    FRp43OPD01ServiceGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ServiceGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ServiceGetCommand.Text := ServerClassName + '.getService';
    FRp43OPD01ServiceGetCommand.Prepare;
  end;

  FRp43OPD01ServiceGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ServiceGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01ServiceGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ServiceGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getServiceList(PID: integer): boolean;
begin
  if FRp43OPD01ServiceListGetCommand = nil then
  begin
    FRp43OPD01ServiceListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ServiceListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ServiceListGetCommand.Text := ServerClassName + '.getServiceList';
    FRp43OPD01ServiceListGetCommand.Prepare;
  end;

  FRp43OPD01ServiceListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ServiceListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01ServiceListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getSpecialPp(PID: integer): boolean;
begin
  if FRp43OPD01SpecialPpGetCommand = nil then
  begin
    FRp43OPD01SpecialPpGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01SpecialPpGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01SpecialPpGetCommand.Text := ServerClassName + '.getSpecialPp';
    FRp43OPD01SpecialPpGetCommand.Prepare;
  end;

  FRp43OPD01SpecialPpGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01SpecialPpGetCommand.ExecuteUpdate;
  Result := FRp43OPD01SpecialPpGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getSpecialPpList(PID,SEQ: integer): boolean;
begin
  if FRp43OPD01SpecialPpListGetCommand = nil then
  begin
    FRp43OPD01SpecialPpListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01SpecialPpListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01SpecialPpListGetCommand.Text := ServerClassName + '.getSpecialPpList';
    FRp43OPD01SpecialPpListGetCommand.Prepare;
  end;

  FRp43OPD01SpecialPpListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01SpecialPpListGetCommand.Parameters[1].Value.SetInt32(SEQ);
  FRp43OPD01SpecialPpListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01SpecialPpListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getSurveillance(REPORTID: integer): boolean;
begin
  if FRp43OPD01SurveillanceGetCommand = nil then
  begin
    FRp43OPD01SurveillanceGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01SurveillanceGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01SurveillanceGetCommand.Text := ServerClassName + '.getSurveillance';
    FRp43OPD01SurveillanceGetCommand.Prepare;
  end;

  FRp43OPD01SurveillanceGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01SurveillanceGetCommand.ExecuteUpdate;
  Result := FRp43OPD01SurveillanceGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getSurveillanceList(PID: integer): boolean;
begin
  if FRp43OPD01SurveillanceListGetCommand = nil then
  begin
    FRp43OPD01SurveillanceListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01SurveillanceListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01SurveillanceListGetCommand.Text := ServerClassName + '.getSurveillanceList';
    FRp43OPD01SurveillanceListGetCommand.Prepare;
  end;

  FRp43OPD01SurveillanceListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01SurveillanceListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01SurveillanceListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getTumbon(code: string): boolean;
begin
  if FRp43OPD01TumbonGetCommand = nil then
  begin
    FRp43OPD01TumbonGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01TumbonGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01TumbonGetCommand.Text := ServerClassName + '.getTumbon';
    FRp43OPD01TumbonGetCommand.Prepare;
  end;

  FRp43OPD01TumbonGetCommand.Parameters[0].Value.SetWideString(code);

  FRp43OPD01TumbonGetCommand.ExecuteUpdate;
  Result := FRp43OPD01TumbonGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getTumbonList(prv, amp: string): boolean;
begin
  if FRp43OPD01TumbonListGetCommand = nil then
  begin
    FRp43OPD01TumbonListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01TumbonListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01TumbonListGetCommand.Text := ServerClassName + '.getTumbonList';
    FRp43OPD01TumbonListGetCommand.Prepare;
  end;

  FRp43OPD01TumbonListGetCommand.Parameters[0].Value.SetWideString(prv);
  FRp43OPD01TumbonListGetCommand.Parameters[1].Value.SetWideString(amp);

  FRp43OPD01TumbonListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01TumbonListGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.getvillage(VID: string): boolean;
begin
   if FRp43OPD01VilageSetCommand = nil then
  begin
    FRp43OPD01VilageSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01VilageSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01VilageSetCommand.Text := ServerClassName + '.getvillage';
    FRp43OPD01VilageSetCommand.Prepare;
  end;

  FRp43OPD01VilageSetCommand.Parameters[0].Value.SetWideString(VID);
  FRp43OPD01VilageSetCommand.ExecuteUpdate;
  Result := FRp43OPD01VilageSetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getWomen(REPORTID: integer): boolean;
begin
  if FRp43OPD01WomenGetCommand = nil then
  begin
    FRp43OPD01WomenGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01WomenGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01WomenGetCommand.Text := ServerClassName + '.getWomen';
    FRp43OPD01WomenGetCommand.Prepare;
  end;

  FRp43OPD01WomenGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01WomenGetCommand.ExecuteUpdate;
  Result := FRp43OPD01WomenGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.getWomenList(PID: integer): boolean;
begin
  if FRp43OPD01WomenListGetCommand = nil then
  begin
    FRp43OPD01WomenListGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01WomenListGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01WomenListGetCommand.Text := ServerClassName + '.getWomenList';
    FRp43OPD01WomenListGetCommand.Prepare;
  end;

  FRp43OPD01WomenListGetCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01WomenListGetCommand.ExecuteUpdate;
  Result := FRp43OPD01WomenListGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdAccident(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATETIME_SERV, DATETIME_AE: Double;
  AETYPE, AEPLACE, TYPEIN_AE, TRAFFIC, VEHICLE, ALCOHOL, NACROTIC_DRUG,
  BELT, HELMET, AIRWAY, STOPBLEED, SPLINT, FLUID, URGENCY, COMA_EYE,
  COMA_SPEAK, COMA_MOVEMENT: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01AccidentSetCommand = nil then
  begin
    FRp43OPD01AccidentSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AccidentSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AccidentSetCommand.Text := ServerClassName + '.InsUpdAccident';
    FRp43OPD01AccidentSetCommand.Prepare;
  end;

    FRp43OPD01AccidentSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01AccidentSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01AccidentSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01AccidentSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01AccidentSetCommand.Parameters[4].Value.SetDouble(DATETIME_SERV);
    FRp43OPD01AccidentSetCommand.Parameters[5].Value.SetDouble(DATETIME_AE);
    FRp43OPD01AccidentSetCommand.Parameters[6].Value.SetWideString(AETYPE);
    FRp43OPD01AccidentSetCommand.Parameters[7].Value.SetWideString(AEPLACE);
    FRp43OPD01AccidentSetCommand.Parameters[8].Value.SetWideString(TYPEIN_AE);
    FRp43OPD01AccidentSetCommand.Parameters[9].Value.SetWideString(TRAFFIC);
    FRp43OPD01AccidentSetCommand.Parameters[10].Value.SetWideString(VEHICLE);
    FRp43OPD01AccidentSetCommand.Parameters[11].Value.SetWideString(ALCOHOL);
    FRp43OPD01AccidentSetCommand.Parameters[12].Value.SetWideString(NACROTIC_DRUG);
    FRp43OPD01AccidentSetCommand.Parameters[13].Value.SetWideString(BELT);
    FRp43OPD01AccidentSetCommand.Parameters[14].Value.SetWideString(HELMET);
    FRp43OPD01AccidentSetCommand.Parameters[15].Value.SetWideString(AIRWAY);
    FRp43OPD01AccidentSetCommand.Parameters[16].Value.SetWideString(STOPBLEED);
    FRp43OPD01AccidentSetCommand.Parameters[17].Value.SetWideString(SPLINT);
    FRp43OPD01AccidentSetCommand.Parameters[18].Value.SetWideString(FLUID);
    FRp43OPD01AccidentSetCommand.Parameters[19].Value.SetWideString(URGENCY);
    FRp43OPD01AccidentSetCommand.Parameters[20].Value.SetWideString(COMA_EYE);
    FRp43OPD01AccidentSetCommand.Parameters[21].Value.SetWideString(COMA_SPEAK);
    FRp43OPD01AccidentSetCommand.Parameters[22].Value.SetWideString(COMA_MOVEMENT);
    FRp43OPD01AccidentSetCommand.Parameters[23].Value.SetDouble(D_UPDATE);

  FRp43OPD01AccidentSetCommand.ExecuteUpdate;
  Result := FRp43OPD01AccidentSetCommand.Parameters[24].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdAddress(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSENO,
  SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT,
  TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01AddressSetCommand = nil then
  begin
    FRp43OPD01AddressSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressSetCommand.Text := ServerClassName + '.InsUpdAddress';
    FRp43OPD01AddressSetCommand.Prepare;
  end;

  FRp43OPD01AddressSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AddressSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01AddressSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01AddressSetCommand.Parameters[3].Value.SetWideString(ADDRESSTYPE);
  FRp43OPD01AddressSetCommand.Parameters[4].Value.SetWideString(HOUSE_ID);
  FRp43OPD01AddressSetCommand.Parameters[5].Value.SetWideString(HOUSETYPE);
  FRp43OPD01AddressSetCommand.Parameters[6].Value.SetWideString(ROOMNO);
  FRp43OPD01AddressSetCommand.Parameters[7].Value.SetWideString(CONDO);
  FRp43OPD01AddressSetCommand.Parameters[8].Value.SetWideString(HOUSENO);
  FRp43OPD01AddressSetCommand.Parameters[9].Value.SetWideString(SOISUB);
  FRp43OPD01AddressSetCommand.Parameters[10].Value.SetWideString(SOIMAIN);
  FRp43OPD01AddressSetCommand.Parameters[11].Value.SetWideString(ROAD);
  FRp43OPD01AddressSetCommand.Parameters[12].Value.SetWideString(VILLANAME);
  FRp43OPD01AddressSetCommand.Parameters[13].Value.SetWideString(VILLAGE);
  FRp43OPD01AddressSetCommand.Parameters[14].Value.SetWideString(TAMBON);
  FRp43OPD01AddressSetCommand.Parameters[15].Value.SetWideString(AMPUR);
  FRp43OPD01AddressSetCommand.Parameters[16].Value.SetWideString(CHANGWAT);
  FRp43OPD01AddressSetCommand.Parameters[17].Value.SetWideString(TELEPHONE);
  FRp43OPD01AddressSetCommand.Parameters[18].Value.SetWideString(MOBILE);
  FRp43OPD01AddressSetCommand.Parameters[19].Value.SetDouble(D_UPDATE);


  FRp43OPD01AddressSetCommand.ExecuteUpdate;
  Result := FRp43OPD01AddressSetCommand.Parameters[20].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdAdmission(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDADMIT, INSTYPE, TYPEIN, REFERINHOSP, CAUSEIN: String; ADMITWEIGHT,
  ADMITHEIGHT: Integer; DATETIME_DISCH: Double; WARDDISCH, DISCHSTATUS,
  DISCHTYPE, REFEROUTHOSP, CAUSEOUT: String; COST, PRICE, PAYPRICE,
  ACTUALPAY: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01AdmissionSetCommand = nil then
  begin
    FRp43OPD01AdmissionSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AdmissionSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AdmissionSetCommand.Text := ServerClassName + '.InsUpdAdmission';
    FRp43OPD01AdmissionSetCommand.Prepare;
  end;

    FRp43OPD01AdmissionSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01AdmissionSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01AdmissionSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01AdmissionSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01AdmissionSetCommand.Parameters[4].Value.SetWideString(AN);
    FRp43OPD01AdmissionSetCommand.Parameters[5].Value.SetDouble(DATETIME_ADMIT);
    FRp43OPD01AdmissionSetCommand.Parameters[6].Value.SetWideString(WARDADMIT);
    FRp43OPD01AdmissionSetCommand.Parameters[7].Value.SetWideString(INSTYPE);
    FRp43OPD01AdmissionSetCommand.Parameters[8].Value.SetWideString(TYPEIN);
    FRp43OPD01AdmissionSetCommand.Parameters[9].Value.SetWideString(REFERINHOSP);
    FRp43OPD01AdmissionSetCommand.Parameters[10].Value.SetWideString(CAUSEIN);
    FRp43OPD01AdmissionSetCommand.Parameters[11].Value.SetInt32(ADMITWEIGHT);
    FRp43OPD01AdmissionSetCommand.Parameters[12].Value.SetInt32(ADMITHEIGHT);
    FRp43OPD01AdmissionSetCommand.Parameters[13].Value.SetDouble(DATETIME_DISCH);
    FRp43OPD01AdmissionSetCommand.Parameters[14].Value.SetWideString(WARDDISCH);
    FRp43OPD01AdmissionSetCommand.Parameters[15].Value.SetWideString(DISCHSTATUS);
    FRp43OPD01AdmissionSetCommand.Parameters[16].Value.SetWideString(DISCHTYPE);
    FRp43OPD01AdmissionSetCommand.Parameters[17].Value.SetWideString(REFEROUTHOSP);
    FRp43OPD01AdmissionSetCommand.Parameters[18].Value.SetWideString(CAUSEOUT);
    FRp43OPD01AdmissionSetCommand.Parameters[19].Value.SetInt32(COST);
    FRp43OPD01AdmissionSetCommand.Parameters[20].Value.SetInt32(PRICE);
    FRp43OPD01AdmissionSetCommand.Parameters[21].Value.SetInt32(PAYPRICE);
    FRp43OPD01AdmissionSetCommand.Parameters[22].Value.SetInt32(ACTUALPAY);
    FRp43OPD01AdmissionSetCommand.Parameters[23].Value.SetWideString(PROVIDER);
    FRp43OPD01AdmissionSetCommand.Parameters[24].Value.SetDouble(D_UPDATE);

  FRp43OPD01AdmissionSetCommand.ExecuteUpdate;
  Result := FRp43OPD01AdmissionSetCommand.Parameters[25].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdAnc(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; GRAVIDA, ANCNO, GA, ANCRESULT,
  ANCPLACE, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01AncSetCommand = nil then
  begin
    FRp43OPD01AncSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AncSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AncSetCommand.Text := ServerClassName + '.InsUpdAnc';
    FRp43OPD01AncSetCommand.Prepare;
  end;


  FRp43OPD01AncSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AncSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01AncSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01AncSetCommand.Parameters[3].Value.SetInt32(SEQ);
  FRp43OPD01AncSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
  FRp43OPD01AncSetCommand.Parameters[5].Value.SetWideString(GRAVIDA);
  FRp43OPD01AncSetCommand.Parameters[6].Value.SetWideString(ANCNO);
  FRp43OPD01AncSetCommand.Parameters[7].Value.SetWideString(GA);
  FRp43OPD01AncSetCommand.Parameters[8].Value.SetWideString(ANCRESULT);
  FRp43OPD01AncSetCommand.Parameters[9].Value.SetWideString(ANCPLACE);
  FRp43OPD01AncSetCommand.Parameters[10].Value.SetWideString(PROVIDER);
  FRp43OPD01AncSetCommand.Parameters[11].Value.SetDouble(D_UPDATE);

  FRp43OPD01AncSetCommand.ExecuteUpdate;
  Result := FRp43OPD01AncSetCommand.Parameters[12].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdAppointment(REPORTID: Integer;
  HOSPCODE: String; PID, AN, SEQ: Integer; DATE_SERV: Double;
  CLINIC: String; APDATE: Double; APTYPE, APDIAG, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01AppointmentSetCommand = nil then
  begin
    FRp43OPD01AppointmentSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AppointmentSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AppointmentSetCommand.Text := ServerClassName + '.InsUpdAppointment';
    FRp43OPD01AppointmentSetCommand.Prepare;
  end;


  FRp43OPD01AppointmentSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AppointmentSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01AppointmentSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01AppointmentSetCommand.Parameters[3].Value.SetInt32(AN);
  FRp43OPD01AppointmentSetCommand.Parameters[4].Value.SetInt32(SEQ);
  FRp43OPD01AppointmentSetCommand.Parameters[5].Value.SetDouble(DATE_SERV);
  FRp43OPD01AppointmentSetCommand.Parameters[6].Value.SetWideString(CLINIC);
  FRp43OPD01AppointmentSetCommand.Parameters[7].Value.SetDouble(APDATE);
  FRp43OPD01AppointmentSetCommand.Parameters[8].Value.SetWideString(APTYPE);
  FRp43OPD01AppointmentSetCommand.Parameters[9].Value.SetWideString(APDIAG);
  FRp43OPD01AppointmentSetCommand.Parameters[10].Value.SetWideString(PROVIDER);
  FRp43OPD01AppointmentSetCommand.Parameters[11].Value.SetDouble(D_UPDATE);

  FRp43OPD01AppointmentSetCommand.ExecuteUpdate;
  Result := FRp43OPD01AppointmentSetCommand.Parameters[12].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdCard(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; INSTYPE_OLD, INSTYPE_NEW, INSID: String; STARTDATE,
  EXPIREDATE: Double; MAIN, SUB: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01CardSetCommand = nil then
  begin
    FRp43OPD01CardSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01CardSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01CardSetCommand.Text := ServerClassName + '.InsUpdCard';
    FRp43OPD01CardSetCommand.Prepare;
  end;

  FRp43OPD01CardSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01CardSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01CardSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01CardSetCommand.Parameters[3].Value.SetWideString(INSTYPE_OLD);
  FRp43OPD01CardSetCommand.Parameters[4].Value.SetWideString(INSTYPE_NEW);
  FRp43OPD01CardSetCommand.Parameters[5].Value.SetWideString(INSID);
  FRp43OPD01CardSetCommand.Parameters[6].Value.SetDouble(STARTDATE);
  FRp43OPD01CardSetCommand.Parameters[7].Value.SetDouble(EXPIREDATE);
  FRp43OPD01CardSetCommand.Parameters[8].Value.SetWideString(MAIN);
  FRp43OPD01CardSetCommand.Parameters[9].Value.SetWideString(SUB);
  FRp43OPD01CardSetCommand.Parameters[10].Value.SetDouble(D_UPDATE);

  FRp43OPD01CardSetCommand.ExecuteUpdate;
  Result := FRp43OPD01CardSetCommand.Parameters[11].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdChargeIpd(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDSTAY, CHARGEITEM, CHARGELIST: String; QUANTITY: Integer;
  INSTYPE: String; COST, PRICE, PAYPRICE: Integer;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01ChargeIpdSetCommand = nil then
  begin
    FRp43OPD01ChargeIpdSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChargeIpdSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChargeIpdSetCommand.Text := ServerClassName + '.InsUpdChargeIpd';
    FRp43OPD01ChargeIpdSetCommand.Prepare;
  end;

    FRp43OPD01ChargeIpdSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01ChargeIpdSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01ChargeIpdSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01ChargeIpdSetCommand.Parameters[3].Value.SetWideString(AN);
    FRp43OPD01ChargeIpdSetCommand.Parameters[4].Value.SetDouble(DATETIME_ADMIT);
    FRp43OPD01ChargeIpdSetCommand.Parameters[5].Value.SetWideString(WARDSTAY);
    FRp43OPD01ChargeIpdSetCommand.Parameters[6].Value.SetWideString(CHARGEITEM);
    FRp43OPD01ChargeIpdSetCommand.Parameters[7].Value.SetWideString(CHARGELIST);
    FRp43OPD01ChargeIpdSetCommand.Parameters[8].Value.SetInt32(QUANTITY);
    FRp43OPD01ChargeIpdSetCommand.Parameters[9].Value.SetWideString(INSTYPE);
    FRp43OPD01ChargeIpdSetCommand.Parameters[10].Value.SetInt32(COST);
    FRp43OPD01ChargeIpdSetCommand.Parameters[11].Value.SetInt32(PRICE);
    FRp43OPD01ChargeIpdSetCommand.Parameters[12].Value.SetInt32(PAYPRICE);
    FRp43OPD01ChargeIpdSetCommand.Parameters[13].Value.SetDouble(D_UPDATE);

  FRp43OPD01ChargeIpdSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChargeIpdSetCommand.Parameters[14].Value.GetBoolean;

end;

function TDS43FileClient.InsUpdChargeOpd(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; CLINIC,
  CHARGEITEM, CHARGELIST: String; QUANTITY: Integer; INSTYPE: String; COST,
  PRICE, PAYPRICE: Integer; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01ChargeOpdSetCommand = nil then
  begin
    FRp43OPD01ChargeOpdSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChargeOpdSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChargeOpdSetCommand.Text := ServerClassName + '.InsUpdChargeOpd';
    FRp43OPD01ChargeOpdSetCommand.Prepare;
  end;

    FRp43OPD01ChargeOpdSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01ChargeOpdSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01ChargeOpdSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01ChargeOpdSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01ChargeOpdSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01ChargeOpdSetCommand.Parameters[5].Value.SetWideString(CLINIC);
    FRp43OPD01ChargeOpdSetCommand.Parameters[6].Value.SetWideString(CHARGEITEM);
    FRp43OPD01ChargeOpdSetCommand.Parameters[7].Value.SetWideString(CHARGELIST);
    FRp43OPD01ChargeOpdSetCommand.Parameters[8].Value.SetInt32(QUANTITY);
    FRp43OPD01ChargeOpdSetCommand.Parameters[9].Value.SetWideString(INSTYPE);
    FRp43OPD01ChargeOpdSetCommand.Parameters[10].Value.SetInt32(COST);
    FRp43OPD01ChargeOpdSetCommand.Parameters[11].Value.SetInt32(PRICE);
    FRp43OPD01ChargeOpdSetCommand.Parameters[12].Value.SetInt32(PAYPRICE);
    FRp43OPD01ChargeOpdSetCommand.Parameters[13].Value.SetDouble(D_UPDATE);

  FRp43OPD01ChargeOpdSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChargeOpdSetCommand.Parameters[14].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdChronic(REPORTID: Integer; HOSPCODE,
  PID: String; DATE_DIAG: Double; CHRONIC, HOSP_DX, HOSP_RX: String;
  DATE_DISCH: Double; TYPEDISCH: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01ChronicSetCommand = nil then
  begin
    FRp43OPD01ChronicSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChronicSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChronicSetCommand.Text := ServerClassName + '.InsUpdChronic';
    FRp43OPD01ChronicSetCommand.Prepare;
  end;

    FRp43OPD01ChronicSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01ChronicSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01ChronicSetCommand.Parameters[2].Value.SetWideString(PID);
    FRp43OPD01ChronicSetCommand.Parameters[3].Value.SetDouble(DATE_DIAG);
    FRp43OPD01ChronicSetCommand.Parameters[4].Value.SetWideString(CHRONIC);
    FRp43OPD01ChronicSetCommand.Parameters[5].Value.SetWideString(HOSP_DX);
    FRp43OPD01ChronicSetCommand.Parameters[6].Value.SetWideString(HOSP_RX);
    FRp43OPD01ChronicSetCommand.Parameters[7].Value.SetDouble(DATE_DISCH);
    FRp43OPD01ChronicSetCommand.Parameters[8].Value.SetWideString(TYPEDISCH);
    FRp43OPD01ChronicSetCommand.Parameters[9].Value.SetDouble(D_UPDATE);

  FRp43OPD01ChronicSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChronicSetCommand.Parameters[10].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdChronicFu(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; WEIGHT, HEIGHT,
  WAIST_CM, SBP, DBP: Integer; FOOT, RETINA, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01ChronicFuSetCommand = nil then
  begin
    FRp43OPD01ChronicFuSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ChronicFuSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ChronicFuSetCommand.Text := ServerClassName + '.InsUpdChronicFu';
    FRp43OPD01ChronicFuSetCommand.Prepare;
  end;

    FRp43OPD01ChronicFuSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01ChronicFuSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01ChronicFuSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01ChronicFuSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01ChronicFuSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01ChronicFuSetCommand.Parameters[5].Value.SetInt32(WEIGHT);
    FRp43OPD01ChronicFuSetCommand.Parameters[6].Value.SetInt32(HEIGHT);
    FRp43OPD01ChronicFuSetCommand.Parameters[7].Value.SetInt32(WAIST_CM);
    FRp43OPD01ChronicFuSetCommand.Parameters[8].Value.SetInt32(SBP);
    FRp43OPD01ChronicFuSetCommand.Parameters[9].Value.SetInt32(DBP);
    FRp43OPD01ChronicFuSetCommand.Parameters[10].Value.SetWideString(FOOT);
    FRp43OPD01ChronicFuSetCommand.Parameters[11].Value.SetWideString(RETINA);
    FRp43OPD01ChronicFuSetCommand.Parameters[12].Value.SetWideString(PROVIDER);
    FRp43OPD01ChronicFuSetCommand.Parameters[13].Value.SetDouble(D_UPDATE);

  FRp43OPD01ChronicFuSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ChronicFuSetCommand.Parameters[14].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdCommunity_Activity(REPORTID: Integer; HOSPCODE,
  VID: String; DATE_START, DATE_FINISH: Double; COMACTIVITY, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01CommunityActivityListGet1Command = nil then
  begin
    FRp43OPD01CommunityActivityListGet1Command := FDBXConnection.CreateCommand;
    FRp43OPD01CommunityActivityListGet1Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01CommunityActivityListGet1Command.Text := ServerClassName + '.InsUpdCommunity_Activity';
    FRp43OPD01CommunityActivityListGet1Command.Prepare;
  end;


  FRp43OPD01CommunityActivityListGet1Command.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01CommunityActivityListGet1Command.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01CommunityActivityListGet1Command.Parameters[2].Value.SetWideString(VID);
  FRp43OPD01CommunityActivityListGet1Command.Parameters[3].Value.SetDouble(DATE_START);
  FRp43OPD01CommunityActivityListGet1Command.Parameters[4].Value.SetDouble(DATE_FINISH);
  FRp43OPD01CommunityActivityListGet1Command.Parameters[5].Value.SetWideString(COMACTIVITY);
  FRp43OPD01CommunityActivityListGet1Command.Parameters[6].Value.SetWideString(PROVIDER);
  FRp43OPD01CommunityActivityListGet1Command.Parameters[7].Value.SetDouble(D_UPDATE);

  FRp43OPD01CommunityActivityListGet1Command.ExecuteUpdate;
  Result := FRp43OPD01CommunityActivityListGet1Command.Parameters[8].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdCommunity_Service(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; COMSERVICE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
 if FRp43OPD01CommunityServiceListGet1Command = nil then
  begin
    FRp43OPD01CommunityServiceListGet1Command := FDBXConnection.CreateCommand;
    FRp43OPD01CommunityServiceListGet1Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01CommunityServiceListGet1Command.Text := ServerClassName + '.InsUpdCommunity_Service';
    FRp43OPD01CommunityServiceListGet1Command.Prepare;
  end;


  FRp43OPD01CommunityServiceListGet1Command.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01CommunityServiceListGet1Command.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01CommunityServiceListGet1Command.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01CommunityServiceListGet1Command.Parameters[3].Value.SetInt32(SEQ);
  FRp43OPD01CommunityServiceListGet1Command.Parameters[4].Value.SetDouble(DATE_SERV);
  FRp43OPD01CommunityServiceListGet1Command.Parameters[5].Value.SetWideString(COMSERVICE);
  FRp43OPD01CommunityServiceListGet1Command.Parameters[6].Value.SetWideString(PROVIDER);
  FRp43OPD01CommunityServiceListGet1Command.Parameters[7].Value.SetDouble(D_UPDATE);

  FRp43OPD01CommunityServiceListGet1Command.ExecuteUpdate;
  Result := FRp43OPD01CommunityServiceListGet1Command.Parameters[8].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdDeath(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; HOSPDEATH, AN: String; SEQ: Integer; DDEATH: Double;
  CDEATH_A, CDEATH_B, CDEATH_C, CDEATH_D, ODISEASE, CDEATH, PREGDEATH,
  PDEATH, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01DeathSetCommand = nil then
  begin
    FRp43OPD01DeathSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DeathSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DeathSetCommand.Text := ServerClassName + '.InsUpdDeath';
    FRp43OPD01DeathSetCommand.Prepare;
  end;

    FRp43OPD01DeathSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01DeathSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01DeathSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01DeathSetCommand.Parameters[3].Value.SetWideString(HOSPDEATH);
    FRp43OPD01DeathSetCommand.Parameters[4].Value.SetWideString(AN);
    FRp43OPD01DeathSetCommand.Parameters[5].Value.SetInt32(SEQ);
    FRp43OPD01DeathSetCommand.Parameters[6].Value.SetDouble(DDEATH);
    FRp43OPD01DeathSetCommand.Parameters[7].Value.SetWideString(CDEATH_A);
    FRp43OPD01DeathSetCommand.Parameters[8].Value.SetWideString(CDEATH_B);
    FRp43OPD01DeathSetCommand.Parameters[9].Value.SetWideString(CDEATH_C);
    FRp43OPD01DeathSetCommand.Parameters[10].Value.SetWideString(CDEATH_D);
    FRp43OPD01DeathSetCommand.Parameters[11].Value.SetWideString(ODISEASE);
    FRp43OPD01DeathSetCommand.Parameters[12].Value.SetWideString(CDEATH);
    FRp43OPD01DeathSetCommand.Parameters[13].Value.SetWideString(PREGDEATH);
    FRp43OPD01DeathSetCommand.Parameters[14].Value.SetWideString(PDEATH);
    FRp43OPD01DeathSetCommand.Parameters[15].Value.SetWideString(PROVIDER);
    FRp43OPD01DeathSetCommand.Parameters[16].Value.SetDouble(D_UPDATE);

  FRp43OPD01DeathSetCommand.ExecuteUpdate;
  Result := FRp43OPD01DeathSetCommand.Parameters[17].Value.GetBoolean;
end;


function TDS43FileClient.InsUpdDental(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; DENTTYPE, SERVPLACE: String;
  PTEETH, PCARIES, PFILLING, PEXTRACT, DTEETH, DCARIES, DFILLING,
  DEXTRACT: Integer; NEED_FLUORIDE, NEED_SCALING: String; NEED_SEALANT,
  NEED_PFILLING, NEED_DFILLING, NEED_PEXTRACT, NEED_DEXTRACT: Integer): boolean;
begin
  if FRp43OPD01DentalSetCommand = nil then
  begin
    FRp43OPD01DentalSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DentalSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DentalSetCommand.Text := ServerClassName + '.InsUpdDental';
    FRp43OPD01DentalSetCommand.Prepare;
  end;

    FRp43OPD01DentalSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01DentalSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01DentalSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01DentalSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01DentalSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01DentalSetCommand.Parameters[5].Value.SetWideString(DENTTYPE);
    FRp43OPD01DentalSetCommand.Parameters[6].Value.SetWideString(SERVPLACE);
    FRp43OPD01DentalSetCommand.Parameters[7].Value.SetInt32(PTEETH);
    FRp43OPD01DentalSetCommand.Parameters[8].Value.SetInt32(PCARIES);
    FRp43OPD01DentalSetCommand.Parameters[9].Value.SetInt32(PFILLING);
    FRp43OPD01DentalSetCommand.Parameters[10].Value.SetInt32(PEXTRACT);
    FRp43OPD01DentalSetCommand.Parameters[11].Value.SetInt32(DTEETH);
    FRp43OPD01DentalSetCommand.Parameters[12].Value.SetInt32(DCARIES);
    FRp43OPD01DentalSetCommand.Parameters[13].Value.SetInt32(DFILLING);
    FRp43OPD01DentalSetCommand.Parameters[14].Value.SetInt32(DEXTRACT);
    FRp43OPD01DentalSetCommand.Parameters[15].Value.SetWideString(NEED_FLUORIDE);
    FRp43OPD01DentalSetCommand.Parameters[16].Value.SetWideString(NEED_SCALING);
    FRp43OPD01DentalSetCommand.Parameters[17].Value.SetInt32(NEED_SEALANT);
    FRp43OPD01DentalSetCommand.Parameters[18].Value.SetInt32(NEED_PFILLING);
    FRp43OPD01DentalSetCommand.Parameters[19].Value.SetInt32(NEED_DFILLING);
    FRp43OPD01DentalSetCommand.Parameters[20].Value.SetInt32(NEED_PEXTRACT);
    FRp43OPD01DentalSetCommand.Parameters[21].Value.SetInt32(NEED_DEXTRACT);
    {
    FRp43OPD01DentalSetCommand.Parameters[22].Value.SetWideString(NPROSTHESIS);
    FRp43OPD01DentalSetCommand.Parameters[23].Value.SetInt32(PERMANENT_PERMANENT);
    FRp43OPD01DentalSetCommand.Parameters[24].Value.SetInt32(PERMANENT_PROSTHESIS);
    FRp43OPD01DentalSetCommand.Parameters[25].Value.SetInt32(PROSTHESIS_PROSTHESIS);
    FRp43OPD01DentalSetCommand.Parameters[26].Value.SetWideString(GUM);
    FRp43OPD01DentalSetCommand.Parameters[27].Value.SetWideString(SCHOOLTYPE);
    FRp43OPD01DentalSetCommand.Parameters[28].Value.SetWideString(_CLASS);
    FRp43OPD01DentalSetCommand.Parameters[29].Value.SetWideString(PROVIDER);
    FRp43OPD01DentalSetCommand.Parameters[30].Value.SetDouble(D_UPDATE);
    }

  FRp43OPD01DentalSetCommand.ExecuteUpdate;
  Result := FRp43OPD01DentalSetCommand.Parameters[22].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdDental2(NPROSTHESIS: String;
  PERMANENT_PERMANENT, PERMANENT_PROSTHESIS,
  PROSTHESIS_PROSTHESIS: Integer; GUM, SCHOOLTYPE, _CLASS,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01Dental2SetCommand = nil then
  begin
    FRp43OPD01Dental2SetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01Dental2SetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01Dental2SetCommand.Text := ServerClassName + '.InsUpdDental2';
    FRp43OPD01Dental2SetCommand.Prepare;
  end;



    FRp43OPD01Dental2SetCommand.Parameters[0].Value.SetWideString(NPROSTHESIS);
    FRp43OPD01Dental2SetCommand.Parameters[1].Value.SetInt32(PERMANENT_PERMANENT);
    FRp43OPD01Dental2SetCommand.Parameters[2].Value.SetInt32(PERMANENT_PROSTHESIS);
    FRp43OPD01Dental2SetCommand.Parameters[3].Value.SetInt32(PROSTHESIS_PROSTHESIS);
    FRp43OPD01Dental2SetCommand.Parameters[4].Value.SetWideString(GUM);
    FRp43OPD01Dental2SetCommand.Parameters[5].Value.SetWideString(SCHOOLTYPE);
    FRp43OPD01Dental2SetCommand.Parameters[6].Value.SetWideString(_CLASS);
    FRp43OPD01Dental2SetCommand.Parameters[7].Value.SetWideString(PROVIDER);
    FRp43OPD01Dental2SetCommand.Parameters[8].Value.SetDouble(D_UPDATE);


  FRp43OPD01Dental2SetCommand.ExecuteUpdate;
  Result := FRp43OPD01Dental2SetCommand.Parameters[9].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdDiagnosisIpd(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDDIAG, DIAGTYPE, DIAGCODE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01DiagnosisIpdSetCommand = nil then
  begin
    FRp43OPD01DiagnosisIpdSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DiagnosisIpdSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DiagnosisIpdSetCommand.Text := ServerClassName + '.InsUpdDiagnosisIpd';
    FRp43OPD01DiagnosisIpdSetCommand.Prepare;
  end;

    FRp43OPD01DiagnosisIpdSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[3].Value.SetWideString(AN);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[4].Value.SetDouble(DATETIME_ADMIT);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[5].Value.SetWideString(WARDDIAG);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[6].Value.SetWideString(DIAGTYPE);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[7].Value.SetWideString(DIAGCODE);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[8].Value.SetWideString(PROVIDER);
    FRp43OPD01DiagnosisIpdSetCommand.Parameters[9].Value.SetDouble(D_UPDATE);

  FRp43OPD01DiagnosisIpdSetCommand.ExecuteUpdate;
  Result := FRp43OPD01DiagnosisIpdSetCommand.Parameters[10].Value.GetBoolean;

end;

function TDS43FileClient.InsUpdDiagnosisOpd(HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; DIAGTYPE, DIAGCODE, CLINIC,
  PROVIDER: String; D_UPDATE, EXPORT_DATE: double): boolean;
begin
  if FRp43OPD01DiagnosisSetCommand = nil then
  begin
    FRp43OPD01DiagnosisSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DiagnosisSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DiagnosisSetCommand.Text := ServerClassName + '.InsUpdDiagnosisOpd';
    FRp43OPD01DiagnosisSetCommand.Prepare;
  end;

  FRp43OPD01DiagnosisSetCommand.Parameters[0].Value.SetWideString(HOSPCODE);
  FRp43OPD01DiagnosisSetCommand.Parameters[1].Value.SetInt32(PID);
  FRp43OPD01DiagnosisSetCommand.Parameters[2].Value.SetInt32(SEQ);
  FRp43OPD01DiagnosisSetCommand.Parameters[3].Value.SetDouble(DATE_SERV);
  FRp43OPD01DiagnosisSetCommand.Parameters[4].Value.SetWideString(DIAGTYPE);
  FRp43OPD01DiagnosisSetCommand.Parameters[5].Value.SetWideString(DIAGCODE);
  FRp43OPD01DiagnosisSetCommand.Parameters[6].Value.SetWideString(CLINIC);
  FRp43OPD01DiagnosisSetCommand.Parameters[7].Value.SetWideString(PROVIDER);
  FRp43OPD01DiagnosisSetCommand.Parameters[8].Value.SetDouble(D_UPDATE);
  FRp43OPD01DiagnosisSetCommand.Parameters[9].Value.SetDouble(EXPORT_DATE);

  FRp43OPD01DiagnosisSetCommand.ExecuteUpdate;
  Result := FRp43OPD01DiagnosisSetCommand.Parameters[10].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdDrugallergy(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; DATERECORD: Double; DRUGALLERGY, DNAME,
  TYPEDX, ALEVEL, SYMPTOM, INFORMANT, INFORMHOSP: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01DrugallergySetCommand = nil then
  begin
    FRp43OPD01DrugallergySetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugallergySetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugallergySetCommand.Text := ServerClassName + '.InsUpdDrugallergy';
    FRp43OPD01DrugallergySetCommand.Prepare;
  end;

    FRp43OPD01DrugallergySetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01DrugallergySetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01DrugallergySetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01DrugallergySetCommand.Parameters[3].Value.SetDouble(DATERECORD);
    FRp43OPD01DrugallergySetCommand.Parameters[4].Value.SetWideString(DRUGALLERGY);
    FRp43OPD01DrugallergySetCommand.Parameters[5].Value.SetWideString(DNAME);
    FRp43OPD01DrugallergySetCommand.Parameters[6].Value.SetWideString(TYPEDX);
    FRp43OPD01DrugallergySetCommand.Parameters[7].Value.SetWideString(ALEVEL);
    FRp43OPD01DrugallergySetCommand.Parameters[8].Value.SetWideString(SYMPTOM);
    FRp43OPD01DrugallergySetCommand.Parameters[9].Value.SetWideString(INFORMANT);
    FRp43OPD01DrugallergySetCommand.Parameters[10].Value.SetWideString(INFORMHOSP);
    FRp43OPD01DrugallergySetCommand.Parameters[11].Value.SetDouble(D_UPDATE);

  FRp43OPD01DrugallergySetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugallergySetCommand.Parameters[12].Value.GetBoolean;

end;

function TDS43FileClient.InsUpdDrugIpd(REPORTID: Integer; ORDER_NO,
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDSTAY, TYPEDRUG, DIDSTD, DNAME: String; DATESTART, DATEFINISH: Double;
  AMOUNT: Integer; _UNIT, UNIT_PACKING: String; DRUGPRICE,
  DRUGCOST: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01DrugIpdSetCommand = nil then
  begin
    FRp43OPD01DrugIpdSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugIpdSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugIpdSetCommand.Text := ServerClassName + '.InsUpdDrugIpd';
    FRp43OPD01DrugIpdSetCommand.Prepare;
  end;


    FRp43OPD01DrugIpdSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01DrugIpdSetCommand.Parameters[1].Value.SetWideString(ORDER_NO);
    FRp43OPD01DrugIpdSetCommand.Parameters[2].Value.SetWideString(HOSPCODE);
    FRp43OPD01DrugIpdSetCommand.Parameters[3].Value.SetInt32(PID);
    FRp43OPD01DrugIpdSetCommand.Parameters[4].Value.SetWideString(AN);
    FRp43OPD01DrugIpdSetCommand.Parameters[5].Value.SetDouble(DATETIME_ADMIT);
    FRp43OPD01DrugIpdSetCommand.Parameters[6].Value.SetWideString(WARDSTAY);
    FRp43OPD01DrugIpdSetCommand.Parameters[7].Value.SetWideString(TYPEDRUG);
    FRp43OPD01DrugIpdSetCommand.Parameters[8].Value.SetWideString(DIDSTD);
    FRp43OPD01DrugIpdSetCommand.Parameters[9].Value.SetWideString(DNAME);
    FRp43OPD01DrugIpdSetCommand.Parameters[10].Value.SetDouble(DATESTART);
    FRp43OPD01DrugIpdSetCommand.Parameters[11].Value.SetDouble(DATEFINISH);
    FRp43OPD01DrugIpdSetCommand.Parameters[12].Value.SetInt32(AMOUNT);
    FRp43OPD01DrugIpdSetCommand.Parameters[13].Value.SetWideString(_UNIT);
    FRp43OPD01DrugIpdSetCommand.Parameters[14].Value.SetWideString(UNIT_PACKING);
    FRp43OPD01DrugIpdSetCommand.Parameters[15].Value.SetInt32(DRUGPRICE);
    FRp43OPD01DrugIpdSetCommand.Parameters[16].Value.SetInt32(DRUGCOST);
    FRp43OPD01DrugIpdSetCommand.Parameters[17].Value.SetWideString(PROVIDER);
    FRp43OPD01DrugIpdSetCommand.Parameters[18].Value.SetDouble(D_UPDATE);

  FRp43OPD01DrugIpdSetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugIpdSetCommand.Parameters[19].Value.GetBoolean;

end;

function TDS43FileClient.InsUpdDrugOpd(REPORTID: Integer; ORDER_NO,
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; CLINIC, DIDSTD,
  DNAME: String; AMOUNT: Integer; _UNIT, UNIT_PACKING: String; DRUGPRICE,
  DRUGCOST: Integer; PROVIDER: String; D_UPDATE: double): boolean;
begin
  if FRp43OPD01DrugOpdSetCommand = nil then
  begin
    FRp43OPD01DrugOpdSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DrugOpdSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DrugOpdSetCommand.Text := ServerClassName + '.InsUpdDrugOpd';
    FRp43OPD01DrugOpdSetCommand.Prepare;
  end;


    FRp43OPD01DrugOpdSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01DrugOpdSetCommand.Parameters[1].Value.SetWideString(ORDER_NO);
    FRp43OPD01DrugOpdSetCommand.Parameters[2].Value.SetWideString(HOSPCODE);
    FRp43OPD01DrugOpdSetCommand.Parameters[3].Value.SetInt32(PID);
    FRp43OPD01DrugOpdSetCommand.Parameters[4].Value.SetInt32(SEQ);
    FRp43OPD01DrugOpdSetCommand.Parameters[5].Value.SetDouble(DATE_SERV);
    FRp43OPD01DrugOpdSetCommand.Parameters[6].Value.SetWideString(CLINIC);
    FRp43OPD01DrugOpdSetCommand.Parameters[7].Value.SetWideString(DIDSTD);
    FRp43OPD01DrugOpdSetCommand.Parameters[8].Value.SetWideString(DNAME);
    FRp43OPD01DrugOpdSetCommand.Parameters[9].Value.SetInt32(AMOUNT);
    FRp43OPD01DrugOpdSetCommand.Parameters[10].Value.SetWideString(_UNIT);
    FRp43OPD01DrugOpdSetCommand.Parameters[11].Value.SetWideString(UNIT_PACKING);
    FRp43OPD01DrugOpdSetCommand.Parameters[12].Value.SetInt32(DRUGPRICE);
    FRp43OPD01DrugOpdSetCommand.Parameters[13].Value.SetInt32(DRUGCOST);
    FRp43OPD01DrugOpdSetCommand.Parameters[14].Value.SetWideString(PROVIDER);
    FRp43OPD01DrugOpdSetCommand.Parameters[15].Value.SetDouble(D_UPDATE);

  FRp43OPD01DrugOpdSetCommand.ExecuteUpdate;
  Result := FRp43OPD01DrugOpdSetCommand.Parameters[16].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdEpi(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; VACCINETYPE, VACCINEPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01EpiSetCommand = nil then
  begin
    FRp43OPD01EpiSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01EpiSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01EpiSetCommand.Text := ServerClassName + '.InsUpdEpi';
    FRp43OPD01EpiSetCommand.Prepare;
  end;

  FRp43OPD01EpiSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01EpiSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01EpiSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01EpiSetCommand.Parameters[3].Value.SetInt32(SEQ);
  FRp43OPD01EpiSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
  FRp43OPD01EpiSetCommand.Parameters[5].Value.SetWideString(VACCINETYPE);
  FRp43OPD01EpiSetCommand.Parameters[6].Value.SetWideString(VACCINEPLACE);
  FRp43OPD01EpiSetCommand.Parameters[7].Value.SetWideString(PROVIDER);
  FRp43OPD01EpiSetCommand.Parameters[8].Value.SetDouble(D_UPDATE);

  FRp43OPD01EpiSetCommand.ExecuteUpdate;
  Result := FRp43OPD01EpiSetCommand.Parameters[9].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdFp(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; FPTYPE, FPPLACE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01FpSetCommand = nil then
  begin
    FRp43OPD01FpSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01FpSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01FpSetCommand.Text := ServerClassName + '.InsUpdFp';
    FRp43OPD01FpSetCommand.Prepare;
  end;

    FRp43OPD01FpSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01FpSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01FpSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01FpSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01FpSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01FpSetCommand.Parameters[5].Value.SetWideString(FPTYPE);
    FRp43OPD01FpSetCommand.Parameters[6].Value.SetWideString(FPPLACE);
    FRp43OPD01FpSetCommand.Parameters[7].Value.SetWideString(PROVIDER);
    FRp43OPD01FpSetCommand.Parameters[8].Value.SetDouble(D_UPDATE);

  FRp43OPD01FpSetCommand.ExecuteUpdate;
  Result := FRp43OPD01FpSetCommand.Parameters[9].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdHomeA(REPORTID: Integer; HOSPCODE, HID,
  HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSE, SOISUB, SOIMAIN, ROAD,
  VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT, TELEPHONE: String; LATITUDE,
  LONGITUDE: Integer; NFAMILY: String): boolean;
begin
  if FRp43OPD01HomeASetCommand = nil then
  begin
    FRp43OPD01HomeASetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01HomeASetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01HomeASetCommand.Text := ServerClassName + '.InsUpdHomeA';
    FRp43OPD01HomeASetCommand.Prepare;
  end;

  FRp43OPD01HomeASetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01HomeASetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01HomeASetCommand.Parameters[2].Value.SetWideString(HID);
  FRp43OPD01HomeASetCommand.Parameters[3].Value.SetWideString(HOUSE_ID);
  FRp43OPD01HomeASetCommand.Parameters[4].Value.SetWideString(HOUSETYPE);
  FRp43OPD01HomeASetCommand.Parameters[5].Value.SetWideString(ROOMNO);
  FRp43OPD01HomeASetCommand.Parameters[6].Value.SetWideString(CONDO);
  FRp43OPD01HomeASetCommand.Parameters[7].Value.SetWideString(HOUSE);
  FRp43OPD01HomeASetCommand.Parameters[8].Value.SetWideString(SOISUB);
  FRp43OPD01HomeASetCommand.Parameters[9].Value.SetWideString(SOIMAIN);
  FRp43OPD01HomeASetCommand.Parameters[10].Value.SetWideString(ROAD);
  FRp43OPD01HomeASetCommand.Parameters[11].Value.SetWideString(VILLANAME);
  FRp43OPD01HomeASetCommand.Parameters[12].Value.SetWideString(VILLAGE);
  FRp43OPD01HomeASetCommand.Parameters[13].Value.SetWideString(TAMBON);
  FRp43OPD01HomeASetCommand.Parameters[14].Value.SetWideString(AMPUR);
  FRp43OPD01HomeASetCommand.Parameters[15].Value.SetWideString(CHANGWAT);
  FRp43OPD01HomeASetCommand.Parameters[16].Value.SetWideString(TELEPHONE);
  FRp43OPD01HomeASetCommand.Parameters[17].Value.SetInt32(LATITUDE);
  FRp43OPD01HomeASetCommand.Parameters[18].Value.SetInt32(LONGITUDE);
  FRp43OPD01HomeASetCommand.Parameters[19].Value.SetWideString(NFAMILY);

  FRp43OPD01HomeASetCommand.ExecuteUpdate;
  Result := FRp43OPD01HomeASetCommand.Parameters[20].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdHomeB(LOCATYPE, VHVID, HEADID, TOILET,
  WATER, WATERTYPE, GARBAGE, HOUSING, DURABILITY, CLEANLINESS, VENTILATION,
  LIGHT, WATERTM, MFOOD, BCONTROL, ACONTROL, CHEMICAL: String; OUTDATE,
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01HomeBSetCommand = nil then
  begin
    FRp43OPD01HomeBSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01HomeBSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01HomeBSetCommand.Text := ServerClassName + '.InsUpdHomeB';
    FRp43OPD01HomeBSetCommand.Prepare;
  end;

  FRp43OPD01HomeBSetCommand.Parameters[0].Value.SetWideString(LOCATYPE);
  FRp43OPD01HomeBSetCommand.Parameters[1].Value.SetWideString(VHVID);
  FRp43OPD01HomeBSetCommand.Parameters[2].Value.SetWideString(HEADID);
  FRp43OPD01HomeBSetCommand.Parameters[3].Value.SetWideString(TOILET);
  FRp43OPD01HomeBSetCommand.Parameters[4].Value.SetWideString(WATER);
  FRp43OPD01HomeBSetCommand.Parameters[5].Value.SetWideString(WATERTYPE);
  FRp43OPD01HomeBSetCommand.Parameters[6].Value.SetWideString(GARBAGE);
  FRp43OPD01HomeBSetCommand.Parameters[7].Value.SetWideString(HOUSING);
  FRp43OPD01HomeBSetCommand.Parameters[8].Value.SetWideString(DURABILITY);
  FRp43OPD01HomeBSetCommand.Parameters[9].Value.SetWideString(CLEANLINESS);
  FRp43OPD01HomeBSetCommand.Parameters[10].Value.SetWideString(VENTILATION);
  FRp43OPD01HomeBSetCommand.Parameters[11].Value.SetWideString(LIGHT);
  FRp43OPD01HomeBSetCommand.Parameters[12].Value.SetWideString(WATERTM);
  FRp43OPD01HomeBSetCommand.Parameters[13].Value.SetWideString(MFOOD);
  FRp43OPD01HomeBSetCommand.Parameters[14].Value.SetWideString(BCONTROL);
  FRp43OPD01HomeBSetCommand.Parameters[15].Value.SetWideString(ACONTROL);
  FRp43OPD01HomeBSetCommand.Parameters[16].Value.SetWideString(CHEMICAL);
  FRp43OPD01HomeBSetCommand.Parameters[17].Value.SetDouble(OUTDATE);
  FRp43OPD01HomeBSetCommand.Parameters[18].Value.SetDouble(D_UPDATE);

  FRp43OPD01HomeBSetCommand.ExecuteUpdate;
  Result := FRp43OPD01HomeBSetCommand.Parameters[19].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdIcf(REPORTID: Integer; HOSPCODE,
  DISABID: String; PID, SEQ: Integer; DATE_SERV: Double; ICF, QUALIFIER,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01IcfSetCommand = nil then
  begin
    FRp43OPD01IcfSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01IcfSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01IcfSetCommand.Text := ServerClassName + '.InsUpdIcf';
    FRp43OPD01IcfSetCommand.Prepare;
  end;

    FRp43OPD01IcfSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01IcfSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01IcfSetCommand.Parameters[2].Value.SetWideString(DISABID);
    FRp43OPD01IcfSetCommand.Parameters[3].Value.SetInt32(PID);
    FRp43OPD01IcfSetCommand.Parameters[4].Value.SetInt32(SEQ);
    FRp43OPD01IcfSetCommand.Parameters[5].Value.SetDouble(DATE_SERV);
    FRp43OPD01IcfSetCommand.Parameters[6].Value.SetWideString(ICF);
    FRp43OPD01IcfSetCommand.Parameters[7].Value.SetWideString(QUALIFIER);
    FRp43OPD01IcfSetCommand.Parameters[8].Value.SetWideString(PROVIDER);
    FRp43OPD01IcfSetCommand.Parameters[9].Value.SetDouble(D_UPDATE);

  FRp43OPD01IcfSetCommand.ExecuteUpdate;
  Result := FRp43OPD01IcfSetCommand.Parameters[10].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdLabFu(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; LABTEST: String;
  LABRESULT: Integer; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01LabFuSetCommand = nil then
  begin
    FRp43OPD01LabFuSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01LabFuSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01LabFuSetCommand.Text := ServerClassName + '.InsUpdLabFu';
    FRp43OPD01LabFuSetCommand.Prepare;
  end;

  FRp43OPD01LabFuSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01LabFuSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01LabFuSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01LabFuSetCommand.Parameters[3].Value.SetInt32(SEQ);
  FRp43OPD01LabFuSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
  FRp43OPD01LabFuSetCommand.Parameters[5].Value.SetWideString(LABTEST);
  FRp43OPD01LabFuSetCommand.Parameters[6].Value.SetInt32(LABRESULT);
  FRp43OPD01LabFuSetCommand.Parameters[7].Value.SetDouble(D_UPDATE);

  FRp43OPD01LabFuSetCommand.ExecuteUpdate;
  Result := FRp43OPD01LabFuSetCommand.Parameters[8].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdLabOr(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; GRAVIDA: String; LMP, EDC, BDATE: Double; BRESULT, BPLACE,
  BHOSP, BTYPE, BDOCTOR: String; LBORN, SBORN: Integer;
  D_UPDATE: double): boolean;
begin
  if FRp43OPD01LabOrSetCommand = nil then
  begin
    FRp43OPD01LabOrSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01LabOrSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01LabOrSetCommand.Text := ServerClassName + '.InsUpdLabOr';
    FRp43OPD01LabOrSetCommand.Prepare;
  end;

    FRp43OPD01LabOrSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01LabOrSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01LabOrSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01LabOrSetCommand.Parameters[3].Value.SetWideString(GRAVIDA);
    FRp43OPD01LabOrSetCommand.Parameters[4].Value.SetDouble(LMP);
    FRp43OPD01LabOrSetCommand.Parameters[5].Value.SetDouble(EDC);
    FRp43OPD01LabOrSetCommand.Parameters[6].Value.SetDouble(BDATE);
    FRp43OPD01LabOrSetCommand.Parameters[7].Value.SetWideString(BRESULT);
    FRp43OPD01LabOrSetCommand.Parameters[8].Value.SetWideString(BPLACE);
    FRp43OPD01LabOrSetCommand.Parameters[9].Value.SetWideString(BHOSP);
    FRp43OPD01LabOrSetCommand.Parameters[10].Value.SetWideString(BTYPE);
    FRp43OPD01LabOrSetCommand.Parameters[11].Value.SetWideString(BDOCTOR);
    FRp43OPD01LabOrSetCommand.Parameters[12].Value.SetInt32(LBORN);
    FRp43OPD01LabOrSetCommand.Parameters[13].Value.SetInt32(SBORN);
    FRp43OPD01LabOrSetCommand.Parameters[14].Value.SetDouble(D_UPDATE);

  FRp43OPD01LabOrSetCommand.ExecuteUpdate;
  Result := FRp43OPD01LabOrSetCommand.Parameters[15].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdNcdscreen(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; SERVPLACE, SMOKE,
  ALCOHOL, DMFAMILY, HTFAMILY: String; WEIGHT, HEIGHT, WAIST_CM, SBP_1,
  DBP_1, SBP_2, DBP_2, BSLEVEL: Integer; BSTEST, SCREENPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01NcdscreenSetCommand = nil then
  begin
    FRp43OPD01NcdscreenSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NcdscreenSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NcdscreenSetCommand.Text := ServerClassName + '.InsUpdNcdscreen';
    FRp43OPD01NcdscreenSetCommand.Prepare;
  end;

    FRp43OPD01NcdscreenSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01NcdscreenSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01NcdscreenSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01NcdscreenSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01NcdscreenSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01NcdscreenSetCommand.Parameters[5].Value.SetWideString(SERVPLACE);
    FRp43OPD01NcdscreenSetCommand.Parameters[6].Value.SetWideString(SMOKE);
    FRp43OPD01NcdscreenSetCommand.Parameters[7].Value.SetWideString(ALCOHOL);
    FRp43OPD01NcdscreenSetCommand.Parameters[8].Value.SetWideString(DMFAMILY);
    FRp43OPD01NcdscreenSetCommand.Parameters[9].Value.SetWideString(HTFAMILY);
    FRp43OPD01NcdscreenSetCommand.Parameters[10].Value.SetInt32(WEIGHT);
    FRp43OPD01NcdscreenSetCommand.Parameters[11].Value.SetInt32(HEIGHT);
    FRp43OPD01NcdscreenSetCommand.Parameters[12].Value.SetInt32(WAIST_CM);
    FRp43OPD01NcdscreenSetCommand.Parameters[13].Value.SetInt32(SBP_1);
    FRp43OPD01NcdscreenSetCommand.Parameters[14].Value.SetInt32(DBP_1);
    FRp43OPD01NcdscreenSetCommand.Parameters[15].Value.SetInt32(SBP_2);
    FRp43OPD01NcdscreenSetCommand.Parameters[16].Value.SetInt32(DBP_2);
    FRp43OPD01NcdscreenSetCommand.Parameters[17].Value.SetInt32(BSLEVEL);
    FRp43OPD01NcdscreenSetCommand.Parameters[18].Value.SetWideString(BSTEST);
    FRp43OPD01NcdscreenSetCommand.Parameters[19].Value.SetWideString(SCREENPLACE);
    FRp43OPD01NcdscreenSetCommand.Parameters[20].Value.SetWideString(PROVIDER);
    FRp43OPD01NcdscreenSetCommand.Parameters[21].Value.SetDouble(D_UPDATE);

  FRp43OPD01NcdscreenSetCommand.ExecuteUpdate;
  Result := FRp43OPD01NcdscreenSetCommand.Parameters[22].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdNewborn(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; MPID, GRAVIDA, GA: String; BDATE, BTIME: Double; BPLACE,
  BHOSP, BIRTHNO, BTYPE, BDOCTOR: String; BWEIGHT: Integer; ASPHYXIA, VITK,
  TSH: String; TSHRESULT: Integer; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01NewbornSetCommand = nil then
  begin
    FRp43OPD01NewbornSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NewbornSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NewbornSetCommand.Text := ServerClassName + '.InsUpdNewborn';
    FRp43OPD01NewbornSetCommand.Prepare;
  end;

    FRp43OPD01NewbornSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01NewbornSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01NewbornSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01NewbornSetCommand.Parameters[3].Value.SetWideString(MPID);
    FRp43OPD01NewbornSetCommand.Parameters[4].Value.SetWideString(GRAVIDA);
    FRp43OPD01NewbornSetCommand.Parameters[5].Value.SetWideString(GA);
    FRp43OPD01NewbornSetCommand.Parameters[6].Value.SetDouble(BDATE);
    FRp43OPD01NewbornSetCommand.Parameters[7].Value.SetDouble(BTIME);
    FRp43OPD01NewbornSetCommand.Parameters[8].Value.SetWideString(BPLACE);
    FRp43OPD01NewbornSetCommand.Parameters[9].Value.SetWideString(BHOSP);
    FRp43OPD01NewbornSetCommand.Parameters[10].Value.SetWideString(BIRTHNO);
    FRp43OPD01NewbornSetCommand.Parameters[11].Value.SetWideString(BTYPE);
    FRp43OPD01NewbornSetCommand.Parameters[12].Value.SetWideString(BDOCTOR);
    FRp43OPD01NewbornSetCommand.Parameters[13].Value.SetInt32(BWEIGHT);
    FRp43OPD01NewbornSetCommand.Parameters[14].Value.SetWideString(ASPHYXIA);
    FRp43OPD01NewbornSetCommand.Parameters[15].Value.SetWideString(VITK);
    FRp43OPD01NewbornSetCommand.Parameters[16].Value.SetWideString(TSH);
    FRp43OPD01NewbornSetCommand.Parameters[17].Value.SetInt32(TSHRESULT);
    FRp43OPD01NewbornSetCommand.Parameters[18].Value.SetDouble(D_UPDATE);

  FRp43OPD01NewbornSetCommand.ExecuteUpdate;
  Result := FRp43OPD01NewbornSetCommand.Parameters[19].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdNewbornCare(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; BDATE, BCARE: Double; BCPLACE,
  BCARERESULT, FOOD, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01NewbornCareSetCommand = nil then
  begin
    FRp43OPD01NewbornCareSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NewbornCareSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NewbornCareSetCommand.Text := ServerClassName + '.InsUpdNewbornCare';
    FRp43OPD01NewbornCareSetCommand.Prepare;
  end;

    FRp43OPD01NewbornCareSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01NewbornCareSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01NewbornCareSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01NewbornCareSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01NewbornCareSetCommand.Parameters[4].Value.SetDouble(BDATE);
    FRp43OPD01NewbornCareSetCommand.Parameters[5].Value.SetDouble(BCARE);
    FRp43OPD01NewbornCareSetCommand.Parameters[6].Value.SetWideString(BCPLACE);
    FRp43OPD01NewbornCareSetCommand.Parameters[7].Value.SetWideString(BCARERESULT);
    FRp43OPD01NewbornCareSetCommand.Parameters[8].Value.SetWideString(FOOD);
    FRp43OPD01NewbornCareSetCommand.Parameters[9].Value.SetWideString(PROVIDER);
    FRp43OPD01NewbornCareSetCommand.Parameters[10].Value.SetDouble(D_UPDATE);

  FRp43OPD01NewbornCareSetCommand.ExecuteUpdate;
  Result := FRp43OPD01NewbornCareSetCommand.Parameters[11].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdNutrition(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double;
  NUTRITIONPLACE: String; WEIGHT, HEIGHT, HEADCIRCUM: Integer;
  CHILDDEVELOP, FOOD, BOTTLE, PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01NutritionSetCommand = nil then
  begin
    FRp43OPD01NutritionSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01NutritionSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01NutritionSetCommand.Text := ServerClassName + '.InsUpdNutrition';
    FRp43OPD01NutritionSetCommand.Prepare;
  end;

    FRp43OPD01NutritionSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01NutritionSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01NutritionSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01NutritionSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01NutritionSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01NutritionSetCommand.Parameters[5].Value.SetWideString(NUTRITIONPLACE);
    FRp43OPD01NutritionSetCommand.Parameters[6].Value.SetInt32(WEIGHT);
    FRp43OPD01NutritionSetCommand.Parameters[7].Value.SetInt32(HEIGHT);
    FRp43OPD01NutritionSetCommand.Parameters[8].Value.SetInt32(HEADCIRCUM);
    FRp43OPD01NutritionSetCommand.Parameters[9].Value.SetWideString(CHILDDEVELOP);
    FRp43OPD01NutritionSetCommand.Parameters[10].Value.SetWideString(FOOD);
    FRp43OPD01NutritionSetCommand.Parameters[11].Value.SetWideString(BOTTLE);
    FRp43OPD01NutritionSetCommand.Parameters[12].Value.SetWideString(PROVIDER);
    FRp43OPD01NutritionSetCommand.Parameters[13].Value.SetDouble(D_UPDATE);

  FRp43OPD01NutritionSetCommand.ExecuteUpdate;
  Result := FRp43OPD01NutritionSetCommand.Parameters[14].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdPerson(
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
  EXPORT_DATE: double  }
): boolean;
begin
  if FRp43OPD01PersonSetCommand = nil then
  begin
    FRp43OPD01PersonSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PersonSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
//    FRp43OPD01PersonSetCommand.Text := ServerClassName + 'TDSHIS43File.InsUpdPerson';
    FRp43OPD01PersonSetCommand.Text := ServerClassName+'.InsUpdPerson';
    FRp43OPD01PersonSetCommand.Prepare;
  end;

  FRp43OPD01PersonSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01PersonSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01PersonSetCommand.Parameters[2].Value.SetWideString(CID);

  FRp43OPD01PersonSetCommand.Parameters[3].Value.SetInt32(PID);
  FRp43OPD01PersonSetCommand.Parameters[4].Value.SetWideString(HID);
  FRp43OPD01PersonSetCommand.Parameters[5].Value.SetWideString(PRENAME);
  FRp43OPD01PersonSetCommand.Parameters[6].Value.SetWideString(NAME);
  FRp43OPD01PersonSetCommand.Parameters[7].Value.SetWideString(LNAME);
  FRp43OPD01PersonSetCommand.Parameters[8].Value.SetWideString(HN);
  FRp43OPD01PersonSetCommand.Parameters[9].Value.SetWideString(SEX);
  FRp43OPD01PersonSetCommand.Parameters[10].Value.SetDouble(BIRTH);
  FRp43OPD01PersonSetCommand.Parameters[11].Value.SetWideString(MSTATUS);
  FRp43OPD01PersonSetCommand.Parameters[12].Value.SetWideString(OCCUPATION_OLD);
  FRp43OPD01PersonSetCommand.Parameters[13].Value.SetWideString(OCCUPATION_NEW);
  FRp43OPD01PersonSetCommand.Parameters[14].Value.SetWideString(RACE);
  FRp43OPD01PersonSetCommand.Parameters[15].Value.SetWideString(NATION);
  FRp43OPD01PersonSetCommand.Parameters[16].Value.SetWideString(RELIGION);
  FRp43OPD01PersonSetCommand.Parameters[17].Value.SetWideString(EDUCATION);
  FRp43OPD01PersonSetCommand.Parameters[18].Value.SetWideString(FSTATUS);
  FRp43OPD01PersonSetCommand.Parameters[19].Value.SetWideString(FATHER);
  FRp43OPD01PersonSetCommand.Parameters[20].Value.SetWideString(MOTHER);
  FRp43OPD01PersonSetCommand.Parameters[21].Value.SetWideString(COUPLE);

  FRp43OPD01PersonSetCommand.Parameters[22].Value.SetWideString(VSTATUS);
  FRp43OPD01PersonSetCommand.Parameters[23].Value.SetDouble(MOVEIN);
  FRp43OPD01PersonSetCommand.Parameters[24].Value.SetWideString(DISCHARGE);
  FRp43OPD01PersonSetCommand.Parameters[25].Value.SetDouble(DDISCHARGE);
  FRp43OPD01PersonSetCommand.Parameters[26].Value.SetWideString(ABOGROUP);
  FRp43OPD01PersonSetCommand.Parameters[27].Value.SetWideString(RHGROUP);
  FRp43OPD01PersonSetCommand.Parameters[28].Value.SetWideString(LABOR);
  FRp43OPD01PersonSetCommand.Parameters[29].Value.SetWideString(PASSPORT);

 // FRp43OPD01PersonSetCommand.Parameters[30].Value.SetWideString(TYPEAREA);
 { FRp43OPD01PersonSetCommand.Parameters[31].Value.SetDouble(D_UPDATE);

  FRp43OPD01PersonSetCommand.Parameters[32].Value.SetDouble(EXPORT_DATE);  }

  FRp43OPD01PersonSetCommand.ExecuteUpdate;
  Result := FRp43OPD01PersonSetCommand.Parameters[30].Value.GetBoolean;
end;


function TDS43FileClient.InsUpdPostnatal(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; SEQ, GRAVIDA: String; BDATE,
  PPCARE: Double; PPPLACE, PPRESULT, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01PostnatalSetCommand = nil then
  begin
    FRp43OPD01PostnatalSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PostnatalSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PostnatalSetCommand.Text := ServerClassName + '.InsUpdPostnatal';
    FRp43OPD01PostnatalSetCommand.Prepare;
  end;

    FRp43OPD01PostnatalSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01PostnatalSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01PostnatalSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01PostnatalSetCommand.Parameters[3].Value.SetWideString(SEQ);
    FRp43OPD01PostnatalSetCommand.Parameters[4].Value.SetWideString(GRAVIDA);
    FRp43OPD01PostnatalSetCommand.Parameters[5].Value.SetDouble(BDATE);
    FRp43OPD01PostnatalSetCommand.Parameters[6].Value.SetDouble(PPCARE);
    FRp43OPD01PostnatalSetCommand.Parameters[7].Value.SetWideString(PPPLACE);
    FRp43OPD01PostnatalSetCommand.Parameters[8].Value.SetWideString(PPRESULT);
    FRp43OPD01PostnatalSetCommand.Parameters[9].Value.SetWideString(PROVIDER);
    FRp43OPD01PostnatalSetCommand.Parameters[10].Value.SetDouble(D_UPDATE);

  FRp43OPD01PostnatalSetCommand.ExecuteUpdate;
  Result := FRp43OPD01PostnatalSetCommand.Parameters[11].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdPrenatal(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; GRAVIDA: String; LMP, EDC: Double;
  VDRL_RESULT, HB_RESULT, HIV_RESULT: String; DATE_HCT: Double;
  HCT_RESULT: Integer; THALASSEMIA: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01PrenatalSetCommand = nil then
  begin
    FRp43OPD01PrenatalSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PrenatalSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PrenatalSetCommand.Text := ServerClassName + '.InsUpdPrenatal';
    FRp43OPD01PrenatalSetCommand.Prepare;
  end;

    FRp43OPD01PrenatalSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01PrenatalSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01PrenatalSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01PrenatalSetCommand.Parameters[3].Value.SetWideString(GRAVIDA);
    FRp43OPD01PrenatalSetCommand.Parameters[4].Value.SetDouble(LMP);
    FRp43OPD01PrenatalSetCommand.Parameters[5].Value.SetDouble(EDC);
    FRp43OPD01PrenatalSetCommand.Parameters[6].Value.SetWideString(VDRL_RESULT);
    FRp43OPD01PrenatalSetCommand.Parameters[7].Value.SetWideString(HB_RESULT);
    FRp43OPD01PrenatalSetCommand.Parameters[8].Value.SetWideString(HIV_RESULT);
    FRp43OPD01PrenatalSetCommand.Parameters[9].Value.SetDouble(DATE_HCT);
    FRp43OPD01PrenatalSetCommand.Parameters[10].Value.SetInt32(HCT_RESULT);
    FRp43OPD01PrenatalSetCommand.Parameters[11].Value.SetWideString(THALASSEMIA);
    FRp43OPD01PrenatalSetCommand.Parameters[12].Value.SetDouble(D_UPDATE);

  FRp43OPD01PrenatalSetCommand.ExecuteUpdate;
  Result := FRp43OPD01PrenatalSetCommand.Parameters[13].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdProcedureIpd(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDSTAY, PROCEDCODE: String; TIMESTART, TIMEFINISH: Double;
  SERVICEPRICE: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01ProcedureIpdSetCommand = nil then
  begin
    FRp43OPD01ProcedureIpdSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProcedureIpdSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProcedureIpdSetCommand.Text := ServerClassName + '.InsUpdProcedureIpd';
    FRp43OPD01ProcedureIpdSetCommand.Prepare;
  end;


    FRp43OPD01ProcedureIpdSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[3].Value.SetWideString(AN);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[4].Value.SetDouble(DATETIME_ADMIT);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[5].Value.SetWideString(WARDSTAY);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[6].Value.SetWideString(PROCEDCODE);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[7].Value.SetDouble(TIMESTART);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[8].Value.SetDouble(TIMEFINISH);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[9].Value.SetInt32(SERVICEPRICE);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[10].Value.SetWideString(PROVIDER);
    FRp43OPD01ProcedureIpdSetCommand.Parameters[11].Value.SetDouble(D_UPDATE);

  FRp43OPD01ProcedureIpdSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ProcedureIpdSetCommand.Parameters[12].Value.GetBoolean;

end;

function TDS43FileClient.InsUpdProcedureOpd(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; CLINIC,
  PROCEDCODE: String; SERVICEPRICE: Integer; PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
  if FRp43OPD01ProcedureOpdSetCommand = nil then
  begin
    FRp43OPD01ProcedureOpdSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProcedureOpdSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProcedureOpdSetCommand.Text := ServerClassName + '.InsUpdProcedureOpd';
    FRp43OPD01ProcedureOpdSetCommand.Prepare;
  end;

  FRp43OPD01ProcedureOpdSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[3].Value.SetInt32(SEQ);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[5].Value.SetWideString(CLINIC);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[6].Value.SetWideString(PROCEDCODE);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[7].Value.SetInt32(SERVICEPRICE);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[8].Value.SetWideString(PROVIDER);
  FRp43OPD01ProcedureOpdSetCommand.Parameters[9].Value.SetDouble(D_UPDATE);

  FRp43OPD01ProcedureOpdSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ProcedureOpdSetCommand.Parameters[10].Value.GetBoolean;
end;
function TDS43FileClient.InsUpdService(HOSPCODE: String; PID: Integer;
  HN: String; SEQ: Integer; DATE_SERV, TIME_SERV: Double; LOCATION, INTIME,
  INSTYPE, INSID, MAIN, TYPEIN, REFERINHOSP, CAUSEIN, CHIEFCOMP,
  SERVPLACE: String; BTEMP, SBP, DBP, PR, RR: Integer; TYPEOUT,
  REFEROUTHOSP, CAUSEOUT: String; COST, PRICE, PAYPRICE,
  ACTUALPAY: Integer; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01ServiceSetCommand = nil then
  begin
    FRp43OPD01ServiceSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ServiceSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ServiceSetCommand.Text := ServerClassName + '.InsUpdService';
    FRp43OPD01ServiceSetCommand.Prepare;
  end;

    FRp43OPD01ServiceSetCommand.Parameters[0].Value.SetWideString(HOSPCODE);
    FRp43OPD01ServiceSetCommand.Parameters[1].Value.SetInt32(PID);
    FRp43OPD01ServiceSetCommand.Parameters[2].Value.SetWideString(HN);
    FRp43OPD01ServiceSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01ServiceSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01ServiceSetCommand.Parameters[5].Value.SetDouble(TIME_SERV);
    FRp43OPD01ServiceSetCommand.Parameters[6].Value.SetWideString(LOCATION);
    FRp43OPD01ServiceSetCommand.Parameters[7].Value.SetWideString(INTIME);
    FRp43OPD01ServiceSetCommand.Parameters[8].Value.SetWideString(INSTYPE);
    FRp43OPD01ServiceSetCommand.Parameters[9].Value.SetWideString(INSID);
    FRp43OPD01ServiceSetCommand.Parameters[10].Value.SetWideString(MAIN);
    FRp43OPD01ServiceSetCommand.Parameters[11].Value.SetWideString(TYPEIN);
    FRp43OPD01ServiceSetCommand.Parameters[12].Value.SetWideString(REFERINHOSP);
    FRp43OPD01ServiceSetCommand.Parameters[13].Value.SetWideString(CAUSEIN);
    FRp43OPD01ServiceSetCommand.Parameters[14].Value.SetWideString(CHIEFCOMP);
    FRp43OPD01ServiceSetCommand.Parameters[15].Value.SetWideString(SERVPLACE);
    FRp43OPD01ServiceSetCommand.Parameters[16].Value.SetInt32(BTEMP);
    FRp43OPD01ServiceSetCommand.Parameters[17].Value.SetInt32(SBP);
    FRp43OPD01ServiceSetCommand.Parameters[18].Value.SetInt32(DBP);
    FRp43OPD01ServiceSetCommand.Parameters[19].Value.SetInt32(PR);
    FRp43OPD01ServiceSetCommand.Parameters[20].Value.SetInt32(RR);
    FRp43OPD01ServiceSetCommand.Parameters[21].Value.SetWideString(TYPEOUT);
    FRp43OPD01ServiceSetCommand.Parameters[22].Value.SetWideString(REFEROUTHOSP);
    FRp43OPD01ServiceSetCommand.Parameters[23].Value.SetWideString(CAUSEOUT);
    FRp43OPD01ServiceSetCommand.Parameters[24].Value.SetInt32(COST);
    FRp43OPD01ServiceSetCommand.Parameters[25].Value.SetInt32(PRICE);
    FRp43OPD01ServiceSetCommand.Parameters[26].Value.SetInt32(PAYPRICE);
    FRp43OPD01ServiceSetCommand.Parameters[27].Value.SetInt32(ACTUALPAY);
    FRp43OPD01ServiceSetCommand.Parameters[28].Value.SetDouble(D_UPDATE);

  FRp43OPD01ServiceSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ServiceSetCommand.Parameters[29].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdSpecialPp(REPORTID: Integer; HOSPCODE, PID,
  SEQ: String; DATE_SERV: Double; SERVPLACE, PPSPECIAL, PPSPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01SpecialPpSetCommand = nil then
  begin
    FRp43OPD01SpecialPpSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01SpecialPpSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01SpecialPpSetCommand.Text := ServerClassName + '.InsUpdSpecialPp';
    FRp43OPD01SpecialPpSetCommand.Prepare;
  end;

    FRp43OPD01SpecialPpSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01SpecialPpSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01SpecialPpSetCommand.Parameters[2].Value.SetWideString(PID);
    FRp43OPD01SpecialPpSetCommand.Parameters[3].Value.SetWideString(SEQ);
    FRp43OPD01SpecialPpSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01SpecialPpSetCommand.Parameters[5].Value.SetWideString(SERVPLACE);
    FRp43OPD01SpecialPpSetCommand.Parameters[6].Value.SetWideString(PPSPECIAL);
    FRp43OPD01SpecialPpSetCommand.Parameters[7].Value.SetWideString(PPSPLACE);
    FRp43OPD01SpecialPpSetCommand.Parameters[8].Value.SetWideString(PROVIDER);
    FRp43OPD01SpecialPpSetCommand.Parameters[9].Value.SetDouble(D_UPDATE);

  FRp43OPD01SpecialPpSetCommand.ExecuteUpdate;
  Result := FRp43OPD01SpecialPpSetCommand.Parameters[10].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdSurveillance(
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
): boolean;
begin
  if FRp43OPD01SurveillanceSetCommand = nil then
  begin
    FRp43OPD01SurveillanceSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01SurveillanceSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01SurveillanceSetCommand.Text := ServerClassName + '.InsUpdSurveillance';
    FRp43OPD01SurveillanceSetCommand.Prepare;
  end;

    FRp43OPD01SurveillanceSetCommand.Parameters[0].Value.SetInt32(REPORTID);
    FRp43OPD01SurveillanceSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
    FRp43OPD01SurveillanceSetCommand.Parameters[2].Value.SetInt32(PID);
    FRp43OPD01SurveillanceSetCommand.Parameters[3].Value.SetInt32(SEQ);
    FRp43OPD01SurveillanceSetCommand.Parameters[4].Value.SetDouble(DATE_SERV);
    FRp43OPD01SurveillanceSetCommand.Parameters[5].Value.SetWideString(AN);
    FRp43OPD01SurveillanceSetCommand.Parameters[6].Value.SetDouble(DATETIME_ADMIT);
    FRp43OPD01SurveillanceSetCommand.Parameters[7].Value.SetWideString(SYNDROME);
    FRp43OPD01SurveillanceSetCommand.Parameters[8].Value.SetWideString(DIAGCODE);
    FRp43OPD01SurveillanceSetCommand.Parameters[9].Value.SetWideString(CODE506);
    FRp43OPD01SurveillanceSetCommand.Parameters[10].Value.SetWideString(DIAGCODELAST);
    FRp43OPD01SurveillanceSetCommand.Parameters[11].Value.SetWideString(CODE506LAST);
    FRp43OPD01SurveillanceSetCommand.Parameters[12].Value.SetDouble(ILLDATE);
    FRp43OPD01SurveillanceSetCommand.Parameters[13].Value.SetWideString(ILLHOUSE);
    FRp43OPD01SurveillanceSetCommand.Parameters[14].Value.SetWideString(ILLVILLAGE);
    FRp43OPD01SurveillanceSetCommand.Parameters[15].Value.SetWideString(ILLTAMBON);
    FRp43OPD01SurveillanceSetCommand.Parameters[16].Value.SetWideString(ILLAMPUR);
    FRp43OPD01SurveillanceSetCommand.Parameters[17].Value.SetWideString(ILLCHANGWAT);
    FRp43OPD01SurveillanceSetCommand.Parameters[18].Value.SetInt32(LATITUDE);
    FRp43OPD01SurveillanceSetCommand.Parameters[19].Value.SetInt32(LONGITUDE);
    FRp43OPD01SurveillanceSetCommand.Parameters[20].Value.SetWideString(PTSTATUS);
    FRp43OPD01SurveillanceSetCommand.Parameters[21].Value.SetDouble(DATE_DEATH);
    FRp43OPD01SurveillanceSetCommand.Parameters[22].Value.SetWideString(COMPLICATION);
    FRp43OPD01SurveillanceSetCommand.Parameters[23].Value.SetWideString(ORGANISM);
    FRp43OPD01SurveillanceSetCommand.Parameters[24].Value.SetWideString(PROVIDER);
    FRp43OPD01SurveillanceSetCommand.Parameters[25].Value.SetDouble(D_UPDATE);

  FRp43OPD01SurveillanceSetCommand.ExecuteUpdate;
  Result := FRp43OPD01SurveillanceSetCommand.Parameters[26].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdVillage_A(REPORTID: Integer; HOSPCODE,
  VID: String; NTRADITIONAL, NMONK, NRELIGIONLEADER, NBROADCAST, NRADIO, NPCHC,
  NCLINIC, NDRUGSTORE, NCHILDCENTER, NPSCHOOL, NSSCHOOL, NTEMPLE,
  NRELIGIOUSPLACE, NMARKET, NSHOP, NFOODSHOP, NSTALL: Integer): boolean;
begin
 if FRp43OPD01VilageGetCommand = nil then
  begin
    FRp43OPD01VilageGetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01VilageGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01VilageGetCommand.Text := ServerClassName + '.InsUpdVillage_A';
    FRp43OPD01VilageGetCommand.Prepare;
  end;

  FRp43OPD01VilageGetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01VilageGetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01VilageGetCommand.Parameters[2].Value.SetWideString(VID);
  FRp43OPD01VilageGetCommand.Parameters[3].Value.SetInt32(NTRADITIONAL);
  FRp43OPD01VilageGetCommand.Parameters[4].Value.SetInt32(NMONK);
  FRp43OPD01VilageGetCommand.Parameters[5].Value.SetInt32(NRELIGIONLEADER);
  FRp43OPD01VilageGetCommand.Parameters[6].Value.SetInt32(NBROADCAST);
  FRp43OPD01VilageGetCommand.Parameters[7].Value.SetInt32(NRADIO);
  FRp43OPD01VilageGetCommand.Parameters[8].Value.SetInt32(NPCHC);
  FRp43OPD01VilageGetCommand.Parameters[9].Value.SetInt32(NCLINIC);
  FRp43OPD01VilageGetCommand.Parameters[10].Value.SetInt32(NDRUGSTORE);
  FRp43OPD01VilageGetCommand.Parameters[11].Value.SetInt32(NCHILDCENTER);
  FRp43OPD01VilageGetCommand.Parameters[12].Value.SetInt32(NPSCHOOL);
  FRp43OPD01VilageGetCommand.Parameters[13].Value.SetInt32(NSSCHOOL);
  FRp43OPD01VilageGetCommand.Parameters[14].Value.SetInt32(NTEMPLE);
  FRp43OPD01VilageGetCommand.Parameters[15].Value.SetInt32(NRELIGIOUSPLACE);
  FRp43OPD01VilageGetCommand.Parameters[16].Value.SetInt32(NMARKET);
  FRp43OPD01VilageGetCommand.Parameters[17].Value.SetInt32(NSHOP);
  FRp43OPD01VilageGetCommand.Parameters[18].Value.SetInt32(NFOODSHOP);
  FRp43OPD01VilageGetCommand.Parameters[19].Value.SetInt32(NSTALL);



  FRp43OPD01VilageGetCommand.ExecuteUpdate;
  Result := FRp43OPD01VilageGetCommand.Parameters[20].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdVillage_B(NRAINTANK, NCHICKENFARM,
  NPIGFARM: Integer; WASTEWATER, GARBAGE: String; NFACTORY, LATITUDE, LONGITUDE:Integer;
  OUTDATE:Double; NUMACTUALLY, RISKTYPE, NUMSTATELESS, NEXERCISECLUB, NOLDERLYCLUB,
  NDISABLECLUB, NNUMBERONECLUB: Integer; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01VilageGetBCommand = nil then
  begin
    FRp43OPD01VilageGetBCommand := FDBXConnection.CreateCommand;
    FRp43OPD01VilageGetBCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01VilageGetBCommand.Text := ServerClassName + '.InsUpdVillage_B';
    FRp43OPD01VilageGetBCommand.Prepare;
  end;

  FRp43OPD01VilageGetBCommand.Parameters[0].Value.SetInt32(NRAINTANK);
  FRp43OPD01VilageGetBCommand.Parameters[1].Value.SetInt32(NCHICKENFARM);
  FRp43OPD01VilageGetBCommand.Parameters[2].Value.SetInt32(NPIGFARM);
  FRp43OPD01VilageGetBCommand.Parameters[3].Value.SetWideString(WASTEWATER);
  FRp43OPD01VilageGetBCommand.Parameters[4].Value.SetWideString(GARBAGE);
  FRp43OPD01VilageGetBCommand.Parameters[5].Value.SetInt32(NFACTORY);
  FRp43OPD01VilageGetBCommand.Parameters[6].Value.SetInt32(LATITUDE);
  FRp43OPD01VilageGetBCommand.Parameters[7].Value.SetInt32(LONGITUDE);
  FRp43OPD01VilageGetBCommand.Parameters[8].Value.SetDouble(OUTDATE);
  FRp43OPD01VilageGetBCommand.Parameters[9].Value.SetInt32(NUMACTUALLY);
  FRp43OPD01VilageGetBCommand.Parameters[10].Value.SetInt32(RISKTYPE);
  FRp43OPD01VilageGetBCommand.Parameters[11].Value.SetInt32(NUMSTATELESS);
  FRp43OPD01VilageGetBCommand.Parameters[12].Value.SetInt32(NEXERCISECLUB);
  FRp43OPD01VilageGetBCommand.Parameters[13].Value.SetInt32(NOLDERLYCLUB);
  FRp43OPD01VilageGetBCommand.Parameters[14].Value.SetInt32(NDISABLECLUB);
  FRp43OPD01VilageGetBCommand.Parameters[15].Value.SetInt32(NNUMBERONECLUB);
  FRp43OPD01VilageGetBCommand.Parameters[16].Value.SetDouble(D_UPDATE);
  FRp43OPD01VilageGetBCommand.ExecuteUpdate;
  Result := FRp43OPD01VilageGetBCommand.Parameters[17].Value.GetBoolean;
end;

function TDS43FileClient.InsUpdWomen(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; FPTYPE, NOFPCAUSE: String; TOTALSON, NUMBERSON, ABORTION,
  STILLBIRTH: Integer; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01WomenSetCommand = nil then
  begin
    FRp43OPD01WomenSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01WomenSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01WomenSetCommand.Text := ServerClassName + '.InsUpdWomen';
    FRp43OPD01WomenSetCommand.Prepare;
  end;


  FRp43OPD01WomenSetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01WomenSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01WomenSetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01WomenSetCommand.Parameters[3].Value.SetWideString(FPTYPE);
  FRp43OPD01WomenSetCommand.Parameters[4].Value.SetWideString(NOFPCAUSE);
  FRp43OPD01WomenSetCommand.Parameters[5].Value.SetInt32(TOTALSON);
  FRp43OPD01WomenSetCommand.Parameters[6].Value.SetInt32(NUMBERSON);
  FRp43OPD01WomenSetCommand.Parameters[7].Value.SetInt32(ABORTION);
  FRp43OPD01WomenSetCommand.Parameters[8].Value.SetInt32(STILLBIRTH);
  FRp43OPD01WomenSetCommand.Parameters[9].Value.SetDouble(D_UPDATE);

  FRp43OPD01WomenSetCommand.ExecuteUpdate;
  Result := FRp43OPD01WomenSetCommand.Parameters[10].Value.GetBoolean;
end;

function TDS43FileClient.samObj(Obj: TPerson4): boolean;
begin
  if FRp43OPD01SamObjCommand = nil then
  begin
    FRp43OPD01SamObjCommand := FDBXConnection.CreateCommand;
    FRp43OPD01SamObjCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01SamObjCommand.Text := ServerClassName + '.samObj';
    FRp43OPD01SamObjCommand.Prepare;
  end;

  FRp43OPD01SamObjCommand.Parameters[0].Value.SetObjectValue(Obj,false);
  FRp43OPD01SamObjCommand.ExecuteUpdate;
  Result := FRp43OPD01SamObjCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.setAddressType1(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO,
  CONDO, HOUSENO, SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR,
  CHANGWAT, TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01AddressType1SetCommand = nil then
  begin
    FRp43OPD01AddressType1SetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressType1SetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressType1SetCommand.Text := ServerClassName + '.setAddressType1';
    FRp43OPD01AddressType1SetCommand.Prepare;
  end;

  FRp43OPD01AddressType1SetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AddressType1SetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01AddressType1SetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01AddressType1SetCommand.Parameters[3].Value.SetWideString(ADDRESSTYPE);
  FRp43OPD01AddressType1SetCommand.Parameters[4].Value.SetWideString(HOUSE_ID);
  FRp43OPD01AddressType1SetCommand.Parameters[5].Value.SetWideString(HOUSETYPE);
  FRp43OPD01AddressType1SetCommand.Parameters[6].Value.SetWideString(ROOMNO);
  FRp43OPD01AddressType1SetCommand.Parameters[7].Value.SetWideString(CONDO);
  FRp43OPD01AddressType1SetCommand.Parameters[8].Value.SetWideString(HOUSENO);
  FRp43OPD01AddressType1SetCommand.Parameters[9].Value.SetWideString(SOISUB);
  FRp43OPD01AddressType1SetCommand.Parameters[10].Value.SetWideString(SOIMAIN);
  FRp43OPD01AddressType1SetCommand.Parameters[11].Value.SetWideString(ROAD);
  FRp43OPD01AddressType1SetCommand.Parameters[12].Value.SetWideString(VILLANAME);
  FRp43OPD01AddressType1SetCommand.Parameters[13].Value.SetWideString(VILLAGE);
  FRp43OPD01AddressType1SetCommand.Parameters[14].Value.SetWideString(TAMBON);
  FRp43OPD01AddressType1SetCommand.Parameters[15].Value.SetWideString(AMPUR);
  FRp43OPD01AddressType1SetCommand.Parameters[16].Value.SetWideString(CHANGWAT);
  FRp43OPD01AddressType1SetCommand.Parameters[17].Value.SetWideString(TELEPHONE);
  FRp43OPD01AddressType1SetCommand.Parameters[18].Value.SetWideString(MOBILE);
  FRp43OPD01AddressType1SetCommand.Parameters[19].Value.SetDouble(D_UPDATE);


  FRp43OPD01AddressType1SetCommand.ExecuteUpdate;
  Result := FRp43OPD01AddressType1SetCommand.Parameters[20].Value.GetBoolean;
end;

function TDS43FileClient.setAddressType2(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO,
  CONDO, HOUSENO, SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR,
  CHANGWAT, TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
begin
  if FRp43OPD01AddressType2SetCommand = nil then
  begin
    FRp43OPD01AddressType2SetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressType2SetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressType2SetCommand.Text := ServerClassName + '.setAddressType2';
    FRp43OPD01AddressType2SetCommand.Prepare;
  end;

  FRp43OPD01AddressType2SetCommand.Parameters[0].Value.SetInt32(REPORTID);
  FRp43OPD01AddressType2SetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FRp43OPD01AddressType2SetCommand.Parameters[2].Value.SetInt32(PID);
  FRp43OPD01AddressType2SetCommand.Parameters[3].Value.SetWideString(ADDRESSTYPE);
  FRp43OPD01AddressType2SetCommand.Parameters[4].Value.SetWideString(HOUSE_ID);
  FRp43OPD01AddressType2SetCommand.Parameters[5].Value.SetWideString(HOUSETYPE);
  FRp43OPD01AddressType2SetCommand.Parameters[6].Value.SetWideString(ROOMNO);
  FRp43OPD01AddressType2SetCommand.Parameters[7].Value.SetWideString(CONDO);
  FRp43OPD01AddressType2SetCommand.Parameters[8].Value.SetWideString(HOUSENO);
  FRp43OPD01AddressType2SetCommand.Parameters[9].Value.SetWideString(SOISUB);
  FRp43OPD01AddressType2SetCommand.Parameters[10].Value.SetWideString(SOIMAIN);
  FRp43OPD01AddressType2SetCommand.Parameters[11].Value.SetWideString(ROAD);
  FRp43OPD01AddressType2SetCommand.Parameters[12].Value.SetWideString(VILLANAME);
  FRp43OPD01AddressType2SetCommand.Parameters[13].Value.SetWideString(VILLAGE);
  FRp43OPD01AddressType2SetCommand.Parameters[14].Value.SetWideString(TAMBON);
  FRp43OPD01AddressType2SetCommand.Parameters[15].Value.SetWideString(AMPUR);
  FRp43OPD01AddressType2SetCommand.Parameters[16].Value.SetWideString(CHANGWAT);
  FRp43OPD01AddressType2SetCommand.Parameters[17].Value.SetWideString(TELEPHONE);
  FRp43OPD01AddressType2SetCommand.Parameters[18].Value.SetWideString(MOBILE);
  FRp43OPD01AddressType2SetCommand.Parameters[19].Value.SetDouble(D_UPDATE);


  FRp43OPD01AddressType2SetCommand.ExecuteUpdate;
  Result := FRp43OPD01AddressType2SetCommand.Parameters[20].Value.GetBoolean;
end;

function TDS43FileClient.setHospName(hospcode, hospname: string): boolean;
begin
  if FRp43OPD01HospNameSetCommand = nil then
  begin
    FRp43OPD01HospNameSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01HospNameSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01HospNameSetCommand.Text := ServerClassName + '.setHospName';
    FRp43OPD01HospNameSetCommand.Prepare;
  end;

  FRp43OPD01HospNameSetCommand.Parameters[0].Value.SetWideString(hospcode);
  FRp43OPD01HospNameSetCommand.Parameters[1].Value.SetWideString(hospname);

  FRp43OPD01HospNameSetCommand.ExecuteUpdate;
  Result := FRp43OPD01HospNameSetCommand.Parameters[2].Value.GetBoolean;
end;

function TDS43FileClient.syncAddressType1(PID: integer): boolean;
begin
  if FRp43OPD01AddressType1SyncCommand = nil then
  begin
    FRp43OPD01AddressType1SyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressType1SyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressType1SyncCommand.Text := ServerClassName + '.syncAddressType1';
    FRp43OPD01AddressType1SyncCommand.Prepare;
  end;

  FRp43OPD01AddressType1SyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AddressType1SyncCommand.ExecuteUpdate;
end;


function TDS43FileClient.syncAddressType2(PID: integer): boolean;
begin
  if FRp43OPD01AddressType2SyncCommand = nil then
  begin
    FRp43OPD01AddressType2SyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AddressType2SyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AddressType2SyncCommand.Text := ServerClassName + '.syncAddressType2';
    FRp43OPD01AddressType2SyncCommand.Prepare;
  end;

  FRp43OPD01AddressType2SyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AddressType2SyncCommand.ExecuteUpdate;
end;

function TDS43FileClient.syncAdmissionList(PID: integer): boolean;
begin
  if FRp43OPD01AdmissionListSyncCommand = nil then
  begin
    FRp43OPD01AdmissionListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AdmissionListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AdmissionListSyncCommand.Text := ServerClassName + '.syncAdmissionList';
    FRp43OPD01AdmissionListSyncCommand.Prepare;
  end;

  FRp43OPD01AdmissionListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AdmissionListSyncCommand.ExecuteUpdate;
  Result := FRp43OPD01AdmissionListSyncCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.syncAppointmentList(PID: integer): boolean;
begin
  if FRp43OPD01AppointmentListSyncCommand = nil then
  begin
    FRp43OPD01AppointmentListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01AppointmentListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01AppointmentListSyncCommand.Text := ServerClassName + '.syncAppointmentList';
    FRp43OPD01AppointmentListSyncCommand.Prepare;
  end;

  FRp43OPD01AppointmentListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01AppointmentListSyncCommand.ExecuteUpdate;
  Result := FRp43OPD01AppointmentListSyncCommand.Parameters[1].Value.GetBoolean;
end;
function TDS43FileClient.syncCardList(PID: integer): boolean;
begin
  if FRp43OPD01CardListSyncCommand = nil then
  begin
    FRp43OPD01CardListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01CardListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01CardListSyncCommand.Text := ServerClassName + '.syncCardList';
    FRp43OPD01CardListSyncCommand.Prepare;
  end;

  FRp43OPD01CardListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01CardListSyncCommand.ExecuteUpdate;
end;


function TDS43FileClient.syncDeathList(PID: integer): boolean;
begin
  if FRp43OPD01DeathListSyncCommand = nil then
  begin
    FRp43OPD01DeathListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DeathListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DeathListSyncCommand.Text := ServerClassName + '.syncDeathList';
    FRp43OPD01DeathListSyncCommand.Prepare;
  end;

  FRp43OPD01DeathListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DeathListSyncCommand.ExecuteUpdate;
  Result := FRp43OPD01DeathListSyncCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.syncDiagnosisOpdList(PID: integer): boolean;
begin
  if FRp43OPD01DiagnosisListSyncCommand = nil then
  begin
    FRp43OPD01DiagnosisListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01DiagnosisListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01DiagnosisListSyncCommand.Text := ServerClassName + '.syncDiagnosisOpdList';
    FRp43OPD01DiagnosisListSyncCommand.Prepare;
  end;

  FRp43OPD01DiagnosisListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01DiagnosisListSyncCommand.ExecuteUpdate;
  Result := FRp43OPD01DiagnosisListSyncCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.syncIfxRecord(
  pid: integer;
  tableName, aloha_name,
  arrDFields,updateKeys: string): boolean;
begin
  if FRp43OPD01syncIfxRecordCommand = nil then
  begin
    FRp43OPD01syncIfxRecordCommand := FDBXConnection.CreateCommand;
    FRp43OPD01syncIfxRecordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01syncIfxRecordCommand.Text := ServerClassName + '.syncIfxRecord';
    FRp43OPD01syncIfxRecordCommand.Prepare;
  end;

  FRp43OPD01syncIfxRecordCommand.Parameters[0].Value.SetInt32(pid);
  FRp43OPD01syncIfxRecordCommand.Parameters[1].Value.SetWideString(tableName);
  FRp43OPD01syncIfxRecordCommand.Parameters[2].Value.SetWideString(aloha_name);
  FRp43OPD01syncIfxRecordCommand.Parameters[3].Value.SetWideString(arrDFields);
  FRp43OPD01syncIfxRecordCommand.Parameters[4].Value.SetWideString(updateKeys);

  FRp43OPD01syncIfxRecordCommand.ExecuteUpdate;
end;


function TDS43FileClient.syncLabOrList(PID: integer): boolean;
begin
  if FRp43OPD01LabOrListSyncCommand = nil then
  begin
    FRp43OPD01LabOrListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01LabOrListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01LabOrListSyncCommand.Text := ServerClassName + '.syncLabOrList';
    FRp43OPD01LabOrListSyncCommand.Prepare;
  end;

  FRp43OPD01LabOrListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01LabOrListSyncCommand.ExecuteUpdate;
  Result := FRp43OPD01LabOrListSyncCommand.Parameters[1].Value.GetBoolean;
end;

procedure TDS43FileClient.syncPerson(CID: string);
begin
  if FRp43OPD01PersonSyncCommand = nil then
  begin
    FRp43OPD01PersonSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PersonSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonSyncCommand.Text := ServerClassName + '.syncPerson';
    FRp43OPD01PersonSyncCommand.Prepare;
  end;

  FRp43OPD01PersonSyncCommand.Parameters[0].Value.SetWideString(CID);
  FRp43OPD01PersonSyncCommand.ExecuteUpdate;
end;

function TDS43FileClient.syncProcedureOpdList(PID: integer): boolean;
begin
  if FRp43OPD01ProcedureOpdListSyncCommand = nil then
  begin
    FRp43OPD01ProcedureOpdListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ProcedureOpdListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ProcedureOpdListSyncCommand.Text := ServerClassName + '.syncProcedureOpdList';
    FRp43OPD01ProcedureOpdListSyncCommand.Prepare;
  end;

  FRp43OPD01ProcedureOpdListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ProcedureOpdListSyncCommand.ExecuteUpdate;
  Result := FRp43OPD01ProcedureOpdListSyncCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.syncServiceList(PID: integer): boolean;
begin
  if FRp43OPD01ServiceListSyncCommand = nil then
  begin
    FRp43OPD01ServiceListSyncCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ServiceListSyncCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ServiceListSyncCommand.Text := ServerClassName + '.syncServiceList';
    FRp43OPD01ServiceListSyncCommand.Prepare;
  end;

  FRp43OPD01ServiceListSyncCommand.Parameters[0].Value.SetInt32(PID);
  FRp43OPD01ServiceListSyncCommand.ExecuteUpdate;
  Result := FRp43OPD01ServiceListSyncCommand.Parameters[1].Value.GetBoolean;
end;

function TDS43FileClient.WriteClientLog(Msg: string): boolean;
begin
  if FRp43OPD01ClientLogSetCommand = nil then
  begin
    FRp43OPD01ClientLogSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01ClientLogSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01ClientLogSetCommand.Text := ServerClassName + '.WriteClientLog';
    FRp43OPD01ClientLogSetCommand.Prepare;
  end;

  FRp43OPD01ClientLogSetCommand.Parameters[0].Value.SetWideString(Msg);
  FRp43OPD01ClientLogSetCommand.ExecuteUpdate;
  Result := FRp43OPD01ClientLogSetCommand.Parameters[1].Value.GetBoolean;
end;

{
function TDS43FileClient.InsUpdPerson(
  REPORTID: Integer; HOSPCODE, CID,
  PID, HID, PRENAME, NAME, LNAME, HN, SEX: String; BIRTH: Double; MSTATUS,
  OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION, EDUCATION,
  FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: String; MOVEIN: Double;
  DISCHARGE: String; DDISCHARGE: Double; ABOGROUP, RHGROUP, LABOR,
  PASSPORT, TYPEAREA: String; D_UPDATE, EXPORT_DATE: double): boolean;
begin
  if FRp43OPD01PersonSetCommand = nil then
  begin
    FRp43OPD01PersonSetCommand := FDBXConnection.CreateCommand;
    FRp43OPD01PersonSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRp43OPD01PersonSetCommand.Text := ServerClassName + '.InsUpdPerson';
    FRp43OPD01PersonSetCommand.Prepare;
  end;

FRp43OPD01PersonSetCommand.Parameters[0].Value.SetInt32(REPORTID);
FRp43OPD01PersonSetCommand.Parameters[1].Value.SetWideString(HOSPCODE);
FRp43OPD01PersonSetCommand.Parameters[2].Value.SetWideString(CID);

FRp43OPD01PersonSetCommand.Parameters[3].Value.SetWideString(PID);
FRp43OPD01PersonSetCommand.Parameters[4].Value.SetWideString(HID);
FRp43OPD01PersonSetCommand.Parameters[5].Value.SetWideString(PRENAME);
FRp43OPD01PersonSetCommand.Parameters[6].Value.SetWideString(NAME);
FRp43OPD01PersonSetCommand.Parameters[7].Value.SetWideString(LNAME);
FRp43OPD01PersonSetCommand.Parameters[8].Value.SetWideString(HN);
FRp43OPD01PersonSetCommand.Parameters[9].Value.SetWideString(SEX);
FRp43OPD01PersonSetCommand.Parameters[10].Value.SetDouble(BIRTH);
FRp43OPD01PersonSetCommand.Parameters[11].Value.SetWideString(MSTATUS);
FRp43OPD01PersonSetCommand.Parameters[12].Value.SetWideString(OCCUPATION_OLD);
FRp43OPD01PersonSetCommand.Parameters[13].Value.SetWideString(OCCUPATION_NEW);
FRp43OPD01PersonSetCommand.Parameters[14].Value.SetWideString(RACE);
FRp43OPD01PersonSetCommand.Parameters[15].Value.SetWideString(NATION);
FRp43OPD01PersonSetCommand.Parameters[16].Value.SetWideString(RELIGION);
FRp43OPD01PersonSetCommand.Parameters[17].Value.SetWideString(EDUCATION);
FRp43OPD01PersonSetCommand.Parameters[18].Value.SetWideString(FSTATUS);
FRp43OPD01PersonSetCommand.Parameters[19].Value.SetWideString(FATHER);
FRp43OPD01PersonSetCommand.Parameters[20].Value.SetWideString(MOTHER);
FRp43OPD01PersonSetCommand.Parameters[21].Value.SetWideString(COUPLE);

FRp43OPD01PersonSetCommand.Parameters[22].Value.SetWideString(VSTATUS);
FRp43OPD01PersonSetCommand.Parameters[23].Value.SetDouble(MOVEIN);
FRp43OPD01PersonSetCommand.Parameters[24].Value.SetWideString(DISCHARGE);
FRp43OPD01PersonSetCommand.Parameters[25].Value.SetDouble(DDISCHARGE);
FRp43OPD01PersonSetCommand.Parameters[26].Value.SetWideString(ABOGROUP);
FRp43OPD01PersonSetCommand.Parameters[27].Value.SetWideString(RHGROUP);
FRp43OPD01PersonSetCommand.Parameters[28].Value.SetWideString(LABOR);
FRp43OPD01PersonSetCommand.Parameters[29].Value.SetWideString(PASSPORT);
FRp43OPD01PersonSetCommand.Parameters[30].Value.SetWideString(TYPEAREA);
FRp43OPD01PersonSetCommand.Parameters[31].Value.SetDouble(D_UPDATE);

FRp43OPD01PersonSetCommand.Parameters[32].Value.SetDouble(EXPORT_DATE);
//FRp43OPD01PersonSetCommand.Parameters[33].Value.SetBoolean(true);
//FRp43OPD01PersonSetCommand.Parameters[34].Value.SetDouble(0);


  FRp43OPD01PersonSetCommand.ExecuteUpdate;
  Result := FRp43OPD01PersonSetCommand.Parameters[33].Value.GetBoolean;
end;


}
{ TPerson4 }

procedure TPerson4.SetFNAME(const Value: string);
begin
  FFNAME := Value;
end;

procedure TPerson4.SetLNAME(const Value: string);
begin
  FLNAME := Value;
end;

end.
