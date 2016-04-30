unit Rp43Person;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainDataFormClass, uniGUIClasses,
  uniScreenMask, uniButton, Vcl.Imaging.GIFImg, uniImage,
  uniGUIBaseClasses, uniPanel, uniPageControl, uniMultiItem, uniComboBox,
  uniDBEdit, uniLabel, uniEdit, uniBasicGrid, uniDBGrid, uniBitBtn, Data.DB,DS43FileIntfDM,MainModuleEx,
  uniTimer, uniGroupBox,uniGUIAbstractClasses, Vcl.Menus, System.StrUtils,
  uniDateTimePicker, uniDBDateTimePicker,DateUtils;

type
  TfrmRp43Person = class(TMainDataForm)
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
    UniLabel9: TUniLabel;
    btnSync: TUniButton;
    UniLabel1: TUniLabel;
    pgAll43File: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniLabel184: TUniLabel;
    UniLabel182: TUniLabel;
    UniLabel185: TUniLabel;
    UniLabel186: TUniLabel;
    UniLabel187: TUniLabel;
    UniLabel188: TUniLabel;
    UniLabel189: TUniLabel;
    UniLabel190: TUniLabel;
    UniLabel191: TUniLabel;
    UniLabel192: TUniLabel;
    UniLabel193: TUniLabel;
    UniLabel194: TUniLabel;
    UniLabel195: TUniLabel;
    UniLabel196: TUniLabel;
    UniLabel197: TUniLabel;
    UniLabel198: TUniLabel;
    UniLabel199: TUniLabel;
    UniLabel200: TUniLabel;
    UniLabel201: TUniLabel;
    UniLabel202: TUniLabel;
    UniLabel203: TUniLabel;
    UniDBEdit66: TUniDBEdit;
    UniDBEdit112: TUniDBDateTimePicker;
    UniDBEdit113: TUniDBDateTimePicker;
    cmbReligion: TUniComboBox;
    cmbNation: TUniComboBox;
    cmbRace: TUniComboBox;
    cmbAbogroup: TUniComboBox;
    cmbRhGroup: TUniComboBox;
    cmbEducation: TUniComboBox;
    cmbOccupationOld: TUniComboBox;
    cmbOccupationNew: TUniComboBox;
    cmbVstatus: TUniComboBox;
    cmbMSTATUS: TUniComboBox;
    cmbPersonTypeArea: TUniComboBox;
    cmbFStatus: TUniComboBox;
    cmbDISCHARGE: TUniComboBox;
    UniDBEdit115: TUniDBEdit;
    UniDBEdit116: TUniDBEdit;
    UniDBEdit117: TUniDBEdit;
    UniDBEdit118: TUniDBEdit;
    UniDBEdit119: TUniDBEdit;
    btnAddPerson: TUniBitBtn;
    UniPageControl2: TUniPageControl;
    UniTabSheet2: TUniTabSheet;
    grpBoxAddrType1: TUniGroupBox;
    UniLabel305: TUniLabel;
    cmbAddrADDRESSTYPE1: TUniComboBox;
    UniLabel302: TUniLabel;
    UniDBEdit173: TUniDBEdit;
    UniLabel294: TUniLabel;
    UniDBEdit174: TUniDBEdit;
    UniDBEdit175: TUniDBEdit;
    UniLabel304: TUniLabel;
    UniLabel297: TUniLabel;
    UniDBEdit176: TUniDBEdit;
    UniLabel298: TUniLabel;
    UniDBEdit172: TUniDBEdit;
    UniLabel296: TUniLabel;
    UniDBEdit183: TUniDBEdit;
    UniLabel292: TUniLabel;
    cmbAddrHOUSETYPE1: TUniComboBox;
    UniLabel306: TUniLabel;
    UniDBEdit184: TUniDBEdit;
    UniLabel295: TUniLabel;
    UniDBEdit182: TUniDBEdit;
    UniLabel293: TUniLabel;
    cmbAddrTAMBON1: TUniComboBox;
    UniLabel301: TUniLabel;
    cmbAddrAMPUR1: TUniComboBox;
    UniLabel300: TUniLabel;
    cmbAddrProvince1: TUniComboBox;
    UniLabel303: TUniLabel;
    UniDBEdit168: TUniDBEdit;
    UniDBEdit181: TUniDBEdit;
    UniLabel3: TUniLabel;
    grpBoxAddrType2: TUniGroupBox;
    UniLabel307: TUniLabel;
    cmbAddrADDRESSTYPE2: TUniComboBox;
    UniLabel308: TUniLabel;
    UniDBEdit189: TUniDBEdit;
    UniLabel309: TUniLabel;
    UniDBEdit190: TUniDBEdit;
    UniDBEdit191: TUniDBEdit;
    UniLabel310: TUniLabel;
    UniLabel311: TUniLabel;
    UniDBEdit192: TUniDBEdit;
    UniLabel312: TUniLabel;
    UniDBEdit193: TUniDBEdit;
    UniLabel313: TUniLabel;
    UniDBEdit194: TUniDBEdit;
    UniLabel314: TUniLabel;
    cmbAddrHOUSETYPE2: TUniComboBox;
    UniLabel315: TUniLabel;
    UniDBEdit195: TUniDBEdit;
    UniLabel317: TUniLabel;
    UniDBEdit197: TUniDBEdit;
    UniLabel318: TUniLabel;
    cmbAddrTAMBON2: TUniComboBox;
    UniLabel319: TUniLabel;
    cmbAddrAMPUR2: TUniComboBox;
    UniLabel320: TUniLabel;
    cmbAddrProvince2: TUniComboBox;
    UniLabel321: TUniLabel;
    UniDBEdit198: TUniDBEdit;
    UniDBEdit199: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniTabSheet3: TUniTabSheet;
    UniPanel6: TUniPanel;
    UniLabel71: TUniLabel;
    UniDBEdit128: TUniDBDateTimePicker;
    UniLabel83: TUniLabel;
    UniLabel87: TUniLabel;
    UniLabel91: TUniLabel;
    UniDBEdit129: TUniDBEdit;
    UniLabel99: TUniLabel;
    UniLabel101: TUniLabel;
    UniLabel103: TUniLabel;
    UniDBEdit130: TUniDBDateTimePicker;
    cmbCardINSTYP: TUniComboBox;
    cmbCardMAIN: TUniComboBox;
    cmbCardSUB: TUniComboBox;
    UniPanel7: TUniPanel;
    UniDBGrid18: TUniDBGrid;
    UniTimerAutoGet: TUniTimer;
    UniTimerRefresh: TUniTimer;
    dsGetReport43CardList: TDataSource;
    dsReport43Person: TDataSource;
    dsGetReport43Card: TDataSource;
    dsGetReport43AddressType1: TDataSource;
    dsGetReport43AddressType2: TDataSource;
    UniScreenMask1: TUniScreenMask;
    scRefreshAuto: TUniScreenMask;
    btnAddCard: TUniBitBtn;
    cmbCardINSTYPEOLD: TUniComboBox;
    MainMenu1: TMainMenu;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    Age: TUniEdit;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniLabel30: TUniLabel;
    UniLabel31: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniTimerAutoGetTimer(Sender: TObject);
    procedure UniTimerRefreshTimer(Sender: TObject);
    procedure cmbRaceSelect(Sender: TObject);
    procedure cmbNationSelect(Sender: TObject);
    procedure cmbReligionSelect(Sender: TObject);
    procedure cmbAbogroupSelect(Sender: TObject);
    procedure cmbEducationSelect(Sender: TObject);
    procedure cmbVstatusSelect(Sender: TObject);
    procedure cmbOccupationOldSelect(Sender: TObject);
    procedure cmbOccupationNewSelect(Sender: TObject);
    procedure cmbPersonTypeAreaSelect(Sender: TObject);
    procedure cmbMSTATUSSelect(Sender: TObject);
    procedure cmbFStatusSelect(Sender: TObject);
    procedure cmbDISCHARGESelect(Sender: TObject);
    procedure cmbAddrTAMBON1Select(Sender: TObject);
    procedure cmbAddrAMPUR1Select(Sender: TObject);
    procedure cmbAddrProvince1Select(Sender: TObject);
    procedure cmbAddrTAMBON2Select(Sender: TObject);
    procedure cmbAddrAMPUR2Select(Sender: TObject);
    procedure cmbAddrProvince2Select(Sender: TObject);
    procedure cmbCardINSTYPSelect(Sender: TObject);
    procedure cmbCardMAINSelect(Sender: TObject);
    procedure cmbCardSUBSelect(Sender: TObject);
    procedure dsGetReport43CardListDataChange(Sender: TObject; Field: TField);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnAddPersonClick(Sender: TObject);
    procedure btnAddCardClick(Sender: TObject);
    procedure UniDBGrid18CellClick(Column: TUniDBGridColumn);
    procedure UniDBEdit6Exit(Sender: TObject);
    procedure UniDBEdit113Exit(Sender: TObject);
    procedure UniDBEdit181Exit(Sender: TObject);
    procedure UniDBEdit199Exit(Sender: TObject);
    procedure cmbCardSUBExit(Sender: TObject);
    procedure cmbRhGroupSelect(Sender: TObject);
    procedure cmbAddrHOUSETYPE1Select(Sender: TObject);
    procedure cmbAddrHOUSETYPE2Select(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure edSearchCIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   function CalculateAge(Birthday, CurrentDate: TDate): Integer;
  private
     FUserSession: TUniMainModule;
     FDM: TDS43FileDM ;
     procedure RsetComboBox;
  public
    function GetDocPID(DOCT: Integer): Integer;
    procedure syncIfx(intArr : array of Integer);
  end;
type
  TIntArray = array of Integer;

var
  frmRp43Person: TfrmRp43Person;
   pagesIndex : array of TIntArray ;

implementation

{$R *.dfm}

uses DSMainIntfDM;

procedure TfrmRp43Person.btnAddCardClick(Sender: TObject);
begin
  inherited;
     cmbCardINSTYP.Enabled:=True;
     cmbCardMAIN  .Enabled:=True;
     cmbCardSUB   .Enabled:=True;
     UniDBEdit128 .Enabled:=True;
     UniDBEdit129 .Enabled:=True;
     UniDBEdit130 .Enabled:=True;
     if not (FDM.cdsGetReport43CardList.State in [dsedit,dsinsert]) then
        begin
          FDM.cdsGetReport43CardList.Append;
          cmbCardMAIN.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardMAIN.Items,'13754',true);
          cmbCardSUB.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardSUB.Items,'13754',true);
          cmbCardINSTYP.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYP.Items,'*','INSTYPE','43FILE_CODE','NAME1', '4200',true);
          cmbCardINSTYP.SetFocus;
        end;
end;

procedure TfrmRp43Person.btnAddPersonClick(Sender: TObject);
begin
  inherited;
     cmbEducation.Enabled:=true;
     cmbOccupationOld .Enabled:=true;
     cmbOccupationNew .Enabled:=true;
     cmbEducation.Enabled:=true;
     cmbFStatus.Enabled:=true;
     cmbRace.Enabled:=true;
     cmbNation.Enabled:=true;
     cmbReligion.Enabled:=true;
     cmbAbogroup.Enabled:=true;
     cmbPersonSEX.Enabled:=true;

     UniDBEdit1.ReadOnly:=False;
     UniDBEdit2.ReadOnly:=False;
     UniDBEdit4.ReadOnly:=False;
     UniDBEdit5.ReadOnly:=False;
     UniDBDateTimePicker1.ReadOnly:=False;


      cmbAddrTAMBON1.Enabled  :=true;
      cmbAddrAMPUR1.Enabled:=true;
      cmbAddrProvince1.Enabled:=true;
      UniDBEdit175.Enabled:=true;
      UniDBEdit168.Enabled:=true;
      UniDBEdit181.Enabled:=true;

      cmbAddrTAMBON2.Enabled  :=true;
      cmbAddrProvince2.Enabled:=true;
      cmbAddrAMPUR2.Enabled:=true;
      UniDBEdit191.Enabled:=true;
      UniDBEdit198.Enabled:=true;
      UniDBEdit199.Enabled:=true;

 if not (FDM.cdsGetReport43Person.State in [dsedit,dsinsert]) then
 begin
    FDM.cdsGetReport43Person.Append;
    cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', '0',true);
    cmbRace.ItemIndex         := fdm.loadCmbItems(cmbRace.Items,'PERSON','RACE','43FILE_CODE','NAME1', '99',true);
    cmbNation.ItemIndex       := fdm.loadCmbItems(cmbNation.Items,'PERSON','NATION','43FILE_CODE','NAME1', '99',true);
    cmbReligion.ItemIndex     := fdm.loadCmbItems(cmbReligion.Items,'PERSON','RELIGION','43FILE_CODE','NAME1', '01',true);
    cmbAbogroup.ItemIndex     := fdm.loadCmbItems(cmbAbogroup.Items,'PERSON','ABOGROUP','43FILE_CODE','NAME1', '0',false);
    cmbRhGroup.ItemIndex      := fdm.loadCmbItems(cmbRhGroup.Items,'PERSON','RHGROUP','43FILE_CODE','NAME1', '0',false);
    cmbOccupationOld.ItemIndex:= fdm.loadCmbItems(cmbOccupationOld.Items,'PERSON','OCCUPATION_OLD','43FILE_CODE','NAME1', '000',true);
    cmbOccupationNew.ItemIndex:= fdm.loadCmbItems(cmbOccupationNew.Items,'PERSON','OCCUPATION_NEW','43FILE_CODE','NAME1', '9999',true);
    cmbEducation.ItemIndex    := fdm.loadCmbItems(cmbEducation.Items,'PERSON','EDUCATION','43FILE_CODE','NAME1','00',true);
    cmbVstatus.ItemIndex      := fdm.loadCmbItems(cmbVstatus.Items,'PERSON','VSTATUS','43FILE_CODE','NAME1', '5',false);
    cmbMSTATUS.ItemIndex      := fdm.loadCmbItems(cmbMSTATUS.Items,'PERSON','MSTATUS','43FILE_CODE','NAME1', '1',false);
    cmbDISCHARGE.ItemIndex    := fdm.loadCmbItems(cmbDISCHARGE.Items,'PERSON','DISCHARGE','43FILE_CODE','NAME1', '9',false);
    cmbFStatus.ItemIndex      := fdm.loadCmbItems(cmbMSTATUS.Items,'PERSON','FSTATUS','43FILE_CODE','NAME1', '0',false);
    cmbPersonTypeArea.ItemIndex    := fdm.loadCmbItems(cmbDISCHARGE.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', '1',false);
    Age.Text                  :='';
 end;
 if not (FDM.cdsGetReport43AddressType1.State in [dsedit,dsinsert]) then
  begin
      FDM.cdsGetReport43AddressType1.Append;
     dsGetReport43AddressType1.DataSet.FieldByName('VILLAGE').AsString:='99';
     cmbAddrProvince1.ItemIndex     := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,'99',true);
     cmbAddrAMPUR1.ItemIndex        := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,'','99',true);
     cmbAddrTAMBON1.ItemIndex       := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,'','','99',true);
     cmbAddrADDRESSTYPE1.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE1.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1','1',true);
     cmbAddrHOUSETYPE1.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE1.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', '1',true);
  end;
 if not (FDM.cdsGetReport43AddressType2.State in [dsedit,dsinsert]) then
  begin
     FDM.cdsGetReport43AddressType2.Append;
     dsGetReport43AddressType2.DataSet.FieldByName('VILLAGE').AsString:='99';
     cmbAddrProvince2.ItemIndex     := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,'99',true);
     cmbAddrAMPUR2.ItemIndex        := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,'','99',true);
     cmbAddrTAMBON2.ItemIndex       := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,'','','99',true);
     cmbAddrADDRESSTYPE2.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE2.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1','1',true);
     cmbAddrHOUSETYPE2.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE2.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', '1',true);
  end;
  UniDBEdit1.SetFocus;
end;
procedure TfrmRp43Person.btnConfirmClick(Sender: TObject);
begin
  if  (FDM.cdsGetReport43Person.State in [dsinsert]) then
  begin
    dsReport43Person.DataSet.FieldByName('HN').AsString  := FDM.GetDoc('HN');
    dsReport43Person.DataSet.FieldByName('PID').AsString := FDM.GetDoc('PID');
    dsReport43Person.DataSet.FieldByName('HOSPCODE').AsString := '13754';
    FDM.cdsGetReport43PersonD_UPDATE.AsDateTime:=Now;
  end;
   if  (FDM.cdsGetReport43AddressType1.State in [dsedit,dsinsert]) then dsGetReport43AddressType1.DataSet.FieldByName('PID').AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
   if  (FDM.cdsGetReport43AddressType2.State in [dsedit,dsinsert]) then dsGetReport43AddressType2.DataSet.FieldByName('PID').AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
   if  (FDM.cdsGetReport43CardList.State in [dsedit,dsinsert]) then     dsGetReport43CardList.DataSet.FieldByName('PID').AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;

   if  (FDM.cdsGetReport43AddressType1.State in [dsinsert,dsEdit]) then
       begin
         if  UniDBEdit182.Text ='' then
             FDM.cdsGetReport43AddressType1.FieldByName('VILLAGE').AsString :='99';
       end;
    if  (FDM.cdsGetReport43AddressType2.State in [dsinsert,dsEdit]) then
       begin
         if  UniDBEdit197.Text ='' then
             FDM.cdsGetReport43AddressType2.FieldByName('VILLAGE').AsString :='99';
       end;

try
    if fdm.cdsGetReport43Person.State in [dsInsert,dsEdit] then
     begin
      FDM.WriteLog('update person...');
      fdm.cdsGetReport43Person.post;
       FDM.InsUpdPerson(
            0
            ,FDM.cdsGetReport43Person.FieldByName('HOSPCODE').AsString
            ,FDM.cdsGetReport43Person.FieldByName('CID').AsString
            ,FDM.cdsGetReport43Person.FieldByName('PID').AsInteger
            ,FDM.cdsGetReport43Person.FieldByName('HID').AsString
            ,FDM.cdsGetReport43Person.FieldByName('PRENAME').AsString
            ,FDM.cdsGetReport43Person.FieldByName('NAME').AsString
            ,FDM.cdsGetReport43Person.FieldByName('LNAME').AsString
            ,FDM.cdsGetReport43Person.FieldByName('HN').AsString
            ,TString(cmbPersonSEX.Items.Objects[cmbPersonSEX.ItemIndex]).Str
            //,FDM.cdsGetReport43Person.FieldByName('SEX').AsString
            ,FDM.cdsGetReport43Person.FieldByName('BIRTH').AsFloat
            //,FDM.cdsGetReport43Person.FieldByName('MSTATUS').AsString
            ,TString(cmbMSTATUS.Items.Objects[cmbMSTATUS.ItemIndex]).Str
            ,TString(cmbOccupationOld.Items.Objects[cmbOccupationOld.ItemIndex]).Str
            ,TString(cmbOccupationNew.Items.Objects[cmbOccupationNew.ItemIndex]).Str
            //,FDM.cdsGetReport43Person.FieldByName('OCCUPATION_OLD').AsString
            //,FDM.cdsGetReport43Person.FieldByName('OCCUPATION_NEW').AsString
            ,TString(cmbRace.Items.Objects[cmbRace.ItemIndex]).Str
            ,TString(cmbNation.Items.Objects[cmbNation.ItemIndex]).Str

            //,FDM.cdsGetReport43Person.FieldByName('RACE').AsString
            //,FDM.cdsGetReport43Person.FieldByName('NATION').AsString
            //,FDM.cdsGetReport43Person.FieldByName('RELIGION').AsString
            //,FDM.cdsGetReport43Person.FieldByName('EDUCATION').AsString

            ,TString(cmbReligion.Items.Objects[cmbReligion.ItemIndex]).Str
            ,TString(cmbEducation.Items.Objects[cmbEducation.ItemIndex]).Str
            ,TString(cmbFStatus.Items.Objects[cmbFStatus.ItemIndex]).Str

            //,FDM.cdsGetReport43Person.FieldByName('FSTATUS').AsString
            ,FDM.cdsGetReport43Person.FieldByName('FATHER').AsString
            ,FDM.cdsGetReport43Person.FieldByName('MOTHER').AsString
            ,FDM.cdsGetReport43Person.FieldByName('COUPLE').AsString
            //,FDM.cdsGetReport43Person.FieldByName('VSTATUS').AsString
            ,TString(cmbVstatus.Items.Objects[cmbVstatus.ItemIndex]).Str
            ,FDM.cdsGetReport43Person.FieldByName('MOVEIN').AsFloat
            //,FDM.cdsGetReport43Person.FieldByName('DISCHARGE').AsString
            ,TString(cmbDISCHARGE.Items.Objects[cmbDISCHARGE.ItemIndex]).Str
            ,FDM.cdsGetReport43Person.FieldByName('DDISCHARGE').AsFloat
            ,TString(cmbAbogroup.Items.Objects[cmbAbogroup.ItemIndex]).Str
            ,TString(cmbRhGroup.Items.Objects[cmbRhGroup.ItemIndex]).Str
            //,FDM.cdsGetReport43Person.FieldByName('ABOGROUP').AsString
            //,FDM.cdsGetReport43Person.FieldByName('RHGROUP').AsString
            ,FDM.cdsGetReport43Person.FieldByName('LABOR').AsString
            ,FDM.cdsGetReport43Person.FieldByName('PASSPORT').AsString
            //,FDM.cdsGetReport43Person.FieldByName('TYPEAREA').AsString
            {,FDM.cdsGetReport43Person.FieldByName('D_UPDATE').AsFloat
            ,FDM.cdsGetReport43Person.FieldByName('EXPORT_DATE').AsFloat}
       );// then   ShowMessage('update person finish') else  ShowMessage('update un-success.');

     end;

     // update Address  type 1
     with fdm.cdsGetReport43AddressType1 do
     begin
       if state in [dsinsert,dsedit] then
       begin
         FDM.WriteLog('update address type 1...');
         Post;
         fdm.setAddressType1(
            FieldByName('REPORTID').AsInteger,
            FieldByName('HOSPCODE').AsString ,
            FieldByName('PID').AsInteger ,
            '1',
            //TString(cmbAddrADDRESSTYPE1.Items.Objects[cmbAddrADDRESSTYPE1.ItemIndex]).Str,
            //FieldByName('ADDRESSTYPE').AsString ,
            FieldByName('HOUSE_ID').AsString,
         //   TString(cmbAddrHOUSETYPE1.Items.Objects[cmbAddrHOUSETYPE1.ItemIndex]).Str,
            FieldByName('HOUSETYPE').AsString ,
            FieldByName('ROOMNO').AsString,
            FieldByName('CONDO').AsString ,
            FieldByName('HOUSENO').AsString ,
            FieldByName('SOISUB').AsString ,
            FieldByName('SOIMAIN').AsString ,
            FieldByName('ROAD').AsString,
            FieldByName('VILLANAME').AsString ,
            FieldByName('VILLAGE').AsString,
         //   TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str,
         //   TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str,
            FieldByName('TAMBON').AsString,
            FieldByName('AMPUR').AsString ,
        //    TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str,
            FieldByName('CHANGWAT').AsString ,
            FieldByName('TELEPHONE').AsString ,
            FieldByName('MOBILE').AsString,
            FieldByName('D_UPDATE').AsFloat
         );
       end;
     end;

     // update Address  type 2
     with fdm.cdsGetReport43AddressType2 do
     begin
       if state in [dsinsert,dsedit] then
       begin
         FDM.WriteLog('update address type 2...');
         Post;
         fdm.setAddressType2(
            FieldByName('REPORTID').AsInteger,
            FieldByName('HOSPCODE').AsString ,
            FieldByName('PID').AsInteger ,
            '2',
            //TString(cmbAddrADDRESSTYPE1.Items.Objects[cmbAddrADDRESSTYPE1.ItemIndex]).Str,
          //  FieldByName('ADDRESSTYPE').AsString ,
            FieldByName('HOUSE_ID').AsString,
           // TString(cmbAddrHOUSETYPE2.Items.Objects[cmbAddrHOUSETYPE2.ItemIndex]).Str,
            FieldByName('HOUSETYPE').AsString ,
            FieldByName('ROOMNO').AsString,
            FieldByName('CONDO').AsString ,
            FieldByName('HOUSENO').AsString ,
            FieldByName('SOISUB').AsString ,
            FieldByName('SOIMAIN').AsString ,
            FieldByName('ROAD').AsString,
            FieldByName('VILLANAME').AsString ,
            FieldByName('VILLAGE').AsString,
           // TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str,
           // TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,
            FieldByName('TAMBON').AsString,
            FieldByName('AMPUR').AsString ,
          //  TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,
            FieldByName('CHANGWAT').AsString ,
            FieldByName('TELEPHONE').AsString ,
            FieldByName('MOBILE').AsString ,
            FieldByName('D_UPDATE').AsFloat
         );
       end;
     end;


     // update cardlist
   if fdm.cdsGetReport43CardList.State in [dsInsert,dsedit] then FDM.cdsGetReport43CardList.POST;
   //if FDM.cdsGetReport43CardList.ChangeCount>0 then
   begin
    FDM.cdsGetReport43CardList.First;
    while not FDM.cdsGetReport43CardList.Eof do
    begin
      FDM.WriteLog('update card ...');
       fdm.InsUpdCard(
          fdm.cdsGetReport43CardList.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43CardList.FieldByName('HOSPCODE').AsString ,
          fdm.cdsGetReport43PersonPID.AsInteger,
          //TString(cmbCardINSTYPEOLD.Items.Objects[cmbCardINSTYPEOLD.ItemIndex]).Str,
          //TString(cmbCardINSTYP.Items.Objects[cmbCardINSTYP.ItemIndex]).Str,
          fdm.cdsGetReport43CardList.FieldByName('INSTYPE_OLD').AsString ,
          fdm.cdsGetReport43CardList.FieldByName('INSTYPE_NEW').AsString ,
          fdm.cdsGetReport43CardList.FieldByName('INSID').AsString ,
          fdm.cdsGetReport43CardList.FieldByName('STARTDATE').AsFloat,
          fdm.cdsGetReport43CardList.FieldByName('EXPIREDATE').AsFloat ,
          //TString(cmbCardMAIN.Items.Objects[cmbCardMAIN.ItemIndex]).Str,
          //TString(cmbCardSUB.Items.Objects[cmbCardSUB.ItemIndex]).Str,
          fdm.cdsGetReport43CardList.FieldByName('MAIN').AsString ,
          fdm.cdsGetReport43CardList.FieldByName('SUB').AsString ,
          fdm.cdsGetReport43CardList.FieldByName('D_UPDATE').AsFloat
         );

      FDM.cdsGetReport43CardList.Next;
    end;


   end;

     ShowMessage('update success');
 except
  on ee:Exception do
    ShowMessage(ee.message);

 end;
end;
procedure TfrmRp43Person.btnRefreshClick(Sender: TObject);
var defaltPersonArea,k,icount,defaultNum:integer;
    defCode,defcode1:string;
    yrrStr,runStr,HN,_HN,CID:string;
    Age_date :Double;
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





    FDM.WriteLog('### Initial 0');

    cmbPersonSEX.ItemIndex    := fdm.loadCmbItems(cmbPersonSEX.Items,'PERSON','SEX','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonSEX.AsString,true);
    cmbRhGroup.ItemIndex      := fdm.loadCmbItems(cmbRhGroup.Items,'PERSON','RHGROUP','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRHGROUP.AsString,false);
    cmbVstatus.ItemIndex      := fdm.loadCmbItems(cmbVstatus.Items,'PERSON','VSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonVSTATUS.AsString,false);
    cmbMSTATUS.ItemIndex      := fdm.loadCmbItems(cmbMSTATUS.Items,'PERSON','MSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonMSTATUS.AsString,false);
    cmbDISCHARGE.ItemIndex    := fdm.loadCmbItems(cmbDISCHARGE.Items,'PERSON','DISCHARGE','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonDISCHARGE.AsString,false);

    if (dsReport43Person.DataSet.FieldByName('RACE').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := -1;
         end
    else cmbRace.ItemIndex      := fdm.loadCmbItems(cmbRace.Items,'PERSON','RACE','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRACE.AsString,true);

    if (dsReport43Person.DataSet.FieldByName('NATION').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := -1;
         end
    else cmbNation.ItemIndex       := fdm.loadCmbItems(cmbNation.Items,'PERSON','NATION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonNATION.AsString,true);


    if (dsReport43Person.DataSet.FieldByName('ABOGROUP').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := -1;
         end
    else cmbAbogroup.ItemIndex     := fdm.loadCmbItems(cmbAbogroup.Items,'PERSON','ABOGROUP','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonABOGROUP.AsString,false);


    if (dsReport43Person.DataSet.FieldByName('RELIGION').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := -1;
         end
    else cmbReligion.ItemIndex     := fdm.loadCmbItems(cmbReligion.Items,'PERSON','RELIGION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonRELIGION.AsString,true);


    if (dsReport43Person.DataSet.FieldByName('OCCUPATION_OLD').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := -1;
         end
    else cmbOccupationOld.ItemIndex:= fdm.loadCmbItems(cmbOccupationOld.Items,'PERSON','OCCUPATION_OLD','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonOCCUPATION_OLD.AsString,true);


    if (dsReport43Person.DataSet.FieldByName('OCCUPATION_NEW').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := -1;
         end
    else cmbOccupationNew.ItemIndex:= fdm.loadCmbItems(cmbOccupationNew.Items,'PERSON','OCCUPATION_NEW','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonOCCUPATION_NEW.AsString,true);


    if (dsReport43Person.DataSet.FieldByName('EDUCATION').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := -1;
         end
    else  cmbEducation.ItemIndex    := fdm.loadCmbItems(cmbEducation.Items,'PERSON','EDUCATION','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonEDUCATION.AsString,true);



    if (dsReport43Person.DataSet.FieldByName('FStatus').AsString ='') then
         begin
          cmbFStatus.ItemIndex  := fdm.loadCmbItems(cmbFStatus.Items,'PERSON','FSTATUS','43FILE_CODE','NAME1','2',false);
         end
    else cmbFStatus.ItemIndex      := fdm.loadCmbItems(cmbFStatus.Items,'PERSON','FSTATUS','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonFSTATUS.AsString,false);

    if not dsReport43Person.DataSet.FieldByName('BIRTH').IsNull then
    begin
     Age.Text := IntToStr(CalculateAge(StrToDate(FormatDateTime('dd/mm/',dsReport43Person.DataSet.FieldByName('BIRTH').AsDateTime)+IntToStr(YearOf(dsReport43Person.DataSet.FieldByName('BIRTH').AsDateTime)-543)),Now));
    end
    else Age.Clear;

      CID:=Trim(dsReport43Person.DataSet.FieldByName('CID').AsString);
      if Length(CID) <> 13 then
        begin
           UniDBEdit115.Color:=clRed;
        end;
     cmbPersonSEX.Enabled:=False;
     cmbEducation.Enabled:=False;
     cmbOccupationOld .Enabled:=False;
     cmbOccupationNew .Enabled:=False;
     cmbEducation.Enabled:=False;
 //    cmbFStatus.Enabled:=False;
     cmbRace.Enabled:=False;
     cmbNation.Enabled:=False;
     cmbReligion.Enabled:=False;
     cmbAbogroup.Enabled:=False;


    defaltPersonArea:=4;
    if FDM.checkPersonArea1(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=1;
    if FDM.checkPersonArea2(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=2;
    if FDM.checkPersonArea3(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=3;
    if FDM.checkPersonArea4(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=4;
    if FDM.checkPersonArea5(FDM.cdsGetReport43PersonPID.AsInteger) then defaltPersonArea:=5;


    FDM.cdsGetReport43Person.edit;
    FDM.cdsGetReport43PersonTYPEAREA.AsInteger:=defaltPersonArea;
    FDM.cdsGetReport43Person.Post;


    cmbPersonTypeArea.ItemIndex:= fdm.loadCmbItems(cmbPersonTypeArea.Items,'PERSON','TYPEAREA','43FILE_CODE','NAME1', FDM.cdsGetReport43PersonTYPEAREA.AsString,false);

    fdm.cdsGetReport43AddressType1.close;
    fdm.getAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43AddressType1.Open;

    dsGetReport43AddressType1.DataSet:=FDM.cdsGetReport43AddressType1;

    if fdm.cdsGetReport43AddressType1.RecordCount>0 then
    begin
      grpBoxAddrType1.Enabled:=true;
      if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString) ='')  then
      begin
        cmbAddrProvince1.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,'99',true);
      //  cmbAddrProvince1.ItemIndex :=77;
      end
      else
      begin
        defCode := Trim(fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString);
        cmbAddrProvince1.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,defCode,true);
      end;
      if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString) ='')  then
      begin
        cmbAddrAMPUR1.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,'','99',true);
      //  cmbAddrAMPUR1.ItemIndex :=928;
      end
      else
      begin
        cmbAddrAMPUR1.Items.Clear;
        defCode:=defCode+Trim(fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString);
        cmbAddrAMPUR1.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,'',defCode,true);
      end;
      if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString) ='')  then
      begin
         cmbAddrTAMBON1.ItemIndex    := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,'','','99',true);
      //   cmbAddrTAMBON1.ItemIndex :=7434;
      end
      else
      begin
        cmbAddrTAMBON1.Items.Clear;
        defCode:=defCode+Trim(fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString);
        cmbAddrTAMBON1.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,'','',defCode,true);
      end;

      if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('ADDRESSTYPE').AsString) ='') then
      begin
         cmbAddrADDRESSTYPE1.ItemIndex :=fdm.loadCmbItems(cmbAddrADDRESSTYPE1.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType1.FieldByName('ADDRESSTYPE').AsString,true);
         cmbAddrADDRESSTYPE1.ItemIndex  := 0 ;
      end
      else
      begin
      cmbAddrADDRESSTYPE1.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE1.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType1.FieldByName('ADDRESSTYPE').AsString,true);
      end;

      if  (Trim(FDM.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString) ='')  then
      begin
       cmbAddrHOUSETYPE1.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE1.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString,true);
       cmbAddrHOUSETYPE1.ItemIndex :=0 ;
      end
      else
      begin
      cmbAddrHOUSETYPE1.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE1.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString,true);
      end;
    end
    else
     begin
       grpBoxAddrType1.Enabled:=True;
      if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString) ='')  then
      begin
        cmbAddrProvince1.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,defCode,true);
        cmbAddrProvince1.ItemIndex  := -1 ;
      end
      else
      begin
      defCode := Trim(fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString);
      cmbAddrProvince1.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,defCode,true);
      end;
     if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString) ='')  then
      begin
       cmbAddrAMPUR1.ItemIndex:=fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,'',defCode,true);
       cmbAddrAMPUR1.ItemIndex:=-1;
      end
      else
      begin
      defCode:=defCode+Trim(fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString);
      cmbAddrAMPUR1.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,'',defCode,true);
      end;

     if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString) ='') then
      begin
       cmbAddrTAMBON1.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,'','',defCode,true);
       cmbAddrTAMBON1.ItemIndex   :=-1;
      end
      else
      begin
      defCode:=defCode+Trim(fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString);
      cmbAddrTAMBON1.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,'','',defCode,true);
      end;
      if (Trim(FDM.cdsGetReport43AddressType1.FieldByName('ADDRESSTYPE').AsString) ='')  then
      begin
         cmbAddrADDRESSTYPE1.ItemIndex :=fdm.loadCmbItems(cmbAddrADDRESSTYPE1.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType1.FieldByName('ADDRESSTYPE').AsString,true);
         cmbAddrADDRESSTYPE1.ItemIndex  := -1 ;
      end
      else
      begin
      cmbAddrADDRESSTYPE1.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE1.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType1.FieldByName('ADDRESSTYPE').AsString,true);
      end;
      if  (Trim(FDM.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString) ='') then
      begin
       cmbAddrHOUSETYPE1.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE1.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString,true);
       cmbAddrHOUSETYPE1.ItemIndex :=-1 ;
      end
      else
      begin
      cmbAddrHOUSETYPE1.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE1.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString,true);
      end;
     end;


    fdm.cdsGetReport43AddressType2.close;
    fdm.getAddressType2(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43AddressType2.Open;

    dsGetReport43AddressType2.DataSet:=FDM.cdsGetReport43AddressType2;
    if fdm.cdsGetReport43AddressType2.RecordCount>0 then
    begin
      grpBoxAddrType1.Enabled:=true;
      if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString) ='')  then
      begin
        cmbAddrProvince2.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince2.Items,0,'99',true);
       // cmbAddrProvince2.ItemIndex :=77;
      end
      else
      begin
        defCode := Trim(fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString);
        cmbAddrProvince2.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince2.Items,0,defCode,true);
      end;
      if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString) ='')  then
      begin
        cmbAddrAMPUR1.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,'','99',true);
       // cmbAddrAMPUR1.ItemIndex :=928;
      end
      else
      begin
        cmbAddrAMPUR2.Items.Clear;
        defCode:=defCode+Trim(fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString);
        cmbAddrAMPUR2.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,'',defCode,true);
      end;
      if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString) ='')  then
      begin
         cmbAddrTAMBON2.ItemIndex    := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,'','','99',true);
       //  cmbAddrTAMBON2.ItemIndex :=9999;
      end
      else
      begin
        cmbAddrTAMBON2.Items.Clear;
        defCode:=defCode+Trim(fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString);
        cmbAddrTAMBON2.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,'','',defCode,true);
      end;

      if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('ADDRESSTYPE').AsString) ='') then
      begin
         cmbAddrADDRESSTYPE2.ItemIndex :=fdm.loadCmbItems(cmbAddrADDRESSTYPE2.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType2.FieldByName('ADDRESSTYPE').AsString,true);
         cmbAddrADDRESSTYPE2.ItemIndex  := 0 ;
      end
      else
      begin
      cmbAddrADDRESSTYPE2.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE2.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType2.FieldByName('ADDRESSTYPE').AsString,true);
      end;

      if  (Trim(FDM.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString) ='')  then
      begin
       cmbAddrHOUSETYPE2.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE2.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString,true);
       cmbAddrHOUSETYPE2.ItemIndex :=0 ;
      end
      else
      begin
      cmbAddrHOUSETYPE2.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE2.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString,true);
      end;
    end
    else
     begin
       grpBoxAddrType1.Enabled:=True;
      if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString) ='')  then
      begin
        cmbAddrProvince2.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince2.Items,0,defCode,true);
        cmbAddrProvince2.ItemIndex  := -1 ;
      end
      else
      begin
      defCode := Trim(fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString);
      cmbAddrProvince2.ItemIndex := fdm.loadProviceList2CmbItems(cmbAddrProvince2.Items,0,defCode,true);
      end;
     if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString) ='')  then
      begin
       cmbAddrAMPUR2.ItemIndex:=fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,'',defCode,true);
       cmbAddrAMPUR2.ItemIndex:=-1;
      end
      else
      begin
      defCode:=defCode+Trim(fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString);
      cmbAddrAMPUR2.ItemIndex    := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,'',defCode,true);
      end;

     if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString) ='') then
      begin
       cmbAddrTAMBON2.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,'','',defCode,true);
       cmbAddrTAMBON2.ItemIndex   :=-1;
      end
      else
      begin
      defCode:=defCode+Trim(fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString);
      cmbAddrTAMBON2.ItemIndex   := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,'','',defCode,true);
      end;
      if (Trim(FDM.cdsGetReport43AddressType2.FieldByName('ADDRESSTYPE').AsString) ='')  then
      begin
         cmbAddrADDRESSTYPE2.ItemIndex :=fdm.loadCmbItems(cmbAddrADDRESSTYPE2.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType2.FieldByName('ADDRESSTYPE').AsString,true);
         cmbAddrADDRESSTYPE2.ItemIndex  := -1 ;
      end
      else
      begin
      cmbAddrADDRESSTYPE2.ItemIndex  :=fdm.loadCmbItems(cmbAddrADDRESSTYPE2.Items,'ADDRESS','ADDRESSTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43AddressType2.FieldByName('ADDRESSTYPE').AsString,true);
      end;
      if  (Trim(FDM.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString) ='') then
      begin
       cmbAddrHOUSETYPE2.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE2.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString,true);
       cmbAddrHOUSETYPE2.ItemIndex :=-1 ;
      end
      else
      begin
      cmbAddrHOUSETYPE2.ItemIndex    :=fdm.loadCmbItems(cmbAddrHOUSETYPE2.Items,'ADDRESS','HOUSETYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString,true);
      end;
     end;

      cmbAddrTAMBON1.Enabled  :=False;
      cmbAddrAMPUR1.Enabled:=False;
      cmbAddrProvince1.Enabled:=False;
      UniDBEdit175.Enabled:=False;
      UniDBEdit168.Enabled:=False;
      UniDBEdit181.Enabled:=False;

      cmbAddrTAMBON2.Enabled  :=False;
      cmbAddrProvince2.Enabled:=False;
      cmbAddrAMPUR2.Enabled:=False;
      UniDBEdit191.Enabled:=False;
      UniDBEdit198.Enabled:=False;
      UniDBEdit199.Enabled:=False;



   if fdm.cdsGetReport43Person.RecordCount<=0 then exit;

        fdm.cdsGetReport43CardList.close;
        fdm.getCardList(fdm.cdsGetReport43PersonPID.AsInteger);
        fdm.cdsGetReport43CardList.open;
        dsGetReport43CardList.DataSet:=FDM.cdsGetReport43CardList;

        FDM.WriteLog('### Initial 4');
 //       if FDM.cdsGetReport43CardList.Active then
        cmbCardINSTYPEOLD.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYPEOLD.Items,'CARD','INSTYPE_OLD','43FILE_CODE','NAME1', fdm.cdsGetReport43CardListINSTYPE_NEW.AsString,true);
        cmbCardMAIN.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardMAIN.Items,fdm.cdsGetReport43CardListMAIN.AsString,true);
        cmbCardSUB.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardSUB.Items,fdm.cdsGetReport43CardListSUB.AsString,true);
        cmbCardINSTYP.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYP.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43CardList.FieldByName('INSTYPE_NEW').AsString,true);

        if FDM.cdsGetReport43CardList.FieldByName('INSTYPE_NEW').AsString ='' then
        begin
          cmbCardINSTYP.ItemIndex :=-1;
        end;

        if FDM.cdsGetReport43CardList.FieldByName('MAIN').AsString ='' then
        begin
          cmbCardMAIN.ItemIndex :=-1;
        end ;
        if FDM.cdsGetReport43CardList.FieldByName('SUB').AsString ='' then
        begin
          cmbCardSUB.ItemIndex :=-1;
        end ;
       cmbCardINSTYP .Enabled:=False;
       cmbCardMAIN .Enabled:=False;
       cmbCardSUB .Enabled:=False;
       UniDBEdit128.Enabled:=False;
       UniDBEdit129.Enabled:=False;
       UniDBEdit130.Enabled:=False;


end;

procedure TfrmRp43Person.btnSyncClick(Sender: TObject);
begin
  inherited;
     if trim(edSearchCID.Text)='' then exit;
      syncIfx(pagesIndex[0]);
      btnRefreshClick(sender);
end;

function TfrmRp43Person.CalculateAge(Birthday, CurrentDate: TDate): Integer;
var
  Month, Day, Year, CurrentYear, CurrentMonth, CurrentDay: Word;
begin
    DecodeDate(Birthday, Year, Month, Day);
  DecodeDate(CurrentDate, CurrentYear, CurrentMonth, CurrentDay);
  if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay) then
  begin
    Result := 0;
  end
  else
  begin
    Result := CurrentYear - Year;
    if (Month > CurrentMonth) then
      Dec(Result)
    else
    begin
      if Month = CurrentMonth then
        if (Day > CurrentDay) then
          Dec(Result);
    end;
  end;

end;

procedure TfrmRp43Person.cmbAbogroupSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonABOGROUP.AsString
      :=TString(cmbAbogroup.Items.Objects[cmbAbogroup.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbAddrAMPUR1Select(Sender: TObject);
begin
  inherited;
  cmbAddrTAMBON1.Items.Clear;

  cmbAddrTAMBON1.ItemIndex
  := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str,TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str
  ,fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43AddressType1.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;

  fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString    := RightStr(TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str,2);
  fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString   := RightStr(TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str,2);
end;

procedure TfrmRp43Person.cmbAddrAMPUR2Select(Sender: TObject);
begin
  inherited;
  {  cmbAddrTAMBON2.Items.Clear;
    cmbAddrTAMBON2.ItemIndex := fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
     fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString:=Before('-',TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str);
   }
  cmbAddrTAMBON2.Items.Clear;
  cmbAddrTAMBON2.ItemIndex:= fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;

  fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString    := RightStr(TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,2);
  fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString   := RightStr(TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str,2);


end;

procedure TfrmRp43Person.cmbAddrHOUSETYPE1Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43AddressType1.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType1.edit;
          fdm.cdsGetReport43AddressType1.FieldByName('HOUSETYPE').AsString
          :=TString(cmbAddrHOUSETYPE1.Items.Objects[cmbAddrHOUSETYPE1.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbAddrHOUSETYPE2Select(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
          fdm.cdsGetReport43AddressType2.FieldByName('HOUSETYPE').AsString
          :=TString(cmbAddrHOUSETYPE2.Items.Objects[cmbAddrHOUSETYPE2.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbAddrProvince1Select(Sender: TObject);
begin
  inherited;
  cmbAddrAMPUR1.Items.Clear;
  cmbAddrAMPUR1.ItemIndex := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str,fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString,true);

  cmbAddrTAMBON1.Items.Clear;
  cmbAddrTAMBON1.ItemIndex:= fdm.loadTumbonList2CmbItems(cmbAddrTAMBON1.Items,TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str,TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str,fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43AddressType1.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType1.edit;

  fdm.cdsGetReport43AddressType1.FieldByName('CHANGWAT').AsString :=TString(cmbAddrProvince1.Items.Objects[cmbAddrProvince1.ItemIndex]).Str;
  fdm.cdsGetReport43AddressType1.FieldByName('AMPUR').AsString    := RightStr(TString(cmbAddrAMPUR1.Items.Objects[cmbAddrAMPUR1.ItemIndex]).Str,2);
  fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString   := RightStr(TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str,2);
end;

procedure TfrmRp43Person.cmbAddrProvince2Select(Sender: TObject);
begin
  inherited;
 {  cmbAddrAMPUR2.Items.Clear;
   cmbAddrAMPUR2.ItemIndex:= fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString,true);


  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
     fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString:=TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str;

  }
  cmbAddrAMPUR2.Items.Clear;
  cmbAddrAMPUR2.ItemIndex := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString,true);

  cmbAddrTAMBON2.Items.Clear;
  cmbAddrTAMBON2.ItemIndex:= fdm.loadTumbonList2CmbItems(cmbAddrTAMBON2.Items,TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str,TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString,true);

  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;

  fdm.cdsGetReport43AddressType2.FieldByName('CHANGWAT').AsString :=TString(cmbAddrProvince2.Items.Objects[cmbAddrProvince2.ItemIndex]).Str;
  fdm.cdsGetReport43AddressType2.FieldByName('AMPUR').AsString    := RightStr(TString(cmbAddrAMPUR2.Items.Objects[cmbAddrAMPUR2.ItemIndex]).Str,2);
  fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString   := RightStr(TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str,2);




end;

procedure TfrmRp43Person.cmbAddrTAMBON1Select(Sender: TObject);
begin
  inherited;
  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;

  cmbAddrAMPUR1.Items.Clear;
  cmbAddrProvince1.Items.Clear;

  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbAddrAMPUR1.ItemIndex
      := fdm.loadAmpList2CmbItems(cmbAddrAMPUR1.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str,true);
    cmbAddrProvince1.ItemIndex
      := fdm.loadProviceList2CmbItems(cmbAddrProvince1.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43AddressType1.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType1.edit;
  fdm.cdsGetReport43AddressType1.FieldByName('TAMBON').AsString   := RightStr(TString(cmbAddrTAMBON1.Items.Objects[cmbAddrTAMBON1.ItemIndex]).Str,2);
end;

procedure TfrmRp43Person.cmbAddrTAMBON2Select(Sender: TObject);
begin
  inherited;
  fdm.cdsGetTumbon.close;
  fdm.getTumbon(TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str);
  fdm.cdsGetTumbon.Open;

  cmbAddrAMPUR2.Items.Clear;
  cmbAddrProvince2.Items.Clear;

  if fdm.cdsGetTumbon.RecordCount>0 then
  begin
    cmbAddrAMPUR2.ItemIndex
      := fdm.loadAmpList2CmbItems(cmbAddrAMPUR2.Items,fdm.cdsGetTumbon.FieldByName('PRV').AsString,TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str,true);
    cmbAddrProvince2.ItemIndex
      := fdm.loadProviceList2CmbItems(cmbAddrProvince2.Items,0,fdm.cdsGetTumbon.FieldByName('PRV').AsString,true);
  end;

  if not (fdm.cdsGetReport43AddressType2.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AddressType2.edit;
  fdm.cdsGetReport43AddressType2.FieldByName('TAMBON').AsString   := RightStr(TString(cmbAddrTAMBON2.Items.Objects[cmbAddrTAMBON2.ItemIndex]).Str,2);


end;

procedure TfrmRp43Person.cmbCardINSTYPSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43CardList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43CardList.edit;

  if TString(cmbCardINSTYP.Items.Objects[cmbCardINSTYP.ItemIndex]).Str ='9100' then
  begin
    fdm.cdsGetReport43CardList.FieldByName('INSID').Clear;
    fdm.cdsGetReport43CardList.FieldByName('STARTDATE').Clear;
    fdm.cdsGetReport43CardList.FieldByName('EXPIREDATE').Clear;
    fdm.cdsGetReport43CardList.FieldByName('SUB').Clear;
    fdm.cdsGetReport43CardList.FieldByName('MAIN').Clear;
    cmbCardSUB.ItemIndex:=-1;
    cmbCardMAIN.ItemIndex:=-1;
  end;

  fdm.cdsGetReport43CardListINSTYPE_NEW.AsString:=TString(cmbCardINSTYP.Items.Objects[cmbCardINSTYP.ItemIndex]).Str;
  fdm.cdsGetReport43CardList.Post;

end;

procedure TfrmRp43Person.cmbCardMAINSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43CardList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43CardList.edit;
      fdm.cdsGetReport43CardListMAIN.AsString
      //:=Before('-',TString(cmbCardMAIN.Items.Objects[cmbCardMAIN.ItemIndex]).Str);
      :=TString(cmbCardMAIN.Items.Objects[cmbCardMAIN.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbCardSUBExit(Sender: TObject);
begin
  inherited;
  btnConfirm.SetFocus;
end;

procedure TfrmRp43Person.cmbCardSUBSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43CardList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43CardList.edit;
      fdm.cdsGetReport43CardListSUB.AsString
      //:=Before('-',TString(cmbCardSUB.Items.Objects[cmbCardSUB.ItemIndex]).Str);
      :=TString(cmbCardSUB.Items.Objects[cmbCardSUB.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbDISCHARGESelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonDISCHARGE.AsString
    //:=Before('-',TString(cmbDISCHARGE.Items.Objects[cmbDISCHARGE.ItemIndex]).Str);
    :=TString(cmbDISCHARGE.Items.Objects[cmbDISCHARGE.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbEducationSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
     fdm.cdsGetReport43PersonEDUCATION.AsString
     //:=Before('-',TString(cmbEducation.Items.Objects[cmbEducation.ItemIndex]).Str);
     :=TString(cmbEducation.Items.Objects[cmbEducation.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbFStatusSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonFSTATUS.AsString
     //:=Before('-',TString(cmbFStatus.Items.Objects[cmbFStatus.ItemIndex]).Str);
     :=TString(cmbFStatus.Items.Objects[cmbFStatus.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbMSTATUSSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonMSTATUS.AsString
      //:=Before('-',TString(cmbMSTATUS.Items.Objects[cmbMSTATUS.ItemIndex]).Str);
      :=TString(cmbMSTATUS.Items.Objects[cmbMSTATUS.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbNationSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
       fdm.cdsGetReport43PersonNATION.AsString
       //:=Before('-',TString(cmbNation.Items.Objects[cmbNation.ItemIndex]).Str);
       :=TString(cmbNation.Items.Objects[cmbNation.ItemIndex]).Str;

end;

procedure TfrmRp43Person.cmbOccupationNewSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonOCCUPATION_NEW.AsString
       :=TString(cmbOccupationNew.Items.Objects[cmbOccupationNew.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbOccupationOldSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonOCCUPATION_OLD.AsString
      :=TString(cmbOccupationOld.Items.Objects[cmbOccupationOld.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbPersonTypeAreaSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonTYPEAREA.AsString
      :=TString(cmbPersonTypeArea.Items.Objects[cmbPersonTypeArea.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbRaceSelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonRACE.AsString
      :=TString(cmbRace.Items.Objects[cmbRace.ItemIndex]).Str;

end;

procedure TfrmRp43Person.cmbReligionSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
     fdm.cdsGetReport43PersonRELIGION.AsString
    :=TString(cmbReligion.Items.Objects[cmbReligion.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbRhGroupSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
      fdm.cdsGetReport43PersonRHGROUP.AsString
      :=TString(cmbRhGroup.Items.Objects[cmbRhGroup.ItemIndex]).Str;
end;

procedure TfrmRp43Person.cmbVstatusSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43Person.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43Person.edit;
     fdm.cdsGetReport43PersonVSTATUS.AsString
     :=TString(cmbVstatus.Items.Objects[cmbVstatus.ItemIndex]).Str;
end;

procedure TfrmRp43Person.dsGetReport43CardListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  {
  fdm.cdsGetReport43Card.close;
  fdm.getCard(FDM.cdsGetReport43CardListREPORTID.AsInteger);
  fdm.cdsGetReport43Card.open;
  }
  {

  if fdm.cdsGetReport43CardList.RecordCount>0 then
  begin
    cmbCardINSTYPEOLD.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYPEOLD.Items,'CARD','INSTYPE_OLD','43FILE_CODE','NAME1', fdm.cdsGetReport43CardListINSTYPE_OLD.AsString,true);
    cmbCardINSTYP.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYP.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43CardListINSTYPE_NEW.AsString,true);
    cmbCardMAIN.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardMAIN.Items,fdm.cdsGetReport43CardListMAIN.AsString,true);
    cmbCardSUB.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardSUB.Items,fdm.cdsGetReport43CardListSUB.AsString,true);
  end;
  }
end;

procedure TfrmRp43Person.edSearchCIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
  begin
    btnRefresh.ScreenMask.InitMask;
    btnRefresh.Click;
   end;
end;

function TfrmRp43Person.GetDocPID(DOCT: Integer): Integer;
var
I :Integer;
begin
 {  FDM.cdsGetReport43Person.data:=('select * from report43_card where REPORTID='+inttostr(REPORTID)+' and PID='+inttostr(PID) );
  if True then
 }
end;

procedure TfrmRp43Person.RsetComboBox;
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

procedure TfrmRp43Person.syncIfx(intArr: array of Integer);
var defaltPersonArea,defaultNum:integer;
    yrrStr,runStr,HN,_HN:string;
begin
  if trim(edSearchCID.Text)='' then exit;

  if trim(edSearchCID.Text)='' then exit;
  HN := trim(edSearchCID.Text);

  if length(HN)<8 then
  begin
   yrrStr:=Copy(HN,1,2);
   runStr:=Copy(HN,3,length(HN)-2);
   _HN:=yrrStr+FormatCurr('000000',strtoint(runStr));
  end else
    _HN:=HN;

  if fdm.cdsGetReport43Person.RecordCount<=0 then exit ;

    fdm.syncPerson(_HN);
   if fdm.cdsGetReport43Person.RecordCount>0 then
      begin
        fdm.syncCardList(fdm.cdsGetReport43PersonPID.AsInteger);
        fdm.syncAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
        fdm.syncAddressType2(fdm.cdsGetReport43PersonPID.AsInteger);
      end;
end;

procedure TfrmRp43Person.UniDBEdit113Exit(Sender: TObject);
begin
  inherited;
  cmbAddrADDRESSTYPE1.SetFocus;
end;

procedure TfrmRp43Person.UniDBEdit181Exit(Sender: TObject);
begin
  inherited;
  cmbAddrADDRESSTYPE2.SetFocus;
end;

procedure TfrmRp43Person.UniDBEdit199Exit(Sender: TObject);
begin
  inherited;
  UniPageControl2.ActivePageIndex:=1;
  cmbCardINSTYP.SetFocus;
end;

procedure TfrmRp43Person.UniDBEdit6Exit(Sender: TObject);
begin
  inherited;
  unidbedit115.SetFocus;
end;

procedure TfrmRp43Person.UniDBGrid18CellClick(Column: TUniDBGridColumn);
begin
  inherited;
  if fdm.cdsGetReport43CardList.RecordCount>0 then
  begin
    cmbCardINSTYPEOLD.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYPEOLD.Items,'CARD','INSTYPE_OLD','43FILE_CODE','NAME1', fdm.cdsGetReport43CardListINSTYPE_OLD.AsString,true);
    cmbCardINSTYP.ItemIndex :=fdm.loadCmbItems(cmbCardINSTYP.Items,'*','INSTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43CardListINSTYPE_NEW.AsString,true);
    cmbCardMAIN.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardMAIN.Items,fdm.cdsGetReport43CardListMAIN.AsString,true);
    cmbCardSUB.ItemIndex := fdm.loadHospNameList2CmbItems(cmbCardSUB.Items,fdm.cdsGetReport43CardListSUB.AsString,true);
    if FDM.cdsGetReport43CardList.FieldByName('MAIN').AsString ='' then
    begin
      cmbCardMAIN.ItemIndex :=-1;
    end ;
    if FDM.cdsGetReport43CardList.FieldByName('SUB').AsString ='' then
    begin
      cmbCardSUB.ItemIndex :=-1;
    end ;

  end;
end;

procedure TfrmRp43Person.UniFormCreate(Sender: TObject);
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

procedure TfrmRp43Person.UniFormShow(Sender: TObject);
begin
  inherited;
  RsetComboBox;
  if UniApplication.Parameters.Values['PID']<>'' then
  begin
    UniTimerAutoGet.Enabled:=true;
  end;
end;

procedure TfrmRp43Person.UniTimerAutoGetTimer(Sender: TObject);
var HN:string;
begin
  inherited;
    hn:=  FDM.getHN(strtoint(UniApplication.Parameters.Values['PID']));
      if HN<>'' then
      begin
        edSearchCID.Text:=HN;
        UniTimerRefresh.Enabled:=True;
      end else
    ShowMessage('ไม่พบ PID ที่ต้องการค้นหา');
end;

procedure TfrmRp43Person.UniTimerRefreshTimer(Sender: TObject);
begin
  inherited;
    UniTimerRefresh.Enabled:=false;
    btnRefreshClick(nil);
end;

end.
