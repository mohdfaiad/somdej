unit DSPurchaseClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DSMainClass, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider,DSServerConstant, DSSetupClass;

type
  TDSPurchase = class(TDSMain)
    dsTTPt1Get: TSQLQuery;
    dspTTPt1Get: TDataSetProvider;
    dsTTAd2GetSrs: TSQLQuery;
    pdsTTAd2GetSrs: TDataSetProvider;
    dsTTAd2GetItn: TSQLQuery;
    pdsTTAd2GetItn: TDataSetProvider;
    dsTTAd2GetCol: TSQLQuery;
    pdsTTAd2GetCol: TDataSetProvider;
    dsTTAd2GetByDno: TSQLQuery;
    pdsTTAd2GetByDno: TDataSetProvider;
    dsTTAd2GetDno: TSQLQuery;
    pdsTTAd2GetDno: TDataSetProvider;
    dsTTPtXGet: TSQLQuery;
    pdsTTPtXGet: TDataSetProvider;
  private
    { Private declarations }
  public

    function TtPt1Get(CRITERIA,ORDERFIELD:String;IYARPT1:integer;ICMPPT1,IBRNPT1 ,IDCDPT1: String): Boolean;
    function TtPt1InsUpd(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;
              SEQPT1:integer;IDTPT1:double;DEPPT1,VNOPT1:string;
              CRTPT1:integer;RNOPT1:string;RDVPT1:double;RATPT1:double;VTPPT1,VATPT1:string;
              VPCPT1,VAMPT1:double;VTEPT1,SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1:string;
              QR1PT1:integer;FWHPT1:string;DDTPT1:double;ENTUSR:string;MD:string; var out_dnopt1:string): Boolean;
    function TtPt1Del(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;SEQPT1:integer):Boolean;


    //========== รับรถ จาก Assign week ออก Start =================
    function TT_AD2_GET_DNO(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER) : Boolean;
    function TT_AD2_GET_SRS(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;IDCDAD1 : STRING;IDNOAD1 : INTEGER) : Boolean;
    function TT_AD2_GET_ITN(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;IDCDAD1 : STRING;IDNOAD1 : INTEGER) : Boolean;
    function TT_AD2_GET_COL(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;IDCDAD1 : STRING;IDNOAD1 : INTEGER) : Boolean;

    function TT_AD2_GET_BY_DNO(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;
      IDCDAD1 : STRING;IDNOAD1 : INTEGER; IRDNAD2 : STRING) : Boolean;

    function TtAd2InsUpd(
      cmpad2, brnad2 :string; yarad2, prdad2 :integer;
      dcdad2 :string; dnoad2 , seqad2 , ssbad2 :integer;
      isdad2 : double; itnad1,colad1 :String; qt1ad2 , qt2ad2 : integer;
      serad2 , engad2 :string;  rdnad2 : String; entusr : string): Boolean;

    function TtPtXInsUpd(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;
              SEQPT1:integer;IDTPT1:double;DEPPT1,VNOPT1:string;
              CRTPT1:integer;RNOPT1:string;RDVPT1:double;RATPT1:double;VTPPT1,VATPT1:string;
              VPCPT1,VAMPT1:double;VTEPT1,SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1:string;
              QR1PT1:integer;FWHPT1:string;DDTPT1:double;ENTUSR:string;MD:string; var out_dnopt1:string): Boolean;

    function TtPtX2InsUpd(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;
              SEQPT1:integer;IDTPT1:double;DEPPT1,VNOPT1:string;
              CRTPT1:integer;RNOPT1:string;RDVPT1:double;RATPT1:double;VTPPT1,VATPT1:string;
              VPCPT1,VAMPT1:double;VTEPT1,SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1:string;
              QR1PT1:integer;FWHPT1:string;DDTPT1:double;ENTUSR:string;MD:string): Boolean;

    function TtPtXGet(CRITERIA,ORDERFIELD:String;IYARPT1:integer;ICMPPT1,IBRNPT1 ,IDCDPT1: String): Boolean;
    //========== รับรถ จาก Assign week ออก End   =================

  end;

var
  DSPurchase: TDSPurchase;

implementation

{$R *.dfm}

function TDSPurchase.TtPt1Get(CRITERIA,ORDERFIELD:String;IYARPT1:integer;ICMPPT1,IBRNPT1 ,IDCDPT1: String): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTPt1Get do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('IYAR').AsInteger := IYARPT1;
    ParamByName('ICMP').AsString := ICMPPT1;
    ParamByName('IBRN').AsString := IBRNPT1;
    ParamByName('IDCD').AsString := IDCDPT1;
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

function TDSPurchase.TtPt1InsUpd(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;
          SEQPT1:integer;IDTPT1:double;DEPPT1,VNOPT1:string;
          CRTPT1:integer;RNOPT1:string;RDVPT1:double;RATPT1:double;VTPPT1,VATPT1:string;
          VPCPT1,VAMPT1:double;VTEPT1,SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1:string;
          QR1PT1:integer;FWHPT1:string;DDTPT1:double;ENTUSR:string;MD:string; var out_dnopt1:string): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT,OUT_DNOPT1 FROM SP_PSTT_PT1_INS_UPD (' +
        ':YARPT1,:CMPPT1,:BRNPT1,:DCDPT1,:DNOPT1,:SEQPT1,:IDTPT1,:DEPPT1,:VNOPT1,' +
        ':CRTPT1,:RNOPT1,:RDVPT1,:RATPT1,:VTPPT1,:VATPT1,:VPCPT1,:VAMPT1,:VTEPT1,' +
        ':SRSPT1,:ITNPT1,:COLPT1,:SERPT1,:ENGPT1,:QR1PT1,:FWHPT1,:DDTPT1,:ENTUSR,:MD)';

        ParamByName('YARPT1').AsInteger := YARPT1;
        ParamByName('CMPPT1').AsString := CMPPT1;
        ParamByName('BRNPT1').AsString := BRNPT1;
        ParamByName('DCDPT1').AsString := DCDPT1;
        ParamByName('DNOPT1').AsString := DNOPT1;
        ParamByName('SEQPT1').AsInteger := SEQPT1;
        SetDateParamValue(ParamByName('IDTPT1'), IDTPT1);
        ParamByName('DEPPT1').AsString := DEPPT1;
        ParamByName('VNOPT1').AsString := VNOPT1;
        ParamByName('CRTPT1').AsInteger := CRTPT1;
        ParamByName('RNOPT1').AsString := RNOPT1;
        SetDateParamValue(ParamByName('RDVPT1'), RDVPT1);
        ParamByName('RATPT1').AsFloat := RATPT1;
        ParamByName('VTPPT1').AsString := VTPPT1;
        ParamByName('VATPT1').AsString := VATPT1;
        ParamByName('VPCPT1').AsFloat := VPCPT1;
        ParamByName('VAMPT1').AsFloat := VAMPT1;
        ParamByName('VTEPT1').AsString := VTEPT1;
        ParamByName('SRSPT1').AsString := SRSPT1;
        ParamByName('ITNPT1').AsString := ITNPT1;
        ParamByName('COLPT1').AsString := COLPT1;
        ParamByName('SERPT1').AsString := SERPT1;
        ParamByName('ENGPT1').AsString := ENGPT1;
        ParamByName('QR1PT1').AsInteger := QR1PT1;
        ParamByName('FWHPT1').AsString := FWHPT1;
        SetDateParamValue(ParamByName('DDTPT1'), DDTPT1);
        ParamByName('ENTUSR').AsString := ENTUSR;
        ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
        out_dnopt1 := FieldByName('OUT_DNOPT1').AsString;
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

function TDSPurchase.TtPt1Del(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;SEQPT1:integer):Boolean;
begin
// VerifyLoggedIn();
//   LastErrorCode := _NO_ERROR_;
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT ' + 'FROM SP_PSTT_PT1_DEL (' +
          ':YARPT1,:CMPPT1,:BRNPT1,:DCDPT1,:DNOPT1,:SEQPT1)';

        ParamByName('YARPT1').AsInteger := YARPT1;
        ParamByName('CMPPT1').AsString := CMPPT1;
        ParamByName('BRNPT1').AsString := BRNPT1;
        ParamByName('DCDPT1').AsString := DCDPT1;
        ParamByName('DNOPT1').AsString := DNOPT1;
        ParamByName('SEQPT1').AsInteger := SEQPT1;

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

function TDSPurchase.TT_AD2_GET_DNO(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER) : Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTAd2GetDno do
   begin

    ParamByName('ICMPAD1').AsString := ICMPAD1;
    ParamByName('IBRNAD1').AsString := IBRNAD1;
    ParamByName('IYARAD1').AsInteger := IYARAD1;
    ParamByName('IPRDAD1').AsInteger := IPRDAD1;
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


function TDSPurchase.TT_AD2_GET_SRS(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;IDCDAD1 : STRING;IDNOAD1 : INTEGER) : Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTAd2GetSrs do
   begin

    ParamByName('ICMPAD1').AsString := ICMPAD1;
    ParamByName('IBRNAD1').AsString := IBRNAD1;
    ParamByName('IYARAD1').AsInteger := IYARAD1;
    ParamByName('IPRDAD1').AsInteger := IPRDAD1;
    ParamByName('IDCDAD1').AsString := IDCDAD1;
    ParamByName('IDNOAD1').AsInteger := IDNOAD1;
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

function TDSPurchase.TT_AD2_GET_ITN(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;IDCDAD1 : STRING;IDNOAD1 : INTEGER) : Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTAd2GetItn do
   begin

    ParamByName('ICMPAD1').AsString := ICMPAD1;
    ParamByName('IBRNAD1').AsString := IBRNAD1;
    ParamByName('IYARAD1').AsInteger := IYARAD1;
    ParamByName('IPRDAD1').AsInteger := IPRDAD1;
    ParamByName('IDCDAD1').AsString := IDCDAD1;
    ParamByName('IDNOAD1').AsInteger := IDNOAD1;
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

function TDSPurchase.TT_AD2_GET_COL(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;IDCDAD1 : STRING;IDNOAD1 : INTEGER) : Boolean;
begin

//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTAd2GetCol do
   begin

    ParamByName('ICMPAD1').AsString := ICMPAD1;
    ParamByName('IBRNAD1').AsString := IBRNAD1;
    ParamByName('IYARAD1').AsInteger := IYARAD1;
    ParamByName('IPRDAD1').AsInteger := IPRDAD1;
    ParamByName('IDCDAD1').AsString := IDCDAD1;
    ParamByName('IDNOAD1').AsInteger := IDNOAD1;
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

function TDSPurchase.TT_AD2_GET_BY_DNO(ICMPAD1 ,IBRNAD1: STRING; IYARAD1,IPRDAD1: INTEGER;
  IDCDAD1 : STRING;IDNOAD1 : INTEGER; IRDNAD2 : STRING) : Boolean;
begin
 // ดึงค่าหลังจากบันทึกแล้ว เพื่อมาดูหรือแก้ไข ใบรับรถ
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTAd2GetByDno do
   begin

    ParamByName('ICMPAD1').AsString := ICMPAD1;
    ParamByName('IBRNAD1').AsString := IBRNAD1;
    ParamByName('IYARAD1').AsInteger := IYARAD1;
    ParamByName('IPRDAD1').AsInteger := IPRDAD1;
    ParamByName('IDCDAD1').AsString := IDCDAD1;
    ParamByName('IDNOAD1').AsInteger := IDNOAD1;
    ParamByName('IRDNAD2').AsString := IRDNAD2;
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

function TDSPurchase.TtAd2InsUpd(
    cmpad2, brnad2 :string; yarad2, prdad2 :integer;
    dcdad2 :string; dnoad2 , seqad2 , ssbad2 :integer;
    isdad2 : double; itnad1,colad1 :String; qt1ad2 , qt2ad2 : integer;
    serad2 , engad2 :string;  rdnad2 : String; entusr : string): Boolean;
begin

//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_AWTT_AD2_INS_UPD (' +
        ':cmpad2,:brnad2,:yarad2,:prdad2,:dcdad2,' +
        ':dnoad2,:seqad2,:ssbad2,:isdad2,:itnad1,:colad1,:qt1ad2,:qt2ad2,' +
        ':serad2,:engad2,:rdnad2,:entusr)';

        ParamByName('cmpad2').AsString := cmpad2;
        ParamByName('brnad2').AsString := brnad2;
        ParamByName('yarad2').AsInteger := yarad2;
        ParamByName('prdad2').AsInteger := prdad2;
        ParamByName('dcdad2').AsString := dcdad2;
        ParamByName('dnoad2').AsInteger := dnoad2;
        ParamByName('seqad2').AsInteger := seqad2;
        ParamByName('ssbad2').AsInteger := ssbad2;
        SetDateParamValue(ParamByName('isdad2'), isdad2);
        ParamByName('itnad1').AsString := itnad1;
        ParamByName('colad1').AsString := colad1;

        ParamByName('qt1ad2').AsFloat := qt1ad2;
        ParamByName('qt2ad2').AsFloat := qt2ad2;
        ParamByName('serad2').AsString := serad2;
        ParamByName('engad2').AsString := engad2;
        ParamByName('rdnad2').AsString := rdnad2;
        ParamByName('entusr').AsString := entusr;

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

function TDSPurchase.TtPtXInsUpd(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;
          SEQPT1:integer;IDTPT1:double;DEPPT1,VNOPT1:string;
          CRTPT1:integer;RNOPT1:string;RDVPT1:double;RATPT1:double;VTPPT1,VATPT1:string;
          VPCPT1,VAMPT1:double;VTEPT1,SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1:string;
          QR1PT1:integer;FWHPT1:string;DDTPT1:double;ENTUSR:string;MD:string; var out_dnopt1:string): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT,OUT_DNOPT1 FROM SP_PSTT_PTX_INS_UPD (' +
        ':YARPT1,:CMPPT1,:BRNPT1,:DCDPT1,:DNOPT1,:SEQPT1,:IDTPT1,:DEPPT1,:VNOPT1,' +
        ':CRTPT1,:RNOPT1,:RDVPT1,:RATPT1,:VTPPT1,:VATPT1,:VPCPT1,:VAMPT1,:VTEPT1,' +
        ':SRSPT1,:ITNPT1,:COLPT1,:SERPT1,:ENGPT1,:QR1PT1,:FWHPT1,:DDTPT1,:ENTUSR,:MD)';

        ParamByName('YARPT1').AsInteger := YARPT1;
        ParamByName('CMPPT1').AsString := CMPPT1;
        ParamByName('BRNPT1').AsString := BRNPT1;
        ParamByName('DCDPT1').AsString := DCDPT1;
        ParamByName('DNOPT1').AsString := DNOPT1;
        ParamByName('SEQPT1').AsInteger := SEQPT1;
        SetDateParamValue(ParamByName('IDTPT1'), IDTPT1);
        ParamByName('DEPPT1').AsString := DEPPT1;
        ParamByName('VNOPT1').AsString := VNOPT1;
        ParamByName('CRTPT1').AsInteger := CRTPT1;
        ParamByName('RNOPT1').AsString := RNOPT1;
        SetDateParamValue(ParamByName('RDVPT1'), RDVPT1);
        ParamByName('RATPT1').AsFloat := RATPT1;
        ParamByName('VTPPT1').AsString := VTPPT1;
        ParamByName('VATPT1').AsString := VATPT1;
        ParamByName('VPCPT1').AsFloat := VPCPT1;
        ParamByName('VAMPT1').AsFloat := VAMPT1;
        ParamByName('VTEPT1').AsString := VTEPT1;
        ParamByName('SRSPT1').AsString := SRSPT1;
        ParamByName('ITNPT1').AsString := ITNPT1;
        ParamByName('COLPT1').AsString := COLPT1;
        ParamByName('SERPT1').AsString := SERPT1;
        ParamByName('ENGPT1').AsString := ENGPT1;
        ParamByName('QR1PT1').AsInteger := QR1PT1;
        ParamByName('FWHPT1').AsString := FWHPT1;
        SetDateParamValue(ParamByName('DDTPT1'), DDTPT1);
        ParamByName('ENTUSR').AsString := ENTUSR;
        ParamByName('MD').AsString := MD;

        Open();
        Result := (FieldByName('result').AsInteger = 0);
        out_dnopt1 := FieldByName('OUT_DNOPT1').AsString;
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

function TDSPurchase.TtPtX2InsUpd(YARPT1:integer;CMPPT1,BRNPT1,DCDPT1,DNOPT1:string;
          SEQPT1:integer;IDTPT1:double;DEPPT1,VNOPT1:string;
          CRTPT1:integer;RNOPT1:string;RDVPT1:double;RATPT1:double;VTPPT1,VATPT1:string;
          VPCPT1,VAMPT1:double;VTEPT1,SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1:string;
          QR1PT1:integer;FWHPT1:string;DDTPT1:double;ENTUSR:string;MD:string): Boolean;
begin
//  VerifyLoggedIn();
   LastErrorCode := _NO_ERROR_;

  // USE NAME BG2 BUT USE WITH BG1 AND BG2
  try
    with TSQLQuery.Create(Self) do
      try
        SQLConnection := Inherited SQLConnection; BeforeOpen := DataSetBeforeOpen;
        SQL.Text := 'SELECT  RESULT FROM SP_PSTT_PTX2_INS_UPD (' +
        ':yarpt1,:cmppt1,:brnpt1,:dcdpt1,:dnopt1,:seqpt1,:idtpt1,' +
        ':deppt1,:vnopt1,:crtpt1,:rnopt1,:rdvpt1,:ratpt1,:vtppt1,:vatpt1,' +
        ':vpcpt1,:vampt1,:vtept1,:srspt1,:itnpt1,:colpt1,:serpt1,:engpt1,' +
        ':qr1pt1,:fwhpt1,:ddtpt1,:entusr,:md)';

        ParamByName('YARPT1').AsInteger := YARPT1;
        ParamByName('CMPPT1').AsString := CMPPT1;
        ParamByName('BRNPT1').AsString := BRNPT1;
        ParamByName('DCDPT1').AsString := DCDPT1;
        ParamByName('DNOPT1').AsString := DNOPT1;
        ParamByName('SEQPT1').AsInteger := SEQPT1;
        SetDateParamValue(ParamByName('IDTPT1'), IDTPT1);
        ParamByName('DEPPT1').AsString := DEPPT1;
        ParamByName('VNOPT1').AsString := VNOPT1;
        ParamByName('CRTPT1').AsInteger := CRTPT1;
        ParamByName('RNOPT1').AsString := RNOPT1;
        SetDateParamValue(ParamByName('RDVPT1'), RDVPT1);
        ParamByName('RATPT1').AsFloat := RATPT1;
        ParamByName('VTPPT1').AsString := VTPPT1;
        ParamByName('VATPT1').AsString := VATPT1;
        ParamByName('VPCPT1').AsFloat := VPCPT1;
        ParamByName('VAMPT1').AsFloat := VAMPT1;
        ParamByName('VTEPT1').AsString := VTEPT1;
        ParamByName('SRSPT1').AsString := SRSPT1;
        ParamByName('ITNPT1').AsString := ITNPT1;
        ParamByName('COLPT1').AsString := COLPT1;
        ParamByName('SERPT1').AsString := SERPT1;
        ParamByName('ENGPT1').AsString := ENGPT1;
        ParamByName('QR1PT1').AsInteger := QR1PT1;
        ParamByName('FWHPT1').AsString := FWHPT1;
        SetDateParamValue(ParamByName('DDTPT1'), DDTPT1);
        ParamByName('ENTUSR').AsString := ENTUSR;
        ParamByName('MD').AsString := MD;

        WriteLog('RNOPT1=' + RNOPT1);

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

function TDSPurchase.TtPtXGet(CRITERIA,ORDERFIELD:String;IYARPT1:integer;ICMPPT1,IBRNPT1 ,IDCDPT1: String): Boolean;
begin
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsTTPtXGet do
   begin

    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('IYAR').AsInteger := IYARPT1;
    ParamByName('ICMP').AsString := ICMPPT1;
    ParamByName('IBRN').AsString := IBRNPT1;
    ParamByName('IDCD').AsString := IDCDPT1;
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


end.
