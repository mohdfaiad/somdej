unit Rp43ThaiMassage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainDataFormClass, uniGUIClasses,uniGUIAbstractClasses,
  uniScreenMask, uniButton, Vcl.Imaging.GIFImg, uniImage,
  uniGUIBaseClasses, uniPanel, uniPageControl, uniMultiItem, uniComboBox,
  uniDBEdit, uniLabel, uniEdit, uniBasicGrid, uniDBGrid, uniBitBtn, Data.DB,DS43FileIntfDM,MainModuleEx,
  uniTimer, uniDateTimePicker, uniDBDateTimePicker;

type
  TfrmRp43ThaiMassage = class(TMainDataForm)
    UniPanel1: TUniPanel;
    btnRefresh: TUniButton;
    edSearchCID: TUniEdit;
    UniButton1: TUniButton;
    UniLabel2: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel5: TUniLabel;
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
    UniLabel1: TUniLabel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPageControl2: TUniPageControl;
    UniTabSheet2: TUniTabSheet;
    UniDBEdit7: TUniDBEdit;
    cmbServiceTYPEIN: TUniComboBox;
    cmbServiceINSTYPE: TUniComboBox;
    cmbServiceCAUSEIN: TUniComboBox;
    cmbServiceMAIN: TUniComboBox;
    cmbServiceREFERINHOSP: TUniComboBox;
    UniLabel22: TUniLabel;
    UniDBEdit18: TUniDBEdit;
    UniLabel21: TUniLabel;
    UniLabel20: TUniLabel;
    UniDBEdit15: TUniDBDateTimePicker;
    UniLabel19: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel16: TUniLabel;
    cmbInTime: TUniComboBox;
    UniLabel15: TUniLabel;
    UniLabel14: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel13: TUniLabel;
    cmbLocation: TUniComboBox;
    UniLabel12: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniDBEdit20: TUniDBEdit;
    UniLabel25: TUniLabel;
    CmbTYPEOUT: TUniComboBox;
    UniLabel26: TUniLabel;
    UniDBEdit22: TUniDBEdit;
    UniLabel27: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    UniDBEdit24: TUniDBEdit;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniLabel30: TUniLabel;
    UniLabel35: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    cmbServiceSERVPLACE: TUniComboBox;
    cmbServiceREFEROUTHOSP: TUniComboBox;
    UniLabel31: TUniLabel;
    UniDBEdit27: TUniDBEdit;
    UniDBEdit28: TUniDBEdit;
    UniLabel32: TUniLabel;
    UniLabel33: TUniLabel;
    UniDBEdit30: TUniDBEdit;
    UniLabel34: TUniLabel;
    cmbServiceCAUSEOUT: TUniComboBox;
    btnAddNewLabor: TUniButton;
    UniButton4: TUniButton;
    UniDBGrid2: TUniDBGrid;
    UniTabSheet3: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniLabel45: TUniLabel;
    SEQ: TUniDBEdit;
    UniLabel46: TUniLabel;
    UniLabel47: TUniLabel;
    UniLabel49: TUniLabel;
    UniLabel50: TUniLabel;
    UniLabel51: TUniLabel;
    PROVIDER: TUniDBEdit;
    cmbDiagOpdDIAGTYPE: TUniComboBox;
    cmbDiagOpdClinic: TUniComboBox;
    cmbDiagOpdDIAGCODE: TUniComboBox;
    UniDBGrid3: TUniDBGrid;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniTabSheet4: TUniTabSheet;
    UniPanel5: TUniPanel;
    UniLabel75: TUniLabel;
    UniDBEdit47: TUniDBEdit;
    UniLabel76: TUniLabel;
    UniLabel77: TUniLabel;
    UniLabel78: TUniLabel;
    SERVICEPRICE: TUniDBEdit;
    UniLabel79: TUniLabel;
    UniLabel80: TUniLabel;
    UniDBEdit52: TUniDBEdit;
    cmbProcedureOpdCLINIC: TUniComboBox;
    cmbProcedureOpdPROCEDCODE: TUniComboBox;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniDBGrid4: TUniDBGrid;
    UniTabSheet5: TUniTabSheet;
    UniPanel6: TUniPanel;
    DRUGCOST: TUniDBEdit;
    cmbDrugOpdCLINIC: TUniComboBox;
    UniDBEdit16: TUniDBEdit;
    UniLabel37: TUniLabel;
    UniLabel36: TUniLabel;
    UniDBEdit14: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniLabel98: TUniLabel;
    UNIT_D: TUniDBEdit;
    UniLabel97: TUniLabel;
    AMOUNT: TUniDBEdit;
    UniLabel96: TUniLabel;
    DNAME: TUniDBEdit;
    UniLabel95: TUniLabel;
    UniLabel94: TUniLabel;
    DRUGPRICE: TUniDBEdit;
    UniLabel93: TUniLabel;
    DIDSTD: TUniDBEdit;
    UniLabel92: TUniLabel;
    UniDBEdit57: TUniDBEdit;
    UniLabel90: TUniLabel;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniDBGrid5: TUniDBGrid;
    UniTabSheet6: TUniTabSheet;
    UniPanel7: TUniPanel;
    UniDBEdit135: TUniDBEdit;
    UniLabel183: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel232: TUniLabel;
    cmbChargeOpdCLINIC: TUniComboBox;
    UniLabel233: TUniLabel;
    cmbChargeOpdINSTYPE: TUniComboBox;
    UniLabel234: TUniLabel;
    cmbChargeOpdCHARGEITEM: TUniComboBox;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniDBGrid6: TUniDBGrid;
    UniTabSheet7: TUniTabSheet;
    UniPanel8: TUniPanel;
    UniLabel48: TUniLabel;
    AN: TUniDBEdit;
    UniLabel53: TUniLabel;
    UniDBEdit32: TUniDBEdit;
    UniLabel56: TUniLabel;
    UniLabel57: TUniLabel;
    UniLabel58: TUniLabel;
    UniDBEdit35: TUniDBEdit;
    UniLabel60: TUniLabel;
    UniLabel61: TUniLabel;
    UniLabel63: TUniLabel;
    cmbAppAPTYPE: TUniComboBox;
    cmbAppCLINIC: TUniComboBox;
    cmbAppIcd10: TUniComboBox;
    UniButton11: TUniButton;
    UniButton12: TUniButton;
    UniDBGrid7: TUniDBGrid;
    UniTabSheet8: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    dsReport43Service: TDataSource;
    dsGetReport43ChargeOpdList: TDataSource;
    dsGetReport43DrugListOpd: TDataSource;
    dsReport43Person: TDataSource;
    dsGetReport43DiagnosisOpdList: TDataSource;
    dsReport43ServiceList: TDataSource;
    dsGetReport43ProcedureOpdList: TDataSource;
    UniScreenMask1: TUniScreenMask;
    UniTimerRefresh: TUniTimer;
    UniTimerAutoGet: TUniTimer;
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
    dsGetReport43AppointmentList: TDataSource;
    dsGetReport43SpecialPpList: TDataSource;
    scRefresh: TUniScreenMask;
    UniDBEdit12: TUniDBDateTimePicker;
    DATE_SERV: TUniDBDateTimePicker;
    UniDBEdit50: TUniDBDateTimePicker;
    UniDBEdit60: TUniDBDateTimePicker;
    UniDBEdit10: TUniDBDateTimePicker;
    UniDBEdit17: TUniDBDateTimePicker;
    UniDBEdit126: TUniDBDateTimePicker;
    UniDBEdit33: TUniDBDateTimePicker;
    CHARGELIST: TUniDBEdit;
    PAYPRICE: TUniDBEdit;
    PRICE: TUniDBEdit;
    COST: TUniDBEdit;
    QUANTITY: TUniDBEdit;
    UniLabel38: TUniLabel;
    UniLabel39: TUniLabel;
    UniLabel41: TUniLabel;
    UniLabel42: TUniLabel;
    UniLabel43: TUniLabel;
    ORDER_NO: TUniDBEdit;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure cmbDiagOpdDIAGCODESelect(Sender: TObject);
    procedure btnAddNewLaborClick(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton13Click(Sender: TObject);
    procedure dsGetReport43DiagnosisOpdListDataChange(Sender: TObject;
      Field: TField);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure dsGetReport43ProcedureOpdListDataChange(Sender: TObject;
      Field: TField);
    procedure UniButton6Click(Sender: TObject);
    procedure dsGetReport43DrugListOpdDataChange(Sender: TObject;
      Field: TField);
    procedure UniTimerRefreshTimer(Sender: TObject);
    procedure UniTimerAutoGetTimer(Sender: TObject);
    procedure cmbAppIcd10Select(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
    procedure UniButton14Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure cmbDiagOpdDIAGCODEKeyPress(Sender: TObject; var Key: Char);
    procedure btnSyncClick(Sender: TObject);
    procedure cmbServiceREFERINHOSPSelect(Sender: TObject);
    procedure cmbServiceSERVPLACESelect(Sender: TObject);
    procedure cmbServiceINSTYPESelect(Sender: TObject);
    procedure cmbServiceMAINSelect(Sender: TObject);
    procedure cmbServiceTYPEINSelect(Sender: TObject);
    procedure cmbServiceREFEROUTHOSPSelect(Sender: TObject);
    procedure cmbServiceCAUSEINSelect(Sender: TObject);
    procedure cmbServiceCAUSEOUTSelect(Sender: TObject);
    procedure cmbDiagOpdDIAGTYPESelect(Sender: TObject);
    procedure cmbDiagOpdClinicSelect(Sender: TObject);
    procedure cmbProcedureOpdPROCEDCODESelect(Sender: TObject);
    procedure cmbProcedureOpdCLINICSelect(Sender: TObject);
    procedure cmbDrugOpdCLINICSelect(Sender: TObject);
    procedure cmbChargeOpdCLINICSelect(Sender: TObject);
    procedure cmbChargeOpdINSTYPESelect(Sender: TObject);
    procedure cmbAppAPTYPESelect(Sender: TObject);
    procedure cmbAppCLINICSelect(Sender: TObject);
    procedure cmbSpecialPpSERVPLACESelect(Sender: TObject);
    procedure PPSPECIALSelect(Sender: TObject);
    procedure cmbSpecialPpPPSPLACESelect(Sender: TObject);
    procedure dsReport43ServiceListDataChange(Sender: TObject; Field: TField);
    procedure cmbAppIcd10KeyPress(Sender: TObject; var Key: Char);
    procedure dsGetReport43SpecialPpListDataChange(Sender: TObject;
      Field: TField);
    procedure cmbLocationSelect(Sender: TObject);
    procedure cmbInTimeSelect(Sender: TObject);
    procedure edSearchCIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbTYPEOUTSelect(Sender: TObject);
  private
    FDM: TDS43FileDM;
    FUserSession: TUniMainModule;
    procedure RsetComboBox;
  public
      property DM : TDS43FileDM  read FDM write FDM;
  end;

var
  frmRp43ThaiMassage: TfrmRp43ThaiMassage;

implementation

{$R *.dfm}

uses XeUniGUIComponents,
  ServerModuleEx,DS43FileIntf;

procedure TfrmRp43ThaiMassage.btnAddNewLaborClick(Sender: TObject);
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
    cmbServiceCAUSEIN.ItemIndex     := fdm.loadCmbItems(cmbServiceCAUSEIN.Items,'SERVICE','CAUSEIN','43FILE_CODE','NAME1','1',true);
    cmbServiceINSTYPE.ItemIndex     := fdm.loadCmbItems(cmbServiceINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1','1',true);
    cmbServiceTYPEIN.ItemIndex      := fdm.loadCmbItems(cmbServiceTYPEIN.Items,'SERVICE','TYPEIN','43FILE_CODE','NAME1','1',true);
    cmbServiceREFEROUTHOSP.ItemIndex:= fdm.loadHospNameList2CmbItems(cmbServiceREFEROUTHOSP.Items,'13754',true);
    cmbServiceCAUSEOUT.ItemIndex    := fdm.loadCmbItems(cmbServiceCAUSEOUT.Items,'SERVICE','CAUSEOUT','43FILE_CODE','NAME1','1',true);
    CmbLOCATION.ItemIndex           := fdm.loadCmbItems(CmbLOCATION.Items,'SERVICE','LOCATION','43FILE_CODE','NAME1','1',true);
    CmbINTIME.ItemIndex             := fdm.loadCmbItems(CmbINTIME.Items,'SERVICE','INTIME','43FILE_CODE','NAME1','1',true);
    CmbTYPEOUT.ItemIndex            := fdm.loadCmbItems(CmbTYPEOUT.Items,'SERVICE','TYPEOUT','43FILE_CODE','NAME1', '1',true);

    cmbServiceREFERINHOSP.Enabled:=True;
    cmbServiceSERVPLACE.Enabled:=True;
    cmbServiceMAIN.Enabled:=True;
    cmbServiceCAUSEIN.Enabled:=True;
    cmbServiceREFEROUTHOSP.Enabled:=True;
    cmbServiceINSTYPE.Enabled:=True;
    cmbServiceTYPEIN.Enabled:=True;
    cmbServiceCAUSEOUT.Enabled:=True;
    UniDBEdit7.Enabled:=True;
    cmbLocation.Enabled:=True;
    UniDBEdit9.Enabled:=True;
    cmbInTime.Enabled:=True;
    UniDBEdit12.Enabled:=True;
    UniDBEdit15.Enabled:=True;
    UniDBEdit18.Enabled:=True;
    UniDBEdit20.Enabled:=True;
    CmbTYPEOUT.Enabled:=True;
    UniDBEdit22.Enabled:=True;
    UniDBEdit23.Enabled:=True;
    UniDBEdit24.Enabled:=True;
    UniDBEdit26.Enabled:=True;
    UniDBEdit27.Enabled:=True;
    UniDBEdit28.Enabled:=True;
    UniDBEdit30.Enabled:=True;
    UniDBEdit31.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.btnConfirmClick(Sender: TObject);
begin
 if  (FDM.cdsGetReport43ServiceList.State in [dsinsert]) then
      begin
        dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString := FDM.GetDoc('SEQ');
        dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString := '13754';
        FDM.cdsGetReport43ServiceList.FieldByName('D_UPDATE').AsDateTime:=Now;
       end;
 try
  if fdm.cdsGetReport43ServiceList.State in [dsInsert,dsEdit] then  FDM.cdsGetReport43ServiceList.POST;
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


   if fdm.cdsGetReport43ProcedureOpdList.state in [dsinsert,dsedit] then    FDM.cdsGetReport43ProcedureOpdList.POST;
        if FDM.cdsGetReport43ProcedureOpdList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43ProcedureOpdList.First;
             while not FDM.cdsGetReport43ProcedureOpdList.Eof do
                begin
                  fdm.InsUpdProcedureOpd(
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('REPORTID').AsInteger,
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('PID').AsInteger,
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('SEQ').AsInteger,
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('DATE_SERV').AsFloat,
                  TString(cmbProcedureOpdCLINIC.Items.Objects[cmbProcedureOpdCLINIC.ItemIndex]).Str,
                  TString(cmbProcedureOpdPROCEDCODE.Items.Objects[cmbProcedureOpdPROCEDCODE.ItemIndex]).Str,
                //  fdm.cdsGetReport43ProcedureOpd.FieldByName('CLINIC').AsString,
                //  fdm.cdsGetReport43ProcedureOpd.FieldByName('PROCEDCODE').AsString ,
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('SERVICEPRICE').AsInteger,
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('PROVIDER').AsString,
                  fdm.cdsGetReport43ProcedureOpdList.FieldByName('D_UPDATE').AsFloat
                   );
                  FDM.cdsGetReport43ProcedureOpdList.Next;
                 end;
           end;

      if fdm.cdsGetReport43DrugListOpd.State in [dsInsert,dsedit] then   FDM.cdsGetReport43DrugListOpd.POST;
          if FDM.cdsGetReport43DrugListOpd.ChangeCount>0 then
           begin
             FDM.cdsGetReport43DrugListOpd.First;
             while not FDM.cdsGetReport43DrugListOpd.Eof do
               begin
                fdm.InsUpdDrugOpd(
                fdm.cdsGetReport43DrugListOpd.FieldByName('REPORTID').AsInteger,
                fdm.cdsGetReport43DrugListOpd.FieldByName('ORDER_NO').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('HOSPCODE').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('PID').AsInteger,
                fdm.cdsGetReport43DrugListOpd.FieldByName('SEQ').AsInteger,
                fdm.cdsGetReport43DrugListOpd.FieldByName('DATE_SERV').AsFloat,
                TString(cmbDrugOpdCLINIC.Items.Objects[cmbDrugOpdCLINIC.ItemIndex]).Str,
               // fdm.cdsGetReport43DrugOpd.FieldByName('CLINIC').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('DIDSTD').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('DNAME').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('AMOUNT').AsInteger,
                fdm.cdsGetReport43DrugListOpd.FieldByName('UNIT').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('UNIT_PACKING').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('DRUGPRICE').AsInteger,
                fdm.cdsGetReport43DrugListOpd.FieldByName('DRUGCOST').AsInteger,
                fdm.cdsGetReport43DrugListOpd.FieldByName('PROVIDER').AsString,
                fdm.cdsGetReport43DrugListOpd.FieldByName('D_UPDATE').AsFloat
                );
                 FDM.cdsGetReport43DrugListOpd.Next;
               end;
           end;

        if fdm.cdsGetReport43ChargeOrdList.state in [dsinsert,dsedit] then   FDM.cdsGetReport43ChargeOrdList.POST;
          if FDM.cdsGetReport43ChargeOrdList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43ChargeOrdList.First;
             while not FDM.cdsGetReport43ChargeOrdList.Eof do
               begin
               fdm.InsUpdChargeOpd(
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('REPORTID').AsInteger,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('HOSPCODE').AsString,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('PID').AsInteger ,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('SEQ').AsInteger,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('DATE_SERV').AsFloat ,
                  TString(cmbChargeOpdCLINIC.Items.Objects[cmbChargeOpdCLINIC.ItemIndex]).Str,
                  TString(cmbChargeOpdCHARGEITEM.Items.Objects[cmbChargeOpdCHARGEITEM.ItemIndex]).Str,
                  //fdm.cdsGetReport43ChargeOrd.FieldByName('CLINIC').AsString ,
                  //fdm.cdsGetReport43ChargeOrd.FieldByName('CHARGEITEM').AsString ,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('CHARGELIST').AsString,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('QUANTITY').AsInteger,
                  TString(cmbChargeOpdINSTYPE.Items.Objects[cmbChargeOpdINSTYPE.ItemIndex]).Str,
                 // fdm.cdsGetReport43ChargeOrd.FieldByName('INSTYPE').AsString ,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('COST').AsInteger ,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('PRICE').AsInteger ,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('PAYPRICE').AsInteger,
                  fdm.cdsGetReport43ChargeOrdList.FieldByName('D_UPDATE').AsFloat
                  );
                   FDM.cdsGetReport43ChargeOrdList.Next;
                end;
           end;

     if fdm.cdsGetReport43AppointmentList.state in [dsinsert,dsedit] then   FDM.cdsGetReport43AppointmentList.POST;
       if FDM.cdsGetReport43AppointmentList.ChangeCount>0 then
           begin
             FDM.cdsGetReport43AppointmentList.First;
             while not FDM.cdsGetReport43AppointmentList.Eof do
               begin
                fdm.InsUpdAppointment(
                fdm.cdsGetReport43AppointmentList.FieldByName('REPORTID').AsInteger,
                fdm.cdsGetReport43AppointmentList.FieldByName('HOSPCODE').AsString,
                fdm.cdsGetReport43AppointmentList.FieldByName('PID').AsInteger ,
                fdm.cdsGetReport43AppointmentList.FieldByName('AN').AsInteger,
                fdm.cdsGetReport43AppointmentList.FieldByName('SEQ').AsInteger,
                fdm.cdsGetReport43AppointmentList.FieldByName('DATE_SERV').AsFloat,
                TString(cmbAppCLINIC.Items.Objects[cmbAppCLINIC.ItemIndex]).Str,
               // fdm.cdsGetReport43Appointment.FieldByName('CLINIC').AsString ,
                fdm.cdsGetReport43AppointmentList.FieldByName('APDATE').AsDateTime,
                TString(cmbAppAPTYPE.Items.Objects[cmbAppAPTYPE.ItemIndex]).Str,
               // Before('-',cmbAppIcd10.text),
                TString(cmbAppIcd10.Items.Objects[cmbAppIcd10.ItemIndex]).Str,
               // fdm.cdsGetReport43Appointment.FieldByName('APTYPE').AsString,
               // fdm.cdsGetReport43Appointment.FieldByName('APDIAG').AsString,
                fdm.cdsGetReport43AppointmentList.FieldByName('PROVIDER').AsString,
                fdm.cdsGetReport43AppointmentList.FieldByName('D_UPDATE').AsFloat
                );
                 FDM.cdsGetReport43AppointmentList.Next;
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
   ShowMessage('update success');
  except
    on ee:Exception do
      ShowMessage(ee.message);

  end;

END;
procedure TfrmRp43ThaiMassage.btnRefreshClick(Sender: TObject);
var
    yrrStr,runStr,HN,_HN:string;
begin

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

   { FDM.cdsGetReport43Service.Close;
    fdm.getService(FDM.cdsGetReport43ServiceList.FieldByName('PID').AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    FDM.cdsGetReport43Service.Open;
    }
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
    cmbLocation.ItemIndex   := fdm.loadCmbItems(cmbLocation.Items,'SERVICE','LOCATION','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('Location').AsString,true);
    cmbInTime.ItemIndex   := fdm.loadCmbItems(cmbInTime.Items,'SERVICE','INTIME','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('INTIME').AsString,true);
    CmbTYPEOUT.ItemIndex   := fdm.loadCmbItems(CmbTYPEOUT.Items,'SERVICE','TYPEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString,true);





    FDM.WriteLog('### Initial 8');
    fdm.cdsGetReport43AppointmentList.close;
    fdm.getAppointmentList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43AppointmentList.open;
    dsGetReport43AppointmentList.DataSet := FDM.cdsGetReport43AppointmentList;
    cmbAppAPTYPE.ItemIndex := fdm.loadCmbItems(cmbAppAPTYPE.Items,'APPOINTMENT','APTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AppointmentList.FieldByName('APTYPE').AsString,true);
    cmbAppCLINIC.ItemIndex := fdm.loadCmbItems(cmbAppCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43AppointmentList.FieldByName('CLINIC').AsString,true);
    cmbAppIcd10.ItemIndex := fdm.getIcd10List2CmbItems(cmbAppIcd10.Items,'',fdm.cdsGetReport43AppointmentList.FieldByName('APDIAG').AsString,true);

    FDM.WriteLog('### Initial 10');
    fdm.cdsGetReport43DiagnosisOpdList.close;
    fdm.getDiagnosisOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DiagnosisOpdList.Open;
    dsGetReport43DiagnosisOpdList.DataSet := FDM.cdsGetReport43DiagnosisOpdList;
    cmbDiagOpdDIAGTYPE.ItemIndex := fdm.loadCmbItems(cmbDiagOpdDIAGTYPE.Items,'*','DIAGTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdList.FieldByName('DIAGTYPE').AsString,true);
    cmbDiagOpdClinic.ItemIndex := fdm.loadCmbItems(cmbDiagOpdClinic.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdList.FieldByName('Clinic').AsString,true);
    cmbDiagOpdDIAGCODE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDiagOpdDIAGCODE.Items,'',fdm.cdsGetReport43DiagnosisOpdList.FieldByName('DIAGCODE').AsString,true);

    FDM.WriteLog('### Initial 11');
    fdm.cdsGetReport43ProcedureOpdList.close;
    fdm.getProcedureOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43ProcedureOpdList.open;
    dsGetReport43ProcedureOpdList.DataSet := FDM.cdsGetReport43ProcedureOpdList;
    cmbProcedureOpdPROCEDCODE.ItemIndex := fdm.loadIcd9List2CmbItems(cmbProcedureOpdPROCEDCODE.Items,fdm.cdsGetReport43ProcedureOpdList.FieldByName('PROCEDCODE').AsString,true);
    cmbProcedureOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbProcedureOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43ProcedureOpdList.FieldByName('CLINIC').AsString,true);

    FDM.WriteLog('### Initial 12');
    fdm.cdsGetReport43DrugListOpd.close;
    fdm.getDrugOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43DrugListOpd.open;
    dsGetReport43DrugListOpd.DataSet := FDM.cdsGetReport43DrugListOpd;
    cmbDrugOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbDrugOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DrugListOpd.FieldByName('CLINIC').AsString,true);

    FDM.WriteLog('### Initial 13');
    fdm.cdsGetReport43ChargeOrdList.close;
    fdm.getChargeOpdList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43ChargeOrdList.open;
    dsGetReport43ChargeOpdList.DataSet := FDM.cdsGetReport43ChargeOrdList;
    cmbChargeOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbChargeOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43ChargeOrdList.FieldByName('CLINIC').AsString,true);
    cmbChargeOpdINSTYPE.ItemIndex   := fdm.loadCmbItems(cmbChargeOpdINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43ChargeOrdList.FieldByName('INSTYPE').AsString,true);
    cmbChargeOpdCHARGEITEM.ItemIndex   := fdm.loadCmbItems(cmbChargeOpdCHARGEITEM.Items,'*','CHARGEITEM','43FILE_CODE','NAME1', fdm.cdsGetReport43ChargeOrdList.FieldByName('CHARGEITEM').AsString,true);

    FDM.WriteLog('### Initial 31');
    fdm.cdsGetReport43SpecialPpList.close;
    fdm.getSpecialPpList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43ServiceList.FieldByName('SEQ').AsInteger);
    fdm.cdsGetReport43SpecialPpList.open;
    dsGetReport43SpecialPpList.DataSet := FDM.cdsGetReport43SpecialPpList;
    cmbSpecialPpPPSPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbSpecialPpPPSPLACE.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString,true);
    PPSPECIAL.ItemIndex   := fdm.loadHospNameList2CmbItems(PPSPECIAL.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString,true);
    cmbSpecialPpSERVPLACE.ItemIndex :=  fdm.loadCmbItems(cmbSpecialPpSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString,true);

    cmbServiceREFERINHOSP.Enabled:=False;
    cmbServiceSERVPLACE.Enabled:=False;
    cmbServiceMAIN.Enabled:=False;
    cmbServiceCAUSEIN.Enabled:=False;
    cmbServiceREFEROUTHOSP.Enabled:=False;
    cmbServiceINSTYPE.Enabled:=False;
    cmbServiceTYPEIN.Enabled:=False;
    cmbServiceCAUSEOUT.Enabled:=False;
    UniDBEdit7.Enabled:=False;
    cmbLocation.Enabled:=False;
    UniDBEdit9.Enabled:=False;
    cmbInTime.Enabled:=False;
    UniDBEdit12.Enabled:=False;
    UniDBEdit15.Enabled:=False;
    UniDBEdit18.Enabled:=False;
    UniDBEdit20.Enabled:=False;
    CmbTYPEOUT.Enabled:=False;
    UniDBEdit22.Enabled:=False;
    UniDBEdit23.Enabled:=False;
    UniDBEdit24.Enabled:=False;
    UniDBEdit26.Enabled:=False;
    UniDBEdit27.Enabled:=False;
    UniDBEdit28.Enabled:=False;
    UniDBEdit30.Enabled:=False;
    UniDBEdit31.Enabled:=False;

    SEQ.Enabled:=False;
    DATE_SERV.Enabled:=False;
    PROVIDER .Enabled:=False;
    cmbDiagOpdDIAGTYPE.Enabled:=False;
    cmbDiagOpdClinic.Enabled:=False;
    cmbDiagOpdDIAGCODE.Enabled:=False;

    UniDBEdit47.Enabled:=False;
    UniDBEdit50.Enabled:=False;
    UniDBEdit52 .Enabled:=False;
    SERVICEPRICE .Enabled:=False;
    cmbProcedureOpdPROCEDCODE.Enabled:=False;
    cmbProcedureOpdCLINIC.Enabled:=False;

    cmbDrugOpdCLINIC.Enabled:=False;
    UniDBEdit14.Enabled:=False;
    UniDBEdit16.Enabled:=False;
    UniDBEdit57.Enabled:=False;
    UniDBEdit60.Enabled:=False;
    DIDSTD.Enabled:=False;
    DNAME.Enabled:=False;
    AMOUNT.Enabled:=False;
    UNIT_D.Enabled:=False;
    DRUGPRICE.Enabled:=False;
    DRUGCOST.Enabled:=False;

    cmbChargeOpdCLINIC.Enabled:=False;
    cmbChargeOpdINSTYPE.Enabled:=False;
    cmbChargeOpdCHARGEITEM.Enabled:=False;
    UniDBEdit135.Enabled:=False;
    UniDBEdit10.Enabled:=False;
    CHARGELIST.Enabled:=False;
    QUANTITY.Enabled:=False;
    COST.Enabled:=False;
    PRICE.Enabled:=False;
    PAYPRICE.Enabled:=False;

    cmbAppAPTYPE.Enabled:=False;
    cmbAppCLINIC.Enabled:=False;
    cmbAppIcd10.Enabled:=False;
    AN.Enabled:=False;
    UniDBEdit17.Enabled:=False;
    UniDBEdit32.Enabled:=False;
    UniDBEdit33.Enabled:=False;
    UniDBEdit35.Enabled:=False;

    PPSPECIAL.Enabled:=False;
    cmbSpecialPpSERVPLACE.Enabled:=False;
    cmbSpecialPpPPSPLACE.Enabled:=False;
    UniDBEdit125.Enabled:=False;
    UniDBEdit126.Enabled:=False;
    UniDBEdit127.Enabled:=False;


end;

procedure TfrmRp43ThaiMassage.btnSyncClick(Sender: TObject);
begin
  inherited;
{    if trim(edSearchCID.Text)='' then exit;
       syncIfx(pagesIndex[cmbDepartment.ItemIndex]);
       btnRefreshClick(sender);   }
end;

procedure TfrmRp43ThaiMassage.cmbAppAPTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AppointmentList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AppointmentList.edit;
  fdm.cdsGetReport43AppointmentList.FieldByName('APTYPE').AsString:=TString(cmbAppAPTYPE.Items.Objects[cmbAppAPTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbAppCLINICSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AppointmentList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AppointmentList.edit;
  fdm.cdsGetReport43AppointmentList.FieldByName('CLINIC').AsString:=TString(cmbAppCLINIC.Items.Objects[cmbAppCLINIC.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbAppIcd10KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);
end;

procedure TfrmRp43ThaiMassage.cmbAppIcd10Select(Sender: TObject);
begin
  inherited;
     if not (fdm.cdsGetReport43AppointmentList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AppointmentList.edit;
           fdm.cdsGetReport43AppointmentList.FieldByName('APDIAG').AsString:=TString(cmbAppIcd10.Items.Objects[cmbAppIcd10.ItemIndex]).Str;
end;

procedure TfrmRp43ThaiMassage.cmbChargeOpdCLINICSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43ChargeOrdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ChargeOrdList.edit;
  fdm.cdsGetReport43ChargeOrdList.FieldByName('CLINIC').AsString:=TString(cmbChargeOpdCLINIC.Items.Objects[cmbChargeOpdCLINIC.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbChargeOpdINSTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43ChargeOrdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ChargeOrdList.edit;
  fdm.cdsGetReport43ChargeOrdList.FieldByName('INSTYPE').AsString:=TString(cmbChargeOpdINSTYPE.Items.Objects[cmbChargeOpdINSTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbDiagOpdClinicSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
  fdm.cdsGetReport43DiagnosisOpdListCLINIC.AsString:=TString(cmbDiagOpdClinic.Items.Objects[cmbDiagOpdClinic.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbDiagOpdDIAGCODEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);

end;

procedure TfrmRp43ThaiMassage.cmbDiagOpdDIAGCODESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
  fdm.cdsGetReport43DiagnosisOpdListDIAGCODE.AsString:=TString(cmbDiagOpdDIAGCODE.Items.Objects[cmbDiagOpdDIAGCODE.ItemIndex]).Str;
end;

procedure TfrmRp43ThaiMassage.cmbDiagOpdDIAGTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DiagnosisOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DiagnosisOpdList.edit;
  fdm.cdsGetReport43DiagnosisOpdListDIAGTYPE.AsString:=TString(cmbDiagOpdDIAGTYPE.Items.Objects[cmbDiagOpdDIAGTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbDrugOpdCLINICSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43DrugListOpd.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43DrugListOpd.edit;
  fdm.cdsGetReport43DrugListOpd.FieldByName('CLINIC').AsString:=TString(cmbDrugOpdCLINIC.Items.Objects[cmbDrugOpdCLINIC.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbInTimeSelect(Sender: TObject);
begin
  inherited;
     if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('INTIME').AsString
      := TString(cmbInTime.Items.Objects[cmbInTime.ItemIndex]).Str
end;

procedure TfrmRp43ThaiMassage.cmbProcedureOpdCLINICSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43ProcedureOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ProcedureOpdList.edit;
  fdm.cdsGetReport43ProcedureOpdList.FieldByName('CLINIC').AsString:=TString(cmbProcedureOpdCLINIC.Items.Objects[cmbProcedureOpdCLINIC.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbProcedureOpdPROCEDCODESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43ProcedureOpdList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ProcedureOpdList.edit;
  fdm.cdsGetReport43ProcedureOpdList.FieldByName('PROCEDCODE').AsString:=TString(cmbProcedureOpdPROCEDCODE.Items.Objects[cmbProcedureOpdPROCEDCODE.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbServiceCAUSEINSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
     fdm.cdsGetReport43ServiceList.FieldByName('CAUSEIN').AsString
     :=TString(cmbServiceCAUSEIN.Items.Objects[cmbServiceCAUSEIN.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbServiceCAUSEOUTSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
       fdm.cdsGetReport43ServiceList.FieldByName('CAUSEOUT').AsString
       :=TString(cmbServiceCAUSEOUT.Items.Objects[cmbServiceCAUSEOUT.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbServiceINSTYPESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
     fdm.cdsGetReport43ServiceList.FieldByName('INSTYPE').AsString
    :=TString(cmbServiceINSTYPE.Items.Objects[cmbServiceINSTYPE.ItemIndex]).Str;
end;

procedure TfrmRp43ThaiMassage.cmbServiceMAINSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('MAIN').AsString
      :=TString(cmbServiceMAIN.Items.Objects[cmbServiceMAIN.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbServiceREFERINHOSPSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('REFERINHOSP').AsString
      := TString(cmbServiceREFERINHOSP.Items.Objects[cmbServiceREFERINHOSP.ItemIndex]).Str
end;

procedure TfrmRp43ThaiMassage.cmbServiceREFEROUTHOSPSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('REFEROUTHOSP').AsString
     :=TString(cmbServiceREFEROUTHOSP.Items.Objects[cmbServiceREFEROUTHOSP.ItemIndex]).Str;
end;

procedure TfrmRp43ThaiMassage.cmbServiceSERVPLACESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
       fdm.cdsGetReport43ServiceList.FieldByName('SERVPLACE').AsString
       :=TString(cmbServiceSERVPLACE.Items.Objects[cmbServiceSERVPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.cmbServiceTYPEINSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('TYPEIN').AsString
      :=TString(cmbServiceTYPEIN.Items.Objects[cmbServiceTYPEIN.ItemIndex]).Str;
end;

procedure TfrmRp43ThaiMassage.PPSPECIALSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
   fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString:=TString(PPSPECIAL.Items.Objects[PPSPECIAL.ItemIndex]).Str;
end;


procedure TfrmRp43ThaiMassage.cmbSpecialPpPPSPLACESelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
   fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString:=TString(cmbSpecialPpPPSPLACE.Items.Objects[cmbSpecialPpPPSPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43ThaiMassage.cmbSpecialPpSERVPLACESelect(Sender: TObject);
begin
  inherited;
 // if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
 // fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString:=TString(cmbSpecialPpSERVPLACE.Items.Objects[cmbSpecialPpSERVPLACE.ItemIndex]).Str;

  if not (fdm.cdsGetReport43SpecialPpList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43SpecialPpList.edit;
  fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString:=TString(cmbSpecialPpSERVPLACE.Items.Objects[cmbSpecialPpSERVPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43ThaiMassage.CmbTYPEOUTSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
    fdm.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString:=TString(CmbTYPEOUT.Items.Objects[CmbTYPEOUT.ItemIndex]).Str;
end;

procedure TfrmRp43ThaiMassage.dsGetReport43DiagnosisOpdListDataChange(
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

procedure TfrmRp43ThaiMassage.dsGetReport43DrugListOpdDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if fdm.cdsGetReport43DrugListOpd.RecordCount>0 then
  begin
  cmbDrugOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbDrugOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DrugListOpd.FieldByName('CLINIC').AsString,true);
  end;
end;

procedure TfrmRp43ThaiMassage.dsGetReport43ProcedureOpdListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
if fdm.cdsGetReport43ProcedureOpdList.RecordCount>0 then
  begin
    cmbProcedureOpdPROCEDCODE.ItemIndex := fdm.loadIcd9List2CmbItems(cmbProcedureOpdPROCEDCODE.Items,fdm.cdsGetReport43ProcedureOpdList.FieldByName('PROCEDCODE').AsString,true);
    cmbProcedureOpdCLINIC.ItemIndex := fdm.loadCmbItems(cmbProcedureOpdCLINIC.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43ProcedureOpdList.FieldByName('CLINIC').AsString,true);
  end;
end;

procedure TfrmRp43ThaiMassage.dsGetReport43SpecialPpListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
   if (fdm.cdsGetReport43SpecialPpList.RecordCount>0) and not(FDM.cdsGetReport43SpecialPpList.State in [dsEdit,dsInsert]) then
    begin
     cmbSpecialPpPPSPLACE.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbSpecialPpPPSPLACE.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPLACE').AsString,true);
     cmbSpecialPpSERVPLACE.ItemIndex :=  fdm.loadCmbItems(cmbSpecialPpSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43SpecialPpList.FieldByName('SERVPLACE').AsString,true);
     PPSPECIAL.ItemIndex   := fdm.loadHospNameList2CmbItems(PPSPECIAL.Items,fdm.cdsGetReport43SpecialPpList.FieldByName('PPSPECIAL').AsString,true);
     end;
end;

procedure TfrmRp43ThaiMassage.dsReport43ServiceListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if( fdm.cdsGetReport43ServiceList.RecordCount>0) and not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] )then
  begin
    cmbServiceREFERINHOSP.ItemIndex := fdm.loadHospNameList2CmbItems(cmbServiceREFERINHOSP.Items,fdm.cdsGetReport43ServiceList.FieldByName('REFERINHOSP').AsString,true);
    cmbServiceSERVPLACE.ItemIndex   := fdm.loadCmbItems(cmbServiceSERVPLACE.Items,'*','SERVPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('SERVPLACE').AsString,true);
    cmbServiceMAIN.ItemIndex        := fdm.loadHospNameList2CmbItems(cmbServiceMAIN.Items,fdm.cdsGetReport43ServiceList.FieldByName('MAIN').AsString,true);

    cmbServiceCAUSEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEIN.Items,'SERVICE','CAUSEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('CAUSEIN').AsString,true);
    cmbServiceINSTYPE.ItemIndex   := fdm.loadCmbItems(cmbServiceINSTYPE.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('INSTYPE').AsString,true);
    cmbServiceTYPEIN.ItemIndex   := fdm.loadCmbItems(cmbServiceTYPEIN.Items,'SERVICE','TYPEIN','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('TYPEIN').AsString,true);

    cmbServiceREFEROUTHOSP.ItemIndex   := fdm.loadHospNameList2CmbItems(cmbServiceREFEROUTHOSP.Items,fdm.cdsGetReport43ServiceList.FieldByName('REFEROUTHOSP').AsString,true);
    cmbServiceCAUSEOUT.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEOUT.Items,'SERVICE','CAUSEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('CAUSEOUT').AsString,true);
    cmbLocation.ItemIndex   := fdm.loadCmbItems(cmbLocation.Items,'SERVICE','LOCATION','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('LOCATION').AsString,true);
    cmbInTime.ItemIndex   := fdm.loadCmbItems(cmbServiceCAUSEOUT.Items,'SERVICE','INTIME','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('INTIME').AsString,true);
    CmbTYPEOUT.ItemIndex   := fdm.loadCmbItems(CmbTYPEOUT.Items,'SERVICE','TYPEOUT','43FILE_CODE','NAME1', fdm.cdsGetReport43ServiceList.FieldByName('TYPEOUT').AsString,true);

  end;
end;


procedure TfrmRp43ThaiMassage.edSearchCIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
  begin
    btnRefresh.ScreenMask.InitMask;
    btnRefresh.Click;
   end;

end;

procedure TfrmRp43ThaiMassage.RsetComboBox;
var
  I: Integer;
begin
  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] is TUniComboBox ) then
      begin
        if  (Components[I]  as TUniComboBox).Enabled then
        begin
          if  (Components[I]  as TUniComboBox).Tag<>99 then
          begin
            (Components[I]  as TUniComboBox).Items.Clear;
            (Components[I]  as TUniComboBox).Text:='';
          end;
        end;


      end
      else IF (Components[I] is TUniDateTimePicker ) then
      begin
        (Components[I] AS TUniDateTimePicker ).DateTime:=0;
      end;

  end;
end;

procedure TfrmRp43ThaiMassage.UniButton10Click(Sender: TObject);
begin
  inherited;
  if not (FDM.cdsGetReport43ChargeOrdList.State in [dsedit,dsinsert]) then
  begin
    cmbChargeOpdCLINIC.Enabled:=True;
    cmbChargeOpdINSTYPE.Enabled:=True;
    cmbChargeOpdCHARGEITEM.Enabled:=True;
    UniDBEdit135.Enabled:=True;
    UniDBEdit10.Enabled:=True;
    CHARGELIST.Enabled:=True;
    QUANTITY.Enabled:=True;
    COST.Enabled:=True;
    PRICE.Enabled:=True;
    PAYPRICE.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.UniButton11Click(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43AppointmentList.Active then
  begin
    FDM.getAppointmentList(0,0);
    FDM.cdsGetReport43AppointmentList.Open;
  end;


  if not (FDM.cdsGetReport43AppointmentList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43AppointmentList.Append;
    dsGetReport43AppointmentList.DataSet.FieldByName('APTYPE').AsString:='181';
    dsGetReport43AppointmentList.DataSet.FieldByName('CLINIC').AsString:='00';
    dsGetReport43AppointmentList.DataSet.FieldByName('APDIAG').AsString:='O80';
    dsGetReport43AppointmentList.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43AppointmentList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43AppointmentList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43AppointmentList.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43AppointmentList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;

    cmbAppAPTYPE.Enabled:=True;
    cmbAppCLINIC.Enabled:=True;
    cmbAppIcd10.Enabled:=True;
    AN.Enabled:=True;
    UniDBEdit17.Enabled:=True;
    UniDBEdit32.Enabled:=True;
    UniDBEdit33.Enabled:=True;
    UniDBEdit35.Enabled:=True;;

  end;
end;

procedure TfrmRp43ThaiMassage.UniButton12Click(Sender: TObject);
begin
  inherited;
      if not (FDM.cdsGetReport43AppointmentList.State in [dsedit,dsinsert]) then
      begin
        cmbAppAPTYPE.Enabled:=True;
        cmbAppCLINIC.Enabled:=True;
        cmbAppIcd10.Enabled:=True;
        AN.Enabled:=True;
        UniDBEdit17.Enabled:=True;
        UniDBEdit32.Enabled:=True;
        UniDBEdit33.Enabled:=True;
        UniDBEdit35.Enabled:=True;;

      end;
end;

procedure TfrmRp43ThaiMassage.UniButton13Click(Sender: TObject);
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

    PPSPECIAL.Enabled:=True;
    cmbSpecialPpSERVPLACE.Enabled:=True;
    cmbSpecialPpPPSPLACE.Enabled:=True;
    UniDBEdit125.Enabled:=True;
    UniDBEdit126.Enabled:=True;
    UniDBEdit127.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.UniButton14Click(Sender: TObject);
begin
  inherited;
  if not (FDM.cdsGetReport43SpecialPpList.State in [dsedit,dsinsert]) then
  begin
    PPSPECIAL.Enabled:=True;
    cmbSpecialPpSERVPLACE.Enabled:=True;
    cmbSpecialPpPPSPLACE.Enabled:=True;
    UniDBEdit125.Enabled:=True;
    UniDBEdit126.Enabled:=True;
    UniDBEdit127.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.UniButton2Click(Sender: TObject);
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
    SEQ.Enabled:=True;
    DATE_SERV.Enabled:=True;
    PROVIDER .Enabled:=True;
    cmbDiagOpdDIAGTYPE.Enabled:=True;
    cmbDiagOpdClinic.Enabled:=True;
    cmbDiagOpdDIAGCODE.Enabled:=True;

  end;

end;

procedure TfrmRp43ThaiMassage.UniButton3Click(Sender: TObject);
begin
  inherited;
    if not (FDM.cdsGetReport43DiagnosisOpdList.State in [dsedit,dsinsert]) then
  begin
    SEQ.Enabled:=True;
    DATE_SERV.Enabled:=True;
    PROVIDER .Enabled:=True;
    cmbDiagOpdDIAGTYPE.Enabled:=True;
    cmbDiagOpdClinic.Enabled:=True;
    cmbDiagOpdDIAGCODE.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.UniButton4Click(Sender: TObject);
begin
  inherited;
    cmbServiceREFERINHOSP.Enabled:=True;
    cmbServiceSERVPLACE.Enabled:=True;
    cmbServiceMAIN.Enabled:=True;
    cmbServiceCAUSEIN.Enabled:=True;
    cmbServiceREFEROUTHOSP.Enabled:=True;
    cmbServiceINSTYPE.Enabled:=True;
    cmbServiceTYPEIN.Enabled:=True;
    cmbServiceCAUSEOUT.Enabled:=True;
    UniDBEdit7.Enabled:=True;
    cmbLocation.Enabled:=True;
    UniDBEdit9.Enabled:=True;
    cmbInTime.Enabled:=True;
    UniDBEdit12.Enabled:=True;
    UniDBEdit15.Enabled:=True;
    UniDBEdit18.Enabled:=True;
    UniDBEdit20.Enabled:=True;
    CmbTYPEOUT.Enabled:=True;
    UniDBEdit22.Enabled:=True;
    UniDBEdit23.Enabled:=True;
    UniDBEdit24.Enabled:=True;
    UniDBEdit26.Enabled:=True;
    UniDBEdit27.Enabled:=True;
    UniDBEdit28.Enabled:=True;
    UniDBEdit30.Enabled:=True;
    UniDBEdit31.Enabled:=True;
end;

procedure TfrmRp43ThaiMassage.UniButton5Click(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43ProcedureOpdList.Active then
  begin
    FDM.getProcedureOpdList(0,0);
    FDM.cdsGetReport43ProcedureOpdList.Open;
  end;


  if not (FDM.cdsGetReport43ProcedureOpdList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43ProcedureOpdList.Append;
    dsGetReport43ProcedureOpdList.DataSet.FieldByName('PROCEDCODE').AsString:='1270';
    dsGetReport43ProcedureOpdList.DataSet.FieldByName('CLINIC').AsString:='01';
    dsGetReport43ProcedureOpdList.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43ProcedureOpdList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43ProcedureOpdList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43ProcedureOpdList.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43ProcedureOpdList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;

    UniDBEdit47.Enabled:=True;
    UniDBEdit50.Enabled:=True;
    UniDBEdit52 .Enabled:=True;
    SERVICEPRICE .Enabled:=True;
    cmbProcedureOpdPROCEDCODE.Enabled:=True;
    cmbProcedureOpdCLINIC.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.UniButton6Click(Sender: TObject);
begin
  inherited;
   if not (FDM.cdsGetReport43ProcedureOpdList.State in [dsedit,dsinsert]) then
  begin
    UniDBEdit47.Enabled:=True;
    UniDBEdit50.Enabled:=True;
    UniDBEdit52 .Enabled:=True;
    SERVICEPRICE .Enabled:=True;
    cmbProcedureOpdPROCEDCODE.Enabled:=True;
    cmbProcedureOpdCLINIC.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.UniButton7Click(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43DrugListOpd.Active then
  begin
    FDM.getDrugOpdList(0,0);
    FDM.cdsGetReport43DrugListOpd.Open;
  end;


  if not (FDM.cdsGetReport43DrugListOpd.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43DrugListOpd.Append;
    dsGetReport43DrugListOpd.DataSet.FieldByName('CLINIC').AsString:='00';
    dsGetReport43DrugListOpd.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43DrugListOpd.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43DrugListOpd.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43DrugListOpd.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43DrugListOpd.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;

    cmbDrugOpdCLINIC.Enabled:=True;
    UniDBEdit14.Enabled:=True;
    UniDBEdit16.Enabled:=True;
    UniDBEdit57.Enabled:=True;
    UniDBEdit60.Enabled:=True;
    DIDSTD.Enabled:=True;
    DNAME.Enabled:=True;
    AMOUNT.Enabled:=True;
    UNIT_D.Enabled:=True;
    DRUGPRICE.Enabled:=True;
    DRUGCOST.Enabled:=True;
  end;

end;

procedure TfrmRp43ThaiMassage.UniButton8Click(Sender: TObject);
begin
  inherited;
    if not (FDM.cdsGetReport43DrugListOpd.State in [dsedit,dsinsert]) then
  begin
    cmbDrugOpdCLINIC.Enabled:=True;
    UniDBEdit14.Enabled:=True;
    UniDBEdit16.Enabled:=True;
    UniDBEdit57.Enabled:=True;
    UniDBEdit60.Enabled:=True;
    DIDSTD.Enabled:=True;
    DNAME.Enabled:=True;
    AMOUNT.Enabled:=True;
    UNIT_D.Enabled:=True;
    DRUGPRICE.Enabled:=True;
    DRUGCOST.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.UniButton9Click(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43ChargeOrdList.Active then
  begin
    FDM.getChargeOpdList(0,0);
    FDM.cdsGetReport43ChargeOrdList.Open;
  end;


  if not (FDM.cdsGetReport43ChargeOrdList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43ChargeOrdList.Append;
    dsGetReport43ChargeOpdList.DataSet.FieldByName('CLINIC').AsString:='00';
    dsGetReport43ChargeOpdList.DataSet.FieldByName('INSTYPE').AsString:='0100';
    dsGetReport43ChargeOpdList.DataSet.FieldByName('CHARGEITEM').AsString:='00';
    dsGetReport43ChargeOpdList.DataSet.FieldByName('SEQ').AsString:= dsReport43ServiceList.DataSet.FieldByName('SEQ').AsString;
    dsGetReport43ChargeOpdList.DataSet.FieldByName('DATE_SERV').AsString:=dsReport43ServiceList.DataSet.FieldByName('DATE_SERV').AsString;
    dsGetReport43ChargeOpdList.DataSet.FieldByName('HOSPCODE').AsString:=dsReport43ServiceList.DataSet.FieldByName('HOSPCODE').AsString;
    dsGetReport43ChargeOpdList.DataSet.FieldByName('PID').AsString:=dsReport43ServiceList.DataSet.FieldByName('PID').AsString;
    dsGetReport43ChargeOpdList.DataSet.FieldByName('D_UPDATE').AsFloat:= NOW;

    cmbChargeOpdCLINIC.Enabled:=True;
    cmbChargeOpdINSTYPE.Enabled:=True;
    cmbChargeOpdCHARGEITEM.Enabled:=True;
    UniDBEdit135.Enabled:=True;
    UniDBEdit10.Enabled:=True;
    CHARGELIST.Enabled:=True;
    QUANTITY.Enabled:=True;
    COST.Enabled:=True;
    PRICE.Enabled:=True;
    PAYPRICE.Enabled:=True;
  end;
end;

procedure TfrmRp43ThaiMassage.cmbLocationSelect(Sender: TObject);
begin
  inherited;
     if not (fdm.cdsGetReport43ServiceList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43ServiceList.edit;
      fdm.cdsGetReport43ServiceList.FieldByName('LOCATION').AsString
      := TString(cmbLocation.Items.Objects[cmbLocation.ItemIndex]).Str
end;

procedure TfrmRp43ThaiMassage.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  inherited;
  if fdm.cdsGetReport43DiagnosisOpdList.RecordCount>0 then
  begin
    cmbDiagOpdDIAGTYPE.ItemIndex := fdm.loadCmbItems(cmbDiagOpdDIAGTYPE.Items,'*','DIAGTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdlistDIAGTYPE.AsString,true);
    cmbDiagOpdClinic.ItemIndex := fdm.loadCmbItems(cmbDiagOpdClinic.Items,'*','CLINIC','43FILE_CODE','NAME1', fdm.cdsGetReport43DiagnosisOpdlistCLINIC.AsString,true);
    cmbDiagOpdDIAGCODE.ItemIndex := fdm.getIcd10List2CmbItems(cmbDiagOpdDIAGCODE.Items,'',fdm.cdsGetReport43DiagnosisOpdlistDIAGCODE.AsString,true);

  end;
end;

procedure TfrmRp43ThaiMassage.UniFormCreate(Sender: TObject);
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

procedure TfrmRp43ThaiMassage.UniFormShow(Sender: TObject);
begin
  inherited;
  RsetComboBox;
  if UniApplication.Parameters.Values['PID']<>'' then
    begin
      UniTimerAutoGet.Enabled:=true;
    end;
end;

procedure TfrmRp43ThaiMassage.UniTimerAutoGetTimer(Sender: TObject);
var HN:string;
begin
  inherited;
    inherited;
   hn:=  FDM.getHN(strtoint(UniApplication.Parameters.Values['PID']));
  if HN<>'' then
      begin
        edSearchCID.Text:=HN;
        UniTimerRefresh.Enabled:=true;
      end else
    ShowMessage('ไม่พบ PID ที่ต้องการค้นหา');
end;

procedure TfrmRp43ThaiMassage.UniTimerRefreshTimer(Sender: TObject);

begin

  UniTimerRefresh.Enabled:=false;
  btnRefreshClick(nil);
end;

end.
