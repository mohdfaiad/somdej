unit DSCarsaleIntf;

interface

uses
  DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr,
  DBXDBReaders, Graphics, DBXJSONReflect, DSMainIntf;

type
  TDSCarsaleClient = class(TDSMainClient)
  private
    FMtCsmGetCommand: TDBXCommand;
    FMtCsmGetAddrCommand: TDBXCommand;
    FMtCsmGetCardCommand: TDBXCommand;
    FMtCsmInsUpdCommand: TDBXCommand;
    FMtCsmInsUpdFamilyAndWorkCommand: TDBXCommand;
    FMtCsmInsUpdCommitCommand: TDBXCommand;
    FMtCsmInsUpdAddrCommand: TDBXCommand;
    FMtCsmInsUpdCardCommand: TDBXCommand;
    FMtCsmDelCommand: TDBXCommand;
    FMtAppGetListCommand: TDBXCommand;
    FMtAppGetCommand: TDBXCommand;
    FMtAppGetAccessoryCommand: TDBXCommand;
    FMtAppGetCardCommand: TDBXCommand;
    FMtAppGetExpCommand: TDBXCommand;
    FMtAppGetDownCommand: TDBXCommand;
    FMtAppGetFollowupCommand: TDBXCommand;
    FMtAppInsUpdCommand: TDBXCommand;
    FMtAppInsUpdProductCommand: TDBXCommand;
    FMtAppInsUpdConditionCommand: TDBXCommand;
    FMtAppInsUpdInsuranceCommand: TDBXCommand;
    FMtAppInsUpd_CommitCommand: TDBXCommand;
    FMtAppInsUpdAccessoryCommand: TDBXCommand;
    FMtAppInsUpdCardCommand: TDBXCommand;
    FMtAppInsUpdExpCommand: TDBXCommand;
    FMtAppInsUpdDownCommand: TDBXCommand;
    FMtAppInsUpdFollowupCommand: TDBXCommand;
    FMtAppDelCommand: TDBXCommand;
    FMtSetupAccessoryGetListCommand: TDBXCommand;
    FMtSetupAccessoryGetCommand: TDBXCommand;
    FMtSetupAccessoryInsUpdCommand: TDBXCommand;
    FMtSetupAccessoryDelCommand: TDBXCommand;
    FMtApprGetListCommand: TDBXCommand;
    FMtApprInsUpdCommand: TDBXCommand;
    FMtApprDelCommand: TDBXCommand;
    FMtApprGetCheckCommand: TDBXCommand;
    FMtApprGetDocCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;

    function MtCsmGet(CRITERIA: string; ORDERFIELD: string; ICMPCSM: string; IBRNCSM: string; ICFGCSM: string): Boolean;
    function MtCsmGetAddr(CCNCSM: Int64; LNKCSM: string): Boolean;
    function MtCsmGetCard(CCNCSM: Int64): Boolean;
    function MtCsmInsUpd(STSCSM: string; CMPCSM: string; BRNCSM: string; CTYCSM: string; CFGCSM: string; CCNCSM: Int64; PRECSM: string; FNMCSM: string; LNMCSM: string; SEXCSM: string; SSMCSM: string; BDTCSM: Double; NTNCSM: string; NTVCSM: string; RELCSM: string; STACSM: string): Boolean;
    function MtCsmInsUpdFamilyAndWork(CPNCSM: string; CPSCSM: string; CBNCSM: Double; CPWCSM: string; CINCSM: Double; CCHCSM: Integer; HTPCSM: string; PBTCSM: string; PSTCSM: string; BUSCSM: string; SALCSM: Double; BONCSM: Double; OTHCSM: Double; EXPCSM: Double; PCMCSM: string; HDTCSM: Double; PDPCSM: string; DOPCSM: string; MEMCSM: string; ENTUSR: string; MD: string): Boolean;
    function MtCsmInsUpdCommit(var OUT_CCNCSM: Int64): Boolean;
    function MtCsmInsUpdAddr(CCNCSM: Int64; lnkcsm: string; ta1csm: string; ta2csm: string; chgcsm: string; ctycsm: string; zipcsm: string; telcsm: string; mobcsm: string; faxcsm: string; emacsm: string; webcsm: string; ENTUSR: string): Boolean;
    function MtCsmInsUpdCard(CCNCSI: Int64; CDCCSI: string; CDNCSI: string; ISDCSI: Double; EPDCSI: Double; ISWCSI: string; ENTUSR: string): Boolean;
    function MtCsmDel(CCNCSM: Int64): Boolean;

    function MtAppGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; APPSTS: string): Boolean;
    function MtAppGet(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppGetAccessory(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; IMOD: string): Boolean;
    function MtAppGetCard(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; ICNO: Int64): Boolean;
    function MtAppGetExp(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppGetDown(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppGetFollowup(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtAppInsUpd(STSOT5: string; YAROT5: Integer; CMPOT5: string; BRNOT5: string; DCDOT5: string; DNOOT5: Integer; SEQOT5: Integer; IDTOT5: Double; DEPOT5: string; CNOOT5: Int64; CTYOT5: string; CRTOT5: Integer; SMNOT5: string; PNOOT5: string; RPDOT5: Double; RSNOT5: string; RSDOT5: Double; PSTOT5: string; BRKOT5: string; GNOOT5: Int64; EXDOT5: Double; TMDOT5: string; PLCOT5: string; EPDOT5: Double; EPTOT5: string; EPSOT5: string; MEMOT5: string): Boolean;
    function MtAppInsUpdProduct(PRDOT5: string; COLOT5: string; SEROT5: string; ENGOT5: string; WHSOT5: string; USEOT5: string; BNOOT5: string; KEYOT5: string; QO1OT5: Integer; QO2OT5: Integer; PDCOT5: Double; PDAOT5: Double; UP1OT5: Double; UP2OT5: Double; NETOT5: Double; PPYOT5: Double; TAXOT5: Double; APCOT5: Double; AFEOT5: Double): Boolean;
    function MtAppInsUpdCondition(STPOT5: string; FCDOT5: string; DWTOT5: Double; NLEOT5: Integer; RATOT5: Double; PMMOT5: Double; CM1OT5: Double; CM2OT5: Double; DDTOT5: Double; ESDOT5: Integer): Boolean;
    function MtAppInsUpdInsurance(ICDOT5: string; CN1OT5: string; ITSOT5: Double; SDTOT5: Double; EDTOT5: Double; ISDOT5: string; IVSOT5: Double; INTOT5: Double; BDTOT5: Double; FDTOT5: Double; RDTOT5: Double; INOOT5: string; PSROT5: string): Boolean;
    function MtAppInsUpd_Commit(ENTUSR: string; MD: string; var OUT_DNO: Integer): Boolean;
    function MtAppInsUpdAccessory(STSOT6: string; YAROT6: Integer; CMPOT6: string; BRNOT6: string; DCDOT6: string; DNOOT6: Integer; SEQOT6: Integer; FGDOT6: string; FRDOT6: string; FSROT6: string; FWHOT6: string; FPDOT6: string; FCLOT6: string; FQ1OT6: Integer; FQ2OT6: Integer; TDSOT6: string; FDSOT6: Double; FPAOT6: Double; FU1OT6: Double; FU2OT6: Double; PRTOT6: string; ABBOT6: string; ENTUSR: string): Boolean;
    function MtAppInsUpdCard(STSOMI: string; YAROMI: Integer; CMPOMI: string; BRNOMI: string; DCDOMI: string; DNOOMI: Integer; CNOOMI: Int64; CDCOMI: string; RDTOMI: Double; RTMOMI: string; PSNOMI: string; FLGOMI: string; ENTUSR: string): Boolean;
    function MtAppInsUpdExp(STSEXP: string; YAREXP: Integer; CMPEXP: string; BRNEXP: string; DCDEXP: string; DNOEXP: Integer; SEQEXP: Integer; CDCEXP: string; AMTEXP: Double; TP1EXP: string; TP2EXP: string; DCREXP: string; ENTUSR: string): Boolean;
    function MtAppInsUpdDown(STSOM7: string; YAROM7: Integer; CMPOM7: string; BRNOM7: string; DCDOM7: string; DNOOM7: Integer; SEQOM7: Integer; PPDOM7: string; PTPOM7: string; NOTOM7: string; PDTOM7: Double; PATOM7: Double; NAROM7: string; ENTUSR: string): Boolean;
    function MtAppInsUpdFollowup(STSOM8: string; YAROM8: Integer; CMPOM8: string; BRNOM8: string; DCDOM8: string; DNOOM8: Integer; SEQOM8: Integer; OCDOM8: string; ODTOM8: Double; PSNOM8: Double; ENTUSR: string): Boolean;
    function MtAppDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtSetupAccessoryGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; BRD: string): Boolean;
    function MtSetupAccessoryGet(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
    function MtSetupAccessoryInsUpd(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer; seqom3: Integer; fsrom3: string; idtom3: Double; depom3: string; vnoom3: string; vtpom3: string; cpsom3: string; crtom3: Integer; rdcom3: string; rdnom3: Integer; rsqom3: Integer; rdtom3: Double; prdom3: string; qo1om3: Integer; qo2om3: Integer; qr1om3: Integer; qr2om3: Integer; uc1om3: Double; uc2om3: Double; twhom3: string; nteom3: string; dseom3: string; serom3: string; engom3: string; entusr: string): Boolean;
    function MtSetupAccessoryDel(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
    function MtApprGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double): Boolean;
    function MtApprInsUpd(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; IDTST3: Double; ENTUSR: string; var DNOST3: Integer): Boolean;
    function MtApprDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
    function MtApprGetCheck(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): string;
    function MtApprGetDoc(RDNRTH: Integer): Boolean;
  end;

implementation

constructor TDSCarsaleClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
  ServerClassName := 'TDSCarsale';
end;

constructor TDSCarsaleClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
  ServerClassName := 'TDSCarsale';
end;

destructor TDSCarsaleClient.Destroy;
begin
    FreeAndNil(FMtCsmGetCommand);
    FreeAndNil(FMtCsmGetAddrCommand);
    FreeAndNil(FMtCsmGetCardCommand);
    FreeAndNil(FMtCsmInsUpdCommand);
    FreeAndNil(FMtCsmInsUpdFamilyAndWorkCommand);
    FreeAndNil(FMtCsmInsUpdCommitCommand);
    FreeAndNil(FMtCsmInsUpdAddrCommand);
    FreeAndNil(FMtCsmInsUpdCardCommand);
    FreeAndNil(FMtCsmDelCommand);

    FreeAndNil(FMtAppGetListCommand);
    FreeAndNil(FMtAppGetCommand);
    FreeAndNil(FMtAppGetAccessoryCommand);
    FreeAndNil(FMtAppGetCardCommand);
    FreeAndNil(FMtAppGetExpCommand);
    FreeAndNil(FMtAppGetDownCommand);
    FreeAndNil(FMtAppGetFollowupCommand);
    FreeAndNil(FMtAppInsUpdCommand);
    FreeAndNil(FMtAppInsUpdProductCommand);
    FreeAndNil(FMtAppInsUpdConditionCommand);
    FreeAndNil(FMtAppInsUpdInsuranceCommand);
    FreeAndNil(FMtAppInsUpd_CommitCommand);
    FreeAndNil(FMtAppInsUpdAccessoryCommand);
    FreeAndNil(FMtAppInsUpdCardCommand);
    FreeAndNil(FMtAppInsUpdExpCommand);
    FreeAndNil(FMtAppInsUpdDownCommand);
    FreeAndNil(FMtAppInsUpdFollowupCommand);
    FreeAndNil(FMtAppDelCommand);
    FreeAndNil(FMtSetupAccessoryGetListCommand);
    FreeAndNil(FMtSetupAccessoryGetCommand);
    FreeAndNil(FMtSetupAccessoryInsUpdCommand);
    FreeAndNil(FMtSetupAccessoryDelCommand);

    FreeAndNil(FMtApprGetListCommand);
    FreeAndNil(FMtApprInsUpdCommand);
    FreeAndNil(FMtApprDelCommand);
    FreeAndNil(FMtApprGetCheckCommand);
    inherited;

end;

function TDSCarSaleClient.MtCsmGet(CRITERIA: string; ORDERFIELD: string; ICMPCSM: string; IBRNCSM: string; ICFGCSM: string): Boolean;
begin
  if FMtCsmGetCommand = nil then
  begin
    FMtCsmGetCommand := FDBXConnection.CreateCommand;
    FMtCsmGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmGetCommand.Text := 'TDSCarSale.MtCsmGet';
    FMtCsmGetCommand.Prepare;
  end;
  FMtCsmGetCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FMtCsmGetCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FMtCsmGetCommand.Parameters[2].Value.SetWideString(ICMPCSM);
  FMtCsmGetCommand.Parameters[3].Value.SetWideString(IBRNCSM);
  FMtCsmGetCommand.Parameters[4].Value.SetWideString(ICFGCSM);
  FMtCsmGetCommand.ExecuteUpdate;
  Result := FMtCsmGetCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmGetAddr(CCNCSM: Int64; LNKCSM: string): Boolean;
begin
  if FMtCsmGetAddrCommand = nil then
  begin
    FMtCsmGetAddrCommand := FDBXConnection.CreateCommand;
    FMtCsmGetAddrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmGetAddrCommand.Text := 'TDSCarSale.MtCsmGetAddr';
    FMtCsmGetAddrCommand.Prepare;
  end;
  FMtCsmGetAddrCommand.Parameters[0].Value.SetInt64(CCNCSM);
  FMtCsmGetAddrCommand.Parameters[1].Value.SetWideString(LNKCSM);
  FMtCsmGetAddrCommand.ExecuteUpdate;
  Result := FMtCsmGetAddrCommand.Parameters[2].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmGetCard(CCNCSM: Int64): Boolean;
begin
  if FMtCsmGetCardCommand = nil then
  begin
    FMtCsmGetCardCommand := FDBXConnection.CreateCommand;
    FMtCsmGetCardCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmGetCardCommand.Text := 'TDSCarSale.MtCsmGetCard';
    FMtCsmGetCardCommand.Prepare;
  end;
  FMtCsmGetCardCommand.Parameters[0].Value.SetInt64(CCNCSM);
  FMtCsmGetCardCommand.ExecuteUpdate;
  Result := FMtCsmGetCardCommand.Parameters[1].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmInsUpd(STSCSM: string; CMPCSM: string; BRNCSM: string; CTYCSM: string; CFGCSM: string; CCNCSM: Int64; PRECSM: string; FNMCSM: string; LNMCSM: string; SEXCSM: string; SSMCSM: string; BDTCSM: Double; NTNCSM: string; NTVCSM: string; RELCSM: string; STACSM: string): Boolean;
begin
  if FMtCsmInsUpdCommand = nil then
  begin
    FMtCsmInsUpdCommand := FDBXConnection.CreateCommand;
    FMtCsmInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmInsUpdCommand.Text := 'TDSCarSale.MtCsmInsUpd';
    FMtCsmInsUpdCommand.Prepare;
  end;
  FMtCsmInsUpdCommand.Parameters[0].Value.SetWideString(STSCSM);
  FMtCsmInsUpdCommand.Parameters[1].Value.SetWideString(CMPCSM);
  FMtCsmInsUpdCommand.Parameters[2].Value.SetWideString(BRNCSM);
  FMtCsmInsUpdCommand.Parameters[3].Value.SetWideString(CTYCSM);
  FMtCsmInsUpdCommand.Parameters[4].Value.SetWideString(CFGCSM);
  FMtCsmInsUpdCommand.Parameters[5].Value.SetInt64(CCNCSM);
  FMtCsmInsUpdCommand.Parameters[6].Value.SetWideString(PRECSM);
  FMtCsmInsUpdCommand.Parameters[7].Value.SetWideString(FNMCSM);
  FMtCsmInsUpdCommand.Parameters[8].Value.SetWideString(LNMCSM);
  FMtCsmInsUpdCommand.Parameters[9].Value.SetWideString(SEXCSM);
  FMtCsmInsUpdCommand.Parameters[10].Value.SetWideString(SSMCSM);
  FMtCsmInsUpdCommand.Parameters[11].Value.SetDouble(BDTCSM);
  FMtCsmInsUpdCommand.Parameters[12].Value.SetWideString(NTNCSM);
  FMtCsmInsUpdCommand.Parameters[13].Value.SetWideString(NTVCSM);
  FMtCsmInsUpdCommand.Parameters[14].Value.SetWideString(RELCSM);
  FMtCsmInsUpdCommand.Parameters[15].Value.SetWideString(STACSM);
  FMtCsmInsUpdCommand.ExecuteUpdate;
  Result := FMtCsmInsUpdCommand.Parameters[16].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmInsUpdFamilyAndWork(CPNCSM: string; CPSCSM: string; CBNCSM: Double; CPWCSM: string; CINCSM: Double; CCHCSM: Integer; HTPCSM: string; PBTCSM: string; PSTCSM: string; BUSCSM: string; SALCSM: Double; BONCSM: Double; OTHCSM: Double; EXPCSM: Double; PCMCSM: string; HDTCSM: Double; PDPCSM: string; DOPCSM: string; MEMCSM: string; ENTUSR: string; MD: string): Boolean;
begin
  if FMtCsmInsUpdFamilyAndWorkCommand = nil then
  begin
    FMtCsmInsUpdFamilyAndWorkCommand := FDBXConnection.CreateCommand;
    FMtCsmInsUpdFamilyAndWorkCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmInsUpdFamilyAndWorkCommand.Text := 'TDSCarSale.MtCsmInsUpdFamilyAndWork';
    FMtCsmInsUpdFamilyAndWorkCommand.Prepare;
  end;
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[0].Value.SetWideString(CPNCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[1].Value.SetWideString(CPSCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[2].Value.SetDouble(CBNCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[3].Value.SetWideString(CPWCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[4].Value.SetDouble(CINCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[5].Value.SetInt32(CCHCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[6].Value.SetWideString(HTPCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[7].Value.SetWideString(PBTCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[8].Value.SetWideString(PSTCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[9].Value.SetWideString(BUSCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[10].Value.SetDouble(SALCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[11].Value.SetDouble(BONCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[12].Value.SetDouble(OTHCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[13].Value.SetDouble(EXPCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[14].Value.SetWideString(PCMCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[15].Value.SetDouble(HDTCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[16].Value.SetWideString(PDPCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[17].Value.SetWideString(DOPCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[18].Value.SetWideString(MEMCSM);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[19].Value.SetWideString(ENTUSR);
  FMtCsmInsUpdFamilyAndWorkCommand.Parameters[20].Value.SetWideString(MD);
  FMtCsmInsUpdFamilyAndWorkCommand.ExecuteUpdate;
  Result := FMtCsmInsUpdFamilyAndWorkCommand.Parameters[21].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmInsUpdCommit(var OUT_CCNCSM: Int64): Boolean;
begin
  if FMtCsmInsUpdCommitCommand = nil then
  begin
    FMtCsmInsUpdCommitCommand := FDBXConnection.CreateCommand;
    FMtCsmInsUpdCommitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmInsUpdCommitCommand.Text := 'TDSCarSale.MtCsmInsUpdCommit';
    FMtCsmInsUpdCommitCommand.Prepare;
  end;
  FMtCsmInsUpdCommitCommand.Parameters[0].Value.SetInt64(OUT_CCNCSM);
  FMtCsmInsUpdCommitCommand.ExecuteUpdate;
  OUT_CCNCSM := FMtCsmInsUpdCommitCommand.Parameters[0].Value.GetInt64;
  Result := FMtCsmInsUpdCommitCommand.Parameters[1].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmInsUpdAddr(CCNCSM: Int64; lnkcsm: string; ta1csm: string; ta2csm: string; chgcsm: string; ctycsm: string; zipcsm: string; telcsm: string; mobcsm: string; faxcsm: string; emacsm: string; webcsm: string; ENTUSR: string): Boolean;
begin
  if FMtCsmInsUpdAddrCommand = nil then
  begin
    FMtCsmInsUpdAddrCommand := FDBXConnection.CreateCommand;
    FMtCsmInsUpdAddrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmInsUpdAddrCommand.Text := 'TDSCarSale.MtCsmInsUpdAddr';
    FMtCsmInsUpdAddrCommand.Prepare;
  end;
  FMtCsmInsUpdAddrCommand.Parameters[0].Value.SetInt64(CCNCSM);
  FMtCsmInsUpdAddrCommand.Parameters[1].Value.SetWideString(lnkcsm);
  FMtCsmInsUpdAddrCommand.Parameters[2].Value.SetWideString(ta1csm);
  FMtCsmInsUpdAddrCommand.Parameters[3].Value.SetWideString(ta2csm);
  FMtCsmInsUpdAddrCommand.Parameters[4].Value.SetWideString(chgcsm);
  FMtCsmInsUpdAddrCommand.Parameters[5].Value.SetWideString(ctycsm);
  FMtCsmInsUpdAddrCommand.Parameters[6].Value.SetWideString(zipcsm);
  FMtCsmInsUpdAddrCommand.Parameters[7].Value.SetWideString(telcsm);
  FMtCsmInsUpdAddrCommand.Parameters[8].Value.SetWideString(mobcsm);
  FMtCsmInsUpdAddrCommand.Parameters[9].Value.SetWideString(faxcsm);
  FMtCsmInsUpdAddrCommand.Parameters[10].Value.SetWideString(emacsm);
  FMtCsmInsUpdAddrCommand.Parameters[11].Value.SetWideString(webcsm);
  FMtCsmInsUpdAddrCommand.Parameters[12].Value.SetWideString(ENTUSR);
  FMtCsmInsUpdAddrCommand.ExecuteUpdate;
  Result := FMtCsmInsUpdAddrCommand.Parameters[13].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmInsUpdCard(CCNCSI: Int64; CDCCSI: string; CDNCSI: string; ISDCSI: Double; EPDCSI: Double; ISWCSI: string; ENTUSR: string): Boolean;
begin
  if FMtCsmInsUpdCardCommand = nil then
  begin
    FMtCsmInsUpdCardCommand := FDBXConnection.CreateCommand;
    FMtCsmInsUpdCardCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmInsUpdCardCommand.Text := 'TDSCarSale.MtCsmInsUpdCard';
    FMtCsmInsUpdCardCommand.Prepare;
  end;
  FMtCsmInsUpdCardCommand.Parameters[0].Value.SetInt64(CCNCSI);
  FMtCsmInsUpdCardCommand.Parameters[1].Value.SetWideString(CDCCSI);
  FMtCsmInsUpdCardCommand.Parameters[2].Value.SetWideString(CDNCSI);
  FMtCsmInsUpdCardCommand.Parameters[3].Value.SetDouble(ISDCSI);
  FMtCsmInsUpdCardCommand.Parameters[4].Value.SetDouble(EPDCSI);
  FMtCsmInsUpdCardCommand.Parameters[5].Value.SetWideString(ISWCSI);
  FMtCsmInsUpdCardCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FMtCsmInsUpdCardCommand.ExecuteUpdate;
  Result := FMtCsmInsUpdCardCommand.Parameters[7].Value.GetBoolean;
end;

function TDSCarSaleClient.MtCsmDel(CCNCSM: Int64): Boolean;
begin
  if FMtCsmDelCommand = nil then
  begin
    FMtCsmDelCommand := FDBXConnection.CreateCommand;
    FMtCsmDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtCsmDelCommand.Text := 'TDSCarSale.MtCsmDel';
    FMtCsmDelCommand.Prepare;
  end;
  FMtCsmDelCommand.Parameters[0].Value.SetInt64(CCNCSM);
  FMtCsmDelCommand.ExecuteUpdate;
  Result := FMtCsmDelCommand.Parameters[1].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; APPSTS: string): Boolean;
begin
  if FMtAppGetListCommand = nil then
  begin
    FMtAppGetListCommand := FDBXConnection.CreateCommand;
    FMtAppGetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppGetListCommand.Text := 'TDSCarSale.MtAppGetList';
    FMtAppGetListCommand.Prepare;
  end;
  FMtAppGetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FMtAppGetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FMtAppGetListCommand.Parameters[2].Value.SetWideString(ICMP);
  FMtAppGetListCommand.Parameters[3].Value.SetWideString(IBRN);
  FMtAppGetListCommand.Parameters[4].Value.SetWideString(IDEP);
  FMtAppGetListCommand.Parameters[5].Value.SetDouble(IFRM);
  FMtAppGetListCommand.Parameters[6].Value.SetDouble(ITO);
  FMtAppGetListCommand.Parameters[7].Value.SetWideString(APPSTS);
  FMtAppGetListCommand.ExecuteUpdate;
  Result := FMtAppGetListCommand.Parameters[8].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppGet(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  if FMtAppGetCommand = nil then
  begin
    FMtAppGetCommand := FDBXConnection.CreateCommand;
    FMtAppGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppGetCommand.Text := 'TDSCarSale.MtAppGet';
    FMtAppGetCommand.Prepare;
  end;
  FMtAppGetCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtAppGetCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtAppGetCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtAppGetCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtAppGetCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtAppGetCommand.ExecuteUpdate;
  Result := FMtAppGetCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppGetAccessory(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; IMOD: string): Boolean;
begin
  if FMtAppGetAccessoryCommand = nil then
  begin
    FMtAppGetAccessoryCommand := FDBXConnection.CreateCommand;
    FMtAppGetAccessoryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppGetAccessoryCommand.Text := 'TDSCarSale.MtAppGetAccessory';
    FMtAppGetAccessoryCommand.Prepare;
  end;
  FMtAppGetAccessoryCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtAppGetAccessoryCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtAppGetAccessoryCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtAppGetAccessoryCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtAppGetAccessoryCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtAppGetAccessoryCommand.Parameters[5].Value.SetWideString(IMOD);
  FMtAppGetAccessoryCommand.ExecuteUpdate;
  Result := FMtAppGetAccessoryCommand.Parameters[6].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppGetCard(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; ICNO: Int64): Boolean;
begin
  if FMtAppGetCardCommand = nil then
  begin
    FMtAppGetCardCommand := FDBXConnection.CreateCommand;
    FMtAppGetCardCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppGetCardCommand.Text := 'TDSCarSale.MtAppGetCard';
    FMtAppGetCardCommand.Prepare;
  end;
  FMtAppGetCardCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtAppGetCardCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtAppGetCardCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtAppGetCardCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtAppGetCardCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtAppGetCardCommand.Parameters[5].Value.SetInt64(ICNO);
  FMtAppGetCardCommand.ExecuteUpdate;
  Result := FMtAppGetCardCommand.Parameters[6].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppGetExp(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  if FMtAppGetExpCommand = nil then
  begin
    FMtAppGetExpCommand := FDBXConnection.CreateCommand;
    FMtAppGetExpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppGetExpCommand.Text := 'TDSCarSale.MtAppGetExp';
    FMtAppGetExpCommand.Prepare;
  end;
  FMtAppGetExpCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtAppGetExpCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtAppGetExpCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtAppGetExpCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtAppGetExpCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtAppGetExpCommand.ExecuteUpdate;
  Result := FMtAppGetExpCommand.Parameters[5].Value.GetBoolean;
end;



function TDSCarSaleClient.MtAppGetDown(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  if FMtAppGetDownCommand = nil then
  begin
    FMtAppGetDownCommand := FDBXConnection.CreateCommand;
    FMtAppGetDownCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppGetDownCommand.Text := 'TDSCarSale.MtAppGetDown';
    FMtAppGetDownCommand.Prepare;
  end;
  FMtAppGetDownCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtAppGetDownCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtAppGetDownCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtAppGetDownCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtAppGetDownCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtAppGetDownCommand.ExecuteUpdate;
  Result := FMtAppGetDownCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppGetFollowup(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  if FMtAppGetFollowupCommand = nil then
  begin
    FMtAppGetFollowupCommand := FDBXConnection.CreateCommand;
    FMtAppGetFollowupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppGetFollowupCommand.Text := 'TDSCarSale.MtAppGetFollowup';
    FMtAppGetFollowupCommand.Prepare;
  end;
  FMtAppGetFollowupCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtAppGetFollowupCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtAppGetFollowupCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtAppGetFollowupCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtAppGetFollowupCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtAppGetFollowupCommand.ExecuteUpdate;
  Result := FMtAppGetFollowupCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpd(STSOT5: string; YAROT5: Integer; CMPOT5: string; BRNOT5: string; DCDOT5: string; DNOOT5: Integer; SEQOT5: Integer; IDTOT5: Double; DEPOT5: string; CNOOT5: Int64; CTYOT5: string; CRTOT5: Integer; SMNOT5: string; PNOOT5: string; RPDOT5: Double; RSNOT5: string; RSDOT5: Double; PSTOT5: string; BRKOT5: string; GNOOT5: Int64; EXDOT5: Double; TMDOT5: string; PLCOT5: string; EPDOT5: Double; EPTOT5: string; EPSOT5: string; MEMOT5: string): Boolean;
begin
  if FMtAppInsUpdCommand = nil then
  begin
    FMtAppInsUpdCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdCommand.Text := 'TDSCarSale.MtAppInsUpd';
    FMtAppInsUpdCommand.Prepare;
  end;
  FMtAppInsUpdCommand.Parameters[0].Value.SetWideString(STSOT5);
  FMtAppInsUpdCommand.Parameters[1].Value.SetInt32(YAROT5);
  FMtAppInsUpdCommand.Parameters[2].Value.SetWideString(CMPOT5);
  FMtAppInsUpdCommand.Parameters[3].Value.SetWideString(BRNOT5);
  FMtAppInsUpdCommand.Parameters[4].Value.SetWideString(DCDOT5);
  FMtAppInsUpdCommand.Parameters[5].Value.SetInt32(DNOOT5);
  FMtAppInsUpdCommand.Parameters[6].Value.SetInt32(SEQOT5);
  FMtAppInsUpdCommand.Parameters[7].Value.SetDouble(IDTOT5);
  FMtAppInsUpdCommand.Parameters[8].Value.SetWideString(DEPOT5);
  FMtAppInsUpdCommand.Parameters[9].Value.SetInt64(CNOOT5);
  FMtAppInsUpdCommand.Parameters[10].Value.SetWideString(CTYOT5);
  FMtAppInsUpdCommand.Parameters[11].Value.SetInt32(CRTOT5);
  FMtAppInsUpdCommand.Parameters[12].Value.SetWideString(SMNOT5);
  FMtAppInsUpdCommand.Parameters[13].Value.SetWideString(PNOOT5);
  FMtAppInsUpdCommand.Parameters[14].Value.SetDouble(RPDOT5);
  FMtAppInsUpdCommand.Parameters[15].Value.SetWideString(RSNOT5);
  FMtAppInsUpdCommand.Parameters[16].Value.SetDouble(RSDOT5);
  FMtAppInsUpdCommand.Parameters[17].Value.SetWideString(PSTOT5);
  FMtAppInsUpdCommand.Parameters[18].Value.SetWideString(BRKOT5);
  FMtAppInsUpdCommand.Parameters[19].Value.SetInt64(GNOOT5);
  FMtAppInsUpdCommand.Parameters[20].Value.SetDouble(EXDOT5);
  FMtAppInsUpdCommand.Parameters[21].Value.SetWideString(TMDOT5);
  FMtAppInsUpdCommand.Parameters[22].Value.SetWideString(PLCOT5);
  FMtAppInsUpdCommand.Parameters[23].Value.SetDouble(EPDOT5);
  FMtAppInsUpdCommand.Parameters[24].Value.SetWideString(EPTOT5);
  FMtAppInsUpdCommand.Parameters[25].Value.SetWideString(EPSOT5);
  FMtAppInsUpdCommand.Parameters[26].Value.SetWideString(MEMOT5);
  FMtAppInsUpdCommand.ExecuteUpdate;
  Result := FMtAppInsUpdCommand.Parameters[27].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpdProduct(PRDOT5: string; COLOT5: string; SEROT5: string; ENGOT5: string; WHSOT5: string; USEOT5: string; BNOOT5: string; KEYOT5: string; QO1OT5: Integer; QO2OT5: Integer; PDCOT5: Double; PDAOT5: Double; UP1OT5: Double; UP2OT5: Double; NETOT5: Double; PPYOT5: Double; TAXOT5: Double; APCOT5: Double; AFEOT5: Double): Boolean;
begin
  if FMtAppInsUpdProductCommand = nil then
  begin
    FMtAppInsUpdProductCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdProductCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdProductCommand.Text := 'TDSCarSale.MtAppInsUpdProduct';
    FMtAppInsUpdProductCommand.Prepare;
  end;
  FMtAppInsUpdProductCommand.Parameters[0].Value.SetWideString(PRDOT5);
  FMtAppInsUpdProductCommand.Parameters[1].Value.SetWideString(COLOT5);
  FMtAppInsUpdProductCommand.Parameters[2].Value.SetWideString(SEROT5);
  FMtAppInsUpdProductCommand.Parameters[3].Value.SetWideString(ENGOT5);
  FMtAppInsUpdProductCommand.Parameters[4].Value.SetWideString(WHSOT5);
  FMtAppInsUpdProductCommand.Parameters[5].Value.SetWideString(USEOT5);
  FMtAppInsUpdProductCommand.Parameters[6].Value.SetWideString(BNOOT5);
  FMtAppInsUpdProductCommand.Parameters[7].Value.SetWideString(KEYOT5);
  FMtAppInsUpdProductCommand.Parameters[8].Value.SetInt32(QO1OT5);
  FMtAppInsUpdProductCommand.Parameters[9].Value.SetInt32(QO2OT5);
  FMtAppInsUpdProductCommand.Parameters[10].Value.SetDouble(PDCOT5);
  FMtAppInsUpdProductCommand.Parameters[11].Value.SetDouble(PDAOT5);
  FMtAppInsUpdProductCommand.Parameters[12].Value.SetDouble(UP1OT5);
  FMtAppInsUpdProductCommand.Parameters[13].Value.SetDouble(UP2OT5);
  FMtAppInsUpdProductCommand.Parameters[14].Value.SetDouble(NETOT5);
  FMtAppInsUpdProductCommand.Parameters[15].Value.SetDouble(PPYOT5);
  FMtAppInsUpdProductCommand.Parameters[16].Value.SetDouble(TAXOT5);
  FMtAppInsUpdProductCommand.Parameters[17].Value.SetDouble(APCOT5);
  FMtAppInsUpdProductCommand.Parameters[18].Value.SetDouble(AFEOT5);
  FMtAppInsUpdProductCommand.ExecuteUpdate;
  Result := FMtAppInsUpdProductCommand.Parameters[19].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpdCondition(STPOT5: string; FCDOT5: string; DWTOT5: Double; NLEOT5: Integer; RATOT5: Double; PMMOT5: Double; CM1OT5: Double; CM2OT5: Double; DDTOT5: Double; ESDOT5: Integer): Boolean;
begin
  if FMtAppInsUpdConditionCommand = nil then
  begin
    FMtAppInsUpdConditionCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdConditionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdConditionCommand.Text := 'TDSCarSale.MtAppInsUpdCondition';
    FMtAppInsUpdConditionCommand.Prepare;
  end;
  FMtAppInsUpdConditionCommand.Parameters[0].Value.SetWideString(STPOT5);
  FMtAppInsUpdConditionCommand.Parameters[1].Value.SetWideString(FCDOT5);
  FMtAppInsUpdConditionCommand.Parameters[2].Value.SetDouble(DWTOT5);
  FMtAppInsUpdConditionCommand.Parameters[3].Value.SetInt32(NLEOT5);
  FMtAppInsUpdConditionCommand.Parameters[4].Value.SetDouble(RATOT5);
  FMtAppInsUpdConditionCommand.Parameters[5].Value.SetDouble(PMMOT5);
  FMtAppInsUpdConditionCommand.Parameters[6].Value.SetDouble(CM1OT5);
  FMtAppInsUpdConditionCommand.Parameters[7].Value.SetDouble(CM2OT5);
  FMtAppInsUpdConditionCommand.Parameters[8].Value.SetDouble(DDTOT5);
  FMtAppInsUpdConditionCommand.Parameters[9].Value.SetInt32(ESDOT5);
  FMtAppInsUpdConditionCommand.ExecuteUpdate;
  Result := FMtAppInsUpdConditionCommand.Parameters[10].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpdInsurance(ICDOT5: string; CN1OT5: string; ITSOT5: Double; SDTOT5: Double; EDTOT5: Double; ISDOT5: string; IVSOT5: Double; INTOT5: Double; BDTOT5: Double; FDTOT5: Double; RDTOT5: Double; INOOT5: string; PSROT5: string): Boolean;
begin
  if FMtAppInsUpdInsuranceCommand = nil then
  begin
    FMtAppInsUpdInsuranceCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdInsuranceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdInsuranceCommand.Text := 'TDSCarSale.MtAppInsUpdInsurance';
    FMtAppInsUpdInsuranceCommand.Prepare;
  end;
  FMtAppInsUpdInsuranceCommand.Parameters[0].Value.SetWideString(ICDOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[1].Value.SetWideString(CN1OT5);
  FMtAppInsUpdInsuranceCommand.Parameters[2].Value.SetDouble(ITSOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[3].Value.SetDouble(SDTOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[4].Value.SetDouble(EDTOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[5].Value.SetWideString(ISDOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[6].Value.SetDouble(IVSOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[7].Value.SetDouble(INTOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[8].Value.SetDouble(BDTOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[9].Value.SetDouble(FDTOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[10].Value.SetDouble(RDTOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[11].Value.SetWideString(INOOT5);
  FMtAppInsUpdInsuranceCommand.Parameters[12].Value.SetWideString(PSROT5);
  FMtAppInsUpdInsuranceCommand.ExecuteUpdate;
  Result := FMtAppInsUpdInsuranceCommand.Parameters[13].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpd_Commit(ENTUSR: string; MD: string; var OUT_DNO: Integer): Boolean;
begin
  if FMtAppInsUpd_CommitCommand = nil then
  begin
    FMtAppInsUpd_CommitCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpd_CommitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpd_CommitCommand.Text := 'TDSCarSale.MtAppInsUpd_Commit';
    FMtAppInsUpd_CommitCommand.Prepare;
  end;
  FMtAppInsUpd_CommitCommand.Parameters[0].Value.SetWideString(ENTUSR);
  FMtAppInsUpd_CommitCommand.Parameters[1].Value.SetWideString(MD);
  FMtAppInsUpd_CommitCommand.Parameters[2].Value.SetInt32(OUT_DNO);
  FMtAppInsUpd_CommitCommand.ExecuteUpdate;
  OUT_DNO := FMtAppInsUpd_CommitCommand.Parameters[2].Value.GetInt32;
  Result := FMtAppInsUpd_CommitCommand.Parameters[3].Value.GetBoolean;
end;


function TDSCarSaleClient.MtAppInsUpdAccessory(STSOT6: string; YAROT6: Integer; CMPOT6: string; BRNOT6: string; DCDOT6: string; DNOOT6: Integer; SEQOT6: Integer; FGDOT6: string; FRDOT6: string; FSROT6: string; FWHOT6: string; FPDOT6: string; FCLOT6: string; FQ1OT6: Integer; FQ2OT6: Integer; TDSOT6: string; FDSOT6: Double; FPAOT6: Double; FU1OT6: Double; FU2OT6: Double; PRTOT6: string; ABBOT6: string; ENTUSR: string): Boolean;
begin
  if FMtAppInsUpdAccessoryCommand = nil then
  begin
    FMtAppInsUpdAccessoryCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdAccessoryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdAccessoryCommand.Text := 'TDSCarSale.MtAppInsUpdAccessory';
    FMtAppInsUpdAccessoryCommand.Prepare;
  end;
  FMtAppInsUpdAccessoryCommand.Parameters[0].Value.SetWideString(STSOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[1].Value.SetInt32(YAROT6);
  FMtAppInsUpdAccessoryCommand.Parameters[2].Value.SetWideString(CMPOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[3].Value.SetWideString(BRNOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[4].Value.SetWideString(DCDOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[5].Value.SetInt32(DNOOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[6].Value.SetInt32(SEQOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[7].Value.SetWideString(FGDOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[8].Value.SetWideString(FRDOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[9].Value.SetWideString(FSROT6);
  FMtAppInsUpdAccessoryCommand.Parameters[10].Value.SetWideString(FWHOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[11].Value.SetWideString(FPDOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[12].Value.SetWideString(FCLOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[13].Value.SetInt32(FQ1OT6);
  FMtAppInsUpdAccessoryCommand.Parameters[14].Value.SetInt32(FQ2OT6);
  FMtAppInsUpdAccessoryCommand.Parameters[15].Value.SetWideString(TDSOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[16].Value.SetDouble(FDSOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[17].Value.SetDouble(FPAOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[18].Value.SetDouble(FU1OT6);
  FMtAppInsUpdAccessoryCommand.Parameters[19].Value.SetDouble(FU2OT6);
  FMtAppInsUpdAccessoryCommand.Parameters[20].Value.SetWideString(PRTOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[21].Value.SetWideString(ABBOT6);
  FMtAppInsUpdAccessoryCommand.Parameters[22].Value.SetWideString(ENTUSR);
  FMtAppInsUpdAccessoryCommand.ExecuteUpdate;
  Result := FMtAppInsUpdAccessoryCommand.Parameters[23].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpdCard(STSOMI: string; YAROMI: Integer; CMPOMI: string; BRNOMI: string; DCDOMI: string; DNOOMI: Integer; CNOOMI: Int64; CDCOMI: string; RDTOMI: Double; RTMOMI: string; PSNOMI: string; FLGOMI: string; ENTUSR: string): Boolean;
begin
  if FMtAppInsUpdCardCommand = nil then
  begin
    FMtAppInsUpdCardCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdCardCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdCardCommand.Text := 'TDSCarSale.MtAppInsUpdCard';
    FMtAppInsUpdCardCommand.Prepare;
  end;
  FMtAppInsUpdCardCommand.Parameters[0].Value.SetWideString(STSOMI);
  FMtAppInsUpdCardCommand.Parameters[1].Value.SetInt32(YAROMI);
  FMtAppInsUpdCardCommand.Parameters[2].Value.SetWideString(CMPOMI);
  FMtAppInsUpdCardCommand.Parameters[3].Value.SetWideString(BRNOMI);
  FMtAppInsUpdCardCommand.Parameters[4].Value.SetWideString(DCDOMI);
  FMtAppInsUpdCardCommand.Parameters[5].Value.SetInt32(DNOOMI);
  FMtAppInsUpdCardCommand.Parameters[6].Value.SetInt64(CNOOMI);
  FMtAppInsUpdCardCommand.Parameters[7].Value.SetWideString(CDCOMI);
  FMtAppInsUpdCardCommand.Parameters[8].Value.SetDouble(RDTOMI);
  FMtAppInsUpdCardCommand.Parameters[9].Value.SetWideString(RTMOMI);
  FMtAppInsUpdCardCommand.Parameters[10].Value.SetWideString(PSNOMI);
  FMtAppInsUpdCardCommand.Parameters[11].Value.SetWideString(FLGOMI);
  FMtAppInsUpdCardCommand.Parameters[12].Value.SetWideString(ENTUSR);
  FMtAppInsUpdCardCommand.ExecuteUpdate;
  Result := FMtAppInsUpdCardCommand.Parameters[13].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpdExp(STSEXP: string; YAREXP: Integer; CMPEXP: string; BRNEXP: string; DCDEXP: string; DNOEXP: Integer; SEQEXP: Integer; CDCEXP: string; AMTEXP: Double; TP1EXP: string; TP2EXP: string; DCREXP: string; ENTUSR: string): Boolean;
begin
  if FMtAppInsUpdExpCommand = nil then
  begin
    FMtAppInsUpdExpCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdExpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdExpCommand.Text := 'TDSCarSale.MtAppInsUpdExp';
    FMtAppInsUpdExpCommand.Prepare;
  end;
  FMtAppInsUpdExpCommand.Parameters[0].Value.SetWideString(STSEXP);
  FMtAppInsUpdExpCommand.Parameters[1].Value.SetInt32(YAREXP);
  FMtAppInsUpdExpCommand.Parameters[2].Value.SetWideString(CMPEXP);
  FMtAppInsUpdExpCommand.Parameters[3].Value.SetWideString(BRNEXP);
  FMtAppInsUpdExpCommand.Parameters[4].Value.SetWideString(DCDEXP);
  FMtAppInsUpdExpCommand.Parameters[5].Value.SetInt32(DNOEXP);
  FMtAppInsUpdExpCommand.Parameters[6].Value.SetInt32(SEQEXP);
  FMtAppInsUpdExpCommand.Parameters[7].Value.SetWideString(CDCEXP);
  FMtAppInsUpdExpCommand.Parameters[8].Value.SetDouble(AMTEXP);
  FMtAppInsUpdExpCommand.Parameters[9].Value.SetWideString(TP1EXP);
  FMtAppInsUpdExpCommand.Parameters[10].Value.SetWideString(TP2EXP);
  FMtAppInsUpdExpCommand.Parameters[11].Value.SetWideString(DCREXP);
  FMtAppInsUpdExpCommand.Parameters[12].Value.SetWideString(ENTUSR);
  FMtAppInsUpdExpCommand.ExecuteUpdate;
  Result := FMtAppInsUpdExpCommand.Parameters[13].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpdDown(STSOM7: string; YAROM7: Integer; CMPOM7: string; BRNOM7: string; DCDOM7: string; DNOOM7: Integer; SEQOM7: Integer; PPDOM7: string; PTPOM7: string; NOTOM7: string; PDTOM7: Double; PATOM7: Double; NAROM7: string; ENTUSR: string): Boolean;
begin
  if FMtAppInsUpdDownCommand = nil then
  begin
    FMtAppInsUpdDownCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdDownCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdDownCommand.Text := 'TDSCarSale.MtAppInsUpdDown';
    FMtAppInsUpdDownCommand.Prepare;
  end;
  FMtAppInsUpdDownCommand.Parameters[0].Value.SetWideString(STSOM7);
  FMtAppInsUpdDownCommand.Parameters[1].Value.SetInt32(YAROM7);
  FMtAppInsUpdDownCommand.Parameters[2].Value.SetWideString(CMPOM7);
  FMtAppInsUpdDownCommand.Parameters[3].Value.SetWideString(BRNOM7);
  FMtAppInsUpdDownCommand.Parameters[4].Value.SetWideString(DCDOM7);
  FMtAppInsUpdDownCommand.Parameters[5].Value.SetInt32(DNOOM7);
  FMtAppInsUpdDownCommand.Parameters[6].Value.SetInt32(SEQOM7);
  FMtAppInsUpdDownCommand.Parameters[7].Value.SetWideString(PPDOM7);
  FMtAppInsUpdDownCommand.Parameters[8].Value.SetWideString(PTPOM7);
  FMtAppInsUpdDownCommand.Parameters[9].Value.SetWideString(NOTOM7);
  FMtAppInsUpdDownCommand.Parameters[10].Value.SetDouble(PDTOM7);
  FMtAppInsUpdDownCommand.Parameters[11].Value.SetDouble(PATOM7);
  FMtAppInsUpdDownCommand.Parameters[12].Value.SetWideString(NAROM7);
  FMtAppInsUpdDownCommand.Parameters[13].Value.SetWideString(ENTUSR);
  FMtAppInsUpdDownCommand.ExecuteUpdate;
  Result := FMtAppInsUpdDownCommand.Parameters[14].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppInsUpdFollowup(STSOM8: string; YAROM8: Integer; CMPOM8: string; BRNOM8: string; DCDOM8: string; DNOOM8: Integer; SEQOM8: Integer; OCDOM8: string; ODTOM8: Double; PSNOM8: Double; ENTUSR: string): Boolean;
begin
  if FMtAppInsUpdFollowupCommand = nil then
  begin
    FMtAppInsUpdFollowupCommand := FDBXConnection.CreateCommand;
    FMtAppInsUpdFollowupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppInsUpdFollowupCommand.Text := 'TDSCarSale.MtAppInsUpdFollowup';
    FMtAppInsUpdFollowupCommand.Prepare;
  end;
  FMtAppInsUpdFollowupCommand.Parameters[0].Value.SetWideString(STSOM8);
  FMtAppInsUpdFollowupCommand.Parameters[1].Value.SetInt32(YAROM8);
  FMtAppInsUpdFollowupCommand.Parameters[2].Value.SetWideString(CMPOM8);
  FMtAppInsUpdFollowupCommand.Parameters[3].Value.SetWideString(BRNOM8);
  FMtAppInsUpdFollowupCommand.Parameters[4].Value.SetWideString(DCDOM8);
  FMtAppInsUpdFollowupCommand.Parameters[5].Value.SetInt32(DNOOM8);
  FMtAppInsUpdFollowupCommand.Parameters[6].Value.SetInt32(SEQOM8);
  FMtAppInsUpdFollowupCommand.Parameters[7].Value.SetWideString(OCDOM8);
  FMtAppInsUpdFollowupCommand.Parameters[8].Value.SetDouble(ODTOM8);
  FMtAppInsUpdFollowupCommand.Parameters[9].Value.SetDouble(PSNOM8);
  FMtAppInsUpdFollowupCommand.Parameters[10].Value.SetWideString(ENTUSR);
  FMtAppInsUpdFollowupCommand.ExecuteUpdate;
  Result := FMtAppInsUpdFollowupCommand.Parameters[11].Value.GetBoolean;
end;

function TDSCarSaleClient.MtAppDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  if FMtAppDelCommand = nil then
  begin
    FMtAppDelCommand := FDBXConnection.CreateCommand;
    FMtAppDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtAppDelCommand.Text := 'TDSCarSale.MtAppDel';
    FMtAppDelCommand.Prepare;
  end;
  FMtAppDelCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtAppDelCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtAppDelCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtAppDelCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtAppDelCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtAppDelCommand.ExecuteUpdate;
  Result := FMtAppDelCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtSetupAccessoryGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double; BRD: string): Boolean;
begin
  if FMtSetupAccessoryGetListCommand = nil then
  begin
    FMtSetupAccessoryGetListCommand := FDBXConnection.CreateCommand;
    FMtSetupAccessoryGetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtSetupAccessoryGetListCommand.Text := 'TDSCarSale.MtSetupAccessoryGetList';
    FMtSetupAccessoryGetListCommand.Prepare;
  end;
  FMtSetupAccessoryGetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FMtSetupAccessoryGetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FMtSetupAccessoryGetListCommand.Parameters[2].Value.SetWideString(ICMP);
  FMtSetupAccessoryGetListCommand.Parameters[3].Value.SetWideString(IBRN);
  FMtSetupAccessoryGetListCommand.Parameters[4].Value.SetWideString(IDEP);
  FMtSetupAccessoryGetListCommand.Parameters[5].Value.SetDouble(IFRM);
  FMtSetupAccessoryGetListCommand.Parameters[6].Value.SetDouble(ITO);
  FMtSetupAccessoryGetListCommand.Parameters[7].Value.SetWideString(BRD);
  FMtSetupAccessoryGetListCommand.ExecuteUpdate;
  Result := FMtSetupAccessoryGetListCommand.Parameters[8].Value.GetBoolean;
end;

function TDSCarSaleClient.MtSetupAccessoryGet(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
begin
  if FMtSetupAccessoryGetCommand = nil then
  begin
    FMtSetupAccessoryGetCommand := FDBXConnection.CreateCommand;
    FMtSetupAccessoryGetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtSetupAccessoryGetCommand.Text := 'TDSCarSale.MtSetupAccessoryGet';
    FMtSetupAccessoryGetCommand.Prepare;
  end;
  FMtSetupAccessoryGetCommand.Parameters[0].Value.SetInt32(yarom3);
  FMtSetupAccessoryGetCommand.Parameters[1].Value.SetWideString(cmpom3);
  FMtSetupAccessoryGetCommand.Parameters[2].Value.SetWideString(brnom3);
  FMtSetupAccessoryGetCommand.Parameters[3].Value.SetWideString(dcdom3);
  FMtSetupAccessoryGetCommand.Parameters[4].Value.SetInt32(ordom3);
  FMtSetupAccessoryGetCommand.ExecuteUpdate;
  Result := FMtSetupAccessoryGetCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtSetupAccessoryInsUpd(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer; seqom3: Integer; fsrom3: string; idtom3: Double; depom3: string; vnoom3: string; vtpom3: string; cpsom3: string; crtom3: Integer; rdcom3: string; rdnom3: Integer; rsqom3: Integer; rdtom3: Double; prdom3: string; qo1om3: Integer; qo2om3: Integer; qr1om3: Integer; qr2om3: Integer; uc1om3: Double; uc2om3: Double; twhom3: string; nteom3: string; dseom3: string; serom3: string; engom3: string; entusr: string): Boolean;
begin
  if FMtSetupAccessoryInsUpdCommand = nil then
  begin
    FMtSetupAccessoryInsUpdCommand := FDBXConnection.CreateCommand;
    FMtSetupAccessoryInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtSetupAccessoryInsUpdCommand.Text := 'TDSCarSale.MtSetupAccessoryInsUpd';
    FMtSetupAccessoryInsUpdCommand.Prepare;
  end;
  FMtSetupAccessoryInsUpdCommand.Parameters[0].Value.SetInt32(yarom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[1].Value.SetWideString(cmpom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[2].Value.SetWideString(brnom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[3].Value.SetWideString(dcdom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[4].Value.SetInt32(ordom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[5].Value.SetInt32(seqom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[6].Value.SetWideString(fsrom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[7].Value.SetDouble(idtom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[8].Value.SetWideString(depom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[9].Value.SetWideString(vnoom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[10].Value.SetWideString(vtpom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[11].Value.SetWideString(cpsom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[12].Value.SetInt32(crtom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[13].Value.SetWideString(rdcom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[14].Value.SetInt32(rdnom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[15].Value.SetInt32(rsqom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[16].Value.SetDouble(rdtom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[17].Value.SetWideString(prdom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[18].Value.SetInt32(qo1om3);
  FMtSetupAccessoryInsUpdCommand.Parameters[19].Value.SetInt32(qo2om3);
  FMtSetupAccessoryInsUpdCommand.Parameters[20].Value.SetInt32(qr1om3);
  FMtSetupAccessoryInsUpdCommand.Parameters[21].Value.SetInt32(qr2om3);
  FMtSetupAccessoryInsUpdCommand.Parameters[22].Value.SetDouble(uc1om3);
  FMtSetupAccessoryInsUpdCommand.Parameters[23].Value.SetDouble(uc2om3);
  FMtSetupAccessoryInsUpdCommand.Parameters[24].Value.SetWideString(twhom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[25].Value.SetWideString(nteom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[26].Value.SetWideString(dseom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[27].Value.SetWideString(serom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[28].Value.SetWideString(engom3);
  FMtSetupAccessoryInsUpdCommand.Parameters[29].Value.SetWideString(entusr);
  FMtSetupAccessoryInsUpdCommand.ExecuteUpdate;
  Result := FMtSetupAccessoryInsUpdCommand.Parameters[30].Value.GetBoolean;
end;

function TDSCarSaleClient.MtSetupAccessoryDel(yarom3: Integer; cmpom3: string; brnom3: string; dcdom3: string; ordom3: Integer): Boolean;
begin
  if FMtSetupAccessoryDelCommand = nil then
  begin
    FMtSetupAccessoryDelCommand := FDBXConnection.CreateCommand;
    FMtSetupAccessoryDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtSetupAccessoryDelCommand.Text := 'TDSCarSale.MtSetupAccessoryDel';
    FMtSetupAccessoryDelCommand.Prepare;
  end;
  FMtSetupAccessoryDelCommand.Parameters[0].Value.SetInt32(yarom3);
  FMtSetupAccessoryDelCommand.Parameters[1].Value.SetWideString(cmpom3);
  FMtSetupAccessoryDelCommand.Parameters[2].Value.SetWideString(brnom3);
  FMtSetupAccessoryDelCommand.Parameters[3].Value.SetWideString(dcdom3);
  FMtSetupAccessoryDelCommand.Parameters[4].Value.SetInt32(ordom3);
  FMtSetupAccessoryDelCommand.ExecuteUpdate;
  Result := FMtSetupAccessoryDelCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtApprGetList(CRITERIA: string; ORDERFIELD: string; ICMP: string; IBRN: string; IDEP: string; IFRM: Double; ITO: Double): Boolean;
begin
  if FMtApprGetListCommand = nil then
  begin
    FMtApprGetListCommand := FDBXConnection.CreateCommand;
    FMtApprGetListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtApprGetListCommand.Text := 'TDSCarSale.MtApprGetList';
    FMtApprGetListCommand.Prepare;
  end;
  FMtApprGetListCommand.Parameters[0].Value.SetWideString(CRITERIA);
  FMtApprGetListCommand.Parameters[1].Value.SetWideString(ORDERFIELD);
  FMtApprGetListCommand.Parameters[2].Value.SetWideString(ICMP);
  FMtApprGetListCommand.Parameters[3].Value.SetWideString(IBRN);
  FMtApprGetListCommand.Parameters[4].Value.SetWideString(IDEP);
  FMtApprGetListCommand.Parameters[5].Value.SetDouble(IFRM);
  FMtApprGetListCommand.Parameters[6].Value.SetDouble(ITO);
  FMtApprGetListCommand.ExecuteUpdate;
  Result := FMtApprGetListCommand.Parameters[7].Value.GetBoolean;
end;

function TDSCarSaleClient.MtApprInsUpd(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer; IDTST3: Double; ENTUSR: string; var DNOST3: Integer): Boolean;
begin
  if FMtApprInsUpdCommand = nil then
  begin
    FMtApprInsUpdCommand := FDBXConnection.CreateCommand;
    FMtApprInsUpdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtApprInsUpdCommand.Text := 'TDSCarSale.MtApprInsUpd';
    FMtApprInsUpdCommand.Prepare;
  end;
  FMtApprInsUpdCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtApprInsUpdCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtApprInsUpdCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtApprInsUpdCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtApprInsUpdCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtApprInsUpdCommand.Parameters[5].Value.SetDouble(IDTST3);
  FMtApprInsUpdCommand.Parameters[6].Value.SetWideString(ENTUSR);
  FMtApprInsUpdCommand.Parameters[7].Value.SetInt32(DNOST3);
  FMtApprInsUpdCommand.ExecuteUpdate;
  DNOST3 := FMtApprInsUpdCommand.Parameters[7].Value.GetInt32;
  Result := FMtApprInsUpdCommand.Parameters[8].Value.GetBoolean;
end;

function TDSCarSaleClient.MtApprDel(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): Boolean;
begin
  if FMtApprDelCommand = nil then
  begin
    FMtApprDelCommand := FDBXConnection.CreateCommand;
    FMtApprDelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtApprDelCommand.Text := 'TDSCarSale.MtApprDel';
    FMtApprDelCommand.Prepare;
  end;
  FMtApprDelCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtApprDelCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtApprDelCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtApprDelCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtApprDelCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtApprDelCommand.ExecuteUpdate;
  Result := FMtApprDelCommand.Parameters[5].Value.GetBoolean;
end;

function TDSCarSaleClient.MtApprGetCheck(IYAR: Integer; ICMP: string; IBRN: string; IDCD: string; IDNO: Integer): string;
begin
  if FMtApprGetCheckCommand = nil then
  begin
    FMtApprGetCheckCommand := FDBXConnection.CreateCommand;
    FMtApprGetCheckCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtApprGetCheckCommand.Text := 'TDSCarSale.MtApprGetCheck';
    FMtApprGetCheckCommand.Prepare;
  end;
  FMtApprGetCheckCommand.Parameters[0].Value.SetInt32(IYAR);
  FMtApprGetCheckCommand.Parameters[1].Value.SetWideString(ICMP);
  FMtApprGetCheckCommand.Parameters[2].Value.SetWideString(IBRN);
  FMtApprGetCheckCommand.Parameters[3].Value.SetWideString(IDCD);
  FMtApprGetCheckCommand.Parameters[4].Value.SetInt32(IDNO);
  FMtApprGetCheckCommand.ExecuteUpdate;
  Result := FMtApprGetCheckCommand.Parameters[5].Value.GetWideString;
end;

function TDSCarSaleClient.MtApprGetDoc(RDNRTH: Integer): Boolean;
begin
  if FMtApprGetDocCommand = nil then
  begin
    FMtApprGetDocCommand := FDBXConnection.CreateCommand;
    FMtApprGetDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMtApprGetDocCommand.Text := 'TDSCarSale.MtApprGetDoc';
    FMtApprGetDocCommand.Prepare;
  end;
  FMtApprGetDocCommand.Parameters[0].Value.SetInt32(RDNRTH);
  FMtApprGetDocCommand.ExecuteUpdate;
  Result := FMtApprGetDocCommand.Parameters[1].Value.GetBoolean;
end;

end.
