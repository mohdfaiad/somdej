unit DSAssignWorkClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DSMainClass, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider,DSServerConstant, DSSetupClass;

type
  TDSAssignWork = class(TDSMain)
    dsTTSchGet: TSQLQuery;
    dspTTSchGet: TDataSetProvider;
    dsTTSchOptGet: TSQLQuery;
    dspTTSchOptGet: TDataSetProvider;
    dsTTRdwGet: TSQLQuery;
    dspTTRdwGet: TDataSetProvider;
    dsTtPasGetByDate: TSQLQuery;
    dspTtPasGetByDate: TDataSetProvider;
    dsTtPasGet: TSQLQuery;
    dspTtPasGet: TDataSetProvider;
    dsTtAsnGet: TSQLQuery;
    dspTtAsnGet: TDataSetProvider;
    dsTtAswGet: TSQLQuery;
    dspTtAswGet: TDataSetProvider;
    dsTtColGet: TSQLQuery;
    dspTtColGet: TDataSetProvider;
    dsTtAd1Get: TSQLQuery;
    dspTtAd1Get: TDataSetProvider;
    dsTtAp1Get: TSQLQuery;
    dspTtAp1Get: TDataSetProvider;
  private
    { Private declarations }
  public


    function TtSchGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer): Boolean;
    function TtSchInsUpd(STSSCH, CMPSCH , BRNSCH :String; YARSCH , PRDSCH :integer;
      DFRSCH , DTOSCH , FR1SCH ,TO1SCH , FR2SCH ,TO2SCH , FR3SCH , TO3SCH ,
      FR4SCH ,TO4SCH :double;
      ENTUSR :string): Boolean;
    function TtSchDel(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer): Boolean;

    function TtSchOptGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer): Boolean;
    function TtSchOptInsUpd(STSSCH, CMPSCH , BRNSCH :String; YARSCH , PRDSCH :integer;
        WEKOPT:integer; OPTOPT :string;DATOPT :double;MEMOPT :string; ENTUSR :string): Boolean;
    function TtSchOptDel(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;WEKOPT:integer; OPTOPT :string;DATOPT :double): Boolean;

    function TtRdwGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DCDRDW:String;RDTRDW: Double): Boolean;
    function TtRdwCopy(CMPRDW,BRNRDW :String; YARRDW,PRDRDW:integer;
             DCDRDW : String;RDTRDW :double;ENTUSR :string;VAR OUT_DNORDW:INTEGER): Boolean;
    function TtRdwInsUpd(STSRDW,CMPRDW,BRNRDW :String;
      YARRDW,PRDRDW:integer;
      DCDRDW : String;
      DNORDW ,SEQRDW : integer;
      OPTRDW : String;
      RWKRDW :integer;
      RDTRDW :double;
      RNORDW,ITNRDW,COLRDW : String;
      Q11RDW,Q12RDW,Q21RDW,Q22RDW,Q31RDW,Q32RDW,Q41RDW,Q42RDW,Q51RDW,Q52RDW : integer; ENTUSR :string;VAR OUT_DNORDW:INTEGER): Boolean;
    function TtRdwDel(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DCDRDW:String;DNORDW,SEQRDW:integer;ITNRDW:String): Boolean;

    function TtPasGetByDat(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DCDPAS:String;IDTPAS: Double;FLAG:STRING): Boolean;
    function TtPasGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOPAS:integer;RDTPAS:DOUBLE;IWKPAS:INTEGER;NEW_MOD:STRING): Boolean;
    function TtPasInsUpd(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNORDW:integer;RDTPAS:DOUBLE;IWKPAS:INTEGER;NEW_MOD:STRING;ENTUSR:STRING;var OUT_DNOPAS : INTEGER): Boolean;

    function TtAsnGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOASN:integer;RDTASN:DOUBLE;IWKASN:INTEGER;NEW_MOD:STRING): Boolean;
    function TtAswGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOASW:integer;RDTASW:DOUBLE;IWKASW:INTEGER;NEW_MOD:STRING): Boolean;
    function TtColGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOCOL:integer;RDTCOL:DOUBLE;IWKCOL, RDNCOL:INTEGER;NEW_MOD:STRING): Boolean;
    function TtAd1Get(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOAd1:integer;RDTAd1:DOUBLE;IWKAd1, RDNAd1:INTEGER;NEW_MOD:STRING): Boolean;
    function TtAP1Get(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOAP1:integer;RDTAP1:DOUBLE;IWKAP1, RDNAP1:INTEGER;NEW_MOD:STRING): Boolean;
    function TtGenDoc(CMP,BRN:String;YAR,PRD:integer;DCD:string;var OUT_DNO :string): Boolean;
    function TtAD1InsUpd(CMPAD1,BRNAD1:String;YARAD1,PRDAD1:integer;DCDAD1:String;DNOAD1,SEQAD1:integer;
       iwkad1: integer;idtad1 : Double;
       edtad1: double;wisad1: integer;
       ITNAD1, colad1:String;qt1ad1: Double; entusr: string;md:string): Boolean;
    function TtAD1Del(CMPAD1,BRNAD1:String;YARAD1,PRDAD1:integer;DCDAD1:String;DNOAD1,SEQAD1:integer;ITNAD1:String): Boolean;

  end;

var
  DSAssignWork: TDSAssignWork;

implementation

{$R *.dfm}

function TDSAssignWork.TtSchGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer): Boolean;
begin
//  VerifyLoggedIn();
  WriteLog('TtSchGet Before ');

  LastErrorCode := _NO_ERROR_;
  try
   with dsTTSchGet do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;
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

function TDSAssignWork.TtSchInsUpd(STSSCH, CMPSCH , BRNSCH :String; YARSCH , PRDSCH :integer;
    DFRSCH , DTOSCH , FR1SCH ,TO1SCH , FR2SCH ,TO2SCH , FR3SCH , TO3SCH ,
    FR4SCH ,TO4SCH :double;
    ENTUSR :string): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

   WriteLog('TtSchInsUpd Before');

   WriteLog('TtSchInsUpd STSSCH=' + STSSCH);
   WriteLog('TtSchInsUpd CMPSCH=' + CMPSCH);
   WriteLog('TtSchInsUpd BRNSCH=' + BRNSCH);
   WriteLog('TtSchInsUpd YARSCH=' + IntToStr(YARSCH));
   WriteLog('TtSchInsUpd PRDSCH=' + IntToStr(PRDSCH));

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_AWTT_SCH_INS_UPD (' +
        ':STSSCH,:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:DFRSCH,:DTOSCH,:FR1SCH,:TO1SCH,' +
        ':FR2SCH,:TO2SCH,:FR3SCH,:TO3SCH,:FR4SCH,:TO4SCH,:ENTUSR)';

        ParamByName('STSSCH').AsString := STSSCH;
        ParamByName('CMPSCH').AsString := CMPSCH;
        ParamByName('BRNSCH').AsString := BRNSCH;
        ParamByName('YARSCH').AsInteger := YARSCH;
        ParamByName('PRDSCH').AsInteger := PRDSCH;

        SetDateParamValue(ParamByName('DFRSCH'), DFRSCH);
        SetDateParamValue(ParamByName('DTOSCH'), DTOSCH);
        SetDateParamValue(ParamByName('FR1SCH'), FR1SCH);
        SetDateParamValue(ParamByName('TO1SCH'), TO1SCH);
        SetDateParamValue(ParamByName('FR2SCH'), FR2SCH);
        SetDateParamValue(ParamByName('TO2SCH'), TO2SCH);
        SetDateParamValue(ParamByName('FR3SCH'), FR3SCH);
        SetDateParamValue(ParamByName('TO3SCH'), TO3SCH);
        SetDateParamValue(ParamByName('FR4SCH'), FR4SCH);
        SetDateParamValue(ParamByName('TO4SCH'), TO4SCH);

        ParamByName('ENTUSR').AsString := ENTUSR;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
        WriteLog('TtSchInsUpd After Open');
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

function TDSAssignWork.TtSchDel(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_AWTT_SCH_DEL (' +
          ':CMPSCH,:BRNSCH,:YARSCH,:PRDSCH)';

        ParamByName('CMPSCH').AsString := CMPSCH;
        ParamByName('BRNSCH').AsString := BRNSCH;
        ParamByName('YARSCH').AsInteger := YARSCH;
        ParamByName('PRDSCH').AsInteger := PRDSCH;

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

function TDSAssignWork.TtSchOptGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTSchOptGet do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;
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

function TDSAssignWork.TtSchOptInsUpd(STSSCH, CMPSCH , BRNSCH :String; YARSCH , PRDSCH :integer;
    WEKOPT:integer; OPTOPT :string;DATOPT :double;MEMOPT :string; ENTUSR :string): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_AWTT_SCH_OPT_INS_UPD (' +
        ':STSSCH,:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:WEKOPT,:OPTOPT,:DATOPT,:MEMOPT,:ENTUSR)';

        ParamByName('STSSCH').AsString := STSSCH;
        ParamByName('CMPSCH').AsString := CMPSCH;
        ParamByName('BRNSCH').AsString := BRNSCH;
        ParamByName('YARSCH').AsInteger := YARSCH;
        ParamByName('PRDSCH').AsInteger := PRDSCH;

        ParamByName('WEKOPT').AsInteger := WEKOPT;
        ParamByName('OPTOPT').AsString := OPTOPT;

        SetDateParamValue(ParamByName('DATOPT'), DATOPT);

        ParamByName('MEMOPT').AsString := MEMOPT;

        ParamByName('ENTUSR').AsString := ENTUSR;

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

function TDSAssignWork.TtSchOptDel(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;WEKOPT:integer; OPTOPT :string;DATOPT :double): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_AWTT_SCH_OPT_DEL (' +
          ':CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:WEKOPT,:OPTOPT,:DATOPT)';

        ParamByName('CMPSCH').AsString := CMPSCH;
        ParamByName('BRNSCH').AsString := BRNSCH;
        ParamByName('YARSCH').AsInteger := YARSCH;
        ParamByName('PRDSCH').AsInteger := PRDSCH;

        ParamByName('WEKOPT').AsInteger := WEKOPT;
        ParamByName('OPTOPT').AsString := OPTOPT;
        SetDateParamValue(ParamByName('DATOPT'), DATOPT);

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

function TDSAssignWork.TtRdwGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DCDRDW:String;RDTRDW: Double): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTRdwGet do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DCDRDW').AsString := DCDRDW;
    SetDateParamValue(ParamByName('RDTRDW'), RDTRDW);

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

function TDSAssignWork.TtRdwCopy(CMPRDW,BRNRDW :String; YARRDW,PRDRDW:integer;
   DCDRDW : String;RDTRDW :double;ENTUSR :string;VAR OUT_DNORDW:INTEGER): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT , OUT_DNORDW  FROM SP_AWTT_RDW_COPY (' +
          ':CMPRDW,:BRNRDW,:YARRDW,:PRDRDW,:DCDRDW,:RDTRDW,:ENTUSR)';

        ParamByName('CMPRDW').Asstring  := CMPRDW;
        ParamByName('BRNRDW').Asstring  := BRNRDW;
        ParamByName('YARRDW').Asinteger  := YARRDW;
        ParamByName('PRDRDW').Asinteger  := PRDRDW;
        ParamByName('DCDRDW').Asstring  := DCDRDW;
        SetDateParamValue(ParamByName('RDTRDW'), RDTRDW);
        ParamByName('ENTUSR').AsString := ENTUSR;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
        OUT_DNORDW := FieldByName('OUT_DNORDW').AsInteger ;
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

function TDSAssignWork.TtRdwInsUpd(STSRDW,CMPRDW,BRNRDW :String;
  YARRDW,PRDRDW:integer;
  DCDRDW : String;
  DNORDW ,SEQRDW : integer;
  OPTRDW : String;
  RWKRDW :integer;
  RDTRDW :double;
  RNORDW,ITNRDW,COLRDW : String;
  Q11RDW,Q12RDW,Q21RDW,Q22RDW,Q31RDW,Q32RDW,Q41RDW,Q42RDW,Q51RDW,Q52RDW : integer; ENTUSR :string;VAR OUT_DNORDW:INTEGER): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT , OUT_DNORDW  FROM SP_AWTT_RDW_INS_UPD (' +
          ':STSRDW,:CMPRDW,:BRNRDW,:YARRDW,:PRDRDW,:DCDRDW,:DNORDW,' +
          ':SEQRDW,:OPTRDW,:RWKRDW,:RDTRDW,:RNORDW,:ITNRDW,:COLRDW,' +
          ':Q11RDW,:Q12RDW,:Q21RDW,:Q22RDW,:Q31RDW,:Q32RDW,:Q41RDW,:Q42RDW,:Q51RDW,:Q52RDW,:ENTUSR)';

        ParamByName('STSRDW').Asstring  := STSRDW;
        ParamByName('CMPRDW').Asstring  := CMPRDW;
        ParamByName('BRNRDW').Asstring  := BRNRDW;
        ParamByName('YARRDW').Asinteger  := YARRDW;
        ParamByName('PRDRDW').Asinteger  := PRDRDW;
        ParamByName('DCDRDW').Asstring  := DCDRDW;
        ParamByName('DNORDW').Asinteger  := DNORDW;
        ParamByName('SEQRDW').Asinteger  := SEQRDW;
        ParamByName('OPTRDW').Asstring  := OPTRDW;
        ParamByName('RWKRDW').Asinteger  := RWKRDW;
        SetDateParamValue(ParamByName('RDTRDW'), RDTRDW);
        ParamByName('RNORDW').Asstring  := RNORDW;
        ParamByName('ITNRDW').Asstring  := ITNRDW;
        ParamByName('COLRDW').Asstring  := COLRDW;
        ParamByName('Q11RDW').Asinteger  := Q11RDW;
        ParamByName('Q12RDW').Asinteger  := Q12RDW;
        ParamByName('Q21RDW').Asinteger  := Q21RDW;
        ParamByName('Q22RDW').Asinteger  := Q22RDW;
        ParamByName('Q31RDW').Asinteger  := Q31RDW;
        ParamByName('Q32RDW').Asinteger  := Q32RDW;
        ParamByName('Q41RDW').Asinteger  := Q41RDW;
        ParamByName('Q42RDW').Asinteger  := Q42RDW;
        ParamByName('Q51RDW').Asinteger  := Q51RDW;
        ParamByName('Q52RDW').Asinteger  := Q52RDW;

        ParamByName('ENTUSR').AsString := ENTUSR;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
        OUT_DNORDW := FieldByName('OUT_DNORDW').AsInteger ;
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

function TDSAssignWork.TtRdwDel(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DCDRDW:String;DNORDW,SEQRDW:integer;ITNRDW:String): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_AWTT_RDW_DEL (' +
          ':CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:DCDRDW,:DNORDW,:SEQRDW,:ITNRDW)';

        ParamByName('CMPSCH').AsString := CMPSCH;
        ParamByName('BRNSCH').AsString := BRNSCH;
        ParamByName('YARSCH').AsInteger := YARSCH;
        ParamByName('PRDSCH').AsInteger := PRDSCH;

        ParamByName('DCDRDW').AsString := DCDRDW;
        ParamByName('DNORDW').AsInteger := DNORDW;
        ParamByName('SEQRDW').AsInteger := SEQRDW;
        ParamByName('ITNRDW').AsString := ITNRDW;

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

function TDSAssignWork.TtPasGetByDat(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DCDPAS:String;IDTPAS: Double;FLAG:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtPasGetByDate do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DCDPAS').AsString := DCDPAS;
    SetDateParamValue(ParamByName('IDTPAS'), IDTPAS);
    ParamByName('FLAG').AsString := FLAG;

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


function TDSAssignWork.TtPasGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOPAS:integer;RDTPAS:DOUBLE;IWKPAS:INTEGER;NEW_MOD:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTPasGet do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DNOPAS').AsInteger := DNOPAS;
    SetDateParamValue(ParamByName('RDTPAS'), RDTPAS);
    ParamByName('IWKPAS').AsInteger := IWKPAS;
    ParamByName('NEW_MOD').AsString := NEW_MOD;

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

function TDSAssignWork.TtPasInsUpd(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNORDW:integer;RDTPAS:DOUBLE;IWKPAS:INTEGER;NEW_MOD:STRING;ENTUSR:STRING;var OUT_DNOPAS : INTEGER): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

   try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT,OUT_DNOPAS ' + 'FROM SP_AWTT_PAS_INS_UPD (' +
          ':CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:DNORDW,:RDTPAS,:IWKPAS,:NEW_MOD,:ENTUSR)';

        ParamByName('CMPSCH').AsString := CMPSCH;
        ParamByName('BRNSCH').AsString := BRNSCH;
        ParamByName('YARSCH').AsInteger := YARSCH;
        ParamByName('PRDSCH').AsInteger := PRDSCH;

        ParamByName('DNORDW').AsInteger := DNORDW;
        SetDateParamValue(ParamByName('RDTPAS'), RDTPAS);
        ParamByName('IWKPAS').AsInteger := IWKPAS;
        ParamByName('NEW_MOD').AsString := NEW_MOD;
        ParamByName('ENTUSR').AsString := ENTUSR;

        WriteLog('TtPasInsUpd CMPSCH='+ CMPSCH);
        WriteLog('TtPasInsUpd BRNSCH='+ BRNSCH);
        WriteLog('TtPasInsUpd YARSCH='+ IntToStr(YARSCH));
        WriteLog('TtPasInsUpd PRDSCH='+ IntToStr(PRDSCH));
        WriteLog('TtPasInsUpd DNORDW='+ IntToStr(DNORDW));
        WriteLog('TtPasInsUpd RDTPAS='+ FormatDateTime('dd/mm/yyyy',FloatToDateTime(RDTPAS)));
        WriteLog('TtPasInsUpd IWKPAS='+ IntToStr(IWKPAS));
        WriteLog('TtPasInsUpd NEW_MOD='+ NEW_MOD);
        WriteLog('TtPasInsUpd ENTUSR='+ ENTUSR);

        Open();
        Result := (FieldByName('result').AsInteger = 0);
        WriteLog('TtPasInsUpd result='+ BoolToStr(result));
        OUT_DNOPAS :=  FieldByName('out_dnopas').AsInteger;

        WriteLog('TtPasInsUpd OUT_DNOPAS='+ IntToStr(OUT_DNOPAS));

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

function TDSAssignWork.TtAsnGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOASN:integer;RDTASN:DOUBLE;IWKASN:INTEGER;NEW_MOD:STRING): Boolean;
BEGIN
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTASNGet do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DNOASN').AsInteger := DNOASN;
    SetDateParamValue(ParamByName('RDTASN'), RDTASN);
    ParamByName('IWKASN').AsInteger := IWKASN;
    ParamByName('NEW_MOD').AsString := NEW_MOD;

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
END;

function TDSAssignWork.TtAswGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOASW:integer;RDTASW:DOUBLE;IWKASW:INTEGER;NEW_MOD:STRING): Boolean;
BEGIN
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTASWGet do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DNOASW').AsInteger := DNOASW;
    SetDateParamValue(ParamByName('RDTASW'), RDTASW);
    ParamByName('IWKASW').AsInteger := IWKASW;
    ParamByName('NEW_MOD').AsString := NEW_MOD;

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
END;

function TDSAssignWork.TtColGet(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOCOL:integer;RDTCOL:DOUBLE;IWKCOL, RDNCOL:INTEGER;NEW_MOD:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTColGet do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DNOCOL').AsInteger := DNOCOL;
    SetDateParamValue(ParamByName('RDTCOL'), RDTCOL);
    ParamByName('IWKCOL').AsInteger := IWKCOL;
    ParamByName('RDNCOL').AsInteger := RDNCOL;
    ParamByName('NEW_MOD').AsString := NEW_MOD;

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

function TDSAssignWork.TtAd1Get(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOAd1:integer;RDTAd1:DOUBLE;IWKAd1, RDNAd1:INTEGER;NEW_MOD:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTAD1Get do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DNOAD1').AsInteger := DNOAd1;
    SetDateParamValue(ParamByName('RDTAD1'), RDTAd1);
    ParamByName('IWKAD1').AsInteger := IWKAd1;
    ParamByName('RDNAD1').AsInteger := RDNAd1;
    ParamByName('NEW_MOD').AsString := NEW_MOD;

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

function TDSAssignWork.TtAP1Get(CMPSCH,BRNSCH:String;YARSCH,PRDSCH:integer;DNOAP1:integer;RDTAP1:DOUBLE;IWKAP1, RDNAP1:INTEGER;NEW_MOD:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTAP1Get do
   begin

    ParamByName('CMPSCH').AsString := CMPSCH;
    ParamByName('BRNSCH').AsString := BRNSCH;
    ParamByName('YARSCH').AsInteger := YARSCH;
    ParamByName('PRDSCH').AsInteger := PRDSCH;

    ParamByName('DNOAP1').AsInteger := DNOAP1;
    SetDateParamValue(ParamByName('RDTAP1'), RDTAP1);
    ParamByName('IWKAP1').AsInteger := IWKAP1;
    ParamByName('RDNAP1').AsInteger := RDNAP1;
    ParamByName('NEW_MOD').AsString := NEW_MOD;

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

function TDSAssignWork.TtGenDoc(CMP,BRN:String;YAR,PRD:integer;DCD:string;var OUT_DNO :string): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

   try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ,OUT_DNO ' + 'FROM SP_STTT_INS_UPD_HEAD (' +
          ':CMP,:BRN,:YAR,:PRD,:DCD)';

        ParamByName('CMP').AsString := CMP;
        ParamByName('BRN').AsString := BRN;
        ParamByName('YAR').AsInteger := YAR;
        ParamByName('PRD').AsInteger := PRD;
        ParamByName('DCD').AsString := DCD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
        OUT_DNO :=  FieldByName('OUT_DNO').AsString;

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


function TDSAssignWork.TtAD1InsUpd(CMPAD1,BRNAD1:String;YARAD1,PRDAD1:integer;DCDAD1:String;DNOAD1,SEQAD1:integer;
       iwkad1: integer;idtad1 : Double;
       edtad1: double;wisad1: integer;
       ITNAD1, colad1:String;qt1ad1: Double; entusr: string;md:string): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;

   try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_AWTT_AD1_INS_UPD (' +
          ':CMPAD1,:BRNAD1,:YARAD1,:PRDAD1,:DCDAD1,:DNOAD1,:SEQAD1,:IWKAD1,:IDTAD1,'+
          ':EDTAD1,:WISAD1,:ITNAD1,:COLAD1,:QT1AD1,:ENTUSR,:MD)';

        ParamByName('CMPAD1').AsString := CMPAD1;
        ParamByName('BRNAD1').AsString := BRNAD1;
        ParamByName('YARAD1').AsInteger := YARAD1;
        ParamByName('PRDAD1').AsInteger := PRDAD1;
        ParamByName('DCDAD1').AsString := DCDAD1;
        ParamByName('DNOAD1').AsInteger := DNOAD1;
        ParamByName('SEQAD1').AsInteger := SEQAD1;
        ParamByName('IWKAD1').AsInteger := IWKAD1;
        SetDateParamValue(ParamByName('IDTAD1'), IDTAD1);
        SetDateParamValue(ParamByName('EDTAD1'), EDTAD1);
        ParamByName('WISAD1').AsInteger := WISAD1;
        ParamByName('ITNAD1').AsString := ITNAD1;
        ParamByName('COLAD1').AsString := COLAD1;
        ParamByName('QT1AD1').AsFloat := QT1AD1;
        ParamByName('ENTUSR').AsString := ENTUSR;
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


function TDSAssignWork.TtAD1Del(CMPAD1,BRNAD1:String;YARAD1,PRDAD1:integer;DCDAD1:String;DNOAD1,SEQAD1:integer;ITNAD1:String): Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_AWTT_AD1_DEL (' +
          ':CMPAD1,:BRNAD1,:YARAD1,:PRDAD1,:DCDAD1,:DNOAD1,:SEQAD1,:ITNAD1)';

        ParamByName('CMPAD1').AsString := CMPAD1;
        ParamByName('BRNAD1').AsString := BRNAD1;
        ParamByName('YARAD1').AsInteger := YARAD1;
        ParamByName('PRDAD1').AsInteger := PRDAD1;

        ParamByName('DCDAD1').AsString := DCDAD1;
        ParamByName('DNOAD1').AsInteger := DNOAD1;
        ParamByName('SEQAD1').AsInteger := SEQAD1;
        ParamByName('ITNAD1').AsString := ITNAD1;

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

end.
