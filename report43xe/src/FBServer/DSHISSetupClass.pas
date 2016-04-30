unit DSHISSetupClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  DSMainClass, DataSnap.Provider, Data.DB, Data.sqlExpr, Data.FMTBcd,
  Data.DBXFirebird, Data.Win.ADODB, DSServerConstant, DSHISMainClass,DateUtils,
  Datasnap.DBClient;

type
  TDSHISSetup = class(TDSMain)
    dsHisStGetCde: TSQLQuery;
    dspHisStGetCde: TDataSetProvider;
    dsHisGetReport43Person: TSQLQuery;
    dspHisGetReport43Person: TDataSetProvider;
    dsHisGetReport43Service: TSQLQuery;
    dspHisGetReport43Service: TDataSetProvider;
    cdsHisGetReport43Person: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }

    function SstmSam(msg:string):string;


    // ======================

    Function StCidInsUpd(STSCDE,FMTCDE,CIDCDE,CNOCDE,ENMCDE,TNMCDE:STRING;VA1CDE,VA2CDE,DT1CDE,DT2CDE:double;AC1CDE,AC2CDE,DESCDE, ABBCDE,ENTUSR:string): Boolean;
    function StCidDel(FMTCDE,CIDCDE,CNOCDE:STRING):Boolean;

    function StNb1BrnGenDoc(I_YARNB1: integer; I_CMPNB1: String ;I_BRNNB1:STRING): Boolean;
    Function StNB1InsUpd(    STSNB1 : String;    CMPNB1 : String;    BRNNB1 : String;    DCDNB1 : String;    YARNB1 : integer;    N01NB1 : integer;
      N02NB1 : integer;    N03NB1 : integer;    N04NB1 : integer;    N05NB1 : integer;    N06NB1 : integer;    N07NB1 : integer;
      N08NB1 : integer;    N09NB1 : integer;    N10NB1 : integer;    N11NB1 : integer;    N12NB1 : integer;    PR1NB1 : String;    PR2NB1 : String): Boolean;
    function StNb1Del(I_YARNB1: integer; I_CMPNB1: String ;I_BRNNB1:STRING;I_DCDNB1:STRING):Boolean;

    Function StVm1InsUpd(stsvm1,  vnovm1, tnmvm1,enmvm1, cpsvm1, vtpvm1, accvm1, otpvm1, viavm1, psnvm1, taxvm1, ttxvm1, tpivm1:string;
      vpcvm1:double;
      popvm1, papvm1, dopvm1,memvm1,md :string): Boolean;
    Function StVmaInsUpd(vnovma : string; lnkvma : string;
      ta1vma ,ta2vma,chgvma,ctyvma,zipvma,telvma,mobvma,faxvma,emavma,webvma : string): Boolean;
    function StVm1Del(VNOVM1:STRING):Boolean;



    function ttYm3Del(ICMPYm3 : string;IBRNYm3 : String;IVNOYm3:String): Boolean;
    function ttYm3InsUpd(stsYm3,cmpYm3,brnYm3,VnoYm3:String;
      crtYm3: integer; crlYm3:double; dsdym3: integer;dsaym3:double;
      bfiYm3,minYm3,mpyYm3,mcmYm3,mdnYm3,mcnYm3,majYm3,mdsYm3,
      mitYm3,pdcYm3,uncYm3,cqrYm3,adnYm3,acnYm3,apyYm3,ypyYm3,ypcYm3 : Double): Boolean;

    Function StCm1InsUpd(ICMPAM3 : string;IBRNAM3 : String;stscm1, typcm1, ctpcm1, cnocm1, tnmcm1, enmcm1:    string;
      acccm1, taxcm1, cpscm1, ccmcm1, poscm1, ctlcm1,
      cmbcm1, cfacm1, cemcm1, viacm1, smncm1, pdpcm1, dopcm1, memcm1,md:    string): Boolean;
    Function StCmaInsUpd(cnocma : string; lnkcma : string;
      ta1cma ,ta2cma,chgcma,ctycma,zipcma,telcma,mobcma,faxcma,emacma,webcma : string): Boolean;
    function StCm1Del(CNOCM1:STRING):Boolean;


    function ttAm3InsUpd(stsam3,cmpam3,brnam3,cnoam3:String;
      crtam3: integer;
      crlam3,bfiam3,minam3,mpyam3,mcmam3,mdnam3,mcnam3,majam3,mdsam3,
      mitam3,pdcam3,uncam3,cqram3,adnam3,acnam3,apyam3,ypyam3,ypcam3 : Double): Boolean;
    function ttAm3Del(ICMPAM3 : string;IBRNAM3 : String;ICNOAM3:String): Boolean;

    Function StPm1InsUpd(stspm1,itcpm1,itnpm1,enmpm1,tnmpm1,mnmpm1,ut1pm1,ut2pm1,ue1pm1,ue2pm1:string;
            cvtpm1:double;whspm1:string;
            md:string): Boolean;
    Function StPm1InsUpd2(itnpm1:string;uc1pm1,uc2pm1,up1pm1,up2pm1,uf1pm1,uf2pm1,fampm1,ct1pm1,ct2pm1: double;
            itspm1,brdpm1,srspm1,geapm1:string;caspm1,pwrpm1:integer;stkpm1:string;dpcpm1:integer;accpm1: string): Boolean;
    function StPm1Del(ITNPM1:STRING):Boolean;


//    function StBgGet(I_YARBG: integer; I_CMPBG: String ;I_BRNBG:STRING;CRITERIA: String; ORDERFIELD: String;FLGBG:STRING): Boolean;
    Function StBgInsUpd(flgbg,stsbg2,yarbg2,cmpbg2,brnbg2,itnbg2,smnbg2: String;
             q01bg2,q02bg2,q03bg2,q04bg2,q05bg2,q06bg2,q07bg2,q08bg2,q09bg2,q10bg2,q11bg2,q12bg2 : Double ;
             md:string): Boolean;
    Function StBgInsUpd2(flgbg,stsbg2,yarbg2,cmpbg2,brnbg2,itnbg2,smnbg2: String;
             a01bg2,a02bg2,a03bg2,a04bg2,a05bg2,a06bg2,a07bg2,a08bg2,a09bg2,a10bg2,a11bg2,a12bg2: Double): Boolean;
    function StBgDel(FLGBG,YARBG2,CMPBG2,BRNBG2, ITNBG2,SMNBG2:STRING):Boolean;

//    function StStyGet(CRITERIA: String; ORDERFIELD: String): Boolean;
    Function StStyInsUpd(STSSTY, SERSTY ,CNOSTY ,ENGSTY ,ITNSTY ,SRSSTY,COLSTY ,MD : string): Boolean;
    function StStyDel(SERSTY:STRING):Boolean;

//    function StShpGet(CRITERIA: String; ORDERFIELD: String): Boolean;
    Function StShpInsUpd(STSSHP,CNOSHP:string;SEQSHP:integer;FBNSHP,TBNSHP:string;AMTSHP:double;MD:string): Boolean;
    function StShpDel(CNOSHP:STRING;SEQSHP :integer):Boolean;

  //  function StCm3Get(CRITERIA: String; ORDERFIELD: String): Boolean;
    Function StCm3InsUpd(stscm3,cmpcm3,brncm3,enmcm3,tnmcm3,ta1cm3,ta2cm3,tidcm3,MD:string): Boolean;
    function StCm3Del(CMPCM3,BRNCM3 :STRING):Boolean;

//    function StRm1Get(CRITERIA: String; ORDERFIELD: String): Boolean;
    Function StRm1InsUpd(stsrm1,cmprm1,brnrm1,regrm1:String;rgnrm1:integer;prvrm1:string;pdtrm1,patrm1,oatrm1:double;avlrm1,narrm1,md:string): Boolean;
    function StRm1Del(cmprm1,brnrm1,regrm1,rgnrm1,prvrm1 :STRING):Boolean;

//    function StRegGet(CRITERIA: String; ORDERFIELD: String): Boolean;
//    function StRegGetPm1(CNOREG,MD: String): Boolean;
    Function StRegInsUpd(stsreg,cmpreg,brnreg,cnoreg:String;SeqREG:integer;itnreg:String;amtreg,othreg:Double;narreg,md:string): Boolean;
    function StRegDel(CMPREG,BRNREG,CNOREG:STRING;SEQREG :integer ):Boolean;

//    function StAm1Get(CRITERIA: String; ORDERFIELD: String): Boolean;
    Function StAm1InsUpd(stsam1:String;
              cmpam1,brnam1,cnoam1:string;
              idtam1:double;
              dnoam1:string;
              depam1:string;
              SERAM1:string;
              DDTAM1,amtam1,balam1:double;MD:string): Boolean;

    function StAm1Del(yaram1:integer;cmpam1,brnam1,cnoam1,dnoam1:string):Boolean;

//    function StYm1Get(CRITERIA: String; ORDERFIELD: String): Boolean;
    Function StYm1InsUpd(stsYM1,DCDYM1:String;
              cmpYM1,brnYM1,VnoYM1:string;
              idtYM1:double;
              dnoYM1:string;
              depYM1:string;
              ABTYM1:DOUBLE;VATYM1:STRING ;AVTYM1:DOUBLE;POYM1:INTEGER;
              SERYM1:string;
              DDTYM1,amtYM1,balYM1:double;MD:string): Boolean;

    function StYm1Del(yarYM1:integer;cmpYM1,brnYM1,VnoYM1,dnoYM1:string):Boolean;

//    function StZipGet(CRITERIA: String; ORDERFIELD: String): Boolean;
//    function StPm1GetImage(ITNPM1: String): Boolean;
    function StPm1DelImage(ITNPM1: String): Boolean;

//    function StIm2Get(CRITERIA,ORDERFIELD:String;IYARIM2:integer;ICMPIM2,IBRNIM2 ,IDCDIM2: String): Boolean;
    Function StIm2InsUpd(stsim2,cmpim2,brnim2,fwhim2,twhim2,itnim2,serim2,engim2,colim2:String;
          idtim2:double;
          movim2,dcdim2:String;
          dnoim2:int64;
          seqim2:integer;
          depim2,desim2:String;
          qt1im2,qt2im2:integer;
          ct1im2,ct2im2,at1im2,at2im2,uc1im2,uc2im2,up1im2,up2im2:double;
          md :String): Boolean;

    function StIm2Del(dnoim2: int64):Boolean;

//    function STIm1GetByItn(CRITERIA: String; ORDERFIELD: String;ITNIM1,COLIM1:STRING): Boolean;
//    function StPm1GetByItc(CRITERIA: String; ORDERFIELD: String;ITCPM1:STRING): Boolean;

//    function StRedCardGet(CRITERIA: String; ORDERFIELD,ICMP,IBRN: String): Boolean;

    function HisStCdeGet(CMP,BRN,DEP,SEC: String): Boolean;


    // for 43 files module
    function HisGetReport43Person(PID: integer): Boolean;
    function HisGetReport43Service(PID: integer): Boolean;
    function HisSamUpdate(PID,CID,HOSPCODE, HID, PRENAME, NAME, LNAME, HN, SEX: string;BIRTH:double): Boolean;


    function HISInsUpdPerson(
    CID: string; REPORTID: integer;
  HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string
      ): Boolean;





    function HisInsUpdReport43Person(CID:string;REPORTID:integer;HOSPCODE,PID,HID,PRENAME,NAME,LNAME,HN,SEX:string;BIRTH:tdate;MSTATUS,OCCUPATION_OLD,OCCUPATION_NEW,
      RACE,NATION,RELIGION,EDUCATION,FSTATUS,FATHER,MOTHER,COUPLE,VSTATUS:string;MOVEIN:tdate;DISCHARGE:string;DDISCHARGE:tdate;
      ABOGROUP,RHGROUP,LABOR,PASSPORT,TYPEAREA:string;D_UPDATE,EXPORT_DATE:tdate
      ): Boolean;


 end;

var
  DSSetup: TDSHISSetup;

implementation

{$R *.dfm}

uses MainServerForm;

const
SecsPerDay = 24 *60 *60;

function UnixTime(DateTime: TDateTime): Double;
begin
result := Trunc( (DateTime -EncodeDate(1970,1,1)) * SecsPerDay);
end;

function UnixDateTimeToDelphiDateTime(UnixDateTime: Double): TDateTime;
begin
result := EncodeDate(1970, 1, 1) +( UnixDateTime / SecsPerDay );
end;

function TDSHISSetup.HisGetReport43Person(PID: integer): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsHisGetReport43Person do
   begin
    ParamByName('PID').AsInteger := PID;
//    ParamByName('I_CMPNB1').AsString := I_CMPNB1;
//    ParamByName('I_BRNNB1').AsString := I_BRNNB1;
//    ParamByName('I_DCDNB1').AsString := I_DCDNB1;

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
//      LastErrorMsg := E.Message;
//      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;



function TDSHISSetup.HisGetReport43Service(PID: integer): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsHisGetReport43Service do
   begin
    ParamByName('PID').AsInteger := PID;
//    ParamByName('I_CMPNB1').AsString := I_CMPNB1;
//    ParamByName('I_BRNNB1').AsString := I_BRNNB1;
//    ParamByName('I_DCDNB1').AsString := I_DCDNB1;

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
//      LastErrorMsg := E.Message;
//      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHISSetup.HISInsUpdPerson(CID: string; REPORTID: integer;
  HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string): Boolean;
var qrySQL,qryExecute:TSQLQuery;
begin
  try

   qrySQL := TSQLQuery.Create(Self);
   qryExecute := TSQLQuery.Create(self);

   try
     qrySQL.SQLConnection :=  Inherited SQLConnection;
     qrySQL.BeforeOpen := DataSetBeforeOpen;
     qrySQL.SQL.Text :='select PID from report43_person where PID='+PID;
     //qrySQL.ParamByName('PID').AsString := PID;
     qrySQL.Open;

   if qrySQL.RecordCount>0 then
     begin
       qryExecute.SQLConnection :=  Inherited SQLConnection;
       qryExecute.BeforeOpen := DataSetBeforeOpen;
       qryExecute.SQL.Text :='update report43_person set HOSPCODE=5555 where PID='+PID;
       //qryExecute.ParamByName('PID').AsString := PID;
       qryExecute.open;
     end;

   finally
      qrySQL.free;
      qryExecute.free;
   end;


  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

end;

  {
var qrySQL,qryExecute:TSQLQuery;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try

   qrySQL := TSQLQuery.Create(Self);
   qryExecute := TSQLQuery.Create(self);

      try

       qrySQL.SQLConnection :=  Inherited SQLConnection;
       qrySQL.BeforeOpen := DataSetBeforeOpen;
        qrySQL.SQL.Text:='select * from report43_person where CID=''3440601034181''';

        qrySQL.Open;

        if qrySQL.RecordCount>0 then
        begin
         qryExecute.SQLConnection :=  Inherited SQLConnection;
         qryExecute.BeforeOpen := DataSetBeforeOpen;

          // BIRTH='+BIRTH+',    MOVEIN='+MOVEIN+',   ',DDISCHARGE='+DDISCHARGE+' '+       +',D_UPDATE='+D_UPDATE+',EXPORT_DATE='+EXPORT_DATE

          qryExecute.SQL.Text:='update report43_person set '+
         ' HOSPCODE=''1111'',HID='+QuotedStr(HID)+',PRENAME='+QuotedStr(PRENAME)+',NAME='+QuotedStr(NAME)+',LNAME='
          +QuotedStr(LNAME)+'   '+
         ' ,HN='+QuotedStr(HN)+',SEX='+QuotedStr(SEX)+
         ' where CID='+QuotedStr(CID)+'';

          frmMainServer.mmLog.Lines.add(qryExecute.SQL.Text);





         qryExecute.open;


         result := true;

        end;


       finally
        qrySQL.free;
        qryExecute.free;
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;
end;
   }

  function UNIXTimeToDateTimeFAST(UnixTime: LongWord): TDateTime;
begin
Result := (UnixTime / 86400) + 25569;
end;

function TDSHISSetup.HisSamUpdate(PID,CID,HOSPCODE, HID, PRENAME, NAME, LNAME, HN, SEX: string;BIRTH:Double): Boolean;
var qrySQL,qryExecute:TSQLQuery;
   yyyy,mm,dd:word;
   ddBirth:Double;
   dBirth : TDateTime;
begin
  try

//    ddBirth:=DateTimeToTimeStamp()
    dBirth :=BIRTH;
    (*

   qrySQL := TSQLQuery.Create(Self);
   qryExecute := TSQLQuery.Create(self);

   try

     qrySQL.SQLConnection :=  Inherited SQLConnection;
     qrySQL.BeforeOpen := DataSetBeforeOpen;
     qrySQL.SQL.Text :='select PID from report43_person where PID=:PID';
     qrySQL.ParamByName('PID').AsString := PID;
     qrySQL.Open;

   if qrySQL.RecordCount>0 then
     begin


      cdsHisGetReport43Person.close;
      //cdsHisGetReport43Person.BeforeOpen:=DataSetBeforeOpen;

      cdsHisGetReport43Person.CommandText :='select * from report43_person where PID='+PID;
     // cdsHisGetReport43Person.Params.ParamByName('PID').AsString := PID;

      cdsHisGetReport43Person.open;

       cdsHisGetReport43Person.edit;

       cdsHisGetReport43Person.FieldByName('HOSPCODE').AsString := HOSPCODE;
       //cdsHisGetReport43Person.FieldByName('BIRTH').AsFloat := BIRTH;
       cdsHisGetReport43Person.post;

       cdsHisGetReport43Person.ApplyUpdates(0);





       qryExecute.SQLConnection :=  Inherited SQLConnection;
       qryExecute.BeforeOpen := DataSetBeforeOpen;
       //qryExecute.sql.text := 'select * from report43_person where where PID=:PID';



       qryExecute.SQL.Text :='update report43_person set '
       +' HOSPCODE=:HOSPCODE'
       +',PRENAME=:PRENAME'
       +',NAME=:NAME'
       +',LNAME=:LNAME'
       +',HN=:HN'
       +',SEX=:SEX'
       +',CID=:CID'
       +',HID=:HID'
      // +',BIRTH=:BIRTH'





       +' where PID=:PID';




       qryExecute.ParamByName('HOSPCODE').AsString := HOSPCODE;
       qryExecute.ParamByName('PRENAME').AsString := PRENAME;
       qryExecute.ParamByName('NAME').AsString := NAME;
       qryExecute.ParamByName('LNAME').AsString := LNAME;
       qryExecute.ParamByName('HN').AsString := HN;
       qryExecute.ParamByName('SEX').AsString := SEX;
       qryExecute.ParamByName('CID').AsString := CID;

      // SetDateParamValue(qryExecute.ParamByName('BIRTH'),BIRTH)  ;


      // qryExecute.ParamByName('BIRTH').AsFloat:= BIRTH;

       qryExecute.ParamByName('HID').AsString := HID;

       qryExecute.ParamByName('PID').AsString := PID;

       qryExecute.open;



       {
       qryExecute.edit;
       qryExecute.FieldByName('BIRTH').AsFloat := BIRTH;
       qryExecute.post;


       qryExecute.Open;
       }

       Result := true;
     end;

   finally
      qrySQL.free;
      qryExecute.free;
   end;

   *)


       DecodeDate(dBirth,yyyy,mm,dd);



    with TSQLQuery.Create(Self) do
      try

        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        //SQL.Text:='select PID from report43_person where PID=:PID';
        //ParamByName('PID').AsString := PID;
        //Open;

        //if RecordCount>0 then
        //begin
        //  close;
        //SQL.Text:=' update report43_person set HOSPCODE=1111 where PID=:PID';
        //ParamByName('PID').AsString := PID;

        SQL.Text:='update report43_person set '
               +' HOSPCODE=:HOSPCODE'
               +',PRENAME=:PRENAME'
               +',NAME=:NAME'
               +',LNAME=:LNAME'
               +',HN=:HN'
               +',SEX=:SEX'
               +',CID=:CID'
               +',HID=:HID'
               +',BIRTH=:BIRTH'





               +' where PID=:PID';

       ParamByName('HOSPCODE').AsString := HOSPCODE;
       ParamByName('PRENAME').AsString := PRENAME;
       ParamByName('NAME').AsString := NAME;
       ParamByName('LNAME').AsString := LNAME;
       ParamByName('HN').AsString := HN;
       ParamByName('SEX').AsString := SEX;
       ParamByName('CID').AsString := CID;



       //ParamByName('BIRTH').AsFloat := BIRTH;

       if yyyy<2500 then yyyy:=yyyy+543;

       //ParamByName('BIRTH').AsString := '2557/01/01';      //41640

       ParamByName('BIRTH').AsDateTime:=BIRTH;


       //ParamByName('BIRTH').AsString := inttostr(yyyy)+'/'+inttostr(mm)+'/'+inttostr(dd);      //41640
       //SetDateParamValue(qryExecute.ParamByName('BIRTH'),BIRTH)  ;


      // ParamByName('BIRTH').AsFloat:= BIRTH;

       ParamByName('HID').AsString := HID;

       ParamByName('PID').AsString := PID;



         ExecSQL();

         WriteLog('yyyy='+inttostr(yyyy)+',mm='+inttostr(mm)+',dd='+inttostr(dd));

         result := true;

       // end;

       finally
        Free();
      end;


  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

end;

function TDSHISSetup.HisStCdeGet(CMP, BRN, DEP, SEC: String): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dspHisStGetCde do
   begin
//    ParamByName('I_YARNB1').AsInteger := I_YARNB1;
//    ParamByName('I_CMPNB1').AsString := I_CMPNB1;
//    ParamByName('I_BRNNB1').AsString := I_BRNNB1;
//    ParamByName('I_DCDNB1').AsString := I_DCDNB1;

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
//      LastErrorMsg := E.Message;
//      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSHISSetup.HisInsUpdReport43Person(CID:string;REPORTID: integer; HOSPCODE,
  PID, HID, PRENAME, NAME, LNAME, HN, SEX: string; BIRTH: tdate; MSTATUS,
  OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION, EDUCATION,
  FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: string; MOVEIN: tdate;
  DISCHARGE: string; DDISCHARGE: tdate; ABOGROUP, RHGROUP, LABOR, PASSPORT,
  TYPEAREA: string; D_UPDATE, EXPORT_DATE: tdate): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try

        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text:='select PID from report43_person where CID=:CID';
        ParamByName('CID').AsString := CID;
        Open;

        if RecordCount>0 then
        begin
          close;

          // BIRTH='+BIRTH+',    MOVEIN='+MOVEIN+',   ',DDISCHARGE='+DDISCHARGE+' '+       +',D_UPDATE='+D_UPDATE+',EXPORT_DATE='+EXPORT_DATE

          SQL.Text:='update report43_person set '+
         ' REPORTID='+inttostr(REPORTID)+',HOSPCODE='+HOSPCODE+',HID='+HID+',PRENAME='+PRENAME+',NAME='+NAME+',LNAME='+LNAME+'   '+
         ' ,HN='+HN+',SEX='+SEX+',MSTATUS='+MSTATUS+',OCCUPATION_OLD='+OCCUPATION_OLD+',OCCUPATION_NEW='+OCCUPATION_NEW+', '+
         ' RACE='+RACE+',NATION='+NATION+',RELIGION='+RELIGION+',EDUCATION='+EDUCATION+',FSTATUS='+FSTATUS+''+
         ' ,FATHER='+FATHER+',MOTHER='+MOTHER+',COUPLE='+COUPLE+',VSTATUS='+VSTATUS+',DISCHARGE='+DISCHARGE+
         ' ABOGROUP='+ABOGROUP+',RHGROUP='+RHGROUP+',LABOR='+LABOR+',PASSPORT='+PASSPORT+',TYPEAREA='+TYPEAREA+' '+
         ' where CID='+CID+'';
         {
          SQL.Text:='update report43_person set '+
         ' REPORTID=:REPORTID,HOSPCODE=:HOSPCODE,HID=:HID,PRENAME=:PRENAME,NAME=:NAME,LNAME=:LNAME   '+
         ' ,HN=:HN,SEX=:SEX,BIRTH=:BIRTH,MSTATUS=:MSTATUS,OCCUPATION_OLD=:OCCUPATION_OLD,OCCUPATION_NEW=:OCCUPATION_NEW, '+
         ' RACE=:RACE,NATION=:NATION,RELIGION=:RELIGION,EDUCATION=:EDUCATION,FSTATUS=:FSTATUS '+
         ' ,FATHER=:FATHER,MOTHER=:MOTHER,COUPLE=:COUPLE,VSTATUS=:VSTATUS,MOVEIN=:MOVEIN,DISCHARGE=:DISCHARGE,DDISCHARGE=:DDISCHARGE '+
         ' ABOGROUP=:ABOGROUP,RHGROUP=:RHGROUP,LABOR=:LABOR,PASSPORT=:PASSPORT,TYPEAREA=:TYPEAREA,D_UPDATE=:D_UPDATE,EXPORT_DATE=:EXPORT_DATE '+
         ' where CID=:CID';
         }

         open;

         {
         ParamByName('REPORTID').AsInteger := REPORTID;
         ParamByName('HOSPCODE').AsString := HOSPCODE;
         ParamByName('HID').AsString := HID;
         ParamByName('PRENAME').AsString := PRENAME;
         ParamByName('NAME').AsString := NAME;
         ParamByName('LNAME').AsString := LNAME;
         ParamByName('HN').AsString := HN;
         ParamByName('SEX').AsString := SEX;
         ParamByName('BIRTH').AsDate := BIRTH;
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
         ParamByName('MOVEIN').asdate := MOVEIN;
         ParamByName('DISCHARGE').AsString := DISCHARGE;
         ParamByName('DDISCHARGE').AsDate := DDISCHARGE;
         ParamByName('ABOGROUP').AsString := ABOGROUP;
         ParamByName('RHGROUP').AsString := RHGROUP;
         ParamByName('LABOR').AsString := LABOR;
         ParamByName('PASSPORT').AsString := PASSPORT;
         ParamByName('TYPEAREA').AsString := TYPEAREA;
         ParamByName('D_UPDATE').AsDate := D_UPDATE;
         ParamByName('EXPORT_DATE').AsDate := EXPORT_DATE;
         ParamByName('CID').AsString := CID;
         ExecSQL();

         }
         result := true;

        end;

        {
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STCT_CDE_INS_UPD (' +
          ':STSCDE,:FMTCDE,:CIDCDE,:CNOCDE,:ENMCDE,:TNMCDE,:VA1CDE,:VA2CDE,' +
          ':DT1CDE,:DT2CDE,:AC1CDE,:AC2CDE,:DESCDE, :ABBCDE,:ENTUSR)';

        ParamByName('STSCDE').AsString := STSCDE;
        ParamByName('FMTCDE').AsString := FMTCDE;
        ParamByName('CIDCDE').AsString := CIDCDE;
        ParamByName('CNOCDE').AsString := CNOCDE;
        ParamByName('ENMCDE').AsString := ENMCDE;
        ParamByName('TNMCDE').AsString := TNMCDE;
        ParamByName('VA1CDE').AsFloat := VA1CDE;
        ParamByName('VA2CDE').AsFloat := VA2CDE;
        SetDateParamValue(ParamByName('DT1CDE'), DT1CDE);
        SetDateParamValue(ParamByName('DT2CDE'), DT2CDE);
        ParamByName('AC1CDE').AsString := AC1CDE;
        ParamByName('AC2CDE').AsString := AC2CDE;
        ParamByName('DESCDE').AsString := DESCDE;
        ParamByName('ABBCDE').AsString := ABBCDE;
        ParamByName('ENTUSR').AsString := ENTUSR;

        Open();
        Result := (FieldByName('result').AsInteger = 0);

        }
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;
end;

function TDSHISSetup.SstmSam(msg: string): string;
begin
  result := ' hello'+msg;
end;



Function TDSHISSetup.StCidInsUpd(STSCDE,FMTCDE,CIDCDE,CNOCDE,ENMCDE,TNMCDE:STRING;VA1CDE,VA2CDE,DT1CDE,DT2CDE:double;AC1CDE,AC2CDE,DESCDE, ABBCDE,ENTUSR:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STCT_CDE_INS_UPD (' +
          ':STSCDE,:FMTCDE,:CIDCDE,:CNOCDE,:ENMCDE,:TNMCDE,:VA1CDE,:VA2CDE,' +
          ':DT1CDE,:DT2CDE,:AC1CDE,:AC2CDE,:DESCDE, :ABBCDE,:ENTUSR)';

        ParamByName('STSCDE').AsString := STSCDE;
        ParamByName('FMTCDE').AsString := FMTCDE;
        ParamByName('CIDCDE').AsString := CIDCDE;
        ParamByName('CNOCDE').AsString := CNOCDE;
        ParamByName('ENMCDE').AsString := ENMCDE;
        ParamByName('TNMCDE').AsString := TNMCDE;
        ParamByName('VA1CDE').AsFloat := VA1CDE;
        ParamByName('VA2CDE').AsFloat := VA2CDE;
        SetDateParamValue(ParamByName('DT1CDE'), DT1CDE);
        SetDateParamValue(ParamByName('DT2CDE'), DT2CDE);
        ParamByName('AC1CDE').AsString := AC1CDE;
        ParamByName('AC2CDE').AsString := AC2CDE;
        ParamByName('DESCDE').AsString := DESCDE;
        ParamByName('ABBCDE').AsString := ABBCDE;
        ParamByName('ENTUSR').AsString := ENTUSR;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StCidDel(FMTCDE,CIDCDE,CNOCDE:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STCT_CDE_DEL (' +
          ':FMTCDE,:CIDCDE,:CNOCDE)';

        ParamByName('FMTCDE').AsString := FMTCDE;
        ParamByName('CIDCDE').AsString := CIDCDE;
        ParamByName('CNOCDE').AsString := CNOCDE;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;



function TDSHISSetup.StNb1BrnGenDoc(I_YARNB1: integer; I_CMPNB1: String ;I_BRNNB1:STRING): Boolean;
begin
VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STCT_NB1_BRN_GEN_DOC (' +
          ':I_YARNB1,:I_CMPNB1,:I_BRNNB1)';

        ParamByName('I_YARNB1').AsInteger := I_YARNB1;
        ParamByName('I_CMPNB1').AsString := I_CMPNB1;
        ParamByName('I_BRNNB1').AsString := I_BRNNB1;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

Function TDSHISSetup.StNB1InsUpd(    STSNB1 : String;    CMPNB1 : String;    BRNNB1 : String;    DCDNB1 : String;    YARNB1 : integer;    N01NB1 : integer;
      N02NB1 : integer;    N03NB1 : integer;    N04NB1 : integer;    N05NB1 : integer;    N06NB1 : integer;    N07NB1 : integer;
      N08NB1 : integer;    N09NB1 : integer;    N10NB1 : integer;    N11NB1 : integer;    N12NB1 : integer;    PR1NB1 : String;    PR2NB1 : String): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STCT_NB1_INS_UPD (' +
          ':STSNB1,:CMPNB1,:BRNNB1,:DCDNB1,:YARNB1,:N01NB1,:N02NB1,:N03NB1,' +
          ':N04NB1,:N05NB1,:N06NB1,:N07NB1,:N08NB1, :N09NB1,:N10NB1,' +
          ':N11NB1,:N12NB1,:PR1NB1,:PR2NB1)';

        ParamByName('STSNB1').AsString := STSNB1;
        ParamByName('CMPNB1').AsString := CMPNB1;
        ParamByName('BRNNB1').AsString := BRNNB1;
        ParamByName('DCDNB1').AsString := DCDNB1;
        ParamByName('YARNB1').AsInteger := YARNB1;
        ParamByName('N01NB1').AsInteger := N01NB1;
        ParamByName('N02NB1').AsInteger := N02NB1;
        ParamByName('N03NB1').AsInteger := N03NB1;
        ParamByName('N04NB1').AsInteger := N04NB1;
        ParamByName('N05NB1').AsInteger := N05NB1;
        ParamByName('N06NB1').AsInteger := N06NB1;
        ParamByName('N07NB1').AsInteger := N07NB1;
        ParamByName('N08NB1').AsInteger := N08NB1;
        ParamByName('N09NB1').AsInteger := N09NB1;
        ParamByName('N10NB1').AsInteger := N10NB1;
        ParamByName('N11NB1').AsInteger := N11NB1;
        ParamByName('N12NB1').AsInteger := N12NB1;
        ParamByName('PR1NB1').AsString := PR1NB1;
        ParamByName('PR2NB1').AsString := PR2NB1;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StNb1Del(I_YARNB1: integer; I_CMPNB1: String ;I_BRNNB1:STRING;I_DCDNB1:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STCT_NB1_DEL (' +
          ':I_YARNB1,:I_CMPNB1,:I_BRNNB1,:I_DCDNB1)';

        ParamByName('I_YARNB1').AsInteger := I_YARNB1;
        ParamByName('I_CMPNB1').AsString := I_CMPNB1;
        ParamByName('I_BRNNB1').AsString := I_BRNNB1;
        ParamByName('I_DCDNB1').AsString := I_DCDNB1;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;




function TDSHISSetup.StVm1InsUpd(stsvm1,  vnovm1, tnmvm1,enmvm1, cpsvm1, vtpvm1, accvm1, otpvm1, viavm1, psnvm1, taxvm1, ttxvm1, tpivm1:string;
  vpcvm1:double;
  popvm1, papvm1, dopvm1,memvm1,md :string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_VM1_INS_UPD (' +
          ':stsvm1, :vnovm1,:tnmvm1,:enmvm1,:cpsvm1,:vtpvm1,:accvm1,' +
          ':otpvm1,:viavm1,:psnvm1,:taxvm1,:ttxvm1,:tpivm1,:vpcvm1, ' +
          ':popvm1,:papvm1,:dopvm1,:memvm1,:md)';

        ParamByName('stsvm1').AsString := stsvm1;
        ParamByName('vnovm1').AsString := vnovm1;
        ParamByName('tnmvm1').AsString := tnmvm1;
        ParamByName('enmvm1').AsString := enmvm1;
        ParamByName('cpsvm1').AsString := cpsvm1;
        ParamByName('vtpvm1').AsString := vtpvm1;
        ParamByName('accvm1').AsString := accvm1;
        ParamByName('otpvm1').AsString := otpvm1;
        ParamByName('viavm1').AsString := viavm1;
        ParamByName('psnvm1').AsString := psnvm1;
        ParamByName('taxvm1').AsString := taxvm1;
        ParamByName('ttxvm1').AsString := ttxvm1;
        ParamByName('tpivm1').AsString := tpivm1;
        ParamByName('vpcvm1').AsFloat := vpcvm1;
//        ParamByName('crtvm1').AsInteger := crtvm1;
//        ParamByName('crlvm1').AsFloat := crlvm1;
//        ParamByName('dsdvm1').AsInteger := dsdvm1;
//        ParamByName('dsavm1').AsFloat := dsavm1;
        ParamByName('popvm1').AsString := popvm1;
        ParamByName('papvm1').AsString := papvm1;
        ParamByName('dopvm1').AsString := dopvm1;
        ParamByName('memvm1').AsString := memvm1;
        ParamByName('md').AsString := md;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

Function TDSHISSetup.StVmaInsUpd(vnovma : string; lnkvma : string;
  ta1vma ,ta2vma,chgvma,ctyvma,zipvma,telvma,mobvma,faxvma,emavma,webvma : string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_VMA_INS_UPD (' +
          ':vnovma,:lnkvma,:ta1vma,:ta2vma,:chgvma,:ctyvma,' +
          ':zipvma,:telvma,:mobvma,:faxvma,:emavma,:webvma)';

        ParamByName('vnovma').AsString := vnovma;
        ParamByName('lnkvma').AsString := lnkvma;
        ParamByName('ta1vma').AsString := ta1vma;
        ParamByName('ta2vma').AsString := ta2vma;
        ParamByName('chgvma').AsString := chgvma;
        ParamByName('ctyvma').AsString := ctyvma;
        ParamByName('zipvma').AsString := zipvma;
        ParamByName('telvma').AsString := telvma;
        ParamByName('mobvma').AsString := mobvma;
        ParamByName('faxvma').AsString := faxvma;
        ParamByName('emavma').AsString := emavma;
        ParamByName('webvma').AsString := webvma;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StVm1Del(VNOVM1:STRING):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_VM1_DEL (' +
          ':VNOVM1)';

        ParamByName('VNOVM1').AsString := VNOVM1;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;






function TDSHISSetup.ttYm3Del(ICMPYM3 : string;IBRNYM3 : String;IVNOYM3:String): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STTT_YM3_DEL (:ICMPYM3,:IBRNYM3,:IVNOYM3)';

        ParamByName('ICMPYM3').AsString := ICMPYM3;
        ParamByName('IBRNYM3').AsString := IBRNYM3;
        ParamByName('IVNOYM3').AsString := IVNOYM3;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

 function TDSHISSetup.ttYm3InsUpd(stsYm3,cmpYm3,brnYm3,VnoYm3:String;
      crtYm3: integer; crlYm3:double; dsdym3: integer;dsaym3:double;
      bfiYm3,minYm3,mpyYm3,mcmYm3,mdnYm3,mcnYm3,majYm3,mdsYm3,
      mitYm3,pdcYm3,uncYm3,cqrYm3,adnYm3,acnYm3,apyYm3,ypyYm3,ypcYm3 : Double): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STTT_YM3_INS_UPD ('+
          ':stsym3,:cmpym3,:brnym3,:vnoym3,' +
          ':crtym3,:crlym3, :dsdym3,:dsaym3,' +
          ':bfiym3,:minym3,:mpyym3,:mcmym3,:mdnym3,:mcnym3,:majym3,:mdsym3,' +
          ':mitym3,:pdcym3,:uncym3,:cqrym3,:adnym3,:acnym3,:apyym3,:ypyym3,:ypcym3)';

        ParamByName('stsym3').AsString := stsym3;
        ParamByName('cmpym3').AsString := cmpym3;
        ParamByName('brnym3').AsString := brnym3;
        ParamByName('vnoym3').AsString := vnoym3;

        ParamByName('crtym3').AsInteger := crtym3;
        ParamByName('crlym3').AsFloat := crlym3;
        ParamByName('dsdym3').AsInteger := dsdym3;
        ParamByName('dsaym3').AsFloat := dsaym3;

        ParamByName('bfiym3').AsFloat := bfiym3;
        ParamByName('minym3').AsFloat := minym3;
        ParamByName('mpyym3').AsFloat := mpyym3;
        ParamByName('mcmym3').AsFloat := mcmym3;
        ParamByName('mdnym3').AsFloat := mdnym3;
        ParamByName('mcnym3').AsFloat := mcnym3;
        ParamByName('majym3').AsFloat := majym3;
        ParamByName('mdsym3').AsFloat := mdsym3;

        ParamByName('mitym3').AsFloat := mitym3;
        ParamByName('pdcym3').AsFloat := pdcym3;
        ParamByName('uncym3').AsFloat := uncym3;
        ParamByName('cqrym3').AsFloat := cqrym3;
        ParamByName('adnym3').AsFloat := adnym3;
        ParamByName('acnym3').AsFloat := acnym3;
        ParamByName('apyym3').AsFloat := apyym3;
        ParamByName('ypyym3').AsFloat := ypyym3;
        ParamByName('ypcym3').AsFloat := ypcym3;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;




Function TDSHISSetup.StCm1InsUpd(ICMPAM3 : string;IBRNAM3 : String;stscm1, typcm1, ctpcm1, cnocm1, tnmcm1, enmcm1:    string;
      acccm1, taxcm1, cpscm1, ccmcm1, poscm1, ctlcm1,
      cmbcm1, cfacm1, cemcm1, viacm1, smncm1, pdpcm1, dopcm1, memcm1,md:    string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_CM1_INS_UPD (' +
          ':ICMPAM3,:IBRNAM3,' +
          ':stscm1, :typcm1, :ctpcm1, :cnocm1, :tnmcm1, :enmcm1,' +
          ':acccm1, :taxcm1, :cpscm1, :ccmcm1, :poscm1, :ctlcm1,' +
          ':cmbcm1, :cfacm1, :cemcm1, :viacm1, :smncm1, :pdpcm1, :dopcm1, :memcm1,:md)';

          ParamByName('ICMPAM3').AsString :=ICMPAM3;
          ParamByName('IBRNAM3').AsString :=IBRNAM3;

          ParamByName('STSCM1').AsString :=STSCM1;
          ParamByName('TYPCM1').AsString :=TYPCM1;
          ParamByName('CTPCM1').AsString :=CTPCM1;
          ParamByName('CNOCM1').AsString :=CNOCM1;
          ParamByName('TNMCM1').AsString :=TNMCM1;
          ParamByName('ENMCM1').AsString :=ENMCM1;
          ParamByName('ACCCM1').AsString :=ACCCM1;
          ParamByName('TAXCM1').AsString :=TAXCM1;
          ParamByName('CPSCM1').AsString :=CPSCM1;
          ParamByName('CCMCM1').AsString :=CCMCM1;
          ParamByName('POSCM1').AsString :=POSCM1;
          ParamByName('CTLCM1').AsString :=CTLCM1;
          ParamByName('CMBCM1').AsString :=CMBCM1;
          ParamByName('CFACM1').AsString :=CFACM1;
          ParamByName('CEMCM1').AsString :=CEMCM1;
          ParamByName('VIACM1').AsString :=VIACM1;
          ParamByName('SMNCM1').AsString :=SMNCM1;
          ParamByName('PDPCM1').AsString :=PDPCM1;
          ParamByName('DOPCM1').AsString :=DOPCM1;
          ParamByName('MEMCM1').AsString :=MEMCM1;

          ParamByName('md').AsString := md;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

Function TDSHISSetup.StCmaInsUpd(cnocma : string; lnkcma : string;
      ta1cma ,ta2cma,chgcma,ctycma,zipcma,telcma,mobcma,faxcma,emacma,webcma : string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_cma_INS_UPD (' +
          ':cnocma,:lnkcma,:ta1cma,:ta2cma,:chgcma,:ctycma,' +
          ':zipcma,:telcma,:mobcma,:faxcma,:emacma,:webcma)';

        ParamByName('cnocma').AsString := cnocma;
        ParamByName('lnkcma').AsString := lnkcma;
        ParamByName('ta1cma').AsString := ta1cma;
        ParamByName('ta2cma').AsString := ta2cma;
        ParamByName('chgcma').AsString := chgcma;
        ParamByName('ctycma').AsString := ctycma;
        ParamByName('zipcma').AsString := zipcma;
        ParamByName('telcma').AsString := telcma;
        ParamByName('mobcma').AsString := mobcma;
        ParamByName('faxcma').AsString := faxcma;
        ParamByName('emacma').AsString := emacma;
        ParamByName('webcma').AsString := webcma;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StCm1Del(CNOCM1:STRING):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_CM1_DEL (:CNOCM1)';

        ParamByName('CNOCM1').AsString := CNOCM1;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;




function TDSHISSetup.ttAm3InsUpd(stsam3,cmpam3,brnam3,cnoam3:String;
  crtam3: integer;
  crlam3,bfiam3,minam3,mpyam3,mcmam3,mdnam3,mcnam3,majam3,mdsam3,
  mitam3,pdcam3,uncam3,cqram3,adnam3,acnam3,apyam3,ypyam3,ypcam3 : Double): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STTT_AM3_INS_UPD ('+
          ':stsam3,:cmpam3,:brnam3,:cnoam3,' +
          ':crtam3,' +
          ':crlam3,:bfiam3,:minam3,:mpyam3,:mcmam3,:mdnam3,:mcnam3,:majam3,:mdsam3,' +
          ':mitam3,:pdcam3,:uncam3,:cqram3,:adnam3,:acnam3,:apyam3,:ypyam3,:ypcam3)';

        ParamByName('stsam3').AsString := stsam3;
        ParamByName('cmpam3').AsString := cmpam3;
        ParamByName('brnam3').AsString := brnam3;
        ParamByName('cnoam3').AsString := cnoam3;

        ParamByName('crtam3').AsInteger := crtam3;
        ParamByName('crlam3').AsFloat := crlam3;

        ParamByName('bfiam3').AsFloat := bfiam3;
        ParamByName('minam3').AsFloat := minam3;
        ParamByName('mpyam3').AsFloat := mpyam3;
        ParamByName('mcmam3').AsFloat := mcmam3;
        ParamByName('mdnam3').AsFloat := mdnam3;
        ParamByName('mcnam3').AsFloat := mcnam3;
        ParamByName('majam3').AsFloat := majam3;
        ParamByName('mdsam3').AsFloat := mdsam3;

        ParamByName('mitam3').AsFloat := mitam3;
        ParamByName('pdcam3').AsFloat := pdcam3;
        ParamByName('uncam3').AsFloat := uncam3;
        ParamByName('cqram3').AsFloat := cqram3;
        ParamByName('adnam3').AsFloat := adnam3;
        ParamByName('acnam3').AsFloat := acnam3;
        ParamByName('apyam3').AsFloat := apyam3;
        ParamByName('ypyam3').AsFloat := ypyam3;
        ParamByName('ypcam3').AsFloat := ypcam3;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.ttAm3Del(ICMPAM3 : string;IBRNAM3 : String;ICNOAM3:String): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STTT_AM3_DEL (:ICMPAM3,:IBRNAM3,:ICNOAM3)';

        ParamByName('ICMPAM3').AsString := ICMPAM3;
        ParamByName('IBRNAM3').AsString := IBRNAM3;
        ParamByName('ICNOAM3').AsString := ICNOAM3;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;



Function TDSHISSetup.StPm1InsUpd(stspm1,itcpm1,itnpm1,enmpm1,tnmpm1,mnmpm1,ut1pm1,ut2pm1,ue1pm1,ue2pm1:string;
            cvtpm1:double;whspm1:string;
            md:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_PM1_INS_UPD (' +
          ':stspm1,:itcpm1,:itnpm1,:enmpm1,:tnmpm1,:mnmpm1,:ut1pm1,:ut2pm1,:ue1pm1,' +
          ':ue2pm1,:cvtpm1,:whspm1,:md)';

          ParamByName('stspm1').AsString := stspm1;
          ParamByName('itcpm1').AsString := itcpm1;
          ParamByName('itnpm1').AsString := itnpm1;
          ParamByName('enmpm1').AsString := enmpm1;
          ParamByName('tnmpm1').AsString := tnmpm1;
          ParamByName('mnmpm1').AsString := mnmpm1;
          ParamByName('ut1pm1').AsString := ut1pm1;
          ParamByName('ut2pm1').AsString := ut2pm1;
          ParamByName('ue1pm1').AsString := ue1pm1;
          ParamByName('ue2pm1').AsString := ue2pm1;
          ParamByName('cvtpm1').AsFloat := cvtpm1;
          ParamByName('whspm1').AsString := whspm1;

          ParamByName('md').AsString := md;

        Open();
        Result := (FieldByName('result').AsInteger = 0);

       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

  Result := True; // (LastErrorCode = _NO_ERROR_);

end;

Function TDSHISSetup.StPm1InsUpd2(itnpm1:string;
            uc1pm1,uc2pm1,up1pm1,up2pm1,uf1pm1,uf2pm1,fampm1,ct1pm1,ct2pm1: double;
            itspm1,brdpm1,srspm1,geapm1:string;caspm1,pwrpm1:integer;stkpm1:string;dpcpm1:integer;accpm1: string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_PM1_INS_UPD2 (' +
          ':itnpm1,:uc1pm1,:uc2pm1,:up1pm1,:up2pm1,:uf1pm1,:uf2pm1,' +
          ':fampm1,:ct1pm1,:ct2pm1,:itspm1,:brdpm1,:srspm1,:geapm1,:caspm1,:pwrpm1,' +
          ':stkpm1,:dpcpm1,:accpm1)';


          ParamByName('itnpm1').AsString := itnpm1;
          ParamByName('uc1pm1').AsFloat := uc1pm1;
          ParamByName('uc2pm1').AsFloat := uc2pm1;
          ParamByName('up1pm1').AsFloat := up1pm1;
          ParamByName('up2pm1').AsFloat := up2pm1;
          ParamByName('uf1pm1').AsFloat := uf1pm1;
          ParamByName('uf2pm1').AsFloat := uf2pm1;
          ParamByName('fampm1').AsFloat := fampm1;
          ParamByName('ct1pm1').AsFloat := ct1pm1;
          ParamByName('ct2pm1').AsFloat := ct2pm1;
          ParamByName('itspm1').AsString := itspm1;
          ParamByName('brdpm1').AsString := brdpm1;
          ParamByName('srspm1').AsString := srspm1;
          ParamByName('geapm1').AsString := geapm1;
          ParamByName('caspm1').AsInteger := caspm1;
          ParamByName('pwrpm1').AsInteger := pwrpm1;
          ParamByName('stkpm1').AsString := stkpm1;
          ParamByName('dpcpm1').AsInteger := dpcpm1;
          ParamByName('accpm1').AsString := accpm1;

       Open();
        Result := (FieldByName('result').AsInteger = 0);

       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

  Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StPm1Del(ITNPM1:STRING):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_PM1_DEL (:ITNPM1)';

        ParamByName('ITNPM1').AsString := ITNPM1;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;



Function TDSHISSetup.StBgInsUpd(flgbg,stsbg2,yarbg2,cmpbg2,brnbg2,itnbg2,smnbg2: String;
          q01bg2,q02bg2,q03bg2,q04bg2,q05bg2,q06bg2,q07bg2,q08bg2,q09bg2,q10bg2,q11bg2,q12bg2:Double;
          md:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_BG_INS_UPD (' +
          ':flgbg,:stsbg2,:yarbg2,:cmpbg2,:brnbg2,:itnbg2,:smnbg2,' +
          ':q01bg2,:q02bg2,:q03bg2,:q04bg2,:q05bg2,:q06bg2,:q07bg2,:q08bg2,:q09bg2,:q10bg2,:q11bg2,:q12bg2,:md)';

        ParamByName('flgbg').AsString := flgbg;
        ParamByName('stsbg2').AsString := stsbg2;
        ParamByName('yarbg2').AsString := yarbg2;
        ParamByName('cmpbg2').AsString := cmpbg2;
        ParamByName('brnbg2').AsString := brnbg2;
        ParamByName('itnbg2').AsString := itnbg2;
        ParamByName('smnbg2').AsString := smnbg2;
        ParamByName('q01bg2').AsFloat := q01bg2;
        ParamByName('q02bg2').AsFloat := q02bg2;
        ParamByName('q03bg2').AsFloat := q03bg2;
        ParamByName('q04bg2').AsFloat := q04bg2;
        ParamByName('q05bg2').AsFloat := q05bg2;
        ParamByName('q06bg2').AsFloat := q06bg2;
        ParamByName('q07bg2').AsFloat := q07bg2;
        ParamByName('q08bg2').AsFloat := q08bg2;
        ParamByName('q09bg2').AsFloat := q09bg2;
        ParamByName('q10bg2').AsFloat := q10bg2;
        ParamByName('q11bg2').AsFloat := q11bg2;
        ParamByName('q12bg2').AsFloat := q12bg2;

        ParamByName('md').AsString := md;

        Open();
        Result := (FieldByName('result').AsInteger = 0);

       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 //esult := True; // (LastErrorCode = _NO_ERROR_);

end;

Function TDSHISSetup.StBgInsUpd2(flgbg,stsbg2,yarbg2,cmpbg2,brnbg2,itnbg2,smnbg2: String;
             a01bg2,a02bg2,a03bg2,a04bg2,a05bg2,a06bg2,a07bg2,a08bg2,a09bg2,a10bg2,a11bg2,a12bg2: Double): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_BG_INS_UPD2 (' +
          ':flgbg,:stsbg2,:yarbg2,:cmpbg2,:brnbg2,:itnbg2,:smnbg2,' +
          ':a01bg2,:a02bg2,:a03bg2,:a04bg2,:a05bg2,:a06bg2,' +
          ':a07bg2,:a08bg2,:a09bg2,:a10bg2,:a11bg2,:a12bg2)';

          ParamByName('flgbg').AsString := flgbg;
          ParamByName('stsbg2').AsString := stsbg2;
          ParamByName('yarbg2').AsString := yarbg2;
          ParamByName('cmpbg2').AsString := cmpbg2;
          ParamByName('brnbg2').AsString := brnbg2;
          ParamByName('itnbg2').AsString := itnbg2;
          ParamByName('smnbg2').AsString := smnbg2;

          ParamByName('a01bg2').AsFloat := a01bg2;
          ParamByName('a02bg2').AsFloat := a02bg2;
          ParamByName('a03bg2').AsFloat := a03bg2;
          ParamByName('a04bg2').AsFloat := a04bg2;
          ParamByName('a05bg2').AsFloat := a05bg2;
          ParamByName('a06bg2').AsFloat := a06bg2;
          ParamByName('a07bg2').AsFloat := a07bg2;
          ParamByName('a08bg2').AsFloat := a08bg2;
          ParamByName('a09bg2').AsFloat := a09bg2;
          ParamByName('a10bg2').AsFloat := a10bg2;
          ParamByName('a11bg2').AsFloat := a11bg2;
          ParamByName('a12bg2').AsFloat := a12bg2;

        Open();
        Result := (FieldByName('result').AsInteger = 0);

       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

  //sult := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StBgDel(FLGBG,YARBG2,CMPBG2,BRNBG2, ITNBG2,SMNBG2:STRING):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_BG_DEL (:FLGBG,:YARBG2,:CMPBG2,:BRNBG2,:ITNBG2,:SMNBG2)';

        ParamByName('FLGBG').AsString := FLGBG;
        ParamByName('YARBG2').AsString := YARBG2;
        ParamByName('CMPBG2').AsString := CMPBG2;
        ParamByName('BRNBG2').AsString := BRNBG2;
        ParamByName('ITNBG2').AsString := ITNBG2;
        ParamByName('SMNBG2').AsString := SMNBG2;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;




Function TDSHISSetup.StStyInsUpd(STSSTY, SERSTY ,CNOSTY ,ENGSTY ,ITNSTY ,SRSSTY,COLSTY ,MD : string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STMT_STY_INS_UPD (' +
          ':STSSTY, :SERSTY ,:CNOSTY ,:ENGSTY ,:ITNSTY ,:SRSSTY,:COLSTY ,:MD )';

          ParamByName('STSSTY').AsString := STSSTY;
          ParamByName('SERSTY').AsString := SERSTY;
          ParamByName('CNOSTY').AsString := CNOSTY;
          ParamByName('ENGSTY').AsString := ENGSTY;
          ParamByName('ITNSTY').AsString := ITNSTY;
          ParamByName('SRSSTY').AsString := SRSSTY;
          ParamByName('COLSTY').AsString := COLSTY;
          ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);

       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

  Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StStyDel(SERSTY:STRING):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_STY_DEL (:SERSTY)';

        ParamByName('SERSTY').AsString := SERSTY;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;



Function TDSHISSetup.StShpInsUpd(STSSHP,CNOSHP:string;SEQSHP:integer;FBNSHP,TBNSHP:string;AMTSHP:double;MD:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_STCT_SHP_INS_UPD (' +
          ':STSSHP, :CNOSHP ,:SEQSHP ,:FBNSHP ,:TBNSHP ,:AMTSHP,:MD )';

          ParamByName('STSSHP').AsString := STSSHP;
          ParamByName('CNOSHP').AsString := CNOSHP;
          ParamByName('SEQSHP').AsInteger := SEQSHP;
          ParamByName('FBNSHP').AsString := FBNSHP;
          ParamByName('TBNSHP').AsString := TBNSHP;
          ParamByName('AMTSHP').AsFloat := AMTSHP;
          ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);

       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

  Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StShpDel(CNOSHP:STRING;SEQSHP :integer):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STCT_SHP_DEL (:CNOSHP,:SEQSHP)';

        ParamByName('CNOSHP').AsString := CNOSHP;
        ParamByName('SEQSHP').AsInteger := SEQSHP;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;



Function TDSHISSetup.StCm3InsUpd(stscm3,cmpcm3,brncm3,enmcm3,tnmcm3,ta1cm3,ta2cm3,tidcm3,MD:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_CM3_INS_UPD (' +
        ':stscm3,:cmpcm3,:brncm3,:enmcm3,:tnmcm3,:ta1cm3,:ta2cm3,:tidcm3,:MD)';

        ParamByName('stscm3').AsString := stscm3;
        ParamByName('cmpcm3').AsString := cmpcm3;
        ParamByName('brncm3').AsString := brncm3;
        ParamByName('enmcm3').AsString := enmcm3;
        ParamByName('tnmcm3').AsString := tnmcm3;
        ParamByName('ta1cm3').AsString := ta1cm3;
        ParamByName('ta2cm3').AsString := ta2cm3;
        ParamByName('tidcm3').AsString := tidcm3;
        ParamByName('MD').AsString := MD;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StCm3Del(CMPCM3,BRNCM3 :STRING):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_CM3_DEL (:CMPCM3,:BRNCM3)';

        ParamByName('CMPCM3').AsString := CMPCM3;
        ParamByName('BRNCM3').AsString := BRNCM3;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;




Function TDSHISSetup.StRm1InsUpd(stsrm1,cmprm1,brnrm1,regrm1:String;rgnrm1:integer;prvrm1:string;pdtrm1,patrm1,oatrm1:double;avlrm1,narrm1,md:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_RM1_INS_UPD (' +
        ':stsrm1,:cmprm1,:brnrm1,:regrm1,:rgnrm1,:prvrm1,:pdtrm1,:patrm1,:oatrm1,:avlrm1,:narrm1,:MD)';

        ParamByName('stsrm1').AsString := stsrm1;
        ParamByName('cmprm1').AsString := cmprm1;
        ParamByName('brnrm1').AsString := brnrm1;
        ParamByName('regrm1').AsString := regrm1;
        ParamByName('rgnrm1').AsInteger := rgnrm1;
        ParamByName('prvrm1').AsString := prvrm1;

        SetDateParamValue(ParamByName('pdtrm1'), pdtrm1);
        ParamByName('patrm1').AsFloat := patrm1;
        ParamByName('oatrm1').AsFloat := oatrm1;

        ParamByName('avlrm1').AsString := avlrm1;
         ParamByName('narrm1').AsString := narrm1;
        ParamByName('MD').AsString := MD;


        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StRm1Del(cmprm1,brnrm1,regrm1,rgnrm1,prvrm1 :STRING):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_RM1_DEL (' +
                    ':cmprm1,:brnrm1,:regrm1,:rgnrm1,:prvrm1)';

        ParamByName('cmprm1').AsString := cmprm1;
        ParamByName('brnrm1').AsString := brnrm1;
        ParamByName('regrm1').AsString := regrm1;
        ParamByName('rgnrm1').AsString := rgnrm1;
        ParamByName('prvrm1').AsString := prvrm1;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;





Function TDSHISSetup.StRegInsUpd(stsreg,cmpreg,brnreg,cnoreg:String;SeqREG:integer;itnreg:String;amtreg,othreg:Double;narreg,md:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_REG_INS_UPD (' +
        ':stsreg,:cmpreg,:brnreg,:cnoreg,:SEqREG,:itnreg,:amtreg,:othreg,:narreg,:MD)';

        ParamByName('stsreg').AsString := stsreg;
        ParamByName('cmpreg').AsString := cmpreg;
        ParamByName('brnreg').AsString := brnreg;
        ParamByName('cnoreg').AsString := cnoreg;
        ParamByName('SEqREG').AsInteger := SEqREG;
        ParamByName('itnreg').AsString := itnreg;

        ParamByName('amtreg').AsFloat := amtreg;
        ParamByName('othreg').AsFloat := othreg;

        ParamByName('narreg').AsString := narreg;
        ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StRegDel(CMPREG,BRNREG,CNOREG:STRING;SEQREG :integer ):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_REG_DEL (' +
                    ':CMPREG,:BRNREG,:CNOREG,:SEQREG)';

        ParamByName('CMPREG').AsString := CMPREG;
        ParamByName('BRNREG').AsString := BRNREG;
        ParamByName('CNOREG').AsString := CNOREG;
        ParamByName('SEQREG').AsInteger := SEQREG;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;



Function TDSHISSetup.StAm1InsUpd(stsam1:String;
              cmpam1,brnam1,cnoam1:string;
              idtam1:double;
              dnoam1:string;
              depam1:string;
              SERAM1:string;
              DDTAM1,amtam1,balam1:double;MD:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_AM1_INS_UPD (' +
        ':stsam1,:cmpam1,:brnam1,:cnoam1,:idtam1,:dnoam1,' +
        ':depam1,:SERAM1,:DDTAM1,:AMTAM1,:BALAM1,:MD)';

        ParamByName('stsam1').AsString := stsam1;
        ParamByName('cmpam1').AsString := cmpam1;
        ParamByName('brnam1').AsString := brnam1;
        ParamByName('cnoam1').AsString := cnoam1;
        SetDateParamValue(ParamByName('idtam1'), idtam1);
        ParamByName('dnoam1').AsString := dnoam1;
        ParamByName('depam1').AsString := depam1;

        ParamByName('SERAM1').AsString := SERAM1;
        SetDateParamValue(ParamByName('DDTAM1'), DDTAM1);
        ParamByName('amtam1').AsFloat:= amtam1;
        ParamByName('balam1').AsFloat:= balam1;

        ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StAm1Del(yaram1:integer;cmpam1,brnam1,cnoam1,dnoam1:string):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_AM1_DEL (' +
                    ':yaram1,:cmpam1,:brnam1,:cnoam1,:dnoam1)';

        ParamByName('yaram1').AsInteger := yaram1;
        ParamByName('cmpam1').AsString := cmpam1;
        ParamByName('brnam1').AsString := brnam1;
        ParamByName('cnoam1').AsString := cnoam1;
        ParamByName('dnoam1').AsString := dnoam1;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;




Function TDSHISSetup.StYm1InsUpd(stsYM1,DCDYM1:String;
          cmpYM1,brnYM1,VnoYM1:string;
          idtYM1:double;
          dnoYM1:string;
          depYM1:string;
          ABTYM1:DOUBLE;VATYM1:STRING ;AVTYM1:DOUBLE;POYM1:INTEGER;
          SERYM1:string;
          DDTYM1,amtYM1,balYM1:double;MD:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_YM1_INS_UPD (' +
        ':stsym1,:DCDYM1,:cmpym1,:brnym1,:vnoym1,:idtym1,:dnoym1,' +
        ':depym1,:ABTYM1,:VATYM1,:AVTYM1,:POYM1,' +
        ':SERym1,:DDTym1,:AMTym1,:BALym1,:MD)';

        ParamByName('stsym1').AsString := stsym1;
        ParamByName('DCDYM1').AsString := DCDYM1;
        ParamByName('cmpym1').AsString := cmpym1;
        ParamByName('brnym1').AsString := brnym1;
        ParamByName('vnoym1').AsString := vnoym1;
        SetDateParamValue(ParamByName('idtym1'), idtym1);
        ParamByName('dnoym1').AsString := dnoym1;
        ParamByName('depym1').AsString := depym1;

        ParamByName('ABTYM1').AsFloat:= ABTYM1;
        ParamByName('VATYM1').AsString:= VATYM1;
        ParamByName('AVTYM1').AsFloat:= AVTYM1;
        ParamByName('POYM1').AsInteger:= POYM1;

        ParamByName('SERym1').AsString := SERym1;
        SetDateParamValue(ParamByName('DDTym1'), DDTym1);
        ParamByName('amtym1').AsFloat:= amtym1;
        ParamByName('balym1').AsFloat:= balym1;

        ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StYm1Del(yarYM1:integer;cmpYM1,brnYM1,VnoYM1,dnoYM1:string):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_YM1_DEL (' +
                    ':yarym1,:cmpym1,:brnym1,:vnoym1,:dnoym1)';

        ParamByName('yarym1').AsInteger := yarym1;
        ParamByName('cmpym1').AsString := cmpym1;
        ParamByName('brnym1').AsString := brnym1;
        ParamByName('vnoym1').AsString := vnoym1;
        ParamByName('dnoym1').AsString := dnoym1;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;




function TDSHISSetup.StPm1DelImage(ITNPM1: String): Boolean;
BEGIN
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'DELETE FROM MT_ERPPM1_IMAGE WHERE ITNPM1 = :ITNPM1';

        ParamByName('ITNPM1').AsString := ITNPM1;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

END;



Function TDSHISSetup.StIm2InsUpd(stsim2,cmpim2,brnim2,fwhim2,twhim2,itnim2,serim2,engim2,colim2:String;
          idtim2:double;
          movim2,dcdim2:String;
          dnoim2:int64;
          seqim2:integer;
          depim2,desim2:String;
          qt1im2,qt2im2:integer;
          ct1im2,ct2im2,at1im2,at2im2,uc1im2,uc2im2,up1im2,up2im2:double;
          md :String): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_IM2_INS_UPD (' +
        ':stsim2,:cmpim2,:brnim2,:fwhim2,:twhim2,:itnim2,:serim2,:engim2,:colim2,' +
        ':idtim2,:movim2,:dcdim2,:dnoim2,:seqim2,:depim2,:desim2,' +
        ':qt1im2,:qt2im2,:ct1im2,:ct2im2,:at1im2,:at2im2,:uc1im2,:uc2im2,:up1im2,:up2im2,:md)';

        ParamByName('stsim2').AsString := stsim2;
        ParamByName('cmpim2').AsString := cmpim2;
        ParamByName('brnim2').AsString := brnim2;
        ParamByName('fwhim2').AsString := fwhim2;
        ParamByName('twhim2').AsString := twhim2;
        ParamByName('itnim2').AsString := itnim2;
        ParamByName('serim2').AsString := serim2;
        ParamByName('engim2').AsString := engim2;
        ParamByName('colim2').AsString := colim2;
        SetDateParamValue(ParamByName('idtim2'), idtim2);
        ParamByName('movim2').AsString := movim2;
        ParamByName('dcdim2').AsString := dcdim2;
        ParamByName('dnoim2').AsLargeInt := dnoim2;
        ParamByName('seqim2').Asinteger := seqim2;
        ParamByName('depim2').AsString := depim2;
        ParamByName('desim2').AsString := desim2;
        ParamByName('qt1im2').Asinteger := qt1im2;
        ParamByName('qt2im2').Asinteger := qt2im2;
        ParamByName('ct1im2').AsFloat := ct1im2;
        ParamByName('ct2im2').AsFloat := ct2im2;
        ParamByName('at1im2').AsFloat := at1im2;
        ParamByName('at2im2').AsFloat := at2im2;
        ParamByName('uc1im2').AsFloat := uc1im2;
        ParamByName('uc2im2').AsFloat := uc2im2;
        ParamByName('up1im2').AsFloat := up1im2;
        ParamByName('up2im2').AsFloat := up2im2;

        ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
       LastErrorCode := _ERROR_UNDEFINED_;
       LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

function TDSHISSetup.StIm2Del(dnoim2: int64):Boolean;
BEGIN
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_STMT_IM2_DEL (:dnoim2)';

        ParamByName('dnoim2').AsLargeInt := dnoim2;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

END;







end.
