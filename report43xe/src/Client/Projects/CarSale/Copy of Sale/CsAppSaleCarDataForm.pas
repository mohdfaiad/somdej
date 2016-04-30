unit CsAppSaleCarDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx , ServerModuleEx,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,DSCarsaleIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask, uniRadioButton,
  uniSplitter;

type
  TfrmCsAppSaleCarData = class(TMainDataForm)
    dsgrid: TDataSource;
    STSOT5lb: TUniLabel;
    ddyyyylb: TUniLabel;
    CMPOT5lb: TUniLabel;
    DNOOT5lb: TUniLabel;
    ddyyyy: TUniEdit;
    CMPOT5: TUniDBEdit;
    BRNOT5lb: TUniLabel;
    BRNOT5: TUniDBLookupComboBox;
    DEPOT5lb: TUniLabel;
    IDTOT5lb: TUniLabel;
    IDTOT5: TUniDateTimePicker;
    DEPOT5: TUniDBLookupComboBox;
    dsAddr01: TDataSource;
    csPopUpAp: TUniScreenMask;
    csPopUpProduct: TUniScreenMask;
    PgCarsale: TUniPageControl;
    TabCus: TUniTabSheet;
    GrpCno: TUniGroupBox;
    CNOOT5lb: TUniLabel;
    CNOOT5: TUniDBEdit;
    BtnSelectcno: TUniButton;
    TNMCSM: TUniDBEdit;
    UniLabel1: TUniLabel;
    TA1CSM: TUniDBEdit;
    TA2CSM: TUniDBEdit;
    UniLabel8: TUniLabel;
    CHGCSM: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    CTYOT5lb: TUniLabel;
    CTYOT5: TUniDBLookupComboBox;
    GrpPno: TUniGroupBox;
    RPDOT5: TUniDateTimePicker;
    UniLabel4: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel24: TUniLabel;
    SMNOT5: TUniDBLookupComboBox;
    PNOOT5: TUniDBEdit;
    RSNOT5: TUniDBEdit;
    RSDOT5: TUniDateTimePicker;
    PSTOT5: TUniDBLookupComboBox;
    GrpBrk: TUniGroupBox;
    UniLabel3: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel44: TUniLabel;
    BRKOT5: TUniDBEdit;
    GrpMem: TUniGroupBox;
    MEMOT5: TUniDBMemo;
    TabProduct: TUniTabSheet;
    UniLabel49: TUniLabel;
    UniLabel50: TUniLabel;
    UniLabel51: TUniLabel;
    UniLabel52: TUniLabel;
    DNOYM1: TUniDBEdit;
    IDTYM1: TUniDateTimePicker;
    BNOOT5: TUniDBEdit;
    KEYOT5: TUniDBEdit;
    UniLabel53: TUniLabel;
    UniLabel54: TUniLabel;
    UniLabel55: TUniLabel;
    UniLabel56: TUniLabel;
    UniLabel57: TUniLabel;
    UniLabel58: TUniLabel;
    UniLabel59: TUniLabel;
    UniLabel60: TUniLabel;
    TabCondition: TUniTabSheet;
    pnCondition: TUniPanel;
    UniLabel77: TUniLabel;
    LbFCDOT5: TUniLabel;
    UniLabel79: TUniLabel;
    UniLabel80: TUniLabel;
    UniLabel81: TUniLabel;
    STPOT5: TUniDBLookupComboBox;
    UniLabel82: TUniLabel;
    UniLabel83: TUniLabel;
    UniLabel84: TUniLabel;
    UniLabel85: TUniLabel;
    UniLabel86: TUniLabel;
    UniLabel87: TUniLabel;
    UniLabel88: TUniLabel;
    UniLabel89: TUniLabel;
    DDTOT5: TUniDateTimePicker;
    ESDOT5: TUniDBLookupComboBox;
    GrpDown: TUniGroupBox;
    DbDown: TUniDBGrid;
    TabInsurance: TUniTabSheet;
    GrpCall: TUniGroupBox;
    UniLabel90: TUniLabel;
    UniLabel91: TUniLabel;
    UniLabel92: TUniLabel;
    UniLabel93: TUniLabel;
    UniLabel94: TUniLabel;
    INOOT5: TUniDBEdit;
    STAOT5: TUniDateTimePicker;
    ENDOT5: TUniDateTimePicker;
    PSROT5: TUniDBLookupComboBox;
    RDTOT5: TUniDateTimePicker;
    GrpPRY: TUniGroupBox;
    UniLabel95: TUniLabel;
    UniLabel96: TUniLabel;
    UniLabel97: TUniLabel;
    UniLabel98: TUniLabel;
    UniLabel99: TUniLabel;
    CN1OT5: TUniDBEdit;
    SDTOT5: TUniDateTimePicker;
    EDTOT5: TUniDateTimePicker;
    GrpClass1: TUniGroupBox;
    UniLabel100: TUniLabel;
    UniLabel101: TUniLabel;
    UniLabel102: TUniLabel;
    UniLabel103: TUniLabel;
    UniLabel104: TUniLabel;
    BDTOT5: TUniDateTimePicker;
    FDTOT5: TUniDateTimePicker;
    TabAccessory: TUniTabSheet;
    DbgAccessory: TUniDBGrid;
    TabEXP: TUniTabSheet;
    DbgExp: TUniDBGrid;
    TabCard: TUniTabSheet;
    DbgCard: TUniDBGrid;
    UniPanel4: TUniPanel;
    grpSendCar: TUniGroupBox;
    UniLabel75: TUniLabel;
    UniLabel76: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    TMDOT5: TUniDBEdit;
    PLCOT5: TUniDBEdit;
    EPTOT5: TUniDBEdit;
    GrpCollector: TUniGroupBox;
    DbgCollector: TUniDBGrid;
    dsImageRef: TDataSource;
    UniLabel33: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel47: TUniLabel;
    UniLabel48: TUniLabel;
    USEOT5: TUniDBLookupComboBox;
    UniLabel31: TUniLabel;
    SRSPM1: TUniDBLookupComboBox;
    UniLabel32: TUniLabel;
    COLOT5: TUniDBLookupComboBox;
    UniLabel35: TUniLabel;
    UniLabel36: TUniLabel;
    SEROT5: TUniDBEdit;
    ENGOT5: TUniDBEdit;
    PRDOT5: TUniDBEdit;
    UniLabel12: TUniLabel;
    BtnSelectProduct: TUniButton;
    PnImg: TUniPanel;
    ViewImage: TUniImage;
    TELCSM: TUniDBEdit;
    UP1OT5: TUniEdit;
    APCOT5: TUniEdit;
    AFEOT5: TUniEdit;
    PDAOT5: TUniEdit;
    NETOT5: TUniEdit;
    TAXOT5: TUniEdit;
    PPYOT5: TUniEdit;
    FAMPM1: TUniEdit;
    PPYOT52: TUniEdit;
    RATOT5: TUniEdit;
    NLEOT5: TUniEdit;
    DWTOT5: TUniEdit;
    PMMOT5: TUniEdit;
    SUMOT5: TUniEdit;
    HPOT5: TUniEdit;
    CM1OT5: TUniEdit;
    CM2OT5: TUniEdit;
    ITSOT5: TUniEdit;
    IVSOT5: TUniEdit;
    INTOT5: TUniEdit;
    PnHeadCard: TUniPanel;
    BtnCardEdit: TUniButton;
    PnHeadExp: TUniPanel;
    BtnExpView: TUniButton;
    BtnExpAdd: TUniButton;
    BtnExpEdit: TUniButton;
    BtnExpDel: TUniButton;
    pnHeadAccessory: TUniPanel;
    BtnAccessoryView: TUniButton;
    BtnAccessoryAdd: TUniButton;
    BtnAccessoryEdit: TUniButton;
    BtnAccessoryDel: TUniButton;
    STSOT5: TUniDBLookupComboBox;
    BtnSelectBroker: TUniButton;
    GNOOT5: TUniDBEdit;
    UniButton13: TUniButton;
    dsAccessory: TDataSource;
    dsEXP: TDataSource;
    dsCard: TDataSource;
    EPSOT5: TUniDBLookupComboBox;
    TNMBRK: TUniDBEdit;
    TELBRK: TUniDBEdit;
    TNMGNO: TUniDBEdit;
    TELGNO: TUniDBEdit;
    dsbrkAddr01: TDataSource;
    dsGnoAddr01: TDataSource;
    ICDOT5: TUniDBEdit;
    UniLabel30: TUniLabel;
    BtnSelectICD: TUniButton;
    TNMICD: TUniDBEdit;
    ISDOT5: TUniDBEdit;
    BtnSelectISD: TUniButton;
    TNMISD: TUniDBEdit;
    UniLabel34: TUniLabel;
    FCDOT5: TUniDBEdit;
    BtnSelectFinance: TUniButton;
    TNMFCD: TUniDBEdit;
    LbTNMFCD: TUniLabel;
    TNMWHS: TUniDBEdit;
    BtnSelectIM1: TUniButton;
    PDCOT5: TUniEdit;
    LbPercentDiscont: TUniLabel;
    PnHeadDown: TUniPanel;
    BtnDownView: TUniButton;
    BtnDownAdd: TUniButton;
    BtnDownEdit: TUniButton;
    BtnDownDel: TUniButton;
    dsDown: TDataSource;
    MNMPM1: TUniDBLookupComboBox;
    EXDOT5: TUniDateTimePicker;
    EPDOT5: TUniDateTimePicker;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectcnoClick(Sender: TObject);
    procedure IDTOT5Change(Sender: TObject);
    procedure RPDOT5Change(Sender: TObject);
    procedure DDTOT5Change(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure BtnSelectBrokerClick(Sender: TObject);
    procedure UniButton13Click(Sender: TObject);
    procedure BtnSelectICDClick(Sender: TObject);
    procedure BtnSelectISDClick(Sender: TObject);
    procedure STPOT5CloseUp(Sender: TObject);
    procedure BtnSelectFinanceClick(Sender: TObject);
    procedure BtnSelectIM1Click(Sender: TObject);
    procedure APCOT5Exit(Sender: TObject);
    procedure AFEOT5Exit(Sender: TObject);
    procedure AFEOT5KeyPress(Sender: TObject; var Key: Char);
    procedure APCOT5KeyPress(Sender: TObject; var Key: Char);
    procedure PDCOT5Exit(Sender: TObject);
    procedure PDCOT5KeyPress(Sender: TObject; var Key: Char);
    procedure PDAOT5Enter(Sender: TObject);
    procedure PDAOT5KeyPress(Sender: TObject; var Key: Char);
    procedure DWTOT5Exit(Sender: TObject);
    procedure DWTOT5KeyPress(Sender: TObject; var Key: Char);
    procedure RATOT5Exit(Sender: TObject);
    procedure RATOT5KeyPress(Sender: TObject; var Key: Char);
    procedure NLEOT5Exit(Sender: TObject);
    procedure NLEOT5KeyPress(Sender: TObject; var Key: Char);
    procedure RSDOT5Change(Sender: TObject);
    procedure ITSOT5Exit(Sender: TObject);
    procedure ITSOT5KeyPress(Sender: TObject; var Key: Char);
    procedure SDTOT5Change(Sender: TObject);
    procedure BDTOT5Change(Sender: TObject);
    procedure RDTOT5Change(Sender: TObject);
    procedure IVSOT5Exit(Sender: TObject);
    procedure IVSOT5KeyPress(Sender: TObject; var Key: Char);
    procedure INTOT5Exit(Sender: TObject);
    procedure INTOT5KeyPress(Sender: TObject; var Key: Char);
    procedure BtnCardEditClick(Sender: TObject);
    procedure BtnExpAddClick(Sender: TObject);
    procedure BtnExpEditClick(Sender: TObject);
    procedure BtnExpViewClick(Sender: TObject);
    procedure PgCarsaleChange(Sender: TObject);
    procedure BtnAccessoryAddClick(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure BtnDownAddClick(Sender: TObject);
    procedure SRSPM1CloseUp(Sender: TObject);
    procedure EXDOT5Change(Sender: TObject);
    procedure EPDOT5Change(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSCarsaleDM;
    FSetupdm : TDSSetupDM;
    FApp_Appr : String;

    InsFlag : integer;
    StrList ,StrListEXP, StrListaAccessory ,StrListDown: TStringList;
    OUT_DNO : integer;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure CalculatAmt();

    procedure BrkGetAddr(BRK : string);
    procedure GnoGetAddr(gno : int64);
    procedure ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
    procedure ProductIm1Selected(SERIM1,ENGIM1,COLIM1,WHSIM1,TNMWHS,_DNOYM1: String;_IDTYM1:Double);
    procedure CustomerSelected(CCNCSM:int64;TNMCSM:String);
    procedure BrokerSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
    procedure InsuranceSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
    procedure FinanceSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
    procedure GnoSelected(CCNCSM:int64;TNMCSM:String);
    procedure ShowCardData();
    procedure CalInstallmentAmt();
    procedure ShowEXPData;
    procedure ShowAccessoryData;
    procedure ShowDownData;
  public
     procedure Init(xDM : TDSCarsaleDM);

     procedure ShowEdtAmtAndDate();
     procedure GetImage();
     procedure GetAddr(cno : int64);
     procedure GetCard(cno : int64);

     property  Dm : TDSCarSaleDM read FDM Write FDM;
     property  StDm : TDSSetupDM read FSetupdm Write FSetupdm;
     property  App_Appr : String read FApp_Appr write FApp_Appr;
  end;

var
  frmCsAppSaleCarData: TfrmCsAppSaleCarData;

const
  DCD = '102';  // รหัสใบคำขอซื้อรถ

implementation

{$R *.dfm}

uses PopupProductForm, PopupCsmForm, PopupApForm, PopupProductIM1Form,PopupRCVCardForm, Math,
  PopupExpForm, PopupAccessoryForm, PopupDownForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmCsAppSaleCarData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
var
  cur : Currency;
  F: TField;
  Str,Tmp : String;
  i : integer;
begin
  if CdsTmp.State in [dsInsert,dsEdit] then
  begin
    if ((Sender as TUniEdit).text = '')then
      (Sender as TUniEdit).text := '0.00';

    Str := Trim((Sender as TUniEdit).text);
    Tmp := '0';

    for i := 0 to Length(Str) do
    begin
      if (Str[i] in ['0','1','2','3','4','5','6','7','8','9','.'])  then
        Tmp := Tmp + Str[i];
    end;

    try
      (Sender as TUniEdit).text := Tmp;
    except
      (Sender as TUniEdit).text := '0.00';
    end;

    try
      F := CdsTmp.FieldByName((Sender as TUniEdit).HelpKeyword);
      cur := FloatToCurr(StrToFloat(StringReplace((Sender as TUniEdit).text, ',','', [rfReplaceAll])));

      F.AsCurrency := cur;
      if (cur >= 0) then
      begin
        (Sender as TUniEdit).text := Format('%.2n',[cur]);
      end else
      begin
        ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' มีค่าน้อยกว่า ศูนย์ไม่ได้');
        F.AsCurrency := 0.00;
        (Sender as TUniEdit).text := '0.00';
      end;
    except
      ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' ให้ระบุเป็นตัวเลข');
      F.AsCurrency := 0.00;
      (Sender as TUniDBEdit).text := '0.00';
    end;
  end;
end;

procedure TfrmCsAppSaleCarData.CalculatAmt();
begin
  fdm.CdsMtAppGetPPYOT5.AsFloat := fdm.CdsMtAppGetNETOT5.AsFloat +
                                   fdm.CdsMtAppGetAPCOT5.AsFloat -
                                   fdm.CdsMtAppGetAFEOT5.AsFloat -
                                   fdm.CdsMtAppGetPDAOT5.AsFloat;
  PPYOT5.Text := FormatFloat('#,##0.00',fdm.CdsMtAppGetPPYOT5.AsFloat);
  PPYOT52.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetPPYOT5.AsFloat);

end;

procedure TfrmCsAppSaleCarData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsMtAppGetFollowup.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetFollowup.Cancel();
  if Fdm.CdsMtAppGetDown.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetDown.Cancel();
  if Fdm.CdsMtAppGetCard.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetCard.Cancel();
  if Fdm.CdsMtAppGetAccessory.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetAccessory.Cancel();
  if Fdm.CdsMtAppGetEXP.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGetEXP.Cancel();
  if Fdm.CdsMtAppGet.State in [dsInsert,dsEdit] then
    Fdm.CdsMtAppGet.Cancel();

  inherited;

end;

procedure TfrmCsAppSaleCarData.ShowCardData();
var
  _Form: TUniForm;
begin

  with TfrmPopupRCVCard.Create(UniApplication) do
  begin
    Init(FDM);

    ShowModal();
  end;
{
  _Form := TUniFormClass(TfrmPopupRCVCard).Create(UniApplication);
  TfrmPopupRCVCard(_Form).Init(FDM);
  if (Assigned(_Form)) then
  begin

    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;

    _Form.ShowModal();

  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;
 }

end;

procedure TfrmCsAppSaleCarData.BtnCardEditClick(Sender: TObject);
begin
   if (not Fdm.CdsMtAppGetCard.Active) or
    (Fdm.CdsMtAppGetCard.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  if (Fdm.CdsMtAppGetCardFLGOMI.AsString = 'Y') then
  begin
    MessageDlg('รับเอกสารไปแล้ว', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsMtAppGetCard.Edit();

  ShowCardData();

end;

procedure TfrmCsAppSaleCarData.btnConfirmClick(Sender: TObject);
var ch ,ch2,ch3,ch4, ch5, chAcc,chEXP,chCard, chDown : Boolean;
  md: String;

begin
  if ((fdm.CdsMtAppGetBRNOT5.AsString = '') or
      (fdm.CdsMtAppGetDEPOT5.AsString = '') or
      (fdm.CdsMtAppGetCNOOT5.AsString = '')
     ) then
  begin
    ShowMessage('กรอกข้อมูลเบื่องต้นไม่ครบถ้วน');
    Exit;
  end;


  if Fdm.CdsMtAppGet.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  Fdm.CdsMtAppGetyarOT5.Asinteger := StrToInt(FormatDateTime('yyyy',fdm.CdsMtAppGetIDTOT5.AsDateTime));

  ch:= FDM.MtAppInsUpd(
        Fdm.CdsMtAppGetSTSOT5.AsString,
        Fdm.CdsMtAppGetYAROT5.AsInteger,
        Fdm.CdsMtAppGetCMPOT5.AsString,
        Fdm.CdsMtAppGetBRNOT5.AsString,
        Fdm.CdsMtAppGetDCDOT5.AsString,
        Fdm.CdsMtAppGetDNOOT5.AsInteger,
        Fdm.CdsMtAppGetSEQOT5.AsInteger,
        Fdm.CdsMtAppGetIDTOT5.AsFloat,
        Fdm.CdsMtAppGetDEPOT5.AsString,
        Fdm.CdsMtAppGetCNOOT5.AsLargeInt,
        Fdm.CdsMtAppGetCTYOT5.AsString,
        Fdm.CdsMtAppGetCRTOT5.AsInteger,
        Fdm.CdsMtAppGetSMNOT5.AsString,
        Fdm.CdsMtAppGetPNOOT5.AsString,
        Fdm.CdsMtAppGetRPDOT5.AsFloat,
        Fdm.CdsMtAppGetRSNOT5.AsString,
        Fdm.CdsMtAppGetRSDOT5.AsFloat,
        Fdm.CdsMtAppGetPSTOT5.AsString,
        Fdm.CdsMtAppGetBRKOT5.AsString,
        Fdm.CdsMtAppGetGNOOT5.AsLargeInt,
        Fdm.CdsMtAppGetEXDOT5.AsFloat,
        Fdm.CdsMtAppGetTMDOT5.AsString,
        Fdm.CdsMtAppGetPLCOT5.AsString,
        Fdm.CdsMtAppGetEPDOT5.AsFloat,
        Fdm.CdsMtAppGetEPTOT5.AsString,
        Fdm.CdsMtAppGetEPSOT5.AsString,
        Fdm.CdsMtAppGetMEMOT5.AsString);

     ch2:= FDM.MtAppInsUpdProduct(
          Fdm.CdsMtAppGetPRDOT5.AsString,
          Fdm.CdsMtAppGetCOLOT5.AsString,
          Fdm.CdsMtAppGetSEROT5.AsString,
          Fdm.CdsMtAppGetENGOT5.AsString,
          Fdm.CdsMtAppGetUSEOT5.AsString,
          Fdm.CdsMtAppGetBNOOT5.AsString,
          Fdm.CdsMtAppGetKEYOT5.AsString,
          Fdm.CdsMtAppGetQO1OT5.AsInteger,
          Fdm.CdsMtAppGetQO2OT5.AsInteger,
          Fdm.CdsMtAppGetPDCOT5.AsFloat,
          Fdm.CdsMtAppGetPDAOT5.AsFloat,
          Fdm.CdsMtAppGetUP1OT5.AsFloat,
          Fdm.CdsMtAppGetUP2OT5.AsFloat,
          Fdm.CdsMtAppGetNETOT5.AsFloat,
          Fdm.CdsMtAppGetPPYOT5.AsFloat,
          Fdm.CdsMtAppGetTAXOT5.AsFloat,
          Fdm.CdsMtAppGetAPCOT5.AsFloat,
          Fdm.CdsMtAppGetAFEOT5.AsFloat);

      ch3:= FDM.MtAppInsUpdCondition(
          Fdm.CdsMtAppGetSTPOT5.AsString,
          Fdm.CdsMtAppGetFCDOT5.AsString,
          Fdm.CdsMtAppGetDWTOT5.AsFloat,
          Fdm.CdsMtAppGetNLEOT5.AsInteger,
          Fdm.CdsMtAppGetRATOT5.AsFloat,
          Fdm.CdsMtAppGetPMMOT5.AsFloat,
          Fdm.CdsMtAppGetCM1OT5.AsFloat,
          Fdm.CdsMtAppGetCM2OT5.AsFloat,
          Fdm.CdsMtAppGetDDTOT5.AsFloat,
          Fdm.CdsMtAppGetESDOT5.AsInteger);

       ch4:= FDM.MtAppInsUpdInsurance(
          Fdm.CdsMtAppGetICDOT5.AsString,
          Fdm.CdsMtAppGetCN1OT5.AsString,
          Fdm.CdsMtAppGetITSOT5.AsFloat,
          Fdm.CdsMtAppGetSDTOT5.AsFloat,
          Fdm.CdsMtAppGetEDTOT5.AsFloat,
          Fdm.CdsMtAppGetISDOT5.AsString,
          Fdm.CdsMtAppGetIVSOT5.AsFloat,
          Fdm.CdsMtAppGetINTOT5.AsFloat,
          Fdm.CdsMtAppGetBDTOT5.AsFloat,
          Fdm.CdsMtAppGetFDTOT5.AsFloat,
          Fdm.CdsMtAppGetRDTOT5.AsFloat,
          Fdm.CdsMtAppGetINOOT5.AsString,
          Fdm.CdsMtAppGetPSROT5.AsString);

        ch5 := Fdm.MtAppInsUpd_Commit(fdm.UserID,MD,OUT_DNO);

  if fdm.CdsMtAppGetAccessory.Active then
  begin
     fdm.CdsMtAppGetAccessory.First();
    while not fdm.CdsMtAppGetAccessory.Eof do
    begin
        chAcc:= FDM.MtAppInsUpdAccessory(
            Fdm.CdsMtAppGetAccessorySTSOT6.Asstring  ,
            Fdm.CdsMtAppGetAccessoryYAROT6.AsInteger ,
            Fdm.CdsMtAppGetAccessoryCMPOT6.Asstring ,
            Fdm.CdsMtAppGetAccessoryBRNOT6.Asstring  ,
            Fdm.CdsMtAppGetAccessoryDCDOT6.Asstring ,
            OUT_DNO,
            Fdm.CdsMtAppGetAccessorySEQOT6.AsInteger ,
            Fdm.CdsMtAppGetAccessoryFGDOT6.Asstring  ,
            Fdm.CdsMtAppGetAccessoryFRDOT6.Asstring,
            Fdm.CdsMtAppGetAccessoryFSROT6.Asstring  ,
            Fdm.CdsMtAppGetAccessoryFWHOT6.Asstring,
            Fdm.CdsMtAppGetAccessoryFPDOT6.Asstring ,
            Fdm.CdsMtAppGetAccessoryFCLOT6.Asstring,
            Fdm.CdsMtAppGetAccessoryFQ1OT6.AsInteger,
            Fdm.CdsMtAppGetAccessoryFQ2OT6.AsInteger ,
            Fdm.CdsMtAppGetAccessoryTDSOT6.Asstring,
            Fdm.CdsMtAppGetAccessoryFDSOT6.AsFloat ,
            Fdm.CdsMtAppGetAccessoryFPAOT6.AsFloat  ,
            Fdm.CdsMtAppGetAccessoryFU1OT6.AsFloat  ,
            Fdm.CdsMtAppGetAccessoryFU2OT6.AsFloat  ,
            Fdm.CdsMtAppGetAccessoryPRTOT6.Asstring  ,
            Fdm.CdsMtAppGetAccessoryABBOT6.Asstring ,
            Fdm.UserID
          );

      fdm.CdsMtAppGetAccessory.next;
    end;
  end;

  if fdm.CdsMtAppGetEXP.Active then
  begin
     fdm.CdsMtAppGetEXP.First();
    while not fdm.CdsMtAppGetEXP.Eof do
    begin
        chEXP:= FDM.MtAppInsUpdEXP(
          Fdm.CdsMtAppGetEXPSTSEXP.Asstring,
          Fdm.CdsMtAppGetEXPYAREXP.Asinteger,
          Fdm.CdsMtAppGetEXPCMPEXP.Asstring,
          Fdm.CdsMtAppGetEXPBRNEXP.Asstring,
          Fdm.CdsMtAppGetEXPDCDEXP.Asstring,
          OUT_DNO,
          Fdm.CdsMtAppGetEXPSEQEXP.Asinteger,
          Fdm.CdsMtAppGetEXPCDCEXP.Asstring,
          Fdm.CdsMtAppGetEXPAMTEXP.AsFloat,
          Fdm.CdsMtAppGetEXPTP1EXP.Asstring ,
          Fdm.CdsMtAppGetEXPTP2EXP.Asstring,
          Fdm.CdsMtAppGetEXPDCREXP.Asstring,
          Fdm.UserID
          );

      fdm.CdsMtAppGetEXP.next;
    end;
  end;

  if fdm.CdsMtAppGetCard.Active then
  begin
     fdm.CdsMtAppGetCard.First();
    while not fdm.CdsMtAppGetCard.Eof do
    begin
        chCard:= FDM.MtAppInsUpdCard(
          Fdm.CdsMtAppGetCardSTSOMI.Asstring,
          Fdm.CdsMtAppGetCardYAROMI.Asinteger,
          Fdm.CdsMtAppGetCardCMPOMI.Asstring,
          Fdm.CdsMtAppGetCardBRNOMI.Asstring,
          Fdm.CdsMtAppGetCardDCDOMI.Asstring,
          Fdm.CdsMtAppGetCardDNOOMI.Asinteger,
          Fdm.CdsMtAppGetCardCNOOMI.AsLargeInt,
          Fdm.CdsMtAppGetCardCDCOMI.Asstring,
          Fdm.CdsMtAppGetCardRDTOMI.AsFloat,
          Fdm.CdsMtAppGetCardRTMOMI.Asstring,
          Fdm.CdsMtAppGetCardPSNOMI.Asstring ,
          Fdm.CdsMtAppGetCardFLGOMI.Asstring ,
          Fdm.UserID
          );

      fdm.CdsMtAppGetCard.next;
    end;
  end;

  if fdm.CdsMtAppGetDown.Active then
  begin
     fdm.CdsMtAppGetDown.First();
    while not fdm.CdsMtAppGetDown.Eof do
    begin
        chDown:= FDM.MtAppInsUpdDown(
    fdm.CdsMtAppGetDownSTSOM7.AsString,
    fdm.CdsMtAppGetDownYAROM7.AsInteger,
    fdm.CdsMtAppGetDownCMPOM7.AsString,
    fdm.CdsMtAppGetDownBRNOM7.AsString,
    fdm.CdsMtAppGetDownDCDOM7.AsString,
    fdm.CdsMtAppGetDownDNOOM7.AsInteger,
    fdm.CdsMtAppGetDownSEQOM7.AsInteger,
    fdm.CdsMtAppGetDownPPDOM7.AsString,
    fdm.CdsMtAppGetDownPTPOM7.AsString,
    fdm.CdsMtAppGetDownNOTOM7.AsString,
    fdm.CdsMtAppGetDownPDTOM7.AsFloat,
    fdm.CdsMtAppGetDownPATOM7.AsFloat,
    fdm.CdsMtAppGetDownNAROM7.AsString,
    Fdm.UserID
          );

      fdm.CdsMtAppGetDown.next;
    end;
  end;

  if ch and ch2 and ch3 and ch4 and ch5 then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Fdm.CdsMtAppGetDNOOT5.AsInteger := OUT_DNO;
    btnConfirm.Enabled := False;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??' + 'ch=' + BoolToStr(ch)+ 'ch=' + BoolToStr(ch)
    + 'ch2=' + BoolToStr(ch2)+ 'ch3=' + BoolToStr(ch3)+ 'ch4=' + BoolToStr(ch4)
    + 'ch5=' + BoolToStr(ch5));

end;

procedure TfrmCsAppSaleCarData.SDTOT5Change(Sender: TObject);
begin
  if Trim(SDTOT5.Text) = '' then
  begin
    Fdm.CdsMtAppGetSDTOT5.AsDateTime := 0;
    Fdm.CdsMtAppGetEDTOT5.AsDateTime := 0;
    EDTOT5.Text := '';
  end
  else
  begin
    Fdm.CdsMtAppGetSDTOT5.AsDateTime := Fdm.FSBuddhistDateToDate(SDTOT5.DateTime);
    Fdm.CdsMtAppGetEDTOT5.AsDateTime := IncMonth(Fdm.CdsMtAppGetSDTOT5.AsDateTime, 12*544);
    SDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetSDTOT5.AsDateTime);
    EDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetEDTOT5.AsDateTime);
  end;

end;

procedure TfrmCsAppSaleCarData.ShowEdtAmtAndDate();
begin
   IDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetIDTOT5.AsDateTime);
   DDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetDDTOT5.AsDateTime);
   IDTYM1.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetIDTYM1.AsDateTime);

   SDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetSDTOT5.AsDateTime);
   EDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetEDTOT5.AsDateTime);

   ddyyyy.Text := copy(IDTOT5.Text,4,7);

   UP1OT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetUP1OT5.AsFloat);
   NETOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetNETOT5.AsFloat);
   APCOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetAPCOT5.AsFloat);
   AFEOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetAFEOT5.AsFloat);
   TAXOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetTAXOT5.AsFloat);
   PDCOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetPDCOT5.AsFloat);
   PPYOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetPPYOT5.AsFloat);
   PDAOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetPDAOT5.AsFloat);
   FAMPM1.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetFAMPM1.AsFloat);

   PPYOT52.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetPPYOT5.AsFloat);

   RATOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetRATOT5.AsFloat);
   NLEOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetNLEOT5.AsFloat);
   CM1OT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetCM1OT5.AsFloat);
   DWTOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetDWTOT5.AsFloat);
   RATOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetRATOT5.AsFloat);
   CM2OT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetCM2OT5.AsFloat);

   PMMOT5.Text :=  FormatFloat('#,##0.00',Fdm.CdsMtAppGetPMMOT5.AsFloat);

   SUMOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetSUMOT5.AsFloat);
   HPOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetHPOT5.AsFloat);

   ITSOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetITSOT5.AsFloat);
   IVSOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetIVSOT5.AsFloat);
   INTOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetINTOT5.AsFloat);

   EXDOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetEXDOT5.AsDateTime);
   EPDOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetEPDOT5.AsDateTime);

   end;

procedure TfrmCsAppSaleCarData.STPOT5CloseUp(Sender: TObject);
var Finance : Boolean;
begin
   Finance := (Fdm.CdsMtAppGetSTPOT5.AsString = 'F');

   LbFCDOT5.Visible := Finance;
   FCDOT5.Visible := Finance;
   if Fdm.CdsMtAppGet.State in [dsInsert,dsEdit] then
     BtnSelectFinance.Visible := Finance;
   LbTNMFCD.Visible := Finance;
   TNMFCD.Visible := Finance;

end;

procedure TfrmCsAppSaleCarData.UniButton13Click(Sender: TObject);
begin
  if fdm.CdsMtAppGetBRNOT5.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupCsm.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกผู้ค้ำ', Fdm.CMPUser,Fdm.BRNUser,'G');

    OnSelectData := GnoSelected;
    ShowModal();
  end;

end;

procedure TfrmCsAppSaleCarData.UniFormCreate(Sender: TObject);
begin
  inherited;
  App_Appr := 'APPLICATION';
end;

procedure TfrmCsAppSaleCarData.UniFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
  ;
  inherited;

end;

procedure TfrmCsAppSaleCarData.GetImage();
var
  DestName : string;
  DestFolder : string;
  _ImgName :string;
  Astream :TStream ;
begin

  _ImgName:= UniServerModule.FilesFolderPath+'NoPhoto.jpg';

  if not FSetupdm.CdsStPm1GetImageIMGPM1.IsNull Then
  begin

      DestFolder:= UniServerModule.LocalCachePath ; // tom test
      _ImgName := DestFolder+'tmp.jpg' ;

      FSetupdm.WriteLog('fILE Name  :'+   _ImgName ) ;
      FSetupdm.CdsStPm1GetImageIMGPM1.SaveToFile(_ImgName);
      FSetupdm.WriteLog('sAVE TO fILE  :'+   _ImgName ) ;
      ViewImage.Picture.LoadFromFile(_ImgName );
      FSetupdm.WriteLog('LoadFromFile  :'+    UniServerModule.TempFolderPath) ;
  end
  else
      ViewImage.Picture.LoadFromFile(_ImgName );

end;

procedure TfrmCsAppSaleCarData.GetAddr(cno : int64);
begin
  Fdm.CdsMtCsmGetAddr01.Close();
  Fdm.MtCsmGetAddr(cno,'1');
  Fdm.CdsMtCsmGetAddr01.Open();
end;

procedure TfrmCsAppSaleCarData.GetCard(cno : int64);
begin
  Fdm.CdsMtAppGetCard.Close();
  Fdm.MtAppGetCard(Fdm.CdsMtAppGetYAROT5.AsInteger,Fdm.CdsMtAppGetCMPOT5.AsString,
    Fdm.CdsMtAppGetBRNOT5.AsString,Fdm.CdsMtAppGetDCDOT5.AsString,
    Fdm.CdsMtAppGetDNOOT5.AsInteger,Fdm.CdsMtAppGetCNOOT5.AsLargeInt);
  Fdm.CdsMtAppGetCard.Open();
end;

procedure TfrmCsAppSaleCarData.CustomerSelected(CCNCSM:int64;TNMCSM:String);
begin
  Fdm.CdsMtAppGetCNOOT5.AsLargeInt := CCNCSM;
  Fdm.CdsMtAppGetTNMCSM.AsString := TNMCSM;

  GetAddr(fdm.CdsMtAppGetCNOOT5.AsLargeInt);
  GetCard(fdm.CdsMtAppGetCNOOT5.AsLargeInt);
end;

procedure TfrmCsAppSaleCarData.AFEOT5Exit(Sender: TObject);
begin
  checkCur(AFEOT5,fdm.CdsMtAppGet);
  CalculatAmt();

end;

procedure TfrmCsAppSaleCarData.AFEOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(AFEOT5,fdm.CdsMtAppGet);
    CalculatAmt();
  end;

end;

procedure TfrmCsAppSaleCarData.APCOT5Exit(Sender: TObject);
begin
  checkCur(APCOT5,fdm.CdsMtAppGet);
  CalculatAmt();
end;

procedure TfrmCsAppSaleCarData.APCOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    checkCur(APCOT5,fdm.CdsMtAppGet);
    CalculatAmt();
  end;


end;

procedure TfrmCsAppSaleCarData.BDTOT5Change(Sender: TObject);
begin
  if Trim(BDTOT5.Text) = '' then
  begin
    Fdm.CdsMtAppGetBDTOT5.AsDateTime := 0;
    Fdm.CdsMtAppGetFDTOT5.AsDateTime := 0;
    FDTOT5.Text := '';
  end
  else
  begin
    Fdm.CdsMtAppGetBDTOT5.AsDateTime := Fdm.FSBuddhistDateToDate(BDTOT5.DateTime);
    Fdm.CdsMtAppGetFDTOT5.AsDateTime := IncMonth(Fdm.CdsMtAppGetFDTOT5.AsDateTime, 12*544);
    BDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetBDTOT5.AsDateTime);
    FDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetFDTOT5.AsDateTime);
  end;

end;

procedure TfrmCsAppSaleCarData.BrkGetAddr(BRK : string);
begin
  Fsetupdm.CdsSTVm1GetAddr01.Close();
  Fsetupdm.StVm1GetAddr(BRK,'1');
  Fsetupdm.CdsSTVm1GetAddr01.Open();
  fdm.CdsMtAppGetTELBRK.AsString := Fsetupdm.CdsSTVm1GetAddr01TELVMA.AsString;
  Fsetupdm.CdsSTVm1GetAddr01.Close();

end;

procedure TfrmCsAppSaleCarData.GnoGetAddr(gno : int64);
begin
  Fdm.CdsMtCsmGetAddr02.Close();
  Fdm.MtCsmGetAddr(gno,'1');
  Fdm.CdsMtCsmGetAddr02.Open();

  fdm.CdsMtAppGetTELGNO.AsString := Fdm.CdsMtCsmGetAddr02TELCSM.AsString;
  Fdm.CdsMtCsmGetAddr02.Close();

end;

procedure TfrmCsAppSaleCarData.GnoSelected(CCNCSM:int64;TNMCSM:String);
begin
  Fdm.CdsMtAppGetGNOOT5.AsLargeInt := CCNCSM;
  Fdm.CdsMtAppGetTNMGNO.AsString := TNMCSM;

  GnoGetAddr(fdm.CdsMtAppGetGNOOT5.AsLargeInt);
end;

procedure TfrmCsAppSaleCarData.BrokerSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
begin
  Fdm.CdsMtAppGetBRKOT5.AsString := CNOvm1;
  Fdm.CdsMtAppGetTNMBRK.AsString := TNMvm1;
  BrkGetAddr(fdm.CdsMtAppGetBRKOT5.AsString);
end;


procedure TfrmCsAppSaleCarData.ShowAccessoryData;
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupAccessory).Create(UniApplication);
  TfrmPopupAccessory(_Form).Init(FDM,StrListaAccessory);
  if (Assigned(_Form)) then
  begin

    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;

    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmCsAppSaleCarData.BtnAccessoryAddClick(Sender: TObject);
var SeqNo : integer;
begin
  StrListaAccessory := TStringList.Create();

  fdm.CdsMtAppGetAccessory.First;
  while not fdm.CdsMtAppGetAccessory.eof do
  begin
     StrListaAccessory.Add(fdm.CdsMtAppGetAccessoryFSROT6.AsString);
     fdm.CdsMtAppGetAccessory.next;
  end;

  SeqNo := fdm.CdsMtAppGetAccessory.RecordCount + 1;

  fdm.CdsMtAppGetAccessory.Append();
  fdm.CdsMtAppGetAccessorySTSOT6.AsString := 'A';
  fdm.CdsMtAppGetAccessorySEQOT6.AsInteger := SeqNo;
  fdm.CdsMtAppGetAccessoryFQ1OT6.AsInteger := 1;
  fdm.CdsMtAppGetAccessoryFQ2OT6.AsInteger := 0;
  Fdm.CdsMtAppGetAccessorySTSOT6.Asstring  := Fdm.CdsMtAppGetSTSOT5.Asstring;
  Fdm.CdsMtAppGetAccessoryYAROT6.AsInteger := Fdm.CdsMtAppGetYAROT5.AsInteger;
  Fdm.CdsMtAppGetAccessoryCMPOT6.Asstring  :=  Fdm.CdsMtAppGetCMPOT5.Asstring;
  Fdm.CdsMtAppGetAccessoryBRNOT6.Asstring  := Fdm.CdsMtAppGetBRNOT5.Asstring;
  Fdm.CdsMtAppGetAccessoryDCDOT6.Asstring  := Fdm.CdsMtAppGetDCDOT5.Asstring;
  Fdm.CdsMtAppGetAccessoryDNOOT6.AsInteger := Fdm.CdsMtAppGetDNOOT5.AsInteger;
  ShowAccessoryData();

  StrListaAccessory.Free;


end;

procedure TfrmCsAppSaleCarData.InsuranceSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
begin
  if InsFlag = 1 then   // พ.ร.บ.
  begin
    Fdm.CdsMtAppGetICDOT5.AsString := CNOvm1;
    Fdm.CdsMtAppGetTNMICD.AsString := TNMvm1;
  end
  else  // ประกันชั้น 1
  begin
    Fdm.CdsMtAppGetISDOT5.AsString := CNOvm1;
    Fdm.CdsMtAppGetTNMISD.AsString := TNMvm1;
  end;
end;

procedure TfrmCsAppSaleCarData.INTOT5Exit(Sender: TObject);
begin
  checkCur(INTOT5,Fdm.CdsMtAppGet);

end;

procedure TfrmCsAppSaleCarData.INTOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    INTOT5Exit(INTOT5);
  end;

end;

procedure TfrmCsAppSaleCarData.ITSOT5Exit(Sender: TObject);
begin
  checkCur(ITSOT5,Fdm.CdsMtAppGet);

end;

procedure TfrmCsAppSaleCarData.ITSOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    ITSOT5Exit(ITSOT5);
  end;

end;

procedure TfrmCsAppSaleCarData.IVSOT5Exit(Sender: TObject);
begin
  checkCur(IVSOT5,Fdm.CdsMtAppGet);

end;

procedure TfrmCsAppSaleCarData.IVSOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    IVSOT5Exit(IVSOT5);
  end;

end;

procedure TfrmCsAppSaleCarData.NLEOT5Exit(Sender: TObject);
begin
  checkCur(NLEOT5,Fdm.CdsMtAppGet);
  NLEOT5.Text := FormatFloat('##0',Fdm.CdsMtAppGetNLEOT5.AsFloat) ;
  CalInstallmentAmt();
end;

procedure TfrmCsAppSaleCarData.NLEOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    NLEOT5Exit(NLEOT5);
  end;
end;

procedure TfrmCsAppSaleCarData.FinanceSelected(CNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String);
begin
    Fdm.CdsMtAppGetFCDOT5.AsString := CNOvm1;
    Fdm.CdsMtAppGetTNMFCD.AsString := TNMvm1;
end;

procedure TfrmCsAppSaleCarData.DDTOT5Change(Sender: TObject);
begin
  if Trim(DDTOT5.Text) = '' then
    Fdm.CdsMtAppGetDDTOT5.AsDateTime := 0
  else
   Fdm.CdsMtAppGetDDTOT5.AsDateTime :=
   Fdm.FSBuddhistDateToDate(DDTOT5.DateTime);

end;

procedure TfrmCsAppSaleCarData.DWTOT5Exit(Sender: TObject);
begin
  checkCur(DWTOT5,Fdm.CdsMtAppGet);
  CalInstallmentAmt();
end;

procedure TfrmCsAppSaleCarData.DWTOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    DWTOT5Exit(DWTOT5);
  end;

end;

procedure TfrmCsAppSaleCarData.EPDOT5Change(Sender: TObject);
begin
  if Trim(EPDOT5.Text) = '' then
    Fdm.CdsMtAppGetEPDOT5.AsDateTime := 0
  else
  begin
   Fdm.CdsMtAppGetEPDOT5.AsDateTime :=
     Fdm.FSBuddhistDateToDate(EPDOT5.DateTime);
  end;

end;

procedure TfrmCsAppSaleCarData.EXDOT5Change(Sender: TObject);
begin
  if Trim(EXDOT5.Text) = '' then
    Fdm.CdsMtAppGetEXDOT5.AsDateTime := 0
  else
  begin
   Fdm.CdsMtAppGetEXDOT5.AsDateTime :=
     Fdm.FSBuddhistDateToDate(EXDOT5.DateTime);
  end;

end;

procedure TfrmCsAppSaleCarData.ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsMtAppGetPRDOT5.AsString := ITNPM1;
  Fdm.CdsMtAppGetTNMPM1.AsString := TNMPM1;
  Fdm.CdsMtAppGetUP1OT5.AsFloat := UP1PM1;
  Fdm.CdsMtAppGetNETOT5.AsFloat := UP1PM1;
  Fdm.CdsMtAppGetFAMPM1.AsFloat := FAMPM1;

  fdm.CdsMtAppGetTAXOT5.AsFloat := fdm.CdsMtAppGetUP1OT5.AsFloat *
    FDM.GetPercentVAT/(100.00 + FDM.GetPercentVAT);

  CalculatAmt();
  ShowEdtAmtAndDate();

  FSetupdm.CdsStPm1GetImage.Close();
  FSetupdm.StPm1GetImage(fdm.CdsMtAppGetPRDOT5.AsString);
  FSetupdm.CdsStPm1GetImage.Open();
  GetImage();

  Fdm.CdsMtAppGetSEROT5.AsString := '';
  Fdm.CdsMtAppGetENGOT5.AsString := '';
  Fdm.CdsMtAppGetCOLOT5.AsString := '';
  Fdm.CdsMtAppGetWHSOT5.AsString := '';

end;

procedure TfrmCsAppSaleCarData.PDAOT5Enter(Sender: TObject);
begin
  checkCur(PDAOT5,fdm.CdsMtAppGet);
  if fdm.CdsMtAppGetPDAOT5.AsFloat = 0.00 then
     fdm.CdsMtAppGetPDCOT5.AsFloat := 0.00
  else
    fdm.CdsMtAppGetPDCOT5.AsFloat := fdm.CdsMtAppGetPDAOT5.AsFloat *100.00/fdm.CdsMtAppGetUP1OT5.AsFloaT;

  PDCOT5.Text := FormatFloat('#,##0.00',fdm.CdsMtAppGetPDCOT5.AsFloat);
  CalculatAmt();

end;

procedure TfrmCsAppSaleCarData.PDAOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    PDAOT5Enter(PDAOT5);
  end;


end;

procedure TfrmCsAppSaleCarData.PDCOT5Exit(Sender: TObject);
begin
  checkCur(PDCOT5,fdm.CdsMtAppGet);
  fdm.CdsMtAppGetPDAOT5.AsFloat := fdm.CdsMtAppGetUP1OT5.AsFloat * fdm.CdsMtAppGetPDCOT5.AsFloat/100;
  PDAOT5.Text := FormatFloat('#,##0.00',fdm.CdsMtAppGetPDAOT5.AsFloat);
  CalculatAmt();
end;

procedure TfrmCsAppSaleCarData.PDCOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    PDCOT5Exit(PDCOT5);
  end;


end;

procedure TfrmCsAppSaleCarData.PgCarsaleChange(Sender: TObject);
begin
  if PgCarsale.ActivePage = TabEXP then
  begin
    if not fdm.CdsMtAppGetEXP.Active then
    begin
      fdm.CdsMtAppGetEXP.Close();
      fdm.MtAppGetExp(fdm.CdsMtAppGetYAROT5.AsInteger,fdm.CdsMtAppGetCMPOT5.AsString,
               fdm.CdsMtAppGetBRNOT5.AsString,fdm.CdsMtAppGetDCDOT5.AsString,
               fdm.CdsMtAppGetDNOOT5.AsLargeInt);
      fdm.CdsMtAppGetEXP.Open();
    end;
  end
  ELSE if PgCarsale.ActivePage = TabAccessory then
  begin
    if not fdm.CdsMtAppGetAccessory.Active then
    begin
      fdm.CdsMtAppGetAccessory.Close();
      fdm.MtAppGetAccessory(fdm.CdsMtAppGetYAROT5.AsInteger,fdm.CdsMtAppGetCMPOT5.AsString,
               fdm.CdsMtAppGetBRNOT5.AsString,fdm.CdsMtAppGetDCDOT5.AsString,
               fdm.CdsMtAppGetDNOOT5.AsInteger);
      fdm.CdsMtAppGetAccessory.Open();
    end;
  end
  ELSE if PgCarsale.ActivePage = TabCard then
  begin
    if not fdm.CdsMtAppGetCard.Active then
    begin
      fdm.CdsMtAppGetCard.Close();
      fdm.MtAppGetCard(fdm.CdsMtAppGetYAROT5.AsInteger,fdm.CdsMtAppGetCMPOT5.AsString,
               fdm.CdsMtAppGetBRNOT5.AsString,fdm.CdsMtAppGetDCDOT5.AsString,
               fdm.CdsMtAppGetDNOOT5.AsInteger,fdm.CdsMtAppGetCNOOT5.AsLargeInt);
      fdm.CdsMtAppGetCard.Open();
    end;
  end
  ELSE if PgCarsale.ActivePage = TabCondition then
  begin
    if not fdm.CdsMtAppGetDown.Active then
    begin
      fdm.CdsMtAppGetDown.Close();
      fdm.MtAppGetDown(fdm.CdsMtAppGetYAROT5.AsInteger,fdm.CdsMtAppGetCMPOT5.AsString,
               fdm.CdsMtAppGetBRNOT5.AsString,fdm.CdsMtAppGetDCDOT5.AsString,
               fdm.CdsMtAppGetDNOOT5.AsInteger);
      fdm.CdsMtAppGetDown.Open();
    end;
  end;

    LbFCDOT5.Visible := (fdm.CdsMtAppGetSTPOT5.AsString = 'F');
    FCDOT5.Visible := (fdm.CdsMtAppGetSTPOT5.AsString = 'F');
    LbTNMFCD.Visible := (fdm.CdsMtAppGetSTPOT5.AsString = 'F');
    TNMFCD.Visible := (fdm.CdsMtAppGetSTPOT5.AsString = 'F');

end;

procedure TfrmCsAppSaleCarData.ProductIm1Selected(SERIM1,ENGIM1,COLIM1,WHSIM1,TNMWHS,_DNOYM1: String;_IDTYM1:Double);
begin

  Fdm.CdsMtAppGetSEROT5.AsString := SERIM1;
  Fdm.CdsMtAppGetENGOT5.AsString := ENGIM1;
  Fdm.CdsMtAppGetCOLOT5.AsString := COLIM1;
  Fdm.CdsMtAppGetWHSOT5.AsString := WHSIM1;
  Fdm.CdsMtAppGetTNMWHS.AsString := TNMWHS;


  Fdm.CdsMtAppGetDNOYM1.AsString := _DNOYM1;
  Fdm.CdsMtAppGetIDTYM1.AsFloat := _IDTYM1;

  IDTYM1.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetIDTYM1.AsDateTime);

end;

procedure TfrmCsAppSaleCarData.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกสินค้า',fdm.CdsMtAppGetSRSPM1.AsString);

    OnSelectData := ProductSelected;
    ShowModal();
  end;

end;

procedure TfrmCsAppSaleCarData.ShowEXPData;
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupExp).Create(UniApplication);
  TfrmPopupExp(_Form).Init(FDM,StrListEXP);
  if (Assigned(_Form)) then
  begin

    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;

    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmCsAppSaleCarData.SRSPM1CloseUp(Sender: TObject);
begin
  MNMPM1.ListSource := Fdm.GetDSC('S'+ Fdm.CdsMtAppGetSRSPM1.AsString); //แบบ
end;

procedure TfrmCsAppSaleCarData.ShowDownData;
var
  _Form: TUniForm;
begin

  _Form := TUniFormClass(TfrmPopupDown).Create(UniApplication);
  TfrmPopupDown(_Form).Init(FDM,StrListDown);
  if (Assigned(_Form)) then
  begin

    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;

    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmCsAppSaleCarData.BtnDownAddClick(Sender: TObject);
var SeqNo : integer;
begin
  if not Fdm.CdsMtAppGetDown.Active then
  begin
    fdm.MtAppGetDown(fdm.CdsMtAppGetYAROT5.AsInteger,fdm.CdsMtAppGetCMPOT5.AsString,
               fdm.CdsMtAppGetBRNOT5.AsString,fdm.CdsMtAppGetDCDOT5.AsString,
               fdm.CdsMtAppGetDNOOT5.AsInteger);
    fdm.CdsMtAppGetDown.Open();
  end;

  StrListDown := TStringList.Create();

  fdm.CdsMtAppGetDown.First;
  while not fdm.CdsMtAppGetDown.eof do
  begin
     StrListDown.Add(fdm.CdsMtAppGetDownPPDOM7.AsString);
     fdm.CdsMtAppGetDown.next;
  end;

  SeqNo := fdm.CdsMtAppGetDown.RecordCount + 1;

  fdm.CdsMtAppGetDown.Append();
  fdm.CdsMtAppGetDownSEQOM7.AsInteger := SeqNo;
  fdm.CdsMtAppGetDownPPDOM7.AsString := IntToStr(SeqNo);
  fdm.CdsMtAppGetDownPTPOM7.AsString := 'CH';
  Fdm.CdsMtAppGetDownSTSOM7.Asstring  := Fdm.CdsMtAppGetSTSOT5.Asstring;
  Fdm.CdsMtAppGetDownYAROM7.AsInteger := Fdm.CdsMtAppGetYAROT5.AsInteger;
  Fdm.CdsMtAppGetDownCMPOM7.Asstring  :=  Fdm.CdsMtAppGetCMPOT5.Asstring;
  Fdm.CdsMtAppGetDownBRNOM7.Asstring  := Fdm.CdsMtAppGetBRNOT5.Asstring;
  Fdm.CdsMtAppGetDownDCDOM7.Asstring  := Fdm.CdsMtAppGetDCDOT5.Asstring;
  Fdm.CdsMtAppGetDownDNOOM7.AsInteger := Fdm.CdsMtAppGetDNOOT5.AsInteger;
  ShowDownData();

  StrListDown.Free;


end;

procedure TfrmCsAppSaleCarData.BtnExpAddClick(Sender: TObject);
var SeqNo : integer;
begin
  StrListEXP := TStringList.Create();

  fdm.CdsMtAppGetEXP.First;
  while not fdm.CdsMtAppGetEXP.eof do
  begin
     StrListEXP.Add(fdm.CdsMtAppGetEXPCDCEXP.AsString);
     fdm.CdsMtAppGetEXP.next;
  end;

  SeqNo := fdm.CdsMtAppGetEXP.RecordCount + 1;

  fdm.CdsMtAppGetEXP.Append();
  fdm.CdsMtAppGetEXPSTSEXP.AsString := 'A';
  fdm.CdsMtAppGetEXPSEQEXP.AsInteger := SeqNo;

  Fdm.CdsMtAppGetEXPSTSEXP.Asstring  := Fdm.CdsMtAppGetSTSOT5.Asstring;
  Fdm.CdsMtAppGetEXPYAREXP.AsInteger := Fdm.CdsMtAppGetYAROT5.AsInteger;
  Fdm.CdsMtAppGetEXPCMPEXP.Asstring  :=  Fdm.CdsMtAppGetCMPOT5.Asstring;
  Fdm.CdsMtAppGetEXPBRNEXP.Asstring  := Fdm.CdsMtAppGetBRNOT5.Asstring;
  Fdm.CdsMtAppGetEXPDCDEXP.Asstring  := Fdm.CdsMtAppGetDCDOT5.Asstring;
  Fdm.CdsMtAppGetEXPDNOEXP.AsInteger := Fdm.CdsMtAppGetDNOOT5.AsInteger;

  ShowEXPData();

  StrList.Free;

end;

procedure TfrmCsAppSaleCarData.BtnExpEditClick(Sender: TObject);
begin
   if (not Fdm.CdsMtAppGetEXP.Active) or
    (Fdm.CdsMtAppGetEXP.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;


  fdm.CdsMtAppGetEXP.Edit();

  ShowEXPData();


end;

procedure TfrmCsAppSaleCarData.BtnExpViewClick(Sender: TObject);
begin
   if (not Fdm.CdsMtAppGetEXP.Active) or
    (Fdm.CdsMtAppGetEXP.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowEXPData();


end;

procedure TfrmCsAppSaleCarData.BtnSelectBrokerClick(Sender: TObject);
begin
  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกโบรกเกอร์', Fdm.CMPUser,Fdm.BRNUser);

    OnSelectData := BrokerSelected;
    ShowModal();
  end;


end;

procedure TfrmCsAppSaleCarData.BtnSelectcnoClick(Sender: TObject);
begin
  if fdm.CdsMtAppGetBRNOT5.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupCsm.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกลูกค้้า', Fdm.CMPUser,Fdm.BRNUser,'C');

    OnSelectData := CustomerSelected;
    ShowModal();
  end;

end;

procedure TfrmCsAppSaleCarData.BtnSelectFinanceClick(Sender: TObject);
begin
  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกบริษัทไฟแนนซ์', Fdm.CMPUser,Fdm.BRNUser);

    OnSelectData := FinanceSelected;
    ShowModal();
  end;


end;

procedure TfrmCsAppSaleCarData.BtnSelectICDClick(Sender: TObject);
begin
  InsFlag := 1;
  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกบริษัทประกัน', Fdm.CMPUser,Fdm.BRNUser);

    OnSelectData := InsuranceSelected;
    ShowModal();
  end;


end;

procedure TfrmCsAppSaleCarData.BtnSelectIM1Click(Sender: TObject);
var col : string;
begin
  if fdm.CdsMtAppGetPRDOT5.AsString = '' then
  begin
    ShowMessage('กรุณาเลือกสินค้าก่อน');
    exit;
  end;

  if fdm.CdsMtAppGetCOLOT5.AsString = '' then
    col := 'ALL'
  else
    col := fdm.CdsMtAppGetCOLOT5.AsString;

  with TfrmPopupProductIM1.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกสินค้า',fdm.CdsMtAppGetPRDOT5.AsString,col);

    OnSelectData := ProductIm1Selected;
    ShowModal();
  end;


end;

procedure TfrmCsAppSaleCarData.BtnSelectISDClick(Sender: TObject);
begin
  InsFlag := 2;
  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกบริษัทประกัน', Fdm.CMPUser,Fdm.BRNUser);

    OnSelectData := InsuranceSelected;
    ShowModal();
  end;


end;

procedure TfrmCsAppSaleCarData.IDTOT5Change(Sender: TObject);
begin
  if Trim(IDTOT5.Text) = '' then
    Fdm.CdsMtAppGetIDTOT5.AsDateTime := 0
  else
  begin
   Fdm.CdsMtAppGetIDTOT5.AsDateTime :=
     Fdm.FSBuddhistDateToDate(IDTOT5.DateTime);
     ddyyyy.Text := copy(IDTOT5.Text,4,7);
  end;

end;

procedure TfrmCsAppSaleCarData.Init(xDM : TDSCarsaleDM);
begin
    Fdm := xDM;

    FUserSession :=  UniMainModule();
    FSetupdm:= FUsersession.DSSetupDM;

   dsgrid.DataSet := Fdm.CdsMtAppGet;
   dsAccessory.DataSet := Fdm.CdsMtAppGetAccessory;
   dsCard.DataSet := Fdm.CdsMtAppGetCard;
   dsEXP.DataSet := Fdm.CdsMtAppGetEXP;
   dsDown.DataSet := Fdm.CdsMtAppGetDown;

   dsAddr01.DataSet := Fdm.CdsMtCsmGetAddr01;
   dsImageRef.DataSet := FSetupdm.CdsStPm1GetImage;

   STSOT5.ListSource := Fdm.GetDSC('STS');
   BRNOT5.ListSource := Fdm.GetDSC('BRN');//สาขา
   DEPOT5.ListSource := Fdm.GetDSC('DP'); //แผนก
   CTYOT5.ListSource := Fdm.GetDSC('TY'); // ประเภทลูกค้า
   CHGCSM.ListSource := Fdm.GetDSC('AC');//จังหวัด
   SRSPM1.ListSource := Fdm.GetDSC('IF'); //รุ่นรถ
   COLOT5.ListSource := Fdm.GetDSC('IC'); //สี
   USEOT5.ListSource := Fdm.GetDSC('USE'); //สภาพรถ
   SMNOT5.ListSource := Fdm.GetDSC('SM'); //พนักงานขาย
   PSTOT5.ListSource := Fdm.GetDSC('CP'); // ผู้มาติดต่อ
   USEOT5.ListSource := Fdm.GetDSC('USE'); // ประเภทรถใหม่ เก่า
//   WHSOT5.ListSource := Fdm.GetDSC('WH'); //คลังสินค้า
   STPOT5.ListSource := Fdm.GetDSC('STP'); // ประเภทการขาย
   ESDOT5.ListSource := Fdm.GetDSC('ESD'); // ชำระทุก ๆวันที่

   PSROT5.ListSource := Fdm.GetDSC('PSR'); //ผู้รับแจ้ง
   EPSOT5.ListSource := Fdm.GetDSC('OP'); //เจ้าหน้าที่ผู้ส่งมอบ

   STSOT5.ReadOnly := True;
   CHGCSM.ReadOnly := True;

     FSetupdm.CdsStPm1GetImage.Close();
     FSetupdm.StPm1GetImage(fdm.CdsMtAppGetPRDOT5.AsString);
     FSetupdm.CdsStPm1GetImage.Open();

  if (fdm.CdsMtAppGet.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

    IDTOT5.Text := FDM.FSBuddhistDateToStr(fDM.CdsMtAppGetIDTOT5.AsDateTime);
    DDTOT5.Text := '';

    RATOT5.Text := '0.00';

    ddyyyy.Text := copy(IDTOT5.Text,4,7);
    ShowEdtAmtAndDate();
  end
  else if (fdm.CdsMtAppGet.State in [dsEdit]) then
  begin
     MNMPM1.ListSource := Fdm.GetDSC('S'+ Fdm.CdsMtAppGetSRSPM1.AsString); //แบบ
     CMPOT5.ReadOnly := True;
     BRNOT5.ReadOnly := True;
//     DNOOT5.ReadOnly := True;

     ShowEdtAmtAndDate();

     GetImage();
     GetAddr(fdm.CdsMtAppGetCNOOT5.AsLargeInt);
     GetCard(fdm.CdsMtAppGetCNOOT5.AsLargeInt);
  end
  else
  begin
     if (App_Appr = 'APPLICATION') then
     begin
       MNMPM1.ListSource := Fdm.GetDSC('S'+ Fdm.CdsMtAppGetSRSPM1.AsString); //แบบ
       btnConfirm.Visible := False;
       BtnSelectcno.Enabled := False;
       BtnSelectProduct.Enabled := False;

       ShowEdtAmtAndDate();

       GetImage();
       GetAddr(fdm.CdsMtAppGetCNOOT5.AsLargeInt);
       GetCard(fdm.CdsMtAppGetCNOOT5.AsLargeInt);
       RSetReadOnly();
     end;
  end;

  RSetColorReadOnly();

end;


procedure TfrmCsAppSaleCarData.CalInstallmentAmt();
var PRINET, PRIVAT,
  DOWNET, DOWVAT,
  FINNET,
  RAT   ,
  CALNET1,
  CALNET ,
  INTBETNET,INTBETVAT,INTBETTOTAL,
  INTAFTNET,INTAFTVAT,INTAFTTOTAL,
  HPNET ,HPVAT,HPTOTAL,
  DEFNET : Double;
  PERIOD : INTEGER;
begin
  PRIVAT := RoundTo(fdm.CdsMtAppGetPPYOT5.AsFloat * fdm.GetPercentVAT/(100.00 + fdm.GetPercentVAT),-2);
  PRINET := Fdm.CdsMtAppGetPPYOT5.AsFloat - PRIVAT;

  DOWVAT := RoundTo(fdm.CdsMtAppGetDWTOT5.AsFloat * fdm.GetPercentVAT/(100.00 + fdm.GetPercentVAT),-2);
  DOWNET := Fdm.CdsMtAppGetDWTOT5.AsFloat - DOWVAT;

  FINNET := (fdm.CdsMtAppGetPPYOT5.AsFloat - Fdm.CdsMtAppGetDWTOT5.AsFloat) - (PRIVAT - DOWVAT);
  RAT := FDM.CdsMtAppGetRATOT5.AsFloat;
  PERIOD := FDM.CdsMtAppGetNLEOT5.AsInteger;

  CALNET1 := RoundTo(FINNET * RAT * PERIOD / 1200.00,-2);
  CALNET :=  FINNET + CALNET1;

  INTBETNET := RoundTo(CALNET/PERIOD,-2);
  INTBETVAT := RoundTo(INTBETNET*(fdm.GetPercentVAT/100.00),-2);
  INTBETTOTAL := INTBETNET+INTBETVAT;

  INTAFTTOTAL := Trunc(INTBETTOTAL+0.9999);
  INTAFTVAT := RoundTo(INTAFTTOTAL*(fdm.GetPercentVAT/(100 + fdm.GetPercentVAT)),-2);
  INTAFTNET := INTAFTTOTAL-INTAFTVAT;

  HPTOTAL := INTAFTTOTAL * PERIOD;
  HPVAT := INTAFTVAT * PERIOD;
  HPNET := HPTOTAL - HPVAT;

  DEFNET := HPNET - FINNET;

  Fdm.CdsMtAppGetPMMOT5.AsFloat :=  INTAFTTOTAL;

  PMMOT5.Text :=  FormatFloat('#,##0.00',Fdm.CdsMtAppGetPMMOT5.AsFloat);

  SUMOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetSUMOT5.AsFloat);
  HPOT5.Text := FormatFloat('#,##0.00',Fdm.CdsMtAppGetHPOT5.AsFloat);
end;

procedure TfrmCsAppSaleCarData.RATOT5Exit(Sender: TObject);
begin
  checkCur(RATOT5,Fdm.CdsMtAppGet);
  CalInstallmentAmt();
end;

procedure TfrmCsAppSaleCarData.RATOT5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    RATOT5Exit(RATOT5);
  end;

end;

procedure TfrmCsAppSaleCarData.RDTOT5Change(Sender: TObject);
begin
  if Trim(RDTOT5.Text) = '' then
    Fdm.CdsMtAppGetRDTOT5.AsDateTime := 0
  else
   Fdm.CdsMtAppGetRDTOT5.AsDateTime :=
   Fdm.FSBuddhistDateToDate(RDTOT5.DateTime);

end;

procedure TfrmCsAppSaleCarData.RPDOT5Change(Sender: TObject);
begin
  if Trim(RPDOT5.Text) = '' then
    Fdm.CdsMtAppGetRPDOT5.AsDateTime := 0
  else
   Fdm.CdsMtAppGetRPDOT5.AsDateTime :=
   Fdm.FSBuddhistDateToDate(RPDOT5.DateTime);

end;

procedure TfrmCsAppSaleCarData.RSDOT5Change(Sender: TObject);
begin
  if Trim(RSDOT5.Text) = '' then
    Fdm.CdsMtAppGetRSDOT5.AsDateTime := 0
  else
   Fdm.CdsMtAppGetRSDOT5.AsDateTime :=
   Fdm.FSBuddhistDateToDate(RSDOT5.DateTime);

end;

end.
