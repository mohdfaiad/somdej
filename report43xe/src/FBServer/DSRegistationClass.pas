unit DSRegistationClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DSMainClass, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider,DSServerConstant, DSSetupClass;

type
  TDSRegistation = class(TDSMain)
    dsTtAm6GetList: TSQLQuery;
    dspTtAm6GetList: TDataSetProvider;
    dsTtAm6GetYm4: TSQLQuery;
    dspTtAm6GetYm4: TDataSetProvider;
    dspTtAm6GetByNo: TDataSetProvider;
    dsTtAm6GetByNo: TSQLQuery;
    dsTtAm7GetList: TSQLQuery;
    dspTtAm7GetList: TDataSetProvider;
    dsTtAm7GetByNo: TSQLQuery;
    dspTtAm7GetByNo: TDataSetProvider;
    dsTtRg1GetList: TSQLQuery;
    dspTtRg1GetList: TDataSetProvider;
    dsTtRg1GetOm5: TSQLQuery;
    dspTtRg1GetOm5: TDataSetProvider;
    dsTtRg1GetByNo: TSQLQuery;
    dspTtRg1GetByNo: TDataSetProvider;
    dsTtRg2GetList: TSQLQuery;
    dspTtRg2GetList: TDataSetProvider;
    dsTtRg2GetByNo: TSQLQuery;
    dspTtRg2GetByNo: TDataSetProvider;
    dsTtRg2BookGetList: TSQLQuery;
    dspTtRg2BookGetList: TDataSetProvider;
  private
    { Private declarations }
  public

    function TtAm6GetList(CRITERIA,ORDERFIELD:String;ICMPAM6,IBRNAM6 ,IDEPAM6,IDCDAM6: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
    function TtAm6GetYm4(CRITERIA,ORDERFIELD:String;IYARAM6:integer;ICMPAM6: String): Boolean;
    function TtAm6GetByNo(IYARAM6,IPRDAM6:integer;ICMPAM6,IBRNAM6 ,IDCDAM6: String;IDNOAM6:INTEGER; PRC:STRING): Boolean;

    function TtAm6InsUpd(CMPAM6  :String; BRNAM6  :String;
      YARAM6  :Integer; PRDAM6  :Integer; DCDAM6  :String; DNOAM6  :Integer; SEQAM6  :Integer;
      IDTAM6  :Double; RDCAM6  :String; RDNAM6  :Integer; RSQAM6  :Integer; RDTAM6  :Double;
      DEPAM6  :String; CTYAM6  :String; CNOAM6  :LargeInt;
      TYPAM6  :String;ARSAM6  :Double; REFNO,ENTUSR :STRING): Boolean;
    function TtAm6Del(YARAM6, PRDAM6:integer;CMPAM6,BRNAM6,DCDAM6:STRING;DNOAM6:Integer;ENTUSR:STRING):Boolean;

   function TtAM7GetList(CRITERIA,ORDERFIELD:String;ICMPAM7,IBRNAM7 ,IDEPAM7,IDCDAM7: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
   function TtAm7GetByNo(IYARAM7,IPRDAM7:integer;ICMPAM7,IBRNAM7 ,IDCDAM7: String;IDNOAM7:INTEGER; PRC:STRING): Boolean;
    function TtAM7InsUpd(CMPAM7  :String; BRNAM7  :String;
      YARAM7  :Integer; PRDAM7  :Integer; DCDAM7  :String; DNOAM7  :Integer; SEQAM7  :Integer;
      IDTAM7  :Double; RDCAM7  :String; RDNAM7  :Integer; RSQAM7  :Integer; RDTAM7  :Double;
      DEPAM7  :String; CTYAM7  :String; CNOAM7  :LargeInt;
      TYPAM7  :String;ARSAM7  :Double; REFNO,REGAM7:STRING;RENAM7:INTEGER;PRVAM7,ENTUSR :STRING): Boolean;
    function TtAM7Del(YARAM7, PRDAM7:integer;CMPAM7,BRNAM7,DCDAM7:STRING;DNOAM7:Integer;ENTUSR:STRING):Boolean;

   function TtRG1GetList(CRITERIA,ORDERFIELD:String;ICMPRG1,IBRNRG1 ,IDEPRG1,IDCDRG1: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
   function TtRG1GetOm5(ICMPRG1,IBRNRG1 : String;TYP:STRING): Boolean;
   function TtRG1GetByNo(IYARRG1,IPRDRG1:integer;ICMPRG1,IBRNRG1 ,IDCDRG1: String;IDNORG1:INTEGER; PRC:STRING): Boolean;
    function TtRG1InsUpd(CMPRG1  :String; BRNRG1  :String;
      YARRG1  :Integer; PRDRG1  :Integer; DCDRG1  :String; DNORG1  :Integer; SEQRG1  :Integer;
      IDTRG1  :Double; RDCRG1  :String; RDNRG1  :Integer; RSQRG1  :Integer; RDTRG1  :Double;
      DEPRG1  :String; EDTRG1  :DOUBLE; VNORG1  :String;
      TYPRG1  :String;ARSRG1  :Double; REFNO :STRING;ENTUSR :STRING): Boolean;
    function TtRG1Del(YARRG1, PRDRG1:integer;CMPRG1,BRNRG1,DCDRG1:STRING;DNORG1:Integer;ENTUSR:STRING):Boolean;

   function TtRG2GetList(CRITERIA,ORDERFIELD:String;ICMPRG2,IBRNRG2 ,IDEPRG2,IDCDRG2: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
   function TtRG2GetByNo(IYARRG2,IPRDRG2:integer;ICMPRG2,IBRNRG2 ,IDCDRG2: String;IDNORG2:INTEGER; PRC:STRING): Boolean;
   function TtRG2InsUpd(CMPRG2  :String; BRNRG2  :String;
      YARRG2  :Integer; PRDRG2  :Integer; DCDRG2  :String; DNORG2  :Integer; SEQRG2  :Integer;
      IDTRG2  :Double; RDCRG2  :String; RDNRG2  :Integer; RSQRG2  :Integer; RDTRG2  :Double;
      DEPRG2  :String; EDTRG2,BDTRG2  :DOUBLE; VNORG2  :String;
      TYPRG2  :String;ARSRG2  :Double; REFNO ,SEROM5 :STRING;
      PRVRG2,REGRG2: string; RENRG2 :integer; RVDRG2 :double;RVNRG2 :integer;ARARG2,AOARG2 :double;
      ENTUSR :STRING): Boolean;
    function TtRG2Del(YARRG2, PRDRG2:integer;CMPRG2,BRNRG2,DCDRG2:STRING;DNORG2:Integer;ENTUSR:STRING):Boolean;

    function TtRG2BookGetList(CRITERIA,ORDERFIELD:String;ICMPRG2,IBRNRG2 ,IDEPRG2,IDCDRG2: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
    function TtRG2BookInsUpd(YARRG2, PRDRG2:integer;CMPRG2,BRNRG2,DCDRG2:STRING;DNORG2,SEQRG2:Integer;BRDRG2:DOUBLE;ENTUSR:STRING):Boolean;
    function TtRG2BookDel(YARRG2, PRDRG2:integer;CMPRG2,BRNRG2,DCDRG2:STRING;DNORG2,SEQRG2:Integer;BRDRG2:DOUBLE;ENTUSR:STRING):Boolean;
  end;

var
  DSRegistation: TDSRegistation;
    dsTtRg2GetList: TSQLQuery;
    dspTtRg2GetList: TDataSetProvider;
    dsTtRg2GetByNo: TSQLQuery;
    dspTtRg2GetByNo: TDataSetProvider;

implementation

{$R *.dfm}

function TDSRegistation.TtAm6GetList(CRITERIA,ORDERFIELD:String;ICMPAM6,IBRNAM6 ,IDEPAM6,IDCDAM6: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtAm6GetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMPAM6').AsString := ICMPAM6;
    ParamByName('IBRNAM6').AsString := IBRNAM6;
    ParamByName('IDEPAM6').AsString := IDEPAM6;
    ParamByName('IDCDAM6').AsString := IDCDAM6;
    setDateParamValue(ParamByName('IFRMDATE'), IFRMDATE);
    setDateParamValue(ParamByName('ITODATE'), ITODATE);
    ParamByName('FG').AsString := FG;
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

function TDSRegistation.TtAm6GetYm4(CRITERIA,ORDERFIELD:String;IYARAM6:integer;ICMPAM6: String): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtAm6GetYm4 do
   begin
    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMPAM6').AsString := ICMPAM6;
    ParamByName('IYARAM4').AsInteger := IYARAM6;
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

function TDSRegistation.TtAm6GetByNo(IYARAM6,IPRDAM6:integer;ICMPAM6,IBRNAM6 ,IDCDAM6: String;IDNOAM6:INTEGER;PRC:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtAm6GetByNo do
   begin

    ParamByName('IYARAM6').AsInteger := IYARAM6;
    ParamByName('IPRDAM6').AsInteger := IPRDAM6;
    ParamByName('ICMPAM6').AsString := ICMPAM6;
    ParamByName('IBRNAM6').AsString := IBRNAM6;
    ParamByName('IDCDAM6').AsString := IDCDAM6;
    ParamByName('IDNOAM6').AsInteger := IDNOAM6;
    ParamByName('PRC').AsString := PRC;

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

function TDSRegistation.TtAm6InsUpd(CMPAM6  :String; BRNAM6  :String;
      YARAM6  :Integer; PRDAM6  :Integer; DCDAM6  :String; DNOAM6  :Integer; SEQAM6  :Integer;
      IDTAM6  :Double; RDCAM6  :String; RDNAM6  :Integer; RSQAM6  :Integer; RDTAM6  :Double;
      DEPAM6  :String; CTYAM6  :String; CNOAM6  :LargeInt;
      TYPAM6  :String;ARSAM6  :Double; REFNO,ENTUSR :STRING): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_RRTT_AM6_INS_UPD (' +
        ':CMPAM6,:BRNAM6,:YARAM6,:PRDAM6,:DCDAM6,:DNOAM6,:SEQAM6,:IDTAM6,:RDCAM6, ' +
        ':RDNAM6,:RSQAM6,:RDTAM6,:DEPAM6,:CTYAM6,:CNOAM6,:TYPAM6,' +
        ':ARSAM6,:REFNO,:ENTUSR)';

        ParamByName('CMPAM6').AsString := CMPAM6;
        ParamByName('BRNAM6').AsString := BRNAM6;
        ParamByName('YARAM6').AsInteger := YARAM6;
        ParamByName('PRDAM6').AsInteger := PRDAM6;
        ParamByName('DCDAM6').AsString := DCDAM6;
        ParamByName('DNOAM6').AsInteger := DNOAM6;
        ParamByName('SEQAM6').AsInteger := SEQAM6;
        SetDateParamValue(ParamByName('IDTAM6'), IDTAM6);
        ParamByName('RDCAM6').AsString := RDCAM6;
        ParamByName('RDNAM6').AsInteger := RDNAM6;
        ParamByName('RSQAM6').AsInteger := RSQAM6;
        SetDateParamValue(ParamByName('RDTAM6'), RDTAM6);
        ParamByName('DEPAM6').AsString := DEPAM6;
        ParamByName('CTYAM6').AsString := CTYAM6;
        ParamByName('CNOAM6').AsLargeInt := CNOAM6;
        ParamByName('TYPAM6').AsString := TYPAM6;
        ParamByName('ARSAM6').AsFloat := ARSAM6;
        ParamByName('REFNO').AsString := REFNO;
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

function TDSRegistation.TtAm6Del(YARAM6, PRDAM6:integer;CMPAM6,BRNAM6,DCDAM6:STRING;DNOAM6:Integer;ENTUSR:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_RRTT_AM6_DEL (' +
          ':YARAM6,:PRDAM6,:CMPAM6,:BRNAM6,:DCDAM6,:DNOAM6,:ENTUSR)';

        ParamByName('YARAM6').AsInteger := YARAM6;
        ParamByName('PRDAM6').AsInteger := PRDAM6;
        ParamByName('CMPAM6').AsString := CMPAM6;
        ParamByName('BRNAM6').AsString := BRNAM6;
        ParamByName('DCDAM6').AsString := DCDAM6;
        ParamByName('DNOAM6').AsInteger := DNOAM6;
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

function TDSRegistation.TtAM7GetList(CRITERIA,ORDERFIELD:String;ICMPAM7,IBRNAM7 ,IDEPAM7,IDCDAM7: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtAM7GetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMPAM7').AsString := ICMPAM7;
    ParamByName('IBRNAM7').AsString := IBRNAM7;
    ParamByName('IDEPAM7').AsString := IDEPAM7;
    ParamByName('IDCDAM7').AsString := IDCDAM7;
    setDateParamValue(ParamByName('IFRMDATE'), IFRMDATE);
    setDateParamValue(ParamByName('ITODATE'), ITODATE);
    ParamByName('FG').AsString := FG;
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

function TDSRegistation.TtAM7GetByNo(IYARAM7,IPRDAM7:integer;ICMPAM7,IBRNAM7 ,IDCDAM7: String;IDNOAM7:INTEGER;PRC:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtAM7GetByNo do
   begin

    ParamByName('IYARAM7').AsInteger := IYARAM7;
    ParamByName('IPRDAM7').AsInteger := IPRDAM7;
    ParamByName('ICMPAM7').AsString := ICMPAM7;
    ParamByName('IBRNAM7').AsString := IBRNAM7;
    ParamByName('IDCDAM7').AsString := IDCDAM7;
    ParamByName('IDNOAM7').AsInteger := IDNOAM7;
    ParamByName('PRC').AsString := PRC;

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

function TDSRegistation.TtAM7InsUpd(CMPAM7  :String; BRNAM7  :String;
      YARAM7  :Integer; PRDAM7  :Integer; DCDAM7  :String; DNOAM7  :Integer; SEQAM7  :Integer;
      IDTAM7  :Double; RDCAM7  :String; RDNAM7  :Integer; RSQAM7  :Integer; RDTAM7  :Double;
      DEPAM7  :String; CTYAM7  :String; CNOAM7  :LargeInt;
      TYPAM7  :String;ARSAM7  :Double; REFNO,REGAM7:STRING;RENAM7:INTEGER;PRVAM7,ENTUSR :STRING): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_RRTT_AM7_INS_UPD (' +
        ':CMPAM7,:BRNAM7,:YARAM7,:PRDAM7,:DCDAM7,:DNOAM7,:SEQAM7,:IDTAM7,:RDCAM7, ' +
        ':RDNAM7,:RSQAM7,:RDTAM7,:DEPAM7,:CTYAM7,:CNOAM7,:TYPAM7,' +
        ':ARSAM7,:REFNO,:REGAM7,:RENAM7,:PRVAM7,:ENTUSR)';

        ParamByName('CMPAM7').AsString := CMPAM7;
        ParamByName('BRNAM7').AsString := BRNAM7;
        ParamByName('YARAM7').AsInteger := YARAM7;
        ParamByName('PRDAM7').AsInteger := PRDAM7;
        ParamByName('DCDAM7').AsString := DCDAM7;
        ParamByName('DNOAM7').AsInteger := DNOAM7;
        ParamByName('SEQAM7').AsInteger := SEQAM7;
        SetDateParamValue(ParamByName('IDTAM7'), IDTAM7);
        ParamByName('RDCAM7').AsString := RDCAM7;
        ParamByName('RDNAM7').AsInteger := RDNAM7;
        ParamByName('RSQAM7').AsInteger := RSQAM7;
        SetDateParamValue(ParamByName('RDTAM7'), RDTAM7);
        ParamByName('DEPAM7').AsString := DEPAM7;
        ParamByName('CTYAM7').AsString := CTYAM7;
        ParamByName('CNOAM7').AsLargeInt := CNOAM7;
        ParamByName('TYPAM7').AsString := TYPAM7;
        ParamByName('ARSAM7').AsFloat := ARSAM7;
        ParamByName('REFNO').AsString := REFNO;
        ParamByName('REGAM7').AsString := REGAM7;
        ParamByName('RENAM7').AsInteger := RENAM7;
        ParamByName('PRVAM7').AsString := PRVAM7;
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

function TDSRegistation.TtAM7Del(YARAM7, PRDAM7:integer;CMPAM7,BRNAM7,DCDAM7:STRING;DNOAM7:Integer;ENTUSR:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_RRTT_AM7_DEL (' +
          ':YARAM7,:PRDAM7,:CMPAM7,:BRNAM7,:DCDAM7,:DNOAM7,:ENTUSR)';

        ParamByName('YARAM7').AsInteger := YARAM7;
        ParamByName('PRDAM7').AsInteger := PRDAM7;
        ParamByName('CMPAM7').AsString := CMPAM7;
        ParamByName('BRNAM7').AsString := BRNAM7;
        ParamByName('DCDAM7').AsString := DCDAM7;
        ParamByName('DNOAM7').AsInteger := DNOAM7;
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

function TDSRegistation.TtRG1GetOm5(ICMPRG1,IBRNRG1 : String;TYP:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  WriteLog('ICMPRG1='+ICMPRG1);
  WriteLog('IBRNRG1=' + IBRNRG1);
  try
   with dsTtRg1GetOm5 do
   begin
    ParamByName('ICMPRG1').AsString := ICMPRG1;
    ParamByName('IBRNRG1').AsString := IBRNRG1;
    ParamByName('TYP').AsString := TYP;
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

function TDSRegistation.TtRG1GetList(CRITERIA,ORDERFIELD:String;ICMPRG1,IBRNRG1 ,IDEPRG1,IDCDRG1: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtRG1GetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMPRG1').AsString := ICMPRG1;
    ParamByName('IBRNRG1').AsString := IBRNRG1;
    ParamByName('IDEPRG1').AsString := IDEPRG1;
    ParamByName('IDCDRG1').AsString := IDCDRG1;
    setDateParamValue(ParamByName('IFRMDATE'), IFRMDATE);
    setDateParamValue(ParamByName('ITODATE'), ITODATE);
    ParamByName('FG').AsString := FG;
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

function TDSRegistation.TtRG1GetByNo(IYARRG1,IPRDRG1:integer;ICMPRG1,IBRNRG1 ,IDCDRG1: String;IDNORG1:INTEGER; PRC:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtRG1GetByNo do
   begin

    ParamByName('IYARRG1').AsInteger := IYARRG1;
    ParamByName('IPRDRG1').AsInteger := IPRDRG1;
    ParamByName('ICMPRG1').AsString := ICMPRG1;
    ParamByName('IBRNRG1').AsString := IBRNRG1;
    ParamByName('IDCDRG1').AsString := IDCDRG1;
    ParamByName('IDNORG1').AsInteger := IDNORG1;
    ParamByName('PRC').AsString := PRC;

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

function TDSRegistation.TtRG1InsUpd(CMPRG1  :String; BRNRG1  :String;
  YARRG1  :Integer; PRDRG1  :Integer; DCDRG1  :String; DNORG1  :Integer; SEQRG1  :Integer;
  IDTRG1  :Double; RDCRG1  :String; RDNRG1  :Integer; RSQRG1  :Integer; RDTRG1  :Double;
  DEPRG1  :String; EDTRG1  :DOUBLE; VNORG1  :String;
  TYPRG1  :String;ARSRG1  :Double; REFNO :STRING;ENTUSR :STRING): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_RGTT_RG1_INS_UPD (' +
        ':CMPRG1,:BRNRG1,:YARRG1,:PRDRG1,:DCDRG1,:DNORG1,:SEQRG1,:IDTRG1,:RDCRG1, ' +
        ':RDNRG1,:RSQRG1,:RDTRG1,:DEPRG1,:EDTRG1,:VNORG1,:TYPRG1,' +
        ':ARSRG1,:REFNO,:ENTUSR)';

        ParamByName('CMPRG1').AsString := CMPRG1;
        ParamByName('BRNRG1').AsString := BRNRG1;
        ParamByName('YARRG1').AsInteger := YARRG1;
        ParamByName('PRDRG1').AsInteger := PRDRG1;
        ParamByName('DCDRG1').AsString := DCDRG1;
        ParamByName('DNORG1').AsInteger := DNORG1;
        ParamByName('SEQRG1').AsInteger := SEQRG1;
        SetDateParamValue(ParamByName('IDTRG1'), IDTRG1);
        ParamByName('RDCRG1').AsString := RDCRG1;
        ParamByName('RDNRG1').AsInteger := RDNRG1;
        ParamByName('RSQRG1').AsInteger := RSQRG1;
        SetDateParamValue(ParamByName('RDTRG1'), RDTRG1);
        ParamByName('DEPRG1').AsString := DEPRG1;
        SetDateParamValue(ParamByName('EDTRG1'), EDTRG1);
        ParamByName('VNORG1').AsString := VNORG1;
        ParamByName('TYPRG1').AsString := TYPRG1;
        ParamByName('ARSRG1').AsFloat := ARSRG1;
        ParamByName('REFNO').AsString := REFNO;
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

function TDSRegistation.TtRG1Del(YARRG1, PRDRG1:integer;CMPRG1,BRNRG1,DCDRG1:STRING;DNORG1:Integer;ENTUSR:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_RGTT_RG1_DEL (' +
          ':YARRG1,:PRDRG1,:CMPRG1,:BRNRG1,:DCDRG1,:DNORG1,:ENTUSR)';

        ParamByName('YARRG1').AsInteger := YARRG1;
        ParamByName('PRDRG1').AsInteger := PRDRG1;
        ParamByName('CMPRG1').AsString := CMPRG1;
        ParamByName('BRNRG1').AsString := BRNRG1;
        ParamByName('DCDRG1').AsString := DCDRG1;
        ParamByName('DNORG1').AsInteger := DNORG1;
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

function TDSRegistation.TtRG2GetList(CRITERIA,ORDERFIELD:String;ICMPRG2,IBRNRG2 ,IDEPRG2,IDCDRG2: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtRG2GetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMPRG2').AsString := ICMPRG2;
    ParamByName('IBRNRG2').AsString := IBRNRG2;
    ParamByName('IDEPRG2').AsString := IDEPRG2;
    ParamByName('IDCDRG2').AsString := IDCDRG2;
    setDateParamValue(ParamByName('IFRMDATE'), IFRMDATE);
    setDateParamValue(ParamByName('ITODATE'), ITODATE);
    ParamByName('FG').AsString := FG;
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


function TDSRegistation.TtRG2GetByNo(IYARRG2,IPRDRG2:integer;ICMPRG2,IBRNRG2 ,IDCDRG2: String;IDNORG2:INTEGER; PRC:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtRG2GetByNo do
   begin

    ParamByName('IYARRG2').AsInteger := IYARRG2;
    ParamByName('IPRDRG2').AsInteger := IPRDRG2;
    ParamByName('ICMPRG2').AsString := ICMPRG2;
    ParamByName('IBRNRG2').AsString := IBRNRG2;
    ParamByName('IDCDRG2').AsString := IDCDRG2;
    ParamByName('IDNORG2').AsInteger := IDNORG2;
    ParamByName('PRC').AsString := PRC;

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

function TDSRegistation.TtRG2InsUpd(CMPRG2  :String; BRNRG2  :String;
      YARRG2  :Integer; PRDRG2  :Integer; DCDRG2  :String; DNORG2  :Integer; SEQRG2  :Integer;
      IDTRG2  :Double; RDCRG2  :String; RDNRG2  :Integer; RSQRG2  :Integer; RDTRG2  :Double;
      DEPRG2  :String; EDTRG2,BDTRG2  :DOUBLE; VNORG2  :String;
      TYPRG2  :String;ARSRG2  :Double; REFNO ,SEROM5 :STRING;
      PRVRG2,REGRG2: string; RENRG2 :integer; RVDRG2 :double;RVNRG2 :integer;ARARG2,AOARG2 :double;
      ENTUSR :STRING): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2

  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_RGTT_RG2_INS_UPD (' +
        ':CMPRG2,:BRNRG2,:YARRG2,:PRDRG2,:DCDRG2,:DNORG2,:SEQRG2,:IDTRG2,:RDCRG2, ' +
        ':RDNRG2,:RSQRG2,:RDTRG2,:DEPRG2,:EDTRG2,:BDTRG2,:VNORG2,:TYPRG2,' +
        ':ARSRG2,:REFNO,:SEROM5,:PRVRG2,:REGRG2,:RENRG2,:RVDRG2,:RVNRG2,:ARARG2,:AOARG2,:ENTUSR)';

        ParamByName('CMPRG2').AsString := CMPRG2;
        ParamByName('BRNRG2').AsString := BRNRG2;
        ParamByName('YARRG2').AsInteger := YARRG2;
        ParamByName('PRDRG2').AsInteger := PRDRG2;
        ParamByName('DCDRG2').AsString := DCDRG2;
        ParamByName('DNORG2').AsInteger := DNORG2;
        ParamByName('SEQRG2').AsInteger := SEQRG2;
        SetDateParamValue(ParamByName('IDTRG2'), IDTRG2);
        ParamByName('RDCRG2').AsString := RDCRG2;
        ParamByName('RDNRG2').AsInteger := RDNRG2;
        ParamByName('RSQRG2').AsInteger := RSQRG2;
        SetDateParamValue(ParamByName('RDTRG2'), RDTRG2);
        ParamByName('DEPRG2').AsString := DEPRG2;
        SetDateParamValue(ParamByName('EDTRG2'), EDTRG2);
        SetDateParamValue(ParamByName('BDTRG2'), BDTRG2);
        ParamByName('VNORG2').AsString := VNORG2;
        ParamByName('TYPRG2').AsString := TYPRG2;
        ParamByName('ARSRG2').AsFloat := ARSRG2;
        ParamByName('REFNO').AsString := REFNO;
        ParamByName('SEROM5').AsString := SEROM5;
        ParamByName('PRVRG2').AsString := PRVRG2;
        ParamByName('REGRG2').AsString := REGRG2;
        ParamByName('RENRG2').AsInteger := RENRG2;
        SetDateParamValue(ParamByName('RVDRG2'), RVDRG2);
        ParamByName('RVNRG2').AsInteger := RVNRG2;
        ParamByName('ARARG2').AsFloat := ARARG2;
        ParamByName('AOARG2').AsFloat := AOARG2;
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

function TDSRegistation.TtRG2Del(YARRG2, PRDRG2:integer;CMPRG2,BRNRG2,DCDRG2:STRING;DNORG2:Integer;ENTUSR:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_RGTT_RG2_DEL (' +
          ':YARRG2,:PRDRG2,:CMPRG2,:BRNRG2,:DCDRG2,:DNORG2,:ENTUSR)';

        ParamByName('YARRG2').AsInteger := YARRG2;
        ParamByName('PRDRG2').AsInteger := PRDRG2;
        ParamByName('CMPRG2').AsString := CMPRG2;
        ParamByName('BRNRG2').AsString := BRNRG2;
        ParamByName('DCDRG2').AsString := DCDRG2;
        ParamByName('DNORG2').AsInteger := DNORG2;
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

function TDSRegistation.TtRG2BookGetList(CRITERIA,ORDERFIELD:String;ICMPRG2,IBRNRG2 ,IDEPRG2,IDCDRG2: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtRG2BookGetList do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMPRG2').AsString := ICMPRG2;
    ParamByName('IBRNRG2').AsString := IBRNRG2;
    ParamByName('IDEPRG2').AsString := IDEPRG2;
    ParamByName('IDCDRG2').AsString := IDCDRG2;
    setDateParamValue(ParamByName('IFRMDATE'), IFRMDATE);
    setDateParamValue(ParamByName('ITODATE'), ITODATE);
    ParamByName('FG').AsString := FG;
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

function TDSRegistation.TtRG2BookInsUpd(YARRG2, PRDRG2:integer;CMPRG2,BRNRG2,DCDRG2:STRING;DNORG2,SEQRG2:Integer;BRDRG2:DOUBLE;ENTUSR:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_RGTT_RG2_BOOK_INS_UPD (' +
          ':YARRG2,:PRDRG2,:CMPRG2,:BRNRG2,:DCDRG2,:DNORG2,:SEQRG2,:BRDRG2,:ENTUSR)';

        ParamByName('YARRG2').AsInteger := YARRG2;
        ParamByName('PRDRG2').AsInteger := PRDRG2;
        ParamByName('CMPRG2').AsString := CMPRG2;
        ParamByName('BRNRG2').AsString := BRNRG2;
        ParamByName('DCDRG2').AsString := DCDRG2;
        ParamByName('DNORG2').AsInteger := DNORG2;
        ParamByName('SEQRG2').AsInteger := SEQRG2;
        setDateParamValue(ParamByName('BRDRG2'), BRDRG2);
        ParamByName('ENTUSR').AsString := ENTUSR;

//        BRTRG2  IS RECEIVE DATE BOOK

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

function TDSRegistation.TtRG2BookDel(YARRG2, PRDRG2:integer;CMPRG2,BRNRG2,DCDRG2:STRING;DNORG2,SEQRG2:Integer;BRDRG2:DOUBLE;ENTUSR:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_RGTT_RG2_BOOK_DEL (' +
          ':YARRG2,:PRDRG2,:CMPRG2,:BRNRG2,:DCDRG2,:DNORG2,:SEQRG2,:BRDRG2,:ENTUSR)';

        ParamByName('YARRG2').AsInteger := YARRG2;
        ParamByName('PRDRG2').AsInteger := PRDRG2;
        ParamByName('CMPRG2').AsString := CMPRG2;
        ParamByName('BRNRG2').AsString := BRNRG2;
        ParamByName('DCDRG2').AsString := DCDRG2;
        ParamByName('DNORG2').AsInteger := DNORG2;
        ParamByName('SEQRG2').AsInteger := SEQRG2;
        setDateParamValue(ParamByName('BRDRG2'), BRDRG2);

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

end.
