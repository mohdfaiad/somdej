unit DSSetupIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSSetupClient = class(TDSMainClient)
  private
    FStAccGetCommand: TDBXCommand;
    FHisSamUpdateCommand:TDBXCommand;
    FSt43ServiceGetCommand: TDBXCommand;
    FSt43ServiceInsUpdCommand: TDBXCommand;
    FHisInsUpdReport43PersonCommand:TDBXCommand;


    FStCidGetCommand: TDBXCommand;
    FStCidInsUpdCommand: TDBXCommand;
    FStCidDelCommand: TDBXCommand;

    FStNb1GetCommand: TDBXCommand;
    FStNb1BrnGenDocCommand: TDBXCommand;
    FStNB1InsUpdCommand: TDBXCommand;
    FStNb1DelCommand: TDBXCommand;

    FStVm1GetCommand: TDBXCommand;
    FStVm1GetAddrCommand: TDBXCommand;
    FStVm1InsUpdCommand: TDBXCommand;
    FStVmaInsUpdCommand: TDBXCommand;
    FStVm1DelCommand: TDBXCommand;
    FStVm1GetYm3Command: TDBXCommand;

    FttYm3DelCommand: TDBXCommand;
    FttYm3InsUpdCommand: TDBXCommand;
    FStVm1GetUsedBrnCommand: TDBXCommand;

    FStCm1GetCommand: TDBXCommand;
    FStCm1GetAddrCommand: TDBXCommand;
    FStCm1InsUpdCommand: TDBXCommand;
    FStCmaInsUpdCommand: TDBXCommand;
    FStCm1DelCommand: TDBXCommand;
    FStCm1GetAm3Command: TDBXCommand;

    FttAm3DelCommand: TDBXCommand;
    FttAm3InsUpdCommand: TDBXCommand;
    FStCm1GetUsedBrnCommand: TDBXCommand;

    FStPm1GetCommand: TDBXCommand;
    FStPm1InsUpdCommand: TDBXCommand;
    FStPm1InsUpd2Command: TDBXCommand;
    FStPm1DelCommand: TDBXCommand;


    FStBgGetCommand: TDBXCommand;
    FStBgInsUpdCommand: TDBXCommand;
    FStBgInsUpd2Command: TDBXCommand;
    FStBgDelCommand: TDBXCommand;

    FStStyGetCommand: TDBXCommand;
    FStStyInsUpdCommand: TDBXCommand;
    FStStyDelCommand: TDBXCommand;

    FStShpGetCommand: TDBXCommand;
    FStShpInsUpdCommand: TDBXCommand;
    FStShpDelCommand: TDBXCommand;

    FStCm3GetCommand: TDBXCommand;
    FStCm3InsUpdCommand: TDBXCommand;
    FStCm3DelCommand: TDBXCommand;

    FStRm1GetCommand: TDBXCommand;
    FStRm1InsUpdCommand: TDBXCommand;
    FStRm1DelCommand: TDBXCommand;

    FStRegGetCommand: TDBXCommand;
    FStRegGetPm1Command: TDBXCommand;
    FStRegInsUpdCommand: TDBXCommand;
    FStRegDelCommand: TDBXCommand;

    FStAm1GetCommand: TDBXCommand;
    FStAm1InsUpdCommand: TDBXCommand;
    FStAm1DelCommand: TDBXCommand;

    FStYm1GetCommand: TDBXCommand;
    FStYm1InsUpdCommand: TDBXCommand;
    FStYm1DelCommand: TDBXCommand;

    FStZipGetCommand: TDBXCommand;

    FStPm1GetImageCommand: TDBXCommand;
    FStPm1DelImageCommand: TDBXCommand;

    FStIm2GetCommand: TDBXCommand;
    FStIm2InsUpdCommand: TDBXCommand;
    FStIm2DelCommand: TDBXCommand;

    FSTIm1GetByItnCommand: TDBXCommand;
    FStPm1GetByItcCommand: TDBXCommand;
    FStRedCardGetCommand: TDBXCommand;
    FStFg1GetListCommand: TDBXCommand;
    FStFg1GetDtlCommand: TDBXCommand;
    FStFg1DelCommand: TDBXCommand;
    FStFg1InsUpdCommand: TDBXCommand;
    FStFg1GetUsedCommand: TDBXCommand;

  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

    function StAccGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function SstmSam(msg:string):string;
    function HisGetReport43Person(PID: integer): Boolean;
    function HisGetReport43Service(PID: integer): Boolean;
    function HisSamUpdate(PID,CID,HOSPCODE, HID, PRENAME, NAME, LNAME, HN, SEX: string;BIRTH:double): Boolean;

    function HisInsUpdReport43Person(CID:string;REPORTID: integer; HOSPCODE,
      PID, HID, PRENAME, NAME, LNAME, HN, SEX: string; BIRTH: tdate; MSTATUS,
      OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION, EDUCATION,
      FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: string; MOVEIN: tdate;
      DISCHARGE: string; DDISCHARGE: tdate; ABOGROUP, RHGROUP, LABOR, PASSPORT,
      TYPEAREA: string; D_UPDATE, EXPORT_DATE: tdate): Boolean;

    function HISInsUpdPerson(CID: string; REPORTID: integer;
  HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string): Boolean;

    function SamInt():integer;



    function StCidGet(CRITERIA: string; ORDERFIELD: string; I_FMTCDE: string; I_CIDCDE: string): Boolean;
    function StCidInsUpd(STSCDE: string; FMTCDE: string; CIDCDE: string; CNOCDE: string; ENMCDE: string; TNMCDE: string; VA1CDE: Double; VA2CDE: Double; DT1CDE: Double; DT2CDE: Double; AC1CDE: string; AC2CDE: string; DESCDE: string; ABBCDE: string; ENTUSR: string): Boolean;
    function StCidDel(FMTCDE: string; CIDCDE: string; CNOCDE: string): Boolean;

    function StNb1Get(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;
    function StNb1BrnGenDoc(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string): Boolean;
    function StNB1InsUpd(STSNB1: string; CMPNB1: string; BRNNB1: string; DCDNB1: string; YARNB1: Integer; N01NB1: Integer; N02NB1: Integer; N03NB1: Integer; N04NB1: Integer; N05NB1: Integer; N06NB1: Integer; N07NB1: Integer; N08NB1: Integer; N09NB1: Integer; N10NB1: Integer; N11NB1: Integer; N12NB1: Integer; PR1NB1: string; PR2NB1: string): Boolean;
    function StNb1Del(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;

    function StVm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StVm1GetAddr(VNOVMA: string; LNKVMA: string): Boolean;
    function StVm1InsUpd(stsvm1: string; vnovm1: string; tnmvm1: string; enmvm1: string; cpsvm1: string; vtpvm1: string; accvm1: string; otpvm1: string; viavm1: string; psnvm1: string; taxvm1: string; ttxvm1: string; tpivm1: string; vpcvm1: Double; popvm1: string; papvm1: string; dopvm1: string; memvm1: string; md: string): Boolean;
    function StVmaInsUpd(vnovma: string; lnkvma: string; ta1vma: string; ta2vma: string; chgvma: string; ctyvma: string; zipvma: string; telvma: string; mobvma: string; faxvma: string; emavma: string; webvma: string): Boolean;
    function StVm1Del(VNOVM1: string): Boolean;
    function StVm1GetYm3(IVNOYM3: string): Boolean;
    function ttYm3Del(ICMPYm3: string; IBRNYm3: string; IVNOYm3: string): Boolean;
    function ttYm3InsUpd(stsYm3: string; cmpYm3: string; brnYm3: string; VnoYm3: string; crtYm3: Integer; crlYm3: Double; dsdym3: Integer; dsaym3: Double; bfiYm3: Double; minYm3: Double; mpyYm3: Double; mcmYm3: Double; mdnYm3: Double; mcnYm3: Double; majYm3: Double; mdsYm3: Double; mitYm3: Double; pdcYm3: Double; uncYm3: Double; cqrYm3: Double; adnYm3: Double; acnYm3: Double; apyYm3: Double; ypyYm3: Double; ypcYm3: Double): Boolean;
    function StVm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;

    function StCm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StCm1GetAddr(CNOCMA: string; LNKCMA: string): Boolean;
    function StCm1InsUpd(ICMPAM3: string; IBRNAM3: string; stscm1: string; typcm1: string; ctpcm1: string; cnocm1: string; tnmcm1: string; enmcm1: string; acccm1: string; taxcm1: string; cpscm1: string; ccmcm1: string; poscm1: string; ctlcm1: string; cmbcm1: string; cfacm1: string; cemcm1: string; viacm1: string; smncm1: string; pdpcm1: string; dopcm1: string; memcm1: string; md: string): Boolean;
    function StCmaInsUpd(cnocma: string; lnkcma: string; ta1cma: string; ta2cma: string; chgcma: string; ctycma: string; zipcma: string; telcma: string; mobcma: string; faxcma: string; emacma: string; webcma: string): Boolean;
    function StCm1Del(CNOCM1: string): Boolean;

    function StCm1GetAm3(ICNOAM3: string): Boolean;
    function ttAm3InsUpd(stsam3: string; cmpam3: string; brnam3: string; cnoam3: string; crtam3: Integer; crlam3: Double; bfiam3: Double; minam3: Double; mpyam3: Double; mcmam3: Double; mdnam3: Double; mcnam3: Double; majam3: Double; mdsam3: Double; mitam3: Double; pdcam3: Double; uncam3: Double; cqram3: Double; adnam3: Double; acnam3: Double; apyam3: Double; ypyam3: Double; ypcam3: Double): Boolean;
    function ttAm3Del(ICMPAM3: string; IBRNAM3: string; ICNOAM3: string): Boolean;
    function StCm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; ICTY: string): Boolean;

    function StPm1Get(CRITERIA: string; ORDERFIELD: string; ISRSPM1: string): Boolean;
    function StPm1InsUpd(stspm1: string; itcpm1: string; itnpm1: string; enmpm1: string; tnmpm1: string; mnmpm1: string; ut1pm1: string; ut2pm1: string; ue1pm1: string; ue2pm1: string; cvtpm1: Double; whspm1: string; md: string): Boolean;
    function StPm1InsUpd2(itnpm1: string; uc1pm1: Double; uc2pm1: Double; up1pm1: Double; up2pm1: Double; uf1pm1: Double; uf2pm1: Double; fampm1: Double; ct1pm1: Double; ct2pm1: Double; itspm1: string; brdpm1: string; srspm1: string; geapm1: string; caspm1: Integer; pwrpm1: Integer; stkpm1: string; dpcpm1: Integer; accpm1: string): Boolean;
    function StPm1Del(ITNPM1: string): Boolean;

    function StBgGet(I_YARBG: Integer; I_CMPBG: string; I_BRNBG: string; CRITERIA: string; ORDERFIELD: string; FLGBG: string): Boolean;
    function StBgInsUpd(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; q01bg2: Double; q02bg2: Double; q03bg2: Double; q04bg2: Double; q05bg2: Double; q06bg2: Double; q07bg2: Double; q08bg2: Double; q09bg2: Double; q10bg2: Double; q11bg2: Double; q12bg2: Double; md: string): Boolean;
    function StBgInsUpd2(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; a01bg2: Double; a02bg2: Double; a03bg2: Double; a04bg2: Double; a05bg2: Double; a06bg2: Double; a07bg2: Double; a08bg2: Double; a09bg2: Double; a10bg2: Double; a11bg2: Double; a12bg2: Double): Boolean;
    function StBgDel(FLGBG: string; YARBG2: string; CMPBG2: string; BRNBG2: string; ITNBG2: string; SMNBG2: string): Boolean;

    function StStyGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StStyInsUpd(STSSTY: string; SERSTY: string; CNOSTY: string; ENGSTY: string; ITNSTY: string; SRSSTY: string; COLSTY: string; MD: string): Boolean;
    function StStyDel(SERSTY: string): Boolean;

    function StShpGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StShpInsUpd(STSSHP: string; CNOSHP: string; SEQSHP: Integer; FBNSHP: string; TBNSHP: string; AMTSHP: Double; MD: string): Boolean;
    function StShpDel(CNOSHP: string; SEQSHP: Integer): Boolean;

    function StCm3Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StCm3InsUpd(stscm3: string; cmpcm3: string; brncm3: string; enmcm3: string; tnmcm3: string; ta1cm3: string; ta2cm3: string; tidcm3: string; MD: string): Boolean;
    function StCm3Del(CMPCM3: string; BRNCM3: string): Boolean;

    function StRm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StRm1InsUpd(stsrm1: string; cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: Integer; prvrm1: string; pdtrm1: Double; patrm1: Double; oatrm1: Double; avlrm1: string; narrm1: string; md: string): Boolean;
    function StRm1Del(cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: string; prvrm1: string): Boolean;

    function StRegGet(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StRegGetPm1(CNOREG: string; MD: string): Boolean;
    function StRegInsUpd(stsreg: string; cmpreg: string; brnreg: string; cnoreg: string; SeqREG: Integer; itnreg: string; amtreg: Double; othreg: Double; narreg: string; md: string): Boolean;
    function StRegDel(CMPREG: string; BRNREG: string; CNOREG: string; SEQREG: Integer): Boolean;

    function StAm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StAm1InsUpd(stsam1: string; cmpam1: string; brnam1: string; cnoam1: string; idtam1: Double; dnoam1: string; depam1: string; SERAM1: string; DDTAM1: Double; amtam1: Double; balam1: Double; MD: string): Boolean;
    function StAm1Del(yaram1: Integer; cmpam1: string; brnam1: string; cnoam1: string; dnoam1: string): Boolean;

    function StYm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
    function StYm1InsUpd(stsYM1: string; DCDYM1: string; cmpYM1: string; brnYM1: string; VnoYM1: string; idtYM1: Double; dnoYM1: string; depYM1: string; ABTYM1: Double; VATYM1: string; AVTYM1: Double; POYM1: Integer; SERYM1: string; DDTYM1: Double; amtYM1: Double; balYM1: Double; MD: string): Boolean;
    function StYm1Del(yarYM1: Integer; cmpYM1: string; brnYM1: string; VnoYM1: string; dnoYM1: string): Boolean;

    function StZipGet(CRITERIA: string; ORDERFIELD: string): Boolean;

    function StPm1GetImage(ITNPM1: string): Boolean;
    function StPm1DelImage(ITNPM1: string): Boolean;

    function StIm2Get(CRITERIA: string; ORDERFIELD: string; IYARIM2: Integer; ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;
    function StIm2InsUpd(stsim2: string; cmpim2: string; brnim2: string; fwhim2: string; twhim2: string; itnim2: string; serim2: string; engim2: string; colim2: string; idtim2: Double; movim2: string; dcdim2: string; dnoim2: Int64; seqim2: Integer; depim2: string; desim2: string; qt1im2: Integer; qt2im2: Integer; ct1im2: Double; ct2im2: Double; at1im2: Double; at2im2: Double; uc1im2: Double; uc2im2: Double; up1im2: Double; up2im2: Double; md: string): Boolean;
    function StIm2Del(dnoim2: Int64): Boolean;

    function STIm1GetByItn(CRITERIA: string; ORDERFIELD: string; ITNIM1: string; COLIM1: string): Boolean;
    function StPm1GetByItc(CRITERIA: string; ORDERFIELD: string; ITCPM1: string): Boolean;

    function StRedCardGet(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;

    function StFg1GetList(CRITERIA: string; ORDERFIELD: string; IYAR: Integer; ICMP: string; IBRN: string): Boolean;
    function StFg1GetDtl(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
    function StFg1Del(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
    function StFg1InsUpd(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double; SEQFG1: Integer; FGDFG1: string; FCLFG1: string; FQ1FG1: Integer; FQ2FG1: Integer; FDSFG1: Double; FPAFG1: Double; FU1FG1: Double; FU2FG1: Double; FAMFG1: Double; ABBFG1: string; ENTUSR: string; md: string): Boolean;
    function StFg1GetUsed(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; ITRN: Double): Boolean;

  end;

implementation

constructor TDSSetupClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSSetup';
end;

constructor TDSSetupClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSSetup';
end;

destructor TDSSetupClient.Destroy;
begin
    FreeAndNil(FStAccGetCommand);
    FreeAndNil(FSt43ServiceGetCommand);
    FreeAndNil(FHisInsUpdReport43PersonCommand);
    FreeAndNil(FHisSamUpdateCommand);


    FreeAndNil(FStCidGetCommand);
    FreeAndNil(FStCidInsUpdCommand);
    FreeAndNil(FStCidDelCommand);

    FreeAndNil(FStNb1GetCommand);
    FreeAndNil(FStNb1BrnGenDocCommand);
    FreeAndNil(FStNB1InsUpdCommand);
    FreeAndNil(FStNb1DelCommand);

    FreeAndNil(FStVm1GetCommand);
    FreeAndNil(FStVm1GetAddrCommand);
    FreeAndNil(FStVm1InsUpdCommand);
    FreeAndNil(FStVmaInsUpdCommand);
    FreeAndNil(FStVm1DelCommand);
    FreeAndNil(FStVm1GetYm3Command);

    FreeAndNil(FttYm3DelCommand);
    FreeAndNil(FttYm3InsUpdCommand);
    FreeAndNil(FStVm1GetUsedBrnCommand);

    FreeAndNil(FStCm1GetCommand);
    FreeAndNil(FStCm1GetAddrCommand);
    FreeAndNil(FStCm1InsUpdCommand);
    FreeAndNil(FStCmaInsUpdCommand);
    FreeAndNil(FStCm1DelCommand);
    FreeAndNil(FStCm1GetAm3Command);

    FreeAndNil(FttAm3DelCommand);
    FreeAndNil(FttAm3InsUpdCommand);
    FreeAndNil(FStCm1GetUsedBrnCommand);

    FreeAndNil(FStPm1GetCommand);
    FreeAndNil(FStPm1InsUpdCommand);
    FreeAndNil(FStPm1InsUpd2Command);
    FreeAndNil(FStPm1DelCommand);

    FreeAndNil(FStBgGetCommand);
    FreeAndNil(FStBgInsUpdCommand);
    FreeAndNil(FStBgInsUpd2Command);
    FreeAndNil(FStBgDelCommand);

    FreeAndNil(FStStyGetCommand);
    FreeAndNil(FStStyInsUpdCommand);
    FreeAndNil(FStStyDelCommand);

    FreeAndNil(FStShpGetCommand);
    FreeAndNil(FStShpInsUpdCommand);
    FreeAndNil(FStShpDelCommand);

    FreeAndNil(FStCm3GetCommand);
    FreeAndNil(FStCm3InsUpdCommand);
    FreeAndNil(FStCm3DelCommand);

    FreeAndNil(FStRm1GetCommand);
    FreeAndNil(FStRm1InsUpdCommand);
    FreeAndNil(FStRm1DelCommand);

    FreeAndNil(FStRegGetCommand);
    FreeAndNil(FStRegGetPm1Command);
    FreeAndNil(FStRegInsUpdCommand);
    FreeAndNil(FStRegDelCommand);

    FreeAndNil(FStAm1GetCommand);
    FreeAndNil(FStAm1InsUpdCommand);
    FreeAndNil(FStAm1DelCommand);

    FreeAndNil(FStYm1GetCommand);
    FreeAndNil(FStYm1InsUpdCommand);
    FreeAndNil(FStYm1DelCommand);

    FreeAndNil(FStZipGetCommand);

    FreeAndNil(FStPm1GetImageCommand);
    FreeAndNil(FStPm1DelImageCommand);

    FreeAndNil(FStIm2GetCommand);
    FreeAndNil(FStIm2InsUpdCommand);
    FreeAndNil(FStIm2DelCommand);

    FreeAndNil(FSTIm1GetByItnCommand);
    FreeAndNil(FStPm1GetByItcCommand);

    FreeAndNil(FStRedCardGetCommand);

  FreeAndNil(FStFg1GetListCommand);
  FreeAndNil(FStFg1GetDtlCommand);
  FreeAndNil(FStFg1DelCommand);
  FreeAndNil(FStFg1InsUpdCommand);
  FreeAndNil(FStFg1GetUsedCommand);

    inherited;

end;

function TDSSetupClient.HisGetReport43Person(PID: integer): Boolean;
begin
  if FStAccGetCommand = nil then
  begin
    FStAccGetCommand := FDBXConnection.CreateCommand;
    FStAccGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStAccGetCommand.Text := 'TDSHISSetup.HisGetReport43Person';
    FStAccGetCommand.Prepare;
  end;
  FStAccGetCommand.Parameters[0].Value.SetInt32(PID);
  FStAccGetCommand.ExecuteUpdate;
  Result := FStAccGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.HisGetReport43Service(PID: integer): Boolean;
begin
  if FSt43ServiceGetCommand = nil then
  begin
    FSt43ServiceGetCommand := FDBXConnection.CreateCommand;
    FSt43ServiceGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSt43ServiceGetCommand.Text := 'TDSHISSetup.HisGetReport43Service';
    FSt43ServiceGetCommand.Prepare;
  end;
  FSt43ServiceGetCommand.Parameters[0].Value.SetInt32(PID);
  FSt43ServiceGetCommand.ExecuteUpdate;
  Result := FSt43ServiceGetCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.HISInsUpdPerson(CID: string; REPORTID: integer;
  HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string): Boolean;
begin
  if FHisInsUpdReport43PersonCommand = nil then
  begin
    FHisInsUpdReport43PersonCommand := FDBXConnection.CreateCommand;
    FHisInsUpdReport43PersonCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHisInsUpdReport43PersonCommand.Text := 'TDSHISSetup.HISInsUpdPerson';
    FHisInsUpdReport43PersonCommand.Prepare;
  end;

  FHisInsUpdReport43PersonCommand.Parameters[0].Value.SetWideString(CID);
  FHisInsUpdReport43PersonCommand.Parameters[1].Value.SetInt32(REPORTID);
  FHisInsUpdReport43PersonCommand.Parameters[2].Value.SetWideString(HOSPCODE);
  FHisInsUpdReport43PersonCommand.Parameters[3].Value.SetWideString(PID);
  FHisInsUpdReport43PersonCommand.Parameters[4].Value.SetWideString(HID);
  FHisInsUpdReport43PersonCommand.Parameters[5].Value.SetWideString(PRENAME);

  FHisInsUpdReport43PersonCommand.Parameters[6].Value.SetWideString(NAME);
  FHisInsUpdReport43PersonCommand.Parameters[7].Value.SetWideString(LNAME);
  FHisInsUpdReport43PersonCommand.Parameters[8].Value.SetWideString(HN);
  FHisInsUpdReport43PersonCommand.Parameters[9].Value.SetWideString(SEX);



  FHisInsUpdReport43PersonCommand.ExecuteUpdate;
  Result := FHisInsUpdReport43PersonCommand.Parameters[11].Value.GetBoolean;
end;


function TDSSetupClient.HisInsUpdReport43Person(CID:string;REPORTID: integer;
  HOSPCODE, PID, HID, PRENAME, NAME, LNAME, HN, SEX: string; BIRTH: tdate;
  MSTATUS, OCCUPATION_OLD, OCCUPATION_NEW, RACE, NATION, RELIGION,
  EDUCATION, FSTATUS, FATHER, MOTHER, COUPLE, VSTATUS: string;
  MOVEIN: tdate; DISCHARGE: string; DDISCHARGE: tdate; ABOGROUP, RHGROUP,
  LABOR, PASSPORT, TYPEAREA: string; D_UPDATE,
  EXPORT_DATE: tdate): Boolean;
begin
  if FHisInsUpdReport43PersonCommand = nil then
  begin
    FHisInsUpdReport43PersonCommand := FDBXConnection.CreateCommand;
    FHisInsUpdReport43PersonCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHisInsUpdReport43PersonCommand.Text := 'TDSHISSetup.HisInsUpdReport43Person';
    FHisInsUpdReport43PersonCommand.Prepare;
  end;

  FHisInsUpdReport43PersonCommand.Parameters[0].Value.SetInt32(REPORTID);
  FHisInsUpdReport43PersonCommand.Parameters[1].Value.SetWideString(HOSPCODE);
  FHisInsUpdReport43PersonCommand.Parameters[2].Value.SetWideString(HID);
  FHisInsUpdReport43PersonCommand.Parameters[3].Value.SetWideString(PRENAME);

  FHisInsUpdReport43PersonCommand.Parameters[4].Value.SetWideString(NAME);
  FHisInsUpdReport43PersonCommand.Parameters[5].Value.SetWideString(LNAME);
  FHisInsUpdReport43PersonCommand.Parameters[6].Value.SetWideString(HN);
  FHisInsUpdReport43PersonCommand.Parameters[7].Value.SetWideString(SEX);

  //FHisInsUpdReport43PersonCommand.Parameters[8].Value.SetDate(int(BIRTH));
  FHisInsUpdReport43PersonCommand.Parameters[9].Value.SetWideString(MSTATUS);
  FHisInsUpdReport43PersonCommand.Parameters[10].Value.SetWideString(OCCUPATION_OLD);
  FHisInsUpdReport43PersonCommand.Parameters[11].Value.SetWideString(OCCUPATION_NEW);

  FHisInsUpdReport43PersonCommand.Parameters[12].Value.SetWideString(RACE);
  FHisInsUpdReport43PersonCommand.Parameters[13].Value.SetWideString(NATION);
  FHisInsUpdReport43PersonCommand.Parameters[14].Value.SetWideString(RELIGION);
  FHisInsUpdReport43PersonCommand.Parameters[15].Value.SetWideString(EDUCATION);

  FHisInsUpdReport43PersonCommand.Parameters[16].Value.SetWideString(FSTATUS);
  FHisInsUpdReport43PersonCommand.Parameters[17].Value.SetWideString(FATHER);
  FHisInsUpdReport43PersonCommand.Parameters[18].Value.SetWideString(MOTHER);
  FHisInsUpdReport43PersonCommand.Parameters[19].Value.SetWideString(COUPLE);

  FHisInsUpdReport43PersonCommand.Parameters[20].Value.SetWideString(VSTATUS);
//  FHisInsUpdReport43PersonCommand.Parameters[21].Value.SetDate(MOVEIN);
  FHisInsUpdReport43PersonCommand.Parameters[22].Value.SetWideString(DISCHARGE);
//  FHisInsUpdReport43PersonCommand.Parameters[23].Value.SetDate(DDISCHARGE);

  FHisInsUpdReport43PersonCommand.Parameters[24].Value.SetWideString(ABOGROUP);
  FHisInsUpdReport43PersonCommand.Parameters[25].Value.SetWideString(RHGROUP);
  FHisInsUpdReport43PersonCommand.Parameters[26].Value.SetWideString(LABOR);
  FHisInsUpdReport43PersonCommand.Parameters[27].Value.SetWideString(PASSPORT);

  FHisInsUpdReport43PersonCommand.Parameters[28].Value.SetWideString(TYPEAREA);
//  FHisInsUpdReport43PersonCommand.Parameters[29].Value.SetDate(D_UPDATE);
//  FHisInsUpdReport43PersonCommand.Parameters[30].Value.SetDate(EXPORT_DATE);
  FHisInsUpdReport43PersonCommand.Parameters[31].Value.SetWideString(PID);


  FHisInsUpdReport43PersonCommand.ExecuteUpdate;
  Result := FHisInsUpdReport43PersonCommand.Parameters[32].Value.GetBoolean;
end;



{
const
SecsPerDay = 24 *60 *60;

function UnixTime(DateTime: TDateTime): longint;
begin
result := Trunc( (DateTime -EncodeDate(1970,1,1)) * SecsPerDay);
end;

function UnixDateTimeToDelphiDateTime(UnixDateTime: longint): TDateTime;
begin
result := EncodeDate(1970, 1, 1) +( UnixDateTime / SecsPerDay );
end;
}



function TDSSetupClient.HisSamUpdate(PID,CID,HOSPCODE, HID, PRENAME, NAME, LNAME, HN, SEX: string;BIRTH:double): Boolean;
var _BIRTH:TDBXDate;
begin
  if FHisSamUpdateCommand = nil then
  begin
    FHisSamUpdateCommand := FDBXConnection.CreateCommand;
    FHisSamUpdateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHisSamUpdateCommand.Text := 'TDSHISSetup.HisSamUpdate';
    FHisSamUpdateCommand.Prepare;
  end;
  FHisSamUpdateCommand.Parameters[0].Value.SetWideString(PID);
  FHisSamUpdateCommand.Parameters[1].Value.SetWideString(CID);
  FHisSamUpdateCommand.Parameters[2].Value.SetWideString(HOSPCODE);
  FHisSamUpdateCommand.Parameters[3].Value.SetWideString(HID);
  FHisSamUpdateCommand.Parameters[4].Value.SetWideString(PRENAME);
  FHisSamUpdateCommand.Parameters[5].Value.SetWideString(NAME);
  FHisSamUpdateCommand.Parameters[6].Value.SetWideString(LNAME);
  FHisSamUpdateCommand.Parameters[7].Value.SetWideString(HN);
  FHisSamUpdateCommand.Parameters[8].Value.SetWideString(SEX);

 // _BIRTH :=UnixTime(BIRTH);

  FHisSamUpdateCommand.Parameters[9].Value.SetDouble(BIRTH);
  FHisSamUpdateCommand.ExecuteUpdate;
  Result := FHisSamUpdateCommand.Parameters[10].Value.GetBoolean;
end;

function TDSSetupClient.SamInt: integer;
begin
  if FStAccGetCommand = nil then
  begin
    FStAccGetCommand := FDBXConnection.CreateCommand;
    FStAccGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStAccGetCommand.Text := 'TDSSetup.SamInt';
    FStAccGetCommand.Prepare;
  end;
  FStAccGetCommand.ExecuteUpdate;
  Result := FStAccGetCommand.Parameters[1].Value.GetInt32;
end;

function TDSSetupClient.SstmSam(msg: string): string;
begin
  if FStAccGetCommand = nil then
  begin
    FStAccGetCommand := FDBXConnection.CreateCommand;
    FStAccGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStAccGetCommand.Text := 'TDSSetup.SstmSam';
    FStAccGetCommand.Prepare;
  end;
  FStAccGetCommand.Parameters[0].Value.SetWideString(msg);
  FStAccGetCommand.ExecuteUpdate;
  Result := FStAccGetCommand.Parameters[1].Value.GetString;
end;

function TDSSetupClient.StAccGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStAccGetCommand = nil then
  begin
    FStAccGetCommand := FDBXConnection.CreateCommand;
    FStAccGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStAccGetCommand.Text := 'TDSSetup.StAccGet';
    FStAccGetCommand.Prepare;
  end;
  FStAccGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStAccGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStAccGetCommand.ExecuteUpdate;
  Result := FStAccGetCommand.Parameters[2].Value.GetBoolean;
end;


function TDSSetupClient.StCidGet(CRITERIA: string; ORDERFIELD: string; I_FMTCDE: string; I_CIDCDE: string): Boolean;
begin
  if FStCidGetCommand = nil then
  begin
    FStCidGetCommand := FDBXConnection.CreateCommand;
    FStCidGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCidGetCommand.Text := ServerClassName + '.StCidGet';
    FStCidGetCommand.Prepare;
  end;
  FStCidGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStCidGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStCidGetCommand.Parameters[2].Value.SetWideString(I_FMTCDE);
  FStCidGetCommand.Parameters[3].Value.SetWideString(I_CIDCDE);
  FStCidGetCommand.ExecuteUpdate;
  Result := FStCidGetCommand.Parameters[4].Value.GetBoolean;
end;

function TDSSetupClient.StCidInsUpd(STSCDE: string; FMTCDE: string; CIDCDE: string; CNOCDE: string; ENMCDE: string; TNMCDE: string; VA1CDE: Double; VA2CDE: Double; DT1CDE: Double; DT2CDE: Double; AC1CDE: string; AC2CDE: string; DESCDE: string; ABBCDE: string; ENTUSR: string): Boolean;
begin
  if FStCidInsUpdCommand = nil then
  begin
    FStCidInsUpdCommand := FDBXConnection.CreateCommand;
    FStCidInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCidInsUpdCommand.Text := ServerClassName + '.StCidInsUpd';
    FStCidInsUpdCommand.Prepare;
  end;
  FStCidInsUpdCommand.Parameters[0].Value.SetWideString(STSCDE);
  FStCidInsUpdCommand.Parameters[1].Value.SetWideString(FMTCDE);
  FStCidInsUpdCommand.Parameters[2].Value.SetWideString(CIDCDE);
  FStCidInsUpdCommand.Parameters[3].Value.SetWideString(CNOCDE);
  FStCidInsUpdCommand.Parameters[4].Value.SetWideString(ENMCDE);
  FStCidInsUpdCommand.Parameters[5].Value.SetWideString(TNMCDE);
  FStCidInsUpdCommand.Parameters[6].Value.SetDouble(VA1CDE);
  FStCidInsUpdCommand.Parameters[7].Value.SetDouble(VA2CDE);
  FStCidInsUpdCommand.Parameters[8].Value.SetDouble(DT1CDE);
  FStCidInsUpdCommand.Parameters[9].Value.SetDouble(DT2CDE);
  FStCidInsUpdCommand.Parameters[10].Value.SetWideString(AC1CDE);
  FStCidInsUpdCommand.Parameters[11].Value.SetWideString(AC2CDE);
  FStCidInsUpdCommand.Parameters[12].Value.SetWideString(DESCDE);
  FStCidInsUpdCommand.Parameters[13].Value.SetWideString(ABBCDE);
  FStCidInsUpdCommand.Parameters[14].Value.SetWideString(ENTUSR);
  FStCidInsUpdCommand.ExecuteUpdate;
  Result := FStCidInsUpdCommand.Parameters[15].Value.GetBoolean;
end;

function TDSSetupClient.StCidDel(FMTCDE: string; CIDCDE: string; CNOCDE: string): Boolean;
begin
  if FStCidDelCommand = nil then
  begin
    FStCidDelCommand := FDBXConnection.CreateCommand;
    FStCidDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCidDelCommand.Text := ServerClassName + '.StCidDel';
    FStCidDelCommand.Prepare;
  end;
  FStCidDelCommand.Parameters[0].Value.SetWideString(FMTCDE);
  FStCidDelCommand.Parameters[1].Value.SetWideString(CIDCDE);
  FStCidDelCommand.Parameters[2].Value.SetWideString(CNOCDE);
  FStCidDelCommand.ExecuteUpdate;
  Result := FStCidDelCommand.Parameters[3].Value.GetBoolean;
end;

function TDSSetupClient.StNb1Get(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;
begin
  if FStNb1GetCommand = nil then
  begin
    FStNb1GetCommand := FDBXConnection.CreateCommand;
    FStNb1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStNb1GetCommand.Text := ServerClassName + '.StNb1Get';
    FStNb1GetCommand.Prepare;
  end;
  FStNb1GetCommand.Parameters[0].Value.SetInt32(I_YARNB1);
  FStNb1GetCommand.Parameters[1].Value.SetWideString(I_CMPNB1);
  FStNb1GetCommand.Parameters[2].Value.SetWideString(I_BRNNB1);
  FStNb1GetCommand.Parameters[3].Value.SetWideString(I_DCDNB1);
  FStNb1GetCommand.ExecuteUpdate;
  Result := FStNb1GetCommand.Parameters[4].Value.GetBoolean;
end;

function TDSSetupClient.StNb1BrnGenDoc(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string): Boolean;
begin
  if FStNb1BrnGenDocCommand = nil then
  begin
    FStNb1BrnGenDocCommand := FDBXConnection.CreateCommand;
    FStNb1BrnGenDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStNb1BrnGenDocCommand.Text := ServerClassName + '.StNb1BrnGenDoc';
    FStNb1BrnGenDocCommand.Prepare;
  end;
  FStNb1BrnGenDocCommand.Parameters[0].Value.SetInt32(I_YARNB1);
  FStNb1BrnGenDocCommand.Parameters[1].Value.SetWideString(I_CMPNB1);
  FStNb1BrnGenDocCommand.Parameters[2].Value.SetWideString(I_BRNNB1);
  FStNb1BrnGenDocCommand.ExecuteUpdate;
  Result := FStNb1BrnGenDocCommand.Parameters[3].Value.GetBoolean;
end;

function TDSSetupClient.StNB1InsUpd(STSNB1: string; CMPNB1: string; BRNNB1: string; DCDNB1: string; YARNB1: Integer; N01NB1: Integer; N02NB1: Integer; N03NB1: Integer; N04NB1: Integer; N05NB1: Integer; N06NB1: Integer; N07NB1: Integer; N08NB1: Integer; N09NB1: Integer; N10NB1: Integer; N11NB1: Integer; N12NB1: Integer; PR1NB1: string; PR2NB1: string): Boolean;
begin
  if FStNB1InsUpdCommand = nil then
  begin
    FStNB1InsUpdCommand := FDBXConnection.CreateCommand;
    FStNB1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStNB1InsUpdCommand.Text := ServerClassName + '.StNB1InsUpd';
    FStNB1InsUpdCommand.Prepare;
  end;
  FStNB1InsUpdCommand.Parameters[0].Value.SetWideString(STSNB1);
  FStNB1InsUpdCommand.Parameters[1].Value.SetWideString(CMPNB1);
  FStNB1InsUpdCommand.Parameters[2].Value.SetWideString(BRNNB1);
  FStNB1InsUpdCommand.Parameters[3].Value.SetWideString(DCDNB1);
  FStNB1InsUpdCommand.Parameters[4].Value.SetInt32(YARNB1);
  FStNB1InsUpdCommand.Parameters[5].Value.SetInt32(N01NB1);
  FStNB1InsUpdCommand.Parameters[6].Value.SetInt32(N02NB1);
  FStNB1InsUpdCommand.Parameters[7].Value.SetInt32(N03NB1);
  FStNB1InsUpdCommand.Parameters[8].Value.SetInt32(N04NB1);
  FStNB1InsUpdCommand.Parameters[9].Value.SetInt32(N05NB1);
  FStNB1InsUpdCommand.Parameters[10].Value.SetInt32(N06NB1);
  FStNB1InsUpdCommand.Parameters[11].Value.SetInt32(N07NB1);
  FStNB1InsUpdCommand.Parameters[12].Value.SetInt32(N08NB1);
  FStNB1InsUpdCommand.Parameters[13].Value.SetInt32(N09NB1);
  FStNB1InsUpdCommand.Parameters[14].Value.SetInt32(N10NB1);
  FStNB1InsUpdCommand.Parameters[15].Value.SetInt32(N11NB1);
  FStNB1InsUpdCommand.Parameters[16].Value.SetInt32(N12NB1);
  FStNB1InsUpdCommand.Parameters[17].Value.SetWideString(PR1NB1);
  FStNB1InsUpdCommand.Parameters[18].Value.SetWideString(PR2NB1);
  FStNB1InsUpdCommand.ExecuteUpdate;
  Result := FStNB1InsUpdCommand.Parameters[19].Value.GetBoolean;
end;

function TDSSetupClient.StNb1Del(I_YARNB1: Integer; I_CMPNB1: string; I_BRNNB1: string; I_DCDNB1: string): Boolean;
begin
if FStNb1DelCommand = nil then
  begin
    FStNb1DelCommand := FDBXConnection.CreateCommand;
    FStNb1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStNb1DelCommand.Text := ServerClassName + '.StNb1Del';
    FStNb1DelCommand.Prepare;
  end;
  FStNb1DelCommand.Parameters[0].Value.SetInt32(I_YARNB1);
  FStNb1DelCommand.Parameters[1].Value.SetWideString(I_CMPNB1);
  FStNb1DelCommand.Parameters[2].Value.SetWideString(I_BRNNB1);
  FStNb1DelCommand.Parameters[3].Value.SetWideString(I_DCDNB1);
  FStNb1DelCommand.ExecuteUpdate;
  Result := FStNb1DelCommand.Parameters[4].Value.GetBoolean;
end;

function TDSSetupClient.StVm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStVm1GetCommand = nil then
  begin
    FStVm1GetCommand := FDBXConnection.CreateCommand;
    FStVm1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStVm1GetCommand.Text := ServerClassName + '.StVm1Get';
    FStVm1GetCommand.Prepare;
  end;
  FStVm1GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStVm1GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStVm1GetCommand.ExecuteUpdate;
  Result := FStVm1GetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StVm1GetAddr(VNOVMA: string; LNKVMA: string): Boolean;
begin
  if FStVm1GetAddrCommand = nil then
  begin
    FStVm1GetAddrCommand := FDBXConnection.CreateCommand;
    FStVm1GetAddrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStVm1GetAddrCommand.Text := ServerClassName + '.StVm1GetAddr';
    FStVm1GetAddrCommand.Prepare;
  end;
  FStVm1GetAddrCommand.Parameters[0].Value.SetWideString(VNOVMA);
  FStVm1GetAddrCommand.Parameters[1].Value.SetWideString(LNKVMA);
  FStVm1GetAddrCommand.ExecuteUpdate;
  Result := FStVm1GetAddrCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StVm1InsUpd(stsvm1: string; vnovm1: string; tnmvm1: string; enmvm1: string; cpsvm1: string; vtpvm1: string; accvm1: string; otpvm1: string; viavm1: string; psnvm1: string; taxvm1: string; ttxvm1: string; tpivm1: string; vpcvm1: Double; popvm1: string; papvm1: string; dopvm1: string; memvm1: string; md: string): Boolean;
begin
  if FStVm1InsUpdCommand = nil then
  begin
    FStVm1InsUpdCommand := FDBXConnection.CreateCommand;
    FStVm1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStVm1InsUpdCommand.Text := 'TDSSetup.StVm1InsUpd';
    FStVm1InsUpdCommand.Prepare;
  end;
  FStVm1InsUpdCommand.Parameters[0].Value.SetWideString(stsvm1);
  FStVm1InsUpdCommand.Parameters[1].Value.SetWideString(vnovm1);
  FStVm1InsUpdCommand.Parameters[2].Value.SetWideString(tnmvm1);
  FStVm1InsUpdCommand.Parameters[3].Value.SetWideString(enmvm1);
  FStVm1InsUpdCommand.Parameters[4].Value.SetWideString(cpsvm1);
  FStVm1InsUpdCommand.Parameters[5].Value.SetWideString(vtpvm1);
  FStVm1InsUpdCommand.Parameters[6].Value.SetWideString(accvm1);
  FStVm1InsUpdCommand.Parameters[7].Value.SetWideString(otpvm1);
  FStVm1InsUpdCommand.Parameters[8].Value.SetWideString(viavm1);
  FStVm1InsUpdCommand.Parameters[9].Value.SetWideString(psnvm1);
  FStVm1InsUpdCommand.Parameters[10].Value.SetWideString(taxvm1);
  FStVm1InsUpdCommand.Parameters[11].Value.SetWideString(ttxvm1);
  FStVm1InsUpdCommand.Parameters[12].Value.SetWideString(tpivm1);
  FStVm1InsUpdCommand.Parameters[13].Value.SetDouble(vpcvm1);
  FStVm1InsUpdCommand.Parameters[14].Value.SetWideString(popvm1);
  FStVm1InsUpdCommand.Parameters[15].Value.SetWideString(papvm1);
  FStVm1InsUpdCommand.Parameters[16].Value.SetWideString(dopvm1);
  FStVm1InsUpdCommand.Parameters[17].Value.SetWideString(memvm1);
  FStVm1InsUpdCommand.Parameters[18].Value.SetWideString(md);
  FStVm1InsUpdCommand.ExecuteUpdate;
  Result := FStVm1InsUpdCommand.Parameters[19].Value.GetBoolean;
end;


function TDSSetupClient.StVmaInsUpd(vnovma: string; lnkvma: string; ta1vma: string; ta2vma: string; chgvma: string; ctyvma: string; zipvma: string; telvma: string; mobvma: string; faxvma: string; emavma: string; webvma: string): Boolean;
begin
  if FStVmaInsUpdCommand = nil then
  begin
    FStVmaInsUpdCommand := FDBXConnection.CreateCommand;
    FStVmaInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStVmaInsUpdCommand.Text := ServerClassName + '.StVmaInsUpd';
    FStVmaInsUpdCommand.Prepare;
  end;
  FStVmaInsUpdCommand.Parameters[0].Value.SetWideString(vnovma);
  FStVmaInsUpdCommand.Parameters[1].Value.SetWideString(lnkvma);
  FStVmaInsUpdCommand.Parameters[2].Value.SetWideString(ta1vma);
  FStVmaInsUpdCommand.Parameters[3].Value.SetWideString(ta2vma);
  FStVmaInsUpdCommand.Parameters[4].Value.SetWideString(chgvma);
  FStVmaInsUpdCommand.Parameters[5].Value.SetWideString(ctyvma);
  FStVmaInsUpdCommand.Parameters[6].Value.SetWideString(zipvma);
  FStVmaInsUpdCommand.Parameters[7].Value.SetWideString(telvma);
  FStVmaInsUpdCommand.Parameters[8].Value.SetWideString(mobvma);
  FStVmaInsUpdCommand.Parameters[9].Value.SetWideString(faxvma);
  FStVmaInsUpdCommand.Parameters[10].Value.SetWideString(emavma);
  FStVmaInsUpdCommand.Parameters[11].Value.SetWideString(webvma);
  FStVmaInsUpdCommand.ExecuteUpdate;
  Result := FStVmaInsUpdCommand.Parameters[12].Value.GetBoolean;
end;

function TDSSetupClient.StVm1Del(VNOVM1: string): Boolean;
begin
  if FStVm1DelCommand = nil then
  begin
    FStVm1DelCommand := FDBXConnection.CreateCommand;
    FStVm1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStVm1DelCommand.Text := ServerClassName + '.StVm1Del';
    FStVm1DelCommand.Prepare;
  end;
  FStVm1DelCommand.Parameters[0].Value.SetWideString(VNOVM1);
  FStVm1DelCommand.ExecuteUpdate;
  Result := FStVm1DelCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.StVm1GetYm3(IVNOYM3: string): Boolean;
begin
  if FStVm1GetYm3Command = nil then
  begin
    FStVm1GetYm3Command := FDBXConnection.CreateCommand;
    FStVm1GetYm3Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FStVm1GetYm3Command.Text := 'TDSSetup.StVm1GetYm3';
    FStVm1GetYm3Command.Prepare;
  end;
  FStVm1GetYm3Command.Parameters[0].Value.SetWideString(IVNOYM3);
  FStVm1GetYm3Command.ExecuteUpdate;
  Result := FStVm1GetYm3Command.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.StVm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;
begin
  if FStVm1GetUsedBrnCommand = nil then
  begin
    FStVm1GetUsedBrnCommand := FDBXConnection.CreateCommand;
    FStVm1GetUsedBrnCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStVm1GetUsedBrnCommand.Text := 'TDSSetup.StVm1GetUsedBrn';
    FStVm1GetUsedBrnCommand.Prepare;
  end;
  FStVm1GetUsedBrnCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStVm1GetUsedBrnCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStVm1GetUsedBrnCommand.Parameters[2].Value.SetWideString(ICMP);
  FStVm1GetUsedBrnCommand.Parameters[3].Value.SetWideString(IBRN);
  FStVm1GetUsedBrnCommand.ExecuteUpdate;
  Result := FStVm1GetUsedBrnCommand.Parameters[4].Value.GetBoolean;
end;

function TDSSetupClient.ttYm3Del(ICMPYm3: string; IBRNYm3: string; IVNOYm3: string): Boolean;
begin
  if FttYm3DelCommand = nil then
  begin
    FttYm3DelCommand := FDBXConnection.CreateCommand;
    FttYm3DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FttYm3DelCommand.Text := 'TDSSetup.ttYm3Del';
    FttYm3DelCommand.Prepare;
  end;
  FttYm3DelCommand.Parameters[0].Value.SetWideString(ICMPYm3);
  FttYm3DelCommand.Parameters[1].Value.SetWideString(IBRNYm3);
  FttYm3DelCommand.Parameters[2].Value.SetWideString(IVNOYm3);
  FttYm3DelCommand.ExecuteUpdate;
  Result := FttYm3DelCommand.Parameters[3].Value.GetBoolean;
end;

function TDSSetupClient.ttYm3InsUpd(stsYm3: string; cmpYm3: string; brnYm3: string; VnoYm3: string; crtYm3: Integer; crlYm3: Double; dsdym3: Integer; dsaym3: Double; bfiYm3: Double; minYm3: Double; mpyYm3: Double; mcmYm3: Double; mdnYm3: Double; mcnYm3: Double; majYm3: Double; mdsYm3: Double; mitYm3: Double; pdcYm3: Double; uncYm3: Double; cqrYm3: Double; adnYm3: Double; acnYm3: Double; apyYm3: Double; ypyYm3: Double; ypcYm3: Double): Boolean;
begin
  if FttYm3InsUpdCommand = nil then
  begin
    FttYm3InsUpdCommand := FDBXConnection.CreateCommand;
    FttYm3InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FttYm3InsUpdCommand.Text := 'TDSSetup.ttYm3InsUpd';
    FttYm3InsUpdCommand.Prepare;
  end;
  FttYm3InsUpdCommand.Parameters[0].Value.SetWideString(stsYm3);
  FttYm3InsUpdCommand.Parameters[1].Value.SetWideString(cmpYm3);
  FttYm3InsUpdCommand.Parameters[2].Value.SetWideString(brnYm3);
  FttYm3InsUpdCommand.Parameters[3].Value.SetWideString(VnoYm3);
  FttYm3InsUpdCommand.Parameters[4].Value.SetInt32(crtYm3);
  FttYm3InsUpdCommand.Parameters[5].Value.SetDouble(crlYm3);
  FttYm3InsUpdCommand.Parameters[6].Value.SetInt32(dsdym3);
  FttYm3InsUpdCommand.Parameters[7].Value.SetDouble(dsaym3);
  FttYm3InsUpdCommand.Parameters[8].Value.SetDouble(bfiYm3);
  FttYm3InsUpdCommand.Parameters[9].Value.SetDouble(minYm3);
  FttYm3InsUpdCommand.Parameters[10].Value.SetDouble(mpyYm3);
  FttYm3InsUpdCommand.Parameters[11].Value.SetDouble(mcmYm3);
  FttYm3InsUpdCommand.Parameters[12].Value.SetDouble(mdnYm3);
  FttYm3InsUpdCommand.Parameters[13].Value.SetDouble(mcnYm3);
  FttYm3InsUpdCommand.Parameters[14].Value.SetDouble(majYm3);
  FttYm3InsUpdCommand.Parameters[15].Value.SetDouble(mdsYm3);
  FttYm3InsUpdCommand.Parameters[16].Value.SetDouble(mitYm3);
  FttYm3InsUpdCommand.Parameters[17].Value.SetDouble(pdcYm3);
  FttYm3InsUpdCommand.Parameters[18].Value.SetDouble(uncYm3);
  FttYm3InsUpdCommand.Parameters[19].Value.SetDouble(cqrYm3);
  FttYm3InsUpdCommand.Parameters[20].Value.SetDouble(adnYm3);
  FttYm3InsUpdCommand.Parameters[21].Value.SetDouble(acnYm3);
  FttYm3InsUpdCommand.Parameters[22].Value.SetDouble(apyYm3);
  FttYm3InsUpdCommand.Parameters[23].Value.SetDouble(ypyYm3);
  FttYm3InsUpdCommand.Parameters[24].Value.SetDouble(ypcYm3);
  FttYm3InsUpdCommand.ExecuteUpdate;
  Result := FttYm3InsUpdCommand.Parameters[25].Value.GetBoolean;
end;

function TDSSetupClient.StCm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStCm1GetCommand = nil then
  begin
    FStCm1GetCommand := FDBXConnection.CreateCommand;
    FStCm1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm1GetCommand.Text := ServerClassName + '.StCm1Get';
    FStCm1GetCommand.Prepare;
  end;
  FStCm1GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStCm1GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStCm1GetCommand.ExecuteUpdate;
  Result := FStCm1GetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StCm1GetAddr(CNOCMA: string; LNKCMA: string): Boolean;
begin
  if FStCm1GetAddrCommand = nil then
  begin
    FStCm1GetAddrCommand := FDBXConnection.CreateCommand;
    FStCm1GetAddrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm1GetAddrCommand.Text := ServerClassName + '.StCm1GetAddr';
    FStCm1GetAddrCommand.Prepare;
  end;
  FStCm1GetAddrCommand.Parameters[0].Value.SetWideString(CNOCMA);
  FStCm1GetAddrCommand.Parameters[1].Value.SetWideString(LNKCMA);
  FStCm1GetAddrCommand.ExecuteUpdate;
  Result := FStCm1GetAddrCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StCm1InsUpd(ICMPAM3: string; IBRNAM3: string; stscm1: string; typcm1: string; ctpcm1: string; cnocm1: string; tnmcm1: string; enmcm1: string; acccm1: string; taxcm1: string; cpscm1: string; ccmcm1: string; poscm1: string; ctlcm1: string; cmbcm1: string; cfacm1: string; cemcm1: string; viacm1: string; smncm1: string; pdpcm1: string; dopcm1: string; memcm1: string; md: string): Boolean;
begin
  if FStCm1InsUpdCommand = nil then
  begin
    FStCm1InsUpdCommand := FDBXConnection.CreateCommand;
    FStCm1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm1InsUpdCommand.Text := ServerClassName + '.StCm1InsUpd';
    FStCm1InsUpdCommand.Prepare;
  end;
  FStCm1InsUpdCommand.Parameters[0].Value.SetWideString(ICMPAM3);
  FStCm1InsUpdCommand.Parameters[1].Value.SetWideString(IBRNAM3);
  FStCm1InsUpdCommand.Parameters[2].Value.SetWideString(stscm1);
  FStCm1InsUpdCommand.Parameters[3].Value.SetWideString(typcm1);
  FStCm1InsUpdCommand.Parameters[4].Value.SetWideString(ctpcm1);
  FStCm1InsUpdCommand.Parameters[5].Value.SetWideString(cnocm1);
  FStCm1InsUpdCommand.Parameters[6].Value.SetWideString(tnmcm1);
  FStCm1InsUpdCommand.Parameters[7].Value.SetWideString(enmcm1);
  FStCm1InsUpdCommand.Parameters[8].Value.SetWideString(acccm1);
  FStCm1InsUpdCommand.Parameters[9].Value.SetWideString(taxcm1);
  FStCm1InsUpdCommand.Parameters[10].Value.SetWideString(cpscm1);
  FStCm1InsUpdCommand.Parameters[11].Value.SetWideString(ccmcm1);
  FStCm1InsUpdCommand.Parameters[12].Value.SetWideString(poscm1);
  FStCm1InsUpdCommand.Parameters[13].Value.SetWideString(ctlcm1);
  FStCm1InsUpdCommand.Parameters[14].Value.SetWideString(cmbcm1);
  FStCm1InsUpdCommand.Parameters[15].Value.SetWideString(cfacm1);
  FStCm1InsUpdCommand.Parameters[16].Value.SetWideString(cemcm1);
  FStCm1InsUpdCommand.Parameters[17].Value.SetWideString(viacm1);
  FStCm1InsUpdCommand.Parameters[18].Value.SetWideString(smncm1);
  FStCm1InsUpdCommand.Parameters[19].Value.SetWideString(pdpcm1);
  FStCm1InsUpdCommand.Parameters[20].Value.SetWideString(dopcm1);
  FStCm1InsUpdCommand.Parameters[21].Value.SetWideString(memcm1);
  FStCm1InsUpdCommand.Parameters[22].Value.SetWideString(md);
  FStCm1InsUpdCommand.ExecuteUpdate;
  Result := FStCm1InsUpdCommand.Parameters[23].Value.GetBoolean;
end;


function TDSSetupClient.StCmaInsUpd(cnocma: string; lnkcma: string; ta1cma: string; ta2cma: string; chgcma: string; ctycma: string; zipcma: string; telcma: string; mobcma: string; faxcma: string; emacma: string; webcma: string): Boolean;
begin
  if FStCmaInsUpdCommand = nil then
  begin
    FStCmaInsUpdCommand := FDBXConnection.CreateCommand;
    FStCmaInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCmaInsUpdCommand.Text := ServerClassName + '.StCmaInsUpd';
    FStCmaInsUpdCommand.Prepare;
  end;
  FStCmaInsUpdCommand.Parameters[0].Value.SetWideString(cnocma);
  FStCmaInsUpdCommand.Parameters[1].Value.SetWideString(lnkcma);
  FStCmaInsUpdCommand.Parameters[2].Value.SetWideString(ta1cma);
  FStCmaInsUpdCommand.Parameters[3].Value.SetWideString(ta2cma);
  FStCmaInsUpdCommand.Parameters[4].Value.SetWideString(chgcma);
  FStCmaInsUpdCommand.Parameters[5].Value.SetWideString(ctycma);
  FStCmaInsUpdCommand.Parameters[6].Value.SetWideString(zipcma);
  FStCmaInsUpdCommand.Parameters[7].Value.SetWideString(telcma);
  FStCmaInsUpdCommand.Parameters[8].Value.SetWideString(mobcma);
  FStCmaInsUpdCommand.Parameters[9].Value.SetWideString(faxcma);
  FStCmaInsUpdCommand.Parameters[10].Value.SetWideString(emacma);
  FStCmaInsUpdCommand.Parameters[11].Value.SetWideString(webcma);
  FStCmaInsUpdCommand.ExecuteUpdate;
  Result := FStCmaInsUpdCommand.Parameters[12].Value.GetBoolean;
end;

function TDSSetupClient.StCm1Del(CNOCM1: string): Boolean;
begin
  if FStCm1DelCommand = nil then
  begin
    FStCm1DelCommand := FDBXConnection.CreateCommand;
    FStCm1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm1DelCommand.Text := ServerClassName + '.StCm1Del';
    FStCm1DelCommand.Prepare;
  end;
  FStCm1DelCommand.Parameters[0].Value.SetWideString(CNOCM1);
  FStCm1DelCommand.ExecuteUpdate;
  Result := FStCm1DelCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.StCm1GetAm3(ICNOAM3: string): Boolean;
begin
  if FStCm1GetAm3Command = nil then
  begin
    FStCm1GetAm3Command := FDBXConnection.CreateCommand;
    FStCm1GetAm3Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm1GetAm3Command.Text := ServerClassName + '.StCm1GetAm3';
    FStCm1GetAm3Command.Prepare;
  end;
  FStCm1GetAm3Command.Parameters[0].Value.SetWideString(ICNOAM3);
  FStCm1GetAm3Command.ExecuteUpdate;
  Result := FStCm1GetAm3Command.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.ttAm3InsUpd(stsam3: string; cmpam3: string; brnam3: string; cnoam3: string; crtam3: Integer; crlam3: Double; bfiam3: Double; minam3: Double; mpyam3: Double; mcmam3: Double; mdnam3: Double; mcnam3: Double; majam3: Double; mdsam3: Double; mitam3: Double; pdcam3: Double; uncam3: Double; cqram3: Double; adnam3: Double; acnam3: Double; apyam3: Double; ypyam3: Double; ypcam3: Double): Boolean;
begin
  if FttAm3InsUpdCommand = nil then
  begin
    FttAm3InsUpdCommand := FDBXConnection.CreateCommand;
    FttAm3InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FttAm3InsUpdCommand.Text := ServerClassName + '.ttAm3InsUpd';
    FttAm3InsUpdCommand.Prepare;
  end;
  FttAm3InsUpdCommand.Parameters[0].Value.SetWideString(stsam3);
  FttAm3InsUpdCommand.Parameters[1].Value.SetWideString(cmpam3);
  FttAm3InsUpdCommand.Parameters[2].Value.SetWideString(brnam3);
  FttAm3InsUpdCommand.Parameters[3].Value.SetWideString(cnoam3);
  FttAm3InsUpdCommand.Parameters[4].Value.SetInt32(crtam3);
  FttAm3InsUpdCommand.Parameters[5].Value.SetDouble(crlam3);
  FttAm3InsUpdCommand.Parameters[6].Value.SetDouble(bfiam3);
  FttAm3InsUpdCommand.Parameters[7].Value.SetDouble(minam3);
  FttAm3InsUpdCommand.Parameters[8].Value.SetDouble(mpyam3);
  FttAm3InsUpdCommand.Parameters[9].Value.SetDouble(mcmam3);
  FttAm3InsUpdCommand.Parameters[10].Value.SetDouble(mdnam3);
  FttAm3InsUpdCommand.Parameters[11].Value.SetDouble(mcnam3);
  FttAm3InsUpdCommand.Parameters[12].Value.SetDouble(majam3);
  FttAm3InsUpdCommand.Parameters[13].Value.SetDouble(mdsam3);
  FttAm3InsUpdCommand.Parameters[14].Value.SetDouble(mitam3);
  FttAm3InsUpdCommand.Parameters[15].Value.SetDouble(pdcam3);
  FttAm3InsUpdCommand.Parameters[16].Value.SetDouble(uncam3);
  FttAm3InsUpdCommand.Parameters[17].Value.SetDouble(cqram3);
  FttAm3InsUpdCommand.Parameters[18].Value.SetDouble(adnam3);
  FttAm3InsUpdCommand.Parameters[19].Value.SetDouble(acnam3);
  FttAm3InsUpdCommand.Parameters[20].Value.SetDouble(apyam3);
  FttAm3InsUpdCommand.Parameters[21].Value.SetDouble(ypyam3);
  FttAm3InsUpdCommand.Parameters[22].Value.SetDouble(ypcam3);
  FttAm3InsUpdCommand.ExecuteUpdate;
  Result := FttAm3InsUpdCommand.Parameters[23].Value.GetBoolean;
end;

function TDSSetupClient.ttAm3Del(ICMPAM3: string; IBRNAM3: string; ICNOAM3: string): Boolean;
begin
  if FttAm3DelCommand = nil then
  begin
    FttAm3DelCommand := FDBXConnection.CreateCommand;
    FttAm3DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FttAm3DelCommand.Text := ServerClassName + '.ttAm3Del';
    FttAm3DelCommand.Prepare;
  end;
  FttAm3DelCommand.Parameters[0].Value.SetWideString(ICMPAM3);
  FttAm3DelCommand.Parameters[1].Value.SetWideString(IBRNAM3);
  FttAm3DelCommand.Parameters[2].Value.SetWideString(ICNOAM3);
  FttAm3DelCommand.ExecuteUpdate;
  Result := FttAm3DelCommand.Parameters[3].Value.GetBoolean;
end;

function TDSSetupClient.StCm1GetUsedBrn(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; ICTY: string): Boolean;
begin
  if FStCm1GetUsedBrnCommand = nil then
  begin
    FStCm1GetUsedBrnCommand := FDBXConnection.CreateCommand;
    FStCm1GetUsedBrnCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm1GetUsedBrnCommand.Text := 'TDSSetup.StCm1GetUsedBrn';
    FStCm1GetUsedBrnCommand.Prepare;
  end;
  FStCm1GetUsedBrnCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStCm1GetUsedBrnCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStCm1GetUsedBrnCommand.Parameters[2].Value.SetWideString(ICMP);
  FStCm1GetUsedBrnCommand.Parameters[3].Value.SetWideString(IBRN);
  FStCm1GetUsedBrnCommand.Parameters[4].Value.SetWideString(ICTY);
  FStCm1GetUsedBrnCommand.ExecuteUpdate;
  Result := FStCm1GetUsedBrnCommand.Parameters[5].Value.GetBoolean;
end;

function TDSSetupClient.StPm1Get(CRITERIA: string; ORDERFIELD: string; ISRSPM1: string): Boolean;
begin
  if FStPm1GetCommand = nil then
  begin
    FStPm1GetCommand := FDBXConnection.CreateCommand;
    FStPm1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStPm1GetCommand.Text := 'TDSSetup.StPm1Get';
    FStPm1GetCommand.Prepare;
  end;
  FStPm1GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStPm1GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStPm1GetCommand.Parameters[2].Value.SetWideString(ISRSPM1);
  FStPm1GetCommand.ExecuteUpdate;
  Result := FStPm1GetCommand.Parameters[3].Value.GetBoolean;
end;

function TDSSetupClient.StPm1InsUpd(stspm1: string; itcpm1: string; itnpm1: string; enmpm1: string; tnmpm1: string; mnmpm1: string; ut1pm1: string; ut2pm1: string; ue1pm1: string; ue2pm1: string; cvtpm1: Double; whspm1: string; md: string): Boolean;
begin
  if FStPm1InsUpdCommand = nil then
  begin
    FStPm1InsUpdCommand := FDBXConnection.CreateCommand;
    FStPm1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStPm1InsUpdCommand.Text := ServerClassName + '.StPm1InsUpd';
    FStPm1InsUpdCommand.Prepare;
  end;
  FStPm1InsUpdCommand.Parameters[0].Value.SetWideString(stspm1);
  FStPm1InsUpdCommand.Parameters[1].Value.SetWideString(itcpm1);
  FStPm1InsUpdCommand.Parameters[2].Value.SetWideString(itnpm1);
  FStPm1InsUpdCommand.Parameters[3].Value.SetWideString(enmpm1);
  FStPm1InsUpdCommand.Parameters[4].Value.SetWideString(tnmpm1);
  FStPm1InsUpdCommand.Parameters[5].Value.SetWideString(mnmpm1);
  FStPm1InsUpdCommand.Parameters[6].Value.SetWideString(ut1pm1);
  FStPm1InsUpdCommand.Parameters[7].Value.SetWideString(ut2pm1);
  FStPm1InsUpdCommand.Parameters[8].Value.SetWideString(ue1pm1);
  FStPm1InsUpdCommand.Parameters[9].Value.SetWideString(ue2pm1);
  FStPm1InsUpdCommand.Parameters[10].Value.SetDouble(cvtpm1);
  FStPm1InsUpdCommand.Parameters[11].Value.SetWideString(whspm1);
  FStPm1InsUpdCommand.Parameters[12].Value.SetWideString(md);
  FStPm1InsUpdCommand.ExecuteUpdate;
  Result := FStPm1InsUpdCommand.Parameters[13].Value.GetBoolean;
end;

function TDSSetupClient.StPm1InsUpd2(itnpm1: string; uc1pm1: Double; uc2pm1: Double; up1pm1: Double; up2pm1: Double; uf1pm1: Double; uf2pm1: Double; fampm1: Double; ct1pm1: Double; ct2pm1: Double; itspm1: string; brdpm1: string; srspm1: string; geapm1: string; caspm1: Integer; pwrpm1: Integer; stkpm1: string; dpcpm1: Integer; accpm1: string): Boolean;
begin
  if FStPm1InsUpd2Command = nil then
  begin
    FStPm1InsUpd2Command := FDBXConnection.CreateCommand;
    FStPm1InsUpd2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FStPm1InsUpd2Command.Text := ServerClassName + '.StPm1InsUpd2';
    FStPm1InsUpd2Command.Prepare;
  end;
  FStPm1InsUpd2Command.Parameters[0].Value.SetWideString(itnpm1);
  FStPm1InsUpd2Command.Parameters[1].Value.SetDouble(uc1pm1);
  FStPm1InsUpd2Command.Parameters[2].Value.SetDouble(uc2pm1);
  FStPm1InsUpd2Command.Parameters[3].Value.SetDouble(up1pm1);
  FStPm1InsUpd2Command.Parameters[4].Value.SetDouble(up2pm1);
  FStPm1InsUpd2Command.Parameters[5].Value.SetDouble(uf1pm1);
  FStPm1InsUpd2Command.Parameters[6].Value.SetDouble(uf2pm1);
  FStPm1InsUpd2Command.Parameters[7].Value.SetDouble(fampm1);
  FStPm1InsUpd2Command.Parameters[8].Value.SetDouble(ct1pm1);
  FStPm1InsUpd2Command.Parameters[9].Value.SetDouble(ct2pm1);
  FStPm1InsUpd2Command.Parameters[10].Value.SetWideString(itspm1);
  FStPm1InsUpd2Command.Parameters[11].Value.SetWideString(brdpm1);
  FStPm1InsUpd2Command.Parameters[12].Value.SetWideString(srspm1);
  FStPm1InsUpd2Command.Parameters[13].Value.SetWideString(geapm1);
  FStPm1InsUpd2Command.Parameters[14].Value.SetInt32(caspm1);
  FStPm1InsUpd2Command.Parameters[15].Value.SetInt32(pwrpm1);
  FStPm1InsUpd2Command.Parameters[16].Value.SetWideString(stkpm1);
  FStPm1InsUpd2Command.Parameters[17].Value.SetInt32(dpcpm1);
  FStPm1InsUpd2Command.Parameters[18].Value.SetWideString(accpm1);
  FStPm1InsUpd2Command.ExecuteUpdate;
  Result := FStPm1InsUpd2Command.Parameters[19].Value.GetBoolean;
end;

function TDSSetupClient.StPm1Del(ITNPM1: string): Boolean;
begin
  if FStPm1DelCommand = nil then
  begin
    FStPm1DelCommand := FDBXConnection.CreateCommand;
    FStPm1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStPm1DelCommand.Text := ServerClassName + '.StPm1Del';
    FStPm1DelCommand.Prepare;
  end;
  FStPm1DelCommand.Parameters[0].Value.SetWideString(ITNPM1);
  FStPm1DelCommand.ExecuteUpdate;
  Result := FStPm1DelCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.StBgGet(I_YARBG: Integer; I_CMPBG: string; I_BRNBG: string; CRITERIA: string; ORDERFIELD: string; FLGBG: string): Boolean;
begin
  if FStBgGetCommand = nil then
  begin
    FStBgGetCommand := FDBXConnection.CreateCommand;
    FStBgGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStBgGetCommand.Text := ServerClassName + '.StBgGet';
    FStBgGetCommand.Prepare;
  end;
  FStBgGetCommand.Parameters[0].Value.SetInt32(I_YARBG);
  FStBgGetCommand.Parameters[1].Value.SetWideString(I_CMPBG);
  FStBgGetCommand.Parameters[2].Value.SetWideString(I_BRNBG);
  FStBgGetCommand.Parameters[3].Value.SetWideString(CRITERIA);
  FStBgGetCommand.Parameters[4].Value.SetWideString(ORDERFIELD);
  FStBgGetCommand.Parameters[5].Value.SetWideString(FLGBG);
  FStBgGetCommand.ExecuteUpdate;
  Result := FStBgGetCommand.Parameters[6].Value.GetBoolean;
end;


function TDSSetupClient.StBgInsUpd(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; q01bg2: Double; q02bg2: Double; q03bg2: Double; q04bg2: Double; q05bg2: Double; q06bg2: Double; q07bg2: Double; q08bg2: Double; q09bg2: Double; q10bg2: Double; q11bg2: Double; q12bg2: Double; md: string): Boolean;
begin
  if FStBgInsUpdCommand = nil then
  begin
    FStBgInsUpdCommand := FDBXConnection.CreateCommand;
    FStBgInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStBgInsUpdCommand.Text := ServerClassName + '.StBgInsUpd';
    FStBgInsUpdCommand.Prepare;
  end;
  FStBgInsUpdCommand.Parameters[0].Value.SetWideString(flgbg);
  FStBgInsUpdCommand.Parameters[1].Value.SetWideString(stsbg2);
  FStBgInsUpdCommand.Parameters[2].Value.SetWideString(yarbg2);
  FStBgInsUpdCommand.Parameters[3].Value.SetWideString(cmpbg2);
  FStBgInsUpdCommand.Parameters[4].Value.SetWideString(brnbg2);
  FStBgInsUpdCommand.Parameters[5].Value.SetWideString(itnbg2);
  FStBgInsUpdCommand.Parameters[6].Value.SetWideString(smnbg2);
  FStBgInsUpdCommand.Parameters[7].Value.SetDouble(q01bg2);
  FStBgInsUpdCommand.Parameters[8].Value.SetDouble(q02bg2);
  FStBgInsUpdCommand.Parameters[9].Value.SetDouble(q03bg2);
  FStBgInsUpdCommand.Parameters[10].Value.SetDouble(q04bg2);
  FStBgInsUpdCommand.Parameters[11].Value.SetDouble(q05bg2);
  FStBgInsUpdCommand.Parameters[12].Value.SetDouble(q06bg2);
  FStBgInsUpdCommand.Parameters[13].Value.SetDouble(q07bg2);
  FStBgInsUpdCommand.Parameters[14].Value.SetDouble(q08bg2);
  FStBgInsUpdCommand.Parameters[15].Value.SetDouble(q09bg2);
  FStBgInsUpdCommand.Parameters[16].Value.SetDouble(q10bg2);
  FStBgInsUpdCommand.Parameters[17].Value.SetDouble(q11bg2);
  FStBgInsUpdCommand.Parameters[18].Value.SetDouble(q12bg2);
  FStBgInsUpdCommand.Parameters[19].Value.SetWideString(md);
  FStBgInsUpdCommand.ExecuteUpdate;
  Result := FStBgInsUpdCommand.Parameters[20].Value.GetBoolean;
end;

function TDSSetupClient.StBgInsUpd2(flgbg: string; stsbg2: string; yarbg2: string; cmpbg2: string; brnbg2: string; itnbg2: string; smnbg2: string; a01bg2: Double; a02bg2: Double; a03bg2: Double; a04bg2: Double; a05bg2: Double; a06bg2: Double; a07bg2: Double; a08bg2: Double; a09bg2: Double; a10bg2: Double; a11bg2: Double; a12bg2: Double): Boolean;
begin
  if FStBgInsUpd2Command = nil then
  begin
    FStBgInsUpd2Command := FDBXConnection.CreateCommand;
    FStBgInsUpd2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FStBgInsUpd2Command.Text := ServerClassName + '.StBgInsUpd2';
    FStBgInsUpd2Command.Prepare;
  end;
  FStBgInsUpd2Command.Parameters[0].Value.SetWideString(flgbg);
  FStBgInsUpd2Command.Parameters[1].Value.SetWideString(stsbg2);
  FStBgInsUpd2Command.Parameters[2].Value.SetWideString(yarbg2);
  FStBgInsUpd2Command.Parameters[3].Value.SetWideString(cmpbg2);
  FStBgInsUpd2Command.Parameters[4].Value.SetWideString(brnbg2);
  FStBgInsUpd2Command.Parameters[5].Value.SetWideString(itnbg2);
  FStBgInsUpd2Command.Parameters[6].Value.SetWideString(smnbg2);
  FStBgInsUpd2Command.Parameters[7].Value.SetDouble(a01bg2);
  FStBgInsUpd2Command.Parameters[8].Value.SetDouble(a02bg2);
  FStBgInsUpd2Command.Parameters[9].Value.SetDouble(a03bg2);
  FStBgInsUpd2Command.Parameters[10].Value.SetDouble(a04bg2);
  FStBgInsUpd2Command.Parameters[11].Value.SetDouble(a05bg2);
  FStBgInsUpd2Command.Parameters[12].Value.SetDouble(a06bg2);
  FStBgInsUpd2Command.Parameters[13].Value.SetDouble(a07bg2);
  FStBgInsUpd2Command.Parameters[14].Value.SetDouble(a08bg2);
  FStBgInsUpd2Command.Parameters[15].Value.SetDouble(a09bg2);
  FStBgInsUpd2Command.Parameters[16].Value.SetDouble(a10bg2);
  FStBgInsUpd2Command.Parameters[17].Value.SetDouble(a11bg2);
  FStBgInsUpd2Command.Parameters[18].Value.SetDouble(a12bg2);
  FStBgInsUpd2Command.ExecuteUpdate;
  Result := FStBgInsUpd2Command.Parameters[19].Value.GetBoolean;
end;

function TDSSetupClient.StBgDel(FLGBG: string; YARBG2: string; CMPBG2: string; BRNBG2: string; ITNBG2: string; SMNBG2: string): Boolean;
begin
  if FStBgDelCommand = nil then
  begin
    FStBgDelCommand := FDBXConnection.CreateCommand;
    FStBgDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStBgDelCommand.Text := ServerClassName + '.StBgDel';
    FStBgDelCommand.Prepare;
  end;
  FStBgDelCommand.Parameters[0].Value.SetWideString(FLGBG);
  FStBgDelCommand.Parameters[1].Value.SetWideString(YARBG2);
  FStBgDelCommand.Parameters[2].Value.SetWideString(CMPBG2);
  FStBgDelCommand.Parameters[3].Value.SetWideString(BRNBG2);
  FStBgDelCommand.Parameters[4].Value.SetWideString(ITNBG2);
  FStBgDelCommand.Parameters[5].Value.SetWideString(SMNBG2);
  FStBgDelCommand.ExecuteUpdate;
  Result := FStBgDelCommand.Parameters[6].Value.GetBoolean;
end;

function TDSSetupClient.StStyGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStStyGetCommand = nil then
  begin
    FStStyGetCommand := FDBXConnection.CreateCommand;
    FStStyGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStStyGetCommand.Text := ServerClassName + '.StStyGet';
    FStStyGetCommand.Prepare;
  end;
  FStStyGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStStyGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStStyGetCommand.ExecuteUpdate;
  Result := FStStyGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StStyInsUpd(STSSTY: string; SERSTY: string; CNOSTY: string; ENGSTY: string; ITNSTY: string; SRSSTY: string; COLSTY: string; MD: string): Boolean;
begin
  if FStStyInsUpdCommand = nil then
  begin
    FStStyInsUpdCommand := FDBXConnection.CreateCommand;
    FStStyInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStStyInsUpdCommand.Text := ServerClassName + '.StStyInsUpd';
    FStStyInsUpdCommand.Prepare;
  end;
  FStStyInsUpdCommand.Parameters[0].Value.SetWideString(STSSTY);
  FStStyInsUpdCommand.Parameters[1].Value.SetWideString(SERSTY);
  FStStyInsUpdCommand.Parameters[2].Value.SetWideString(CNOSTY);
  FStStyInsUpdCommand.Parameters[3].Value.SetWideString(ENGSTY);
  FStStyInsUpdCommand.Parameters[4].Value.SetWideString(ITNSTY);
  FStStyInsUpdCommand.Parameters[5].Value.SetWideString(SRSSTY);
  FStStyInsUpdCommand.Parameters[6].Value.SetWideString(COLSTY);
  FStStyInsUpdCommand.Parameters[7].Value.SetWideString(MD);
  FStStyInsUpdCommand.ExecuteUpdate;
  Result := FStStyInsUpdCommand.Parameters[8].Value.GetBoolean;
end;

function TDSSetupClient.StStyDel(SERSTY: string): Boolean;
begin
  if FStStyDelCommand = nil then
  begin
    FStStyDelCommand := FDBXConnection.CreateCommand;
    FStStyDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStStyDelCommand.Text := ServerClassName + '.StStyDel';
    FStStyDelCommand.Prepare;
  end;
  FStStyDelCommand.Parameters[0].Value.SetWideString(SERSTY);
  FStStyDelCommand.ExecuteUpdate;
  Result := FStStyDelCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.StShpGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStShpGetCommand = nil then
  begin
    FStShpGetCommand := FDBXConnection.CreateCommand;
    FStShpGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStShpGetCommand.Text := ServerClassName + '.StShpGet';
    FStShpGetCommand.Prepare;
  end;
  FStShpGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStShpGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStShpGetCommand.ExecuteUpdate;
  Result := FStShpGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StShpInsUpd(STSSHP: string; CNOSHP: string; SEQSHP: Integer; FBNSHP: string; TBNSHP: string; AMTSHP: Double; MD: string): Boolean;
begin
  if FStShpInsUpdCommand = nil then
  begin
    FStShpInsUpdCommand := FDBXConnection.CreateCommand;
    FStShpInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStShpInsUpdCommand.Text := ServerClassName + '.StShpInsUpd';
    FStShpInsUpdCommand.Prepare;
  end;
  FStShpInsUpdCommand.Parameters[0].Value.SetWideString(STSSHP);
  FStShpInsUpdCommand.Parameters[1].Value.SetWideString(CNOSHP);
  FStShpInsUpdCommand.Parameters[2].Value.SetInt32(SEQSHP);
  FStShpInsUpdCommand.Parameters[3].Value.SetWideString(FBNSHP);
  FStShpInsUpdCommand.Parameters[4].Value.SetWideString(TBNSHP);
  FStShpInsUpdCommand.Parameters[5].Value.SetDouble(AMTSHP);
  FStShpInsUpdCommand.Parameters[6].Value.SetWideString(MD);
  FStShpInsUpdCommand.ExecuteUpdate;
  Result := FStShpInsUpdCommand.Parameters[7].Value.GetBoolean;
end;

function TDSSetupClient.StShpDel(CNOSHP: string; SEQSHP: Integer): Boolean;
begin
  if FStShpDelCommand = nil then
  begin
    FStShpDelCommand := FDBXConnection.CreateCommand;
    FStShpDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStShpDelCommand.Text := ServerClassName + '.StShpDel';
    FStShpDelCommand.Prepare;
  end;
  FStShpDelCommand.Parameters[0].Value.SetWideString(CNOSHP);
  FStShpDelCommand.Parameters[1].Value.SetInt32(SEQSHP);
  FStShpDelCommand.ExecuteUpdate;
  Result := FStShpDelCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StCm3Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStCm3GetCommand = nil then
  begin
    FStCm3GetCommand := FDBXConnection.CreateCommand;
    FStCm3GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm3GetCommand.Text := ServerClassName + '.StCm3Get';
    FStCm3GetCommand.Prepare;
  end;
  FStCm3GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStCm3GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStCm3GetCommand.ExecuteUpdate;
  Result := FStCm3GetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StCm3InsUpd(stscm3: string; cmpcm3: string; brncm3: string; enmcm3: string; tnmcm3: string; ta1cm3: string; ta2cm3: string; tidcm3: string; MD: string): Boolean;
begin
  if FStCm3InsUpdCommand = nil then
  begin
    FStCm3InsUpdCommand := FDBXConnection.CreateCommand;
    FStCm3InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm3InsUpdCommand.Text := ServerClassName + '.StCm3InsUpd';
    FStCm3InsUpdCommand.Prepare;
  end;
  FStCm3InsUpdCommand.Parameters[0].Value.SetWideString(stscm3);
  FStCm3InsUpdCommand.Parameters[1].Value.SetWideString(cmpcm3);
  FStCm3InsUpdCommand.Parameters[2].Value.SetWideString(brncm3);
  FStCm3InsUpdCommand.Parameters[3].Value.SetWideString(enmcm3);
  FStCm3InsUpdCommand.Parameters[4].Value.SetWideString(tnmcm3);
  FStCm3InsUpdCommand.Parameters[5].Value.SetWideString(ta1cm3);
  FStCm3InsUpdCommand.Parameters[6].Value.SetWideString(ta2cm3);
  FStCm3InsUpdCommand.Parameters[7].Value.SetWideString(tidcm3);
  FStCm3InsUpdCommand.Parameters[8].Value.SetWideString(MD);
  FStCm3InsUpdCommand.ExecuteUpdate;
  Result := FStCm3InsUpdCommand.Parameters[9].Value.GetBoolean;
end;

function TDSSetupClient.StCm3Del(CMPCM3: string; BRNCM3: string): Boolean;
begin
  if FStCm3DelCommand = nil then
  begin
    FStCm3DelCommand := FDBXConnection.CreateCommand;
    FStCm3DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStCm3DelCommand.Text := ServerClassName + '.StCm3Del';
    FStCm3DelCommand.Prepare;
  end;
  FStCm3DelCommand.Parameters[0].Value.SetWideString(CMPCM3);
  FStCm3DelCommand.Parameters[1].Value.SetWideString(BRNCM3);
  FStCm3DelCommand.ExecuteUpdate;
  Result := FStCm3DelCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StRm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStRm1GetCommand = nil then
  begin
    FStRm1GetCommand := FDBXConnection.CreateCommand;
    FStRm1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRm1GetCommand.Text := 'TDSSetup.StRm1Get';
    FStRm1GetCommand.Prepare;
  end;
  FStRm1GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStRm1GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStRm1GetCommand.ExecuteUpdate;
  Result := FStRm1GetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StRm1InsUpd(stsrm1: string; cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: Integer; prvrm1: string; pdtrm1: Double; patrm1: Double; oatrm1: Double; avlrm1: string; narrm1: string; md: string): Boolean;
begin
  if FStRm1InsUpdCommand = nil then
  begin
    FStRm1InsUpdCommand := FDBXConnection.CreateCommand;
    FStRm1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRm1InsUpdCommand.Text := 'TDSSetup.StRm1InsUpd';
    FStRm1InsUpdCommand.Prepare;
  end;
  FStRm1InsUpdCommand.Parameters[0].Value.SetWideString(stsrm1);
  FStRm1InsUpdCommand.Parameters[1].Value.SetWideString(cmprm1);
  FStRm1InsUpdCommand.Parameters[2].Value.SetWideString(brnrm1);
  FStRm1InsUpdCommand.Parameters[3].Value.SetWideString(regrm1);
  FStRm1InsUpdCommand.Parameters[4].Value.SetInt32(rgnrm1);
  FStRm1InsUpdCommand.Parameters[5].Value.SetWideString(prvrm1);
  FStRm1InsUpdCommand.Parameters[6].Value.SetDouble(pdtrm1);
  FStRm1InsUpdCommand.Parameters[7].Value.SetDouble(patrm1);
  FStRm1InsUpdCommand.Parameters[8].Value.SetDouble(oatrm1);
  FStRm1InsUpdCommand.Parameters[9].Value.SetWideString(avlrm1);
  FStRm1InsUpdCommand.Parameters[10].Value.SetWideString(narrm1);
  FStRm1InsUpdCommand.Parameters[11].Value.SetWideString(md);
  FStRm1InsUpdCommand.ExecuteUpdate;
  Result := FStRm1InsUpdCommand.Parameters[12].Value.GetBoolean;
end;

function TDSSetupClient.StRm1Del(cmprm1: string; brnrm1: string; regrm1: string; rgnrm1: string; prvrm1: string): Boolean;
begin
  if FStRm1DelCommand = nil then
  begin
    FStRm1DelCommand := FDBXConnection.CreateCommand;
    FStRm1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRm1DelCommand.Text := 'TDSSetup.StRm1Del';
    FStRm1DelCommand.Prepare;
  end;
  FStRm1DelCommand.Parameters[0].Value.SetWideString(cmprm1);
  FStRm1DelCommand.Parameters[1].Value.SetWideString(brnrm1);
  FStRm1DelCommand.Parameters[2].Value.SetWideString(regrm1);
  FStRm1DelCommand.Parameters[3].Value.SetWideString(rgnrm1);
  FStRm1DelCommand.Parameters[4].Value.SetWideString(prvrm1);
  FStRm1DelCommand.ExecuteUpdate;
  Result := FStRm1DelCommand.Parameters[5].Value.GetBoolean;
end;

function TDSSetupClient.StRegGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStRegGetCommand = nil then
  begin
    FStRegGetCommand := FDBXConnection.CreateCommand;
    FStRegGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRegGetCommand.Text := 'TDSSetup.StRegGet';
    FStRegGetCommand.Prepare;
  end;
  FStRegGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStRegGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStRegGetCommand.ExecuteUpdate;
  Result := FStRegGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StRegGetPm1(CNOREG: string; MD: string): Boolean;
begin
  if FStRegGetPm1Command = nil then
  begin
    FStRegGetPm1Command := FDBXConnection.CreateCommand;
    FStRegGetPm1Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRegGetPm1Command.Text := 'TDSSetup.StRegGetPm1';
    FStRegGetPm1Command.Prepare;
  end;
  FStRegGetPm1Command.Parameters[0].Value.SetWideString(CNOREG);
  FStRegGetPm1Command.Parameters[1].Value.SetWideString(MD);
  FStRegGetPm1Command.ExecuteUpdate;
  Result := FStRegGetPm1Command.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StRegInsUpd(stsreg: string; cmpreg: string; brnreg: string; cnoreg: string; SeqREG: Integer; itnreg: string; amtreg: Double; othreg: Double; narreg: string; md: string): Boolean;
begin
  if FStRegInsUpdCommand = nil then
  begin
    FStRegInsUpdCommand := FDBXConnection.CreateCommand;
    FStRegInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRegInsUpdCommand.Text := 'TDSSetup.StRegInsUpd';
    FStRegInsUpdCommand.Prepare;
  end;
  FStRegInsUpdCommand.Parameters[0].Value.SetWideString(stsreg);
  FStRegInsUpdCommand.Parameters[1].Value.SetWideString(cmpreg);
  FStRegInsUpdCommand.Parameters[2].Value.SetWideString(brnreg);
  FStRegInsUpdCommand.Parameters[3].Value.SetWideString(cnoreg);
  FStRegInsUpdCommand.Parameters[4].Value.SetInt32(SeqREG);
  FStRegInsUpdCommand.Parameters[5].Value.SetWideString(itnreg);
  FStRegInsUpdCommand.Parameters[6].Value.SetDouble(amtreg);
  FStRegInsUpdCommand.Parameters[7].Value.SetDouble(othreg);
  FStRegInsUpdCommand.Parameters[8].Value.SetWideString(narreg);
  FStRegInsUpdCommand.Parameters[9].Value.SetWideString(md);
  FStRegInsUpdCommand.ExecuteUpdate;
  Result := FStRegInsUpdCommand.Parameters[10].Value.GetBoolean;
end;

function TDSSetupClient.StRegDel(CMPREG: string; BRNREG: string; CNOREG: string; SEQREG: Integer): Boolean;
begin
  if FStRegDelCommand = nil then
  begin
    FStRegDelCommand := FDBXConnection.CreateCommand;
    FStRegDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRegDelCommand.Text := 'TDSSetup.StRegDel';
    FStRegDelCommand.Prepare;
  end;
  FStRegDelCommand.Parameters[0].Value.SetWideString(CMPREG);
  FStRegDelCommand.Parameters[1].Value.SetWideString(BRNREG);
  FStRegDelCommand.Parameters[2].Value.SetWideString(CNOREG);
  FStRegDelCommand.Parameters[3].Value.SetInt32(SEQREG);
  FStRegDelCommand.ExecuteUpdate;
  Result := FStRegDelCommand.Parameters[4].Value.GetBoolean;
end;

function TDSSetupClient.StAm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStAm1GetCommand = nil then
  begin
    FStAm1GetCommand := FDBXConnection.CreateCommand;
    FStAm1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStAm1GetCommand.Text := 'TDSSetup.StAm1Get';
    FStAm1GetCommand.Prepare;
  end;
  FStAm1GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStAm1GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStAm1GetCommand.ExecuteUpdate;
  Result := FStAm1GetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StAm1InsUpd(stsam1: string; cmpam1: string; brnam1: string; cnoam1: string; idtam1: Double; dnoam1: string; depam1: string; SERAM1: string; DDTAM1: Double; amtam1: Double; balam1: Double; MD: string): Boolean;
begin
  if FStAm1InsUpdCommand = nil then
  begin
    FStAm1InsUpdCommand := FDBXConnection.CreateCommand;
    FStAm1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStAm1InsUpdCommand.Text := 'TDSSetup.StAm1InsUpd';
    FStAm1InsUpdCommand.Prepare;
  end;
  FStAm1InsUpdCommand.Parameters[0].Value.SetWideString(stsam1);
  FStAm1InsUpdCommand.Parameters[1].Value.SetWideString(cmpam1);
  FStAm1InsUpdCommand.Parameters[2].Value.SetWideString(brnam1);
  FStAm1InsUpdCommand.Parameters[3].Value.SetWideString(cnoam1);
  FStAm1InsUpdCommand.Parameters[4].Value.SetDouble(idtam1);
  FStAm1InsUpdCommand.Parameters[5].Value.SetWideString(dnoam1);
  FStAm1InsUpdCommand.Parameters[6].Value.SetWideString(depam1);
  FStAm1InsUpdCommand.Parameters[7].Value.SetWideString(SERAM1);
  FStAm1InsUpdCommand.Parameters[8].Value.SetDouble(DDTAM1);
  FStAm1InsUpdCommand.Parameters[9].Value.SetDouble(amtam1);
  FStAm1InsUpdCommand.Parameters[10].Value.SetDouble(balam1);
  FStAm1InsUpdCommand.Parameters[11].Value.SetWideString(MD);
  FStAm1InsUpdCommand.ExecuteUpdate;
  Result := FStAm1InsUpdCommand.Parameters[12].Value.GetBoolean;
end;

function TDSSetupClient.StAm1Del(yaram1: Integer; cmpam1: string; brnam1: string; cnoam1: string; dnoam1: string): Boolean;
begin
  if FStAm1DelCommand = nil then
  begin
    FStAm1DelCommand := FDBXConnection.CreateCommand;
    FStAm1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStAm1DelCommand.Text := 'TDSSetup.StAm1Del';
    FStAm1DelCommand.Prepare;
  end;
  FStAm1DelCommand.Parameters[0].Value.SetInt32(yaram1);
  FStAm1DelCommand.Parameters[1].Value.SetWideString(cmpam1);
  FStAm1DelCommand.Parameters[2].Value.SetWideString(brnam1);
  FStAm1DelCommand.Parameters[3].Value.SetWideString(cnoam1);
  FStAm1DelCommand.Parameters[4].Value.SetWideString(dnoam1);
  FStAm1DelCommand.ExecuteUpdate;
  Result := FStAm1DelCommand.Parameters[5].Value.GetBoolean;
end;

function TDSSetupClient.StYm1Get(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStYm1GetCommand = nil then
  begin
    FStYm1GetCommand := FDBXConnection.CreateCommand;
    FStYm1GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStYm1GetCommand.Text := 'TDSSetup.StYm1Get';
    FStYm1GetCommand.Prepare;
  end;
  FStYm1GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStYm1GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStYm1GetCommand.ExecuteUpdate;
  Result := FStYm1GetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StYm1InsUpd(stsYM1: string; DCDYM1: string; cmpYM1: string; brnYM1: string; VnoYM1: string; idtYM1: Double; dnoYM1: string; depYM1: string; ABTYM1: Double; VATYM1: string; AVTYM1: Double; POYM1: Integer; SERYM1: string; DDTYM1: Double; amtYM1: Double; balYM1: Double; MD: string): Boolean;
begin
  if FStYm1InsUpdCommand = nil then
  begin
    FStYm1InsUpdCommand := FDBXConnection.CreateCommand;
    FStYm1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStYm1InsUpdCommand.Text := 'TDSSetup.StYm1InsUpd';
    FStYm1InsUpdCommand.Prepare;
  end;
  FStYm1InsUpdCommand.Parameters[0].Value.SetWideString(stsYM1);
  FStYm1InsUpdCommand.Parameters[1].Value.SetWideString(DCDYM1);
  FStYm1InsUpdCommand.Parameters[2].Value.SetWideString(cmpYM1);
  FStYm1InsUpdCommand.Parameters[3].Value.SetWideString(brnYM1);
  FStYm1InsUpdCommand.Parameters[4].Value.SetWideString(VnoYM1);
  FStYm1InsUpdCommand.Parameters[5].Value.SetDouble(idtYM1);
  FStYm1InsUpdCommand.Parameters[6].Value.SetWideString(dnoYM1);
  FStYm1InsUpdCommand.Parameters[7].Value.SetWideString(depYM1);
  FStYm1InsUpdCommand.Parameters[8].Value.SetDouble(ABTYM1);
  FStYm1InsUpdCommand.Parameters[9].Value.SetWideString(VATYM1);
  FStYm1InsUpdCommand.Parameters[10].Value.SetDouble(AVTYM1);
  FStYm1InsUpdCommand.Parameters[11].Value.SetInt32(POYM1);
  FStYm1InsUpdCommand.Parameters[12].Value.SetWideString(SERYM1);
  FStYm1InsUpdCommand.Parameters[13].Value.SetDouble(DDTYM1);
  FStYm1InsUpdCommand.Parameters[14].Value.SetDouble(amtYM1);
  FStYm1InsUpdCommand.Parameters[15].Value.SetDouble(balYM1);
  FStYm1InsUpdCommand.Parameters[16].Value.SetWideString(MD);
  FStYm1InsUpdCommand.ExecuteUpdate;
  Result := FStYm1InsUpdCommand.Parameters[17].Value.GetBoolean;
end;

function TDSSetupClient.StYm1Del(yarYM1: Integer; cmpYM1: string; brnYM1: string; VnoYM1: string; dnoYM1: string): Boolean;
begin
  if FStYm1DelCommand = nil then
  begin
    FStYm1DelCommand := FDBXConnection.CreateCommand;
    FStYm1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStYm1DelCommand.Text := 'TDSSetup.StYm1Del';
    FStYm1DelCommand.Prepare;
  end;
  FStYm1DelCommand.Parameters[0].Value.SetInt32(yarYM1);
  FStYm1DelCommand.Parameters[1].Value.SetWideString(cmpYM1);
  FStYm1DelCommand.Parameters[2].Value.SetWideString(brnYM1);
  FStYm1DelCommand.Parameters[3].Value.SetWideString(VnoYM1);
  FStYm1DelCommand.Parameters[4].Value.SetWideString(dnoYM1);
  FStYm1DelCommand.ExecuteUpdate;
  Result := FStYm1DelCommand.Parameters[5].Value.GetBoolean;
end;

function TDSSetupClient.StZipGet(CRITERIA: string; ORDERFIELD: string): Boolean;
begin
  if FStZipGetCommand = nil then
  begin
    FStZipGetCommand := FDBXConnection.CreateCommand;
    FStZipGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStZipGetCommand.Text := 'TDSSetup.StZipGet';
    FStZipGetCommand.Prepare;
  end;
  FStZipGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStZipGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStZipGetCommand.ExecuteUpdate;
  Result := FStZipGetCommand.Parameters[2].Value.GetBoolean;
end;

function TDSSetupClient.StPm1GetImage(ITNPM1: string): Boolean;
begin
  if FStPm1GetImageCommand = nil then
  begin
    FStPm1GetImageCommand := FDBXConnection.CreateCommand;
    FStPm1GetImageCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStPm1GetImageCommand.Text := 'TDSSetup.StPm1GetImage';
    FStPm1GetImageCommand.Prepare;
  end;
  FStPm1GetImageCommand.Parameters[0].Value.SetWideString(ITNPM1);
  FStPm1GetImageCommand.ExecuteUpdate;
  Result := FStPm1GetImageCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.StPm1DelImage(ITNPM1: string): Boolean;
begin
  if FStPm1DelImageCommand = nil then
  begin
    FStPm1DelImageCommand := FDBXConnection.CreateCommand;
    FStPm1DelImageCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStPm1DelImageCommand.Text := 'TDSSetup.StPm1DelImage';
    FStPm1DelImageCommand.Prepare;
  end;
  FStPm1DelImageCommand.Parameters[0].Value.SetWideString(ITNPM1);
  FStPm1DelImageCommand.ExecuteUpdate;
  Result := FStPm1DelImageCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.StIm2Get(CRITERIA: string; ORDERFIELD: string; IYARIM2: Integer; ICMPIM2: string; IBRNIM2: string; IDCDIM2: string): Boolean;
begin
  if FStIm2GetCommand = nil then
  begin
    FStIm2GetCommand := FDBXConnection.CreateCommand;
    FStIm2GetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStIm2GetCommand.Text := 'TDSSetup.StIm2Get';
    FStIm2GetCommand.Prepare;
  end;
  FStIm2GetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStIm2GetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStIm2GetCommand.Parameters[2].Value.SetInt32(IYARIM2);
  FStIm2GetCommand.Parameters[3].Value.SetWideString(ICMPIM2);
  FStIm2GetCommand.Parameters[4].Value.SetWideString(IBRNIM2);
  FStIm2GetCommand.Parameters[5].Value.SetWideString(IDCDIM2);
  FStIm2GetCommand.ExecuteUpdate;
  Result := FStIm2GetCommand.Parameters[6].Value.GetBoolean;
end;

function TDSSetupClient.StIm2InsUpd(stsim2: string; cmpim2: string; brnim2: string; fwhim2: string; twhim2: string; itnim2: string; serim2: string; engim2: string; colim2: string; idtim2: Double; movim2: string; dcdim2: string; dnoim2: Int64; seqim2: Integer; depim2: string; desim2: string; qt1im2: Integer; qt2im2: Integer; ct1im2: Double; ct2im2: Double; at1im2: Double; at2im2: Double; uc1im2: Double; uc2im2: Double; up1im2: Double; up2im2: Double; md: string): Boolean;
begin
  if FStIm2InsUpdCommand = nil then
  begin
    FStIm2InsUpdCommand := FDBXConnection.CreateCommand;
    FStIm2InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStIm2InsUpdCommand.Text := 'TDSSetup.StIm2InsUpd';
    FStIm2InsUpdCommand.Prepare;
  end;
  FStIm2InsUpdCommand.Parameters[0].Value.SetWideString(stsim2);
  FStIm2InsUpdCommand.Parameters[1].Value.SetWideString(cmpim2);
  FStIm2InsUpdCommand.Parameters[2].Value.SetWideString(brnim2);
  FStIm2InsUpdCommand.Parameters[3].Value.SetWideString(fwhim2);
  FStIm2InsUpdCommand.Parameters[4].Value.SetWideString(twhim2);
  FStIm2InsUpdCommand.Parameters[5].Value.SetWideString(itnim2);
  FStIm2InsUpdCommand.Parameters[6].Value.SetWideString(serim2);
  FStIm2InsUpdCommand.Parameters[7].Value.SetWideString(engim2);
  FStIm2InsUpdCommand.Parameters[8].Value.SetWideString(colim2);
  FStIm2InsUpdCommand.Parameters[9].Value.SetDouble(idtim2);
  FStIm2InsUpdCommand.Parameters[10].Value.SetWideString(movim2);
  FStIm2InsUpdCommand.Parameters[11].Value.SetWideString(dcdim2);
  FStIm2InsUpdCommand.Parameters[12].Value.SetInt64(dnoim2);
  FStIm2InsUpdCommand.Parameters[13].Value.SetInt32(seqim2);
  FStIm2InsUpdCommand.Parameters[14].Value.SetWideString(depim2);
  FStIm2InsUpdCommand.Parameters[15].Value.SetWideString(desim2);
  FStIm2InsUpdCommand.Parameters[16].Value.SetInt32(qt1im2);
  FStIm2InsUpdCommand.Parameters[17].Value.SetInt32(qt2im2);
  FStIm2InsUpdCommand.Parameters[18].Value.SetDouble(ct1im2);
  FStIm2InsUpdCommand.Parameters[19].Value.SetDouble(ct2im2);
  FStIm2InsUpdCommand.Parameters[20].Value.SetDouble(at1im2);
  FStIm2InsUpdCommand.Parameters[21].Value.SetDouble(at2im2);
  FStIm2InsUpdCommand.Parameters[22].Value.SetDouble(uc1im2);
  FStIm2InsUpdCommand.Parameters[23].Value.SetDouble(uc2im2);
  FStIm2InsUpdCommand.Parameters[24].Value.SetDouble(up1im2);
  FStIm2InsUpdCommand.Parameters[25].Value.SetDouble(up2im2);
  FStIm2InsUpdCommand.Parameters[26].Value.SetWideString(md);
  FStIm2InsUpdCommand.ExecuteUpdate;
  Result := FStIm2InsUpdCommand.Parameters[27].Value.GetBoolean;
end;

function TDSSetupClient.StIm2Del(dnoim2: Int64): Boolean;
begin
  if FStIm2DelCommand = nil then
  begin
    FStIm2DelCommand := FDBXConnection.CreateCommand;
    FStIm2DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStIm2DelCommand.Text := 'TDSSetup.StIm2Del';
    FStIm2DelCommand.Prepare;
  end;
  FStIm2DelCommand.Parameters[0].Value.SetInt64(dnoim2);
  FStIm2DelCommand.ExecuteUpdate;
  Result := FStIm2DelCommand.Parameters[1].Value.GetBoolean;
end;

function TDSSetupClient.STIm1GetByItn(CRITERIA: string; ORDERFIELD: string; ITNIM1: string; COLIM1: string): Boolean;
begin
  if FSTIm1GetByItnCommand = nil then
  begin
    FSTIm1GetByItnCommand := FDBXConnection.CreateCommand;
    FSTIm1GetByItnCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSTIm1GetByItnCommand.Text := 'TDSSetup.STIm1GetByItn';
    FSTIm1GetByItnCommand.Prepare;
  end;
  FSTIm1GetByItnCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FSTIm1GetByItnCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FSTIm1GetByItnCommand.Parameters[2].Value.SetWideString(ITNIM1);
  FSTIm1GetByItnCommand.Parameters[3].Value.SetWideString(COLIM1);
  FSTIm1GetByItnCommand.ExecuteUpdate;
  Result := FSTIm1GetByItnCommand.Parameters[4].Value.GetBoolean;
end;

function TDSSetupClient.StPm1GetByItc(CRITERIA: string; ORDERFIELD: string; ITCPM1: string): Boolean;
begin
  if FStPm1GetByItcCommand = nil then
  begin
    FStPm1GetByItcCommand := FDBXConnection.CreateCommand;
    FStPm1GetByItcCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStPm1GetByItcCommand.Text := 'TDSSetup.StPm1GetByItc';
    FStPm1GetByItcCommand.Prepare;
  end;
  FStPm1GetByItcCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStPm1GetByItcCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStPm1GetByItcCommand.Parameters[2].Value.SetWideString(ITCPM1);
  FStPm1GetByItcCommand.ExecuteUpdate;
  Result := FStPm1GetByItcCommand.Parameters[3].Value.GetBoolean;
end;

function TDSSetupClient.StRedCardGet(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string): Boolean;
begin
  if FStRedCardGetCommand = nil then
  begin
    FStRedCardGetCommand := FDBXConnection.CreateCommand;
    FStRedCardGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStRedCardGetCommand.Text := 'TDSSetup.StRedCardGet';
    FStRedCardGetCommand.Prepare;
  end;
  FStRedCardGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStRedCardGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStRedCardGetCommand.Parameters[2].Value.SetWideString(ICMP);
  FStRedCardGetCommand.Parameters[3].Value.SetWideString(IBRN);
  FStRedCardGetCommand.ExecuteUpdate;
  Result := FStRedCardGetCommand.Parameters[4].Value.GetBoolean;
end;

function TDSSetupClient.StFg1GetList(CRITERIA: string; ORDERFIELD: string; IYAR: Integer; ICMP: string; IBRN: string): Boolean;
begin
  if FStFg1GetListCommand = nil then
  begin
    FStFg1GetListCommand := FDBXConnection.CreateCommand;
    FStFg1GetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStFg1GetListCommand.Text := 'TDSSetup.StFg1GetList';
    FStFg1GetListCommand.Prepare;
  end;
  FStFg1GetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FStFg1GetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FStFg1GetListCommand.Parameters[2].Value.SetInt32(IYAR);
  FStFg1GetListCommand.Parameters[3].Value.SetWideString(ICMP);
  FStFg1GetListCommand.Parameters[4].Value.SetWideString(IBRN);
  FStFg1GetListCommand.ExecuteUpdate;
  Result := FStFg1GetListCommand.Parameters[5].Value.GetBoolean;
end;

function TDSSetupClient.StFg1GetDtl(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
begin
  if FStFg1GetDtlCommand = nil then
  begin
    FStFg1GetDtlCommand := FDBXConnection.CreateCommand;
    FStFg1GetDtlCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStFg1GetDtlCommand.Text := 'TDSSetup.StFg1GetDtl';
    FStFg1GetDtlCommand.Prepare;
  end;
  FStFg1GetDtlCommand.Parameters[0].Value.SetInt32(IYAR);
  FStFg1GetDtlCommand.Parameters[1].Value.SetWideString(ICMP);
  FStFg1GetDtlCommand.Parameters[2].Value.SetWideString(IBRN);
  FStFg1GetDtlCommand.Parameters[3].Value.SetWideString(IPRD);
  FStFg1GetDtlCommand.Parameters[4].Value.SetDouble(IFDT);
  FStFg1GetDtlCommand.Parameters[5].Value.SetDouble(ITDT);
  FStFg1GetDtlCommand.ExecuteUpdate;
  Result := FStFg1GetDtlCommand.Parameters[6].Value.GetBoolean;
end;

function TDSSetupClient.StFg1Del(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double): Boolean;
begin
  if FStFg1DelCommand = nil then
  begin
    FStFg1DelCommand := FDBXConnection.CreateCommand;
    FStFg1DelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStFg1DelCommand.Text := 'TDSSetup.StFg1Del';
    FStFg1DelCommand.Prepare;
  end;
  FStFg1DelCommand.Parameters[0].Value.SetInt32(IYAR);
  FStFg1DelCommand.Parameters[1].Value.SetWideString(ICMP);
  FStFg1DelCommand.Parameters[2].Value.SetWideString(IBRN);
  FStFg1DelCommand.Parameters[3].Value.SetWideString(IPRD);
  FStFg1DelCommand.Parameters[4].Value.SetDouble(IFDT);
  FStFg1DelCommand.Parameters[5].Value.SetDouble(ITDT);
  FStFg1DelCommand.ExecuteUpdate;
  Result := FStFg1DelCommand.Parameters[6].Value.GetBoolean;
end;

function TDSSetupClient.StFg1InsUpd(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; IFDT: Double; ITDT: Double; SEQFG1: Integer; FGDFG1: string; FCLFG1: string; FQ1FG1: Integer; FQ2FG1: Integer; FDSFG1: Double; FPAFG1: Double; FU1FG1: Double; FU2FG1: Double; FAMFG1: Double; ABBFG1: string; ENTUSR: string; md: string): Boolean;
begin
  if FStFg1InsUpdCommand = nil then
  begin
    FStFg1InsUpdCommand := FDBXConnection.CreateCommand;
    FStFg1InsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStFg1InsUpdCommand.Text := 'TDSSetup.StFg1InsUpd';
    FStFg1InsUpdCommand.Prepare;
  end;
  FStFg1InsUpdCommand.Parameters[0].Value.SetInt32(IYAR);
  FStFg1InsUpdCommand.Parameters[1].Value.SetWideString(ICMP);
  FStFg1InsUpdCommand.Parameters[2].Value.SetWideString(IBRN);
  FStFg1InsUpdCommand.Parameters[3].Value.SetWideString(IPRD);
  FStFg1InsUpdCommand.Parameters[4].Value.SetDouble(IFDT);
  FStFg1InsUpdCommand.Parameters[5].Value.SetDouble(ITDT);
  FStFg1InsUpdCommand.Parameters[6].Value.SetInt32(SEQFG1);
  FStFg1InsUpdCommand.Parameters[7].Value.SetWideString(FGDFG1);
  FStFg1InsUpdCommand.Parameters[8].Value.SetWideString(FCLFG1);
  FStFg1InsUpdCommand.Parameters[9].Value.SetInt32(FQ1FG1);
  FStFg1InsUpdCommand.Parameters[10].Value.SetInt32(FQ2FG1);
  FStFg1InsUpdCommand.Parameters[11].Value.SetDouble(FDSFG1);
  FStFg1InsUpdCommand.Parameters[12].Value.SetDouble(FPAFG1);
  FStFg1InsUpdCommand.Parameters[13].Value.SetDouble(FU1FG1);
  FStFg1InsUpdCommand.Parameters[14].Value.SetDouble(FU2FG1);
  FStFg1InsUpdCommand.Parameters[15].Value.SetDouble(FAMFG1);
  FStFg1InsUpdCommand.Parameters[16].Value.SetWideString(ABBFG1);
  FStFg1InsUpdCommand.Parameters[17].Value.SetWideString(ENTUSR);
  FStFg1InsUpdCommand.Parameters[18].Value.SetWideString(md);
  FStFg1InsUpdCommand.ExecuteUpdate;
  Result := FStFg1InsUpdCommand.Parameters[19].Value.GetBoolean;
end;

function TDSSetupClient.StFg1GetUsed(IYAR: Integer; ICMP: string; IBRN: string; IPRD: string; ITRN: Double): Boolean;
begin
  if FStFg1GetUsedCommand = nil then
  begin
    FStFg1GetUsedCommand := FDBXConnection.CreateCommand;
    FStFg1GetUsedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStFg1GetUsedCommand.Text := 'TDSSetup.StFg1GetUsed';
    FStFg1GetUsedCommand.Prepare;
  end;
  FStFg1GetUsedCommand.Parameters[0].Value.SetInt32(IYAR);
  FStFg1GetUsedCommand.Parameters[1].Value.SetWideString(ICMP);
  FStFg1GetUsedCommand.Parameters[2].Value.SetWideString(IBRN);
  FStFg1GetUsedCommand.Parameters[3].Value.SetWideString(IPRD);
  FStFg1GetUsedCommand.Parameters[4].Value.SetDouble(ITRN);
  FStFg1GetUsedCommand.ExecuteUpdate;
  Result := FStFg1GetUsedCommand.Parameters[5].Value.GetBoolean;
end;


end.
