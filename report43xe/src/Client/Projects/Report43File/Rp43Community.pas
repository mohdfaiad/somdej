unit Rp43Community;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainDataFormClass, uniGUIClasses,
  uniScreenMask, uniButton, Vcl.Imaging.GIFImg, uniImage,
  uniGUIBaseClasses, uniPanel, uniPageControl, uniMultiItem, uniComboBox,
  uniDBEdit, uniLabel, uniEdit, uniBasicGrid, uniDBGrid, uniBitBtn, Data.DB,DS43FileIntfDM,MainModuleEx,
  uniTimer, uniDateTimePicker, uniDBDateTimePicker, uniDBComboBox,System.StrUtils;

type
  TfrmRp43Community = class(TMainDataForm)
    btnRefresh: TUniButton;
    edSearchCID: TUniEdit;
    UniButton1: TUniButton;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel10: TUniLabel;
    cmbPersonSEX: TUniComboBox;
    UniLabel7: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniLabel9: TUniLabel;
    btnSync: TUniButton;
    UniPanel2: TUniPanel;
    UniPageControl1: TUniPageControl;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    UniTabSheet6: TUniTabSheet;
    UniTabSheet7: TUniTabSheet;
    UniTabSheet8: TUniTabSheet;
    UniLabel205: TUniLabel;
    UniLabel206: TUniLabel;
    UniLabel207: TUniLabel;
    UniLabel209: TUniLabel;
    UniLabel210: TUniLabel;
    UniLabel212: TUniLabel;
    UniLabel214: TUniLabel;
    UniDBEdit149: TUniDBEdit;
    cmbHomeLOCATYPE: TUniComboBox;
    cmbHomeHOUSETYPE: TUniComboBox;
    UniDBEdit150: TUniDBEdit;
    UniDBEdit151: TUniDBEdit;
    UniDBEdit152: TUniDBEdit;
    UniDBEdit153: TUniDBEdit;
    UniLabel215: TUniLabel;
    UniLabel216: TUniLabel;
    UniDBEdit154: TUniDBEdit;
    UniDBEdit155: TUniDBEdit;
    UniLabel218: TUniLabel;
    UniLabel219: TUniLabel;
    UniDBEdit156: TUniDBEdit;
    UniDBEdit157: TUniDBEdit;
    UniLabel220: TUniLabel;
    UniDBEdit158: TUniDBEdit;
    UniLabel221: TUniLabel;
    cmbHomeTAMBON: TUniComboBox;
    UniLabel224: TUniLabel;
    cmbHomeAMPUR: TUniComboBox;
    UniLabel249: TUniLabel;
    cmbHomeCHANGWAT: TUniComboBox;
    UniDBEdit159: TUniDBEdit;
    UniLabel250: TUniLabel;
    UniLabel251: TUniLabel;
    UniDBEdit160: TUniDBEdit;
    UniDBEdit161: TUniDBEdit;
    UniLabel252: TUniLabel;
    UniLabel253: TUniLabel;
    UniDBEdit162: TUniDBEdit;
    UniLabel254: TUniLabel;
    UniLabel255: TUniLabel;
    UniDBEdit164: TUniDBEdit;
    UniDBEdit165: TUniDBEdit;
    UniLabel256: TUniLabel;
    UniLabel257: TUniLabel;
    cmbHomeTOILET: TUniComboBox;
    UniLabel258: TUniLabel;
    cmbHomeWATER: TUniComboBox;
    UniLabel259: TUniLabel;
    cmbHomeWATERTYPE: TUniComboBox;
    UniLabel269: TUniLabel;
    UniLabel270: TUniLabel;
    UniDBEdit167: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    cmbServiceTYPEIN: TUniComboBox;
    cmbServiceINSTYPE: TUniComboBox;
    cmbServiceCAUSEIN: TUniComboBox;
    cmbServiceMAIN: TUniComboBox;
    cmbServiceREFERINHOSP: TUniComboBox;
    UniDBEdit18: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    UniLabel31: TUniLabel;
    UniLabel32: TUniLabel;
    UniLabel33: TUniLabel;
    CmbINTIME: TUniComboBox;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    UniDBEdit19: TUniDBEdit;
    UniLabel36: TUniLabel;
    CmbLOCATION: TUniComboBox;
    UniLabel37: TUniLabel;
    UniLabel38: TUniLabel;
    UniLabel39: TUniLabel;
    UniLabel40: TUniLabel;
    UniDBEdit21: TUniDBEdit;
    UniLabel41: TUniLabel;
    CmbTYPEOUT: TUniComboBox;
    UniLabel42: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    UniLabel43: TUniLabel;
    UniDBEdit24: TUniDBEdit;
    UniDBEdit25: TUniDBEdit;
    UniLabel44: TUniLabel;
    UniLabel45: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniLabel46: TUniLabel;
    UniLabel47: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    cmbServiceSERVPLACE: TUniComboBox;
    cmbServiceREFEROUTHOSP: TUniComboBox;
    UniDBEdit27: TUniDBEdit;
    UniDBEdit28: TUniDBEdit;
    UniDBEdit30: TUniDBEdit;
    cmbServiceCAUSEOUT: TUniComboBox;
    btnAddNewLabor: TUniButton;
    UniButton4: TUniButton;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBGrid3: TUniDBGrid;
    UniPanel5: TUniPanel;
    UniLabel52: TUniLabel;
    SEQ: TUniDBEdit;
    UniLabel53: TUniLabel;
    UniLabel54: TUniLabel;
    UniLabel55: TUniLabel;
    UniLabel56: TUniLabel;
    UniLabel57: TUniLabel;
    PROVIDER: TUniDBEdit;
    cmbDiagOpdDIAGTYPE: TUniComboBox;
    cmbDiagOpdClinic: TUniComboBox;
    cmbDiagOpdDIAGCODE: TUniComboBox;
    UniDBGrid4: TUniDBGrid;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    DATE_SERV: TUniDBDateTimePicker;
    UniPanel9: TUniPanel;
    UniLabel176: TUniLabel;
    UniDBEdit125: TUniDBEdit;
    UniLabel177: TUniLabel;
    UniLabel178: TUniLabel;
    UniLabel179: TUniLabel;
    UniLabel180: TUniLabel;
    UniLabel181: TUniLabel;
    UniDBEdit127: TUniDBEdit;
    cmbSpecialPpPPSPLACE: TUniComboBox;
    cmbSpecialPpSERVPLACE: TUniComboBox;
    PPSPECIAL: TUniComboBox;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    UniDBGrid8: TUniDBGrid;
    UniDBEdit126: TUniDBDateTimePicker;
    UniTabSheet9: TUniTabSheet;
    UniLabel132: TUniLabel;
    UniDBEdit81: TUniDBEdit;
    UniDBEdit85: TUniDBDateTimePicker;
    UniDBGrid5: TUniDBGrid;
    UniLabel138: TUniLabel;
    UniLabel139: TUniLabel;
    UniDBEdit91: TUniDBEdit;
    btnAddNewEPI: TUniButton;
    cmbEpiVACCINETYPE: TUniComboBox;
    cmbEpiVACCINEPLACE: TUniComboBox;
    UniTabSheet10: TUniTabSheet;
    UniPanel3: TUniPanel;
    UniTimerRefresh: TUniTimer;
    scRefresh: TUniScreenMask;
    UniTimerAutoGet: TUniTimer;
    UniScreenMask1: TUniScreenMask;
    UniScreenMask2: TUniScreenMask;
    UniScreenMask3: TUniScreenMask;
    UniScreenMask4: TUniScreenMask;
    VID: TUniDBEdit;
    NTRADITIONAL: TUniDBEdit;
    NMONK: TUniDBEdit;
    NRELIGIONLEADER: TUniDBEdit;
    NBROADCAST: TUniDBEdit;
    NRADIO: TUniDBEdit;
    NPCHC: TUniDBEdit;
    NCLINIC: TUniDBEdit;
    NCHILDCENTER: TUniDBEdit;
    NDRUGSTORE: TUniDBEdit;
    NPSCHOOL: TUniDBEdit;
    NSSCHOOL: TUniDBEdit;
    NTEMPLE: TUniDBEdit;
    NRELIGIOUSPLACE: TUniDBEdit;
    NMARKET: TUniDBEdit;
    NSHOP: TUniDBEdit;
    NFOODSHOP: TUniDBEdit;
    NSTALL: TUniDBEdit;
    NRAINTANK: TUniDBEdit;
    NCHICKENFARM: TUniDBEdit;
    NPIGFARM: TUniDBEdit;
    WASTEWATER: TUniComboBox;
    GARBAGE: TUniComboBox;
    NFACTORY: TUniDBEdit;
    LATITUDE: TUniDBEdit;
    LONGITUDE: TUniDBEdit;
    OUTDATE: TUniDBDateTimePicker;
    NUMACTUALLY: TUniDBEdit;
    RISKTYPE: TUniDBEdit;
    NUMSTATELESS: TUniDBEdit;
    NEXERCISECLUB: TUniDBEdit;
    NOLDERLYCLUB: TUniDBEdit;
    NDISABLECLUB: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel58: TUniLabel;
    UniLabel59: TUniLabel;
    UniLabel60: TUniLabel;
    UniLabel61: TUniLabel;
    UniLabel62: TUniLabel;
    UniLabel63: TUniLabel;
    dsGetReport43HomeList: TDataSource;
    dsGetreport43VillageList: TDataSource;
    dsGetReport43Community_ActivityList: TDataSource;
    dsGetRport43Community_ServiceList: TDataSource;
    dsGetReport43DentalList: TDataSource;
    UniLabel18: TUniLabel;
    NNUMBERONECLUB: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniLabel30: TUniLabel;
    UniLabel48: TUniLabel;
    UniLabel49: TUniLabel;
    UniLabel50: TUniLabel;
    dsGetReport43EpiList: TDataSource;
    dsGetReport43SpecialPpList: TDataSource;
    dsGetReport43DiagnosisOpdList: TDataSource;
    dsReport43ServiceList: TDataSource;
    UniLabel260: TUniLabel;
    cmbHomeGARBAGE: TUniComboBox;
    UniLabel261: TUniLabel;
    cmbHomeHOUSING: TUniComboBox;
    UniLabel262: TUniLabel;
    cmbHomeDURABILITY: TUniComboBox;
    UniLabel263: TUniLabel;
    cmbHomeCLEANLINESS: TUniComboBox;
    UniLabel208: TUniLabel;
    cmbHomeVENTILATION: TUniComboBox;
    UniLabel213: TUniLabel;
    cmbHomeLIGHT: TUniComboBox;
    UniLabel264: TUniLabel;
    cmbHomeWATERTM: TUniComboBox;
    UniLabel265: TUniLabel;
    cmbHomeMFOOD: TUniComboBox;
    UniLabel266: TUniLabel;
    cmbHomeBCONTROL: TUniComboBox;
    UniLabel267: TUniLabel;
    cmbHomeACONTROL: TUniComboBox;
    UniLabel268: TUniLabel;
    cmbHomeCHEMICAL: TUniComboBox;
    UniDBEdit163: TUniDBDateTimePicker;
    UniLabel83: TUniLabel;
    UniDBEdit166: TUniDBDateTimePicker;
    UniLabel84: TUniLabel;
    UniPanel4: TUniPanel;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniComboBox;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit29: TUniComboBox;
    UniDBEdit32: TUniDBEdit;
    UniDBEdit35: TUniDBEdit;
    UniDBEdit36: TUniComboBox;
    UniDBEdit37: TUniDBEdit;
    UniDBEdit38: TUniDBEdit;
    UniDBEdit39: TUniComboBox;
    UniDBEdit40: TUniDBEdit;
    UniDBEdit41: TUniDBEdit;
    UniDBEdit42: TUniDBEdit;
    UniDBEdit43: TUniComboBox;
    UniDBEdit47: TUniDBDateTimePicker;
    UniDBEdit48: TUniDBEdit;
    UniDBEdit49: TUniDBEdit;
    UniDBEdit50: TUniDBEdit;
    UniDBEdit51: TUniComboBox;
    UniDBEdit52: TUniDBEdit;
    UniDBEdit53: TUniComboBox;
    UniDBEdit54: TUniDBEdit;
    UniDBEdit55: TUniComboBox;
    UniLabel73: TUniLabel;
    UniLabel74: TUniLabel;
    UniLabel75: TUniLabel;
    UniLabel76: TUniLabel;
    UniLabel77: TUniLabel;
    UniLabel78: TUniLabel;
    UniLabel79: TUniLabel;
    UniLabel80: TUniLabel;
    UniLabel81: TUniLabel;
    UniLabel82: TUniLabel;
    UniLabel85: TUniLabel;
    UniLabel86: TUniLabel;
    UniLabel87: TUniLabel;
    UniLabel88: TUniLabel;
    UniLabel89: TUniLabel;
    UniLabel90: TUniLabel;
    UniLabel91: TUniLabel;
    UniLabel92: TUniLabel;
    UniLabel93: TUniLabel;
    UniLabel97: TUniLabel;
    UniLabel98: TUniLabel;
    UniLabel99: TUniLabel;
    UniLabel100: TUniLabel;
    UniLabel101: TUniLabel;
    UniLabel102: TUniLabel;
    UniLabel103: TUniLabel;
    UniLabel104: TUniLabel;
    UniLabel105: TUniLabel;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniDBGrid2: TUniDBGrid;
    UniPanel6: TUniPanel;
    UniDBEdit56: TUniDBEdit;
    UniDBEdit57: TUniDBDateTimePicker;
    UniDBEdit58: TUniDBEdit;
    UniDBEdit59: TUniDBEdit;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel68: TUniLabel;
    UniLabel69: TUniLabel;
    UniLabel70: TUniLabel;
    UniLabel71: TUniLabel;
    UniLabel72: TUniLabel;
    UniDBGrid6: TUniDBGrid;
    UniPanel7: TUniPanel;
    UniDBEdit92: TUniDBEdit;
    UniDBEdit104: TUniDBDateTimePicker;
    UniDBEdit105: TUniDBEdit;
    UniDBEdit116: TUniDBDateTimePicker;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel51: TUniLabel;
    UniLabel64: TUniLabel;
    UniLabel65: TUniLabel;
    UniLabel66: TUniLabel;
    UniLabel67: TUniLabel;
    UniPanel8: TUniPanel;
    UniDBGrid7: TUniDBGrid;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniButton11: TUniButton;
    UniButton12: TUniButton;
    UniButton15: TUniButton;
    UniButton16: TUniButton;
    UniButton17: TUniButton;
    dsReport43Person: TDataSource;
    DataSource1: TDataSource;
    UniLabel94: TUniLabel;
    UniLabel95: TUniLabel;
    UniLabel96: TUniLabel;
    UniLabel106: TUniLabel;
    UniLabel107: TUniLabel;
    UniLabel108: TUniLabel;
    UniLabel109: TUniLabel;
    UniLabel110: TUniLabel;
    UniLabel111: TUniLabel;
    UniLabel112: TUniLabel;
    UniLabel113: TUniLabel;
    UniLabel114: TUniLabel;
    UniLabel115: TUniLabel;
    dsGetReport43AddressType1: TDataSource;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cmbHomeHOUSETYPESelect(Sender: TObject);
    procedure cmbServiceREFERINHOSPSelect(Sender: TObject);
    procedure cmbServiceSERVPLACESelect(Sender: TObject);
    procedure cmbServiceMAINSelect(Sender: TObject);
    procedure cmbServiceCAUSEINSelect(Sender: TObject);
    procedure cmbServiceREFEROUTHOSPSelect(Sender: TObject);
    procedure cmbServiceINSTYPESelect(Sender: TObject);
    procedure cmbServiceTYPEINSelect(Sender: TObject);
    procedure cmbServiceCAUSEOUTSelect(Sender: TObject);
    procedure cmbDiagOpdDIAGTYPESelect(Sender: TObject);
    procedure cmbDiagOpdClinicSelect(Sender: TObject);
    procedure cmbDiagOpdDIAGCODESelect(Sender: TObject);
    procedure cmbDiagOpdDIAGCODEKeyPress(Sender: TObject; var Key: Char);
    procedure PPSPECIALSelect(Sender: TObject);
    procedure cmbSpecialPpSERVPLACESelect(Sender: TObject);
    procedure cmbSpecialPpPPSPLACESelect(Sender: TObject);
    procedure cmbHomeTAMBONSelect(Sender: TObject);
    procedure cmbHomeAMPURSelect(Sender: TObject);
    procedure cmbHomeCHANGWATSelect(Sender: TObject);
    procedure cmbHomeLOCATYPESelect(Sender: TObject);
    procedure cmbHomeTOILETSelect(Sender: TObject);
    procedure cmbHomeWATERSelect(Sender: TObject);
    procedure cmbHomeWATERTYPESelect(Sender: TObject);
    procedure cmbHomeGARBAGESelect(Sender: TObject);
    procedure cmbHomeHOUSINGSelect(Sender: TObject);
    procedure cmbHomeDURABILITYSelect(Sender: TObject);
    procedure cmbHomeCLEANLINESSSelect(Sender: TObject);
    procedure cmbHomeVENTILATIONSelect(Sender: TObject);
    procedure cmbHomeLIGHTSelect(Sender: TObject);
    procedure cmbHomeWATERTMSelect(Sender: TObject);
    procedure cmbHomeMFOODSelect(Sender: TObject);
    procedure cmbHomeBCONTROLSelect(Sender: TObject);
    procedure cmbHomeACONTROLSelect(Sender: TObject);
    procedure cmbHomeCHEMICALSelect(Sender: TObject);
    procedure UniButton16Click(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure UniButton17Click(Sender: TObject);
    procedure btnAddNewLaborClick(Sender: TObject);
    procedure UniPageControl1Change(Sender: TObject);
    procedure UniButton13Click(Sender: TObject);
    procedure btnAddNewEPIClick(Sender: TObject);
    procedure UniDBEdit8Select(Sender: TObject);
    procedure cmbEpiVACCINETYPESelect(Sender: TObject);
    procedure UniDBComboBox2Select(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniDBComboBox1Select(Sender: TObject);
    procedure GARBAGESelect(Sender: TObject);
    procedure WASTEWATERSelect(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniDBEdit36Select(Sender: TObject);
    procedure UniDBEdit39Select(Sender: TObject);
    procedure UniDBEdit51Select(Sender: TObject);
    procedure UniDBEdit53Select(Sender: TObject);
    procedure UniDBEdit29Select(Sender: TObject);
    procedure UniDBEdit43Select(Sender: TObject);
    procedure UniDBEdit55Select(Sender: TObject);
    procedure dsGetReport43DiagnosisOpdListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43SpecialPpListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43EpiListDataChange(Sender: TObject; Field: TField);
    procedure dsGetReport43Community_ActivityListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43DentalListDataChange(Sender: TObject; Field: TField);
    procedure dsGetRport43Community_ServiceListDataChange(Sender: TObject;
      Field: TField);
    procedure edSearchCIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsReport43ServiceListDataChange(Sender: TObject; Field: TField);
    procedure CmbTYPEOUTSelect(Sender: TObject);
    procedure CmbLOCATIONSelect(Sender: TObject);
    procedure CmbINTIMESelect(Sender: TObject);
  private
    FDM: TDS43FileDM;
    FUserSession: TUniMainModule;
    procedure RsetComboBox;
  public
    property DM : TDS43FileDM  read FDM write FDM;
  //  procedure syncIfx(intArr : array of Integer);
  end;

var
  frmRp43Community: TfrmRp43Community;

implementation

{$R *.dfm}

uses  XeUniGUIComponents,
  ServerModuleEx, DS43FileIntf;

procedure TfrmRp43Community.btnAddNewEPIClick(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43EpiList.Active then
  begin
    FDM.getEpiList(0,0);
    FDM.cdsGetReport43EpiList.Open;
  end;


  if not (FDM.cdsGetReport43EpiList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43EpiList.Append;
    FDM.cdsGetReport43EpiList.FieldByName('VACCINETYPE').AsString:='010';
    FDM.cdsGetReport43EpiList.FieldByName('VACCINEPLACE').AsString:='14290';

    dsGetReport43EpiList.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43EpiList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43EpiList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43EpiList.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43EpiList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;
  end;
end;

procedure TfrmRp43Community.btnAddNewLaborClick(Sender: TObject);
begin
  inherited;
   if not FDM.cdsGetReport43ServiceList.Active then
  begin
    FDM.getService(0,0);
    FDM.cdsGetReport43ServiceList.Open;
  end;


  if not (FDM.cdsGetReport43ServiceList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43ServiceList.Append;
    cmbServiceREFERINHOSP.ItemIndex := fdm.loadHospNameList2CmbItems(cmbServiceREFERINHOSP.Items,'13754',true);
    cmbServiceSERVPLACE.ItemIndex   := fdm.loadCmbItems(cmbServiceSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1','1',true);
    cmbServiceMAIN.ItemIndex        := fdm.loadHospNameList2CmbItems(cmbServiceMAIN.Items,'13754',true);
    cmbServiceCAUSEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEIN.Items,'SERVICE','CAUSEIN','43FILE_CODE','NAME1','1',true);
    cmbServiceINSTYPE.ItemIndex   := fdm.loadCmbItems(cmbServiceINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1','1',true);
    cmbServiceTYPEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceTYPEIN.Items,'SERVICE','TYPEIN','43FILE_CODE','NAME1','1',true);
    cmbServiceREFEROUTHOSP.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbServiceREFEROUTHOSP.Items,'13754',true);
    cmbServiceCAUSEOUT.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEOUT.Items,'SERVICE','CAUSEOUT','43FILE_CODE','NAME1','1',true);
    CmbLOCATION.ItemIndex   := fdm.loadCmbItems(CmbLOCATION.Items,'SERVICE','LOCATION','43FILE_CODE','NAME1','1',true);
    CmbINTIME.ItemIndex   := fdm.loadCmbItems(CmbINTIME.Items,'SERVICE','INTIME','43FILE_CODE','NAME1','1',true);
    CmbTYPEOUT.ItemIndex   := fdm.loadCmbItems(CmbTYPEOUT.Items,'SERVICE','TYPEOUT','43FILE_CODE','NAME1', '1',true);

  end;
end;

procedure TfrmRp43Community.btnConfirmClick(Sender: TObject);
begin
   if  (FDM.cdsGetReport43ServiceList.State in [dsinsert]) then
      begin
        dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString := FDM.GetDoc('SEQ');
        dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString := '13754';
        FDM.cdsGetReport43ServiceList.FieldByName('D_UPDATE').AsDateTime:=Now;
       end;
 try
  if fdm.cdsGetReport43ServiceList.State in [dsInsert,dsEdit] then // FDM.cdsGetReport43ServiceList.POST;
   if FDM.cdsGetReport43ServiceList.ChangeCount>0 then
      begin
         FDM.cdsGetReport43ServiceList.First;
          while not FDM.cdsGetReport43ServiceList.Eof do
            begin
               FDM.InsUpdService(
               FDM.cdsGetReport43ServiceList.FieldByName('HOSPCODE').AsString
              ,FDM.cdsGetReport43ServiceList.FieldByName('PID').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('HN').AsString
              ,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('DATE_SERV').AsFloat
              ,FDM.cdsGetReport43ServiceList.FieldByName('TIME_SERV').AsFloat
              ,TString(CmbLOCATION.Items.Objects[CmbLOCATION.ItemIndex]).Str
              ,TString(CmbINTIME.Items.Objects[CmbINTIME.ItemIndex]).Str
              //,FDM.cdsGetReport43ServiceList.FieldByName('LOCATION').AsString
              // ,FDM.cdsGetReport43ServiceList.FieldByName('INTIME').AsString
              // ,FDM.cdsGetReport43Service.FieldByName('INSTYPE').AsString
              //  ,FDM.cdsGetReport43Service.FieldByName('MAIN').AsString
              //,FDM.cdsGetReport43Service.FieldByName('TYPEIN').AsString
              //  ,FDM.cdsGetReport43Service.FieldByName('REFEROUTHOSP').AsString
              //,FDM.cdsGetReport43Service.FieldByName('CAUSEOUT').AsString
              // ,FDM.cdsGetReport43Service.FieldByName('REFERINHOSP').AsString
              // ,FDM.cdsGetReport43Service.FieldByName('CAUSEIN').AsString
              // ,FDM.cdsGetReport43Service.FieldByName('SERVPLACE').AsString
              ,TString(cmbServiceINSTYPE.Items.Objects[cmbServiceINSTYPE.ItemIndex]).Str
              ,FDM.cdsGetReport43ServiceList.FieldByName('INSID').AsString
              ,TString(cmbServiceMAIN.Items.Objects[cmbServiceMAIN.ItemIndex]).Str
              ,TString(cmbServiceTYPEIN.Items.Objects[cmbServiceTYPEIN.ItemIndex]).Str
              ,TString(cmbServiceREFERINHOSP.Items.Objects[cmbServiceREFERINHOSP.ItemIndex]).Str
              ,TString(cmbServiceCAUSEIN.Items.Objects[cmbServiceCAUSEIN.ItemIndex]).Str
              ,FDM.cdsGetReport43ServiceList.FieldByName('CHIEFCOMP').AsString
              ,TString(cmbServiceSERVPLACE.Items.Objects[cmbServiceSERVPLACE.ItemIndex]).Str
              ,FDM.cdsGetReport43ServiceList.FieldByName('BTEMP').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('SBP').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('DBP').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('PR').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('RR').AsInteger
              ,TString(cmbServiceREFEROUTHOSP.Items.Objects[cmbServiceREFEROUTHOSP.ItemIndex]).Str
             // ,TString(cmbServiceREFEROUTHOSP.Items.Objects[cmbServiceREFEROUTHOSP.ItemIndex]).Str
             // ,FDM.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString
              ,TString(CmbTYPEOUT.Items.Objects[CmbTYPEOUT.ItemIndex]).Str
              ,TString(cmbServiceCAUSEOUT.Items.Objects[cmbServiceCAUSEOUT.ItemIndex]).Str
              ,FDM.cdsGetReport43ServiceList.FieldByName('COST').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('PRICE').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('PAYPRICE').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('ACTUALPAY').AsInteger
              ,FDM.cdsGetReport43ServiceList.FieldByName('D_UPDATE').AsFloat
              ) ;
              FDM.cdsGetReport43ServiceList.Next;
            end;
      end;


   if fdm.cdsGetReport43DiagnosisOpdList.State in [dsinsert,dsedit] then  FDM.cdsGetReport43DiagnosisOpdList.POST;
       if FDM.cdsGetReport43DiagnosisOpdList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43DiagnosisOpdList.First;
             while not FDM.cdsGetReport43DiagnosisOpdList.Eof do
                begin
                    fdm.InsUpdDiagnosisOpd(
                    fdm.cdsGetReport43DiagnosisOpdList.FieldByName('HOSPCODE').AsString,
                    fdm.cdsGetReport43DiagnosisOpdList.FieldByName('PID').AsInteger,
                    fdm.cdsGetReport43DiagnosisOpdList.FieldByName('SEQ').AsInteger,
                    fdm.cdsGetReport43DiagnosisOpdList.FieldByName('DATE_SERV').AsFloat,
                    TString(cmbDiagOpdDIAGTYPE.Items.Objects[cmbDiagOpdDIAGTYPE.ItemIndex]).Str,
                    TString(cmbDiagOpdDIAGCODE.Items.Objects[cmbDiagOpdDIAGCODE.ItemIndex]).Str,
                    TString(cmbDiagOpdClinic.Items.Objects[cmbDiagOpdClinic.ItemIndex]).Str,
                   // fdm.cdsGetReport43DiagnosisOpd.FieldByName('DIAGTYPE').AsString,
                  //  fdm.cdsGetReport43DiagnosisOpd.FieldByName('DIAGCODE').AsString,
                  //  fdm.cdsGetReport43DiagnosisOpd.FieldByName('CLINIC').AsString,
                    fdm.cdsGetReport43DiagnosisOpdList.FieldByName('PROVIDER').AsString,
                    fdm.cdsGetReport43DiagnosisOpdList.FieldByName('D_UPDATE').AsFloat,
                    fdm.cdsGetReport43DiagnosisOpdList.FieldByName('EXPORT_DATE').AsFloat
                    );
                    FDM.cdsGetReport43DiagnosisOpdList.Next;
                end;
           end;


       if fdm.cdsGetReport43HomeList.state in [dsinsert,dsedit] then
           begin
             FDM.WriteLog('update home-a...');
             fdm.cdsGetReport43HomeList.Post;
             fdm.InsUpdHomeA(
                  fdm.cdsGetReport43HomeList.FieldByName('REPORTID').AsInteger ,
                  fdm.cdsGetReport43HomeList.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetReport43HomeList.FieldByName('HID').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('HOUSE_ID').AsString,
                  TString(cmbHomeHOUSETYPE.Items.Objects[cmbHomeHOUSETYPE.ItemIndex]).Str,
                  //fdm.cdsGetReport43HomeList.FieldByName('HOUSETYPE').AsString,
                  fdm.cdsGetReport43HomeList.FieldByName('ROOMNO').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('CONDO').AsString,
                  fdm.cdsGetReport43HomeList.FieldByName('HOUSE').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('SOISUB').AsString,
                  fdm.cdsGetReport43HomeList.FieldByName('SOIMAIN').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('ROAD').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('VILLANAME').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('VILLAGE').AsString ,
                 // TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,
                  //TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str,
                 // TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,
                  fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString,
                  fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('CHANGWAT').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('TELEPHONE').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('LATITUDE').AsInteger ,
                  fdm.cdsGetReport43HomeList.FieldByName('LONGITUDE').AsInteger,
                  fdm.cdsGetReport43HomeList.FieldByName('NFAMILY').AsString
             );


             FDM.WriteLog('update home-b...');
             fdm.InsUpdHomeB(
                  //fdm.cdsGetReport43HomeList.FieldByName('LOCATYPE').AsString,
                  TString(cmbHomeLOCATYPE.Items.Objects[cmbHomeLOCATYPE.ItemIndex]).Str,
                  fdm.cdsGetReport43HomeList.FieldByName('VHVID').AsString,
                  fdm.cdsGetReport43HomeList.FieldByName('HEADID').AsString ,

                  TString(cmbHomeTOILET.Items.Objects[cmbHomeTOILET.ItemIndex]).Str,
                  TString(cmbHomeWATER.Items.Objects[cmbHomeWATER.ItemIndex]).Str,
                  TString(cmbHomeWATERTYPE.Items.Objects[cmbHomeWATERTYPE.ItemIndex]).Str,
                  TString(cmbHomeGARBAGE.Items.Objects[cmbHomeGARBAGE.ItemIndex]).Str,
                  TString(cmbHomeHOUSING.Items.Objects[cmbHomeHOUSING.ItemIndex]).Str,

                  TString(cmbHomeDURABILITY.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
                  TString(cmbHomeCLEANLINESS.Items.Objects[cmbHomeCLEANLINESS.ItemIndex]).Str,
                  TString(cmbHomeVENTILATION.Items.Objects[cmbHomeVENTILATION.ItemIndex]).Str,

                  TString(cmbHomeLIGHT.Items.Objects[cmbHomeLIGHT.ItemIndex]).Str,
                  TString(cmbHomeWATERTM.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
                  TString(cmbHomeMFOOD.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
                  TString(cmbHomeBCONTROL.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
                  TString(cmbHomeACONTROL.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str,
                  TString(cmbHomeCHEMICAL.Items.Objects[cmbHomeCHEMICAL.ItemIndex]).Str,

                  //fdm.cdsGetReport43HomeList.FieldByName('TOILET').AsString,
                  //fdm.cdsGetReport43HomeList.FieldByName('WATER').AsString,
                  //fdm.cdsGetReport43HomeList.FieldByName('WATERTYPE').AsString ,
                  //fdm.cdsGetReport43HomeList.FieldByName('GARBAGE').AsString,
                  //fdm.cdsGetReport43HomeList.FieldByName('HOUSING').AsString ,

                  //fdm.cdsGetReport43HomeList.FieldByName('DURABILITY').AsString ,
                  //fdm.cdsGetReport43HomeList.FieldByName('CLEANLINESS').AsString,
                  //fdm.cdsGetReport43HomeList.FieldByName('VENTILATION').AsString ,

                  //fdm.cdsGetReport43HomeList.FieldByName('LIGHT').AsString ,
                  //fdm.cdsGetReport43HomeList.FieldByName('WATERTM').AsString,
                  //fdm.cdsGetReport43HomeList.FieldByName('MFOOD').AsString,
                  //fdm.cdsGetReport43HomeList.FieldByName('BCONTROL').AsString ,
                  //fdm.cdsGetReport43HomeList.FieldByName('ACONTROL').AsString ,
                  //fdm.cdsGetReport43HomeList.FieldByName('CHEMICAL').AsString ,
                  fdm.cdsGetReport43HomeList.FieldByName('OUTDATE').AsDateTime ,
                  fdm.cdsGetReport43HomeList.FieldByName('D_UPDATE').AsFloat
             );
           end;

          if fdm.cdsGetReport43Village.state in [dsinsert,dsedit] then
           begin
             fdm.cdsGetReport43Village.Post;
             fdm.InsUpdVillage_A (
                  fdm.cdsGetReport43Village.FieldByName('REPORTID').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetReport43Village.FieldByName('VID').AsString ,
                  fdm.cdsGetReport43Village.FieldByName('NTRADITIONAL').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NMONK').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NRELIGIONLEADER').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NBROADCAST').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NRADIO').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NPCHC').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NCLINIC').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NDRUGSTORE').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NCHILDCENTER').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NPSCHOOL').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NSSCHOOL').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NTEMPLE').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NRELIGIOUSPLACE').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NMARKET').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NSHOP').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NFOODSHOP').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NSTALL').AsInteger
             );

             fdm.InsUpdVillage_B(
                  fdm.cdsGetReport43Village.FieldByName('NRAINTANK').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NCHICKENFARM').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NPIGFARM').AsInteger,
                 // fdm.cdsGetReport43HomeList.FieldByName('WASTEWATER').AsString,
                  TString(WASTEWATER.Items.Objects[WASTEWATER.ItemIndex]).Str,
                 // fdm.cdsGetReport43HomeList.FieldByName('GARBAGE').AsString ,
                  TString(GARBAGE.Items.Objects[GARBAGE.ItemIndex]).Str,
                  fdm.cdsGetReport43Village.FieldByName('NFACTORY').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('LATITUDE').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('LONGITUDE').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('OUTDATE').AsFloat,
                  fdm.cdsGetReport43Village.FieldByName('NUMACTUALLY').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('RISKTYPE').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NUMSTATELESS').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NEXERCISECLUB').AsInteger,
                  fdm.cdsGetReport43Village.FieldByName('NOLDERLYCLUB').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NDISABLECLUB').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('NNUMBERONECLUB').AsInteger ,
                  fdm.cdsGetReport43Village.FieldByName('D_UPDATE').AsFloat
             );
           end;


     if fdm.cdsGetReport43EpiList.state in [dsinsert,dsedit] then   FDM.cdsGetReport43EpiList.POST;
       if FDM.cdsGetReport43EpiList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43EpiList.First;
             while not FDM.cdsGetReport43EpiList.Eof do
               begin
                  fdm.InsUpdEpi(
                  fdm.cdsGetReport43EpiList.FieldByName('REPORTID').AsInteger,
                  fdm.cdsGetReport43EpiList.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetReport43EpiList.FieldByName('PID').AsInteger,
                  fdm.cdsGetReport43EpiList.FieldByName('SEQ').AsInteger,
                  fdm.cdsGetReport43EpiList.FieldByName('DATE_SERV').AsFloat,
                  TString(cmbEpiVACCINETYPE.Items.Objects[cmbEpiVACCINETYPE.ItemIndex]).Str,
                  TString(cmbEpiVACCINEPLACE.Items.Objects[cmbEpiVACCINEPLACE.ItemIndex]).Str,
                  fdm.cdsGetReport43EpiList.FieldByName('PROVIDER').AsString,
                  fdm.cdsGetReport43EpiList.FieldByName('D_UPDATE').AsFloat
                   );
                  FDM.cdsGetReport43EpiList.Next;
               end;
           end;


       if fdm.cdsGetReport43SpecialPpList.state in [dsinsert,dsedit] then     FDM.cdsGetReport43SpecialPpList.POST;
           if FDM.cdsGetReport43SpecialPpList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43SpecialPpList.First;
             while not FDM.cdsGetReport43SpecialPpList.Eof do
               begin
                  fdm.InsUpdSpecialPp(
                  fdm.cdsGetReport43SpecialPpList.FieldByName('REPORTID').AsInteger,
                  fdm.cdsGetReport43SpecialPpList.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetReport43SpecialPpList.FieldByName('PID').AsString,
                  fdm.cdsGetReport43SpecialPpList.FieldByName('SEQ').AsString,
                  fdm.cdsGetReport43SpecialPpList.FieldByName('DATE_SERV').AsFloat,
                  TString(cmbSpecialPpSERVPLACE.Items.Objects[cmbSpecialPpSERVPLACE.ItemIndex]).Str,
                 // fdm.cdsGetReport43SpecialPp.FieldByName('SERVPLACE').AsString,
                  fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString,
                  TString(cmbSpecialPpPPSPLACE.Items.Objects[cmbSpecialPpPPSPLACE.ItemIndex]).Str,
                 // fdm.cdsGetReport43SpecialPp.FieldByName('PPSPLACE').AsString,
                  fdm.cdsGetReport43SpecialPpList.FieldByName('PROVIDER').AsString,
                  fdm.cdsGetReport43SpecialPpList.FieldByName('D_UPDATE').AsFloat
                  );
                  FDM.cdsGetReport43SpecialPpList.Next;
                end;
           end;

       if fdm.cdsGetreport43Community_ActivityList.state in [dsinsert,dsedit] then FDM.cdsGetreport43Community_ActivityList.POST;
           if FDM.cdsGetreport43Community_ActivityList.ChangeCount>0 then
           begin
             FDM.cdsGetreport43Community_ActivityList.First;
             while not FDM.cdsGetreport43Community_ActivityList.Eof do
               begin
                  fdm.InsUpdCommunity_Activity(
                  fdm.cdsGetreport43Community_ActivityList.FieldByName('REPORTID').AsInteger,
                  fdm.cdsGetreport43Community_ActivityList.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetreport43Community_ActivityList.FieldByName('VID').AsString,
                  fdm.cdsGetreport43Community_ActivityList.FieldByName('DATE_START').AsFloat,
                  fdm.cdsGetreport43Community_ActivityList.FieldByName('DATE_FINISH').AsFloat,
                  TString(UniDBComboBox2.Items.Objects[UniDBComboBox2.ItemIndex]).Str,
                 // fdm.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString,
                  fdm.cdsGetreport43Community_ActivityList.FieldByName('PROVIDER').AsString,
                  fdm.cdsGetreport43Community_ActivityList.FieldByName('D_UPDATE').AsFloat
                  );
                  FDM.cdsGetreport43Community_ActivityList.Next;
                end;
           end;

       if fdm.cdsGetReport43Community_ServiceList.state in [dsinsert,dsedit] then FDM.cdsGetReport43Community_ServiceList.POST;
           if FDM.cdsGetReport43Community_ServiceList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43Community_ServiceList.First;
             while not FDM.cdsGetReport43Community_ServiceList.Eof do
               begin
                  fdm.InsUpdCommunity_Service(
                  fdm.cdsGetReport43Community_ServiceList.FieldByName('REPORTID').AsInteger,
                  fdm.cdsGetReport43Community_ServiceList.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetReport43Community_ServiceList.FieldByName('PID').AsInteger,
                  fdm.cdsGetReport43Community_ServiceList.FieldByName('SEQ').AsInteger,
                  fdm.cdsGetReport43Community_ServiceList.FieldByName('DATE_SERV').AsFloat,
                  TString(UniDBComboBox2.Items.Objects[UniDBComboBox2.ItemIndex]).Str,
                 // fdm.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString,
                  fdm.cdsGetReport43Community_ServiceList.FieldByName('PROVIDER').AsString,
                  fdm.cdsGetReport43Community_ServiceList.FieldByName('D_UPDATE').AsFloat
                  );
                  FDM.cdsGetReport43Community_ServiceList.Next;
                end;
           end;


          if fdm.cdsGetReport43DentalList.state in [dsinsert,dsedit] then FDM.cdsGetReport43DentalList.POST;
           if FDM.cdsGetReport43DentalList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43DentalList.First;
             while not FDM.cdsGetReport43DentalList.Eof do
               begin
                 fdm.InsUpdDental(
                    fdm.cdsGetReport43DentalList.FieldByName('REPORTID').AsInteger,
                    fdm.cdsGetReport43DentalList.FieldByName('HOSPCODE').AsString,
                    fdm.cdsGetReport43DentalList.FieldByName('PID').AsInteger,
                    fdm.cdsGetReport43DentalList.FieldByName('SEQ').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('DATE_SERV').AsFloat ,
                    TString(UniDBEdit8.Items.Objects[UniDBEdit8.ItemIndex]).Str,
                   // fdm.cdsGetReport43DentalList.FieldByName('DENTTYPE').AsString ,
                    TString(UniDBEdit36.Items.Objects[UniDBEdit36.ItemIndex]).Str,
                   // fdm.cdsGetReport43DentalList.FieldByName('SERVPLACE').AsString ,
                    fdm.cdsGetReport43DentalList.FieldByName('PTEETH').AsInteger,
                    fdm.cdsGetReport43DentalList.FieldByName('PCARIES').AsInteger,
                    fdm.cdsGetReport43DentalList.FieldByName('PFILLING').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('PEXTRACT').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('DTEETH').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('DCARIES').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('DFILLING').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('DEXTRACT').AsInteger ,
                    TString(UniDBEdit39.Items.Objects[UniDBEdit39.ItemIndex]).Str,
                  //  fdm.cdsGetReport43DentalList.FieldByName('NEED_FLUORIDE').AsString ,
                    TString(UniDBEdit51.Items.Objects[UniDBEdit51.ItemIndex]).Str,
                 //   fdm.cdsGetReport43DentalList.FieldByName('NEED_SCALING').AsString ,
                    fdm.cdsGetReport43DentalList.FieldByName('NEED_SEALANT').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('NEED_PFILLING').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('NEED_DFILLING').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('NEED_PEXTRACT').AsInteger ,
                    fdm.cdsGetReport43DentalList.FieldByName('NEED_DEXTRACT').AsInteger
                   );

                 fdm.InsUpdDental2(
                  TString(UniDBEdit53.Items.Objects[UniDBEdit53.ItemIndex]).Str,
                  //fdm.cdsGetReport43DentalList.FieldByName('NPROSTHESIS').AsString,
                  fdm.cdsGetReport43DentalList.FieldByName('PERMANENT_PERMANENT').AsInteger ,
                  fdm.cdsGetReport43DentalList.FieldByName('PERMANENT_PROSTHESIS').AsInteger ,
                  fdm.cdsGetReport43DentalList.FieldByName('PROSTHESIS_PROSTHESIS').AsInteger ,
                  TString(UniDBEdit29.Items.Objects[UniDBEdit29.ItemIndex]).Str,
                 // fdm.cdsGetReport43DentalList.FieldByName('GUM').AsString ,
                  TString(UniDBEdit43.Items.Objects[UniDBEdit43.ItemIndex]).Str,
                 // fdm.cdsGetReport43DentalList.FieldByName('SCHOOLTYPE').AsString ,
                  TString(UniDBEdit55.Items.Objects[UniDBEdit55.ItemIndex]).Str,
                 // fdm.cdsGetReport43DentalList.FieldByName('CLASS').AsString ,
                  fdm.cdsGetReport43DentalList.FieldByName('PROVIDER').AsString ,
                  fdm.cdsGetReport43DentalList.FieldByName('D_UPDATE').AsFloat
                 );
                  FDM.cdsGetReport43DentalList.Next;
                end;
           end;



   ShowMessage('update success');
  except
    on ee:Exception do
      ShowMessage(ee.message);

  end;
end;

procedure TfrmRp43Community.btnRefreshClick(Sender: TObject);
var
    yrrStr,runStr,HN,_HN, defCode,defcode1:string;
begin
  inherited;
      HN := trim(edSearchCID.Text);

  if trim(HN)='' then Exit;

  if length(HN)<8 then
  begin
   yrrStr:=Copy(HN,1,2);
   runStr:=Copy(HN,3,length(HN)-2);
   _HN:=yrrStr+FormatCurr('000000',strtoint(runStr));
  end else
    _HN:=HN; //edSearchCID

    // load person for all case
      FDM.cdsGetReport43Person.close;
      FDM.getPerson(_HN);
      FDM.cdsGetReport43Person.open;
      dsReport43Person.DataSet:=FDM.cdsGetReport43Person;
      cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonSEX.AsString,true);

    if fdm.cdsGetReport43Person.RecordCount<=0 then
    begin
      ShowMessage('ไม่พบ HN ที่ต้องการคนหา!!!');
      exit;
    end;

    if trim(fdm.cdsGetReport43Person.FieldByName('CID').AsString)='' then
    begin
      ShowMessage('รหัสประจำตัวประชาชนเป้นค่าว่าง ไม่สามารถ ดำเนินการ ได้!!!');
      exit;
    end;


    FDM.WriteLog('### Initial 6');
    fdm.cdsGetReport43HomeList.close;
    fdm.getHomeList('00','00','00');
    fdm.cdsGetReport43HomeList.open;
    dsGetReport43HomeList.DataSet := FDM.cdsGetReport43HomeList;

    if fdm.cdsGetReport43HomeList.RecordCount>0 then
    begin

      defCode := Trim(fdm.cdsGetReport43HomeList.FieldByName('CHANGWAT').AsString);
      cmbHomeCHANGWAT.ItemIndex := fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,defCode,true);
      cmbHomeAMPUR.Items.Clear;
      defCode:=defCode+Trim(fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString);
      cmbHomeAMPUR.ItemIndex    := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,'',defCode,true);
      cmbHomeTAMBON.Items.Clear;
      defCode:=defCode+Trim(fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString);
      cmbHomeTAMBON.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,'','',defCode,true);

      cmbHomeHOUSETYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeHOUSETYPE.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('HOUSETYPE').AsString,true);
      cmbHomeLOCATYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeLOCATYPE.Items,'HOME','LOCATYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('LOCATYPE').AsString,true);
      cmbHomeTOILET.ItemIndex   := fdm.loadCmbItems(cmbHomeTOILET.Items,'HOME','TOILET','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('TOILET').AsString,true);
      cmbHomeWATER.ItemIndex   := fdm.loadCmbItems(cmbHomeWATER.Items,'HOME','WATER','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('WATER').AsString,true);

      cmbHomeWATERTYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeWATERTYPE.Items,'HOME','WATERTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('WATERTYPE').AsString,true);
      cmbHomeGARBAGE.ItemIndex   := fdm.loadCmbItems(cmbHomeGARBAGE.Items,'HOME','GARBAGE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('GARBAGE').AsString,true);
      cmbHomeHOUSING.ItemIndex   := fdm.loadCmbItems(cmbHomeHOUSING.Items,'HOME','HOUSING','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('HOUSING').AsString,true);
      cmbHomeDURABILITY.ItemIndex   := fdm.loadCmbItems(cmbHomeDURABILITY.Items,'HOME','DURABILITY','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('DURABILITY').AsString,true);
      cmbHomeCLEANLINESS.ItemIndex   := fdm.loadCmbItems(cmbHomeCLEANLINESS.Items,'HOME','CLEANLINESS','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('CLEANLINESS').AsString,true);
      cmbHomeVENTILATION.ItemIndex   := fdm.loadCmbItems(cmbHomeVENTILATION.Items,'HOME','VENTILATION','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('VENTILATION').AsString,true);

      cmbHomeLIGHT.ItemIndex   := fdm.loadCmbItems(cmbHomeLIGHT.Items,'HOME','LIGHT','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('LIGHT').AsString,true);
      cmbHomeWATERTM.ItemIndex   := fdm.loadCmbItems(cmbHomeWATERTM.Items,'HOME','WATERTM','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('WATERTM').AsString,true);
      cmbHomeMFOOD.ItemIndex   := fdm.loadCmbItems(cmbHomeMFOOD.Items,'HOME','MFOOD','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('MFOOD').AsString,true);
      cmbHomeBCONTROL.ItemIndex   := fdm.loadCmbItems(cmbHomeBCONTROL.Items,'HOME','BCONTROL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('BCONTROL').AsString,true);
      cmbHomeACONTROL.ItemIndex   := fdm.loadCmbItems(cmbHomeACONTROL.Items,'HOME','ACONTROL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('ACONTROL').AsString,true);
      cmbHomeCHEMICAL.ItemIndex   := fdm.loadCmbItems(cmbHomeCHEMICAL.Items,'HOME','CHEMICAL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('CHEMICAL').AsString,true);
    end
    else
     begin

      defCode := Trim(fdm.cdsGetReport43HomeList.FieldByName('CHANGWAT').AsString);
      cmbHomeCHANGWAT.ItemIndex := fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,defCode,true);

      defCode:=defCode+Trim(fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString);
      cmbHomeAMPUR.ItemIndex    := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,'',defCode,true);

      defCode:=defCode+Trim(fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString);
      cmbHomeTAMBON.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,'','',defCode,true);


      cmbHomeHOUSETYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeHOUSETYPE.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('HOUSETYPE').AsString,true);
      cmbHomeLOCATYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeLOCATYPE.Items,'HOME','LOCATYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('LOCATYPE').AsString,true);
      cmbHomeTOILET.ItemIndex   := fdm.loadCmbItems(cmbHomeTOILET.Items,'HOME','TOILET','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('TOILET').AsString,true);
      cmbHomeWATER.ItemIndex   := fdm.loadCmbItems(cmbHomeWATER.Items,'HOME','WATER','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('WATER').AsString,true);

      cmbHomeWATERTYPE.ItemIndex   := fdm.loadCmbItems(cmbHomeWATERTYPE.Items,'HOME','WATERTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('WATERTYPE').AsString,true);
      cmbHomeGARBAGE.ItemIndex   := fdm.loadCmbItems(cmbHomeGARBAGE.Items,'HOME','GARBAGE','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('GARBAGE').AsString,true);
      cmbHomeHOUSING.ItemIndex   := fdm.loadCmbItems(cmbHomeHOUSING.Items,'HOME','HOUSING','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('HOUSING').AsString,true);
      cmbHomeDURABILITY.ItemIndex   := fdm.loadCmbItems(cmbHomeDURABILITY.Items,'HOME','DURABILITY','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('DURABILITY').AsString,true);
      cmbHomeCLEANLINESS.ItemIndex   := fdm.loadCmbItems(cmbHomeCLEANLINESS.Items,'HOME','CLEANLINESS','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('CLEANLINESS').AsString,true);
      cmbHomeVENTILATION.ItemIndex   := fdm.loadCmbItems(cmbHomeVENTILATION.Items,'HOME','VENTILATION','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('VENTILATION').AsString,true);

      cmbHomeLIGHT.ItemIndex   := fdm.loadCmbItems(cmbHomeLIGHT.Items,'HOME','LIGHT','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('LIGHT').AsString,true);
      cmbHomeWATERTM.ItemIndex   := fdm.loadCmbItems(cmbHomeWATERTM.Items,'HOME','WATERTM','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('WATERTM').AsString,true);
      cmbHomeMFOOD.ItemIndex   := fdm.loadCmbItems(cmbHomeMFOOD.Items,'HOME','MFOOD','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('MFOOD').AsString,true);
      cmbHomeBCONTROL.ItemIndex   := fdm.loadCmbItems(cmbHomeBCONTROL.Items,'HOME','BCONTROL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('BCONTROL').AsString,true);
      cmbHomeACONTROL.ItemIndex   := fdm.loadCmbItems(cmbHomeACONTROL.Items,'HOME','ACONTROL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('ACONTROL').AsString,true);
      cmbHomeCHEMICAL.ItemIndex   := fdm.loadCmbItems(cmbHomeCHEMICAL.Items,'HOME','CHEMICAL','43FILE_CODE','NAME1', fdm.cdsGetReport43HomeList.FieldByName('CHEMICAL').AsString,true);
     end;


   { cmbHomeCHANGWAT.ItemIndex := fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,fdm.cdsGetReport43HomeList.FieldByName('CHANGWAT').AsString,true);
    cmbHomeAMPUR.ItemIndex    := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,'',fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString,true);
    cmbHomeTAMBON.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,'','',fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString,true);
     }
    fdm.cdsGetReport43AddressType1.close;
    fdm.getAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43AddressType1.Open;
    dsGetReport43AddressType1.DataSet:=FDM.cdsGetReport43AddressType1;

    FDM.WriteLog('### Initial 7');
    FDM.cdsGetReport43ServiceList.Close;
    FDM.getServiceList(fdm.cdsGetReport43PersonPID.AsInteger);
    FDM.cdsGetReport43ServiceList.Open;
    dsReport43ServiceList.DataSet := FDM.cdsGetReport43ServiceList;
    cmbServiceREFERINHOSP.ItemIndex := fdm.loadHospNameList2CmbItems(cmbServiceREFERINHOSP.Items,fdm.cdsGetReport43ServiceList.FieldByName('REFERINHOSP').AsString,true);
    cmbServiceSERVPLACE.ItemIndex   := fdm.loadCmbItems(cmbServiceSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('SERVPLACE').AsString,true);
    cmbServiceMAIN.ItemIndex        := fdm.loadHospNameList2CmbItems(cmbServiceMAIN.Items,fdm.cdsGetReport43ServiceList.FieldByName('MAIN').AsString,true);
    cmbServiceCAUSEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEIN.Items,'SERVICE','CAUSEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('CAUSEIN').AsString,true);
    cmbServiceINSTYPE.ItemIndex   := fdm.loadCmbItems(cmbServiceINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('INSTYPE').AsString,true);
    cmbServiceTYPEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceTYPEIN.Items,'SERVICE','TYPEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('TYPEIN').AsString,true);
    cmbServiceREFEROUTHOSP.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbServiceREFEROUTHOSP.Items,fdm.cdsGetReport43ServiceList.FieldByName('REFEROUTHOSP').AsString,true);
    cmbServiceCAUSEOUT.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEOUT.Items,'SERVICE','CAUSEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('CAUSEOUT').AsString,true);
    CmbLOCATION.ItemIndex   := fdm.loadCmbItems(CmbLOCATION.Items,'SERVICE','LOCATION','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('LOCATION').AsString,true);
    CmbINTIME.ItemIndex   := fdm.loadCmbItems(CmbINTIME.Items,'SERVICE','INTIME','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('INTIME').AsString,true);
    CmbTYPEOUT.ItemIndex   := fdm.loadCmbItems(CmbTYPEOUT.Items,'SERVICE','TYPEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString,true);



    FDM.WriteLog('### Initial 10');
    fdm.cdsGetReport43DiagnosisOpdList.close;
    fdm.getDiagnosisOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DiagnosisOpdList.Open;
    dsGetReport43DiagnosisOpdList.DataSet := FDM.cdsGetReport43DiagnosisOpdList;
    cmbDiagOpdDIAGTYPE.ItemIndex := fdm.loadCmbItems(cmbDiagOpdDIAGTYPE.Items,'*','DIAGTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdList.FieldByName('DIAGTYPE').AsString,true);
    cmbDiagOpdClinic.ItemIndex := fdm.loadCmbItems(cmbDiagOpdClinic.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdList.FieldByName('Clinic').AsString,true);
    cmbDiagOpdDIAGCODE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDiagOpdDIAGCODE.Items,'',fdm.cdsGetReport43DiagnosisOpdList.FieldByName('DIAGCODE').AsString,true);

    FDM.WriteLog('### Initial 22');
    fdm.cdsGetReport43EpiList.close;
    fdm.getEpiList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43EpiList.open;
    dsGetReport43EpiList.DataSet:=FDM.cdsGetReport43EpiList;
    cmbEpiVACCINETYPE.ItemIndex:=fdm.loadCmbItems(cmbEpiVACCINETYPE.Items,'EPI','VACCINETYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43EpiList.FieldByName('VACCINETYPE').AsString,true);
    cmbEpiVACCINEPLACE.ItemIndex := fdm.loadHospNameList2CmbItems(cmbEpiVACCINEPLACE.Items,fdm.cdsGetReport43EpiList.FieldByName('VACCINEPLACE').AsString,true);

    FDM.WriteLog('### Initial 30');
    fdm.cdsGetReport43DentalList.close;
    fdm.getDentalList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DentalList.open;
    dsGetReport43DentalList.DataSet:=FDM.cdsGetReport43DentalList;
    UniDBEdit8.ItemIndex:=fdm.loadCmbItems(UniDBEdit8.Items,'DENTAL','DENTTYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('DENTTYPE').AsString,true);
    UniDBEdit29.ItemIndex:=fdm.loadCmbItems(UniDBEdit29.Items,'DENTAL','GUM','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('GUM').AsString,true);
    UniDBEdit36.ItemIndex:=fdm.loadCmbItems(UniDBEdit36.Items,'*','SERVPLACE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('SERVPLACE').AsString,true);
    UniDBEdit39.ItemIndex:=fdm.loadCmbItems(UniDBEdit39.Items,'DENTAL','NEED_FLUORIDE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NEED_FLUORIDE').AsString,true);
    UniDBEdit43.ItemIndex:=fdm.loadCmbItems(UniDBEdit43.Items,'DENTAL','SCHOOLTYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('SCHOOLTYPE').AsString,true);
    UniDBEdit51.ItemIndex:=fdm.loadCmbItems(UniDBEdit51.Items,'DENTAL','NEED_SCALING','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NEED_SCALING').AsString,true);
    UniDBEdit53.ItemIndex:=fdm.loadCmbItems(UniDBEdit53.Items,'DENTAL','NPROSTHESIS','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NPROSTHESIS').AsString,true);
    UniDBEdit55.ItemIndex:=fdm.loadCmbItems(UniDBEdit55.Items,'DENTAL','CLASS','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('CLASS').AsString,true);



    fdm.cdsGetReport43Community_ServiceList.close;
    fdm.getCommunity_ServiceList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43Community_ServiceList.open;
    dsGetRport43Community_ServiceList.DataSet:=FDM.cdsGetReport43Community_ServiceList;
    UniDBComboBox2.ItemIndex:=fdm.loadCmbItems(UniDBComboBox2.Items,'COMMUNITY_SERVICE','COMSERVICE','43FILE_CODE','NAME1',FDM.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString,true);


    fdm.cdsGetReport43Village.close;
    fdm.getvillage(RightStr(Trim(fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString),2) + RightStr(trim(fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString),2) + RightStr(Trim(fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString),2) + RightStr(trim(fdm.cdsGetReport43AddressType1.FieldByName('VILLAGE').AsString),2));
    fdm.cdsGetReport43Village.open;
    dsGetreport43VillageList.DataSet:=FDM.cdsGetReport43Village;
    WASTEWATER.ItemIndex:=fdm.loadCmbItems(WASTEWATER.Items,'VILLAGE','WASTEWATER','43FILE_CODE','NAME1',FDM.cdsGetReport43Village.FieldByName('WASTEWATER').AsString,true);
    GARBAGE.ItemIndex:=fdm.loadCmbItems(GARBAGE.Items,'VILLAGE','GARBAGE','43FILE_CODE','NAME1',FDM.cdsGetReport43Village.FieldByName('GARBAGE').AsString,true);



    fdm.cdsGetreport43Community_ActivityList.close;
    fdm.getCommunity_Activity(fdm.cdsGetReport43Village.FieldByName('VID').AsString);
    fdm.cdsGetreport43Community_ActivityList.open;
    dsGetReport43Community_ActivityList.DataSet:=FDM.cdsGetreport43Community_ActivityList;
    UniDBComboBox1.ItemIndex:=fdm.loadCmbItems(UniDBComboBox1.Items,'COMMUNITY_ACTIVITY','COMACTIVITY','43FILE_CODE','NAME1',FDM.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString,true);



    FDM.WriteLog('### Initial 31');
    fdm.cdsGetReport43SpecialPpList.close;
    fdm.getSpecialPpList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43SpecialPpList.open;
    dsGetReport43SpecialPpList.DataSet := FDM.cdsGetReport43SpecialPpList;
    cmbSpecialPpPPSPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbSpecialPpPPSPLACE.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString,true);
    PPSPECIAL.ItemIndex   := fdm.loadHospNameList2CmbItems(PPSPECIAL.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString,true);
    cmbSpecialPpSERVPLACE.ItemIndex :=  fdm.loadCmbItems(cmbSpecialPpSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString,true);



end;

procedure TfrmRp43Community.cmbDiagOpdClinicSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
  fdm.cdsGetReport43DiagnosisOpdListCLINIC.AsString:=TString(cmbDiagOpdClinic.Items.Objects[cmbDiagOpdClinic.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbDiagOpdDIAGCODEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);

end;

procedure TfrmRp43Community.cmbDiagOpdDIAGCODESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
    fdm.cdsGetReport43DiagnosisOpdListDIAGCODE.AsString:=TString(cmbDiagOpdDIAGCODE.Items.Objects[cmbDiagOpdDIAGCODE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbDiagOpdDIAGTYPESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
       fdm.cdsGetReport43DiagnosisOpdListDIAGTYPE.AsString:=TString(cmbDiagOpdDIAGTYPE.Items.Objects[cmbDiagOpdDIAGTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbEpiVACCINETYPESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43EpiList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43EpiList.edit;
      fdm.cdsGetReport43EpiList.FieldByName('VACCINETYPE').AsString:=TString(cmbEpiVACCINETYPE.Items.Objects[cmbEpiVACCINETYPE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeACONTROLSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('ACONTROL').AsString:=TString(cmbHomeACONTROL.Items.Objects[cmbHomeACONTROL.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeAMPURSelect(Sender: TObject);
begin
  inherited;
{    cmbHomeTAMBON.ItemIndex := fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str,fdm.cdsGetReport43HomeTAMBON.AsString,true);
  if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
    fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString:=TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str;
 }
  cmbHomeTAMBON.Items.Clear;

  cmbHomeTAMBON.ItemIndex
  := fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str
  ,fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;

  fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString    := RightStr(TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str,2);
  fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString   := RightStr(TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,2);


end;

procedure TfrmRp43Community.cmbHomeBCONTROLSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('BCONTROL').AsString:=TString(cmbHomeBCONTROL.Items.Objects[cmbHomeBCONTROL.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeCHANGWATSelect(Sender: TObject);
begin
  inherited;
{    cmbHomeAMPUR.ItemIndex:= fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,fdm.cdsGetReport43HomeAMPUR.AsString,true);

  if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
     fdm.cdsGetReport43HomeList.FieldByName('CHANGWAT').AsString:=TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str;
 }
  cmbHomeAMPUR.Items.Clear;
  cmbHomeAMPUR.ItemIndex := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString,true);

  cmbHomeTAMBON.Items.Clear;
  cmbHomeTAMBON.ItemIndex:= fdm.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str,TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str,fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;

  fdm.cdsGetReport43HomeList.FieldByName('CHANGWAT').AsString :=TString(cmbHomeCHANGWAT.Items.Objects[cmbHomeCHANGWAT.ItemIndex]).Str;
  fdm.cdsGetReport43HomeList.FieldByName('AMPUR').AsString    := RightStr(TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str,2);
  fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString   := RightStr(TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,2);

end;

procedure TfrmRp43Community.cmbHomeCHEMICALSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('CHEMICAL').AsString:=TString(cmbHomeCHEMICAL.Items.Objects[cmbHomeCHEMICAL.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeCLEANLINESSSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
      fdm.cdsGetReport43HomeList.FieldByName('CLEANLINESS').AsString:=TString(cmbHomeCLEANLINESS.Items.Objects[cmbHomeCLEANLINESS.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeDURABILITYSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
      fdm.cdsGetReport43HomeList.FieldByName('HomeDURABILITY').AsString:=TString(cmbHomeDURABILITY.Items.Objects[cmbHomeDURABILITY.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeGARBAGESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('GARBAGE').AsString:=TString(cmbHomeGARBAGE.Items.Objects[cmbHomeGARBAGE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeHOUSETYPESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('HOUSETYPE').AsString:=TString(cmbHomeHOUSETYPE.Items.Objects[cmbHomeHOUSETYPE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeHOUSINGSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('HOUSING').AsString:=TString(cmbHomeHOUSING.Items.Objects[cmbHomeHOUSING.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeLIGHTSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('LIGHT').AsString:=TString(cmbHomeLIGHT.Items.Objects[cmbHomeLIGHT.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeLOCATYPESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('LOCATYPE').AsString:=TString(cmbHomeLOCATYPE.Items.Objects[cmbHomeLOCATYPE.ItemIndex]).Str;
end;

procedure TfrmRp43Community.cmbHomeMFOODSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
      fdm.cdsGetReport43HomeList.FieldByName('MFOOD').AsString:=TString(cmbHomeMFOOD.Items.Objects[cmbHomeMFOOD.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeTAMBONSelect(Sender: TObject);
begin
  inherited;
{  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;

  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbHomeAMPUR.ItemIndex:= fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,true);
    cmbHomeCHANGWAT.ItemIndex:= fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
    fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString:=TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str;

  }
  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbHomeAMPUR.Items.Objects[cmbHomeAMPUR.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;

  cmbHomeAMPUR.Items.Clear;
  cmbHomeCHANGWAT.Items.Clear;

  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbHomeAMPUR.ItemIndex
      := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,true);
    cmbHomeCHANGWAT.ItemIndex
      := fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
  fdm.cdsGetReport43HomeList.FieldByName('TAMBON').AsString   := RightStr(TString(cmbHomeTAMBON.Items.Objects[cmbHomeTAMBON.ItemIndex]).Str,2);


end;

procedure TfrmRp43Community.cmbHomeTOILETSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('TOILET').AsString:=TString(cmbHomeTOILET.Items.Objects[cmbHomeTOILET.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeVENTILATIONSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('VENTILATION').AsString:=TString(cmbHomeVENTILATION.Items.Objects[cmbHomeVENTILATION.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeWATERSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('WATER').AsString:=TString(cmbHomeWATER.Items.Objects[cmbHomeWATER.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeWATERTMSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('WATERTM').AsString:=TString(cmbHomeWATERTM.Items.Objects[cmbHomeWATERTM.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbHomeWATERTYPESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43HomeList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43HomeList.edit;
       fdm.cdsGetReport43HomeList.FieldByName('WATERTYPE').AsString:=TString(cmbHomeWATERTYPE.Items.Objects[cmbHomeWATERTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.CmbINTIMESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
    fdm.cdsGetReport43ServiceList.FieldByName('INTIME').AsString:=TString(CmbINTIME.Items.Objects[CmbINTIME.ItemIndex]).Str;
end;

procedure TfrmRp43Community.CmbLOCATIONSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
    fdm.cdsGetReport43ServiceList.FieldByName('LOCATION').AsString:=TString(CmbLOCATION.Items.Objects[CmbLOCATION.ItemIndex]).Str;
end;

procedure TfrmRp43Community.cmbServiceCAUSEINSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
     fdm.cdsGetReport43ServiceList.FieldByName('CAUSEIN').AsString:=TString(cmbServiceCAUSEIN.Items.Objects[cmbServiceCAUSEIN.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbServiceCAUSEOUTSelect(Sender: TObject);
begin
  inherited;
      if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
       fdm.cdsGetReport43ServiceList.FieldByName('CAUSEOUT').AsString:=TString(cmbServiceCAUSEOUT.Items.Objects[cmbServiceCAUSEOUT.ItemIndex]).Str;
end;

procedure TfrmRp43Community.cmbServiceINSTYPESelect(Sender: TObject);
begin
  inherited;
     if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
     fdm.cdsGetReport43ServiceList.FieldByName('INSTYPE').AsString:=TString(cmbServiceINSTYPE.Items.Objects[cmbServiceINSTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbServiceMAINSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('MAIN').AsString:=TString(cmbServiceMAIN.Items.Objects[cmbServiceMAIN.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbServiceREFERINHOSPSelect(Sender: TObject);
begin
  inherited;
     if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('REFERINHOSP').AsString:= TString(cmbServiceREFERINHOSP.Items.Objects[cmbServiceREFERINHOSP.ItemIndex]).Str

end;

procedure TfrmRp43Community.cmbServiceREFEROUTHOSPSelect(Sender: TObject);
begin
  inherited;
     if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('REFEROUTHOSP').AsString:=TString(cmbServiceREFEROUTHOSP.Items.Objects[cmbServiceREFEROUTHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbServiceSERVPLACESelect(Sender: TObject);
begin
  inherited;
      if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
       fdm.cdsGetReport43ServiceList.FieldByName('SERVPLACE').AsString:=TString(cmbServiceSERVPLACE.Items.Objects[cmbServiceSERVPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43Community.cmbServiceTYPEINSelect(Sender: TObject);
begin
  inherited;
     if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('TYPEIN').AsString:=TString(cmbServiceTYPEIN.Items.Objects[cmbServiceTYPEIN.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbSpecialPpPPSPLACESelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
   fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString:=TString(cmbSpecialPpPPSPLACE.Items.Objects[cmbSpecialPpPPSPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.cmbSpecialPpSERVPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
  fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString:=TString(cmbSpecialPpSERVPLACE.Items.Objects[cmbSpecialPpSERVPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.CmbTYPEOUTSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
    fdm.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString:=TString(CmbTYPEOUT.Items.Objects[CmbTYPEOUT.ItemIndex]).Str;
end;

procedure TfrmRp43Community.dsGetReport43Community_ActivityListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
    if FDM.cdsGetreport43Community_ActivityList.RecordCount>0 then
    begin
     UniDBComboBox1.ItemIndex:=fdm.loadCmbItems(UniDBComboBox1.Items,'COMMUNITY_ACTIVITY','COMACTIVITY','43FILE_CODE','NAME1',FDM.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString,true);
    end;
end;

procedure TfrmRp43Community.dsGetReport43DentalListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if fdm.cdsGetReport43DentalList.RecordCount>0 then
  begin
    UniDBEdit8.ItemIndex:=fdm.loadCmbItems(UniDBEdit8.Items,'DENTAL','DENTTYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('DENTTYPE').AsString,true);
    UniDBEdit29.ItemIndex:=fdm.loadCmbItems(UniDBEdit29.Items,'DENTAL','GUM','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('GUM').AsString,true);
    UniDBEdit36.ItemIndex:=fdm.loadCmbItems(UniDBEdit36.Items,'*','SERVPLACE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('SERVPLACE').AsString,true);
    UniDBEdit39.ItemIndex:=fdm.loadCmbItems(UniDBEdit39.Items,'DENTAL','NEED_FLUORIDE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NEED_FLUORIDE').AsString,true);
    UniDBEdit43.ItemIndex:=fdm.loadCmbItems(UniDBEdit43.Items,'DENTAL','SCHOOLTYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('SCHOOLTYPE').AsString,true);
    UniDBEdit51.ItemIndex:=fdm.loadCmbItems(UniDBEdit51.Items,'DENTAL','NEED_SCALING','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NEED_SCALING').AsString,true);
    UniDBEdit53.ItemIndex:=fdm.loadCmbItems(UniDBEdit53.Items,'DENTAL','NPROSTHESIS','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NPROSTHESIS').AsString,true);
    UniDBEdit55.ItemIndex:=fdm.loadCmbItems(UniDBEdit55.Items,'DENTAL','CLASS','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('CLASS').AsString,true);
  end;

end;

procedure TfrmRp43Community.dsGetReport43DiagnosisOpdListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if fdm.cdsGetReport43DiagnosisOpdList.RecordCount>0 then
  begin
    cmbDiagOpdDIAGTYPE.ItemIndex := fdm.loadCmbItems(cmbDiagOpdDIAGTYPE.Items,'*','DIAGTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdlistDIAGTYPE.AsString,true);
    cmbDiagOpdClinic.ItemIndex := fdm.loadCmbItems(cmbDiagOpdClinic.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdlistCLINIC.AsString,true);
    cmbDiagOpdDIAGCODE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDiagOpdDIAGCODE.Items,'',fdm.cdsGetReport43DiagnosisOpdlistDIAGCODE.AsString,true);
  end;
end;

procedure TfrmRp43Community.dsGetReport43EpiListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if FDM.cdsGetReport43EpiList.RecordCount>0 then
    begin
      cmbEpiVACCINETYPE.ItemIndex:=fdm.loadCmbItems(cmbEpiVACCINETYPE.Items,'EPI','VACCINETYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43EpiList.FieldByName('VACCINETYPE').AsString,true);
      cmbEpiVACCINEPLACE.ItemIndex := fdm.loadHospNameList2CmbItems(cmbEpiVACCINEPLACE.Items,fdm.cdsGetReport43EpiList.FieldByName('VACCINEPLACE').AsString,true);
    end;
end;

procedure TfrmRp43Community.dsGetReport43SpecialPpListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
 if fdm.cdsGetReport43SpecialPpList.RecordCount>0 then
  begin
   cmbSpecialPpPPSPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbSpecialPpPPSPLACE.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString,true);
   cmbSpecialPpSERVPLACE.ItemIndex :=  fdm.loadCmbItems(cmbSpecialPpSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString,true);
   PPSPECIAL.ItemIndex   := fdm.loadHospNameList2CmbItems(PPSPECIAL.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString,true);
  end;
end;

procedure TfrmRp43Community.dsGetRport43Community_ServiceListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
 if fdm.cdsGetReport43Community_ServiceList.RecordCount>0 then
  begin
    UniDBComboBox2.ItemIndex:=fdm.loadCmbItems(UniDBComboBox2.Items,'COMMUNITY_SERVICE','COMSERVICE','43FILE_CODE','NAME1',FDM.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString,true);
  end;

end;

procedure TfrmRp43Community.dsReport43ServiceListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (FDM.cdsGetReport43ServiceList.RecordCount>0 ) and not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then
  begin
    cmbServiceREFERINHOSP.ItemIndex := fdm.loadHospNameList2CmbItems(cmbServiceREFERINHOSP.Items,fdm.cdsGetReport43ServiceList.FieldByName('REFERINHOSP').AsString,true);
    cmbServiceSERVPLACE.ItemIndex   := fdm.loadCmbItems(cmbServiceSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('SERVPLACE').AsString,true);
    cmbServiceMAIN.ItemIndex        := fdm.loadHospNameList2CmbItems(cmbServiceMAIN.Items,fdm.cdsGetReport43ServiceList.FieldByName('MAIN').AsString,true);
    cmbServiceCAUSEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEIN.Items,'SERVICE','CAUSEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('CAUSEIN').AsString,true);
    cmbServiceINSTYPE.ItemIndex   := fdm.loadCmbItems(cmbServiceINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('INSTYPE').AsString,true);
    cmbServiceTYPEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceTYPEIN.Items,'SERVICE','TYPEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('TYPEIN').AsString,true);
    cmbServiceREFEROUTHOSP.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbServiceREFEROUTHOSP.Items,fdm.cdsGetReport43ServiceList.FieldByName('REFEROUTHOSP').AsString,true);
    cmbServiceCAUSEOUT.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEOUT.Items,'SERVICE','CAUSEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('CAUSEOUT').AsString,true);
    CmbLOCATION.ItemIndex   := fdm.loadCmbItems(CmbLOCATION.Items,'SERVICE','LOCATION','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('LOCATION').AsString,true);
    CmbINTIME.ItemIndex   := fdm.loadCmbItems(CmbINTIME.Items,'SERVICE','INTIME','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('INTIME').AsString,true);
    CmbTYPEOUT.ItemIndex   := fdm.loadCmbItems(CmbTYPEOUT.Items,'SERVICE','TYPEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString,true);
  end;

end;

procedure TfrmRp43Community.edSearchCIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
  begin
    btnRefresh.ScreenMask.InitMask;
    btnRefresh.Click;
   end;
end;

procedure TfrmRp43Community.GARBAGESelect(Sender: TObject);
begin
  inherited;

   if not (fdm.cdsGetReport43Village.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Village.edit;
   fdm.cdsGetReport43Village.FieldByName('GARBAGE').AsString:=TString(GARBAGE.Items.Objects[GARBAGE.ItemIndex]).Str;

end;

procedure TfrmRp43Community.PPSPECIALSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
   fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString:=TString(PPSPECIAL.Items.Objects[PPSPECIAL.ItemIndex]).Str;

end;

procedure TfrmRp43Community.RsetComboBox;
var
  I: Integer;
begin
for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] is TUniComboBox ) then
      begin
        if  (Components[I]  as TUniComboBox).Enabled then
          if  (Components[I]  as TUniComboBox).Tag<>99 then
          begin
            (Components[I]  as TUniComboBox).Items.Clear;
            (Components[I]  as TUniComboBox).Text:='';
          end;
      end;
  end;
end;

procedure TfrmRp43Community.UniButton10Click(Sender: TObject);
begin
  inherited;
  if not (FDM.cdsGetreport43Community_ActivityList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetreport43Community_ActivityList.Append;
    dsGetReport43Community_ActivityList.DataSet.FieldByName('VID').AsString:=FDM.cdsGetReport43Village.FieldByName('VID').AsString;
    dsGetReport43Community_ActivityList.DataSet.FieldByName('HOSPCODE').AsString:='13754';
    dsGetReport43Community_ActivityList.DataSet.FieldByName('COMACTIVITY').AsString:='2A01100';
    dsGetReport43Community_ActivityList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;
  end;
end;

procedure TfrmRp43Community.UniButton12Click(Sender: TObject);
begin
  inherited;


  if not (FDM.cdsGetReport43Village.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Village.Append;
    dsGetreport43VillageList.DataSet.FieldByName('VID').AsString:=RightStr(Trim(fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString),2) + RightStr(trim(fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString),2) + RightStr(Trim(fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString),2) + RightStr(trim(fdm.cdsGetReport43AddressType1.FieldByName('VILLAGE').AsString),2);
    dsGetreport43VillageList.DataSet.FieldByName('WASTEWATER').AsString:='0';
    dsGetreport43VillageList.DataSet.FieldByName('GARBAGE').AsString:='0';
    dsGetreport43VillageList.DataSet.FieldByName('HOSPCODE').AsString:='13754';
    dsGetreport43VillageList.DataSet.FieldByName('OUTDATE').AsFloat:= NOW;
    dsGetreport43VillageList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;
  end;
end;

procedure TfrmRp43Community.UniButton13Click(Sender: TObject);
begin
  inherited;
 if not FDM.cdsGetReport43SpecialPpList.Active then
  begin
    FDM.getSpecialPpList(0,0);
    FDM.cdsGetReport43SpecialPpList.Open;
  end;


  if not (FDM.cdsGetReport43SpecialPpList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43SpecialPpList.Append;
    dsGetReport43SpecialPpList.DataSet.FieldByName('PPSPECIAL').AsString:='13754';
    dsGetReport43SpecialPpList.DataSet.FieldByName('SERVPLACE').AsString:='1';
    dsGetReport43SpecialPpList.DataSet.FieldByName('PPSPLACE').AsString:='14920';

    dsGetReport43SpecialPpList.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43SpecialPpList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43SpecialPpList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43SpecialPpList.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43SpecialPpList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;
  end;
end;

procedure TfrmRp43Community.UniButton16Click(Sender: TObject);
begin
  inherited;
 {if not FDM.cdsGetReport43HomeList.Active then
  begin
    FDM.getHomeList('0','0','0');
    FDM.cdsGetReport43HomeList.Open;
  end;
 }

  if not (FDM.cdsGetReport43HomeList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43HomeList.Append;

    dsGetReport43HomeList.DataSet.FieldByName('HOUSE_ID').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('HOUSE_ID').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('HOUSETYPE').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('ROOMNO').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('ROOMNO').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('CONDO').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('CONDO').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('HOUSE').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('HOUSENO').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('SOISUB').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('SOISUB').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('SOIMAIN').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('SOIMAIN').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('ROAD').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('ROAD').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('VILLANAME').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('VILLANAME').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('VILLAGE').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('VILLAGE').AsString;
  //  dsGetReport43HomeList.DataSet.FieldByName('TAMBON').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString;
  // dsGetReport43HomeList.DataSet.FieldByName('AMPUR').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString;
  //  dsGetReport43HomeList.DataSet.FieldByName('CHANGWAT').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('TELEPHONE').AsString:=FDM.cdsGetReport43AddressType1.FieldByName('TELEPHONE').AsString;
    cmbHomeTAMBON.ItemIndex:=FDM.loadTumbonList2CmbItems(cmbHomeTAMBON.Items,'','',FDM.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString + FDM.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString + FDM.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString,true);
    cmbHomeAMPUR.ItemIndex:= fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,'',FDM.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString + FDM.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString,true);
   // cmbHomeAMPUR.ItemIndex    := fdm.loadAmpList2CmbItems(cmbHomeAMPUR.Items,'',defCode,true);
    cmbHomeCHANGWAT.ItemIndex:= fdm.loadProviceList2CmbItems(cmbHomeCHANGWAT.Items,0,FDM.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString,true);

    dsGetReport43HomeList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43HomeList.DataSet.FieldByName('D_UPDATE').AsFloat:= Now;
  end;
end;

procedure TfrmRp43Community.UniButton17Click(Sender: TObject);
begin
  inherited;
    if not (FDM.cdsGetReport43HomeList.State in [dsedit,dsinsert]) then
  begin
   { PPSPECIAL.Enabled:=True;
    cmbSpecialPpSERVPLACE.Enabled:=True;
    cmbSpecialPpPPSPLACE.Enabled:=True;
    UniDBEdit125.Enabled:=True;
    UniDBEdit126.Enabled:=True;
    UniDBEdit127.Enabled:=True;     }
  end
end;

procedure TfrmRp43Community.UniButton5Click(Sender: TObject);
var
PTEETH,PCARIES,PFILLING,PEXTRACT,DTEETH,DCARIES,DFILLING,DEXTRACT
,NEED_SEALANT,NEED_PFILLING,NEED_DFILLING,NEED_PEXTRACT,NEED_DEXTRACT
,PERMANENT_PERMANENT,PERMANENT_PROSTHESIS,PROSTHESIS_PROSTHESIS :Integer;
DENTTYPE,SERVPLACE,NEED_FLUORIDE,NEED_SCALING,NPROSTHESIS,GUM,SCHOOLTYPE,CLASS1:string;

begin
  inherited;
 {  if not FDM.cdsGetReport43DentalList.Active then
    begin
      FDM.getDentalList(0,0);
      FDM.cdsGetReport43DentalList.Open;
    end;
  }
  FDM.cdsGetReport43DentalList.Last;

    PTEETH                   :=dsGetReport43DentalList.DataSet.FieldByName('PTEETH').AsInteger;
    PCARIES                  :=dsGetReport43DentalList.DataSet.FieldByName('PCARIES').AsInteger;
    PFILLING                 :=dsGetReport43DentalList.DataSet.FieldByName('PFILLING').AsInteger;
    PEXTRACT                 :=dsGetReport43DentalList.DataSet.FieldByName('PEXTRACT').AsInteger;
    DTEETH                   :=dsGetReport43DentalList.DataSet.FieldByName('DTEETH').AsInteger;
    DCARIES                  :=dsGetReport43DentalList.DataSet.FieldByName('DCARIES').AsInteger;
    DFILLING                 :=dsGetReport43DentalList.DataSet.FieldByName('DFILLING').AsInteger;
    DEXTRACT                 :=dsGetReport43DentalList.DataSet.FieldByName('DEXTRACT').AsInteger;
    NEED_SEALANT             :=dsGetReport43DentalList.DataSet.FieldByName('NEED_SEALANT').AsInteger;
    NEED_PFILLING            :=dsGetReport43DentalList.DataSet.FieldByName('NEED_PFILLING').AsInteger;
    NEED_DFILLING            :=dsGetReport43DentalList.DataSet.FieldByName('NEED_DFILLING').AsInteger;
    NEED_PEXTRACT            :=dsGetReport43DentalList.DataSet.FieldByName('NEED_PEXTRACT').AsInteger;
    NEED_DEXTRACT            :=dsGetReport43DentalList.DataSet.FieldByName('NEED_DEXTRACT').AsInteger;
    PERMANENT_PERMANENT      :=dsGetReport43DentalList.DataSet.FieldByName('PERMANENT_PERMANENT').AsInteger;
    PERMANENT_PROSTHESIS     :=dsGetReport43DentalList.DataSet.FieldByName('PERMANENT_PROSTHESIS').AsInteger;
    PROSTHESIS_PROSTHESIS    :=dsGetReport43DentalList.DataSet.FieldByName('PROSTHESIS_PROSTHESIS').AsInteger;

    DENTTYPE                 :=dsGetReport43DentalList.DataSet.FieldByName('DENTTYPE').AsString;
    SERVPLACE                :=dsGetReport43DentalList.DataSet.FieldByName('SERVPLACE').AsString;
    NEED_FLUORIDE            :=dsGetReport43DentalList.DataSet.FieldByName('NEED_FLUORIDE').AsString;
    NEED_SCALING             :=dsGetReport43DentalList.DataSet.FieldByName('NEED_SCALING').AsString;
    NPROSTHESIS              :=dsGetReport43DentalList.DataSet.FieldByName('NPROSTHESIS').AsString;
    GUM                      :=dsGetReport43DentalList.DataSet.FieldByName('GUM').AsString;
    SCHOOLTYPE               :=dsGetReport43DentalList.DataSet.FieldByName('SCHOOLTYPE').AsString;
    CLASS1                   :=dsGetReport43DentalList.DataSet.FieldByName('CLASS').AsString;


  if not(FDM.cdsGetReport43DentalList.State in [dsEdit,dsinsert]) then
  begin
    FDM.cdsGetReport43DentalList.Append;
    dsGetReport43DentalList.DataSet.FieldByName('PTEETH').AsInteger:=PTEETH;
    dsGetReport43DentalList.DataSet.FieldByName('PCARIES').AsInteger:=PCARIES;
    dsGetReport43DentalList.DataSet.FieldByName('PFILLING').AsInteger:=PFILLING;
    dsGetReport43DentalList.DataSet.FieldByName('PEXTRACT').AsInteger:=PEXTRACT;
    dsGetReport43DentalList.DataSet.FieldByName('DTEETH').AsInteger:=DTEETH;
    dsGetReport43DentalList.DataSet.FieldByName('DCARIES').AsInteger:=DCARIES;
    dsGetReport43DentalList.DataSet.FieldByName('DFILLING').AsInteger:=DFILLING;
    dsGetReport43DentalList.DataSet.FieldByName('DEXTRACT').AsInteger:=DEXTRACT;
    dsGetReport43DentalList.DataSet.FieldByName('NEED_SEALANT').AsInteger:=NEED_SEALANT;
    dsGetReport43DentalList.DataSet.FieldByName('NEED_PFILLING').AsInteger:=NEED_PFILLING;
    dsGetReport43DentalList.DataSet.FieldByName('NEED_DFILLING').AsInteger:=NEED_DFILLING;
    dsGetReport43DentalList.DataSet.FieldByName('NEED_PEXTRACT').AsInteger:=NEED_PEXTRACT;
    dsGetReport43DentalList.DataSet.FieldByName('NEED_DEXTRACT').AsInteger:=NEED_DEXTRACT;
    dsGetReport43DentalList.DataSet.FieldByName('PERMANENT_PERMANENT').AsInteger:=PERMANENT_PERMANENT;
    dsGetReport43DentalList.DataSet.FieldByName('PERMANENT_PROSTHESIS').AsInteger:=PERMANENT_PROSTHESIS;
    dsGetReport43DentalList.DataSet.FieldByName('PROSTHESIS_PROSTHESIS').AsInteger:=PROSTHESIS_PROSTHESIS;
    dsGetReport43DentalList.DataSet.FieldByName('DENTTYPE').AsString:=DENTTYPE;
    dsGetReport43DentalList.DataSet.FieldByName('SERVPLACE').AsString:=DENTTYPE;
    dsGetReport43DentalList.DataSet.FieldByName('NEED_FLUORIDE').AsString:=DENTTYPE;
    dsGetReport43DentalList.DataSet.FieldByName('NEED_SCALING').AsString:=DENTTYPE;
    dsGetReport43DentalList.DataSet.FieldByName('NPROSTHESIS').AsString:=DENTTYPE;
    dsGetReport43DentalList.DataSet.FieldByName('GUM').AsString:=DENTTYPE;
    dsGetReport43DentalList.DataSet.FieldByName('SCHOOLTYPE').AsString:=DENTTYPE;
    dsGetReport43DentalList.DataSet.FieldByName('CLASS').AsString:=DENTTYPE;

    UniDBEdit8.ItemIndex:=fdm.loadCmbItems(UniDBEdit8.Items,'DENTAL','DENTTYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('DENTTYPE').AsString,true);
    UniDBEdit29.ItemIndex:=fdm.loadCmbItems(UniDBEdit29.Items,'DENTAL','GUM','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('GUM').AsString,true);
    UniDBEdit36.ItemIndex:=fdm.loadCmbItems(UniDBEdit36.Items,'*','SERVPLACE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('SERVPLACE').AsString,true);
    UniDBEdit39.ItemIndex:=fdm.loadCmbItems(UniDBEdit39.Items,'DENTAL','NEED_FLUORIDE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NEED_FLUORIDE').AsString,true);
    UniDBEdit43.ItemIndex:=fdm.loadCmbItems(UniDBEdit43.Items,'DENTAL','SCHOOLTYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('SCHOOLTYPE').AsString,true);
    UniDBEdit51.ItemIndex:=fdm.loadCmbItems(UniDBEdit51.Items,'DENTAL','NEED_SCALING','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NEED_SCALING').AsString,true);
    UniDBEdit53.ItemIndex:=fdm.loadCmbItems(UniDBEdit53.Items,'DENTAL','NPROSTHESIS','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('NPROSTHESIS').AsString,true);
    UniDBEdit55.ItemIndex:=fdm.loadCmbItems(UniDBEdit55.Items,'DENTAL','CLASS','43FILE_CODE','NAME1',FDM.cdsGetReport43DentalList.FieldByName('CLASS').AsString,true);



    {.cdsGetReport43DentalList.FieldByName('DENTTYPE').AsString:='5';
    FDM.cdsGetReport43DentalList.FieldByName('SERVPLACE').AsString:='1';
    FDM.cdsGetReport43DentalList.FieldByName('NEED_FLUORIDE').AsString:='2';
    FDM.cdsGetReport43DentalList.FieldByName('NEED_SCALING').AsString:='2';
    FDM.cdsGetReport43DentalList.FieldByName('NPROSTHESIS').AsString:='4';
    FDM.cdsGetReport43DentalList.FieldByName('GUM').AsString:='0';
    FDM.cdsGetReport43DentalList.FieldByName('SCHOOLTYPE').AsString:='1';
    FDM.cdsGetReport43DentalList.FieldByName('CLASS').AsString:='1';
    }
    dsGetReport43DentalList.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43DentalList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43DentalList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43DentalList.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43DentalList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;
  end;
end;

procedure TfrmRp43Community.UniButton8Click(Sender: TObject);
begin
  inherited;
    if not FDM.cdsGetReport43Community_ServiceList.Active then
    begin
      FDM.getCommunity_ServiceList(0,0);
      FDM.cdsGetReport43Community_ServiceList.Open;
    end;


  if not (FDM.cdsGetReport43Community_ServiceList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43Community_ServiceList.Append;
    FDM.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString:='1A01101';

    dsGetRport43Community_ServiceList.DataSet.FieldByName('SEQ').AsInteger:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsInteger;
    dsGetRport43Community_ServiceList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetRport43Community_ServiceList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetRport43Community_ServiceList.DataSet.FieldByName('PID').AsInteger:=dsReport43ServiceList.DataSet.FieldByName('PID').AsInteger;
    dsGetRport43Community_ServiceList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;
  end;
end;

procedure TfrmRp43Community.UniDBComboBox1Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetreport43Community_ActivityList.State in [dsInsert,dsedit] ) then  fdm.cdsGetreport43Community_ActivityList.edit;
   fdm.cdsGetreport43Community_ActivityList.FieldByName('COMACTIVITY').AsString:=TString(UniDBComboBox1.Items.Objects[UniDBComboBox1.ItemIndex]).Str;

end;

procedure TfrmRp43Community.UniDBComboBox2Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Community_ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Community_ServiceList.edit;
   fdm.cdsGetReport43Community_ServiceList.FieldByName('COMSERVICE').AsString:=TString(UniDBComboBox2.Items.Objects[UniDBComboBox2.ItemIndex]).Str;

end;

procedure TfrmRp43Community.UniDBEdit29Select(Sender: TObject);
begin
  inherited;
       if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
       fdm.cdsGetReport43DentalList.FieldByName('GUM').AsString:=TString(UniDBEdit29.Items.Objects[UniDBEdit29.ItemIndex]).Str;
end;

procedure TfrmRp43Community.UniDBEdit36Select(Sender: TObject);
begin
  inherited;
       if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
       fdm.cdsGetReport43DentalList.FieldByName('SERVPLACE').AsString:=TString(UniDBEdit36.Items.Objects[UniDBEdit36.ItemIndex]).Str;

end;

procedure TfrmRp43Community.UniDBEdit39Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
   fdm.cdsGetReport43DentalList.FieldByName('NEED_FLUORIDE').AsString:=TString(UniDBEdit39.Items.Objects[UniDBEdit39.ItemIndex]).Str;

end;

procedure TfrmRp43Community.UniDBEdit43Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
   fdm.cdsGetReport43DentalList.FieldByName('SCHOOLTYPE').AsString:=TString(UniDBEdit43.Items.Objects[UniDBEdit43.ItemIndex]).Str;
end;

procedure TfrmRp43Community.UniDBEdit51Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
   fdm.cdsGetReport43DentalList.FieldByName('NEED_SCALING').AsString:=TString(UniDBEdit51.Items.Objects[UniDBEdit51.ItemIndex]).Str;
end;

procedure TfrmRp43Community.UniDBEdit53Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
   fdm.cdsGetReport43DentalList.FieldByName('NPROSTHESIS').AsString:=TString(UniDBEdit53.Items.Objects[UniDBEdit53.ItemIndex]).Str;

end;

procedure TfrmRp43Community.UniDBEdit55Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
   fdm.cdsGetReport43DentalList.FieldByName('CLASS').AsString:=TString(UniDBEdit55.Items.Objects[UniDBEdit55.ItemIndex]).Str;
end;

procedure TfrmRp43Community.UniDBEdit8Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43DentalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DentalList.edit;
   fdm.cdsGetReport43DentalList.FieldByName('DENTTYPE').AsString:=TString(UniDBEdit8.Items.Objects[UniDBEdit8.ItemIndex]).Str;

end;

procedure TfrmRp43Community.UniFormCreate(Sender: TObject);
var k:integer;
begin
  inherited;

 FUserSession :=  UniMainModule();
 FDM:= FUserSession.DS43FileDM;

  if (WebMode) then
    begin
      WebForm.ExtWindow.Draggable := False;
      WebForm.ExtWindow.Resizable := False;
    end;

////////////////////////////////////////////////////////////////////////////////
{$IFNDEF OBSS}
  FDM.UserID := 'admin';//UniApplication.Cookies.Values['userid'];
  FDM.UserPWD := 'admin';//UniApplication.Cookies.Values['userpwd'];

  {$IFDEF RELEASE}
  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    UniServerModule.ServerMessages.TerminateTemplate.Text :=
      '<html> ' +
      '<body bgcolor="#E6E6FA"> ' +
      '<p style="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p style="text-align:center;color:#0000A0">please sign-on using Application Center.</p> <br>' +
      '<p style="text-align:center;color:#0000A0">ระบบต้องการสิทธิ์ในการเข้าถึงโปรแกรม</p> ' +
      '<p style="text-align:center;color:#0000A0">กรุณา Sign-On เข้าใช้งานโดยใช้ Application Center.</p> ' +
      '</body> ' +
      '</html>';
    UniApplication.Terminate();
    Exit;
  end;
  {$ENDIF}
  {$IFDEF DEBUG}
  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    FDM.UserID := 'admin';
    FDM.UserPWD := 'admin';
  end;
  {$ENDIF}
{$ELSE}
  FDM.UserID := UniMainModule.UserID;

  FDM.UserPWD := UniMainModule.UserPWD;
{$ENDIF}

  FDM.LogIn(FDM.UserID, FDM.UserPWD);
////////////////////////////////////////////////////////////////////////////////

  {
  BtnView.Visible := True;
  btnAdd.Visible := True;
  btnDelete.Visible := True;
  btnEdit.Visible := True;
 }

{$IFDEF FSLOSHP}
  btnBack.Caption := 'ปิดโปรแกรม';
  btnBack.Visible := True;
{$ELSE}
  btnBack.Visible := False;
{$ENDIF}
end;

procedure TfrmRp43Community.UniFormShow(Sender: TObject);
begin
  inherited;
  RsetComboBox;

  if UniApplication.Parameters.Values['PID']<>'' then
  begin
    UniTimerAutoGet.Enabled:=true;
  end;
end;

procedure TfrmRp43Community.UniPageControl1Change(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43DiagnosisOpdList.Active then
  begin
    FDM.getDiagnosisOpd(0,0);
    FDM.cdsGetReport43DiagnosisOpdList.Open;
  end;


  if not (FDM.cdsGetReport43DiagnosisOpdList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43DiagnosisOpdList.Append;
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('DIAGTYPE').AsString:='0';
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('Clinic').AsString:='01';
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('DIAGCODE').AsString:='S930';
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43DiagnosisOpdList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;

  end;
end;

procedure TfrmRp43Community.WASTEWATERSelect(Sender: TObject);
begin
  inherited;
 if not (fdm.cdsGetReport43Village.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Village.edit;
    fdm.cdsGetReport43Village.FieldByName('WASTEWATER').AsString:=TString(WASTEWATER.Items.Objects[WASTEWATER.ItemIndex]).Str;

end;

end.
