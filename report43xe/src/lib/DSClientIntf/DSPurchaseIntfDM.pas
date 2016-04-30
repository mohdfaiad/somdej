unit DSPurchaseIntfDM;

interface

uses
  SysUtils, Classes, DB, DBClient, DSConnect, DSMainIntfDM, DSPurchaseIntf, SqlExpr,
  DBXDataSnap, DBXCommon, DBXPool, frxClass, frxDBSet, frxExportPDF, frxRich,
  IndyPeerImpl, DSSetupIntfDM;

type
  TDSPurchaseDM = class(TDSMainDM)
    CdsTtPt1Get: TClientDataSet;
    CdsTtPt1GetYARPT1: TIntegerField;
    CdsTtPt1GetCMPPT1: TStringField;
    CdsTtPt1GetBRNPT1: TStringField;
    CdsTtPt1GetDNOPT1: TStringField;
    CdsTtPt1GetSEQPT1: TIntegerField;
    CdsTtPt1GetIDTPT1: TDateField;
    CdsTtPt1GetDEPPT1: TStringField;
    CdsTtPt1GetVNOPT1: TStringField;
    CdsTtPt1GetRNOPT1: TStringField;
    CdsTtPt1GetRDVPT1: TDateField;
    CdsTtPt1GetRATPT1: TFMTBCDField;
    CdsTtPt1GetVTPPT1: TStringField;
    CdsTtPt1GetVATPT1: TStringField;
    CdsTtPt1GetVPCPT1: TFMTBCDField;
    CdsTtPt1GetVAMPT1: TFMTBCDField;
    CdsTtPt1GetVTEPT1: TStringField;
    CdsTtPt1GetSRSPT1: TStringField;
    CdsTtPt1GetITNPT1: TStringField;
    CdsTtPt1GetCOLPT1: TStringField;
    CdsTtPt1GetTNMCOL: TStringField;
    CdsTtPt1GetSERPT1: TStringField;
    CdsTtPt1GetENGPT1: TStringField;
    CdsTtPt1GetQR1PT1: TIntegerField;
    CdsTtPt1GetNETPT1: TFMTBCDField;
    CdsTtPt1GetFWHPT1: TStringField;
    CdsTtPt1GetDDTPT1: TDateField;
    CdsTtPt1GetTNMVM1: TStringField;
    CdsTtPt1GetCPSVM1: TStringField;
    CdsTtPt1GetTNMPM1: TStringField;
    CdsTtPt1GetCRTPT1: TIntegerField;
    CdsAd2GetSrs: TClientDataSet;
    CdsAd2GetSrsSRSPM1: TStringField;
    CdsAd2GetSrsTNMSRS: TStringField;
    CdsAd2GetItn: TClientDataSet;
    CdsAd2GetItnITNAD1: TStringField;
    CdsAd2GetItnTNMPM1: TStringField;
    CdsAd2GetItnUC1PM1: TFMTBCDField;
    CdsAd2GetItnSRSPM1: TStringField;
    CdsAd2GetItnSEQAD1: TIntegerField;
    CdsAd2GetCol: TClientDataSet;
    CdsAd2GetColITNAD1: TStringField;
    CdsAd2GetColCOLAD1: TStringField;
    CdsAd2GetColTNMCOL: TStringField;
    CdsAd2GetDno: TClientDataSet;
    CdsAd2GetDnoDNOAD1: TIntegerField;
    CdsAd2GetDnoEDTAD1: TDateField;
    CdsAd2GetByDno: TClientDataSet;
    CdsAd2GetByDnoCMPAD2: TStringField;
    CdsAd2GetByDnoBRNAD2: TStringField;
    CdsAd2GetByDnoYARAD2: TIntegerField;
    CdsAd2GetByDnoPRDAD2: TIntegerField;
    CdsAd2GetByDnoDCDAD2: TStringField;
    CdsAd2GetByDnoDNOAD2: TIntegerField;
    CdsAd2GetByDnoSEQAD2: TIntegerField;
    CdsAd2GetByDnoSSBAD2: TIntegerField;
    CdsAd2GetByDnoISDAD2: TDateField;
    CdsAd2GetByDnoTNMCTY: TStringField;
    CdsAd2GetByDnoTNMSRS: TStringField;
    CdsAd2GetByDnoITNAD1: TStringField;
    CdsAd2GetByDnoTNMPM1: TStringField;
    CdsAd2GetByDnoCOLAD1: TStringField;
    CdsAd2GetByDnoTNMCOL: TStringField;
    CdsAd2GetByDnoQT1AD1: TIntegerField;
    CdsAd2GetByDnoSERAD2: TStringField;
    CdsAd2GetByDnoENGAD2: TStringField;
    CdsAd2GetByDnoUC1PM1: TFMTBCDField;
    CdsAd2GetByDnoEPDOM5: TDateField;
    CdsAd2GetByDnoRSDOM5: TDateField;
    CdsAd2GetByDnoDNOOM5: TIntegerField;
    CdsAd2GetItnEDTAD1: TDateField;
    CdsAd2GetItnWISAD1: TIntegerField;
    CdsAd2GetByDnoEDTAD1: TDateField;
    CdsAd2GetByDnoWISAD1: TIntegerField;
    CdsAd2GetByDnoFULL_NAME: TStringField;
    CdsAd2GetByDnoTNMSMN: TStringField;
    CdsAd2GetColQT1AD1: TIntegerField;
    CdsAd2GetColOUTAD1: TIntegerField;
    CdsAd2GetByDnoOUTAD1: TIntegerField;
    CdsTtPt1GetDNOAD1: TIntegerField;
    CdsTtPt1GetEDTAD1: TDateField;
    CdsAd2GetItnTNMSRS: TStringField;
    CdsAd2GetItnCOLAD1: TStringField;
    CdsAd2GetItnTNMCOL: TStringField;
    CdsAd2GetItnQT1AD1: TIntegerField;
    CdsAd2GetItnOUTAD1: TIntegerField;
    CdsAd2GetItnSERAD2: TStringField;
    CdsAd2GetItnENGAD2: TStringField;
    CdsAd2GetByDnoSRSPM1: TStringField;
    CdsTtPt1GetCOUNTAD2: TIntegerField;
    CdsTtPtXGet: TClientDataSet;
    CdsTtPtXGetYARPT1: TIntegerField;
    CdsTtPtXGetCMPPT1: TStringField;
    CdsTtPtXGetBRNPT1: TStringField;
    CdsTtPtXGetDNOPT1: TStringField;
    CdsTtPtXGetSEQPT1: TIntegerField;
    CdsTtPtXGetIDTPT1: TDateField;
    CdsTtPtXGetDEPPT1: TStringField;
    CdsTtPtXGetVNOPT1: TStringField;
    CdsTtPtXGetTNMVM1: TStringField;
    CdsTtPtXGetCPSVM1: TStringField;
    CdsTtPtXGetCRTPT1: TIntegerField;
    CdsTtPtXGetRNOPT1: TStringField;
    CdsTtPtXGetRDVPT1: TDateField;
    CdsTtPtXGetRATPT1: TFMTBCDField;
    CdsTtPtXGetVTPPT1: TStringField;
    CdsTtPtXGetVATPT1: TStringField;
    CdsTtPtXGetVPCPT1: TFMTBCDField;
    CdsTtPtXGetVAMPT1: TFMTBCDField;
    CdsTtPtXGetVTEPT1: TStringField;
    CdsTtPtXGetQR1PT1: TIntegerField;
    CdsTtPtXGetNETPT1: TFMTBCDField;
    CdsTtPtXGetFWHPT1: TStringField;
    CdsTtPtXGetDDTPT1: TDateField;
    CdsTtPtXGetDNOAD1: TIntegerField;
    CdsTtPtXGetEDTAD1: TDateField;
    CdsTtPtXGetCOUNTAD2: TIntegerField;
    CdsTtPt1GetTNMSRS: TStringField;
    procedure CdsTtPt1GetDDTPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtPt1GetIDTPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtPt1GetRDVPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtPt1GetYARPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAd2GetDnoEDTAD1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsAd2GetByDnoUC1PM1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtPt1GetRATPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsTtPtXGetRATPT1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

  private
    function GetDSProxy(): TDSPurchaseClient; inline;

  public

    function CreateProxyClass(dsConnection: TSQLConnection): boolean; override;
    property PurchaseProxy: TDSPurchaseClient read GetDSProxy;

    function TtPt1Get(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;
    function TtPt1InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
    function TtPt1Del(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer): Boolean;
    function TT_AD2_GET_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer): Boolean;
    function TT_AD2_GET_SRS(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
    function TT_AD2_GET_ITN(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
    function TT_AD2_GET_COL(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
    function TT_AD2_GET_BY_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer; IRDNAD2: string): Boolean;
    function TtAd2InsUpd(cmpad2: string; brnad2: string; yarad2: Integer; prdad2: Integer; dcdad2: string; dnoad2: Integer; seqad2: Integer; ssbad2: Integer; isdad2: Double; itnad1: string; colad1: string; qt1ad2: Integer; qt2ad2: Integer; serad2: string; engad2: string; rdnad2: string; entusr: string): Boolean;
    function TtPtXInsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
    function TtPtX2InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string): Boolean;
    function TtPtXGet(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;

  end;

var
  DSPurchaseDM: TDSPurchaseDM;

implementation

{$R *.dfm}


function TDSPurchaseDM.GetDSProxy(): TDSPurchaseClient;
begin
  Result := TDSPurchaseClient(DSProxy);
end;


procedure TDSPurchaseDM.CdsAd2GetByDnoUC1PM1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSPurchaseDM.CdsAd2GetDnoEDTAD1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSPurchaseDM.CdsTtPt1GetDDTPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSPurchaseDM.CdsTtPt1GetIDTPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSPurchaseDM.CdsTtPt1GetRATPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

procedure TDSPurchaseDM.CdsTtPt1GetRDVPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := GetDate(Sender.AsDateTime);

end;

procedure TDSPurchaseDM.CdsTtPt1GetYARPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := IntToStr(Sender.AsInteger + 543);

end;

procedure TDSPurchaseDM.CdsTtPtXGetRATPT1GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('#,##0.00',Sender.AsFloat)

end;

function TDSPurchaseDM.CreateProxyClass(dsConnection: TSQLConnection): boolean;
begin
  if (not Assigned(DSProxy)) then
  begin
    try
      DSProxy := TDSPurchaseClient.Create(dsConnection.DBXConnection);
      UpdateDSProviderConnection(dsConnection);
    except
      Exit(False);
    end;
  end;

  Result := True;
end;

function TDSPurchaseDM.TtPt1Get(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;
begin
   result := PurchaseProxy.TtPt1Get(CRITERIA,ORDERFIELD,IYARPT1,ICMPPT1,IBRNPT1,IDCDPT1);
end;

function TDSPurchaseDM.TtPt1InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
begin
   result := PurchaseProxy.TtPt1InsUpd(YARPT1,CMPPT1,BRNPT1,DCDPT1,DNOPT1,SEQPT1,IDTPT1,DEPPT1,VNOPT1,
            CRTPT1,RNOPT1,RDVPT1,RATPT1,VTPPT1,VATPT1,VPCPT1,VAMPT1,VTEPT1,
            SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1,QR1PT1,FWHPT1,DDTPT1,ENTUSR,MD,out_dnopt1);
end;

function TDSPurchaseDM.TtPt1Del(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer): Boolean;
begin
   result := PurchaseProxy.TtPt1Del(YARPT1,CMPPT1,BRNPT1,DCDPT1,DNOPT1,SEQPT1);
end;

function TDSPurchaseDM.TT_AD2_GET_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer): Boolean;
begin
   result := PurchaseProxy.TT_AD2_GET_DNO(ICMPAD1,IBRNAD1,IYARAD1,IPRDAD1);
end;

function TDSPurchaseDM.TT_AD2_GET_SRS(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
begin
   result := PurchaseProxy.TT_AD2_GET_SRS(ICMPAD1,IBRNAD1,IYARAD1,IPRDAD1,IDCDAD1,IDNOAD1);
end;

function TDSPurchaseDM.TT_AD2_GET_ITN(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
begin
   result := PurchaseProxy.TT_AD2_GET_ITN(ICMPAD1,IBRNAD1,IYARAD1,IPRDAD1,IDCDAD1,IDNOAD1);
end;

function TDSPurchaseDM.TT_AD2_GET_COL(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer): Boolean;
begin
   result := PurchaseProxy.TT_AD2_GET_COL(ICMPAD1,IBRNAD1,IYARAD1,IPRDAD1,IDCDAD1,IDNOAD1);
end;

function TDSPurchaseDM.TT_AD2_GET_BY_DNO(ICMPAD1: string; IBRNAD1: string; IYARAD1: Integer; IPRDAD1: Integer; IDCDAD1: string; IDNOAD1: Integer; IRDNAD2: string): Boolean;
begin
   result := PurchaseProxy.TT_AD2_GET_BY_DNO(ICMPAD1,IBRNAD1,IYARAD1,IPRDAD1,IDCDAD1,IDNOAD1,IRDNAD2);
end;

function TDSPurchaseDM.TtAd2InsUpd(cmpad2: string; brnad2: string; yarad2: Integer; prdad2: Integer; dcdad2: string; dnoad2: Integer; seqad2: Integer; ssbad2: Integer; isdad2: Double; itnad1: string; colad1: string; qt1ad2: Integer; qt2ad2: Integer; serad2: string; engad2: string; rdnad2: string; entusr: string): Boolean;
begin
   result := PurchaseProxy.TtAd2InsUpd(cmpad2,brnad2,yarad2,prdad2,dcdad2,dnoad2,seqad2,ssbad2,isdad2,itnad1,colad1,qt1ad2,qt2ad2,serad2,engad2,rdnad2,entusr);
end;

function TDSPurchaseDM.TtPtXInsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string; var out_dnopt1: string): Boolean;
begin
   result := PurchaseProxy.TtPtXInsUpd(YARPT1,CMPPT1,BRNPT1,DCDPT1,DNOPT1,SEQPT1,IDTPT1,DEPPT1,VNOPT1,
            CRTPT1,RNOPT1,RDVPT1,RATPT1,VTPPT1,VATPT1,VPCPT1,VAMPT1,VTEPT1,
            SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1,QR1PT1,FWHPT1,DDTPT1,ENTUSR,MD,out_dnopt1);
end;

function TDSPurchaseDM.TtPtX2InsUpd(YARPT1: Integer; CMPPT1: string; BRNPT1: string; DCDPT1: string; DNOPT1: string; SEQPT1: Integer; IDTPT1: Double; DEPPT1: string; VNOPT1: string; CRTPT1: Integer; RNOPT1: string; RDVPT1: Double; RATPT1: Double; VTPPT1: string; VATPT1: string; VPCPT1: Double; VAMPT1: Double; VTEPT1: string; SRSPT1: string; ITNPT1: string; COLPT1: string; SERPT1: string; ENGPT1: string; QR1PT1: Integer; FWHPT1: string; DDTPT1: Double; ENTUSR: string; MD: string): Boolean;
begin
   result := PurchaseProxy.TtPtX2InsUpd(YARPT1,CMPPT1,BRNPT1,DCDPT1,DNOPT1,SEQPT1,IDTPT1,DEPPT1,VNOPT1,
            CRTPT1,RNOPT1,RDVPT1,RATPT1,VTPPT1,VATPT1,VPCPT1,VAMPT1,VTEPT1,
            SRSPT1,ITNPT1,COLPT1,SERPT1,ENGPT1,QR1PT1,FWHPT1,DDTPT1,ENTUSR,MD);
end;

function TDSPurchaseDM.TtPtXGet(CRITERIA: string; ORDERFIELD: string; IYARPT1: Integer; ICMPPT1: string; IBRNPT1: string; IDCDPT1: string): Boolean;
begin
   result := PurchaseProxy.TtPtXGet(CRITERIA,ORDERFIELD,IYARPT1,ICMPPT1,IBRNPT1,IDCDPT1);
end;

end.
