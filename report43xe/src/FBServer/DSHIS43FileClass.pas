unit DSHIS43FileClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.math,
  DSMainClass, DataSnap.Provider, Data.DB, Data.sqlExpr, Data.FMTBcd,
  Data.DBXFirebird, Data.Win.ADODB, DSServerConstant, DSHISMainClass,DateUtils,
  Datasnap.DBClient, Vcl.Forms,System.zip, Vcl.Dialogs, Dataset2Excel;

type

  TDSHIS43File = class(TDSMain)
    dsHisStGetCde: TSQLQuery;
    dspHisStGetCde: TDataSetProvider;
    dsGetReport43Person: TSQLQuery;
    dspGetReport43Person: TDataSetProvider;
    dsHisGetReport43Service: TSQLQuery;
    dspHisGetReport43Service: TDataSetProvider;
    cdsReport43Person: TClientDataSet;
    dsUpdReport43Person: TSQLQuery;
    dsGetReport43Service: TSQLQuery;
    dspGetReport43Service: TDataSetProvider;
    dsGetReport43DiagnosisOpd: TSQLQuery;
    dspGetReport43DiagnosisOpd: TDataSetProvider;
    cdsReport43Temp: TClientDataSet;
    dsGetReport43ServiceList: TSQLQuery;
    dspGetReport43ServiceList: TDataSetProvider;
    dsGetReport43DiagnosisOpdList: TSQLQuery;
    dspGetReport43DiagnosisOpdList: TDataSetProvider;
    dsGetReport43ProcedureOpd: TSQLQuery;
    dspGetReport43ProcedureOpd: TDataSetProvider;
    dsGetReport43ProcedureOpdList: TSQLQuery;
    dspGetReport43ProcedureOpdList: TDataSetProvider;
    dsGetReport43DrugOpd: TSQLQuery;
    dspGetReport43DrugOpd: TDataSetProvider;
    dsGetReport43DrugOpdList: TSQLQuery;
    dspGetReport43DrugOpdList: TDataSetProvider;
    dsGetReport43Appointment: TSQLQuery;
    dspGetReport43Appointment: TDataSetProvider;
    dsGetReport43AppointmentList: TSQLQuery;
    dspGetReport43AppointmentList: TDataSetProvider;
    dsGetReport43Anc: TSQLQuery;
    dspGetReport43Anc: TDataSetProvider;
    dsGetReport43AncList: TSQLQuery;
    dspGetReport43AncList: TDataSetProvider;
    dsGetReport43Prenatal: TSQLQuery;
    dspGetReport43Prenatal: TDataSetProvider;
    dsGetReport43PrenatalList: TSQLQuery;
    dspGetReport43PrenatalList: TDataSetProvider;
    dsGetReport43Postnatal: TSQLQuery;
    dspGetReport43Postnatal: TDataSetProvider;
    dsGetReport43PostnatalList: TSQLQuery;
    dspGetReport43PostnatalList: TDataSetProvider;
    dsGetReport43LabOr: TSQLQuery;
    dscGetReport43LabOr: TDataSetProvider;
    dsGetReport43LabOrList: TSQLQuery;
    dspGetReport43LabOrList: TDataSetProvider;
    dsGetReport43Women: TSQLQuery;
    dspGetReport43Women: TDataSetProvider;
    dsGetReport43WomenList: TSQLQuery;
    dspGetReport43WomenList: TDataSetProvider;
    dsGetReport43Fp: TSQLQuery;
    cdsGetReport43Fp: TDataSetProvider;
    dsGetReport43FpList: TSQLQuery;
    cdsGetReport43FpList: TDataSetProvider;
    dsGetReport43Epi: TSQLQuery;
    dspGetReport43Epi: TDataSetProvider;
    dsGetReport43EpiList: TSQLQuery;
    dspGetReport43EpiList: TDataSetProvider;
    dsGetReport43IcfList: TSQLQuery;
    dspGetReport43IcfList: TDataSetProvider;
    dsGetReport43Icf: TSQLQuery;
    dspGetReport43Icf: TDataSetProvider;
    dsGetReport43SpecialPpList: TSQLQuery;
    dspGetReport43SpecialPpList: TDataSetProvider;
    dsGetReport43SpecialPp: TSQLQuery;
    dspGetReport43SpecialPp: TDataSetProvider;
    dsGetReport43ChronicList: TSQLQuery;
    dspGetReport43ChronicList: TDataSetProvider;
    dsGetReport43Chronic: TSQLQuery;
    dspGetReport43Chronic: TDataSetProvider;
    dsGetReport43ChronicFuList: TSQLQuery;
    dspGetReport43ChronicFuList: TDataSetProvider;
    dsGetReport43ChronicFu: TSQLQuery;
    dspGetReport43ChronicFu: TDataSetProvider;
    dsGetReport43NutritionList: TSQLQuery;
    dspGetReport43NutritionList: TDataSetProvider;
    dsGetReport43Nutrition: TSQLQuery;
    dspGetReport43Nutrition: TDataSetProvider;
    dsGetReport43DeathList: TSQLQuery;
    dspGetReport43DeathList: TDataSetProvider;
    dsGetReport43Death: TSQLQuery;
    dspGetReport43Death: TDataSetProvider;
    dsGetReport43CardList: TSQLQuery;
    dspGetReport43CardList: TDataSetProvider;
    dsGetReport43Card: TSQLQuery;
    dspGetReport43Card: TDataSetProvider;
    dsGetReport43DrugallergyList: TSQLQuery;
    dspGetReport43DrugallergyList: TDataSetProvider;
    dsGetReport43Drugallergy: TSQLQuery;
    dspGetReport43Drugallergy: TDataSetProvider;
    dsGetReport43AccidentList: TSQLQuery;
    dspGetReport43AccidentList: TDataSetProvider;
    dsGetReport43Accident: TSQLQuery;
    dspGetReport43Accident: TDataSetProvider;
    dsGetReport43ChargeOpdList: TSQLQuery;
    dspGetReport43ChargeOpdList: TDataSetProvider;
    dsGetReport43ChargeOpd: TSQLQuery;
    dspGetReport43ChargeOpd: TDataSetProvider;
    dsGetReport43AdmissionList: TSQLQuery;
    dspGetReport43AdmissionList: TDataSetProvider;
    dsGetReport43Admission: TSQLQuery;
    dspGetReport43Admission: TDataSetProvider;
    dsGetReport43DiagnosisIpdList: TSQLQuery;
    dspGetReport43DiagnosisIpdList: TDataSetProvider;
    dsGetReport43DiagnosisIpd: TSQLQuery;
    dspGetReport43DiagnosisIpd: TDataSetProvider;
    dsGetReport43ProcedureIpdList: TSQLQuery;
    dspGetReport43ProcedureIpdList: TDataSetProvider;
    dsGetReport43ProcedureIpd: TSQLQuery;
    dspGetReport43ProcedureIpd: TDataSetProvider;
    dsGetReport43DrugIpdList: TSQLQuery;
    dspGetReport43DrugIpdList: TDataSetProvider;
    dsGetReport43DrugIpd: TSQLQuery;
    dspGetReport43DrugIpd: TDataSetProvider;
    dsGetReport43ChargeIpdList: TSQLQuery;
    dspGetReport43ChargeIpdList: TDataSetProvider;
    dsGetReport43ChargeIpd: TSQLQuery;
    dspGetReport43ChargeIpd: TDataSetProvider;
    dsGetReport43SurveillanceList: TSQLQuery;
    dspGetReport43SurveillanceList: TDataSetProvider;
    dsGetReport43Surveillance: TSQLQuery;
    dspGetReport43Surveillance: TDataSetProvider;
    dsGetReport43NewbornList: TSQLQuery;
    dspGetReport43NewbornList: TDataSetProvider;
    dsGetReport43Newborn: TSQLQuery;
    dspGetReport43Newborn: TDataSetProvider;
    dsGetReport43NewBornCareList: TSQLQuery;
    dspGetReport43NewBornCareList: TDataSetProvider;
    dsGetReport43NewBornCare: TSQLQuery;
    dspGetReport43NewBornCare: TDataSetProvider;
    dsGetReport43DentalList: TSQLQuery;
    dspGetReport43DentalList: TDataSetProvider;
    dsGetReport43Dental: TSQLQuery;
    dspGetReport43Dental: TDataSetProvider;
    dsGetReport43NcdscreenList: TSQLQuery;
    dspGetReport43NcdscreenList: TDataSetProvider;
    dsGetReport43Ncdscreen: TSQLQuery;
    dspGetReport43Ncdscreen: TDataSetProvider;
    dsGetReport43LabFuList: TSQLQuery;
    dspGetReport43LabFuList: TDataSetProvider;
    dsGetReport43LabFu: TSQLQuery;
    dspGetReport43LabFu: TDataSetProvider;
    dsKeywords: TSQLQuery;
    dspKeywords: TDataSetProvider;
    dsGetHospName: TSQLQuery;
    dspGetHospName: TDataSetProvider;
    dsGetIcd10List: TSQLQuery;
    dspGetIcd10List: TDataSetProvider;
    dsGetIcd9List: TSQLQuery;
    dspGetIcd9List: TDataSetProvider;
    dsGetReport43AddressList: TSQLQuery;
    dspGetReport43AddressList: TDataSetProvider;
    dsGetReport43Address: TSQLQuery;
    dspGetReport43Address: TDataSetProvider;
    dsGetTumbonList: TSQLQuery;
    dspGetTumbonList: TDataSetProvider;
    dsGetAmp: TSQLQuery;
    dspGetAmp: TDataSetProvider;
    dsGetProvince: TSQLQuery;
    dspGetProvince: TDataSetProvider;
    dsGetTumbon: TSQLQuery;
    dspGetTumbon: TDataSetProvider;
    dsGetIcd10: TSQLQuery;
    dspGetIcd10: TDataSetProvider;
    dsGetIcd9: TSQLQuery;
    dspGetIcd9: TDataSetProvider;
    dsGetReport43HomeList: TSQLQuery;
    dspGetReport43HomeList: TDataSetProvider;
    dsGetReport43Home: TSQLQuery;
    dspGetReport43Home: TDataSetProvider;
    MYSQLQuery: TSQLQuery;
    dspMYSQL: TDataSetProvider;
    cdsMYSQL: TClientDataSet;
    dsGetReport43AddressType1: TSQLQuery;
    dspGetReport43AddressType1: TDataSetProvider;
    dsGetReport43AddressType2: TSQLQuery;
    dspGetReport43AddressType2: TDataSetProvider;
    dsGetDefaultValue: TSQLQuery;
    dspGetDefaultValue: TDataSetProvider;
    dsGetPageList: TSQLQuery;
    dspGetPageList: TDataSetProvider;
    dsGetDoc: TSQLQuery;
    dspGetDocrun: TDataSetProvider;
    dspGetreport43Community_Servicelist: TDataSetProvider;
    dsGetReport43Community_servicelist: TSQLQuery;
    dsGetReport43Community_Activitylist: TSQLQuery;
    dspGetreport43Community_Activitylist: TDataSetProvider;
    SQLQuery1: TSQLQuery;
    dsGetReport43Village: TSQLQuery;
    dspGetReport43Village: TDataSetProvider;
    Dataset2Excel1: TDataset2Excel;
    dsSettingGetHospName: TSQLQuery;
    dspSettingGetHospName: TDataSetProvider;
    dsGetBathList: TSQLQuery;
    dspGetBathList: TDataSetProvider;
    dsGetBatchDetail: TSQLQuery;
    dspGetBatchDetail: TDataSetProvider;
    dsGetBatchError: TSQLQuery;
    dspGetBatchError: TDataSetProvider;
    dsGetBatchErrorByFilename: TSQLQuery;
    dspGetBatchErrorByFilename: TDataSetProvider;
    dsGetBatchErrorGrpByFilename: TSQLQuery;
    dspGetBatchErrorGrpByFilename: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
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
    function getHN(PID:integer):string;
    function ExportTXTFile(fileName,strSQL:string):boolean;
    function ExportUTF8TXTFile(fileName,strSQL:string):boolean;
    function DownloadFile(sFilePath: string): TStream;
    function GetDoc(DOC_TYPE:string):boolean;

    function inarr(str,batchcode: string;arr: array of string): boolean;
    function ExportAllFile(batchcode,zipfName,fileName:string;dd,month,year,_dd,_month,_year:integer):boolean;
    function CheckService(dd,month,year,_dd,_month,_year:integer):boolean;
    function getServerVersion:string;


    function getBatchList():boolean;
    function getBatchDetail(batchcode:string):boolean;
    function getBatchError(batchcode:string):boolean;
    function getBatchErrorByGrpFileName(batchcode:string):boolean;
    function getBatchErrorByFileName(batchcode,filename:string):boolean;

    function getHospName(hospcode,hospname:string):boolean;
    function setHospName(hospcode,hospname:string):boolean;

    function getPerson(CID:string):boolean;
    procedure syncPerson(CID:string);
    function InsUpdPerson(
      REPORTID: Integer;
      HOSPCODE,
      CID:string;
      PID:integer;
      HID,
      PRENAME,
      FNAME,
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
      {TYPEAREA: String{;
      D_UPDATE,
      EXPORT_DATE: double }
    ):boolean;

    function checkPersonArea1(PID:integer):boolean;
    function checkPersonArea2(PID:integer):boolean;
    function checkPersonArea3(PID:integer):boolean;
    function checkPersonArea4(PID:integer):boolean;
    function checkPersonArea5(PID:integer):boolean;

//    function InsUpd(tableName:string;_data:TVariantList)

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
    function syncDiagnosisOpdList(PID:integer):boolean;
    function getDiagnosisOpdList(PID,SEQ:integer):boolean;
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
    function syncLabOrList(PID:integer):boolean;

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

    function syncIfxRecord(wfName:string;wfValue:integer;tableName,aloha_name,arrDFields,updateKeys:string):boolean;
    function syncIfxRecordA(wfName:string;wfValue:string;tableName,aloha_name,arrDFields,updateKeys:string):boolean;
    function syncIfxRecordAFSQL(wfName, wfValue, tableName,ifxSQL, arrDFields, updateKeys: string): boolean;
    function syncIfxRecordSet(wfName:string;wfValue:integer;tableName,aloha_name,arrDFields,updateKeys:string):boolean;

    function syncDeath(PID:integer):boolean;
    function getDeathList(PID:integer):boolean;
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
    procedure syncCard(PID,INSTYPE_NEW:string;DUPDATE:double);
    function getCardList(PID:integer):boolean;
    function syncCardList(PID:integer):boolean;

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

    function getCde(cde:string):integer;
    function getCdeRunWithLen(_base:integer;cde:string;cdelen:integer):integer;
    function getNewPID:integer;

    function getPageList(dep,station,loc:string):boolean;
    //###SYNC####





 end;

var
  DSSetup: TDSHIS43File;
  qryDental,qryHome,gryVillage:TSQLQuery;

implementation

{$R *.dfm}

uses MainServerForm;


{ TDSHIS43File }

function TDSHIS43File.checkPersonArea1(PID: integer): boolean;
var cdsTemp:TClientDataSet;
begin
  cdsTemp:=TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet(
  ' SELECT per.PID,1 as recno,1 as TYPEAREA1 from report43_person per,report43_address adr,report43_card crd where adr.changwat=''20'' and adr.AMPUR=''07'' and adr.TAMBON=''01'' '+
  '	and adr.ADDRESSTYPE=1   '+
  '	and per.PID=adr.PID   '+
  '	and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402)   '+
  '	and crd.HOSPCODE =13754  '+
  'and per.PID='+IntToStr(PID)
    );
  result:=cdsTemp.RecordCount>0;
end;

function TDSHIS43File.checkPersonArea2(PID: integer): boolean;
var cdsTemp:TClientDataSet;
begin
  cdsTemp:=TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet(
  ' select per.PID,2 as recno,2 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat=''20'' and adr.AMPUR=''07'' and adr.TAMBON=''01'' '+
	' and adr.ADDRESSTYPE=1 '+
	' and per.PID=adr.PID '+
	' and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402) '+
	' and crd.HOSPCODE <> 13754 '+
  'and per.PID='+IntToStr(PID)
    );
  result:=cdsTemp.RecordCount>0;
end;

function TDSHIS43File.checkPersonArea3(PID: integer): boolean;
var cdsTemp:TClientDataSet;
begin
  cdsTemp:=TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet(
  ' select per.PID,3 as recno,3 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat <>''20'' and adr.AMPUR <>''07'' and adr.TAMBON <>''01'' '+
	' and adr.ADDRESSTYPE=1    '+
	' and per.PID=adr.PID '+
	' and crd.INSTYPE_NEW IN (0100)   '+
	' and crd.HOSPCODE = 13754  '+
  ' and per.PID='+IntToStr(PID)
    );
  result:=cdsTemp.RecordCount>0;
end;

function TDSHIS43File.checkPersonArea4(PID: integer): boolean;
var cdsTemp:TClientDataSet;
begin
  cdsTemp:=TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet(
  ' select per.PID,4 as recno,4 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat <>''20'' and adr.AMPUR <>''07'' and adr.TAMBON <>''01'' '+
  '  and adr.ADDRESSTYPE=1 '+
  '  and per.PID=adr.PID '+
  '  and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402) '+
  '  and crd.HOSPCODE <> 13754 '+
  ' and per.PID='+IntToStr(PID)
    );
  result:=cdsTemp.RecordCount>0;
end;

function TDSHIS43File.checkPersonArea5(PID: integer): boolean;
var cdsTemp:TClientDataSet;
begin
  cdsTemp:=TClientDataSet.Create(nil);
  cdsTemp.data := GetDataSet(
  ' select per.PID,5 as recno,4 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat <>''20'' and adr.AMPUR <>''07'' and adr.TAMBON <>''01'' '+
	' and adr.ADDRESSTYPE=1 '+
	' and per.PID=adr.PID  '+
	' and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402)  '+
	' and crd.HOSPCODE = 13754  '+
  ' and per.PID='+IntToStr(PID)
    );
  result:=cdsTemp.RecordCount>0;
end;

function TDSHIS43File.CheckService(dd,month,year,_dd,_month,_year:integer): boolean;
var cdsCurrService,cdsCurrPerson:TClientDataSet;
    strWhere,HN:string;
begin
  strWhere:=' where year(D_UPDATE)>='+inttostr(year)+' and month(D_UPDATE)>='+FormatCurr('00',month)+' and day(D_UPDATE)>='+FormatCurr('00',dd);
  strWhere:=strWhere+' and year(D_UPDATE)<='+inttostr(_year)+' and month(D_UPDATE)<='+FormatCurr('00',_month)+' and day(D_UPDATE)<='+FormatCurr('00',_dd);

   cdsCurrService := TClientDataSet.Create(nil);
   cdsCurrPerson:=TClientDataSet.Create(nil);
   try
     cdsCurrService.data :=GetDataSet(
     ' SELECT  '+
     ' HOSPCODE,  '+
     ' PID,  '+
     ' HN,  '+
     ' SEQ,  '+
     ' DATE_SERV,  '+
     ' TIME_SERV,  '+
     ' LOCATION,  '+
     ' INTIME,  '+
     ' INSTYPE,  '+
     ' INSID,  '+
     ' MAIN,  '+
     ' TYPEIN,  '+
     ' REFERINHOSP,  '+
     ' CAUSEIN,  '+
     ' CHIEFCOMP,  '+
     ' SERVPLACE,  '+
     ' BTEMP,  '+
     ' SBP,  '+
     ' DBP,  '+
     ' PR,  '+
     ' RR,  '+
     ' TYPEOUT,  '+
     ' REFEROUTHOSP,  '+
     ' CAUSEOUT,  '+
     ' COST,  '+
     ' PRICE,  '+
     ' PAYPRICE,  '+
     ' ACTUALPAY,  '+
     ' D_UPDATE '+
     ' FROM report43_service '+strWhere
     );
     HN:='';
     cdsCurrService.First;
     while not cdsCurrService.Eof do
     begin
       HN:=getHN(cdsCurrService.FieldByName('PID').AsInteger);
       if HN<>'' then
       begin
         cdsCurrPerson.data :=GetDataSet('select * from report43_person where HN='+HN);
         if cdsCurrPerson.RecordCount<=0 then
         begin
            syncPerson(HN);
         end;
       end;
      cdsCurrService.Next;
     end;



   finally
     cdsCurrService.free;
     cdsCurrPerson.Free;
   end;
end;

function TDSHIS43File.DownloadFile(sFilePath: string): TStream;
var
  strFileStream: TFileStream;
begin
  if not FileExists(sFilePath) then Write('FileName:'+sFilePath+' not exists!!!.');
    strFileStream := TFileStream.Create(sFilePath, fmOpenRead);
    Result := strFileStream;
end;

function TDSHIS43File.ExportAllFile(batchcode,zipfName,fileName: string;dd,month,year,_dd,_month,_year:integer): boolean;
var strWhere:string;

   strArr : array of string;
   dx,strArrCount : integer;
   ns : string;
   txt : string;
   delta,kk : integer;
   value , delimiter,zipXLSfName  : string;

   Zip,ExcelZip : TZipFile;


   ExportPath:string;
   resultexpt:boolean;

   IsExportXLS : boolean;


begin
  resultexpt:=false;
  IsExportXLS :=false;
  ExportPath:= 'exports\';
  zipfName :=ExportPath+zipfName;
  zipXLSfName := ExportPath+'excel.zip';
  if FileExists(zipfName) then DeleteFile(zipfName);
  if FileExists(zipXLSfName) then DeleteFile(zipXLSfName);


  Zip := TZipFile.Create;
  if IsExportXLS then
  ExcelZip := TZipFile.Create;

  try
    Zip.Open(zipfName, zmWrite);
    if IsExportXLS then
    ExcelZip.Open(zipXLSfName, zmWrite);


    strWhere:=' where year(D_UPDATE)>='+inttostr(year)+' and month(D_UPDATE)>='+FormatCurr('00',month)+' and day(D_UPDATE)>='+FormatCurr('00',dd);
    strWhere:=strWhere+' and year(D_UPDATE)<='+inttostr(_year)+' and month(D_UPDATE)<='+FormatCurr('00',_month)+' and day(D_UPDATE)<='+FormatCurr('00',_dd);
    //strWhere:='';

    WriteLog(' Phase I: Check Service...');


     strArrCount:=0;
     value := fileName;
     delimiter:=';';

     delta := Length(delimiter);
     txt := value + delimiter;

       while Length(txt) > 0 do
       begin
         dx := Pos(delimiter, txt) ;
         ns := Copy(txt,0,dx-1) ;
         SetLength(strArr,strArrCount+1);
         strArr[strArrCount]:=ns;
         txt := Copy(txt,dx+delta,MaxInt) ;
         Inc(strArrCount);
       end;


    //CheckService(dd,month,year,_dd,_month,_year);
   WriteLog(' Phase II: Export Text file ...');
   WriteLog('         : '+fileName);

   //ExportTXTFile('person.txt',' select * from bluecross_xe.report43_person');

   //Exit;


    if inarr('PERSON',batchcode,strArr) then
    begin
     resultexpt:=ExportTXTFile('person.txt',
     ' SELECT '+
     ' 	HOSPCODE,  '+
     ' 	CID,  '+
     ' 	PID,  '+
     ' 	HID,  '+
     ' 	PRENAME,  '+
     ' 	NAME,  '+
     ' 	LNAME,  '+
     ' 	HN,  '+
     ' 	SEX,  '+
     ' 	BIRTH,  '+
     ' 	MSTATUS,  '+
     ' 	OCCUPATION_OLD,  '+
     ' 	OCCUPATION_NEW,  '+
     ' 	RACE,  '+
     ' 	NATION,  '+
     ' 	RELIGION,  '+
     ' 	EDUCATION,  '+
     ' 	FSTATUS,  '+
     ' 	FATHER,  '+
     ' 	MOTHER,  '+
     ' 	COUPLE,  '+
     ' 	VSTATUS,  '+
     ' 	MOVEIN,  '+
     ' 	DISCHARGE,  '+
     ' 	DDISCHARGE,  '+
     ' 	ABOGROUP,  '+
     ' 	RHGROUP,  '+
     ' 	LABOR,  '+
     ' 	PASSPORT,  '+
     ' 	TYPEAREA,  '+
     ' 	D_UPDATE '+
     ' FROM report43_person '+strWhere
      );
      if resultexpt then
      begin
       Zip.Add(ExportPath+'person.txt');
       if IsExportXLS then
       ExcelZip.Add(ExportPath+'person.xls');
      end;
    end;

    if inarr('ADDRESS',batchcode,strArr) then
    begin
      resultexpt:=ExportTXTFile('address.txt',
     ' SELECT  '+
     ' HOSPCODE,  '+
     ' PID,  '+
     ' ADDRESSTYPE,  '+
     ' HOUSE_ID,  '+
     ' HOUSETYPE,  '+
     ' ROOMNO,  '+
     ' CONDO,  '+
     ' HOUSENO,  '+
     ' SOISUB,  '+
     ' SOIMAIN,  '+
     ' ROAD,  '+
     ' VILLANAME,  '+
     ' VILLAGE,  '+
     ' TAMBON,  '+
     ' AMPUR,  '+
     ' CHANGWAT,  '+
     ' TELEPHONE,  '+
     ' MOBILE,  '+
     ' D_UPDATE  '+
     ' FROM report43_address '+strWhere);
      if resultexpt then
      begin
        Zip.Add(ExportPath+'address.txt');
        if IsExportXLS then
        ExcelZip.Add(ExportPath+'address.xls');
      end;
    end;

    (*


    ExportTXTFile('address_1.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' ADDRESSTYPE,  '+
   ' HOUSE_ID,  '+
   ' HOUSETYPE,  '+
   ' ROOMNO,  '+
   ' CONDO,  '+
   ' HOUSENO,  '+
   ' SOISUB,  '+
   ' SOIMAIN,  '+
   ' ROAD,  '+
   ' VILLANAME,  '+
   ' VILLAGE,  '+
   ' TAMBON,  '+
   ' AMPUR,  '+
   ' CHANGWAT,  '+
   ' TELEPHONE,  '+
   ' MOBILE,  '+
   ' D_UPDATE  '+
   ' FROM report43_address limit 500000'//+strWhere
    );

    ExportTXTFile('address_2.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' ADDRESSTYPE,  '+
   ' HOUSE_ID,  '+
   ' HOUSETYPE,  '+
   ' ROOMNO,  '+
   ' CONDO,  '+
   ' HOUSENO,  '+
   ' SOISUB,  '+
   ' SOIMAIN,  '+
   ' ROAD,  '+
   ' VILLANAME,  '+
   ' VILLAGE,  '+
   ' TAMBON,  '+
   ' AMPUR,  '+
   ' CHANGWAT,  '+
   ' TELEPHONE,  '+
   ' MOBILE,  '+
   ' D_UPDATE  '+
   ' FROM report43_address limit 500000,500000'//+strWhere
    );


    ExportTXTFile('address_3.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' ADDRESSTYPE,  '+
   ' HOUSE_ID,  '+
   ' HOUSETYPE,  '+
   ' ROOMNO,  '+
   ' CONDO,  '+
   ' HOUSENO,  '+
   ' SOISUB,  '+
   ' SOIMAIN,  '+
   ' ROAD,  '+
   ' VILLANAME,  '+
   ' VILLAGE,  '+
   ' TAMBON,  '+
   ' AMPUR,  '+
   ' CHANGWAT,  '+
   ' TELEPHONE,  '+
   ' MOBILE,  '+
   ' D_UPDATE  '+
   ' FROM report43_address limit 1000000,500000'//+strWhere
    );


    *)
  if inarr('DEATH',batchcode,strArr) then
  begin
   resultexpt:= ExportTXTFile('death.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' HOSPDEATH,  '+
   ' AN,  '+
   ' SEQ,  '+
   ' DDEATH,  '+
   ' CDEATH_A,  '+
   ' CDEATH_B,  '+
   ' CDEATH_C,  '+
   ' CDEATH_D,  '+
   ' ODISEASE,  '+
   ' CDEATH,  '+
   ' PREGDEATH,  '+
   ' PDEATH,  '+
   ' PROVIDER,  '+
   ' D_UPDATE  '+
   ' FROM report43_death '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'death.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'death.xls');
    end;
  end;

  if inarr('CARD',batchcode,strArr) then
  begin
    resultexpt:=ExportTXTFile('card.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' INSTYPE_OLD,  '+
   ' INSTYPE_NEW,  '+
   ' INSID,  '+
   ' STARTDATE,  '+
   ' EXPIREDATE,  '+
   ' MAIN,  '+
   ' SUB,  '+
   ' D_UPDATE '+
   ' FROM report43_card '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'card.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'card.xls');
   end;
  end;


  if inarr('DRUGALLERGY',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('drugallergy.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' DATERECORD,  '+
   ' DRUGALLERGY,  '+
   ' DNAME,  '+
   ' TYPEDX,  '+
   ' ALEVEL,  '+
   ' SYMPTOM,  '+
   ' INFORMANT,  '+
   ' INFORMHOSP,  '+
   ' D_UPDATE '+
   ' FROM report43_drugallergy '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'drugallergy.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'drugallergy.xls');
    end;
  end;

  if inarr('HOME',batchcode,strArr) then
  begin
   resultexpt :=  ExportTXTFile('home.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' HID,  '+
   ' HOUSE_ID,  '+
   ' HOUSETYPE,  '+
   ' ROOMNO,  '+
   ' CONDO,  '+
   ' HOUSE,  '+
   ' SOISUB,  '+
   ' SOIMAIN,  '+
   ' ROAD,  '+
   ' VILLANAME,  '+
   ' VILLAGE,  '+
   ' TAMBON,  '+
   ' AMPUR,  '+
   ' CHANGWAT,  '+
   ' TELEPHONE,  '+
   ' LATITUDE,  '+
   ' LONGITUDE,  '+
   ' NFAMILY,  '+
   ' LOCATYPE,  '+
   ' VHVID,  '+
   ' HEADID,  '+
   ' TOILET,  '+
   ' WATER,  '+
   ' WATERTYPE,  '+
   ' GARBAGE,  '+
   ' HOUSING,  '+
   ' DURABILITY,  '+
   ' CLEANLINESS,  '+
   ' VENTILATION,  '+
   ' LIGHT,  '+
   ' WATERTM,  '+
   ' MFOOD,  '+
   ' BCONTROL,  '+
   ' ACONTROL,  '+
   ' CHEMICAL,  '+
   ' OUTDATE '+
   ' D_UPDATE '+
   ' FROM report43_home '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'home.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'home.xls');
   end;
  end;


  if inarr('SERVICE',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('service.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' HN,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' TIME_SERV,  '+
   ' LOCATION,  '+
   ' INTIME,  '+
   ' INSTYPE,  '+
   ' INSID,  '+
   ' MAIN,  '+
   ' TYPEIN,  '+
   ' REFERINHOSP,  '+
   ' CAUSEIN,  '+
   ' CHIEFCOMP,  '+
   ' SERVPLACE,  '+
   ' BTEMP,  '+
   ' SBP,  '+
   ' DBP,  '+
   ' PR,  '+
   ' RR,  '+
   ' TYPEOUT,  '+
   ' REFEROUTHOSP,  '+
   ' CAUSEOUT,  '+
   ' COST,  '+
   ' PRICE,  '+
   ' PAYPRICE,  '+
   ' ACTUALPAY,  '+
   ' D_UPDATE '+
   ' FROM report43_service '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'service.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'service.xls');
    end;
  end;


  if inarr('APPOINTMENT',batchcode,strArr) then
  begin
    resultexpt:=ExportTXTFile('appointment.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' AN,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' CLINIC,  '+
   ' APDATE,  '+
   ' APTYPE,  '+
   ' APDIAG,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_appointment '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'appointment.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'appointment.xls');
    end;
  end;

  if inarr('ACCIDENT',batchcode,strArr) then
  begin
    resultexpt:=ExportTXTFile('accident.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATETIME_SERV,  '+
   ' DATETIME_AE,  '+
   ' AETYPE,  '+
   ' AEPLACE,  '+
   ' TYPEIN_AE,  '+
   ' TRAFFIC,  '+
   ' VEHICLE,  '+
   ' ALCOHOL,  '+
   ' NACROTIC_DRUG,  '+
   ' BELT,  '+
   ' HELMET,  '+
   ' AIRWAY,  '+
   ' STOPBLEED,  '+
   ' SPLINT,  '+
   ' FLUID,  '+
   ' URGENCY,  '+
   //' BTEMP,  '+
  // ' SBP,  '+
  // ' DBP,  '+
  // ' PR,  '+
  // ' RR,  '+
   ' COMA_EYE,  '+
   ' COMA_SPEAK,  '+
   ' COMA_MOVEMENT,  '+
   ' D_UPDATE '+
   ' FROM report43_accident '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'accident.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'accident.xls');
    end;
  end;

  if inarr('DIAGNOSIS_OPD',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('diagnosis_opd.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' DIAGTYPE,  '+
   ' DIAGCODE,  '+
   ' CLINIC,  '+
   ' PROVIDER,  '+
   ' D_UPDATE  '+
   ' FROM report43_diagnosis_opd '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'diagnosis_opd.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'diagnosis_opd.xls');
    end;
  end;


  if inarr('PROCEDURE_OPD',batchcode,strArr) then
  begin
    resultexpt:=ExportTXTFile('procedure_opd.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' CLINIC,  '+
   ' PROCEDCODE,  '+
   ' SERVICEPRICE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_procedure_opd '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'procedure_opd.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'procedure_opd.xls');
    end;
  end;


  if inarr('DRUG_OPD',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('drug_opd.txt',
   ' SELECT   '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' CLINIC,  '+
   ' DIDSTD,  '+
   ' DNAME,  '+
   ' AMOUNT,  '+
   ' UNIT,  '+
   ' UNIT_PACKING,  '+
   ' DRUGPRICE,  '+
   ' DRUGCOST,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_drug_opd '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'drug_opd.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'drug_opd.xls');
    end;
  end;

  if inarr('CHARGE_OPD',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('charge_opd.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' CLINIC,  '+
   ' CHARGEITEM,  '+
   ' CHARGELIST,  '+
   ' QUANTITY,  '+
   ' INSTYPE,  '+
   ' COST,  '+
   ' PRICE,  '+
   ' PAYPRICE,  '+
   ' D_UPDATE '+
   ' FROM report43_charge_opd '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'charge_opd.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'charge_opd.xls');
   end;
  end;

  if inarr('ADMISSION',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('admission.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' AN,  '+
   ' DATETIME_ADMIT,  '+
   ' WARDADMIT,  '+
   ' INSTYPE,  '+
   ' TYPEIN,  '+
   ' REFERINHOSP,  '+
   ' CAUSEIN,  '+
   ' ADMITWEIGHT,  '+
   ' ADMITHEIGHT,  '+
   ' DATETIME_DISCH,  '+
   ' WARDDISCH,  '+
   ' DISCHSTATUS,  '+
   ' DISCHTYPE,  '+
   ' REFEROUTHOSP,  '+
   ' CAUSEOUT,  '+
   ' COST,  '+
   ' PRICE,  '+
   ' PAYPRICE,  '+
   ' ACTUALPAY,  '+
   ' PROVIDER,  '+
   ' D_UPDATE  '+
   ' FROM report43_admission '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'admission.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'admission.xls');
   end;
  end;

  if inarr('DIAGNOSIS_IPD',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('diagnosis_ipd.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' AN,  '+
   ' DATETIME_ADMIT,  '+
   ' WARDDIAG,  '+
   ' DIAGTYPE,  '+
   ' DIAGCODE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_diagnosis_ipd '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'diagnosis_ipd.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'diagnosis_ipd.xls');
   end;
  end;

  if inarr('PROCEDURE_IPD',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('procedure_ipd.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' AN,  '+
   ' DATETIME_ADMIT,  '+
   ' WARDSTAY,  '+
   ' PROCEDCODE,  '+
   ' TIMESTART,  '+
   ' TIMEFINISH,  '+
   ' SERVICEPRICE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_procedure_ipd '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'procedure_ipd.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'procedure_ipd.xls');
   end;
  end;


  if inarr('DRUG_IPD',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('drug_ipd.txt',
   ' SELECT   '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' AN,  '+
   ' DATETIME_ADMIT,  '+
   ' WARDSTAY,  '+
   ' TYPEDRUG,  '+
   ' DIDSTD,  '+
   ' DNAME,  '+
   ' DATESTART,  '+
   ' DATEFINISH,  '+
   ' AMOUNT,  '+
   ' UNIT,  '+
   ' UNIT_PACKING,  '+
   ' DRUGPRICE,  '+
   ' DRUGCOST,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_drug_ipd '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'drug_ipd.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'drug_ipd.xls');
   end;
  end;

  if inarr('CHARGE_IPD',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('charge_ipd.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' AN,  '+
   ' DATETIME_ADMIT,  '+
   ' WARDSTAY,  '+
   ' CHARGEITEM,  '+
   ' CHARGELIST,  '+
   ' QUANTITY,  '+
   ' INSTYPE,  '+
   ' COST,  '+
   ' PRICE,  '+
   ' PAYPRICE,  '+
   ' D_UPDATE  '+
   ' FROM report43_charge_ipd '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'charge_ipd.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'charge_ipd.xls');
   end;
  end;

  if inarr('SURVEILLANCE',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('surveillance.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' AN,  '+
   ' DATETIME_ADMIT,  '+
   ' SYNDROME,  '+
   ' DIAGCODE,  '+
   ' CODE506,  '+
   ' DIAGCODELAST,  '+
   ' CODE506LAST,  '+
   ' ILLDATE,  '+
   ' ILLHOUSE,  '+
   ' ILLVILLAGE,  '+
   ' ILLTAMBON,  '+
   ' ILLAMPUR,  '+
   ' ILLCHANGWAT,  '+
   ' LATITUDE,  '+
   ' LONGITUDE,  '+
   ' PTSTATUS,  '+
   ' DATE_DEATH,  '+
   ' COMPLICATION,  '+
   ' ORGANISM,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_surveillance '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'surveillance.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'surveillance.xls');
   end;
  end;

  if inarr('WOMEN',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('women.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' FPTYPE,  '+
   ' NOFPCAUSE,  '+
   ' TOTALSON,  '+
   ' NUMBERSON,  '+
   ' ABORTION,  '+
   ' STILLBIRTH,  '+
   ' D_UPDATE '+
   ' FROM report43_women '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'women.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'women.xls');
   end;
  end;

  if inarr('FP',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('fp.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' FPTYPE,  '+
   ' FPPLACE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_fp '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'fp.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'fp.xls');
    end;
  end;


  if inarr('EPI',batchcode,strArr) then
  begin
   resultexpt :=  ExportTXTFile('epi.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' VACCINETYPE,  '+
   ' VACCINEPLACE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_epi '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'epi.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'epi.xls');
   end;
  end;

  if inarr('NUTRITION',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('nutrition.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' NUTRITIONPLACE,  '+
   ' WEIGHT,  '+
   ' HEIGHT,  '+
   ' HEADCIRCUM,  '+
   ' CHILDDEVELOP,  '+
   ' FOOD,  '+
   ' BOTTLE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_nutrition '  +strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'nutrition.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'nutrition.xls');
   end;
  end;

  if inarr('PRENATAL',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('prenatal.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' GRAVIDA,  '+
   ' LMP,  '+
   ' EDC,  '+
   ' VDRL_RESULT,  '+
   ' HB_RESULT,  '+
   ' HIV_RESULT,  '+
   ' DATE_HCT,  '+
   ' HCT_RESULT,  '+
   ' THALASSEMIA,  '+
   ' D_UPDATE '+
   ' FROM report43_prenatal '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'prenatal.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'prenatal.xls');
    end;
  end;

  if inarr('ANC',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('anc.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' GRAVIDA,  '+
   ' ANCNO,  '+
   ' GA,  '+
   ' ANCRESULT,  '+
   ' ANCPLACE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_anc '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'anc.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'anc.xls');
   end;
  end;

  if inarr('LABOR',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('labor.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' GRAVIDA, '+
   ' LMP, '+
   ' EDC, '+
   ' BDATE, '+
   ' BRESULT,  '+
   ' BPLACE,  '+
   ' BHOSP,  '+
   ' BTYPE,  '+
   ' BDOCTOR,  '+
   ' LBORN,  '+
   ' SBORN,  '+
   ' D_UPDATE '+
   ' FROM report43_labor '+strWhere
    );
   if resultexpt then
   begin
    Zip.Add(ExportPath+'labor.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'labor.xls');
   end;
  end;

  if inarr('POSTNATAL',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('postnatal.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' GRAVIDA,  '+
   ' BDATE,  '+
   ' PPCARE,  '+
   ' PPPLACE,  '+
   ' PPRESULT,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_postnatal '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'postnatal.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'postnatal.xls');
   end;
  end;

  if inarr('NEWBORN',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('newborn.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' MPID,  '+
   ' GRAVIDA,  '+
   ' GA,  '+
   ' BDATE,  '+
   ' BTIME,  '+
   ' BPLACE,  '+
   ' BHOSP,  '+
   ' BIRTHNO,  '+
   ' BTYPE,  '+
   ' BDOCTOR,  '+
   ' BWEIGHT,  '+
   ' ASPHYXIA,  '+
   ' VITK,  '+
   ' TSH,  '+
   ' TSHRESULT,  '+
   ' D_UPDATE '+
   ' FROM report43_newborn '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'newborn.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'newborn.xls');
   end;
  end;

  if inarr('NEWBORNCARE',batchcode,strArr) then
  begin
   resultexpt :=  ExportTXTFile('newborncare.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' BDATE,  '+
   ' BCARE,  '+
   ' BCPLACE,  '+
   ' BCARERESULT,  '+
   ' FOOD,  '+
   ' PROVIDER,  '+
   ' D_UPDATE  '+
   ' FROM report43_newborncare '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'newborncare.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'newborncare.xls');
    end;
  end;


  if inarr('DENTAL',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('dental.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' DENTTYPE,  '+
   ' SERVPLACE,  '+
   ' PTEETH,  '+
   ' PCARIES,  '+
   ' PFILLING,  '+
   ' PEXTRACT,  '+
   ' DTEETH,  '+
   ' DCARIES,  '+
   ' DFILLING,  '+
   ' DEXTRACT,  '+
   ' NEED_FLUORIDE,  '+
   ' NEED_SCALING,  '+
   ' NEED_SEALANT,  '+
   ' NEED_PFILLING,  '+
   ' NEED_DFILLING,  '+
   ' NEED_PEXTRACT,  '+
   ' NEED_DEXTRACT,  '+
   ' NPROSTHESIS,  '+
   ' PERMANENT_PERMANENT,  '+
   ' PERMANENT_PROSTHESIS,  '+
   ' PROSTHESIS_PROSTHESIS,  '+
   ' GUM,  '+
   ' SCHOOLTYPE,  '+
   ' CLASS,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_dental ' +strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'dental.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'dental.xls');
    end;
  end;

  if inarr('SPECIALPP',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('specialpp.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' SERVPLACE,  '+
   ' PPSPECIAL,  '+
   ' PPSPLACE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_specialpp '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'specialpp.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'specialpp.xls');
   end;
  end;

  if inarr('NCDSCREEN',batchcode,strArr) then
  begin
   resultexpt:= ExportTXTFile('ncdscreen.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV, '+
   ' SERVPLACE,  '+
   ' SMOKE,  '+
   ' ALCOHOL,  '+
   ' DMFAMILY,  '+
   ' HTFAMILY,  '+
   ' WEIGHT,  '+
   ' HEIGHT,  '+
   ' WAIST_CM,  '+
   ' SBP_1,  '+
   ' DBP_1,  '+
   ' SBP_2,  '+
   ' DBP_2,  '+
   ' BSLEVEL,  '+
   ' BSTEST,  '+
   ' SCREENPLACE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_ncdscreen '+strWhere
    );
   if resultexpt then
   begin
    Zip.Add(ExportPath+'ncdscreen.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'ncdscreen.xls');
   end;
  end;

  if inarr('CHRONIC',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('chronic.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' DATE_DIAG, '+
   ' CHRONIC,  '+
   ' HOSP_DX,  '+
   ' HOSP_RX,  '+
   ' DATE_DISCH, '+
   ' TYPEDISCH,  '+
   ' D_UPDATE '+
   ' FROM report43_chronic '+strWhere
    ) ;
    if resultexpt then
    begin
    Zip.Add(ExportPath+'chronic.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'chronic.xls');
    end;
  end;

  if inarr('CHRONICFU',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('chronicfu.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV, '+
   ' WEIGHT,  '+
   ' HEIGHT,  '+
   ' WAIST_CM,  '+
   ' SBP,  '+
   ' DBP,  '+
   ' FOOT,  '+
   ' RETINA,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_chronicfu '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'chronicfu.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'chronicfu.xls');
    end;
  end;


    if inarr('LABFU',batchcode,strArr) then
    begin
     resultexpt:= ExportTXTFile('labfu.txt',
     ' SELECT  '+
     ' HOSPCODE,  '+
     ' PID,  '+
     ' SEQ,  '+
     ' DATE_SERV,  '+
     ' LABTEST,  '+
     ' LABRESULT,  '+
     ' D_UPDATE '+
     ' FROM report43_labfu '+strWhere
      ) ;
     if resultexpt then
     begin
      Zip.Add(ExportPath+'labfu.txt');
      if IsExportXLS then
       ExcelZip.Add(ExportPath+'labfu.xls');
     end;
    end;

    (*
    ExportTXTFile('labfu.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV,  '+
   ' LABTEST,  '+
   ' LABRESULT,  '+
   ' D_UPDATE '+
   ' FROM report43_labfu '+strWhere
    ) ;

    *)

  if inarr('COMMUNITY_SERVICE',batchcode,strArr) then
  begin
   resultexpt:= ExportTXTFile('community_service.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV, '+
   ' COMSERVICE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_community_service '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'community_service.txt');
    if IsExportXLS then
     ExcelZip.Add(ExportPath+'community_service.xls');
   end;
  end;

  if inarr('DISABILITY',batchcode,strArr) then
  begin
    resultexpt:= ExportTXTFile('disability.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' DISABID,  '+
   ' PID,  '+
   ' DISABTYPE,  '+
   ' DISABCAUSE,  '+
   ' DIAGCODE,  '+
   ' DATE_DETECT,  '+
   ' DATE_DISAB,  '+
   ' D_UPDATE '+
   ' FROM report43_disability '+strWhere
    ) ;
   if resultexpt then
   begin
     Zip.Add(ExportPath+'disability.txt');
     if IsExportXLS then
     ExcelZip.Add(ExportPath+'disability.xls');
   end;
  end;

  if inarr('ICF',batchcode,strArr) then
  begin
    resultexpt:=ExportTXTFile('icf.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' DISABID,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV '+
   ' ICF,  '+
   ' QUALIFIER  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_icf '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'icf.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'icf.xls');
    end;
  end;

  if inarr('FUNCTIONAL',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('functional.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' DATE_SERV, '+
   ' FUNCTIONAL_TEST,  '+
   ' TESTRESULT,  '+
   ' DEPENDENT,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_functional '+strWhere
    ) ;
    if resultexpt then
    begin
      Zip.Add(ExportPath+'functional.txt');
      if IsExportXLS then
      ExcelZip.Add(ExportPath+'functional.xls');
    end;
  end;

  if inarr('REHABILITATION',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('rehabilitation.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PID,  '+
   ' SEQ,  '+
   ' AN,  '+
   ' DATE_ADMIT, '+
   ' DATE_SERV, '+
   ' DATE_START, '+
   ' DATE_FINISH, '+
   ' REHABCODE,  '+
   ' AT_DEVICE,  '+
   ' AT_NO,  '+
   ' REHABPLACE,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_rehabilitation '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'rehabilitation.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'rehabilitation.xls');
   end;
  end;

  if inarr('VILLAGE',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('village.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' VID,  '+
   ' NTRADITIONAL,  '+
   ' NMONK,  '+
   ' NRELIGIONLEADER,  '+
   ' NBROADCAST,  '+
   ' NRADIO,  '+
   ' NPCHC,  '+
   ' NCLINIC,  '+
   ' NDRUGSTORE,  '+
   ' NCHILDCENTER,  '+
   ' NPSCHOOL,  '+
   ' NSSCHOOL,  '+
   ' NTEMPLE,  '+
   ' NRELIGIOUSPLACE,  '+
   ' NMARKET,  '+
   ' NSHOP,  '+
   ' NFOODSHOP,  '+
   ' NSTALL,  '+
   ' NRAINTANK,  '+
   ' NCHICKENFARM,  '+
   ' NPIGFARM,  '+
   ' WASTEWATER,  '+
   ' GARBAGE,  '+
   ' NFACTORY,  '+
   ' LATITUDE,  '+
   ' LONGITUDE,  '+
   ' OUTDATE,  '+
   ' NUMACTUALLY,  '+
   ' RISKTYPE,  '+
   ' NUMSTATELESS,  '+
   ' NEXERCISECLUB,  '+
   ' NOLDERLYCLUB,  '+
   ' NDISABLECLUB,  '+
   ' NNUMBERONECLUB,  '+
   ' D_UPDATE '+
   ' FROM report43_village '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'village.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'village.xls');
   end;
  end;

  if inarr('COMMUNITY_ACTIVITY',batchcode,strArr) then
  begin
   resultexpt := ExportTXTFile('community_activity.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' VID,  '+
   ' DATE_START, '+
   ' DATE_FINISH, '+
   ' COMACTIVITY,  '+
   ' PROVIDER,  '+
   ' D_UPDATE '+
   ' FROM report43_community_activity '+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'community_activity.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'community_activity.xls');
   end;
  end;

  if inarr('PROVIDER',batchcode,strArr) then
  begin
    resultexpt := ExportTXTFile('provider.txt',
   ' SELECT  '+
   ' HOSPCODE,  '+
   ' PROVIDER,  '+
   ' REGISTERNO,  '+
   ' COUNCIL,  '+
   ' CID,  '+
   ' PRENAME,  '+
   ' NAME,  '+
   ' LNAME,  '+
   ' SEX,  '+
   ' BIRTH, '+
   ' PROVIDERTYPE,  '+
   ' STARTDATE, '+
   ' OUTDATE, '+
   ' MOVEFROM,  '+
   ' MOVETO,  '+
   ' D_UPDATE '+
   ' FROM report43_provider '//+strWhere
    ) ;
   if resultexpt then
   begin
    Zip.Add(ExportPath+'provider.txt');
    if IsExportXLS then
    ExcelZip.Add(ExportPath+'provider.xls');
   end;

  end;
    WriteLog(' Finish : Export Text file.');
  finally
    Zip.Free;
  end;

end;




function TDSHIS43File.ExportTXTFile(fileName, strSQL: string): boolean;
begin
   //WriteLog('STRSQL:'+strSQL);
   result:= ExportUTF8TXTFile(fileName,strSQL);
end;
(*
var
  cdsExport:TClientDataSet;
  myFile : TextFile;
  text,strLine   : string;
  i,k,_yyyy      : Integer;
  yyyy,mm,dd,hh,m,ss,ass:word;
begin
  //if not DirectoryExists(ExtractFilePath(Application.ExeName)+'exports') then ForceDirectories(ExtractFilePath(Application.ExeName)+'exports');

  WriteLog('Export : '+fileName);
  cdsExport:=TClientDataSet.Create(nil);
  //AssignFile(myFile,'exports\'+fileName);
  //ReWrite(myFile);
  try
    cdsExport.data := GetDataSet(strSQL);

    AssignFile(myFile,'exports\'+fileName);
    ReWrite(myFile);

    // write header text file
    strLine:='';
    for k:=0 to cdsExport.FieldCount-1 do
    begin
      if ( (k>0) and (k<=(cdsExport.FieldCount-1)) ) then  strLine:=strLine+'|';
      strLine:=strLine+uppercase(trim(cdsExport.Fields[k].FieldName));
    end;
    Writeln(myFile,strLine);
    CloseFile(myFile);


    if cdsExport.RecordCount>0 then
    begin
      cdsExport.First;
      while not cdsExport.Eof do
      begin
        //AssignFile(myFile,'exports\'+fileName);
        Append(myFile);

        strLine:='';
        for k:=0 to cdsExport.FieldCount-1 do
        begin

          if ( (k>0) and (k<=(cdsExport.FieldCount-1)) ) then  strLine:=strLine+'|';
          // date
          if (cdsExport.Fields[k].DataType=ftDate)  then
          begin
             DecodeDateTime(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsDateTime,yyyy,mm,dd,hh,m,ss,ass);
             if yyyy>2500 then _yyyy:=yyyy-543 else _yyyy:=yyyy;
             strLine:=strLine+inttostr(_yyyy)+FormatCurr('00',mm)+FormatCurr('00',dd);
          end else
          // time
          if (cdsExport.Fields[k].DataType=ftTime)  then
          begin
             DecodeDateTime(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsDateTime,yyyy,mm,dd,hh,m,ss,ass);
             strLine:=strLine+FormatCurr('00',hh)+FormatCurr('00',m)+FormatCurr('00',ss);

          end else
          // datetime
          if  (cdsExport.Fields[k].DataType=ftDateTime) or (cdsExport.Fields[k].DataType=ftTimeStamp) then
          begin
             DecodeDateTime(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsDateTime,yyyy,mm,dd,hh,m,ss,ass);
             if yyyy>2500 then _yyyy:=yyyy-543 else _yyyy:=yyyy;
             strLine:=strLine+inttostr(_yyyy)+FormatCurr('00',mm)+FormatCurr('00',dd)+FormatCurr('00',hh)+FormatCurr('00',m)+FormatCurr('00',ss);
          end
          else
          strLine:=strLine+trim(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsString);
        end;
        Writeln(myFile,strLine);

        cdsExport.Next;
        CloseFile(myFile);
      end;
    end;

  finally
    //CloseFile(myFile);
    cdsExport.free;
  end;

end;

*)

(*
var
 Writer: TStreamWriter;
begin
 { Create a new stream writer directly. }
 Writer := TStreamWriter.Create('local_file.txt',
 false, TEncoding.UTF8);

 { Store the title and then the text. }
 Writer.WriteLine(edtTitle.Text);
 Writer.Write(mmText.Text);

 { Close and Free the writer. }
 Writer.Free();
end;
*)



function TDSHIS43File.ExportUTF8TXTFile(fileName, strSQL: string): boolean;
var
  cdsExport:TClientDataSet;
  myFile : TStreamWriter;
  text,strLine   : string;
  i,k,_yyyy      : Integer;
  yyyy,mm,dd,hh,m,ss,ass:word;
begin
  //if not DirectoryExists(ExtractFilePath(Application.ExeName)+'exports') then ForceDirectories(ExtractFilePath(Application.ExeName)+'exports');

  //strSQL := LowerCase(strSQL);

  WriteLog('Export : '+fileName);
  cdsExport:=TClientDataSet.Create(nil);
  //AssignFile(myFile,'exports\'+fileName);
  //ReWrite(myFile);
  try
    WriteLog('Execute SQL:'+strSQL);
    cdsExport.data := GetDataSet(strSQL);

    WriteLog('           : --> '+inttostr(cdsExport.RecordCount)+' records');

    //AssignFile(myFile,'exports\'+fileName);
    //ReWrite(myFile);

    myFile := TStreamWriter.Create('exports\'+fileName, false, TEncoding.UTF8);

    // write header text file
    strLine:='';
    for k:=0 to cdsExport.FieldCount-1 do
    begin
      if ( (k>0) and (k<=(cdsExport.FieldCount-1)) ) then  strLine:=strLine+'|';
      strLine:=strLine+uppercase(trim(cdsExport.Fields[k].FieldName));
    end;
    myFile.WriteLine(strLine);


    if cdsExport.RecordCount>0 then
    begin



      cdsExport.First;
      while not cdsExport.Eof do
      begin
        //AssignFile(myFile,'exports\'+fileName);
        //Append(myFile);

        strLine:='';
        for k:=0 to cdsExport.FieldCount-1 do
        begin

          if ( (k>0) and (k<=(cdsExport.FieldCount-1)) ) then  strLine:=strLine+'|';

          {
           if (fileName='nutrition.txt') and ( cdsExport.Fields[k].FieldName ='WEIGHT') then
            case cdsExport.Fields[k].DataType of
              ftFloat:strLine:=strLine+'>float';
              ftCurrency:strLine:=strLine+'>ftCurrency';
              ftBCD:strLine:=strLine+'>ftBCD';
              ftUnknown:strLine:=strLine+'>ftBCD';
            end;
            }


            //strLine:=strLine+'>'+cdsExport.Fields[k].DataType.ftUnknown;

          // date
          if (cdsExport.Fields[k].DataType=ftDate)  then
          begin
             DecodeDateTime(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsDateTime,yyyy,mm,dd,hh,m,ss,ass);
             if yyyy>2400 then _yyyy:=yyyy-543 else _yyyy:=yyyy;
             strLine:=strLine+inttostr(_yyyy)+FormatCurr('00',mm)+FormatCurr('00',dd);
          end else
          // time
          if (cdsExport.Fields[k].DataType=ftTime)  then
          begin
             DecodeDateTime(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsDateTime,yyyy,mm,dd,hh,m,ss,ass);
             strLine:=strLine+FormatCurr('00',hh)+FormatCurr('00',m)+FormatCurr('00',ss);

          end else
          // datetime
          if  (cdsExport.Fields[k].DataType=ftDateTime) or (cdsExport.Fields[k].DataType=ftTimeStamp) then
          begin
             DecodeDateTime(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsDateTime,yyyy,mm,dd,hh,m,ss,ass);
             if yyyy>2400 then _yyyy:=yyyy-543 else _yyyy:=yyyy;
             strLine:=strLine+inttostr(_yyyy)+FormatCurr('00',mm)+FormatCurr('00',dd)+FormatCurr('00',hh)+FormatCurr('00',m)+FormatCurr('00',ss);
          end else
          if  (cdsExport.Fields[k].DataType in [ftCurrency,ftFloat,ftBCD,ftExtended,ftFMTBcd,ftWord])  then
          begin
            strLine:=strLine+trim(FormatCurr('0.00',cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsFloat));
            //strLine:=strLine+trim(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsString)+'<>';
          end
          else
            strLine:=strLine+trim(cdsExport.FieldByName(cdsExport.Fields[k].FieldName).AsString);
        end;
        myFile.WriteLine(strLine);

        cdsExport.Next;

      end;
    end;

    {
     Dataset2Excel1.Dataset := cdsExport;
     Dataset2Excel1.WorksheetName := UpperCase(Before('.',fileName));
     Dataset2Excel1.SaveDatasetAs('exports\'+Before('.',fileName)+'.xls');
     }
     //destroy workbook
     Dataset2Excel1.Workbook := nil;

    result:= cdsExport.RecordCount>0;

  finally
    //CloseFile(myFile);
    cdsExport.free;
    myFile.Free;
  end;

end;


function TDSHIS43File.getAccident(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Accident do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAccidentList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43AccidentList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAddress(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetReport43Address do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAddressList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43AddressList do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAddressType1(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

{
    arrTableName[2]  :='report43_address';
    arrDFields  [2]  :='BIRTH;D_UPDATE;MOVEIN;DDISCHARGE;EXPORT_DATE';
}

  try
   with dsGetReport43AddressType1 do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAddressType2(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;


  try
   with dsGetReport43AddressType2 do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAdmission(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Admission do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAdmissionList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43AdmissionList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAmpList(prv: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetAmp do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then

        if trim(prv)<>'' then
          SQL.Text:='select * from add_amp where PRV='+QuotedStr(prv)+' '
        else
          SQL.Text:='select * from add_amp  order by CODE ';
     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
     // WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAnc(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Anc do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAncList(PID: integer;GRAVIDA:string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43AncList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('GRAVIDA').AsString := GRAVIDA;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;
function TDSHIS43File.getAppointment(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Appointment do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getAppointmentList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43AppointmentList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getBatchDetail(batchcode: string): boolean;
begin
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetBatchDetail do
   begin
    //WriteLog('>>'+batchcode);
    ParamByName('BATCHCODE').AsString := batchcode;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;
end;

function TDSHIS43File.getBatchError(batchcode: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetBatchError do
   begin
      ParamByName('BATCHCODE').AsString := batchcode;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getBatchErrorByFileName(batchcode,
  filename: string): boolean;
begin

//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetBatchErrorByFilename do
   begin
      ParamByName('BATCHCODE').AsString := batchcode;
      ParamByName('FILENAME').AsString := filename;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;

  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getBatchErrorByGrpFileName(batchcode: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetBatchErrorGrpByFilename do
   begin
      ParamByName('BATCHCODE').AsString := batchcode;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getBatchList: boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetBathList do
   begin
    CommandText:='select * from report43_batchck order by BatchCode';
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getCard(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetReport43Card do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getCardList(PID: integer): boolean;
begin
//  VerifyLoggedIn();

  //syncCardList(PID);

  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43CardList do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getCde(cde: string): integer;
var cds:TClientDataSet;
  rep:integer;
  begin
    rep:=0;
    cds := TClientDataSet.Create(nil);
    try

        cds.data := GetDataSet('select * from report43_running where RunCode='''+cde+'''');
        if cds.recordcount>0 then
        begin

          if cds.FieldByName('RunNum').IsNull then rep:=1
          else
          rep:=cds.FieldByName('RunNum').AsInteger+1;

          cds.Edit;
          cds.fieldbyname('RunNum').AsInteger:=rep;
          cds.Post;

        end
         else
        begin
          rep :=1;
          cds.append;
          cds.fieldbyname('RunNum').AsInteger:=rep;
          cds.Post;

        end;


     if cds.ChangeCount>0 then
        UpdateDataset(cds,'select * from report43_running where RunCode='''+cde+'''');

    finally
      cds.Free;
    end;


    result:=rep;

 end;

function TDSHIS43File.getCdeRunWithLen(_base: integer;
  cde: string;cdelen:integer): integer;
var i,rep,runno : integer;

begin
  runno :=(_base*floor(IntPower(10,cdelen)))+getCde(cde);
  result:= runno;
end;

function TDSHIS43File.getChargeIpd(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ChargeIpd do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getChargeIpdList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ChargeIpdList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getChargeOpd(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ChargeOpd do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getChargeOpdList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();

  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ChargeOpdList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getChronic(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Chronic do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getChronicFu(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ChronicFu do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getChronicFuList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ChronicFuList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getChronicList(PID: integer): boolean;
begin
//  VerifyLoggedIn();

  syncIfxRecord('PID',PID,'report43_chronic','aloha_chronic','DATE_DIAG;DATE_DISCH;D_UPDATE','REPORTID;PID');

  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ChronicList do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getCommunity_Activity(VID: string): boolean;
begin
   //  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetReport43Community_Activitylist do
   begin
    ParamByName('VID').AsString:= VID;
   ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getCommunity_ServiceList(PID, SEQ: integer): boolean;
begin
 //  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetReport43Community_servicelist do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDeath(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  try
   with dsGetReport43Death do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDeathList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DeathList do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDefaultValue(tableName,
  fieldName: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetDefaultValue do
   begin
    ParamByName('TABLENAME').AsString := tableName;
    ParamByName('FIELDNAME').AsString := fieldName;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;
function TDSHIS43File.getDental(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Dental do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDentalList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DentalList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDiagnosisIpd(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DiagnosisIpd do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;


function TDSHIS43File.getDiagnosisIpdList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DiagnosisIpdList do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;


function TDSHIS43File.getDiagnosisOpd(PID, SEQ: integer): boolean;
begin

//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DiagnosisOpd do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDiagnosisOpdList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DiagnosisOpdList do
   begin
    ParamByName('PID').AsInteger := PID;
    ParamByName('SEQ').AsInteger := SEQ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.GetDoc(DOC_TYPE: string): boolean;
begin
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetDoc do
   begin
   // ParamByName('DOC_TYPE').AsInteger := 'DOC_TYPE';
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDrugIpd(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DrugIpd do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDrugIpdList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DrugIpdList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDrugOpd(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DrugOpd do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDrugOpdList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DrugOpdList do
   begin

    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
 //   sql.Text := 'select * from report43_DrugOpd_opd where PID='+inttostr(PID)+' AND SEQ='+inttostr(SEQ);
  //  WriteLog(sql.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDugallergy(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Drugallergy do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getDugallergyList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43DrugallergyList do
   begin
    ParamByName('PID').AsInteger := PID;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getEpi(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Epi do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getEpiList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43EpiList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getFp(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Fp do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getFpList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43FpList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getHN(PID: integer): string;
var cdsTempIfx,cdsTempM:TClientDataSet;
    rep:string;
begin

  rep:='';
  cdsTempIfx:=TClientDataSet.Create(nil);
  cdsTempM :=TClientDataSet.Create(nil);


  try
    cdsTempM.data :=GetDataSet('select HN from report43_person where PID='+inttostr(PID));
    if cdsTempM.RecordCount>0 then
        rep := cdsTempM.FieldByName('HN').AsString
    else
        rep :='';

    if trim(rep)='' then
    begin
      cdsTempIfx.data := GetIFXDataSet('select hn from patient_info1 where s_hn='+inttostr(PID));
      if cdsTempIfx.RecordCount>0 then
      begin
        rep := cdsTempIfx.FieldByName('hn').AsString;
      end else
        rep :='';
    end;

  finally
    cdsTempIfx.free;
    cdsTempM.free;
  end;

  result := rep;

end;

function TDSHIS43File.getHome(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Home do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getHomeList(Tambon, Ampur, Changwat:string): boolean;
var P1,P2,P3:TParam;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43HomeList do
   begin
    SQL.Text:='select * from report43_home limit 1000';
    //SQL:='select * from report43_home where TAMBON=:TAMBON and AMPUR=:AMPUR and CHANGWAT=:CHANGWAT limit 1000';

    {
    P1:=TParam.Create(nil);
    P1.DataType:=ftString;
    P1.ParamType :=ptInput;
    P1.DisplayName :='TAMBON';

    P2:=TParam.Create(nil);
    P2.DataType:=ftString;
    P2.ParamType :=ptInput;
    P2.DisplayName :='AMPUR';

    P3:=TParam.Create(nil);
    P3.DataType:=ftString;
    P3.ParamType :=ptInput ;
    P3.DisplayName :='CHANGWAT';

    Params.AddParam(P1);
    Params.AddParam(P2);
    Params.AddParam(P3);


    ParamByName('TAMBON').AsString    := Tambon ;
    ParamByName('AMPUR').AsString     := Ampur ;
    ParamByName('CHANGWAT').AsString  := Changwat ;
    }

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getHospName(hospcode, hospname: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsSettingGetHospName do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then
        SQL.Text:='select * from report43_hospname where hospid=1 ';
     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getHospNameList(prv, amp, tumbon: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetHospName do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then
        SQL.Text:='select * from hosp_name where PRV=''20'' ';
     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getIcd10(code: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetIcd10 do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then
        SQL.Text:='select * from icd10 where CODE1 = '''+code+'''';

     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;


function TDSHIS43File.getIcd10List(group: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetIcd10List do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then
      if trim(group)<>'' then
        SQL.Text:='select * from icd10 where CODE1 like '''+group+'%'''
      else SQL.Text:='select * from icd10 limit 1000';

     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;
function TDSHIS43File.getIcd9(code: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetIcd9 do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then
        SQL.Text:='select * from icd9 where CODE1='''+code+''' ';
     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getIcd9List(Section: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetIcd9List do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then
        SQL.Text:='select * from icd9 ';
     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getIcf(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();


  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Icf do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);


end;

function TDSHIS43File.getIcfList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43IcfList do
   begin
    ParamByName('PID').AsInteger :=  PID ;
    ParamByName('SEQ').AsInteger :=  SEQ ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getKeywords(tbl,abbr: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsKeywords do
   begin
    ParamByName('TBL').AsString := tbl ;
    ParamByName('ABBR').AsString := abbr ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getLabFu(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43LabFu do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getLabFuList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43LabFuList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getLabOr(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43LabOr do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getLabOrList(PID: integer;GRAVIDA:string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43LabOrList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('GRAVIDA').AsString := GRAVIDA ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNcdscreen(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Ncdscreen do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNcdscreenList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43NcdscreenList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNewborn(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Newborn do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNewbornCare(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43NewBornCare do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNewbornCareList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43NewBornCareList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNewbornList(MPID: string;GRAVIDA:string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    with dsGetReport43NewbornList do
    begin
      ParamByName('MPID').AsString     := MPID;
      ParamByName('GRAVIDA').AsString := GRAVIDA;
    end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNewPID: integer;
begin
  result:=getCdeRunWithLen(13754,'PID',5);
end;

function TDSHIS43File.getNutrition(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Nutrition do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getNutritionList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43NutritionList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getPageList(dep, station, loc: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetPageList do
   begin

    ParamByName('DEP').AsString := dep;
    ParamByName('STA').AsString := station;
    ParamByName('LOC').AsString := loc;

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getPerson(CID: string): boolean;
var cdsCurrPerson : TClientDataSet;
{
var cdsASync,cdsMyASync:TClientDataSet;
    tableName,SQLStr,arrDFields,value,delimiter,txt,ns:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;    }
    P1,P2,P3:TParam;

begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  //----------------------------------------

  if IsIFXASync then
  begin
   cdsCurrPerson:=TClientDataSet.Create(nil);
   try
     cdsCurrPerson.data :=GetDataSet('select * from report43_person where HN='+CID);
     if cdsCurrPerson.RecordCount<=0 then
     begin
        syncPerson(CID);
     end;
   finally
     cdsCurrPerson.free;
   end;


  end;



  {
       cdsMyASync:=TClientDataSet.Create(nil);

       tableName  :='report43_person';
       arrDFields  :='BIRTH;D_UPDATE;MOVEIN;DDISCHARGE;EXPORT_DATE';

       SQLStr     :='select * from aloha_person where HN='+CID;
       WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);

       cdsASync:=TClientDataSet.Create(nil);
       cdsASync.Data := GetIFXDataSet(SQLStr);

       if cdsASync.RecordCount>0 then
       begin
         WriteLog('['+tableName+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

         strArrCount:=0;
         value := arrDFields;
         delimiter:=';';

         delta := Length(delimiter);
         txt := value + delimiter;

           while Length(txt) > 0 do
           begin
             dx := Pos(delimiter, txt) ;
             ns := Copy(txt,0,dx-1) ;
             SetLength(strArr,strArrCount+1);
             strArr[strArrCount]:=ns;
             txt := Copy(txt,dx+delta,MaxInt) ;
             Inc(strArrCount);
           end;

         //cdsMySQL.data := GetDataSet('select * from '+tableName+' limit 0');

         cdsMyASync.Data:=GetDataSet('select * from '+tableName+' where HN='+CID);

         if cdsMyASync.RecordCount<=0 then
         begin
           if cdsMyASync.RecordCount>0 then
             WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)')
           else
             WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

           CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00','bluecross_43file1');
           UpdateDataset(cdsMyASync,'select * from '+tableName+' where HN='+CID);
           WriteLog('['+tableName+']'+'Sync : update success mysql.');
         end;
       end;


    cdsASync.free;
    cdsMyASync.free;
    }
  //----------------------------------------

  try
   with dsGetReport43Person do
   begin
      if Length(trim(CID))=13 then
      begin
        SQL.Text :='select * from report43_person where CID=:CID';
        //Params.Clear;

        P1:=TParam.Create(nil);
        P1.DataType:=ftString;
        P1.ParamType :=ptInput;
        P1.DisplayName :='CID';        
        Params.AddParam(P1);
        ParamByName('CID').AsString := CID ;
        
      end else
      begin
        SQL.Text:='select * from report43_person where HN=:HN';
        //Params.Clear;

        P1:=TParam.Create(nil);
        P1.DataType:=ftString;
        P1.ParamType :=ptInput;
        P1.DisplayName :='HN';        
        Params.AddParam(P1);
        ParamByName('HN').AsString := CID ;
      end;
        




    //SQL:='select * from report43_home where TAMBON=:TAMBON and AMPUR=:AMPUR and CHANGWAT=:CHANGWAT limit 1000';

    {
    P1:=TParam.Create(nil);
    P1.DataType:=ftString;
    P1.ParamType :=ptInput;
    P1.DisplayName :='TAMBON';

    P2:=TParam.Create(nil);
    P2.DataType:=ftString;
    P2.ParamType :=ptInput;
    P2.DisplayName :='AMPUR';

    P3:=TParam.Create(nil);
    P3.DataType:=ftString;
    P3.ParamType :=ptInput ;
    P3.DisplayName :='CHANGWAT';

    Params.AddParam(P1);
    Params.AddParam(P2);
    Params.AddParam(P3);


    ParamByName('TAMBON').AsString    := Tambon ;
    ParamByName('AMPUR').AsString     := Ampur ;
    ParamByName('CHANGWAT').AsString  := Changwat ;
    }



    //ParamByName('CID').AsString := CID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;



function TDSHIS43File.getPostnatal(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Postnatal do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getPostnatalList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43PostnatalList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getPrenatal(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Prenatal do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getPrenatalList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43PrenatalList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getProcedureIpd(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ProcedureIpd do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getProcedureIpdList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ProcedureIpdList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);


end;

function TDSHIS43File.getProcedureOpd(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ProcedureOpd do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getProcedureOpdList(PID,SEQ:integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ProcedureOpdList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;

   // sql.Text := 'select * from report43_procedure_opd where PID='+inttostr(PID)+' AND SEQ='+inttostr(SEQ);
   // WriteLog(sql.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getProvinceList(control: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetProvince do
   begin
      //if ( trim(prv)='') and (trim(amp)='') and (trim(tumbon)='') then
        SQL.Text:='select * from add_province order by CODE';
     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;
function TDSHIS43File.getServerVersion: string;
begin
  Result := _SERVER_VERSION;
end;

function TDSHIS43File.getService(PID, SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Service do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getServiceList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43ServiceList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;



function TDSHIS43File.getSpecialPp(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43SpecialPp do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getSpecialPpList(PID,SEQ: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43SpecialPpList do
   begin
    ParamByName('PID').AsInteger := PID ;
    ParamByName('SEQ').AsInteger := SEQ ;
    //sql.Text := 'select * from report43_SpecialPp where PID='+inttostr(PID)+' AND SEQ='+inttostr(SEQ);
   // WriteLog(sql.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getSurveillance(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Surveillance do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;
function TDSHIS43File.getSurveillanceList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43SurveillanceList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getTumbon(code: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetTumbon do
   begin
        SQL.Text:='select * from add_tumbon where CODE='+QuotedStr(code);
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getTumbonList(prv, amp: string): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetTumbonList do
   begin
      if (trim(prv)<>'') and (trim(amp)<>'') then
        SQL.Text:='select * from add_tumbon where PRV='+QuotedStr(prv)+' and AMP='+QuotedStr(amp)+' order by CODE '
      else
      if (trim(prv)='') and (trim(amp)='') then
        SQL.Text:='select * from add_tumbon  order by CODE  ';
     // else
     //   SQL.Text:='select * from hosp_name where PRV='''+prv+''' and AMP='''+prv+''' and TUMBON='''+prv+'''';
      WriteLog(SQL.Text);
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getvillage(VID: string): boolean;
begin
 //  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Village do
   begin
    ParamByName('VID').AsString := VID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);

end;

function TDSHIS43File.getWomen(REPORTID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43Women do
   begin
    ParamByName('REPORTID').AsInteger := REPORTID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.getWomenList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsGetReport43WomenList do
   begin
    ParamByName('PID').AsInteger := PID ;
   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.inarr(str,batchcode: string; arr: array of string): boolean;
 var i:integer;
      rep:boolean;
      cdsBatch:TClientDataSet;
begin
  rep:=false;

  try
    cdsBatch:=TClientDataSet.Create(nil);

    for i := 0 to High(arr) do
      if rep=false then
        rep:=UpperCase(trim(arr[i]))=UpperCase(trim(str));


      if rep then
        begin
            cdsBatch.Data:=GetDataSet('select * from report43_batch where upper(FName)='''+UpperCase(str)+''' and ExportFlag=''Y'' and BatchCode='''+batchcode+''' ');
            //WriteLog('check batch >>>'+'select * from report43_batch where upper(FName)='''+UpperCase(str)+''' and ExportFlag=''Y'' and BatchCode='''+batchcode+''' ');
            rep:=(cdsBatch.RecordCount>0);
        end;

      Result:=rep;
  finally
      cdsBatch.Free;
  end;

end;

function TDSHIS43File.InsUpdAccident(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATETIME_SERV, DATETIME_AE: Double; AETYPE, AEPLACE,
  TYPEIN_AE, TRAFFIC, VEHICLE, ALCOHOL, NACROTIC_DRUG, BELT, HELMET,
  AIRWAY, STOPBLEED, SPLINT, FLUID, URGENCY, COMA_EYE, COMA_SPEAK,
  COMA_MOVEMENT: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_accident where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_accident set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATETIME_SERV=:DATETIME_SERV '+
            ',DATETIME_AE=:DATETIME_AE '+
            ',AETYPE=:AETYPE '+
            ',AEPLACE=:AEPLACE '+
            ',TYPEIN_AE=:TYPEIN_AE '+
            ',TRAFFIC=:TRAFFIC '+
            ',VEHICLE=:VEHICLE '+
            ',ALCOHOL=:ALCOHOL '+
            ',NACROTIC_DRUG=:NACROTIC_DRUG '+
            ',BELT=:BELT '+
            ',HELMET=:HELMET '+
            ',AIRWAY=:AIRWAY '+
            ',STOPBLEED=:STOPBLEED '+
            ',SPLINT=:SPLINT '+
            ',FLUID=:FLUID '+
            ',URGENCY=:URGENCY '+
            ',COMA_EYE=:COMA_EYE '+
            ',COMA_SPEAK=:COMA_SPEAK '+
            ',COMA_MOVEMENT=:COMA_MOVEMENT '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATETIME_SERV').AsDateTime := DATETIME_SERV;
            ParamByName('DATETIME_AE').AsDateTime := DATETIME_AE;
            ParamByName('AETYPE').AsString := AETYPE;
            ParamByName('AEPLACE').AsString := AEPLACE;
            ParamByName('TYPEIN_AE').AsString := TYPEIN_AE;
            ParamByName('TRAFFIC').AsString := TRAFFIC;
            ParamByName('VEHICLE').AsString := VEHICLE;
            ParamByName('ALCOHOL').AsString := ALCOHOL;
            ParamByName('NACROTIC_DRUG').AsString := NACROTIC_DRUG;
            ParamByName('BELT').AsString := BELT;
            ParamByName('HELMET').AsString := HELMET;
            ParamByName('AIRWAY').AsString := AIRWAY;
            ParamByName('STOPBLEED').AsString := STOPBLEED;
            ParamByName('SPLINT').AsString := SPLINT;
            ParamByName('FLUID').AsString := FLUID;
            ParamByName('URGENCY').AsString := URGENCY;
            ParamByName('COMA_EYE').AsString := COMA_EYE;
            ParamByName('COMA_SPEAK').AsString := COMA_SPEAK;
            ParamByName('COMA_MOVEMENT').AsString := COMA_MOVEMENT;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;


end;

function TDSHIS43File.InsUpdAddress(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSENO,
  SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT,
  TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_address where PID='+inttostr(PID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_address set '+
            //' REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',ADDRESSTYPE=:ADDRESSTYPE '+
            ',HOUSE_ID=:HOUSE_ID '+
            ',HOUSETYPE=:HOUSETYPE '+
            ',ROOMNO=:ROOMNO '+
            ',CONDO=:CONDO '+
            ',HOUSENO=:HOUSENO '+
            ',SOISUB=:SOISUB '+
            ',SOIMAIN=:SOIMAIN '+
            ',ROAD=:ROAD '+
            ',VILLANAME=:VILLANAME '+
            ',VILLAGE=:VILLAGE '+
            ',TAMBON=:TAMBON '+
            ',AMPUR=:AMPUR '+
            ',CHANGWAT=:CHANGWAT '+
            ',TELEPHONE=:TELEPHONE '+
            ',MOBILE=:MOBILE '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID ';

            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('ADDRESSTYPE').AsString := ADDRESSTYPE;
            ParamByName('HOUSE_ID').AsString := HOUSE_ID;
            ParamByName('HOUSETYPE').AsString := HOUSETYPE;
            ParamByName('ROOMNO').AsString := ROOMNO;
            ParamByName('CONDO').AsString := CONDO;
            ParamByName('HOUSENO').AsString := HOUSENO;
            ParamByName('SOISUB').AsString := SOISUB;
            ParamByName('SOIMAIN').AsString := SOIMAIN;
            ParamByName('ROAD').AsString := ROAD;
            ParamByName('VILLANAME').AsString := VILLANAME;
            ParamByName('VILLAGE').AsString := VILLAGE;
            ParamByName('TAMBON').AsString := TAMBON;
            ParamByName('AMPUR').AsString := AMPUR;
            ParamByName('CHANGWAT').AsString := CHANGWAT;
            ParamByName('TELEPHONE').AsString := TELEPHONE;
            ParamByName('MOBILE').AsString := MOBILE;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;

            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;


end;

function TDSHIS43File.InsUpdAdmission(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; AN: String; DATETIME_ADMIT: Double; WARDADMIT,
  INSTYPE, TYPEIN, REFERINHOSP, CAUSEIN: String; ADMITWEIGHT,
  ADMITHEIGHT: Integer; DATETIME_DISCH: Double; WARDDISCH, DISCHSTATUS,
  DISCHTYPE, REFEROUTHOSP, CAUSEOUT: String; COST, PRICE, PAYPRICE,
  ACTUALPAY: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_admission where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_admission set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',AN=:AN '+
            ',DATETIME_ADMIT=:DATETIME_ADMIT '+
            ',WARDADMIT=:WARDADMIT '+
            ',INSTYPE=:INSTYPE '+
            ',TYPEIN=:TYPEIN '+
            ',REFERINHOSP=:REFERINHOSP '+
            ',CAUSEIN=:CAUSEIN '+
            ',ADMITWEIGHT=:ADMITWEIGHT '+
            ',ADMITHEIGHT=:ADMITHEIGHT '+
            ',DATETIME_DISCH=:DATETIME_DISCH '+
            ',WARDDISCH=:WARDDISCH '+
            ',DISCHSTATUS=:DISCHSTATUS '+
            ',DISCHTYPE=:DISCHTYPE '+
            ',REFEROUTHOSP=:REFEROUTHOSP '+
            ',CAUSEOUT=:CAUSEOUT '+
            ',COST=:COST '+
            ',PRICE=:PRICE '+
            ',PAYPRICE=:PAYPRICE '+
            ',ACTUALPAY=:ACTUALPAY '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('AN').AsString := AN;
            ParamByName('DATETIME_ADMIT').AsDateTime := DATETIME_ADMIT;
            ParamByName('WARDADMIT').AsString := WARDADMIT;
            ParamByName('INSTYPE').AsString := INSTYPE;
            ParamByName('TYPEIN').AsString := TYPEIN;
            ParamByName('REFERINHOSP').AsString := REFERINHOSP;
            ParamByName('CAUSEIN').AsString := CAUSEIN;
            ParamByName('ADMITWEIGHT').AsInteger := ADMITWEIGHT;
            ParamByName('ADMITHEIGHT').AsInteger := ADMITHEIGHT;
            ParamByName('DATETIME_DISCH').AsDateTime := DATETIME_DISCH;
            ParamByName('WARDDISCH').AsString := WARDDISCH;
            ParamByName('DISCHSTATUS').AsString := DISCHSTATUS;
            ParamByName('DISCHTYPE').AsString := DISCHTYPE;
            ParamByName('REFEROUTHOSP').AsString := REFEROUTHOSP;
            ParamByName('CAUSEOUT').AsString := CAUSEOUT;
            ParamByName('COST').AsInteger := COST;
            ParamByName('PRICE').AsInteger := PRICE;
            ParamByName('PAYPRICE').AsInteger := PAYPRICE;
            ParamByName('ACTUALPAY').AsInteger := ACTUALPAY;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;


end;

function TDSHIS43File.InsUpdAnc(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; GRAVIDA, ANCNO, GA, ANCRESULT, ANCPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
  StrDateServ:string;
begin
    StrDateServ := QuotedStr(IntToStr(YearOf(DATE_SERV))+FormatDateTime('-MM-DD',DATE_SERV));
    cdsReport43Temp.data:=GetDataSet('select * from report43_service where PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ)+' and DATE_SERV='+StrDateServ);

    //ShowMessage('select count(*) as cc  from report43_anc where GRAVIDA='''+GRAVIDA+''' AND PID='+inttostr(PID)+' and REPORTID='+inttostr(REPORTID)+' OR (DATE_SERV='+StrDateServ);
    cdsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_anc where GRAVIDA='''+GRAVIDA+''' AND PID='+inttostr(PID)+' and DATE_SERV='+StrDateServ);
    if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    begin
        with TSQLQuery.Create(Self) do
     try

            ShowMessage('Update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_anc set '+
           // 'REPORTID=:REPORTID '
            'HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',GRAVIDA=:GRAVIDA '+
            ',ANCNO=:ANCNO '+
            ',GA=:GA '+
            ',ANCRESULT=:ANCRESULT '+
            ',ANCPLACE=:ANCPLACE '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('GRAVIDA').AsString := GRAVIDA;
            ParamByName('ANCNO').AsString := ANCNO;
            ParamByName('GA').AsString := GA;
            ParamByName('ANCRESULT').AsString := ANCRESULT;
            ParamByName('ANCPLACE').AsString := ANCPLACE;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end else
    begin // INSERT
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try    //ShowMessage('Insert [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
           cdsIns.data := GetDataSet('select * from report43_anc where PID='+inttostr(PID)+' and DATE_SERV='+DateToStr(DATE_SERV));
           cdsIns.Append;

           with cdsIns do
           begin

            FieldByName('REPORTID').AsInteger := REPORTID;
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsInteger := PID;
            FieldByName('SEQ').AsInteger := SEQ;
            FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
            FieldByName('GRAVIDA').AsString := GRAVIDA;
            FieldByName('ANCNO').AsString := ANCNO;
            FieldByName('GA').AsString := GA;
            FieldByName('ANCRESULT').AsString := ANCRESULT;
            FieldByName('ANCPLACE').AsString := ANCPLACE;
            FieldByName('PROVIDER').AsString := PROVIDER;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_anc where PID='+inttostr(PID)+' and DATE_SERV='+DateToStr(DATE_SERV));


        finally
           cdsIns.free;
        end;

    end;


end;

function TDSHIS43File.InsUpdAppointment(REPORTID: Integer;
  HOSPCODE: String; PID, AN, SEQ: Integer; DATE_SERV: Double;
  CLINIC: String; APDATE: Double; APTYPE, APDIAG, PROVIDER: String;
  D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_appointment where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try

          //   ShowMessage('update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_appointment set '+
            //'REPORTID=:REPORTID '
            'HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',AN=:AN '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',CLINIC=:CLINIC '+
            ',APDATE=:APDATE '+
            ',APTYPE=:APTYPE '+
            ',APDIAG=:APDIAG '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('AN').AsInteger := AN;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('CLINIC').AsString := CLINIC;
            ParamByName('APDATE').AsDateTime := APDATE;
            ParamByName('APTYPE').AsString := APTYPE;
            ParamByName('APDIAG').AsString := APDIAG;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

        end;
    end
     else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_appointment where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
           cdsIns.Append;

           with cdsIns do
           begin
        //    ShowMessage('INSERT [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            FieldByName('REPORTID').AsInteger := REPORTID;
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsInteger := PID;
            FieldByName('AN').AsInteger := AN;
            FieldByName('SEQ').AsInteger := SEQ;
            FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
            FieldByName('CLINIC').AsString := CLINIC;
            FieldByName('APDATE').AsDateTime := APDATE;
            FieldByName('APTYPE').AsString := APTYPE;
            FieldByName('APDIAG').AsString := APDIAG;
            FieldByName('PROVIDER').AsString := PROVIDER;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_appointment where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));


        finally
           cdsIns.free;
        end;

      end;


end;

function TDSHIS43File.InsUpdCard(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; INSTYPE_OLD, INSTYPE_NEW, INSID: String; STARTDATE,
  EXPIREDATE: Double; MAIN, SUB: String; D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_card where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID) );
    WriteLog(' card count ='+inttostr(cdsReport43Temp.RecordCount));


    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
       try
           WriteLog('update [PID='+inttostr(PID));
            //ShowMessage('update [PID='+inttostr(PID));
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_card set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',INSTYPE_OLD=:INSTYPE_OLD '+
            ',INSTYPE_NEW=:INSTYPE_NEW '+
            ',INSID=:INSID '+
            ',STARTDATE=:STARTDATE '+
            ',EXPIREDATE=:EXPIREDATE '+
            ',MAIN=:MAIN '+
            ',SUB=:SUB '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('INSTYPE_OLD').AsString := INSTYPE_OLD;
            ParamByName('INSTYPE_NEW').AsString := INSTYPE_NEW;
            ParamByName('INSID').AsString := INSID;
            ParamByName('STARTDATE').AsDateTime := STARTDATE;
            ParamByName('EXPIREDATE').AsDateTime := EXPIREDATE;
            ParamByName('MAIN').AsString := MAIN;
            ParamByName('SUB').AsString := SUB;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

       end;
    end
    else
    begin // INSERT
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
        //ShowMessage('Insert [PID='+inttostr(PID));
           cdsIns.data := GetDataSet('select * from report43_card where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID) );
           cdsIns.Append;
           with cdsIns do
           begin
             FieldByName('REPORTID').AsInteger := REPORTID;
             FieldByName('HOSPCODE').AsString := HOSPCODE;
             FieldByName('PID').AsInteger := PID;
             FieldByName('INSTYPE_OLD').AsString := INSTYPE_OLD;
             FieldByName('INSTYPE_NEW').AsString := INSTYPE_NEW;
             FieldByName('INSID').AsString := INSID;
             FieldByName('STARTDATE').AsDateTime := STARTDATE;
             FieldByName('EXPIREDATE').AsDateTime := EXPIREDATE;
             FieldByName('MAIN').AsString := MAIN;
             FieldByName('SUB').AsString := SUB;
             FieldByName('D_UPDATE').AsDateTime := D_UPDATE;
           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;

           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_card  where PID='+inttostr(PID));

        finally
           cdsIns.free;
        end;
    end;
end;

function TDSHIS43File.InsUpdChargeIpd(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; AN: String; DATETIME_ADMIT: Double; WARDSTAY, CHARGEITEM,
  CHARGELIST: String; QUANTITY: Integer; INSTYPE: String; COST, PRICE,
  PAYPRICE: Integer; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_charge_ipd where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
        try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_charge_ipd set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',AN=:AN '+
            ',DATETIME_ADMIT=:DATETIME_ADMIT '+
            ',WARDSTAY=:WARDSTAY '+
            ',CHARGEITEM=:CHARGEITEM '+
            ',CHARGELIST=:CHARGELIST '+
            ',QUANTITY=:QUANTITY '+
            ',INSTYPE=:INSTYPE '+
            ',COST=:COST '+
            ',PRICE=:PRICE '+
            ',PAYPRICE=:PAYPRICE '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';

            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('AN').AsString := AN;
            ParamByName('DATETIME_ADMIT').AsDateTime := DATETIME_ADMIT;
            ParamByName('WARDSTAY').AsString := WARDSTAY;
            ParamByName('CHARGEITEM').AsString := CHARGEITEM;
            ParamByName('CHARGELIST').AsString := CHARGELIST;
            ParamByName('QUANTITY').AsInteger := QUANTITY;
            ParamByName('INSTYPE').AsString := INSTYPE;
            ParamByName('COST').AsInteger := COST;
            ParamByName('PRICE').AsInteger := PRICE;
            ParamByName('PAYPRICE').AsInteger := PAYPRICE;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;

            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

        end;
    end;

end;

function TDSHIS43File.InsUpdChargeOpd(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; CLINIC, CHARGEITEM,
  CHARGELIST: String; QUANTITY: Integer; INSTYPE: String; COST, PRICE,
  PAYPRICE: Integer; D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_charge_opd where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try

 //           ShowMessage('update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_charge_opd set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',CLINIC=:CLINIC '+
            ',CHARGEITEM=:CHARGEITEM '+
            ',CHARGELIST=:CHARGELIST '+
            ',QUANTITY=:QUANTITY '+
            ',INSTYPE=:INSTYPE '+
            ',COST=:COST '+
            ',PRICE=:PRICE '+
            ',PAYPRICE=:PAYPRICE '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('CLINIC').AsString := CLINIC;
            ParamByName('CHARGEITEM').AsString := CHARGEITEM;
            ParamByName('CHARGELIST').AsString := CHARGELIST;
            ParamByName('QUANTITY').AsInteger := QUANTITY;
            ParamByName('INSTYPE').AsString := INSTYPE;
            ParamByName('COST').AsInteger := COST;
            ParamByName('PRICE').AsInteger := PRICE;
            ParamByName('PAYPRICE').AsInteger := PAYPRICE;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end
     else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_charge_opd where REPORTID='+inttostr(REPORTID));
           cdsIns.Append;

           with cdsIns do
           begin
//            ShowMessage('INSERT [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            FieldByName('REPORTID').AsInteger := REPORTID;
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsInteger := PID;
            FieldByName('SEQ').AsInteger := SEQ;
            FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
            FieldByName('CLINIC').AsString := CLINIC;
            FieldByName('CHARGEITEM').AsString := CHARGEITEM;
            FieldByName('CHARGELIST').AsString := CHARGELIST;
            FieldByName('QUANTITY').AsInteger := QUANTITY;
            FieldByName('INSTYPE').AsString := INSTYPE;
            FieldByName('COST').AsInteger := COST;
            FieldByName('PRICE').AsInteger := PRICE;
            FieldByName('PAYPRICE').AsInteger := PAYPRICE;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_charge_opd where REPORTID='+inttostr(REPORTID));


        finally
           cdsIns.free;
        end;

      end;

end;

function TDSHIS43File.InsUpdChronic(REPORTID: Integer; HOSPCODE,
  PID: String; DATE_DIAG: Double; CHRONIC, HOSP_DX, HOSP_RX: String;
  DATE_DISCH: Double; TYPEDISCH: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_chronic where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_chronic set '+
            //'REPORTID=:REPORTID '
            'HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',DATE_DIAG=:DATE_DIAG '+
            ',CHRONIC=:CHRONIC '+
            ',HOSP_DX=:HOSP_DX '+
            ',HOSP_RX=:HOSP_RX '+
            ',DATE_DISCH=:DATE_DISCH '+
            ',TYPEDISCH=:TYPEDISCH '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsString := PID;
            ParamByName('DATE_DIAG').AsDateTime := DATE_DIAG;
            ParamByName('CHRONIC').AsString := CHRONIC;
            ParamByName('HOSP_DX').AsString := HOSP_DX;
            ParamByName('HOSP_RX').AsString := HOSP_RX;
            ParamByName('DATE_DISCH').AsDateTime := DATE_DISCH;
            ParamByName('TYPEDISCH').AsString := TYPEDISCH;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;

end;

function TDSHIS43File.InsUpdChronicFu(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; WEIGHT, HEIGHT, WAIST_CM, SBP,
  DBP: Integer; FOOT, RETINA, PROVIDER: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_chronicfu where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_chronicfu set '+
            //'REPORTID=:REPORTID '
            'HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',WEIGHT=:WEIGHT '+
            ',HEIGHT=:HEIGHT '+
            ',WAIST_CM=:WAIST_CM '+
            ',SBP=:SBP '+
            ',DBP=:DBP '+
            ',FOOT=:FOOT '+
            ',RETINA=:RETINA '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('WEIGHT').AsInteger := WEIGHT;
            ParamByName('HEIGHT').AsInteger := HEIGHT;
            ParamByName('WAIST_CM').AsInteger := WAIST_CM;
            ParamByName('SBP').AsInteger := SBP;
            ParamByName('DBP').AsInteger := DBP;
            ParamByName('FOOT').AsString := FOOT;
            ParamByName('RETINA').AsString := RETINA;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;

end;

function TDSHIS43File.InsUpdCommunity_Activity(REPORTID: Integer; HOSPCODE,
  VID: String; DATE_START, DATE_FINISH: Double; COMACTIVITY, PROVIDER: String;
  D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
begin
  //   ShowMessage('select * from report43_community_activity where REPORTID='+inttostr(REPORTID)+' and VID='+VID);
    cdsReport43Temp.data:=GetDataSet('select * from report43_community_activity where REPORTID='+inttostr(REPORTID)+' and VID='+VID);
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try

 //           ShowMessage('UPDATE [VID='+ (VID) +']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_death set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',VID=:VID '+
            ',DATE_START=:DATE_START '+
            ',DATE_FINISH=:DATE_FINISH '+
            ',COMACTIVITY=:COMACTIVITY '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';

            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('VID').AsString := VID;
            ParamByName('DATE_START').AsFloat := DATE_START;
            ParamByName('DATE_FINISH').AsFloat := DATE_FINISH;
            ParamByName('COMACTIVITY').AsString := COMACTIVITY;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsFloat := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end
    else
    begin   // insert
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_community_activity where REPORTID='+inttostr(REPORTID)+' and VID='+VID);
           cdsIns.Append;

           with cdsIns do
           begin
 //             ShowMessage('insert [VID='+ (VID) +']');
              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('VID').AsString := VID;
              FieldByName('DATE_START').AsFloat := DATE_START;
              FieldByName('DATE_FINISH').AsFloat := DATE_FINISH;
              FieldByName('COMACTIVITY').AsString := COMACTIVITY;
              FieldByName('PROVIDER').AsString := PROVIDER;
              FieldByName('D_UPDATE').AsFloat := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;
           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_community_activity where REPORTID='+inttostr(REPORTID)+' and VID='+VID);
        finally
           cdsIns.free;
        end;
    end;
end;

function TDSHIS43File.InsUpdCommunity_Service(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; COMSERVICE,
  PROVIDER: String; D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
begin
  // ShowMessage('select * from report43_community_service where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    cdsReport43Temp.data:=GetDataSet('select * from report43_community_service where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try

            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_death set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',COMSERVICE=:COMSERVICE '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsFloat := DATE_SERV;
            ParamByName('COMSERVICE').AsString := COMSERVICE;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsFloat := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

         end;
    end
    else
    begin   // insert
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_community_service where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
           cdsIns.Append;

           with cdsIns do
           begin
   //           ShowMessage('insert [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('SEQ').AsInteger := SEQ;
              FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
              FieldByName('COMSERVICE').AsString := COMSERVICE;
              FieldByName('PROVIDER').AsString := PROVIDER;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;

           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_community_service where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
        finally
           cdsIns.free;
        end;
    end;
end;

function TDSHIS43File.InsUpdDeath(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; HOSPDEATH, AN: String; SEQ: Integer; DDEATH: Double;
  CDEATH_A, CDEATH_B, CDEATH_C, CDEATH_D, ODISEASE, CDEATH, PREGDEATH,
  PDEATH, PROVIDER: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_death where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_death set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',HOSPDEATH=:HOSPDEATH '+
            ',AN=:AN '+
            ',SEQ=:SEQ '+
            ',DDEATH=:DDEATH '+
            ',CDEATH_A=:CDEATH_A '+
            ',CDEATH_B=:CDEATH_B '+
            ',CDEATH_C=:CDEATH_C '+
            ',CDEATH_D=:CDEATH_D '+
            ',ODISEASE=:ODISEASE '+
            ',CDEATH=:CDEATH '+
            ',PREGDEATH=:PREGDEATH '+
            ',PDEATH=:PDEATH '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('HOSPDEATH').AsString := HOSPDEATH;
            ParamByName('AN').AsString := AN;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DDEATH').AsDateTime := DDEATH;
            ParamByName('CDEATH_A').AsString := CDEATH_A;
            ParamByName('CDEATH_B').AsString := CDEATH_B;
            ParamByName('CDEATH_C').AsString := CDEATH_C;
            ParamByName('CDEATH_D').AsString := CDEATH_D;
            ParamByName('ODISEASE').AsString := ODISEASE;
            ParamByName('CDEATH').AsString := CDEATH;
            ParamByName('PREGDEATH').AsString := PREGDEATH;
            ParamByName('PDEATH').AsString := PDEATH;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsFloat := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;
end;

function TDSHIS43File.InsUpdDental(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; DENTTYPE, SERVPLACE: String;
  PTEETH, PCARIES, PFILLING, PEXTRACT, DTEETH, DCARIES, DFILLING,
  DEXTRACT: Integer; NEED_FLUORIDE, NEED_SCALING: String; NEED_SEALANT,
  NEED_PFILLING, NEED_DFILLING, NEED_PEXTRACT, NEED_DEXTRACT: Integer
  ): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_dental where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        qryDental := TSQLQuery.Create(Self);

        with  qryDental do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_dental set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',DENTTYPE=:DENTTYPE '+
            ',SERVPLACE=:SERVPLACE '+
            ',PTEETH=:PTEETH '+
            ',PCARIES=:PCARIES '+
            ',PFILLING=:PFILLING '+
            ',PEXTRACT=:PEXTRACT '+
            ',DTEETH=:DTEETH '+
            ',DCARIES=:DCARIES '+
            ',DFILLING=:DFILLING '+
            ',DEXTRACT=:DEXTRACT '+
            ',NEED_FLUORIDE=:NEED_FLUORIDE '+
            ',NEED_SCALING=:NEED_SCALING '+
            ',NEED_SEALANT=:NEED_SEALANT '+
            ',NEED_PFILLING=:NEED_PFILLING '+
            ',NEED_DFILLING=:NEED_DFILLING '+
            ',NEED_PEXTRACT=:NEED_PEXTRACT '+
            ',NEED_DEXTRACT=:NEED_DEXTRACT '+
            ',NPROSTHESIS=:NPROSTHESIS '+
            ',PERMANENT_PERMANENT=:PERMANENT_PERMANENT '+
            ',PERMANENT_PROSTHESIS=:PERMANENT_PROSTHESIS '+
            ',PROSTHESIS_PROSTHESIS=:PROSTHESIS_PROSTHESIS '+
            ',GUM=:GUM '+
            ',SCHOOLTYPE=:SCHOOLTYPE '+
            ',CLASS=:CLASS '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('DENTTYPE').AsString := DENTTYPE;
            ParamByName('SERVPLACE').AsString := SERVPLACE;
            ParamByName('PTEETH').AsInteger := PTEETH;
            ParamByName('PCARIES').AsInteger := PCARIES;
            ParamByName('PFILLING').AsInteger := PFILLING;
            ParamByName('PEXTRACT').AsInteger := PEXTRACT;
            ParamByName('DTEETH').AsInteger := DTEETH;
            ParamByName('DCARIES').AsInteger := DCARIES;
            ParamByName('DFILLING').AsInteger := DFILLING;
            ParamByName('DEXTRACT').AsInteger := DEXTRACT;
            ParamByName('NEED_FLUORIDE').AsString := NEED_FLUORIDE;
            ParamByName('NEED_SCALING').AsString := NEED_SCALING;
            ParamByName('NEED_SEALANT').AsInteger := NEED_SEALANT;
            ParamByName('NEED_PFILLING').AsInteger := NEED_PFILLING;
            ParamByName('NEED_DFILLING').AsInteger := NEED_DFILLING;
            ParamByName('NEED_PEXTRACT').AsInteger := NEED_PEXTRACT;
            ParamByName('NEED_DEXTRACT').AsInteger := NEED_DEXTRACT;


            //ExecSQL();
            result := true;
            //free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end
      else // INSERT
      begin
        WriteLog('AppServer: append proc');
        //cdsIns :=TClientDataSet.Create(nil);
        try

          qryDental := TSQLQuery.Create(Self);
          with  qryDental do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' insert into report43_dental ( '+
            ' REPORTID,HOSPCODE,PID,SEQ,DATE_SERV,DENTTYPE,SERVPLACE,PTEETH,PCARIES,PFILLING             '+
            ',PEXTRACT,DTEETH,DCARIES,DFILLING,DEXTRACT,NEED_FLUORIDE                                    '+
            ',NEED_SCALING,NEED_SEALANT,NEED_PFILLING,NEED_DFILLING ,NEED_PEXTRACT                       '+
            ',NEED_DEXTRACT,NPROSTHESIS,PERMANENT_PERMANENT,PERMANENT_PROSTHESIS                         '+
            ',PROSTHESIS_PROSTHESIS,GUM,SCHOOLTYPE,CLASS,PROVIDER                                        '+
            ',D_UPDATE)                                                                                  '+
            ' values                                                                                     '+
            '( :REPORTID,:HOSPCODE,:PID,:SEQ,:DATE_SERV,:DENTTYPE,:SERVPLACE,:PTEETH,:PCARIES,:PFILLING  '+
            ' ,:PEXTRACT,:DTEETH,:DCARIES,:DFILLING,:DEXTRACT,:NEED_FLUORIDE                             '+
            ' ,:NEED_SCALING ,:NEED_SEALANT,:NEED_PFILLING,:NEED_DFILLING,:NEED_PEXTRACT                 '+
            ' ,:NEED_DEXTRACT,:NPROSTHESIS,:PERMANENT_PERMANENT,:PERMANENT_PROSTHESIS                    '+
            ' ,:PROSTHESIS_PROSTHESIS,:GUM,:SCHOOLTYPE,:CLASS,:PROVIDER                                  '+
            ' ,:D_UPDATE)' ;

           // WriteLog(IntToStr(REPORTID));
            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('DENTTYPE').AsString := DENTTYPE;
            ParamByName('SERVPLACE').AsString := SERVPLACE;
            ParamByName('PTEETH').AsInteger := PTEETH;
            ParamByName('PCARIES').AsInteger := PCARIES;
            ParamByName('PFILLING').AsInteger := PFILLING;
            ParamByName('PEXTRACT').AsInteger := PEXTRACT;
            ParamByName('DTEETH').AsInteger := DTEETH;
            ParamByName('DCARIES').AsInteger := DCARIES;
            ParamByName('DFILLING').AsInteger := DFILLING;
            ParamByName('DEXTRACT').AsInteger := DEXTRACT;
            ParamByName('NEED_FLUORIDE').AsString := NEED_FLUORIDE;
            ParamByName('NEED_SCALING').AsString := NEED_SCALING;
            ParamByName('NEED_SEALANT').AsInteger := NEED_SEALANT;
            ParamByName('NEED_PFILLING').AsInteger := NEED_PFILLING;
            ParamByName('NEED_DFILLING').AsInteger := NEED_DFILLING;
            ParamByName('NEED_PEXTRACT').AsInteger := NEED_PEXTRACT;
            ParamByName('NEED_DEXTRACT').AsInteger := NEED_DEXTRACT;
           // InputBox('','',sql.Text);
            result := true;
          except
            on E: Exception do
            begin
               LastErrorMsg := E.Message;
               WriteLog(LastErrorMsg);
               free;
               Result := False;
            end;
          end;
        finally
           //cdsIns.free;
        end;
      end;


end;

function TDSHIS43File.InsUpdDental2(NPROSTHESIS: String;
  PERMANENT_PERMANENT, PERMANENT_PROSTHESIS,
  PROSTHESIS_PROSTHESIS: Integer; GUM, SCHOOLTYPE, _CLASS,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
        with  qryDental do
          try
            ParamByName('NPROSTHESIS').AsString := NPROSTHESIS;
            ParamByName('PERMANENT_PERMANENT').AsInteger := PERMANENT_PERMANENT;
            ParamByName('PERMANENT_PROSTHESIS').AsInteger := PERMANENT_PROSTHESIS;
            ParamByName('PROSTHESIS_PROSTHESIS').AsInteger := PROSTHESIS_PROSTHESIS;
            ParamByName('GUM').AsString := GUM;
            ParamByName('SCHOOLTYPE').AsString := SCHOOLTYPE;
            ParamByName('CLASS').AsString := _CLASS;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
end;

function TDSHIS43File.InsUpdDiagnosisIpd(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDDIAG, DIAGTYPE, DIAGCODE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_diagnosis_ipd where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_diagnosis_ipd set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',AN=:AN '+
            ',DATETIME_ADMIT=:DATETIME_ADMIT '+
            ',WARDDIAG=:WARDDIAG '+
            ',DIAGTYPE=:DIAGTYPE '+
            ',DIAGCODE=:DIAGCODE '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('AN').AsString := AN;
            ParamByName('DATETIME_ADMIT').AsDateTime := DATETIME_ADMIT;
            ParamByName('WARDDIAG').AsString := WARDDIAG;
            ParamByName('DIAGTYPE').AsString := DIAGTYPE;
            ParamByName('DIAGCODE').AsString := DIAGCODE;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;



end;

function TDSHIS43File.InsUpdDiagnosisOpd(HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; DIAGTYPE, DIAGCODE, CLINIC,
  PROVIDER: String; D_UPDATE, EXPORT_DATE: double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_diagnosis_opd where DIAGCODE='''+DIAGCODE+''' AND  PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
       try

          //  ShowMessage('update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_diagnosis_opd set '+
                'HOSPCODE=:HOSPCODE '+
                //',PID=:PID '+
                //',SEQ=:SEQ '+
                ',DATE_SERV=:DATE_SERV '+
                ',DIAGTYPE=:DIAGTYPE '+
                ',DIAGCODE=:DIAGCODE '+
                ',CLINIC=:CLINIC '+
                ',PROVIDER=:PROVIDER '+
                ',D_UPDATE=:D_UPDATE '+
                ' WHERE PID=:PID and SEQ=:SEQ';


            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('DIAGTYPE').AsString := DIAGTYPE;
            ParamByName('DIAGCODE').AsString := DIAGCODE;
            ParamByName('CLINIC').AsString := CLINIC;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

        end;
    end
     else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_diagnosis_opd where PID='+inttostr(PID));
           cdsIns.Append;

           with cdsIns do
           begin
        //    ShowMessage('INSERT [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsInteger := PID;
            FieldByName('SEQ').AsInteger := SEQ;
            FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
            FieldByName('DIAGTYPE').AsString := DIAGTYPE;
            FieldByName('DIAGCODE').AsString := DIAGCODE;
            FieldByName('CLINIC').AsString := CLINIC;
            FieldByName('PROVIDER').AsString := PROVIDER;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;
           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_diagnosis_opd where PID='+inttostr(PID));


        finally
           cdsIns.free;
        end;

      end;

end;

function TDSHIS43File.InsUpdDrugallergy(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; DATERECORD: Double; DRUGALLERGY, DNAME,
  TYPEDX, ALEVEL, SYMPTOM, INFORMANT, INFORMHOSP: String;
  D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_drugallergy where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
              SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

              SQL.text:=' update report43_drugallergy set '+
              //'REPORTID=:REPORTID '
              ' HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',DATERECORD=:DATERECORD '+
              ',DRUGALLERGY=:DRUGALLERGY '+
              ',DNAME=:DNAME '+
              ',TYPEDX=:TYPEDX '+
              ',ALEVEL=:ALEVEL '+
              ',SYMPTOM=:SYMPTOM '+
              ',INFORMANT=:INFORMANT '+
              ',INFORMHOSP=:INFORMHOSP '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('DATERECORD').AsDateTime := DATERECORD;
              ParamByName('DRUGALLERGY').AsString := DRUGALLERGY;
              ParamByName('DNAME').AsString := DNAME;
              ParamByName('TYPEDX').AsString := TYPEDX;
              ParamByName('ALEVEL').AsString := ALEVEL;
              ParamByName('SYMPTOM').AsString := SYMPTOM;
              ParamByName('INFORMANT').AsString := INFORMANT;
              ParamByName('INFORMHOSP').AsString := INFORMHOSP;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;


end;

function TDSHIS43File.InsUpdDrugIpd(REPORTID: Integer; ORDER_NO,
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDSTAY, TYPEDRUG, DIDSTD, DNAME: String; DATESTART, DATEFINISH: Double;
  AMOUNT: Integer; _UNIT, UNIT_PACKING: String; DRUGPRICE,
  DRUGCOST: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_drug_ipd where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_drug_ipd set '+
            //'REPORTID=:REPORTID '
            ' ORDER_NO=:ORDER_NO '+
            ',HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',AN=:AN '+
            ',DATETIME_ADMIT=:DATETIME_ADMIT '+
            ',WARDSTAY=:WARDSTAY '+
            ',TYPEDRUG=:TYPEDRUG '+
            ',DIDSTD=:DIDSTD '+
            ',DNAME=:DNAME '+
            ',DATESTART=:DATESTART '+
            ',DATEFINISH=:DATEFINISH '+
            ',AMOUNT=:AMOUNT '+
            ',UNIT=:UNIT '+
            ',UNIT_PACKING=:UNIT_PACKING '+
            ',DRUGPRICE=:DRUGPRICE '+
            ',DRUGCOST=:DRUGCOST '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('ORDER_NO').AsString := ORDER_NO;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('AN').AsString := AN;
            ParamByName('DATETIME_ADMIT').AsDateTime := DATETIME_ADMIT;
            ParamByName('WARDSTAY').AsString := WARDSTAY;
            ParamByName('TYPEDRUG').AsString := TYPEDRUG;
            ParamByName('DIDSTD').AsString := DIDSTD;
            ParamByName('DNAME').AsString := DNAME;
            ParamByName('DATESTART').AsDateTime := DATESTART;
            ParamByName('DATEFINISH').AsDateTime := DATEFINISH;
            ParamByName('AMOUNT').AsInteger := AMOUNT;
            ParamByName('UNIT').AsString := _UNIT;
            ParamByName('UNIT_PACKING').AsString := UNIT_PACKING;
            ParamByName('DRUGPRICE').AsInteger := DRUGPRICE;
            ParamByName('DRUGCOST').AsInteger := DRUGCOST;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;




end;

function TDSHIS43File.InsUpdDrugOpd(REPORTID: Integer; ORDER_NO,
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; CLINIC, DIDSTD,
  DNAME: String; AMOUNT: Integer; _UNIT, UNIT_PACKING: String; DRUGPRICE,
  DRUGCOST: Integer; PROVIDER: String; D_UPDATE: double): boolean;
  var
  cdsIns:TClientDataSet;

begin
//    ShowMessage('select * from report43_drug_opd where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    cdsReport43Temp.data:=GetDataSet('select * from report43_drug_opd where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
        try
 //             ShowMessage('update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
              SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

              SQL.text:=' update report43_drug_opd set '+
              //'REPORTID=:REPORTID '
              ' ORDER_NO=:ORDER_NO '+
              ',HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',SEQ=:SEQ '+
              ',DATE_SERV=:DATE_SERV '+
              ',CLINIC=:CLINIC '+
              ',DIDSTD=:DIDSTD '+
              ',DNAME=:DNAME '+
              ',AMOUNT=:AMOUNT '+
              ',UNIT=:UNIT '+
              ',UNIT_PACKING=:UNIT_PACKING '+
              ',DRUGPRICE=:DRUGPRICE '+
              ',DRUGCOST=:DRUGCOST '+
              ',PROVIDER=:PROVIDER '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('ORDER_NO').AsString := ORDER_NO;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('SEQ').AsInteger := SEQ;
              ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
              ParamByName('CLINIC').AsString := CLINIC;
              ParamByName('DIDSTD').AsString := DIDSTD;
              ParamByName('DNAME').AsString := DNAME;
              ParamByName('AMOUNT').AsInteger := AMOUNT;
              ParamByName('UNIT').AsString := _UNIT;
              ParamByName('UNIT_PACKING').AsString := UNIT_PACKING;
              ParamByName('DRUGPRICE').AsInteger := DRUGPRICE;
              ParamByName('DRUGCOST').AsInteger := DRUGCOST;
              ParamByName('PROVIDER').AsString := PROVIDER;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

       end;
    end
     else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_drug_opd where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
           cdsIns.Append;

           with cdsIns do
           begin
 //             ShowMessage('INSERT [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('ORDER_NO').AsString := ORDER_NO;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('SEQ').AsInteger := SEQ;
              FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
              FieldByName('CLINIC').AsString := CLINIC;
              FieldByName('DIDSTD').AsString := DIDSTD;
              FieldByName('DNAME').AsString := DNAME;
              FieldByName('AMOUNT').AsInteger := AMOUNT;
              FieldByName('UNIT').AsString := _UNIT;
              FieldByName('UNIT_PACKING').AsString := UNIT_PACKING;
              FieldByName('DRUGPRICE').AsInteger := DRUGPRICE;
              FieldByName('DRUGCOST').AsInteger := DRUGCOST;
              FieldByName('PROVIDER').AsString := PROVIDER;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_drug_opd where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));


        finally
           cdsIns.free;
        end;

      end;


end;

function TDSHIS43File.InsUpdEpi(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; VACCINETYPE, VACCINEPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
begin

    cdsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_epi where REPORTID='+inttostr(REPORTID)+' and SEQ='+inttostr(SEQ)+' and SEQ='+inttostr(SEQ));
    if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
            //  ShowMessage('update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
              SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

              SQL.text:=' update report43_epi set '+
              'HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',SEQ=:SEQ '+
              ',DATE_SERV=:DATE_SERV '+
              ',VACCINETYPE=:VACCINETYPE '+
              ',VACCINEPLACE=:VACCINEPLACE '+
              ',PROVIDER=:PROVIDER '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:PID ';

              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('SEQ').AsInteger := SEQ;
              ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
              ParamByName('VACCINETYPE').AsString := VACCINETYPE;
              ParamByName('VACCINEPLACE').AsString := VACCINEPLACE;
              ParamByName('PROVIDER').AsString := PROVIDER;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end
    else
    begin   // insert
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_epi where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+'  and SEQ='+inttostr(SEQ));
           cdsIns.Append;

           with cdsIns do
           begin
     //         ShowMessage('insert [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('SEQ').AsInteger := SEQ;
              FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
              FieldByName('VACCINETYPE').AsString := VACCINETYPE;
              FieldByName('VACCINEPLACE').AsString := VACCINEPLACE;
              FieldByName('PROVIDER').AsString := PROVIDER;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_epi where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+'  and SEQ='+inttostr(SEQ));
        finally
           cdsIns.free;
        end;
    end;


end;

function TDSHIS43File.InsUpdFp(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; FPTYPE, FPPLACE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_fp where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
              SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

              SQL.text:=' update report43_fp set '+
              //'REPORTID=:REPORTID '
              'HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',SEQ=:SEQ '+
              ',DATE_SERV=:DATE_SERV '+
              ',FPTYPE=:FPTYPE '+
              ',FPPLACE=:FPPLACE '+
              ',PROVIDER=:PROVIDER '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('SEQ').AsInteger := SEQ;
              ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
              ParamByName('FPTYPE').AsString := FPTYPE;
              ParamByName('FPPLACE').AsString := FPPLACE;
              ParamByName('PROVIDER').AsString := PROVIDER;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;


end;

function TDSHIS43File.InsUpdHomeA(REPORTID: Integer; HOSPCODE, HID,
  HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSE, SOISUB, SOIMAIN, ROAD,
  VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT, TELEPHONE: String; LATITUDE,
  LONGITUDE: Integer; NFAMILY: String): boolean;
var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_home where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        qryHome := TSQLQuery.Create(Self);

        with  qryHome do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_home set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',HID=:HID '+
            ',HOUSE_ID=:HOUSE_ID '+
            ',HOUSETYPE=:HOUSETYPE '+
            ',ROOMNO=:ROOMNO '+
            ',CONDO=:CONDO '+
            ',HOUSE=:HOUSE '+
            ',SOISUB=:SOISUB '+
            ',SOIMAIN=:SOIMAIN '+
            ',ROAD=:ROAD '+
            ',VILLANAME=:VILLANAME '+
            ',VILLAGE=:VILLAGE '+
            ',TAMBON=:TAMBON '+
            ',AMPUR=:AMPUR '+
            ',CHANGWAT=:CHANGWAT '+
            ',TELEPHONE=:TELEPHONE '+
            ',LATITUDE=:LATITUDE '+
            ',LONGITUDE=:LONGITUDE '+
            ',NFAMILY=:NFAMILY '+

            ',LOCATYPE=:LOCATYPE '+
            ',VHVID=:VHVID '+
            ',HEADID=:HEADID '+
            ',TOILET=:TOILET '+
            ',WATER=:WATER '+
            ',WATERTYPE=:WATERTYPE '+
            ',GARBAGE=:GARBAGE '+
            ',HOUSING=:HOUSING '+
            ',DURABILITY=:DURABILITY '+
            ',CLEANLINESS=:CLEANLINESS '+
            ',VENTILATION=:VENTILATION '+
            ',LIGHT=:LIGHT '+
            ',WATERTM=:WATERTM '+
            ',MFOOD=:MFOOD '+
            ',BCONTROL=:BCONTROL '+
            ',ACONTROL=:ACONTROL '+
            ',CHEMICAL=:CHEMICAL '+
            ',OUTDATE=:OUTDATE '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('HID').AsString := HID;
            ParamByName('HOUSE_ID').AsString := HOUSE_ID;
            ParamByName('HOUSETYPE').AsString := HOUSETYPE;
            ParamByName('ROOMNO').AsString := ROOMNO;
            ParamByName('CONDO').AsString := CONDO;
            ParamByName('HOUSE').AsString := HOUSE;
            ParamByName('SOISUB').AsString := SOISUB;
            ParamByName('SOIMAIN').AsString := SOIMAIN;
            ParamByName('ROAD').AsString := ROAD;
            ParamByName('VILLANAME').AsString := VILLANAME;
            ParamByName('VILLAGE').AsString := VILLAGE;
            ParamByName('TAMBON').AsString := TAMBON;
            ParamByName('AMPUR').AsString := AMPUR;
            ParamByName('CHANGWAT').AsString := CHANGWAT;
            ParamByName('TELEPHONE').AsString := TELEPHONE;
            ParamByName('LATITUDE').AsInteger := LATITUDE;
            ParamByName('LONGITUDE').AsInteger := LONGITUDE;
            ParamByName('NFAMILY').AsString := NFAMILY;



            //ExecSQL();
            result := true;
            //free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end
    else // INSERT
      begin
        WriteLog('AppServer: append proc');
        //cdsIns :=TClientDataSet.Create(nil);
        try

          qryHome := TSQLQuery.Create(Self);
          with  qryHome do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' insert into report43_home ( '+
            'REPORTID,HOSPCODE,HID,HOUSE_ID,HOUSETYPE,ROOMNO,CONDO,HOUSE,SOISUB,SOIMAIN,ROAD,VILLANAME,VILLAGE,TAMBON                           '+
            ',AMPUR,CHANGWAT,TELEPHONE,LATITUDE,LONGITUDE,NFAMILY                                                                               '+
            ',LOCATYPE,VHVID,HEADID,TOILET,WATER,WATERTYPE,GARBAGE,HOUSING,DURABILITY,CLEANLINESS,VENTILATION                                   '+
            ',LIGHT,WATERTM,MFOOD,BCONTROL,ACONTROL,CHEMICAL,OUTDATE,D_UPDATE)                                                                  '+
            ' values (:REPORTID,:HOSPCODE,:HID,:HOUSE_ID,:HOUSETYPE,:ROOMNO,:CONDO,:HOUSE,:SOISUB,:SOIMAIN,:ROAD,:VILLANAME,:VILLAGE,:TAMBON   '+
            ' ,:AMPUR,:CHANGWAT,:TELEPHONE,:LATITUDE,:LONGITUDE,:NFAMILY                                                                        '+
            ' ,:LOCATYPE,:VHVID,:HEADID,:TOILET,:WATER,:WATERTYPE,:GARBAGE,:HOUSING,:DURABILITY,:CLEANLINESS,:VENTILATION                       '+
            ' ,:LIGHT,:WATERTM,:MFOOD,:BCONTROL,:ACONTROL,:CHEMICAL,:OUTDATE,:D_UPDATE)' ;


             ParamByName('REPORTID').AsInteger := REPORTID;
             ParamByName('HOSPCODE').AsString := HOSPCODE;
             ParamByName('HID').AsString := HID;
             ParamByName('HOUSE_ID').AsString := HOUSE_ID;
             ParamByName('HOUSETYPE').AsString := HOUSETYPE;
             ParamByName('ROOMNO').AsString := ROOMNO;
             ParamByName('CONDO').AsString := CONDO;
             ParamByName('HOUSE').AsString := HOUSE;
             ParamByName('SOISUB').AsString := SOISUB;
             ParamByName('SOIMAIN').AsString := SOIMAIN;
             ParamByName('ROAD').AsString := ROAD;
             ParamByName('VILLANAME').AsString := VILLANAME;
             ParamByName('VILLAGE').AsString := VILLAGE;
             ParamByName('TAMBON').AsString := TAMBON;
             ParamByName('AMPUR').AsString := AMPUR;
             ParamByName('CHANGWAT').AsString := CHANGWAT;
             ParamByName('TELEPHONE').AsString := TELEPHONE;
             ParamByName('LONGITUDE').AsInteger := LONGITUDE;
             ParamByName('NFAMILY').AsString := NFAMILY;
            result := true;
          except
            on E: Exception do
            begin
               LastErrorMsg := E.Message;
               WriteLog(LastErrorMsg);
               free;
               Result := False;
            end;
          end;
        finally
           //cdsIns.free;
        end;
      end;


end;

function TDSHIS43File.InsUpdHomeB(LOCATYPE, VHVID, HEADID, TOILET, WATER,
  WATERTYPE, GARBAGE, HOUSING, DURABILITY, CLEANLINESS, VENTILATION, LIGHT,
  WATERTM, MFOOD, BCONTROL, ACONTROL, CHEMICAL: String; OUTDATE,
  D_UPDATE: Double): boolean;
begin
    with  qryHome do
      try
            ParamByName('LOCATYPE').AsString := LOCATYPE;
            ParamByName('VHVID').AsString := VHVID;
            ParamByName('HEADID').AsString := HEADID;
            ParamByName('TOILET').AsString := TOILET;
            ParamByName('WATER').AsString := WATER;
            ParamByName('WATERTYPE').AsString := WATERTYPE;
            ParamByName('GARBAGE').AsString := GARBAGE;
            ParamByName('HOUSING').AsString := HOUSING;
            ParamByName('DURABILITY').AsString := DURABILITY;
            ParamByName('CLEANLINESS').AsString := CLEANLINESS;
            ParamByName('VENTILATION').AsString := VENTILATION;
            ParamByName('LIGHT').AsString := LIGHT;
            ParamByName('WATERTM').AsString := WATERTM;
            ParamByName('MFOOD').AsString := MFOOD;
            ParamByName('BCONTROL').AsString := BCONTROL;
            ParamByName('ACONTROL').AsString := ACONTROL;
            ParamByName('CHEMICAL').AsString := CHEMICAL;
            ParamByName('OUTDATE').AsDateTime := OUTDATE;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;
           // InputBox('','',SQL.Text);
            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end
end;

function TDSHIS43File.InsUpdIcf(REPORTID: Integer; HOSPCODE,
  DISABID: String; PID, SEQ: Integer; DATE_SERV: Double; ICF, QUALIFIER,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_icf where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
              SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

              SQL.text:=' update report43_icf set '+
              //'REPORTID=:REPORTID '
              ' HOSPCODE=:HOSPCODE '+
              ',DISABID=:DISABID '+
              ',PID=:PID '+
              ',SEQ=:SEQ '+
              ',DATE_SERV=:DATE_SERV '+
              ',ICF=:ICF '+
              ',QUALIFIER=:QUALIFIER '+
              ',PROVIDER=:PROVIDER '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('DISABID').AsString := DISABID;
              ParamByName('PID').AsInteger := PID;
              ParamByName('SEQ').AsInteger := SEQ;
              ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
              ParamByName('ICF').AsString := ICF;
              ParamByName('QUALIFIER').AsString := QUALIFIER;
              ParamByName('PROVIDER').AsString := PROVIDER;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;
end;

function TDSHIS43File.InsUpdLabFu(REPORTID: Integer; HOSPCODE: String; PID,
  SEQ: Integer; DATE_SERV: Double; LABTEST: String; LABRESULT: Integer;
  D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_labfu where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_labfu set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',LABTEST=:LABTEST '+
            ',LABRESULT=:LABRESULT '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('LABTEST').AsString := LABTEST;
            ParamByName('LABRESULT').AsInteger := LABRESULT;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;





end;

function TDSHIS43File.InsUpdLabOr(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; GRAVIDA: String; LMP, EDC, BDATE: Double; BRESULT, BPLACE,
  BHOSP, BTYPE, BDOCTOR: String; LBORN, SBORN: Integer;
  D_UPDATE: double): boolean;
var
  cdsIns:TClientDataSet;
begin
   // ShowMessage('select count(*) as cc from report43_labor where  REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
    cdsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_labor where  REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
    if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
             // ShowMessage('update [PID='+inttostr(PID)+'and REPORTID='+inttostr(REPORTID)+']');
              SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
              SQL.text:=' update report43_labor set '+
              //'REPORTID=:REPORTID '
              'HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',GRAVIDA=:GRAVIDA '+
              ',LMP=:LMP '+
              ',EDC=:EDC '+
              ',BDATE=:BDATE '+
              ',BRESULT=:BRESULT '+
              ',BPLACE=:BPLACE '+
              ',BHOSP=:BHOSP '+
              ',BTYPE=:BTYPE '+
              ',BDOCTOR=:BDOCTOR '+
              ',LBORN=:LBORN '+
              ',SBORN=:SBORN '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('GRAVIDA').AsString := GRAVIDA;
              ParamByName('LMP').AsDateTime := LMP;
              ParamByName('EDC').AsDateTime := EDC;
              ParamByName('BDATE').AsDateTime := BDATE;
              ParamByName('BRESULT').AsString := BRESULT;
              ParamByName('BPLACE').AsString := BPLACE;
              ParamByName('BHOSP').AsString := BHOSP;
              ParamByName('BTYPE').AsString := BTYPE;
              ParamByName('BDOCTOR').AsString := BDOCTOR;
              ParamByName('LBORN').AsInteger := LBORN;
              ParamByName('SBORN').AsInteger := SBORN;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end else
    begin   // insert
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
          // ShowMessage('insert [PID='+inttostr(PID)+'and REPORTID='+inttostr(REPORTID)+']');
           cdsIns.data := GetDataSet('select * from report43_labor where PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
           cdsIns.Append;

           with cdsIns do
           begin
           // NewPID := getCdeRunWithLen(13754,'PID',5);
           // WriteLog('gen New PID :'+inttostr(NewPID));
              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('GRAVIDA').AsString := GRAVIDA;
              FieldByName('LMP').AsDateTime := LMP;
              FieldByName('EDC').AsDateTime := EDC;
              FieldByName('BDATE').AsDateTime := BDATE;
              FieldByName('BRESULT').AsString := BRESULT;
              FieldByName('BPLACE').AsString := BPLACE;
              FieldByName('BHOSP').AsString := BHOSP;
              FieldByName('BTYPE').AsString := BTYPE;
              FieldByName('BDOCTOR').AsString := BDOCTOR;
              FieldByName('LBORN').AsInteger := LBORN;
              FieldByName('SBORN').AsInteger := SBORN;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
           begin
            // ShowMessage('insert [PID='+inttostr(PID)+'and REPORTID='+inttostr(REPORTID)+']');
             UpdateDataset(cdsIns,'select * from report43_labor where PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
           end;


        finally
           cdsIns.free;
        end;
    end;


end;


function TDSHIS43File.InsUpdNcdscreen(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; SERVPLACE, SMOKE, ALCOHOL,
  DMFAMILY, HTFAMILY: String; WEIGHT, HEIGHT, WAIST_CM, SBP_1, DBP_1,
  SBP_2, DBP_2, BSLEVEL: Integer; BSTEST, SCREENPLACE, PROVIDER: String;
  D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_ncdscreen where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_ncdscreen set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',SERVPLACE=:SERVPLACE '+
            ',SMOKE=:SMOKE '+
            ',ALCOHOL=:ALCOHOL '+
            ',DMFAMILY=:DMFAMILY '+
            ',HTFAMILY=:HTFAMILY '+
            ',WEIGHT=:WEIGHT '+
            ',HEIGHT=:HEIGHT '+
            ',WAIST_CM=:WAIST_CM '+
            ',SBP_1=:SBP_1 '+
            ',DBP_1=:DBP_1 '+
            ',SBP_2=:SBP_2 '+
            ',DBP_2=:DBP_2 '+
            ',BSLEVEL=:BSLEVEL '+
            ',BSTEST=:BSTEST '+
            ',SCREENPLACE=:SCREENPLACE '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('SERVPLACE').AsString := SERVPLACE;
            ParamByName('SMOKE').AsString := SMOKE;
            ParamByName('ALCOHOL').AsString := ALCOHOL;
            ParamByName('DMFAMILY').AsString := DMFAMILY;
            ParamByName('HTFAMILY').AsString := HTFAMILY;
            ParamByName('WEIGHT').AsInteger := WEIGHT;
            ParamByName('HEIGHT').AsInteger := HEIGHT;
            ParamByName('WAIST_CM').AsInteger := WAIST_CM;
            ParamByName('SBP_1').AsInteger := SBP_1;
            ParamByName('DBP_1').AsInteger := DBP_1;
            ParamByName('SBP_2').AsInteger := SBP_2;
            ParamByName('DBP_2').AsInteger := DBP_2;
            ParamByName('BSLEVEL').AsInteger := BSLEVEL;
            ParamByName('BSTEST').AsString := BSTEST;
            ParamByName('SCREENPLACE').AsString := SCREENPLACE;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;

end;

function TDSHIS43File.InsUpdNewborn(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; MPID, GRAVIDA, GA: String; BDATE, BTIME: Double; BPLACE,
  BHOSP, BIRTHNO, BTYPE, BDOCTOR: String; BWEIGHT: Integer; ASPHYXIA, VITK,
  TSH: String; TSHRESULT: Integer; D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_newborn where  REPORTID='+inttostr(REPORTID)+' AND  PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
    if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_newborn set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',MPID=:MPID '+
            ',GRAVIDA=:GRAVIDA '+
            ',GA=:GA '+
            ',BDATE=:BDATE '+
            ',BTIME=:BTIME '+
            ',BPLACE=:BPLACE '+
            ',BHOSP=:BHOSP '+
            ',BIRTHNO=:BIRTHNO '+
            ',BTYPE=:BTYPE '+
            ',BDOCTOR=:BDOCTOR '+
            ',BWEIGHT=:BWEIGHT '+
            ',ASPHYXIA=:ASPHYXIA '+
            ',VITK=:VITK '+
            ',TSH=:TSH '+
            ',TSHRESULT=:TSHRESULT '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('MPID').AsString := MPID;
            ParamByName('GRAVIDA').AsString := GRAVIDA;
            ParamByName('GA').AsString := GA;
            ParamByName('BDATE').AsDateTime := BDATE;
            ParamByName('BTIME').AsDateTime := BTIME;
            ParamByName('BPLACE').AsString := BPLACE;
            ParamByName('BHOSP').AsString := BHOSP;
            ParamByName('BIRTHNO').AsString := BIRTHNO;
            ParamByName('BTYPE').AsString := BTYPE;
            ParamByName('BDOCTOR').AsString := BDOCTOR;
            ParamByName('BWEIGHT').AsInteger := BWEIGHT;
            ParamByName('ASPHYXIA').AsString := ASPHYXIA;
            ParamByName('VITK').AsString := VITK;
            ParamByName('TSH').AsString := TSH;
            ParamByName('TSHRESULT').AsInteger := TSHRESULT;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end else
    begin   // insert
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_newborn where PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
           cdsIns.Append;

           with cdsIns do
           begin
            FieldByName('REPORTID').AsInteger := REPORTID;
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsInteger := PID;
            FieldByName('MPID').AsString := MPID;
            FieldByName('GRAVIDA').AsString := GRAVIDA;
            FieldByName('GA').AsString := GA;
            FieldByName('BDATE').AsDateTime := BDATE;
            FieldByName('BTIME').AsDateTime := BTIME;
            FieldByName('BPLACE').AsString := BPLACE;
            FieldByName('BHOSP').AsString := BHOSP;
            FieldByName('BIRTHNO').AsString := BIRTHNO;
            FieldByName('BTYPE').AsString := BTYPE;
            FieldByName('BDOCTOR').AsString := BDOCTOR;
            FieldByName('BWEIGHT').AsInteger := BWEIGHT;
            FieldByName('ASPHYXIA').AsString := ASPHYXIA;
            FieldByName('VITK').AsString := VITK;
            FieldByName('TSH').AsString := TSH;
            FieldByName('TSHRESULT').AsInteger := TSHRESULT;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_newborn where PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);


        finally
           cdsIns.free;
        end;
    end;


end;

function TDSHIS43File.InsUpdNewbornCare(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; BDATE, BCARE: Double; BCPLACE,
  BCARERESULT, FOOD, PROVIDER: String; D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
begin

    cdsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_newborncare where PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_newborncare set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',BDATE=:BDATE '+
            ',BCARE=:BCARE '+
            ',BCPLACE=:BCPLACE '+
            ',BCARERESULT=:BCARERESULT '+
            ',FOOD=:FOOD '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('BDATE').AsDateTime := BDATE;
            ParamByName('BCARE').AsDateTime := BCARE;
            ParamByName('BCPLACE').AsString := BCPLACE;
            ParamByName('BCARERESULT').AsString := BCARERESULT;
            ParamByName('FOOD').AsString := FOOD;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end else
    begin   // insert
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_newborncare where PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
           cdsIns.Append;

           with cdsIns do
           begin
           // NewPID := getCdeRunWithLen(13754,'PID',5);
           // WriteLog('gen New PID :'+inttostr(NewPID));

            FieldByName('REPORTID').AsInteger := REPORTID;
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsInteger := PID;
            FieldByName('SEQ').AsInteger := SEQ;
            FieldByName('BDATE').AsDateTime := BDATE;
            FieldByName('BCARE').AsDateTime := BCARE;
            FieldByName('BCPLACE').AsString := BCPLACE;
            FieldByName('BCARERESULT').AsString := BCARERESULT;
            FieldByName('FOOD').AsString := FOOD;
            FieldByName('PROVIDER').AsString := PROVIDER;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_newborncare where PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));


        finally
           cdsIns.free;
        end;
    end;



end;

function TDSHIS43File.InsUpdNutrition(REPORTID: Integer; HOSPCODE: String;
  PID, SEQ: Integer; DATE_SERV: Double; NUTRITIONPLACE: String; WEIGHT,
  HEIGHT, HEADCIRCUM: Integer; CHILDDEVELOP, FOOD, BOTTLE,
  PROVIDER: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_nutrition where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_nutrition set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',NUTRITIONPLACE=:NUTRITIONPLACE '+
            ',WEIGHT=:WEIGHT '+
            ',HEIGHT=:HEIGHT '+
            ',HEADCIRCUM=:HEADCIRCUM '+
            ',CHILDDEVELOP=:CHILDDEVELOP '+
            ',FOOD=:FOOD '+
            ',BOTTLE=:BOTTLE '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('NUTRITIONPLACE').AsString := NUTRITIONPLACE;
            ParamByName('WEIGHT').AsInteger := WEIGHT;
            ParamByName('HEIGHT').AsInteger := HEIGHT;
            ParamByName('HEADCIRCUM').AsInteger := HEADCIRCUM;
            ParamByName('CHILDDEVELOP').AsString := CHILDDEVELOP;
            ParamByName('FOOD').AsString := FOOD;
            ParamByName('BOTTLE').AsString := BOTTLE;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;

end;

function TDSHIS43File.InsUpdPerson(
  REPORTID: Integer;
  HOSPCODE,
  CID:string;
  PID:integer;
  HID,
  PRENAME,
  FNAME,
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
var qrySQL:TSQLQuery;
    cdsIns:TClientDataSet;
    NewPID:integer;

begin
    cdsReport43Person.data:=GetDataSet('select count(*) as cc from report43_person where CID='+QuotedStr(CID));
    if cdsReport43Person.FieldByName('cc').AsInteger>0 then
    begin
       WriteLog('AppServer: update proc');
       writelog('AppServer: rec count '+cdsReport43Person.FieldByName('cc').AsString);
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
       try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_person set '+
            //'REPORTID=:REPORTID '+
            'HOSPCODE=:HOSPCODE '+
            //',CID=:CID '+
            ',PID=:PID '+
            ',HID=:HID '+
            ',PRENAME=:PRENAME '+
            ',NAME=:FNAME '+ //:FNAME
            ',LNAME=:LNAME '+
            ',HN=:HN '+
            ',SEX=:SEX '+
            ',BIRTH=:BIRTH '+
            ',MSTATUS=:MSTATUS '+
            ',OCCUPATION_OLD=:OCCUPATION_OLD '+
            ',OCCUPATION_NEW=:OCCUPATION_NEW '+
            ',RACE=:RACE '+
            ',NATION=:NATION '+
            ',RELIGION=:RELIGION '+
            ',EDUCATION=:EDUCATION '+
            ',FSTATUS=:FSTATUS '+
            ',FATHER=:FATHER '+
            ',MOTHER=:MOTHER '+
            ',COUPLE=:COUPLE '+
            ',VSTATUS=:VSTATUS '+
            ',MOVEIN=:MOVEIN '+
            ',DISCHARGE=:DISCHARGE '+
            ',DDISCHARGE=:DDISCHARGE '+
            ',ABOGROUP=:ABOGROUP '+
            ',RHGROUP=:RHGROUP '+
            ',LABOR=:LABOR '+
            ',PASSPORT=:PASSPORT '+
            //',TYPEAREA=:TYPEAREA '+
            {',D_UPDATE=:D_UPDATE '+
            ',EXPORT_DATE=:EXPORT_DATE '+ }
            ' where CID=:CID';

            //WriteLog(SQL.text);

            //ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('CID').AsString := CID;
            ParamByName('PID').AsInteger := PID;
            ParamByName('HID').AsString := HID;
            ParamByName('PRENAME').AsString := PRENAME;
            ParamByName('FNAME').AsString := FNAME;
            ParamByName('LNAME').AsString := LNAME;
            ParamByName('HN').AsString := HN;
            ParamByName('SEX').AsString := SEX;
            ParamByName('BIRTH').AsDateTime := BIRTH;
            ParamByName('MSTATUS').AsString := MSTATUS;
            ParamByName('OCCUPATION_OLD').AsString := OCCUPATION_OLD;
            ParamByName('OCCUPATION_NEW').AsString := OCCUPATION_NEW;
            ParamByName('RACE').AsString := RACE;
            ParamByName('NATION').AsString := NATION;
            ParamByName('RELIGION').AsString := RELIGION;
            ParamByName('EDUCATION').AsString := EDUCATION;
            ParamByName('FSTATUS').AsString := FSTATUS;
            ParamByName('FATHER').AsString := FATHER;
            ParamByName('MOTHER').AsString := MOTHER;
            ParamByName('COUPLE').AsString := COUPLE;
            ParamByName('VSTATUS').AsString := VSTATUS;
            ParamByName('MOVEIN').AsDateTime := MOVEIN;
            ParamByName('DISCHARGE').AsString := DISCHARGE;
            ParamByName('DDISCHARGE').AsDateTime := DDISCHARGE;
            ParamByName('ABOGROUP').AsString := ABOGROUP;
            ParamByName('RHGROUP').AsString := RHGROUP;
            ParamByName('LABOR').AsString := LABOR;
            ParamByName('PASSPORT').AsString := PASSPORT;

            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);

             free;
             Result := False;
          end;

        end;
    end
       else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_person where CID='+QuotedStr(CID));
           cdsIns.Append;

           with cdsIns do
           begin
           // NewPID := getCdeRunWithLen(13754,'PID',5);
           // WriteLog('gen New PID :'+inttostr(NewPID));

            FieldByName('CID').AsString := CID;
            FieldByName('PID').AsInteger := PID;
            FieldByName('HID').AsString := HID;
            FieldByName('PRENAME').AsString := PRENAME;
            FieldByName('NAME').AsString := FNAME;
            FieldByName('LNAME').AsString := LNAME;
            FieldByName('HN').AsString := HN;
            FieldByName('SEX').AsString := SEX;
            FieldByName('BIRTH').AsDateTime := BIRTH;
            FieldByName('MSTATUS').AsString := MSTATUS;
            FieldByName('OCCUPATION_OLD').AsString := OCCUPATION_OLD;
            FieldByName('OCCUPATION_NEW').AsString := OCCUPATION_NEW;
            FieldByName('RACE').AsString := RACE;
            FieldByName('NATION').AsString := NATION;
            FieldByName('RELIGION').AsString := RELIGION;
            FieldByName('EDUCATION').AsString := EDUCATION;
            FieldByName('FSTATUS').AsString := FSTATUS;
            FieldByName('FATHER').AsString := FATHER;
            FieldByName('MOTHER').AsString := MOTHER;
            FieldByName('COUPLE').AsString := COUPLE;
            FieldByName('VSTATUS').AsString := VSTATUS;
            FieldByName('MOVEIN').AsDateTime := MOVEIN;
            FieldByName('DISCHARGE').AsString := DISCHARGE;
            FieldByName('DDISCHARGE').AsDateTime := DDISCHARGE;
            FieldByName('ABOGROUP').AsString := ABOGROUP;
            FieldByName('RHGROUP').AsString := RHGROUP;
            FieldByName('LABOR').AsString := LABOR;
            FieldByName('PASSPORT').AsString := PASSPORT;
           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_person where CID='+QuotedStr(CID));


        finally
           cdsIns.free;
        end;

      end;

    {
    except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
     //  WriteLog(LastErrorMsg);
       Result := False;
    end;
    }
 // end;


end;



function TDSHIS43File.InsUpdPostnatal(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; SEQ, GRAVIDA: String; BDATE, PPCARE: Double; PPPLACE,
  PPRESULT, PROVIDER: String; D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
begin
    //dsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_postnatal where PID='+IntToStr(PID)+' and SEQ='+QuotedStr(SEQ));
    //if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    cdsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_postnatal where PID='+IntToStr(PID)+' and SEQ='+SEQ);
    if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_postnatal set '+
              //'REPORTID=:REPORTID '
              'HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',SEQ=:SEQ '+
              ',GRAVIDA=:GRAVIDA '+
              ',BDATE=:BDATE '+
              ',PPCARE=:PPCARE '+
              ',PPPLACE=:PPPLACE '+
              ',PPRESULT=:PPRESULT '+
              ',PROVIDER=:PROVIDER '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('SEQ').AsString := SEQ;
              ParamByName('GRAVIDA').AsString := GRAVIDA;
              ParamByName('BDATE').AsDateTime := BDATE;
              ParamByName('PPCARE').AsDateTime := PPCARE;
              ParamByName('PPPLACE').AsString := PPPLACE;
              ParamByName('PPRESULT').AsString := PPRESULT;
              ParamByName('PROVIDER').AsString := PROVIDER;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end else
    begin // add new
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_postnatal where PID='+IntToStr(PID)+' and SEQ='+SEQ);
           cdsIns.Append;

           with cdsIns do
           begin
           // FieldByName('REPORTID').AsInteger := REPORTID;
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsInteger := PID;
            FieldByName('SEQ').AsString := SEQ;
            FieldByName('GRAVIDA').AsString := GRAVIDA;
            FieldByName('BDATE').AsDateTime := BDATE;
            FieldByName('PPCARE').AsDateTime := PPCARE;
            FieldByName('PPPLACE').AsString := PPPLACE;
            FieldByName('PPRESULT').AsString := PPRESULT;
            FieldByName('PROVIDER').AsString := PROVIDER;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;
           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;

           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_postnatal where PID='+IntToStr(PID)+' and SEQ='+SEQ);

        finally
           cdsIns.free;
        end;
    end;


end;

function TDSHIS43File.InsUpdPrenatal(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; GRAVIDA: String; LMP, EDC: Double; VDRL_RESULT, HB_RESULT,
  HIV_RESULT: String; DATE_HCT: Double; HCT_RESULT: Integer;
  THALASSEMIA: String; D_UPDATE: Double): boolean;
var
  cdsIns:TClientDataSet;
begin
    //cdsReport43Temp.data:=GetDataSet('select * from report43_prenatal where REPORTID='+inttostr(REPORTID));
    //if cdsReport43Temp.RecordCount>0 then
    cdsReport43Temp.data:=GetDataSet('select count(*) as cc from report43_prenatal where PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
    if cdsReport43Temp.FieldByName('cc').AsInteger>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try

            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_prenatal set '+
              //'REPORTID=:REPORTID '
              ' HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',GRAVIDA=:GRAVIDA '+
              ',LMP=:LMP '+
              ',EDC=:EDC '+
              ',VDRL_RESULT=:VDRL_RESULT '+
              ',HB_RESULT=:HB_RESULT '+
              ',HIV_RESULT=:HIV_RESULT '+
              ',DATE_HCT=:DATE_HCT '+
              ',HCT_RESULT=:HCT_RESULT '+
              ',THALASSEMIA=:THALASSEMIA '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('GRAVIDA').AsString := GRAVIDA;
              ParamByName('LMP').AsDateTime := LMP;
              ParamByName('EDC').AsDateTime := EDC;
              ParamByName('VDRL_RESULT').AsString := VDRL_RESULT;
              ParamByName('HB_RESULT').AsString := HB_RESULT;
              ParamByName('HIV_RESULT').AsString := HIV_RESULT;
              ParamByName('DATE_HCT').AsDateTime := DATE_HCT;
              ParamByName('HCT_RESULT').AsInteger := HCT_RESULT;
              ParamByName('THALASSEMIA').AsString := THALASSEMIA;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end else
    begin   // insert
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_prenatal where PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);
           cdsIns.Append;

           with cdsIns do
           begin
           // NewPID := getCdeRunWithLen(13754,'PID',5);
           // WriteLog('gen New PID :'+inttostr(NewPID));

              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('GRAVIDA').AsString := GRAVIDA;
              FieldByName('LMP').AsDateTime := LMP;
              FieldByName('EDC').AsDateTime := EDC;
              FieldByName('VDRL_RESULT').AsString := VDRL_RESULT;
              FieldByName('HB_RESULT').AsString := HB_RESULT;
              FieldByName('HIV_RESULT').AsString := HIV_RESULT;
              FieldByName('DATE_HCT').AsDateTime := DATE_HCT;
              FieldByName('HCT_RESULT').AsInteger := HCT_RESULT;
              FieldByName('THALASSEMIA').AsString := THALASSEMIA;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_prenatal where PID='+inttostr(PID)+' and GRAVIDA='+GRAVIDA);


        finally
           cdsIns.free;
        end;
    end;


end;

function TDSHIS43File.InsUpdProcedureIpd(REPORTID: Integer;
  HOSPCODE: String; PID: Integer; AN: String; DATETIME_ADMIT: Double;
  WARDSTAY, PROCEDCODE: String; TIMESTART, TIMEFINISH: Double;
  SERVICEPRICE: Integer; PROVIDER: String; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_procedure_ipd where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_procedure_ipd set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',AN=:AN '+
            ',DATETIME_ADMIT=:DATETIME_ADMIT '+
            ',WARDSTAY=:WARDSTAY '+
            ',PROCEDCODE=:PROCEDCODE '+
            ',TIMESTART=:TIMESTART '+
            ',TIMEFINISH=:TIMEFINISH '+
            ',SERVICEPRICE=:SERVICEPRICE '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('AN').AsString := AN;
            ParamByName('DATETIME_ADMIT').AsDateTime := DATETIME_ADMIT;
            ParamByName('WARDSTAY').AsString := WARDSTAY;
            ParamByName('PROCEDCODE').AsString := PROCEDCODE;
            ParamByName('TIMESTART').AsDateTime := TIMESTART;
            ParamByName('TIMEFINISH').AsDateTime := TIMEFINISH;
            ParamByName('SERVICEPRICE').AsInteger := SERVICEPRICE;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;



end;

function TDSHIS43File.InsUpdProcedureOpd(REPORTID: Integer;
  HOSPCODE: String; PID, SEQ: Integer; DATE_SERV: Double; CLINIC,
  PROCEDCODE: String; SERVICEPRICE: Integer; PROVIDER: String;
  D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_procedure_opd where REPORTID='+inttostr(REPORTID)+' AND  PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
       try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_procedure_opd set '+
              //'REPORTID=:REPORTID ' +
              'HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',SEQ=:SEQ '+
              ',DATE_SERV=:DATE_SERV '+
              ',CLINIC=:CLINIC '+
              ',PROCEDCODE=:PROCEDCODE '+
              ',SERVICEPRICE=:SERVICEPRICE '+
              ',PROVIDER=:PROVIDER '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

              ParamByName('REPORTID').AsInteger := REPORTID;
              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('SEQ').AsInteger := SEQ;
              ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
              ParamByName('CLINIC').AsString := CLINIC;
              ParamByName('PROCEDCODE').AsString := PROCEDCODE;
              ParamByName('SERVICEPRICE').AsInteger := SERVICEPRICE;
              ParamByName('PROVIDER').AsString := PROVIDER;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

       end;
    end
     else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_procedure_opd where REPORTID='+inttostr(REPORTID));
           cdsIns.Append;

           with cdsIns do
           begin

              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('SEQ').AsInteger := SEQ;
              FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
              FieldByName('CLINIC').AsString := CLINIC;
              FieldByName('PROCEDCODE').AsString := PROCEDCODE;
              FieldByName('SERVICEPRICE').AsInteger := SERVICEPRICE;
              FieldByName('PROVIDER').AsString := PROVIDER;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;
           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_procedure_opd where REPORTID='+inttostr(REPORTID));


        finally
           cdsIns.free;
        end;

      end;


end;

function TDSHIS43File.InsUpdService(HOSPCODE: String; PID: Integer;
  HN: String; SEQ: Integer; DATE_SERV, TIME_SERV: Double; LOCATION, INTIME,
  INSTYPE, INSID, MAIN, TYPEIN, REFERINHOSP, CAUSEIN, CHIEFCOMP,
  SERVPLACE: String; BTEMP, SBP, DBP, PR, RR: Integer; TYPEOUT,
  REFEROUTHOSP, CAUSEOUT: String; COST, PRICE, PAYPRICE,
  ACTUALPAY: Integer; D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
  StrDateServ:string;
begin

  StrDateServ := QuotedStr(IntToStr(YearOf(DATE_SERV))+FormatDateTime('-MM-DD',DATE_SERV));
    cdsReport43Temp.data:=GetDataSet('select * from report43_service where PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ)+' and DATE_SERV='+StrDateServ);
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
         try
           // ShowMessage('update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_service set '+
              ' HOSPCODE=:HOSPCODE ' +
              //',PID=:PID '+
              ',HN=:HN '+
              //',SEQ=:SEQ '+
              ',DATE_SERV=:DATE_SERV '+
              ',TIME_SERV=:TIME_SERV '+
              ',LOCATION=:LOCATION '+
              ',INTIME=:INTIME '+
              ',INSTYPE=:INSTYPE '+
              ',INSID=:INSID '+
              ',MAIN=:MAIN '+
              ',TYPEIN=:TYPEIN '+
              ',REFERINHOSP=:REFERINHOSP '+
              ',CAUSEIN=:CAUSEIN '+
              ',CHIEFCOMP=:CHIEFCOMP '+
              ',SERVPLACE=:SERVPLACE '+
              ',BTEMP=:BTEMP '+
              ',SBP=:SBP '+
              ',DBP=:DBP '+
              ',PR=:PR '+
              ',RR=:RR '+
              ',TYPEOUT=:TYPEOUT '+
              ',REFEROUTHOSP=:REFEROUTHOSP '+
              ',CAUSEOUT=:CAUSEOUT '+
              ',COST=:COST '+
              ',PRICE=:PRICE '+
              ',PAYPRICE=:PAYPRICE '+
              ',ACTUALPAY=:ACTUALPAY '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where PID=:PID and SEQ=:SEQ and DATE_SERV=:DATE_SERV';

              ParamByName('HOSPCODE').AsString := HOSPCODE;
              ParamByName('PID').AsInteger := PID;
              ParamByName('HN').AsString := HN;
              ParamByName('SEQ').AsInteger := SEQ;
              ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
              ParamByName('TIME_SERV').AsDateTime := TIME_SERV;
              ParamByName('LOCATION').AsString := LOCATION;
              ParamByName('INTIME').AsString := INTIME;
              //ShowMessage(INTIME);
              ParamByName('INSTYPE').AsString := INSTYPE;
              ParamByName('INSID').AsString := INSID;
              ParamByName('MAIN').AsString := MAIN;
              ParamByName('TYPEIN').AsString := TYPEIN;
              ParamByName('REFERINHOSP').AsString := REFERINHOSP;
              ParamByName('CAUSEIN').AsString := CAUSEIN;
              ParamByName('CHIEFCOMP').AsString := CHIEFCOMP;
              ParamByName('SERVPLACE').AsString := SERVPLACE;
              ParamByName('BTEMP').AsInteger := BTEMP;
              ParamByName('SBP').AsInteger := SBP;
              ParamByName('DBP').AsInteger := DBP;
              ParamByName('PR').AsInteger := PR;
              ParamByName('RR').AsInteger := RR;
              ParamByName('TYPEOUT').AsString := TYPEOUT;
              ParamByName('REFEROUTHOSP').AsString := REFEROUTHOSP;
              ParamByName('CAUSEOUT').AsString := CAUSEOUT;
              ParamByName('COST').AsInteger := COST;
              ParamByName('PRICE').AsInteger := PRICE;
              ParamByName('PAYPRICE').AsInteger := PAYPRICE;
              ParamByName('ACTUALPAY').AsInteger := ACTUALPAY;
              ParamByName('D_UPDATE').AsDateTime := D_UPDATE;
              WriteLog('SERVPLACE:'+SERVPLACE);
            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

         end;
    end
     else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select * from report43_service where PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ)+' and DATE_SERV='+StrDateServ);
           cdsIns.Append;

           with cdsIns do
           begin
            //  ShowMessage('insert [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('HN').AsString := HN;
              FieldByName('SEQ').AsInteger := SEQ;
              FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
              FieldByName('TIME_SERV').AsDateTime := TIME_SERV;
              FieldByName('LOCATION').AsString := LOCATION;
              FieldByName('INTIME').AsString := INTIME;
              FieldByName('INSTYPE').AsString := INSTYPE;
              FieldByName('INSID').AsString := INSID;
              FieldByName('MAIN').AsString := MAIN;
              FieldByName('TYPEIN').AsString := TYPEIN;
              FieldByName('REFERINHOSP').AsString := REFERINHOSP;
              FieldByName('CAUSEIN').AsString := CAUSEIN;
              FieldByName('CHIEFCOMP').AsString := CHIEFCOMP;
              FieldByName('SERVPLACE').AsString := SERVPLACE;
              FieldByName('BTEMP').AsInteger := BTEMP;
              FieldByName('SBP').AsInteger := SBP;
              FieldByName('DBP').AsInteger := DBP;
              FieldByName('PR').AsInteger := PR;
              FieldByName('RR').AsInteger := RR;
              FieldByName('TYPEOUT').AsString := TYPEOUT;
              FieldByName('REFEROUTHOSP').AsString := REFEROUTHOSP;
              FieldByName('CAUSEOUT').AsString := CAUSEOUT;
              FieldByName('COST').AsInteger := COST;
              FieldByName('PRICE').AsInteger := PRICE;
              FieldByName('PAYPRICE').AsInteger := PAYPRICE;
              FieldByName('ACTUALPAY').AsInteger := ACTUALPAY;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;
           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;


           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_service where PID='+inttostr(PID)+' and SEQ='+inttostr(SEQ)+' and DATE_SERV='+StrDateServ);


        finally
           cdsIns.free;
        end;

      end;

end;

function TDSHIS43File.InsUpdSpecialPp(REPORTID: Integer; HOSPCODE, PID,
  SEQ: String; DATE_SERV: Double; SERVPLACE, PPSPECIAL, PPSPLACE,
  PROVIDER: String; D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_specialpp where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
     try

           // ShowMessage('update [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_specialpp set '+
            //'REPORTID=:REPORTID '
            'HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',SERVPLACE=:SERVPLACE '+
            ',PPSPECIAL=:PPSPECIAL '+
            ',PPSPLACE=:PPSPLACE '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' Where REPORTID=:REPORTID';

            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsString := PID;
            ParamByName('SEQ').AsString := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('SERVPLACE').AsString := SERVPLACE;
            ParamByName('PPSPECIAL').AsString := PPSPECIAL;
            ParamByName('PPSPLACE').AsString := PPSPLACE;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end
     else // INSERT
      begin
        WriteLog('AppServer: append proc');
        cdsIns :=TClientDataSet.Create(nil);
        try
           cdsIns.data := GetDataSet('select *from report43_specialpp where REPORTID='+inttostr(REPORTID));
           cdsIns.Append;

           with cdsIns do
           begin
           // ShowMessage('INSERT [PID='+inttostr(PID)+'and SEQ='+inttostr(SEQ)+']');
            FieldByName('REPORTID').AsInteger := REPORTID;
            FieldByName('HOSPCODE').AsString := HOSPCODE;
            FieldByName('PID').AsString := PID;
            FieldByName('SEQ').AsString := SEQ;
            FieldByName('DATE_SERV').AsDateTime := DATE_SERV;
            FieldByName('SERVPLACE').AsString := SERVPLACE;
            FieldByName('PPSPECIAL').AsString := PPSPECIAL;
            FieldByName('PPSPLACE').AsString := PPSPLACE;
            FieldByName('PROVIDER').AsString := PROVIDER;
            FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;

           if cdsIns.ChangeCount>0 then
             UpdateDataset(cdsIns,'select * from report43_specialpp where REPORTID='+inttostr(REPORTID));
        finally
           cdsIns.free;
        end;

      end;
end;

function TDSHIS43File.InsUpdSurveillance(
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

    cdsReport43Temp.data:=GetDataSet('select * from report43_surveillance where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try


            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_surveillance set '+
            //'REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',SEQ=:SEQ '+
            ',DATE_SERV=:DATE_SERV '+
            ',AN=:AN '+
            ',DATETIME_ADMIT=:DATETIME_ADMIT '+
            ',SYNDROME=:SYNDROME '+
            ',DIAGCODE=:DIAGCODE '+
            ',CODE506=:CODE506 '+
            ',DIAGCODELAST=:DIAGCODELAST '+
            ',CODE506LAST=:CODE506LAST '+
            ',ILLDATE=:ILLDATE '+
            ',ILLHOUSE=:ILLHOUSE '+
            ',ILLVILLAGE=:ILLVILLAGE '+
            ',ILLTAMBON=:ILLTAMBON '+
            ',ILLAMPUR=:ILLAMPUR '+
            ',ILLCHANGWAT=:ILLCHANGWAT '+
            ',LATITUDE=:LATITUDE '+
            ',LONGITUDE=:LONGITUDE '+
            ',PTSTATUS=:PTSTATUS '+
            ',DATE_DEATH=:DATE_DEATH '+
            ',COMPLICATION=:COMPLICATION '+
            ',ORGANISM=:ORGANISM '+
            ',PROVIDER=:PROVIDER '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('SEQ').AsInteger := SEQ;
            ParamByName('DATE_SERV').AsDateTime := DATE_SERV;
            ParamByName('AN').AsString := AN;
            ParamByName('DATETIME_ADMIT').AsDateTime := DATETIME_ADMIT;
            ParamByName('SYNDROME').AsString := SYNDROME;
            ParamByName('DIAGCODE').AsString := DIAGCODE;
            ParamByName('CODE506').AsString := CODE506;
            ParamByName('DIAGCODELAST').AsString := DIAGCODELAST;
            ParamByName('CODE506LAST').AsString := CODE506LAST;
            ParamByName('ILLDATE').AsDateTime := ILLDATE;
            ParamByName('ILLHOUSE').AsString := ILLHOUSE;
            ParamByName('ILLVILLAGE').AsString := ILLVILLAGE;
            ParamByName('ILLTAMBON').AsString := ILLTAMBON;
            ParamByName('ILLAMPUR').AsString := ILLAMPUR;
            ParamByName('ILLCHANGWAT').AsString := ILLCHANGWAT;
            ParamByName('LATITUDE').AsInteger := LATITUDE;
            ParamByName('LONGITUDE').AsInteger := LONGITUDE;
            ParamByName('PTSTATUS').AsString := PTSTATUS;
            ParamByName('DATE_DEATH').AsDateTime := DATE_DEATH;
            ParamByName('COMPLICATION').AsString := COMPLICATION;
            ParamByName('ORGANISM').AsString := ORGANISM;
            ParamByName('PROVIDER').AsString := PROVIDER;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end;


end;

function TDSHIS43File.InsUpdVillage_A(REPORTID: Integer; HOSPCODE, VID: String;
  NTRADITIONAL, NMONK, NRELIGIONLEADER, NBROADCAST, NRADIO, NPCHC, NCLINIC,
  NDRUGSTORE, NCHILDCENTER, NPSCHOOL, NSSCHOOL, NTEMPLE, NRELIGIOUSPLACE,
  NMARKET, NSHOP, NFOODSHOP, NSTALL: Integer): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_village  where REPORTID='+inttostr(REPORTID)+' and VID='+VID) ;
    if cdsReport43Temp.RecordCount>0 then
    begin
        gryVillage := TSQLQuery.Create(Self);

      with  gryVillage do
      try
            ShowMessage('update REPORTID='+inttostr(REPORTID));
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_village set '+
           // ' REPORTID=:REPORTID ' +
            ' HOSPCODE=:HOSPCODE '+
            ',VID=:VID '+
            ',NTRADITIONAL=:NTRADITIONAL '+
            ',NMONK=:NMONK '+
            ',NRELIGIONLEADER=:NRELIGIONLEADER '+
            ',NBROADCAST=:NBROADCAST '+
            ',NRADIO=:NRADIO '+
            ',NPCHC=:NPCHC '+
            ',NCLINIC=:NCLINIC '+
            ',NDRUGSTORE=:NDRUGSTORE '+
            ',NCHILDCENTER=:NCHILDCENTER '+
            ',NPSCHOOL=:NPSCHOOL '+
            ',NSSCHOOL=:NSSCHOOL '+
            ',NTEMPLE=:NTEMPLE '+
            ',NRELIGIOUSPLACE=:NRELIGIOUSPLACE '+
            ',NMARKET=:NMARKET '+
            ',NSHOP=:NSHOP '+
            ',NFOODSHOP=:NFOODSHOP '+
            ',NSTALL=:NSTALL '+


            ',NRAINTANK=:NRAINTANK '+
            ',NCHICKENFARM=:NCHICKENFARM '+
            ',NPIGFARM=:NPIGFARM '+
            ',WASTEWATER=:WASTEWATER '+
            ',GARBAGE=:GARBAGE '+
            ',NFACTORY=:NFACTORY '+
            ',LATITUDE=:LATITUDE '+
            ',LONGITUDE=:LONGITUDE '+
            ',OUTDATE=:OUTDATE '+
            ',NUMACTUALLY=:NUMACTUALLY '+
            ',RISKTYPE=:RISKTYPE '+
            ',NUMSTATELESS=:NUMSTATELESS '+
            ',NEXERCISECLUB=:NEXERCISECLUB '+
            ',NOLDERLYCLUB=:NOLDERLYCLUB '+
            ',NDISABLECLUB=:NDISABLECLUB '+
            ',NNUMBERONECLUB=:NNUMBERONECLUB '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID';



             ParamByName('REPORTID').AsInteger := REPORTID;
             ParamByName('HOSPCODE').AsString := HOSPCODE;
             ParamByName('VID').AsString := VID;
             ParamByName('NTRADITIONAL').AsInteger := NTRADITIONAL;
             ParamByName('NMONK').AsInteger := NMONK;
             ParamByName('NRELIGIONLEADER').AsInteger := NRELIGIONLEADER;
             ParamByName('NBROADCAST').AsInteger := NBROADCAST;
             ParamByName('NRADIO').AsInteger := NRADIO;
             ParamByName('NPCHC').AsInteger := NPCHC;
             ParamByName('NCLINIC').AsInteger := NCLINIC;
             ParamByName('NDRUGSTORE').AsInteger := NDRUGSTORE;
             ParamByName('NCHILDCENTER').AsInteger := NCHILDCENTER;
             ParamByName('NPSCHOOL').AsInteger := NPSCHOOL;
             ParamByName('NSSCHOOL').AsInteger := NSSCHOOL;
             ParamByName('NTEMPLE').AsInteger := NTEMPLE;
             ParamByName('NRELIGIOUSPLACE').AsInteger := NRELIGIOUSPLACE;
             ParamByName('NMARKET').AsInteger := NMARKET;
             ParamByName('NSHOP').AsInteger := NSHOP;
             ParamByName('NFOODSHOP').AsInteger := NFOODSHOP;
             ParamByName('NSTALL').AsInteger := NSTALL;



            //ExecSQL();
            result := true;
            //free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end;
    end
    else // INSERT
      begin
        WriteLog('AppServer: append proc');
        //cdsIns :=TClientDataSet.Create(nil);
        try
          gryVillage := TSQLQuery.Create(Self);
          with  gryVillage do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' insert into report43_village ( '+
            ' REPORTID,HOSPCODE,VID,NTRADITIONAL,NMONK,NRELIGIONLEADER,NBROADCAST,NRADIO,NPCHC,NCLINIC                      '+
            ',NDRUGSTORE,NCHILDCENTER,NPSCHOOL,NSSCHOOL,NTEMPLE,NRELIGIOUSPLACE,NMARKET,NSHOP,NFOODSHOP,NSTALL              '+
            ',NRAINTANK,NCHICKENFARM,NPIGFARM,WASTEWATER,GARBAGE,NFACTORY,LATITUDE,LONGITUDE,OUTDATE,NUMACTUALLY            '+
            ',RISKTYPE,NUMSTATELESS,NEXERCISECLUB,NOLDERLYCLUB,NDISABLECLUB,NNUMBERONECLUB,D_UPDATE)                        '+
            ' values                                                                                                        '+
            '(:REPORTID,:HOSPCODE,:VID,:NTRADITIONAL,:NMONK,:NRELIGIONLEADER,:NBROADCAST,:NRADIO,:NPCHC,:NCLINIC            '+
            ',:NDRUGSTORE,:NCHILDCENTER,:NPSCHOOL,:NSSCHOOL,:NTEMPLE,:NRELIGIOUSPLACE,:NMARKET,:NSHOP,:NFOODSHOP,:NSTALL    '+
            ',:NRAINTANK,:NCHICKENFARM,:NPIGFARM,:WASTEWATER,:GARBAGE,:NFACTORY,:LATITUDE,:LONGITUDE,:OUTDATE,:NUMACTUALLY  '+
            ',:RISKTYPE,:NUMSTATELESS,:NEXERCISECLUB,:NOLDERLYCLUB,:NDISABLECLUB,:NNUMBERONECLUB,:D_UPDATE)' ;

           // ShowMessage(inttostr(REPORTID));
            //  ShowMessage(VID);
             ParamByName('REPORTID').AsInteger := REPORTID;
             ParamByName('HOSPCODE').AsString := HOSPCODE;
             ParamByName('VID').AsString := VID;
             ParamByName('NTRADITIONAL').AsInteger := NTRADITIONAL;
             ParamByName('NMONK').AsInteger := NMONK;
             ParamByName('NRELIGIONLEADER').AsInteger := NRELIGIONLEADER;
             ParamByName('NBROADCAST').AsInteger := NBROADCAST;
             ParamByName('NRADIO').AsInteger := NRADIO;
             ParamByName('NPCHC').AsInteger := NPCHC;
             ParamByName('NCLINIC').AsInteger := NCLINIC;
             ParamByName('NDRUGSTORE').AsInteger := NDRUGSTORE;
             ParamByName('NCHILDCENTER').AsInteger := NCHILDCENTER;
             ParamByName('NPSCHOOL').AsInteger := NPSCHOOL;
             ParamByName('NSSCHOOL').AsInteger := NSSCHOOL;
             ParamByName('NTEMPLE').AsInteger := NTEMPLE;
             ParamByName('NRELIGIOUSPLACE').AsInteger := NRELIGIOUSPLACE;
             ParamByName('NMARKET').AsInteger := NMARKET;
             ParamByName('NSHOP').AsInteger := NSHOP;
             ParamByName('NFOODSHOP').AsInteger := NFOODSHOP;
             ParamByName('NSTALL').AsInteger := NSTALL;

            result := true;
          except
            on E: Exception do
            begin
               LastErrorMsg := E.Message;
               WriteLog(LastErrorMsg);
               free;
               Result := False;
            end;
          end;
        finally
           //cdsIns.free;
        end;
      end;


end;

function TDSHIS43File.InsUpdVillage_B(NRAINTANK, NCHICKENFARM,
  NPIGFARM: Integer; WASTEWATER, GARBAGE: String; NFACTORY, LATITUDE, LONGITUDE:Integer;
  OUTDATE:Double; NUMACTUALLY, RISKTYPE, NUMSTATELESS, NEXERCISECLUB, NOLDERLYCLUB,
  NDISABLECLUB, NNUMBERONECLUB: Integer;D_UPDATE:Double): boolean;
begin
  with  gryVillage do
      try
            ParamByName('NRAINTANK').AsInteger := NRAINTANK;
            ParamByName('NCHICKENFARM').AsInteger := NCHICKENFARM;
            ParamByName('NPIGFARM').AsInteger := NPIGFARM;
            ParamByName('WASTEWATER').AsString := WASTEWATER;
            ParamByName('GARBAGE').AsString := GARBAGE;
            ParamByName('NFACTORY').AsInteger := NFACTORY;
            ParamByName('LATITUDE').AsInteger := LATITUDE;
            ParamByName('LONGITUDE').AsInteger := LONGITUDE;
            ParamByName('OUTDATE').AsDate := OUTDATE;
            ParamByName('NUMACTUALLY').AsInteger := NUMACTUALLY;
            ParamByName('RISKTYPE').AsInteger := RISKTYPE;
            ParamByName('NUMSTATELESS').AsInteger := NUMSTATELESS;
            ParamByName('NEXERCISECLUB').AsInteger := NEXERCISECLUB;
            ParamByName('NOLDERLYCLUB').AsInteger := NOLDERLYCLUB;
            ParamByName('NDISABLECLUB').AsInteger := NDISABLECLUB;
            ParamByName('NNUMBERONECLUB').AsInteger := NNUMBERONECLUB;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;

            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
          begin
        //     LastErrorCode := _ERROR_UNDEFINED_;
             LastErrorMsg := E.Message;
             WriteLog(LastErrorMsg);
             free;
             Result := False;
          end;

      end
end;

function TDSHIS43File.InsUpdWomen(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; FPTYPE, NOFPCAUSE: String; TOTALSON, NUMBERSON, ABORTION,
  STILLBIRTH: Integer; D_UPDATE: Double): boolean;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_women where REPORTID='+inttostr(REPORTID));
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;

            SQL.text:=' update report43_women set '+
              //'REPORTID=:REPORTID '
              ' HOSPCODE=:HOSPCODE '+
              ',PID=:PID '+
              ',FPTYPE=:FPTYPE '+
              ',NOFPCAUSE=:NOFPCAUSE '+
              ',TOTALSON=:TOTALSON '+
              ',NUMBERSON=:NUMBERSON '+
              ',ABORTION=:ABORTION '+
              ',STILLBIRTH=:STILLBIRTH '+
              ',D_UPDATE=:D_UPDATE '+
              ' Where REPORTID=:REPORTID';

            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('FPTYPE').AsString := FPTYPE;
            ParamByName('NOFPCAUSE').AsString := NOFPCAUSE;
            ParamByName('TOTALSON').AsInteger := TOTALSON;
            ParamByName('NUMBERSON').AsInteger := NUMBERSON;
            ParamByName('ABORTION').AsInteger := ABORTION;
            ParamByName('STILLBIRTH').AsInteger := STILLBIRTH;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
            begin
          //     LastErrorCode := _ERROR_UNDEFINED_;
               LastErrorMsg := E.Message;
               WriteLog(LastErrorMsg);
               free;
               Result := False;
            end;

           end;
    end;


end;


function TDSHIS43File.setAddressType1(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSENO,
  SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT,
  TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_address where  PID='+inttostr(PID)+' and ADDRESSTYPE=1 ');
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
       // with dsUpdReport43Person do
          try
            //ShowMessage('update [PID='+inttostr(PID)+'and REPORTID='+inttostr(REPORTID)+']');
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_address set '+
            //' REPORTID=:REPORTID '
            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',ADDRESSTYPE=:ADDRESSTYPE '+
            ',HOUSE_ID=:HOUSE_ID '+
            ',HOUSETYPE=:HOUSETYPE '+
            ',ROOMNO=:ROOMNO '+
            ',CONDO=:CONDO '+
            ',HOUSENO=:HOUSENO '+
            ',SOISUB=:SOISUB '+
            ',SOIMAIN=:SOIMAIN '+
            ',ROAD=:ROAD '+
            ',VILLANAME=:VILLANAME '+
            ',VILLAGE=:VILLAGE '+
            ',TAMBON=:TAMBON '+
            ',AMPUR=:AMPUR '+
            ',CHANGWAT=:CHANGWAT '+
            ',TELEPHONE=:TELEPHONE '+
            ',MOBILE=:MOBILE '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID and ADDRESSTYPE=1 ';


            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('ADDRESSTYPE').AsString := ADDRESSTYPE;
            ParamByName('HOUSE_ID').AsString := HOUSE_ID;
            ParamByName('HOUSETYPE').AsString := HOUSETYPE;
            ParamByName('ROOMNO').AsString := ROOMNO;
            ParamByName('CONDO').AsString := CONDO;
            ParamByName('HOUSENO').AsString := HOUSENO;
            ParamByName('SOISUB').AsString := SOISUB;
            ParamByName('SOIMAIN').AsString := SOIMAIN;
            ParamByName('ROAD').AsString := ROAD;
            ParamByName('VILLANAME').AsString := VILLANAME;
            ParamByName('VILLAGE').AsString := VILLAGE;
            ParamByName('TAMBON').AsString := TAMBON;
            ParamByName('AMPUR').AsString := AMPUR;
            ParamByName('CHANGWAT').AsString := CHANGWAT;
            ParamByName('TELEPHONE').AsString := TELEPHONE;
            ParamByName('MOBILE').AsString := MOBILE;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;


            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
            begin
          //     LastErrorCode := _ERROR_UNDEFINED_;
               LastErrorMsg := E.Message;
               WriteLog(LastErrorMsg);
               free;
               Result := False;
            end;

           end;
       end
    else
    begin   // insert
        WriteLog('AppServer: append proc');
         cdsIns := TClientDataSet.Create(nil);
        try
            cdsIns.data := GetDataSet('select * from report43_address where PID='+inttostr(PID)+'  and ADDRESSTYPE=1');
            cdsIns.Append;

           with cdsIns do
           begin

              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('ADDRESSTYPE').AsString := ADDRESSTYPE;
              FieldByName('HOUSE_ID').AsString := HOUSE_ID;
              FieldByName('HOUSETYPE').AsString := HOUSETYPE;
              FieldByName('ROOMNO').AsString := ROOMNO;
              FieldByName('CONDO').AsString := CONDO;
              FieldByName('HOUSENO').AsString := HOUSENO;
              FieldByName('SOISUB').AsString := SOISUB;
              FieldByName('SOIMAIN').AsString := SOIMAIN;
              FieldByName('ROAD').AsString := ROAD;
              FieldByName('VILLANAME').AsString := VILLANAME;
              FieldByName('VILLAGE').AsString := VILLAGE;
              FieldByName('TAMBON').AsString := TAMBON;
              FieldByName('AMPUR').AsString := AMPUR;
              FieldByName('CHANGWAT').AsString := CHANGWAT;
              FieldByName('TELEPHONE').AsString := TELEPHONE;
              FieldByName('MOBILE').AsString := MOBILE;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;

           if cdsIns.ChangeCount>0 then
           begin
            // ShowMessage('insert [PID='+inttostr(PID)+'and REPORTID='+inttostr(REPORTID)+']');
             UpdateDataset(cdsIns,'select * from report43_address where PID='+inttostr(PID)+' and ADDRESSTYPE=1');
           end;

        finally
           cdsIns.free;
        end;
    end;

end;

function TDSHIS43File.setAddressType2(REPORTID: Integer; HOSPCODE: String;
  PID: Integer; ADDRESSTYPE, HOUSE_ID, HOUSETYPE, ROOMNO, CONDO, HOUSENO,
  SOISUB, SOIMAIN, ROAD, VILLANAME, VILLAGE, TAMBON, AMPUR, CHANGWAT,
  TELEPHONE, MOBILE: String; D_UPDATE: Double): boolean;
  var
  cdsIns:TClientDataSet;
begin
    cdsReport43Temp.data:=GetDataSet('select * from report43_address where PID='+inttostr(PID)+' and ADDRESSTYPE=2');
    if cdsReport43Temp.RecordCount>0 then
    begin
        with TSQLQuery.Create(Self) do
          try
            SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
            SQL.text:=' update report43_address set '+

            ' HOSPCODE=:HOSPCODE '+
            ',PID=:PID '+
            ',ADDRESSTYPE=:ADDRESSTYPE '+
            ',HOUSE_ID=:HOUSE_ID '+
            ',HOUSETYPE=:HOUSETYPE '+
            ',ROOMNO=:ROOMNO '+
            ',CONDO=:CONDO '+
            ',HOUSENO=:HOUSENO '+
            ',SOISUB=:SOISUB '+
            ',SOIMAIN=:SOIMAIN '+
            ',ROAD=:ROAD '+
            ',VILLANAME=:VILLANAME '+
            ',VILLAGE=:VILLAGE '+
            ',TAMBON=:TAMBON '+
            ',AMPUR=:AMPUR '+
            ',CHANGWAT=:CHANGWAT '+
            ',TELEPHONE=:TELEPHONE '+
            ',MOBILE=:MOBILE '+
            ',D_UPDATE=:D_UPDATE '+
            ' WHERE REPORTID=:REPORTID and ADDRESSTYPE=2';

            ParamByName('REPORTID').AsInteger := REPORTID;
            ParamByName('HOSPCODE').AsString := HOSPCODE;
            ParamByName('PID').AsInteger := PID;
            ParamByName('ADDRESSTYPE').AsString := ADDRESSTYPE;
            ParamByName('HOUSE_ID').AsString := HOUSE_ID;
            ParamByName('HOUSETYPE').AsString := HOUSETYPE;
            ParamByName('ROOMNO').AsString := ROOMNO;
            ParamByName('CONDO').AsString := CONDO;
            ParamByName('HOUSENO').AsString := HOUSENO;
            ParamByName('SOISUB').AsString := SOISUB;
            ParamByName('SOIMAIN').AsString := SOIMAIN;
            ParamByName('ROAD').AsString := ROAD;
            ParamByName('VILLANAME').AsString := VILLANAME;
            ParamByName('VILLAGE').AsString := VILLAGE;
            ParamByName('TAMBON').AsString := TAMBON;
            ParamByName('AMPUR').AsString := AMPUR;
            ParamByName('CHANGWAT').AsString := CHANGWAT;
            ParamByName('TELEPHONE').AsString := TELEPHONE;
            ParamByName('MOBILE').AsString := MOBILE;
            ParamByName('D_UPDATE').AsDateTime := D_UPDATE;

            ExecSQL();
            result := true;
            free;
          except
          on E: Exception do
            begin

               LastErrorMsg := E.Message;
               WriteLog(LastErrorMsg);
               free;
               Result := False;
            end;

          end;
    end
     else
    begin   // insert
       WriteLog('AppServer: append proc');
         cdsIns := TClientDataSet.Create(nil);
        try
            cdsIns.data := GetDataSet('select * from report43_address where PID='+inttostr(PID)+'  and ADDRESSTYPE=2');
            cdsIns.Append;

           with cdsIns do
           begin
              FieldByName('REPORTID').AsInteger := REPORTID;
              FieldByName('HOSPCODE').AsString := HOSPCODE;
              FieldByName('PID').AsInteger := PID;
              FieldByName('ADDRESSTYPE').AsString := ADDRESSTYPE;
              FieldByName('HOUSE_ID').AsString := HOUSE_ID;
              FieldByName('HOUSETYPE').AsString := HOUSETYPE;
              FieldByName('ROOMNO').AsString := ROOMNO;
              FieldByName('CONDO').AsString := CONDO;
              FieldByName('HOUSENO').AsString := HOUSENO;
              FieldByName('SOISUB').AsString := SOISUB;
              FieldByName('SOIMAIN').AsString := SOIMAIN;
              FieldByName('ROAD').AsString := ROAD;
              FieldByName('VILLANAME').AsString := VILLANAME;
              FieldByName('VILLAGE').AsString := VILLAGE;
              FieldByName('TAMBON').AsString := TAMBON;
              FieldByName('AMPUR').AsString := AMPUR;
              FieldByName('CHANGWAT').AsString := CHANGWAT;
              FieldByName('TELEPHONE').AsString := TELEPHONE;
              FieldByName('MOBILE').AsString := MOBILE;
              FieldByName('D_UPDATE').AsDateTime := D_UPDATE;

           end;

           if cdsIns.State in [dsEdit,dsInsert] then cdsIns.post;

           if cdsIns.ChangeCount>0 then
           begin
             UpdateDataset(cdsIns,'select * from report43_address where PID='+inttostr(PID)+' and ADDRESSTYPE=2');
           end;
        finally
           cdsIns.free;
        end;
    end;

end;

function TDSHIS43File.setHospName(hospcode, hospname: string): boolean;
var cdsIns:TClientDataSet;
begin
    cdsIns := TClientDataSet.Create(nil);
    try
      cdsIns.Data := GetDataSet('select * from report43_hospname where hospid=1');
      if cdsIns.RecordCount>0 then
      begin
        cdsIns.Edit;
        cdsIns.FieldByName('hospcode').AsString:=hospcode;
        cdsIns.FieldByName('hospname').AsString:=hospname;
        cdsIns.Post;
      end else
      begin
        cdsIns.Append;
        cdsIns.FieldByName('hospid').AsInteger:=1;
        cdsIns.FieldByName('hospcode').AsString:=hospcode;
        cdsIns.FieldByName('hospname').AsString:=hospname;
        cdsIns.Post;

      end;


      UpdateDataset(cdsIns,'select * from report43_hospname where hospid=1');




    finally
      cdsIns.Free;
      Result := true;
    end;
end;

function TDSHIS43File.syncAddressType1(PID: integer): boolean;
var cdsASync,cdsMyASync,cdsTemp:TClientDataSet;
    tableName,SQLStr,arrDFields,value,delimiter,txt,ns:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;
    P1,P2,P3:TParam;

begin
  //----------------------------------------

  if IsIFXASync then
  begin
    //cdsTemp := TClientDataSet.Create(nil);
    cdsMyASync:=TClientDataSet.Create(nil);
    cdsASync:=TClientDataSet.Create(nil);
    try

         tableName  :='report43_address';
         arrDFields  :='BIRTH;D_UPDATE;MOVEIN;DDISCHARGE';

         SQLStr   :=//  :='select * from aloha_address where PID='+inttostr(PID)+' and ADDRESSTYPE=1';

         ' select  '+
         ' ''13754'' as hospcode ,x3.hn as hn,x0.s_hn as pid ,''1''  as addresstype ,'''' as house_id    '+
         ' ,''''  as housetype,''''  as roomno,'''' as condo,x0.lice_address as houseno     '+
         ' ,'''' as soisub ,''''  as soimain,'''' as road ,'''' as villaname ,''''  as village   '+
         ' ,x1.province_id as tambon ,x1.district_id as ampur               '+
         ' ,x1.sub_district_id as changwat ,x0.lice_tel as telephone ,'''' as mobile ,x0.upd_date as d_update ,x0.upd_time  '+
         '                                     '+
         ' from "informix".patient_info2 x0    '+
         ' left join "informix".nhso_map_province x1 on x0.lice_c_province = x1.prov_id  '+
         ' left join "informix".patient_info1 x3 on x3.s_hn=x0.s_hn  '+
         ' where       '+
         '  x0.s_hn='+inttostr(PID);




         WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);

         cdsASync.Data := GetIFXDataSet(SQLStr);

         if cdsASync.RecordCount>0 then
         begin
           WriteLog('['+tableName+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

           strArrCount:=0;
           value := arrDFields;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(strArr,strArrCount+1);
               strArr[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;

           //cdsMySQL.data := GetDataSet('select * from '+tableName+' limit 0');

           cdsMyASync.Data:=GetDataSet('select * from '+tableName+' where PID='+inttostr(PID)+' and ADDRESSTYPE=1');

           if cdsMyASync.RecordCount<=0 then
           begin
             if cdsMyASync.RecordCount>0 then
               WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)')
             else
               WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

             CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
             UpdateDataset(cdsMyASync,'select * from '+tableName+' where PID='+inttostr(PID)+' and ADDRESSTYPE=1');
             WriteLog('['+tableName+']'+'Sync : update success mysql.');
           end;
         end;

    finally

      cdsASync.free;
      cdsMyASync.free;
    end;

  end;

  //----------------------------------------

end;

function TDSHIS43File.syncAddressType2(PID: integer): boolean;
var cdsASync,cdsMyASync,cdsTemp:TClientDataSet;
    tableName,SQLStr,arrDFields,value,delimiter,txt,ns:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;
    P1,P2,P3:TParam;

begin

  if IsIFXASync then
  begin

    cdsMyASync:=TClientDataSet.Create(nil);
    cdsASync:=TClientDataSet.Create(nil);
    try

         tableName  :='report43_address';
         arrDFields  :='BIRTH;D_UPDATE;MOVEIN;DDISCHARGE';

         SQLStr     := //'select * from aloha_address where PID='+inttostr(PID)+' and ADDRESSTYPE=2';

         ' select   '+
         ' ''13754'' as hospcode ,x3.hn as hn,x0.s_hn as pid ,''2''  as addresstype ,'''' as house_id ,''''  as housetype,''''  as roomno,'''' as condo,x0.present_address as houseno   '+
         ' ,'''' as soisub ,''''  as soimain,'''' as road ,'''' as villaname ,''''  as village  '+
         ' ,x1.province_id as tambon ,x1.district_id as ampur     '+
         ' ,x1.sub_district_id as changwat ,x0.lice_tel as telephone ,'''' as mobile ,x0.upd_date as d_update ,x0.upd_time   '+

         ' from "informix".patient_info2 x0  '+
         ' left join "informix".nhso_map_province x1 on x0.present_c_prov = x1.prov_id    '+
         ' left join "informix".patient_info1 x3 on x3.s_hn=x0.s_hn  '+
         ' where      '+
         '  x0.s_hn='+inttostr(PID);


         WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);

         cdsASync.Data := GetIFXDataSet(SQLStr);

         if cdsASync.RecordCount>0 then
         begin
           WriteLog('['+tableName+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

           strArrCount:=0;
           value := arrDFields;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(strArr,strArrCount+1);
               strArr[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;

           //cdsMySQL.data := GetDataSet('select * from '+tableName+' limit 0');

           cdsMyASync.Data:=GetDataSet('select * from '+tableName+' where PID='+inttostr(PID)+' and ADDRESSTYPE=2');

           if cdsMyASync.RecordCount<=0 then
           begin
             if cdsMyASync.RecordCount>0 then
               WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)')
             else
               WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

             CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
             UpdateDataset(cdsMyASync,'select * from '+tableName+' where PID='+inttostr(PID)+' and ADDRESSTYPE=2');
             WriteLog('['+tableName+']'+'Sync : update success mysql.');
           end;
         end;

    finally

      cdsASync.free;
      cdsMyASync.free;
    end;




  end;

  //----------------------------------------

end;

function TDSHIS43File.syncAdmissionList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    syncIfxRecordSet('PID',PID,'report43_admission','aloha_admission','DATETIME_ADMIT;DATETIME_DISCH;D_UPDATE','PID;SEQ;WARDADMIT');
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.syncAppointmentList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    syncIfxRecordSet('PID',PID,'report43_appointment','aloha_appointment','DATETIME_SERV;D_UPDATE','PID;SEQ;');
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

procedure TDSHIS43File.syncCard(PID, INSTYPE_NEW: string; DUPDATE: double);
var cdsASync,cdsMyASync:TClientDataSet;
    tableName,SQLStr,arrDFields,value,delimiter,txt,ns:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;
    P1,P2,P3:TParam;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  //----------------------------------------
       cdsMyASync:=TClientDataSet.Create(nil);

       tableName  :='report43_card';
       arrDFields  :='BIRTH;D_UPDATE;MOVEIN;DDISCHARGE';

       SQLStr     :='select * from aloha_card where PID='+QuotedStr(PID)+' and INSTYPE_NEW='+QuotedStr(INSTYPE_NEW);
       WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);

       cdsASync:=TClientDataSet.Create(nil);
       cdsASync.Data := GetIFXDataSet(SQLStr);

       try
         if cdsASync.RecordCount>0 then
         begin
           WriteLog('['+tableName+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

           strArrCount:=0;
           value := arrDFields;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(strArr,strArrCount+1);
               strArr[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;

           //cdsMySQL.data := GetDataSet('select * from '+tableName+' limit 0');

           cdsMyASync.Data:=GetDataSet('select * from '+tableName+' where PID='+QuotedStr(PID)+' and INSTYPE_NEW='+QuotedStr(INSTYPE_NEW));

           if cdsMyASync.RecordCount<=0 then
           begin  // insert new record
             //if cdsMyASync.RecordCount>0 then
             //  WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)')
             //else
             WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

             CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
             UpdateDataset(cdsMyASync,'select * from '+tableName+' where PID='+QuotedStr(PID)+' and INSTYPE_NEW='+QuotedStr(INSTYPE_NEW));
             WriteLog('['+tableName+']'+'Sync : insert success mysql.');
           end else
           begin   // update
             //if cdsMyASync.RecordCount>0 then
             WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)');
             //else
             // WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');
             //CopyIfxCds2MyCdsUpd(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database'],['CID','HN']);
             //UpdateDataset(cdsMyASync,'select * from '+tableName+' where PID='+QuotedStr(PID)+' and INSTYPE_NEW='+QuotedStr(INSTYPE_NEW));

             WriteLog('['+tableName+']'+'Sync : update success mysql.');

           end;

         end;
       finally
        cdsASync.free;
        cdsMyASync.free;
       end;
end;


function TDSHIS43File.syncCardList(PID: integer): boolean;
var cdsASync,cdsASyncA,cdsATemp,cdsMyASync:TClientDataSet;
    tableName,SQLStr,arrDFields,value,delimiter,txt,ns:string;
    strArrCount,delta,dx,irow:integer;
    strArr : array of string;
    P1,P2,P3:TParam;
begin

  syncIfxRecordSet('PID',PID,'report43_card','aloha_card','BIRTH;D_UPDATE;MOVEIN;DDISCHARGE;STARTDATE;EXPIREDATE','PID;INSTYPE_NEW');

  (*
  exit;
  //----------------------------------------
  WriteLog('>>>>>>>>>>>>>>>> ##1 Auto Sync Card List');
    if IsIFXASync then WriteLog('Card List : AutoSync is ON') else WriteLog('Card List : AutoSync is OFF');

  if IsIFXASync then
  begin
       WriteLog('>>>>>>>>>>>>>>>> ##2 Auto Sync Card List');
       cdsMyASync:=TClientDataSet.Create(nil);
       irow:=0;

       tableName  :='report43_card';
       arrDFields  :='BIRTH;D_UPDATE;MOVEIN;DDISCHARGE;EXPORT_DATE';

       SQLStr     :='select * from aloha_card where PID='+inttostr(PID);
       WriteLog('['+tableName+']'+'Sync SQL ### :'+SQLStr);

       cdsASync:=TClientDataSet.Create(nil);
       cdsASync.Data := GetIFXDataSet(SQLStr);      // retrive data from informix

       cdsASyncA:=TClientDataSet.Create(nil);

       cdsATemp:=TClientDataSet.Create(nil);
       cdsATemp.Data:=GetDataSet('select * from '+tableName+' where PID='+inttostr(PID));

      try

        if cdsASync.RecordCount>0 then
        begin

          WriteLog('['+tableName+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix) *** -------------------------------------------');


          cdsASync.First;
          while not cdsASync.eof do
          begin
            inc(irow);
            writelog(inttostr(irow)+':'+trim(cdsASync.fieldbyname('instype_new').AsString));

             // not find current data inside mysql and append
             if not cdsATemp.Locate('PID;INSTYPE_NEW',VarArrayOf([cdsASync.FieldByName('PID').AsString,trim(cdsASync.FieldByName('instype_new').AsString)]),[]) then
             begin
               // sync to mysql

               strArrCount:=0;
               value := arrDFields;
               delimiter:=';';

               delta := Length(delimiter);
               txt := value + delimiter;

                 while Length(txt) > 0 do
                 begin
                   dx := Pos(delimiter, txt) ;
                   ns := Copy(txt,0,dx-1) ;
                   SetLength(strArr,strArrCount+1);
                   strArr[strArrCount]:=ns;
                   txt := Copy(txt,dx+delta,MaxInt) ;
                   Inc(strArrCount);
                 end;

                WriteLog(inttostr(irow)+':select * from '+tableName+' where PID='+inttostr(PID)+' and INSTYPE_NEW='+QuotedStr(trim(cdsASync.FieldByName('instype_new').AsString)));
                cdsMyASync.Data:=GetDataSet('select * from '+tableName+' where PID='+inttostr(PID)+' and INSTYPE_NEW='+QuotedStr(trim(cdsASync.FieldByName('instype_new').AsString)));
                 if cdsMyASync.RecordCount<=0 then
                 begin
                   WriteLog('['+tableName+']'+'Sync Append :'+inttostr(irow)+'/'+inttostr(cdsASync.RecordCount)+' records (mysql)');
                   cdsASyncA.data := GetIFXDataSet('select * from aloha_card where PID='+inttostr(PID)+' and INSTYPE_NEW='+QuotedStr(trim(cdsASync.FieldByName('instype_new').AsString)));
                   CopyIfxCds2MyCds(cdsASyncA,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
                   if cdsMyASync.ChangeCount>0 then
                      UpdateDataset(cdsMyASync,'select * from '+tableName+' where PID='+inttostr(PID)+' and INSTYPE_NEW='+QuotedStr(trim(cdsASync.FieldByName('instype_new').AsString)));
                 end;
             end;


            if not cdsASync.eof then cdsASync.next;
          end;
        end;


      finally
        cdsASync.free;
        cdsMySQL.free;
        cdsMyASync.free;
        cdsATemp.free;
        cdsASyncA.free;

      end;
  end;
  *)

end;

function TDSHIS43File.syncDeath(PID:integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  syncIfxRecord('PID',PID,'report43_deathn','aloha_death','DDEATH;D_UPDATE','PID;');
end;

function TDSHIS43File.syncDiagnosisOpdList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    syncIfxRecordSet('PID',PID,'report43_diagnosis_opd','aloha_diagnosis_opd','DATE_SERV;D_UPDATE','PID');
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.syncIfxRecordA(wfName, wfValue, tableName, aloha_name,
  arrDFields, updateKeys: string): boolean;
var cdsASync,cdsMyASync:TClientDataSet;
    SQLStr,value,delimiter,txt,ns,sqlUPD:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;
    P1,P2,P3:TParam;

//const
//  updateKeys : array[0..1] of string = ('CID','HN');
   _updateKeys: array of string;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  //----------------------------------------
       cdsMyASync:=TClientDataSet.Create(nil);
       cdsASync:=TClientDataSet.Create(nil);

       try
        // tableName    :='report43_death';
        // aloha_name   :='aloha_death';
        // arrDFields   :='DDEATH;D_UPDATE;EXPORT_DATE';

         SQLStr     :='select * from '+aloha_name+' where '+wfName+'='+QuotedStr(wfValue);   // informix get sql
         sqlUPD     :='select * from '+tableName+' where '+wfName+'='+QuotedStr(wfValue);   // update sql


         WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);
         cdsASync.Data := GetIFXDataSet(SQLStr);

         if cdsASync.RecordCount>0 then
         begin
           WriteLog('['+tableName+':'+aloha_name+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

           strArrCount:=0;
           value := arrDFields;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(strArr,strArrCount+1);
               strArr[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;


           strArrCount:=0;
           value := updateKeys;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(_updateKeys,strArrCount+1);
               _updateKeys[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;



           cdsMyASync.Data:=GetDataSet(sqlUPD);

           if cdsMyASync.RecordCount<=0 then
           begin  // insert new record
             WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');
             CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
             if cdsMyASync.ChangeCount>0 then
             UpdateDataset(cdsMyASync,sqlUPD);
             WriteLog('['+tableName+']'+'Sync : insert success mysql.');
           end else
           begin   // update
             WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

             CopyIfxCds2MyCdsUpd(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database'],_updateKeys);
              if cdsMyASync.ChangeCount>0 then
               UpdateDataset(cdsMyASync,sqlUPD);
             WriteLog('['+tableName+']'+'Sync : update success mysql.');

           end;


         end;
       finally
        cdsASync.free;
        cdsMyASync.free;
       end;
end;


function TDSHIS43File.syncIfxRecordAFSQL(wfName, wfValue, tableName,
  ifxSQL, arrDFields, updateKeys: string): boolean;
var cdsASync,cdsMyASync:TClientDataSet;
    SQLStr,value,delimiter,txt,ns,sqlUPD:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;
    P1,P2,P3:TParam;

//const
//  updateKeys : array[0..1] of string = ('CID','HN');
   _updateKeys: array of string;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  //----------------------------------------
       cdsMyASync:=TClientDataSet.Create(nil);
       cdsASync:=TClientDataSet.Create(nil);

       try
        // tableName    :='report43_death';
        // aloha_name   :='aloha_death';
        // arrDFields   :='DDEATH;D_UPDATE;EXPORT_DATE';
        //if Trim(wfName)<>'' then
        // SQLStr     :=ifxSQL+' where '+wfName+'='+QuotedStr(wfValue)  // informix get sql
        //else
        SQLStr := ifxSQL;

         sqlUPD     :='select * from '+tableName+' where '+wfName+'='+QuotedStr(wfValue);   // update sql


         WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);
         cdsASync.Data := GetIFXDataSet(SQLStr);

         if cdsASync.RecordCount>0 then
         begin
           WriteLog('Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

           strArrCount:=0;
           value := arrDFields;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(strArr,strArrCount+1);
               strArr[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;


           strArrCount:=0;
           value := updateKeys;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(_updateKeys,strArrCount+1);
               _updateKeys[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;



           cdsMyASync.Data:=GetDataSet(sqlUPD);

           if cdsMyASync.RecordCount<=0 then
           begin  // insert new record
             WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');
             CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
             if cdsMyASync.ChangeCount>0 then
             UpdateDataset(cdsMyASync,sqlUPD);
             WriteLog('['+tableName+']'+'Sync : insert success mysql.');
           end else
           begin   // update
             WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

             CopyIfxCds2MyCdsUpd(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database'],_updateKeys);
              if cdsMyASync.ChangeCount>0 then
               UpdateDataset(cdsMyASync,sqlUPD);
             WriteLog('['+tableName+']'+'Sync : update success mysql.');

           end;


         end;
       finally
        cdsASync.free;
        cdsMyASync.free;
       end;
end;


function TDSHIS43File.syncIfxRecordSet(wfName: string; wfValue: integer;
  tableName, aloha_name, arrDFields, updateKeys: string): boolean;
var cdsASync,cdsASyncA,cdsATemp,cdsMyASync:TClientDataSet;
    SQLStr,value,delimiter,txt,ns,sqlUPD,sqlWhere:string;
    strArrCount,delta,dx,irow,fnum,ik,kv,iw:integer;
    strArr : array of string;
    P1,P2,P3:TParam;
    _updateKeys,_updateKeysValue: array of string;
begin
  //----------------------------------------
  if IsIFXASync then
  begin
       cdsASync:=TClientDataSet.Create(nil);
       cdsASyncA:=TClientDataSet.Create(nil);
       cdsATemp:=TClientDataSet.Create(nil);
       cdsMyASync:=TClientDataSet.Create(nil);

      try
       WriteLog('>>>>>>>>>>>>>>>> ##2 Auto Sync List');
       irow:=0;


       SQLStr     :='select * from '+aloha_name+' where '+wfName+'='+inttostr(wfValue);   // informix get sql
       sqlUPD     :='select * from '+tableName+' where '+wfName+'='+inttostr(wfValue);   // update sql

       WriteLog('['+tableName+']'+'Sync SQL ### :'+SQLStr);
       cdsASync.Data := GetIFXDataSet(SQLStr);      // retrive data from informix
       cdsATemp.Data:=GetDataSet(sqlUPD);


               strArrCount:=0;
               value := arrDFields;
               delimiter:=';';

               delta := Length(delimiter);
               txt := value + delimiter;

                 while Length(txt) > 0 do
                 begin
                   dx := Pos(delimiter, txt) ;
                   ns := Copy(txt,0,dx-1) ;
                   SetLength(strArr,strArrCount+1);
                   strArr[strArrCount]:=ns;
                   txt := Copy(txt,dx+delta,MaxInt) ;
                   Inc(strArrCount);
                 end;


               strArrCount:=0;
               value := updateKeys;
               delimiter:=';';

               delta := Length(delimiter);
               txt := value + delimiter;

                 while Length(txt) > 0 do
                 begin
                   dx := Pos(delimiter, txt) ;
                   ns := Copy(txt,0,dx-1) ;
                   SetLength(_updateKeys,strArrCount+1);
                   _updateKeys[strArrCount]:=ns;
                   txt := Copy(txt,dx+delta,MaxInt) ;
                   Inc(strArrCount);
                 end;




        if cdsASync.RecordCount>0 then
        begin

          WriteLog('['+tableName+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix) *** -------------------------------------------');


          cdsASync.First;
          while not cdsASync.eof do
          begin
            sqlWhere:=' where ';
            kv:=0;
            inc(irow);

            for ik:=0 to High(_updateKeys) do
              for fnum:=0 to cdsASync.FieldCount-1 do

                if (trim(_updateKeys[ik])<>'') and (trim(cdsASync.Fields[fnum].FieldName)<>'') then
                  if uppercase(_updateKeys[ik])=uppercase(cdsASync.Fields[fnum].FieldName) then
                  begin
                    inc(kv);
                    SetLength(_updateKeysValue,kv);
                    _updateKeysValue[kv-1]:= cdsASync.FieldByName(cdsASync.Fields[fnum].FieldName).AsString;

                    if kv>1 then sqlWhere:=sqlWhere+' and ';

                    if  cdsASync.FieldByName(cdsASync.Fields[fnum].FieldName).DataType=ftString then
                      sqlWhere := sqlWhere+_updateKeys[ik]+' = '+QuotedStr(trim(cdsASync.FieldByName(cdsASync.Fields[fnum].FieldName).AsString))
                    else if  cdsASync.FieldByName(cdsASync.Fields[fnum].FieldName).DataType=ftInteger then
                      sqlWhere := sqlWhere+_updateKeys[ik]+' = '+cdsASync.FieldByName(cdsASync.Fields[fnum].FieldName).AsString;

                  end;




             // not find current data inside mysql and append
             if not cdsATemp.Locate(updateKeys,_updateKeysValue,[]) then
             //if not cdsATemp.Locate(updateKeys,VarArrayOf([cdsASync.FieldByName('PID').AsString,trim(cdsASync.FieldByName('instype_new').AsString)]),[]) then
             begin
               // sync to mysql
                WriteLog('SQL Get:'+'select * from '+tableName+sqlWhere);
                cdsMyASync.Data:=GetDataSet('select * from '+tableName+sqlWhere);
                 if cdsMyASync.RecordCount<=0 then
                 begin
                   cdsASyncA.data := GetIFXDataSet('select * from '+aloha_name+sqlWhere);
                   if cdsASyncA.RecordCount>0 then
                   begin
                     WriteLog('['+tableName+']'+'Sync Append :'+inttostr(irow)+'/'+inttostr(cdsASync.RecordCount)+' records (mysql)');
                     CopyIfxCds2MyCds(cdsASyncA,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
                     if cdsMyASync.ChangeCount>0 then
                      UpdateDataset(cdsMyASync,'select * from '+tableName+sqlWhere);
                   end else
                    WriteLog('['+tableName+']'+': No Record from Ifx need to sync.');
                 end;
             end;


            if not cdsASync.eof then cdsASync.next;
          end;
        end;


      finally
        cdsASync.free;
        cdsMySQL.free;
        cdsMyASync.free;
        cdsATemp.free;
        cdsASyncA.free;

      end;
  end;

end;


function TDSHIS43File.syncLabOrList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    syncIfxRecordSet('PID',PID,'report43_labor','aloha_labor','BDATE;D_UPDATE;EDC;','PID;');
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.syncIfxRecord(wfName:string;wfValue:integer; tableName, aloha_name,
  arrDFields,updateKeys:string): boolean;
var cdsASync,cdsMyASync:TClientDataSet;
    SQLStr,value,delimiter,txt,ns,sqlUPD:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;
    P1,P2,P3:TParam;

//const
//  updateKeys : array[0..1] of string = ('CID','HN');
   _updateKeys: array of string;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;

  //----------------------------------------
       cdsMyASync:=TClientDataSet.Create(nil);
       cdsASync:=TClientDataSet.Create(nil);

       try
        // tableName    :='report43_death';
        // aloha_name   :='aloha_death';
        // arrDFields   :='DDEATH;D_UPDATE;EXPORT_DATE';

         SQLStr     :='select * from '+aloha_name+' where '+wfName+'='+inttostr(wfValue);   // informix get sql
         sqlUPD     :='select * from '+tableName+' where '+wfName+'='+inttostr(wfValue);   // update sql


         WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);
         cdsASync.Data := GetIFXDataSet(SQLStr);

         if cdsASync.RecordCount>0 then
         begin
           WriteLog('['+tableName+':'+aloha_name+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

           strArrCount:=0;
           value := arrDFields;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(strArr,strArrCount+1);
               strArr[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;


           strArrCount:=0;
           value := updateKeys;
           delimiter:=';';

           delta := Length(delimiter);
           txt := value + delimiter;

             while Length(txt) > 0 do
             begin
               dx := Pos(delimiter, txt) ;
               ns := Copy(txt,0,dx-1) ;
               SetLength(_updateKeys,strArrCount+1);
               _updateKeys[strArrCount]:=ns;
               txt := Copy(txt,dx+delta,MaxInt) ;
               Inc(strArrCount);
             end;



           cdsMyASync.Data:=GetDataSet(sqlUPD);

           if cdsMyASync.RecordCount<=0 then
           begin  // insert new record
             WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');
             CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
             if cdsMyASync.ChangeCount>0 then
             UpdateDataset(cdsMyASync,sqlUPD);
             WriteLog('['+tableName+']'+'Sync : insert success mysql.');
           end else
           begin   // update
             WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

             CopyIfxCds2MyCdsUpd(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database'],_updateKeys);
              if cdsMyASync.ChangeCount>0 then
               UpdateDataset(cdsMyASync,sqlUPD);
             WriteLog('['+tableName+']'+'Sync : update success mysql.');

           end;


         end;
       finally
        cdsASync.free;
        cdsMyASync.free;
       end;
end;


procedure TDSHIS43File.syncPerson(CID: string);
var cdsASync,cdsMyASync:TClientDataSet;
    tableName,SQLStr,arrDFields,value,delimiter,txt,ns:string;
    strArrCount,delta,dx:integer;
    strArr : array of string;
    P1,P2,P3:TParam;
    strsql:string;
begin
//  VerifyLoggedIn();

  LastErrorCode := _NO_ERROR_;
  strsql:=''+
 ' select ''13754'' as hospcode '+
 ' ,x1.id_number as cid '+
 ' ,x1.s_hn as pid '+
 ' ,'''' as hid '+
 ' ,x2.nhso_prefix_id as prename '+
 ' ,x1.NAME as NAME '+
 ' ,x1.surname as lname '+
 ' ,x1.hn '+
 ' ,x1.sex '+
 ' ,x1.birth_date as birth '+
 ' ,x3.nhso_marriage_id as mstatus '+
 ' ,x4.nhso_occ_id as occupation_old '+
 ' ,x4.nhso_occ_old as occupation_new '+
 ' ,x5.race '+
 ' ,x6.nhso_nation_id as nation '+
 ' ,x7.nhsl_religion_id as religion '+
 ' ,x9.nhso_education_id as education '+
 ' ,'''' as fstatus ,'''' as father ,'''' as mother ,'''' as couple ,'''' as vstatus ,'''' as movein '+
 ' ,NVL(x1.death_date,9) as instype '+
 ' ,x1.death_date as ddischarge '+
 ' ,x8.blood_group '+
 ' ,'''' as rhgroup,'''' as labor,'''' as passport '+
 ' ,x11.typearea '+
 ' from informix.patient_info1 x1 '+
 ' LEFT JOIN informix.nhso_map_prefix x2 ON x1.c_prefix = x2.c_prefix '+
 ' left join informix.nhso_map_marriage x3 on x1.c_marital = x3.marriage_id '+
 ' LEFT JOIN informix.nhso_map_occ x4 ON x1.c_occupation = x4.occupation_id '+
 ' LEFT JOIN informix.nhso_map_race x5 ON  x1.c_race = x5.c_race '+
 ' LEFT JOIN informix.nhso_map_nation x6 ON x1.c_nationality = x6.nation_id '+
 ' LEFT JOIN informix.nhso_map_religion x7 ON x1.c_religion = x7.religion_id '+
 ' LEFT JOIN informix.patient_info6 x8 ON x1.s_hn = x8.s_hn '+
 ' LEFT JOIN informix.nhso_map_education x9 ON x8.c_education = x9.c_education '+
 ' LEFT JOIN informix.nhso_typearea x11 ON x1.id_number = x11.cid '+
 ' where x1.HN="'+CID+'"';

  syncIfxRecordA('HN',CID,'report43_person','aloha_person','BIRTH;D_UPDATE;MOVEIN;DDISCHARGE','HN;');
  //syncIfxRecordAFSQL('HN',CID,'report43_person',strsql,'BIRTH;D_UPDATE;MOVEIN;DDISCHARGE;EXPORT_DATE','HN;');
(*
  //----------------------------------------
       cdsMyASync:=TClientDataSet.Create(nil);

       tableName  :='report43_person';
       arrDFields  :='BIRTH;D_UPDATE;MOVEIN;DDISCHARGE;EXPORT_DATE';

       SQLStr     :='select * from aloha_person where HN='+CID;
       WriteLog('['+tableName+']'+'Sync SQL :'+SQLStr);

       cdsASync:=TClientDataSet.Create(nil);
       cdsASync.Data := GetIFXDataSet(SQLStr);

       if cdsASync.RecordCount>0 then
       begin
         WriteLog('['+tableName+']'+'Sync Start :'+inttostr(cdsASync.RecordCount)+' records (informix)');

         strArrCount:=0;
         value := arrDFields;
         delimiter:=';';

         delta := Length(delimiter);
         txt := value + delimiter;

           while Length(txt) > 0 do
           begin
             dx := Pos(delimiter, txt) ;
             ns := Copy(txt,0,dx-1) ;
             SetLength(strArr,strArrCount+1);
             strArr[strArrCount]:=ns;
             txt := Copy(txt,dx+delta,MaxInt) ;
             Inc(strArrCount);
           end;

         //cdsMySQL.data := GetDataSet('select * from '+tableName+' limit 0');

         cdsMyASync.Data:=GetDataSet('select * from '+tableName+' where HN='+CID);

         if cdsMyASync.RecordCount<=0 then
         begin  // insert new record
           //if cdsMyASync.RecordCount>0 then
           //  WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)')
           //else
           WriteLog('['+tableName+']'+'Sync Append :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

           CopyIfxCds2MyCds(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database']);
           if cdsMyASync.ChangeCount>0 then
           UpdateDataset(cdsMyASync,'select * from '+tableName+' where HN='+CID);
           WriteLog('['+tableName+']'+'Sync : insert success mysql.');
         end else
         begin   // update
           //if cdsMyASync.RecordCount>0 then
           WriteLog('['+tableName+']'+'Sync Update :'+inttostr(cdsASync.RecordCount)+' records (mysql)');

           CopyIfxCds2MyCdsUpd(cdsASync,cdsMyASync,tableName,strArr,0,'00',SQLConnection.Params.Values['Database'],['CID','HN']);
            if cdsMyASync.ChangeCount>0 then
             UpdateDataset(cdsMyASync,'select * from '+tableName+' where HN='+CID);
           WriteLog('['+tableName+']'+'Sync : update success mysql.');

         end;


         // -- new sync address
         syncAddressType1(cdsASync.FieldByName('PID').AsInteger);
         syncAddressType2(cdsASync.FieldByName('PID').AsInteger);


       end;

    cdsASync.free;
    cdsMyASync.free;
    *)


end;

function TDSHIS43File.syncProcedureOpdList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    syncIfxRecordSet('PID',PID,'report43_procedure_opd','aloha_procedure_opd','DATE_SERV;D_UPDATE','PID;SEQ;');
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHIS43File.syncServiceList(PID: integer): boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
    syncIfxRecordSet('PID',PID,'report43_service','aloha_service','BIRTH;D_UPDATE;MOVEIN;DDISCHARGE','PID;SEQ;INSTYPE');
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

{

function TDSHIS43File.InsUpdPerson(REPORTID: Integer; HOSPCODE, CID, PID,
  HID, PRENAME, NAME, LNAME, HN, SEX: String; BIRTH: Double; MSTATUS,
  OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION, EDUCATION,
  FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: String; MOVEIN: Double;
  DISCHARGE: String; DDISCHARGE: Double; ABOGROUP, RHGROUP, LABOR,
  PASSPORT, TYPEAREA: String; D_UPDATE, EXPORT_DATE: double): boolean;
begin
 //
end;
}



end.
