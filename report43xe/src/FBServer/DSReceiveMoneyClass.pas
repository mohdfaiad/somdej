unit DSReceiveMoneyClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DSMainClass, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider,DSServerConstant, DSSetupClass;

type
  TDSReceiveMoney = class(TDSMain)
    dsTtRcvGet: TSQLQuery;
    dspTtRcvGet: TDataSetProvider;
    dsTtRcvGetAm4: TSQLQuery;
    dspTtRcvGetAm4: TDataSetProvider;
    dspTtRcvGetRt4: TDataSetProvider;
    dsTtRcvGetRt4: TSQLQuery;
  private
    { Private declarations }
  public

    function TtRcvGet(CRITERIA,ORDERFIELD:String;ICMPRt4,IBRNRt4 ,IDEPRT4,IDCDRt4: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
    function TtRcvGetAm4(IYARAM4:integer;ICMPAM4,IBRNAM4 ,IDCDAM4: String;ICTYAM4 :string; ICNOAM4:LargeInt;FG:STRING): Boolean;
    function TtRcvGetRt4(IYARRt4,IPRDRT4:integer;ICMPRt4,IBRNRt4 ,IDCDRt4: String;IDNORT4:INTEGER;FG:STRING): Boolean;

    function TtRcvInsUpd(CMPRT4  :String; BRNRT4  :String;
      YARRT4  :Integer; PRDRT4  :Integer; DCDRT4  :String; DNORT4  :Integer; SEQRT4  :Integer;
      IDTRT4  :Double; RDCRT4  :String; RDNRT4  :Integer; RSQRT4  :Integer; RDTRT4  :Double;
      RTPRT4  :String; DEPRT4  :String; CTYRT4  :String; CNORT4  :LargeInt; PTPRT4  :String;
      TYPRT4  :String;AMTRT4  :Double;BCMRT4  :String;PINRT4  :String;BAKRT4  :String;
      BBRRT4  :String;NOTRT4  :String;DDTRT4  :Double;MEMRT4  :String;
      REGRT7  :STRING;RENRT7: INTEGER; PRVRT7, ENTUSR :STRING): Boolean;
    function TtRcvDel(YARRt4, PRDRT4:integer;CMPRt4,BRNRt4,DCDRt4:STRING;DNORt4:Integer;ENTUSR:STRING):Boolean;

  end;

var
  DSReceiveMoney: TDSReceiveMoney;

implementation

{$R *.dfm}

function TDSReceiveMoney.TtRcvGet(CRITERIA,ORDERFIELD:String;ICMPRt4,IBRNRt4 ,IDEPRT4,IDCDRt4: String;IFRMDATE,ITODATE:Double;FG: STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTRcvGet do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('ICMPRt4').AsString := ICMPRt4;
    ParamByName('IBRNRt4').AsString := IBRNRt4;
    ParamByName('IDEPRT4').AsString := IDEPRT4;
    ParamByName('IDCDRt4').AsString := IDCDRt4;
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

function TDSReceiveMoney.TtRcvGetAm4(IYARAM4:integer;ICMPAM4,IBRNAM4 ,IDCDAM4: String;ICTYAM4 :string; ICNOAM4:LargeInt;FG:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtRcvGetAm4 do
   begin

    ParamByName('IYARAM4').AsInteger := IYARAM4;
    ParamByName('ICMPAM4').AsString := ICMPAM4;
    ParamByName('IBRNAM4').AsString := IBRNAM4;
    ParamByName('IDCDAM4').AsString := IDCDAM4;
    ParamByName('ICTYAM4').AsString := ICTYAM4;
    ParamByName('ICNOAM4').AsLargeInt := ICNOAM4;
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

function TDSReceiveMoney.TtRcvGetRt4(IYARRt4,IPRDRT4:integer;ICMPRt4,IBRNRt4 ,IDCDRt4: String;IDNORT4:INTEGER;FG:STRING): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTtRcvGetRt4 do
   begin

    ParamByName('IYARRT4').AsInteger := IYARRT4;
    ParamByName('IPRDRT4').AsInteger := IPRDRT4;
    ParamByName('ICMPRT4').AsString := ICMPRT4;
    ParamByName('IBRNRT4').AsString := IBRNRT4;
    ParamByName('IDCDRT4').AsString := IDCDRT4;
    ParamByName('IDNORT4').AsInteger := IDNORT4;
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




function TDSReceiveMoney.TtRcvInsUpd(CMPRT4  :String; BRNRT4  :String;
  YARRT4  :Integer; PRDRT4  :Integer; DCDRT4  :String; DNORT4  :Integer; SEQRT4  :Integer;
  IDTRT4  :Double; RDCRT4  :String; RDNRT4  :Integer; RSQRT4  :Integer; RDTRT4  :Double;
  RTPRT4  :String; DEPRT4  :String; CTYRT4  :String; CNORT4  :LargeInt; PTPRT4  :String;
  TYPRT4  :String;AMTRT4  :Double;BCMRT4  :String;PINRT4  :String;BAKRT4  :String;
  BBRRT4  :String;NOTRT4  :String;DDTRT4  :Double;MEMRT4  :String;
  REGRT7  :STRING;RENRT7: INTEGER; PRVRT7, ENTUSR : STRING): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_RMTT_RCV_INS_UPD (' +
        ':CMPRT4,:BRNRT4,:YARRT4,:PRDRT4,:DCDRT4,:DNORT4,:SEQRT4,:IDTRT4,:RDCRT4, ' +
        ':RDNRT4,:RSQRT4,:RDTRT4,:RTPRT4,:DEPRT4,:CTYRT4,:CNORT4,:PTPRT4,:TYPRT4,' +
        ':AMTRT4,:BCMRT4,:PINRT4,:BAKRT4,:BBRRT4,:NOTRT4,:DDTRT4,:MEMRT4,' +
        ':REGRT7,:RENRT7,:PRVRT7,:ENTUSR)';

        ParamByName('CMPRT4').AsString := CMPRT4;
        ParamByName('BRNRT4').AsString := BRNRT4;
        ParamByName('YARRT4').AsInteger := YARRT4;
        ParamByName('PRDRT4').AsInteger := PRDRT4;
        ParamByName('DCDRT4').AsString := DCDRT4;
        ParamByName('DNORT4').AsInteger := DNORT4;
        ParamByName('SEQRT4').AsInteger := SEQRT4;
        SetDateParamValue(ParamByName('IDTRT4'), IDTRT4);
        ParamByName('RDCRT4').AsString := RDCRT4;
        ParamByName('RDNRT4').AsInteger := RDNRT4;
        ParamByName('RSQRT4').AsInteger := RSQRT4;
        SetDateParamValue(ParamByName('RDTRT4'), RDTRT4);
        ParamByName('RTPRT4').AsString := RTPRT4;
        ParamByName('DEPRT4').AsString := DEPRT4;
        ParamByName('CTYRT4').AsString := CTYRT4;
        ParamByName('CNORT4').AsLargeInt := CNORT4;
        ParamByName('PTPRT4').AsString := PTPRT4;
        ParamByName('TYPRT4').AsString := TYPRT4;
        ParamByName('AMTRT4').AsFloat := AMTRT4;
        ParamByName('BCMRT4').AsString := BCMRT4;
        ParamByName('PINRT4').AsString := PINRT4;
        ParamByName('BAKRT4').AsString := BAKRT4;
        ParamByName('BBRRT4').AsString := BBRRT4;
        ParamByName('NOTRT4').AsString := NOTRT4;
        SetDateParamValue(ParamByName('DDTRT4'), DDTRT4);
        ParamByName('MEMRT4').AsString := MEMRT4;
        ParamByName('REGRT7').AsString := REGRT7;
        ParamByName('RENRT7').AsInteger := RENRT7;
        ParamByName('PRVRT7').AsString := PRVRT7;
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

function TDSReceiveMoney.TtRcvDel(YARRt4, PRDRT4:integer;CMPRt4,BRNRt4,DCDRt4:STRING;DNORt4:Integer;ENTUSR:STRING):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_RMTT_RCV_GET_DEL (' +
          ':YARRt4,:PRDRT4,:CMPRt4,:BRNRt4,:DCDRt4,:DNORt4,:ENTUSR)';

        ParamByName('YARRt4').AsInteger := YARRt4;
        ParamByName('PRDRT4').AsInteger := PRDRT4;
        ParamByName('CMPRt4').AsString := CMPRt4;
        ParamByName('BRNRt4').AsString := BRNRt4;
        ParamByName('DCDRt4').AsString := DCDRt4;
        ParamByName('DNORt4').AsInteger := DNORt4;
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
