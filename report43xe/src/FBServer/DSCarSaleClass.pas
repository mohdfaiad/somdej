unit DSCarSaleClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DSMainClass, Data.FMTBcd,
  Data.SqlExpr, Datasnap.Provider,DSServerConstant, DSSetupClass, Data.DB;

type
  TDSCarSale = class(TDSMain)
    dsMtCsmGet: TSQLQuery;
    dspMtCsmGet: TDataSetProvider;
    dsMtCsmGetAddr: TSQLQuery;
    dspMtCsmGetAddr: TDataSetProvider;
    dsMtCsmGetCard: TSQLQuery;
    dspMtCsmGetCard: TDataSetProvider;
    dsMtCsmInsUpd: TSQLQuery;
    dsMtAppGetList: TSQLQuery;
    dspMtAppGetList: TDataSetProvider;
    dsMtAppGet: TSQLQuery;
    dspMtAppGet: TDataSetProvider;
    dsMtAppGetCard: TSQLQuery;
    dspMtAppGetCard: TDataSetProvider;
    dsMtAppGetAccessory: TSQLQuery;
    dspMtAppGetAccessory: TDataSetProvider;
    dsMtAppGetExp: TSQLQuery;
    dspMtAppGetExp: TDataSetProvider;
    dsMtAppInsUpd: TSQLQuery;
    dsMtAppGetDown: TSQLQuery;
    dspMtAppGetDown: TDataSetProvider;
    dsMtAppGetFollowup: TSQLQuery;
    dspMtAppGetFollowup: TDataSetProvider;
    dsMtSetupAccessoryGetList: TSQLQuery;
    pdsMtSetupAccessoryGetList: TDataSetProvider;
    dsSetupAccessoryGet: TSQLQuery;
    pdsSetupAccessoryGet: TDataSetProvider;
    dsMtApprGetList: TSQLQuery;
    dspMtApprGetList: TDataSetProvider;
  private
    { Private declarations }
  public

    function MtCsmGet(CRITERIA,ORDERFIELD:String;ICMPCSM,IBRNCSM ,ICFGCSM: String): Boolean;
    function MtCsmGetAddr(CCNCSM : INT64;LNKCSM : STRING): Boolean;
    function MtCsmGetCard(CCNCSM : INT64): Boolean;
    function MtCsmInsUpd(STSCSM,CMPCSM,BRNCSM,CTYCSM,CFGCSM:STRING;CCNCSM:LARGEINT;
       PRECSM,FNMCSM,LNMCSM,SEXCSM,SSMCSM:STRING;BDTCSM:DOUBLE;NTNCSM,NTVCSM,RELCSM,STACSM :STRING): Boolean;
    function MtCsmInsUpdFamilyAndWork(CPNCSM,CPSCSM  :String;
       CBNCSM  :Double;CPWCSM  :String;CINCSM  :Double;CCHCSM  :Integer;HTPCSM  :String;
       PBTCSM  ,PSTCSM ,BUSCSM  :String;SALCSM ,BONCSM ,OTHCSM  ,EXPCSM  :Double;
       PCMCSM  :String;HDTCSM  :Double;PDPCSM  ,DOPCSM ,MEMCSM,ENTUSR ,MD  :String): Boolean;
    function MtCsmInsUpdCommit(var OUT_CCNCSM : LargeInt): Boolean;
    function MtCsmInsUpdAddr(CCNCSM : INT64; lnkcsm : string;
              ta1csm ,ta2csm,chgcsm,ctycsm,zipcsm,telcsm,mobcsm,faxcsm,emacsm,webcsm ,ENTUSR: string): Boolean;
    function MtCsmInsUpdCard(CCNCSI : INT64; CDCCSI,CDNCSI:STRING;ISDCSI,EPDCSI:DOUBLE;ISWCSI,ENTUSR:STRING): Boolean;
    function MtCsmDel(CCNCSM : INT64):Boolean;

    function MtAppGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP:String;IFRM,ITO:DOUBLE;APPSTS : STRING): Boolean;
    function MtAppGet(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
    function MtAppGetAccessory(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
    function MtAppGetCard(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER;ICNO:INT64): Boolean;
    function MtAppGetExp(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
    function MtAppGetDown(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
    function MtAppGetFollowup(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;

    function MtAppInsUpd(STSOT5 : string;
      YAROT5 : integer;CMPOT5 : string;BRNOT5 : string;DCDOT5 : string;DNOOT5 : integer;SEQOT5 : integer;
      IDTOT5 : double;DEPOT5 : string;CNOOT5 : largeint;CTYOT5 : string;CRTOT5 : integer;SMNOT5 : string;
      PNOOT5 : string;RPDOT5 : double;RSNOT5 : string;RSDOT5 : double;PSTOT5 : string;BRKOT5 : string;
      GNOOT5 : largeint;EXDOT5 : double;TMDOT5 : string; PLCOT5 : string;EPDOT5 : double;
      EPTOT5 : string;EPSOT5 : string;MEMOT5 : string): Boolean;
    function MtAppInsUpdProduct(
      PRDOT5 : string;COLOT5 : string;SEROT5 : string;ENGOT5 : string;WHSOT5 : string;USEOT5 : string;
      BNOOT5 : string;KEYOT5 : string;QO1OT5 : integer;QO2OT5 : integer;PDCOT5 : double;PDAOT5 : double;
      UP1OT5 : double;UP2OT5 : double;NETOT5 : double;PPYOT5 : double;TAXOT5 : double;APCOT5 : double;AFEOT5 : double): Boolean;
    function MtAppInsUpdCondition(
      STPOT5 : string;FCDOT5 : string;DWTOT5 : double;NLEOT5 : integer;RATOT5 : double;
      PMMOT5 : double;CM1OT5 : double;CM2OT5 : double;DDTOT5 : double;ESDOT5 : integer): Boolean;
    function MtAppInsUpdInsurance(
      ICDOT5 : string;CN1OT5 : string;ITSOT5 : double;
      SDTOT5 : double;EDTOT5 : double;ISDOT5 : string;IVSOT5 : double;INTOT5 : double;
      BDTOT5 : double;FDTOT5 : double;RDTOT5 : double;INOOT5 : string;PSROT5 : string): Boolean;
    function MtAppInsUpd_Commit(ENTUSR:STRING;MD:STRING;var OUT_DNO:Integer): Boolean;
    function MtAppInsUpdAccessory(
      STSOT6 : string;YAROT6 : Integer;CMPOT6 : string;BRNOT6 : string;DCDOT6 : string;DNOOT6 : Integer;
      SEQOT6 : Integer;FGDOT6 : string;FRDOT6 : string;FSROT6 : string;FWHOT6 : string;FPDOT6 : string;
      FCLOT6 : string;FQ1OT6 : Integer;FQ2OT6 : Integer;TDSOT6 : string;FDSOT6 : double;FPAOT6 : double;
      FU1OT6 : double;FU2OT6 : double;PRTOT6 : string;ABBOT6 : string;ENTUSR : string): Boolean;
    function MtAppInsUpdCard(
      STSOMI : string;YAROMI : integer;CMPOMI : string;BRNOMI : string;DCDOMI : string;DNOOMI : integer;CNOOMI : LargeInt;
      CDCOMI : string;RDTOMI : double;RTMOMI : string;PSNOMI : string;FLGOMI : string;ENTUSR : string): Boolean;
    function MtAppInsUpdExp(
      STSEXP : string;YAREXP : integer;CMPEXP : string;BRNEXP : string;DCDEXP : string;DNOEXP : integer;SEQEXP : integer;
      CDCEXP : string;AMTEXP : double;TP1EXP : string;TP2EXP : string;DCREXP : string;ENTUSR : string): Boolean;
    function MtAppInsUpdDown(
      STSOM7 : string; YAROM7 : integer;CMPOM7 : string;BRNOM7 : string;DCDOM7 : string;
      DNOOM7 : integer; SEQOM7 : integer;  PPDOM7 : string;
      PTPOM7 :String; NOTOM7:string;PDTOM7 :double;PATOM7 :double; NAROM7 : string;
    //  PRTOM7 :string;RDTOM7:double;  RDCOM7: string;RDNOM7 : integer; RSQOM7: integer;ABBOM7,
      ENTUSR:string): Boolean;
    function MtAppInsUpdFollowup(
      STSOM8 : string;YAROM8 : integer;CMPOM8 : string;BRNOM8 : string;DCDOM8 : string;DNOOM8 : integer;SEQOM8 : integer;
      OCDOM8 : string; ODTOM8 :double; PSNOM8: double;ENTUSR :STRING): Boolean;


    function MtAppDel(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER):Boolean;

    ///========================  Setup Accessory  =====================
    function MtSetupAccessoryGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP:String;IFRM,ITO:DOUBLE;BRD : string): Boolean;
    function MtSetupAccessoryGet(yarom3:integer;cmpom3,brnom3,dcdom3:string;ordom3:integer): Boolean;
    function MtSetupAccessoryInsUpd(yarom3:integer;cmpom3,brnom3,dcdom3:string;ordom3:integer;
       seqom3:integer;fsrom3:string;idtom3:double;depom3,vnoom3,vtpom3,cpsom3:string;
       crtom3:integer;rdcom3:string;rdnom3:integer;
       rsqom3:integer;rdtom3:double;prdom3: String;
       qo1om3,qo2om3,qr1om3,qr2om3:integer;
       uc1om3,uc2om3:double;twhom3,nteom3,dseom3,serom3,engom3,entusr:string): Boolean;
    function MtSetupAccessoryDel(yarom3:integer;cmpom3,brnom3,dcdom3:string;ordom3:integer): Boolean;


   // =======================Approve application ====================

   function MtApprGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP:String;IFRM,ITO:DOUBLE): Boolean;
   function MtApprInsUpd(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER;IDTST3:DOUBLE;ENTUSR :STRING; VAR DNOST3 : INTEGER): Boolean;
   function MtApprDel(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER):Boolean;

   function MtApprGetCheck(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): String;

  end;

var
  DSCarSale: TDSCarSale;

implementation

{$R *.dfm}

function TDSCarSale.MtCsmGet(CRITERIA,ORDERFIELD:String;ICMPCSM,IBRNCSM ,ICFGCSM: String): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMTCsmGet do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMP').AsString := ICMPCSM;
    ParamByName('IBRN').AsString := IBRNCSM;
    ParamByName('ICFG').AsString := ICFGCSM;
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

function TDSCarSale.MtCsmGetAddr(CCNCSM : INT64;LNKCSM : STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMTCsmGetAddr do
   begin
    ParamByName('CCNCSM').AsLargeInt := CCNCSM;
    ParamByName('LNKCSM').AsString := LNKCSM;
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

function TDSCarSale.MtCsmGetCard(CCNCSM : INT64): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMTCsmGetCard do
   begin

    ParamByName('CCNCSM').AsLargeInt := CCNCSM;
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


function TDSCarSale.MtCsmInsUpd(STSCSM,CMPCSM,BRNCSM,CTYCSM,CFGCSM:STRING;CCNCSM:LARGEINT;
   PRECSM,FNMCSM,LNMCSM,SEXCSM,SSMCSM:STRING;BDTCSM:DOUBLE;NTNCSM,NTVCSM,RELCSM,STACSM :STRING): Boolean;
begin
  with dsMtCsmInsUpd do
  begin
    ParamByName('STSCSM').AsString := STSCSM;
    ParamByName('CMPCSM').AsString := CMPCSM;
    ParamByName('BRNCSM').AsString := BRNCSM;
    ParamByName('CTYCSM').AsString := CTYCSM;
    ParamByName('CFGCSM').AsString := CFGCSM;
    ParamByName('CCNCSM').AsLargeInt := CCNCSM;
    ParamByName('PRECSM').AsString := PRECSM;
    ParamByName('FNMCSM').AsString := FNMCSM;
    ParamByName('LNMCSM').AsString := LNMCSM;
    ParamByName('SEXCSM').AsString := SEXCSM;
    ParamByName('SSMCSM').AsString := SSMCSM;
    SetDateParamValue(ParamByName('BDTCSM'), BDTCSM);
    ParamByName('NTNCSM').AsString := NTNCSM;
    ParamByName('NTVCSM').AsString := NTVCSM;
    ParamByName('RELCSM').AsString := RELCSM;
    ParamByName('STACSM').AsString := STACSM;
  end;

  Result := True; // (LastErrorCode = _NO_ERROR_);
end;

function TDSCarSale.MtCsmInsUpdFamilyAndWork(CPNCSM,CPSCSM  :String;
  CBNCSM  :Double;CPWCSM  :String;CINCSM  :Double;CCHCSM  :Integer;HTPCSM  :String;
  PBTCSM  ,PSTCSM ,BUSCSM  :String;SALCSM ,BONCSM ,OTHCSM  ,EXPCSM  :Double;
  PCMCSM  :String;HDTCSM  :Double;PDPCSM  ,DOPCSM ,MEMCSM,ENTUSR ,MD  :String): Boolean;
begin
  with dsMtCsmInsUpd do
  begin
    ParamByName('CPNCSM').AsString := CPNCSM;
    ParamByName('CPSCSM').AsString := CPSCSM;
    ParamByName('CBNCSM').AsDate := CBNCSM;
    ParamByName('CPWCSM').AsString := CPWCSM;
    ParamByName('CINCSM').AsFloat := CINCSM;
    ParamByName('CCHCSM').AsInteger := CCHCSM;
    ParamByName('HTPCSM').AsString := HTPCSM;
    ParamByName('PBTCSM').AsString := PBTCSM;
    ParamByName('PSTCSM').AsString := PSTCSM;
    ParamByName('BUSCSM').AsString := BUSCSM;
    ParamByName('SALCSM').AsFloat := SALCSM;
    ParamByName('BONCSM').AsFloat := BONCSM;
    ParamByName('OTHCSM').AsFloat := OTHCSM;
    ParamByName('EXPCSM').AsFloat := EXPCSM;
    ParamByName('PCMCSM').AsString := PCMCSM;
    SetDateParamValue(ParamByName('HDTCSM'), HDTCSM);
    ParamByName('PDPCSM').AsString := PDPCSM;
    ParamByName('DOPCSM').AsString := DOPCSM;
    ParamByName('MEMCSM').AsString := MEMCSM;
    ParamByName('ENTUSR').AsString := ENTUSR;
    ParamByName('MD').AsString := MD;
  end;

  Result := True; // (LastErrorCode = _NO_ERROR_);
end;

function TDSCarSale.MtCsmInsUpdCommit(var OUT_CCNCSM : LargeInt): Boolean;
begin
  with dsMtCsmInsUpd do
  begin
    Open;
      OUT_CCNCSM := FieldByName('OUT_CCNCSM').AsLargeInt;
      Result := (FieldByName('result').AsInteger = 0);
    Close();
  end
end;

function TDSCarSale.MtCsmInsUpdAddr(CCNCSM : INT64; lnkcsm : string;
          ta1csm ,ta2csm,chgcsm,ctycsm,zipcsm,telcsm,mobcsm,faxcsm,emacsm,webcsm ,ENTUSR: string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_CSM_INS_UPD_ADDR (' +
          ':CCNCSM,:lnkcsm,:ta1csm,:ta2csm,:chgcsm,:ctycsm,' +
          ':zipcsm,:telcsm,:mobcsm,:faxcsm,:emacsm,:webcsm,:entusr)';

        ParamByName('CCNCSM').AsLargeInt := CCNCSM;
        ParamByName('lnkcsm').AsString := lnkcsm;
        ParamByName('ta1csm').AsString := ta1csm;
        ParamByName('ta2csm').AsString := ta2csm;
        ParamByName('chgcsm').AsString := chgcsm;
        ParamByName('ctycsm').AsString := ctycsm;
        ParamByName('zipcsm').AsString := zipcsm;
        ParamByName('telcsm').AsString := telcsm;
        ParamByName('mobcsm').AsString := mobcsm;
        ParamByName('faxcsm').AsString := faxcsm;
        ParamByName('emacsm').AsString := emacsm;
        ParamByName('webcsm').AsString := webcsm;
        ParamByName('entusr').AsString := entusr;

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

function TDSCarSale.MtCsmInsUpdCard(CCNCSI : INT64; CDCCSI,CDNCSI:STRING;ISDCSI,EPDCSI:DOUBLE;ISWCSI,ENTUSR:STRING): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_CSM_INS_UPD_CARD (' +
          ':CCNCSI,:CDCCSI,:CDNCSI,:ISDCSI,:EPDCSI,:ISWCSI,:ENTUSR)';

        ParamByName('CCNCSI').AsLargeInt := CCNCSI;
        ParamByName('CDCCSI').AsString := CDCCSI;
        ParamByName('CDNCSI').AsString := CDNCSI;
        SetDateParamValue(ParamByName('ISDCSI'), ISDCSI);
        SetDateParamValue(ParamByName('EPDCSI'), EPDCSI);
        ParamByName('ISWCSI').AsString := ISWCSI;
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

function TDSCarSale.MtCsmDel(CCNCSM : INT64):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_CSM_DEL (' +
          ':CCNCSM)';

        ParamByName('CCNCSM').AsLargeInt := CCNCSM;

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

function TDSCarSale.MtAppGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP:String;IFRM,ITO:DOUBLE;APPSTS : STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMTAppGetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDEP').AsString := IDEP;
    SetDateParamValue(ParamByName('IFRM'), IFRM);
    SetDateParamValue(ParamByName('ITO'), ITO);
    ParamByName('APPSTS').AsString := APPSTS;
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

function TDSCarSale.MtAppGet(IYAR:INTEGER;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMTAppGet do
   begin
    ParamByName('IYAR').AsInteger := IYAR;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDCD').AsString := IDCD;
    ParamByName('IDNO').AsInteger := IDNO;

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

function TDSCarSale.MtAppGetAccessory(IYAR:integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppGetAccessory do
   begin
    ParamByName('IYAR').AsInteger := IYAR;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDCD').AsString := IDCD;
    ParamByName('IDNO').AsInteger := IDNO;

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

function TDSCarSale.MtAppGetCard(IYAR:integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER;ICNO:INT64): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppGetCard do
   begin
    ParamByName('IYAR').AsInteger := IYAR;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDCD').AsString := IDCD;
    ParamByName('IDNO').AsInteger := IDNO;

    ParamByName('ICNO').AsLargeInt := ICNO;

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

function TDSCarSale.MtAppGetExp(IYAR:integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMTAppGetEXP do
   begin
    ParamByName('IYAR').AsInteger := IYAR;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDCD').AsString := IDCD;
    ParamByName('IDNO').AsInteger := IDNO;

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

function TDSCarSale.MtAppGetDown(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppGetDown do
   begin
    ParamByName('IYAR').AsInteger := IYAR;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDCD').AsString := IDCD;
    ParamByName('IDNO').AsInteger := IDNO;

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

function TDSCarSale.MtAppGetFollowup(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppGetFollowup do
   begin
    ParamByName('IYAR').AsInteger := IYAR;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDCD').AsString := IDCD;
    ParamByName('IDNO').AsInteger := IDNO;

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

function TDSCarSale.MtAppInsUpd(STSOT5 : string;
  YAROT5 : integer;CMPOT5 : string;BRNOT5 : string;DCDOT5 : string;DNOOT5 : integer;SEQOT5 : integer;
  IDTOT5 : double;DEPOT5 : string;CNOOT5 : largeint;CTYOT5 : string;CRTOT5 : integer;SMNOT5 : string;
  PNOOT5 : string;RPDOT5 : double;RSNOT5 : string;RSDOT5 : double;PSTOT5 : string;BRKOT5 : string;
  GNOOT5 : largeint;EXDOT5 : double;TMDOT5 : string; PLCOT5 : string;EPDOT5 : double;
  EPTOT5 : string;EPSOT5 : string;MEMOT5 : string): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppInsUpd do
   begin
      ParamByName('STSOT5').Asstring  := STSOT5;
      ParamByName('YAROT5').Asinteger  := YAROT5;
      ParamByName('CMPOT5').Asstring  := CMPOT5;
      ParamByName('BRNOT5').Asstring  := BRNOT5;
      ParamByName('DCDOT5').Asstring  := DCDOT5;
      ParamByName('DNOOT5').Asinteger  := DNOOT5;
      ParamByName('SEQOT5').Asinteger  := SEQOT5;
      SetDateParamValue(ParamByName('IDTOT5'), IDTOT5);
      ParamByName('DEPOT5').Asstring  := DEPOT5;
      ParamByName('CNOOT5').Aslargeint  := CNOOT5;
      ParamByName('CTYOT5').Asstring  := CTYOT5;
      ParamByName('CRTOT5').Asinteger  := CRTOT5;
      ParamByName('SMNOT5').Asstring  := SMNOT5;
      ParamByName('PNOOT5').Asstring  := PNOOT5;
      SetDateParamValue(ParamByName('RPDOT5'), RPDOT5);
      ParamByName('RSNOT5').Asstring  := RSNOT5;
      SetDateParamValue(ParamByName('RSDOT5'), RSDOT5);
      ParamByName('PSTOT5').Asstring  := PSTOT5;
      ParamByName('BRKOT5').Asstring  := BRKOT5;
      ParamByName('GNOOT5').Aslargeint  := GNOOT5;

      SetDateParamValue(ParamByName('EXDOT5'), EXDOT5);
      ParamByName('TMDOT5').Asstring  := TMDOT5;
      ParamByName('PLCOT5').Asstring  := PLCOT5;
      SetDateParamValue(ParamByName('EPDOT5'), EPDOT5);
      ParamByName('EPTOT5').Asstring  := EPTOT5;
      ParamByName('EPSOT5').Asstring  := EPSOT5;
      ParamByName('MEMOT5').Asstring  := MEMOT5;

   end;
  except
    on E: Exception do
    begin
      LastErrorCode := _ERROR_UNDEFINED_;
      LastErrorMsg := E.Message;
      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSCarSale.MtAppInsUpdProduct(
  PRDOT5 : string;COLOT5 : string;SEROT5 : string;ENGOT5 : string;WHSOT5 : string;USEOT5 : string;
  BNOOT5 : string;KEYOT5 : string;QO1OT5 : integer;QO2OT5 : integer;PDCOT5 : double;PDAOT5 : double;
  UP1OT5 : double;UP2OT5 : double;NETOT5 : double;PPYOT5 : double;TAXOT5 : double;APCOT5 : double;AFEOT5 : double): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppInsUpd do
   begin
      ParamByName('PRDOT5').AsString  := PRDOT5;
      ParamByName('COLOT5').AsString  := COLOT5;
      ParamByName('SEROT5').AsString  := SEROT5;
      ParamByName('ENGOT5').AsString  := ENGOT5;
      ParamByName('WHSOT5').AsString  := WHSOT5;
      ParamByName('USEOT5').AsString  := USEOT5;
      ParamByName('BNOOT5').AsString  := BNOOT5;
      ParamByName('KEYOT5').AsString  := KEYOT5;
      ParamByName('QO1OT5').AsInteger  := QO1OT5;
      ParamByName('QO2OT5').AsInteger  := QO2OT5;
      ParamByName('PDCOT5').AsFloat  := PDCOT5;
      ParamByName('PDAOT5').AsFloat  := PDAOT5;
      ParamByName('UP1OT5').AsFloat  := UP1OT5;
      ParamByName('UP2OT5').AsFloat  := UP2OT5;
      ParamByName('NETOT5').AsFloat  := NETOT5;
      ParamByName('PPYOT5').AsFloat  := PPYOT5;
      ParamByName('TAXOT5').AsFloat  := TAXOT5;
      ParamByName('APCOT5').AsFloat  := APCOT5;
      ParamByName('AFEOT5').AsFloat  := AFEOT5;

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

function TDSCarSale.MtAppInsUpdCondition(
  STPOT5 : string;FCDOT5 : string;DWTOT5 : double;NLEOT5 : integer;RATOT5 : double;
  PMMOT5 : double;CM1OT5 : double;CM2OT5 : double;DDTOT5 : double;ESDOT5 : integer): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppInsUpd do
   begin
      ParamByName('STPOT5').AsString  := STPOT5;
      ParamByName('FCDOT5').AsString  := FCDOT5;
      ParamByName('DWTOT5').AsFloat  := DWTOT5;
      ParamByName('NLEOT5').AsInteger  := NLEOT5;
      ParamByName('RATOT5').AsFloat  := RATOT5;
      ParamByName('PMMOT5').AsFloat  := PMMOT5;
      ParamByName('CM1OT5').AsFloat  := CM1OT5;
      ParamByName('CM2OT5').AsFloat  := CM2OT5;
      SetDateParamValue(ParamByName('DDTOT5'), DDTOT5);
      ParamByName('ESDOT5').AsInteger  := ESDOT5;


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

function TDSCarSale.MtAppInsUpdInsurance(
  ICDOT5 : string;CN1OT5 : string;ITSOT5 : double;
  SDTOT5 : double;EDTOT5 : double;ISDOT5 : string;IVSOT5 : double;INTOT5 : double;
  BDTOT5 : double;FDTOT5 : double;RDTOT5 : double;INOOT5 : string;PSROT5 : string): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppInsUpd do
   begin
    ParamByName('ICDOT5').AsString  := ICDOT5;
    ParamByName('CN1OT5').AsString  := CN1OT5;
    ParamByName('ITSOT5').AsFloat  := ITSOT5;
    SetDateParamValue(ParamByName('SDTOT5'), SDTOT5);
    SetDateParamValue(ParamByName('EDTOT5'), EDTOT5);
    ParamByName('ISDOT5').AsString  := ISDOT5;
    ParamByName('IVSOT5').AsFloat  := IVSOT5;
    ParamByName('INTOT5').AsFloat  := INTOT5;
    SetDateParamValue(ParamByName('BDTOT5'), BDTOT5);
    SetDateParamValue(ParamByName('FDTOT5'), FDTOT5);
    SetDateParamValue(ParamByName('RDTOT5'), RDTOT5);
    ParamByName('INOOT5').AsString  := INOOT5;
    ParamByName('PSROT5').AsString  := PSROT5;


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

function TDSCarSale.MtAppInsUpd_Commit(ENTUSR:STRING;MD:STRING;var OUT_DNO:Integer): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtAppInsUpd do
   begin
    ParamByName('ENTUSR').AsString  := ENTUSR;
    ParamByName('MD').AsString  := MD;

    WriteLog('BEFOR OUT_DNO=' + IntToStr(OUT_DNO));

    Open();
      OUT_DNO := FieldByName('OUT_DNO').AsInteger;
      Result := (FieldByName('result').AsInteger = 0);
    Close();

    WriteLog('AFTER OUT_DNO=' + IntToStr(OUT_DNO));

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
//      LastErrorMsg := E.Message;
      WriteLog(E.Message);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

function TDSCarSale.MtAppInsUpdAccessory(
  STSOT6 : string;YAROT6 : Integer;CMPOT6 : string;BRNOT6 : string;DCDOT6 : string;DNOOT6 : Integer;
  SEQOT6 : Integer;FGDOT6 : string;FRDOT6 : string;FSROT6 : string;FWHOT6 : string;FPDOT6 : string;
  FCLOT6 : string;FQ1OT6 : Integer;FQ2OT6 : Integer;TDSOT6 : string;FDSOT6 : double;FPAOT6 : double;
  FU1OT6 : double;FU2OT6 : double;PRTOT6 : string;ABBOT6 : string;ENTUSR : string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  WriteLog('MtAppInsUpdAccessory In...');
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APP_INS_UPD_ACCESSORY (' +
          ':STSOT6,:YAROT6,:CMPOT6,:BRNOT6,:DCDOT6,:DNOOT6,:SEQOT6,' +
          ':FGDOT6,:FRDOT6,:FSROT6,:FWHOT6,:FPDOT6,:FCLOT6,:FQ1OT6,:FQ2OT6,' +
          ':TDSOT6,:FDSOT6,:FPAOT6,:FU1OT6,:FU2OT6,:PRTOT6,:ABBOT6,:ENTUSR)';

          ParamByName('STSOT6').Asstring  := STSOT6;
          ParamByName('YAROT6').AsInteger  := YAROT6;
          ParamByName('CMPOT6').Asstring  := CMPOT6;
          ParamByName('BRNOT6').Asstring  := BRNOT6;
          ParamByName('DCDOT6').Asstring  := DCDOT6;
          ParamByName('DNOOT6').AsInteger  := DNOOT6;
          ParamByName('SEQOT6').AsInteger  := SEQOT6;
          ParamByName('FGDOT6').Asstring  := FGDOT6;
          ParamByName('FRDOT6').Asstring  := FRDOT6;
          ParamByName('FSROT6').Asstring  := FSROT6;
          ParamByName('FWHOT6').Asstring  := FWHOT6;
          ParamByName('FPDOT6').Asstring  := FPDOT6;
          ParamByName('FCLOT6').Asstring  := FCLOT6;
          ParamByName('FQ1OT6').AsInteger  := FQ1OT6;
          ParamByName('FQ2OT6').AsInteger  := FQ2OT6;
          ParamByName('TDSOT6').Asstring  := TDSOT6;
          ParamByName('FDSOT6').AsFloat  := FDSOT6;
          ParamByName('FPAOT6').AsFloat  := FPAOT6;
          ParamByName('FU1OT6').AsFloat  := FU1OT6;
          ParamByName('FU2OT6').AsFloat  := FU2OT6;
          ParamByName('PRTOT6').Asstring  := PRTOT6;
          ParamByName('ABBOT6').Asstring  := ABBOT6;
          ParamByName('ENTUSR').Asstring  := ENTUSR;

        Open();
        WriteLog('MtAppInsUpdAccessory After Open...');
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(E.Message);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);
end;

function TDSCarSale.MtAppInsUpdCard(
  STSOMI : string;YAROMI : integer;CMPOMI : string;BRNOMI : string;DCDOMI : string;DNOOMI : integer;CNOOMI : LargeInt;
  CDCOMI : string;RDTOMI : double;RTMOMI : string;PSNOMI : string;FLGOMI : string;ENTUSR : string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APP_INS_UPD_CARD (' +
          ':STSOMI,:YAROMI,:CMPOMI,:BRNOMI,:DCDOMI,:DNOOMI,:CNOOMI,:CDCOMI, '+
          ':RDTOMI,:RTMOMI,:PSNOMI,:FLGOMI,:ENTUSR)';

        ParamByName('STSOMI').Asstring  := STSOMI;
        ParamByName('YAROMI').Asinteger  := YAROMI;
        ParamByName('CMPOMI').Asstring  := CMPOMI;
        ParamByName('BRNOMI').Asstring  := BRNOMI;
        ParamByName('DCDOMI').Asstring  := DCDOMI;
        ParamByName('DNOOMI').Asinteger  := DNOOMI;
        ParamByName('CNOOMI').AsLargeInt  := CNOOMI;
        ParamByName('CDCOMI').Asstring  := CDCOMI;
        SetDateParamValue(ParamByName('RDTOMI'), RDTOMI);
        ParamByName('RTMOMI').Asstring  := RTMOMI;
        ParamByName('PSNOMI').Asstring  := PSNOMI;
        ParamByName('FLGOMI').Asstring  := FLGOMI;
        ParamByName('ENTUSR').Asstring  := ENTUSR;

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

function TDSCarSale.MtAppInsUpdExp(
  STSEXP : string;YAREXP : integer;CMPEXP : string;BRNEXP : string;DCDEXP : string;DNOEXP : integer;SEQEXP : integer;
  CDCEXP : string;AMTEXP : double;TP1EXP : string;TP2EXP : string;DCREXP : string;ENTUSR : string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
   WriteLog('MtAppInsUpdExp In...');
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APP_INS_UPD_EXP (' +
          ':STSEXP,:YAREXP,:CMPEXP,:BRNEXP,:DCDEXP,:DNOEXP,' +
          ':SEQEXP,:CDCEXP,:AMTEXP,:TP1EXP,:TP2EXP,:DCREXP,:ENTUSR)';

        ParamByName('STSEXP').AsString  := STSEXP;
        ParamByName('YAREXP').Asinteger  := YAREXP;
        ParamByName('CMPEXP').Asstring  := CMPEXP;
        ParamByName('BRNEXP').Asstring  := BRNEXP;
        ParamByName('DCDEXP').Asstring  := DCDEXP;
        ParamByName('DNOEXP').Asinteger  := DNOEXP;
        ParamByName('SEQEXP').Asinteger  := SEQEXP;
        ParamByName('CDCEXP').Asstring  := CDCEXP;
        ParamByName('AMTEXP').AsFloat  := AMTEXP;
        ParamByName('TP1EXP').Asstring  := TP1EXP;
        ParamByName('TP2EXP').Asstring  := TP2EXP;
        ParamByName('DCREXP').Asstring  := DCREXP;
        ParamByName('ENTUSR').Asstring  := ENTUSR;


        Open();
        WriteLog('MtAppInsUpdExp After Open...');
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(E.Message);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);
end;

function TDSCarSale.MtAppInsUpdDown(
  STSOM7 : string; YAROM7 : integer;CMPOM7 : string;BRNOM7 : string;DCDOM7 : string;
  DNOOM7 : integer; SEQOM7 : integer;  PPDOM7 : string;
  PTPOM7 :String; NOTOM7:string;PDTOM7 :double;PATOM7 :double; NAROM7 : string;
//  PRTOM7 :string;RDTOM7:double;  RDCOM7: string;RDNOM7 : integer; RSQOM7: integer;ABBOM7,
  ENTUSR:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  WriteLog('MtAppInsUpdDown In...');
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APP_INS_UPD_DOWN (' +
          ':STSOM7,:YAROM7,:CMPOM7,:BRNOM7,:DCDOM7,:DNOOM7,' +
          ':SEQOM7,:PPDOM7,:PTPOM7,:NOTOM7,:PDTOM7,:PATOM7,:NAROM7,' +
//          ':PRTOM7,:RDTOM7,:RDCOM7,:RDNOM7,:RSQOM7,:ABBOM7, ' +
          ':ENTUSR)';

        ParamByName('STSOM7').Asstring  := STSOM7;
        ParamByName('YAROM7').Asinteger  := YAROM7;
        ParamByName('CMPOM7').Asstring  := CMPOM7;
        ParamByName('BRNOM7').Asstring  := BRNOM7;
        ParamByName('DCDOM7').Asstring  := DCDOM7;
        ParamByName('DNOOM7').Asinteger  := DNOOM7;

        ParamByName('SEQOM7').Asinteger  := SEQOM7;
        ParamByName('PPDOM7').Asstring  := PPDOM7;
        ParamByName('PTPOM7').Asstring  := PTPOM7;
        ParamByName('NOTOM7').Asstring  := NOTOM7;
        SetDateParamValue(ParamByName('PDTOM7'), PDTOM7);
        ParamByName('PATOM7').AsFloat  := PATOM7;
        ParamByName('NAROM7').Asstring  := NAROM7;
//        ParamByName('PRTOM7').Asstring  := PRTOM7;
//        SetDateParamValue(ParamByName('RDTOM7'), RDTOM7);

//        ParamByName('RDCOM7').Asstring  := RDCOM7;
//       ParamByName('RDNOM7').AsInteger  := RDNOM7;
//        ParamByName('RSQOM7').AsInteger  := RSQOM7;
//        ParamByName('ABBOM7').Asstring  := ABBOM7;
        ParamByName('ENTUSR').Asstring  := ENTUSR;

        Open();
        WriteLog('MtAppInsUpdDown After Open...');
        Result := (FieldByName('result').AsInteger = 0);
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(E.Message);
       Result := False;
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);
end;

function TDSCarSale.MtAppInsUpdFollowup(
  STSOM8 : string;YAROM8 : integer;CMPOM8 : string;BRNOM8 : string;DCDOM8 : string;DNOOM8 : integer;SEQOM8 : integer;
  OCDOM8 : string; ODTOM8 :double; PSNOM8: double;ENTUSR :STRING): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APP_INS_UPD_FOLLOWUP (' +
          ':STSOM8,:YAROM8,:CMPOM8,:BRNOM8,:DCDOM8,:DNOOM8,' +
          ':SEQOM8,:CDCOM8,:AMTOM8,:TP1OM8,:TP2OM8,:DCROM8,:ENTUSR)';

        ParamByName('STSOM8').Asstring  := STSOM8;
        ParamByName('YAROM8').Asinteger  := YAROM8;
        ParamByName('CMPOM8').Asstring  := CMPOM8;
        ParamByName('BRNOM8').Asstring  := BRNOM8;
        ParamByName('DCDOM8').Asstring  := DCDOM8;
        ParamByName('DNOOM8').Asinteger  := DNOOM8;
        ParamByName('SEQOM8').Asinteger  := SEQOM8;

        ParamByName('OCDOM8').Asstring  := OCDOM8;
        ParamByName('ODTOM8').AsFloat  := ODTOM8;
        ParamByName('PSNOM8').AsFloat  := PSNOM8;
        ParamByName('ENTUSR').Asstring  := ENTUSR;


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

function TDSCarSale.MtAppDel(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APP_DEL (' +
          ':IYAR,:ICMP,:IBRN,:IDCD,:IDNO)';

        ParamByName('IYAR').AsInteger := IYAR;
        ParamByName('ICMP').AsString := ICMP;
        ParamByName('IBRN').AsString := IBRN;
        ParamByName('IDCD').AsString := IDCD;
        ParamByName('IDNO').AsInteger := IDNO;

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

function TDSCarSale.MtSetupAccessoryGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP:String;IFRM,ITO:DOUBLE;BRD : string): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMtSetupAccessoryGetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDEP').AsString := IDEP;
    SetDateParamValue(ParamByName('IFRM'), IFRM);
    SetDateParamValue(ParamByName('ITO'), ITO);
    ParamByName('BRD').AsString := BRD;

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

function TDSCarSale.MtSetupAccessoryGet(yarom3:integer;cmpom3,brnom3,dcdom3:string;ordom3:integer): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsSetupAccessoryGet do
   begin

    ParamByName('yarom3').AsInteger := yarom3;
    ParamByName('cmpom3').AsString := cmpom3;
    ParamByName('brnom3').AsString := brnom3;
    ParamByName('dcdom3').AsString := dcdom3;
    ParamByName('ordom3').AsInteger := ordom3;

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

function TDSCarSale.MtSetupAccessoryInsUpd(yarom3:integer;cmpom3,brnom3,dcdom3:string;ordom3:integer;
       seqom3:integer;fsrom3:string;idtom3:double;depom3,vnoom3,vtpom3,cpsom3:string;
       crtom3:integer;rdcom3:string;rdnom3:integer;
       rsqom3:integer;rdtom3:double;prdom3: String;
       qo1om3,qo2om3,qr1om3,qr2om3:integer;
       uc1om3,uc2om3:double;twhom3,nteom3,dseom3,serom3,engom3,entusr:string): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_SETUP_ACCESSORY_INS_UPD (' +
          ':yarom3,:cmpom3,:brnom3,:dcdom3,:ordom3,:seqom3,:fsrom3,:idtom3,:depom3,' +
          ':vnoom3,:vtpom3,:cpsom3,:crtom3,:rdcom3,:rdnom3,:rsqom3,:rdtom3,' +
          ':prdom3,:qo1om3,:qo2om3,:qr1om3,:qr2om3,' +
          ':uc1om3,:uc2om3,:twhom3,:nteom3,:dseom3,:serom3,:engom3,:entusr)';

        ParamByName('yarom3').AsInteger := yarom3;
        ParamByName('cmpom3').AsString := cmpom3;
        ParamByName('brnom3').AsString := brnom3;
        ParamByName('dcdom3').AsString := dcdom3;
        ParamByName('ordom3').AsInteger := ordom3;
        ParamByName('seqom3').AsInteger := seqom3;
        ParamByName('fsrom3').AsString := fsrom3;
        SetDateParamValue(ParamByName('idtom3'), idtom3);
        ParamByName('depom3').AsString := depom3;
        ParamByName('vnoom3').AsString := vnoom3;
        ParamByName('vtpom3').AsString := vtpom3;
        ParamByName('cpsom3').AsString := cpsom3;
        ParamByName('crtom3').AsInteger := crtom3;
        ParamByName('rdcom3').AsString := rdcom3;
        ParamByName('rdnom3').AsInteger := rdnom3;
        ParamByName('rsqom3').AsInteger := rsqom3;
        SetDateParamValue(ParamByName('rdtom3'), rdtom3);
        ParamByName('prdom3').AsString := prdom3;
        ParamByName('qo1om3').AsInteger := qo1om3;
        ParamByName('qo2om3').AsInteger := qo2om3;
        ParamByName('qr1om3').AsInteger := qr1om3;
        ParamByName('qr2om3').AsInteger := qr2om3;
        ParamByName('uc1om3').AsFloat := uc1om3;
        ParamByName('uc2om3').AsFloat := uc2om3;
        ParamByName('twhom3').AsString := twhom3;
        ParamByName('nteom3').AsString := nteom3;
        ParamByName('dseom3').AsString := dseom3;
        ParamByName('serom3').AsString := dseom3;
        ParamByName('engom3').AsString := dseom3;
        ParamByName('entusr').Asstring  := entusr;
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

function TDSCarSale.MtSetupAccessoryDel(yarom3:integer;cmpom3,brnom3,dcdom3:string;ordom3:integer): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_SETUP_ACCESSORY_DEL(' +
          ':yarom3,:cmpom3,:brnom3,:dcdom3,:ordom3)';

        ParamByName('yarom3').AsInteger  := yarom3;
        ParamByName('cmpom3').AsString  := cmpom3;
        ParamByName('brnom3').Asstring  := brnom3;
        ParamByName('dcdom3').Asstring  := dcdom3;
        ParamByName('ordom3').AsInteger  := ordom3;

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


function TDSCarSale.MtApprGetList(CRITERIA,ORDERFIELD,ICMP,IBRN,IDEP:String;IFRM,ITO:DOUBLE): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsMTApprGetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMP').AsString := ICMP;
    ParamByName('IBRN').AsString := IBRN;
    ParamByName('IDEP').AsString := IDEP;
    SetDateParamValue(ParamByName('IFRM'), IFRM);
    SetDateParamValue(ParamByName('ITO'), ITO);

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

function TDSCarSale.MtApprInsUpd(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER;IDTST3:DOUBLE;ENTUSR :STRING; VAR DNOST3 : INTEGER): Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT, DNOST3 ' + 'FROM SP_CSMT_APPR_APP_INS_UPD (' +
          ':IYAR,:ICMP,:IBRN,:IDCD,:IDNO,:IDTST3,:ENTUSR)';

        ParamByName('IYAR').AsInteger := IYAR;
        ParamByName('ICMP').AsString := ICMP;
        ParamByName('IBRN').AsString := IBRN;
        ParamByName('IDCD').AsString := IDCD;
        ParamByName('IDNO').AsInteger := IDNO;
        SetDateParamValue(ParamByName('IDTST3'), IDTST3);
        ParamByName('ENTUSR').AsString := ENTUSR;

        Open();
        DNOST3 :=  FieldByName('DNOST3').AsInteger;
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

function TDSCarSale.MtApprDel(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER):Boolean;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APPR_APP_DEL (' +
          ':IYAR,:ICMP,:IBRN,:IDCD,:IDNO)';

        ParamByName('IYAR').AsInteger := IYAR;
        ParamByName('ICMP').AsString := ICMP;
        ParamByName('IBRN').AsString := IBRN;
        ParamByName('IDCD').AsString := IDCD;
        ParamByName('IDNO').AsInteger := IDNO;

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

function TDSCarSale.MtApprGetCheck(IYAR:Integer;ICMP,IBRN,IDCD:String;IDNO:INTEGER): String;
begin
//  VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_CSMT_APPR_CHECK (' +
          ':IYAR,:ICMP,:IBRN,:IDCD,:IDNO)';

        ParamByName('IYAR').AsInteger := IYAR;
        ParamByName('ICMP').AsString := ICMP;
        ParamByName('IBRN').AsString := IBRN;
        ParamByName('IDCD').AsString := IDCD;
        ParamByName('IDNO').AsInteger := IDNO;

        Open();
        Result := FieldByName('result').AsString;
       finally
        Free();
      end;
  except
    on E: Exception do
    begin
  //     LastErrorCode := _ERROR_UNDEFINED_;
   //    LastErrorMsg := E.Message;
       WriteLog(LastErrorMsg);
       Result := 'x';
    end;
  end;

 // Result := True; // (LastErrorCode = _NO_ERROR_);

end;

end.
