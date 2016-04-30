unit Rp43LaborRoom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainDataFormClass, uniGUIClasses,
  uniScreenMask, uniButton, Vcl.Imaging.GIFImg, uniImage,
  uniGUIBaseClasses, uniPanel, uniPageControl, uniMultiItem, uniComboBox,
  uniDBEdit, uniLabel, uniEdit, uniBasicGrid, uniDBGrid, uniBitBtn, Data.DB,DS43FileIntfDM,MainModuleEx,
  uniTimer, uniDateTimePicker, uniDBDateTimePicker;

type
  TfrmRp43LaborRoom = class(TMainDataForm)
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
    dsGetReport43Epi: TDataSource;
    scRefresh: TUniScreenMask;
    dsReport43Person: TDataSource;
    dsGetReport43Prenatal: TDataSource;
    dsGetReport43Anc: TDataSource;
    dsGetReport43LabOr: TDataSource;
    dsGetReport43Postnatal: TDataSource;
    dsGetReport43Newborn: TDataSource;
    dsGetReport43EpiList: TDataSource;
    dsGetReport43PostnatalList: TDataSource;
    dsGetReport43PrenatalList: TDataSource;
    dsGetReport43AncList: TDataSource;
    dsGetReport43LabOrList: TDataSource;
    dsGetReport43NewbornList: TDataSource;
    UniTimerAutoGet: TUniTimer;
    UniTimerRefresh: TUniTimer;
    UniScreenMask1: TUniScreenMask;
    UniPageControl1: TUniPageControl;
    UniTabSheet2: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniLabel72: TUniLabel;
    UniDBEdit46: TUniDBEdit;
    UniLabel73: TUniLabel;
    UniLabel74: TUniLabel;
    UniLabel81: TUniLabel;
    UniLabel82: TUniLabel;
    UniDBEdit54: TUniDBEdit;
    UniLabel84: TUniLabel;
    UniLabel85: TUniLabel;
    UniLabel86: TUniLabel;
    UniLabel88: TUniLabel;
    btnAddNewPrenatal: TUniButton;
    cmbPrenatalVDRL_RESULT: TUniComboBox;
    cmbPrenatalHB_RESULT: TUniComboBox;
    cmbPrenatalHIV_RESULT: TUniComboBox;
    cmbPrenatalTHALASSEMIA: TUniComboBox;
    UniButton2: TUniButton;
    UniPanel4: TUniPanel;
    UniPageControl2: TUniPageControl;
    UniTabSheet7: TUniTabSheet;
    UniLabel54: TUniLabel;
    UniDBEdit37: TUniDBEdit;
    GRAVIDA: TUniDBEdit;
    UniLabel55: TUniLabel;
    UniLabel59: TUniLabel;
    UniLabel64: TUniLabel;
    UniDBEdit41: TUniDBEdit;
    UniLabel65: TUniLabel;
    UniLabel67: TUniLabel;
    UniLabel69: TUniLabel;
    UniDBEdit43: TUniDBEdit;
    UniLabel70: TUniLabel;
    cmbAncANCNO: TUniComboBox;
    btnAddNewANC: TUniBitBtn;
    cmbAncANCRESULT: TUniComboBox;
    cmbAncANCPLACE: TUniComboBox;
    UniPanel5: TUniPanel;
    UniDBGrid5: TUniDBGrid;
    UniButton3: TUniButton;
    UniTabSheet8: TUniTabSheet;
    UniLabel111: TUniLabel;
    UniDBEdit71: TUniDBEdit;
    UniLabel113: TUniLabel;
    UniDBEdit72: TUniDBEdit;
    UniLabel114: TUniLabel;
    UniLabel115: TUniLabel;
    UniLabel117: TUniLabel;
    UniDBEdit76: TUniComboBox;
    UniLabel118: TUniLabel;
    UniLabel121: TUniLabel;
    UniLabel122: TUniLabel;
    LBORN: TUniDBEdit;
    UniLabel116: TUniLabel;
    SBORN: TUniDBEdit;
    UniLabel119: TUniLabel;
    cmbLaborBPLACE: TUniComboBox;
    cmbLaborBTYPE: TUniComboBox;
    cmbLaborBDOCTOR: TUniComboBox;
    btnAddNewLabor: TUniButton;
    cmbLaborBRESULT: TUniComboBox;
    UniDBEdit7: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniPanel6: TUniPanel;
    UniDBGrid15: TUniDBGrid;
    UniButton4: TUniButton;
    UniDBGrid14: TUniDBGrid;
    UniDBEdit51: TUniDBDateTimePicker;
    UniDBEdit39: TUniDBDateTimePicker;
    UniDBEdit48: TUniDBDateTimePicker;
    UniDBEdit55: TUniDBDateTimePicker;
    UniDBEdit69: TUniDBDateTimePicker;
    UniTabSheet1: TUniTabSheet;
    UniLabel327: TUniLabel;
    UniLabel328: TUniLabel;
    UniLabel330: TUniLabel;
    UniDBEdit208: TUniDBEdit;
    UniLabel331: TUniLabel;
    UniLabel332: TUniLabel;
    UniLabel333: TUniLabel;
    UniDBEdit212: TUniDBEdit;
    UniLabel334: TUniLabel;
    btnAddNewNEWBORN: TUniBitBtn;
    cmbNewbornBTYPE: TUniComboBox;
    cmbNewbornBDOCTOR: TUniComboBox;
    cmbNewbornASPHYXIA: TUniComboBox;
    cmbNewbornVITK: TUniComboBox;
    cmbNewbornTSH: TUniComboBox;
    UniLabel3: TUniLabel;
    UniDBEdit74: TUniDBEdit;
    UniLabel299: TUniLabel;
    UniDBEdit180: TUniDBEdit;
    UniLabel316: TUniLabel;
    UniDBEdit196: TUniDBEdit;
    UniDBEdit200: TUniDBDateTimePicker;
    UniLabel322: TUniLabel;
    UniLabel323: TUniLabel;
    BTIME: TUniDBEdit;
    UniLabel324: TUniLabel;
    UniLabel325: TUniLabel;
    UniLabel326: TUniLabel;
    cmbNewbornBPLACE: TUniComboBox;
    cmbNewbornBHOSP: TUniComboBox;
    cmbNewbornBIRTHNO: TUniComboBox;
    UniBitBtn1: TUniBitBtn;
    UniDBGrid28: TUniDBGrid;
    UniDBEdit8: TUniDBEdit;
    UniLabel11: TUniLabel;
    procedure btnRefreshClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure dsGetReport43EpiListDataChange(Sender: TObject;
      Field: TField);
    procedure UniFormShow(Sender: TObject);
    procedure dsGetReport43PrenatalListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43AncListDataChange(Sender: TObject;
      Field: TField);
    procedure dsGetReport43LabOrListDataChange(Sender: TObject;
      Field: TField);
    procedure btnConfirmClick(Sender: TObject);
    procedure UniTimerAutoGetTimer(Sender: TObject);
    procedure UniTimerRefreshTimer(Sender: TObject);
    procedure btnAddNewEPIClick(Sender: TObject);
    procedure btnAddNewPrenatalClick(Sender: TObject);
    procedure btnAddNewANCClick(Sender: TObject);
    procedure btnAddNewLaborClick(Sender: TObject);
    procedure btnAddNewPOSTNATALClick(Sender: TObject);
    procedure btnAddNewNEWBORNClick(Sender: TObject);
    procedure cmbAncANCNOSelect(Sender: TObject);
    procedure cmbAncANCPLACESelect(Sender: TObject);
    procedure cmbAncANCRESULTSelect(Sender: TObject);
    procedure cmbLaborBDOCTORSelect(Sender: TObject);
    procedure cmbLaborBTYPESelect(Sender: TObject);
    procedure cmbLaborBPLACESelect(Sender: TObject);
    procedure cmbLaborBRESULTSelect(Sender: TObject);
    procedure cmbLaborBRESULTKeyPress(Sender: TObject; var Key: Char);
    procedure cmbPrenatalVDRL_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalTHALASSEMIASelect(Sender: TObject);
    procedure cmbPrenatalHB_RESULTSelect(Sender: TObject);
    procedure cmbPrenatalHIV_RESULTSelect(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure UniDBEdit41Exit(Sender: TObject);
    procedure UniDBEdit76Select(Sender: TObject);
    procedure UniDBEdit51Change(Sender: TObject);
    procedure UniDBEdit48Change(Sender: TObject);
    procedure cmbNewbornBTYPESelect(Sender: TObject);
    procedure cmbNewbornTSHSelect(Sender: TObject);
    procedure cmbNewbornBPLACESelect(Sender: TObject);
    procedure cmbNewbornBHOSPSelect(Sender: TObject);
    procedure cmbNewbornBIRTHNOSelect(Sender: TObject);
    procedure cmbNewbornVITKSelect(Sender: TObject);
    procedure cmbNewbornASPHYXIASelect(Sender: TObject);
    procedure dsGetReport43NewbornListDataChange(Sender: TObject;
      Field: TField);
    procedure edSearchCIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    FDM: TDS43FileDM;
    FUserSession: TUniMainModule;
    procedure RsetComboBox;

    { Private declarations }
  public
    { Public declarations }
    property DM : TDS43FileDM  read FDM write FDM;
    procedure syncIfx(intArr : array of Integer);
  end;
type
  TIntArray = array of Integer;

var
  frmRp43LaborRoom: TfrmRp43LaborRoom;
  pagesIndex : array of TIntArray ;
implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents, ServerModuleEx, DS43FileIntf;



procedure TfrmRp43LaborRoom.btnAddNewPrenatalClick(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43PrenatalList.Active then
  begin
    FDM.getPrenatal(0);
    FDM.cdsGetReport43PrenatalList.Open;
  end;


  if not (FDM.cdsGetReport43PrenatalList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43PrenatalList.Append;
    dsGetReport43PrenatalList.DataSet.FieldByName('VDRL_RESULT').AsString:='1';
    dsGetReport43PrenatalList.DataSet.FieldByName('HB_RESULT').AsString:='1';
    dsGetReport43PrenatalList.DataSet.FieldByName('HIV_RESULT').AsString:='1';
    dsGetReport43PrenatalList.DataSet.FieldByName('THALASSEMIA').AsString:='1';
    cmbPrenatalVDRL_RESULT.Enabled:=True;
    cmbPrenatalHB_RESULT.Enabled:=True;
    cmbPrenatalHIV_RESULT.Enabled:=True;
    cmbPrenatalTHALASSEMIA.Enabled:=True;
    UniDBEdit46.Enabled:=True;
    UniDBEdit51.Enabled:=True;
    UniDBEdit48.Enabled:=True;
    UniDBEdit55.Enabled:=True;
    UniDBEdit54.Enabled:=True;
  end;
end;

procedure TfrmRp43LaborRoom.btnAddNewANCClick(Sender: TObject);
begin
  inherited;
  if not FDM.cdsGetReport43AncList.Active then
  begin
    FDM.getAnc(0);
    FDM.cdsGetReport43AncList.Open;
    cmbAncANCNO.Items.Clear;
    cmbAncANCNO.ItemIndex  :=fdm.loadCmbItems(cmbAncANCNO.Items,'ANC','ANCNO','43FILE_CODE','NAME1','',true);
  end;


  if not (FDM.cdsGetReport43AncList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43AncList.Append;

   // dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString:='1';
    dsGetReport43AncList.DataSet.FieldByName('ANCRESULT').AsString:='1';
    dsGetReport43AncList.DataSet.FieldByName('ANCPLACE').AsString:='13754';
    cmbAncANCPLACE.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbAncANCPLACE.Items,fdm.cdsGetReport43AncListANCPLACE.AsString,true);
    cmbAncANCRESULT.Enabled:=True;
    cmbAncANCPLACE.Enabled:=True;
    cmbAncANCNO.Enabled:=False;
    UniDBEdit37.Enabled:=True;
    UniDBEdit39.Enabled:=True;
    UniDBEdit41.Enabled:=True;
    UniDBEdit43.Enabled:=True;
    if dsGetReport43AncList.DataSet.FieldByName('GA').AsString = '' then cmbAncANCNO.ItemIndex :=-1;
  end;
end;

procedure TfrmRp43LaborRoom.btnAddNewLaborClick(Sender: TObject);
begin
  inherited;
 { if not FDM.cdsGetReport43LabOrList.Active then
  begin
    FDM.getLabOr(0);
    FDM.cdsGetReport43LabOrList.Open;

    cmbLaborBPLACE.Items.clear;
    cmbLaborBTYPE.items.clear;
    cmbLaborBDOCTOR.items.clear;

    cmbLaborBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1','',true);
    cmbLaborBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1', '',true);
    cmbLaborBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbLaborBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1', '',true);

  end;
  }

  if not (FDM.cdsGetReport43LabOrList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43LabOrList.Append;
    dsGetReport43LabOrList.DataSet.FieldByName('BDOCTOR').AsString:='1';
    dsGetReport43LabOrList.DataSet.FieldByName('BPLACE').AsString:='1';
    dsGetReport43LabOrList.DataSet.FieldByName('BTYPE').AsString:='1';
    dsGetReport43LabOrList.DataSet.FieldByName('BHOSP').AsString:='13754';
    UniDBEdit76.ItemIndex  :=fdm.loadHospNameList2CmbItems(UniDBEdit76.Items,fdm.cdsGetReport43LabOrListBHOSP.AsString,true);
    cmbLaborBPLACE.Enabled:=True;
    cmbLaborBTYPE.Enabled:=True;
    cmbLaborBDOCTOR.Enabled:=True;
    cmbLaborBRESULT.Enabled:=True;
    LBORN.Enabled:=True;
    SBORN.Enabled:=True;
    UniDBEdit7.Enabled:=True;
    UniDBEdit69.Enabled:=True;
    UniDBEdit71.Enabled:=True;
    UniDBEdit72.Enabled:=True;
    UniDBEdit76.Enabled:=True;
  end;
end;

procedure TfrmRp43LaborRoom.btnAddNewEPIClick(Sender: TObject);
begin
  inherited;
 //
end;

procedure TfrmRp43LaborRoom.btnAddNewNEWBORNClick(Sender: TObject);
begin
  inherited;
  if not (FDM.cdsGetReport43NewbornList.State in [dsedit,dsinsert]) then
  begin
    FDM.cdsGetReport43NewbornList.Append;
    dsGetReport43NewbornList.DataSet.FieldByName('BPLACE').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('BIRTHNO').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('BTYPE').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('BDOCTOR').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('ASPHYXIA').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('VITK').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('TSH').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('BHOSP').AsString:='13754';
    dsGetReport43NewbornList.DataSet.FieldByName('TSH').AsString:='1';
    dsGetReport43NewbornList.DataSet.FieldByName('TSH').AsString:='1';
    cmbNewbornBHOSP.ItemIndex  :=fdm.loadHospNameList2CmbItems(cmbNewbornBHOSP.Items,fdm.cdsGetReport43NewbornListBHOSP.AsString,true);
    dsGetReport43NewbornList.DataSet.FieldByName('MPID').AsInteger:=FDM.cdsGetReport43PersonPID.AsInteger;
    dsGetReport43NewbornList.DataSet.FieldByName('GRAVIDA').AsInteger:=FDM.cdsGetReport43PrenatalList.FieldByName('GRAVIDA').AsInteger;
    UniDBEdit74.Enabled:=True;
    cmbNewbornBDOCTOR.Enabled:=True;
    BTIME.Enabled:=True;
    cmbNewbornASPHYXIA .Enabled:=True;
    cmbNewbornBIRTHNO.Enabled:=True;
    UniDBEdit8 .Enabled:=True;
    UniDBEdit196 .Enabled:=True;
    UniDBEdit208 .Enabled:=True;
    cmbNewbornBHOSP.Enabled:=True;
    cmbNewbornTSH .Enabled:=True;
    cmbNewbornBTYPE .Enabled:=True;
    UniDBEdit200 .Enabled:=True;
    cmbNewbornBPLACE .Enabled:=True;
    cmbNewbornVITK .Enabled:=True;
    UniDBEdit212 .Enabled:=True;

  end;

end;

procedure TfrmRp43LaborRoom.btnAddNewPOSTNATALClick(Sender: TObject);
begin
  inherited;
//
end;



procedure TfrmRp43LaborRoom.btnConfirmClick(Sender: TObject);
begin

try

 // update prenatal
   if fdm.cdsGetReport43PrenatalList.state in [dsinsert,dsedit] then
   begin
     FDM.WriteLog('update prenatal...');
     fdm.cdsGetReport43PrenatalList.post;
     fdm.InsUpdPrenatal(
          fdm.cdsGetReport43PrenatalList.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43PrenatalList.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43PrenatalList.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43PrenatalList.FieldByName('GRAVIDA').AsString,
          fdm.cdsGetReport43PrenatalList.FieldByName('LMP').AsFloat,
          fdm.cdsGetReport43PrenatalList.FieldByName('EDC').AsFloat,
          fdm.cdsGetReport43PrenatalList.FieldByName('VDRL_RESULT').AsString,
          fdm.cdsGetReport43PrenatalList.FieldByName('HB_RESULT').AsString,
          fdm.cdsGetReport43PrenatalList.FieldByName('HIV_RESULT').AsString,
          fdm.cdsGetReport43PrenatalList.FieldByName('DATE_HCT').AsDateTime,
          fdm.cdsGetReport43PrenatalList.FieldByName('HCT_RESULT').AsInteger,
          fdm.cdsGetReport43PrenatalList.FieldByName('THALASSEMIA').AsString,
          fdm.cdsGetReport43PrenatalList.FieldByName('D_UPDATE').AsFloat
     );
   end;

   // update anc
   if fdm.cdsGetReport43AncList.State in [dsInsert,dsedit] then FDM.cdsGetReport43AncList.POST;
   if FDM.cdsGetReport43AncList.ChangeCount>0 then
   begin
    FDM.cdsGetReport43AncList.First;
    while not FDM.cdsGetReport43AncList.Eof do
    begin
      fdm.InsUpdAnc(
              fdm.cdsGetReport43AncList.FieldByName('REPORTID').AsInteger,
              fdm.cdsGetReport43AncList.FieldByName('HOSPCODE').AsString,
              fdm.cdsGetReport43AncList.FieldByName('PID').AsInteger,
              fdm.cdsGetReport43AncList.FieldByName('SEQ').AsInteger,
              fdm.cdsGetReport43AncList.FieldByName('DATE_SERV').AsFloat,
              fdm.cdsGetReport43AncList.FieldByName('GRAVIDA').AsString,
             // fdm.cdsGetReport43AncList.FieldByName('ANCNO').AsString,
              TString(cmbAncANCNO.Items.Objects[cmbAncANCNO.ItemIndex]).Str,
              fdm.cdsGetReport43AncList.FieldByName('GA').AsString,
              fdm.cdsGetReport43AncList.FieldByName('ANCRESULT').AsString,
              fdm.cdsGetReport43AncList.FieldByName('ANCPLACE').AsString,
              fdm.cdsGetReport43AncList.FieldByName('PROVIDER').AsString,
              fdm.cdsGetReport43AncList.FieldByName('D_UPDATE').AsFloat
         );

          FDM.cdsGetReport43AncList.Next;
    end;


   end;


 {  if fdm.cdsGetReport43Anc.State in [dsInsert,dsedit] then
   begin
     FDM.WriteLog('update anc...');
     fdm.cdsGetReport43Anc.post;
     fdm.InsUpdAnc(
          fdm.cdsGetReport43Anc.FieldByName('REPORTID').AsInteger,
          fdm.cdsGetReport43Anc.FieldByName('HOSPCODE').AsString,
          fdm.cdsGetReport43Anc.FieldByName('PID').AsInteger,
          fdm.cdsGetReport43Anc.FieldByName('SEQ').AsInteger,
          fdm.cdsGetReport43Anc.FieldByName('DATE_SERV').AsFloat,
          fdm.cdsGetReport43Anc.FieldByName('GRAVIDA').AsString,
          TString(cmbAncANCNO.Items.Objects[cmbAncANCNO.ItemIndex]).Str,
          //fdm.cdsGetReport43Anc.FieldByName('ANCNO').AsString,
          fdm.cdsGetReport43Anc.FieldByName('GA').AsString,
          TString(cmbAncANCRESULT.Items.Objects[cmbAncANCRESULT.ItemIndex]).Str,
          TString(cmbAncANCPLACE.Items.Objects[cmbAncANCPLACE.ItemIndex]).Str,
          fdm.cdsGetReport43Anc.FieldByName('PROVIDER').AsString,
          fdm.cdsGetReport43Anc.FieldByName('D_UPDATE').AsFloat
     );
   end;
 }


    // update labor
    if fdm.cdsGetReport43LabOrList.State in [dsInsert,dsedit] then FDM.cdsGetReport43LabOrList.POST;
     if FDM.cdsGetReport43LabOrList.ChangeCount>0 then
         begin
         FDM.cdsGetReport43LabOrList.First;
          while not FDM.cdsGetReport43LabOrList.Eof do
          begin
           fdm.InsUpdLabOr(
           fdm.cdsGetReport43LabOrList.FieldByName('REPORTID').AsInteger,
           fdm.cdsGetReport43LabOrList.FieldByName('HOSPCODE').AsString,
           fdm.cdsGetReport43LabOrList.FieldByName('PID').AsInteger,
           fdm.cdsGetReport43LabOrList.FieldByName('GRAVIDA').AsString,
           fdm.cdsGetReport43LabOrList.FieldByName('LMP').AsFloat,
           fdm.cdsGetReport43LabOrList.FieldByName('EDC').AsFloat,
           fdm.cdsGetReport43LabOrList.FieldByName('BDATE').AsFloat,
           fdm.cdsGetReport43LabOrList.FieldByName('BRESULT').AsString,
           fdm.cdsGetReport43LabOrList.FieldByName('BPLACE').AsString,
           fdm.cdsGetReport43LabOrList.FieldByName('BHOSP').AsString,
           fdm.cdsGetReport43LabOrList.FieldByName('BTYPE').AsString,
           fdm.cdsGetReport43LabOrList.FieldByName('BDOCTOR').AsString,
           fdm.cdsGetReport43LabOrList.FieldByName('LBORN').AsInteger,
           fdm.cdsGetReport43LabOrList.FieldByName('SBORN').AsInteger,
           fdm.cdsGetReport43LabOrList.FieldByName('D_UPDATE').AsFloat
            );
           FDM.cdsGetReport43LabOrList.Next;
          end;
         end;

     if fdm.cdsGetReport43NewbornList.state in [dsinsert,dsedit] then  fdm.cdsGetReport43NewbornList.Post;
        if FDM.cdsGetReport43NewbornList.ChangeCount>0 then
         begin
         FDM.cdsGetReport43NewbornList.First;
          while not FDM.cdsGetReport43NewbornList.Eof do
              begin
               fdm.InsUpdNewborn(
                  fdm.cdsGetReport43NewbornList.FieldByName('REPORTID').AsInteger ,
                  fdm.cdsGetReport43NewbornList.FieldByName('HOSPCODE').AsString ,
                  fdm.cdsGetReport43NewbornList.FieldByName('PID').AsInteger,
                  fdm.cdsGetReport43NewbornList.FieldByName('MPID').AsString ,
                  fdm.cdsGetReport43NewbornList.FieldByName('GRAVIDA').AsString ,
                  fdm.cdsGetReport43NewbornList.FieldByName('GA').AsString ,
                  fdm.cdsGetReport43NewbornList.FieldByName('BDATE').AsFloat,
                  fdm.cdsGetReport43NewbornList.FieldByName('BTIME').AsFloat,
                  TString(cmbNewbornBPLACE.Items.Objects[cmbNewbornBPLACE.ItemIndex]).Str,
                  TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBHOSP.ItemIndex]).Str,
                  TString(cmbNewbornBIRTHNO.Items.Objects[cmbNewbornBIRTHNO.ItemIndex]).Str,
                  TString(cmbNewbornBTYPE.Items.Objects[cmbNewbornBTYPE.ItemIndex]).Str,
                  TString(cmbNewbornBDOCTOR.Items.Objects[cmbNewbornBDOCTOR.ItemIndex]).Str,
                  fdm.cdsGetReport43NewbornList.FieldByName('BWEIGHT').AsInteger ,
                  TString(cmbNewbornASPHYXIA.Items.Objects[cmbNewbornASPHYXIA.ItemIndex]).Str,
                  TString(cmbNewbornVITK.Items.Objects[cmbNewbornVITK.ItemIndex]).Str,
                  TString(cmbNewbornTSH.Items.Objects[cmbNewbornTSH.ItemIndex]).Str,
                  fdm.cdsGetReport43NewbornList.FieldByName('TSHRESULT').AsInteger,
                  fdm.cdsGetReport43NewbornList.FieldByName('D_UPDATE').AsFloat
               );
               FDM.cdsGetReport43NewbornList.Next;
              end;
          end;

   ShowMessage('update success');
except
  on ee:Exception do
    ShowMessage(ee.message);

end;


end;

procedure TfrmRp43LaborRoom.btnRefreshClick(Sender: TObject);
var
    yrrStr,runStr,HN,_HN:string;
begin
  //btnRefresh.ScreenMask.Enabled := true;

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


   //Prenatal
      FDM.WriteLog('### Initial 24');
      fdm.cdsGetReport43PrenatalList.close;
      fdm.getPrenatalList(fdm.cdsGetReport43PersonPID.AsInteger);
      fdm.cdsGetReport43PrenatalList.open;

      dsGetReport43Prenatal.DataSet:=FDM.cdsGetReport43Prenatal;
      dsGetReport43PrenatalList.DataSet:=FDM.cdsGetReport43PrenatalList;
      cmbPrenatalVDRL_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalVDRL_RESULT.Items,'PRENATAL','VDRL_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListVDRL_RESULT.AsString,true);
      cmbPrenatalHB_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHB_RESULT.Items,'PRENATAL','HB_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHB_RESULT.AsString,true);
      cmbPrenatalHIV_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHIV_RESULT.Items,'PRENATAL','HIV_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHIV_RESULT.AsString,true);
      cmbPrenatalTHALASSEMIA.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalTHALASSEMIA.Items,'PRENATAL','THALASSEMIA','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListTHALASSEMIA.AsString,true);


      FDM.WriteLog('### Initial 25');
      fdm.cdsGetReport43AncList.close;
      fdm.getAncList(fdm.cdsGetReport43PrenatalListPID.AsInteger,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
      fdm.cdsGetReport43AncList.open;

      dsGetReport43Anc.DataSet:=FDM.cdsGetReport43Anc;
      dsGetReport43AncList.DataSet:=FDM.cdsGetReport43AncList;
      if dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString = '0' then
       cmbAncANCNO.ItemIndex :=-1
      else  cmbAncANCNO.ItemIndex  :=fdm.loadCmbItems(cmbAncANCNO.Items,'ANC','ANCNO','43FILE_CODE','NAME1', fdm.cdsGetReport43AncListANCNO.AsString,true);

      cmbAncANCRESULT.ItemIndex:=fdm.loadCmbItems(cmbAncANCRESULT.Items,'ANC','ANCRESULT','43FILE_CODE','NAME1', fdm.cdsGetReport43AncListANCRESULT.AsString,true);
      cmbAncANCPLACE.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbAncANCPLACE.Items,fdm.cdsGetReport43AncListANCPLACE.AsString,true);


      FDM.WriteLog('### Initial 26');
      fdm.cdsGetReport43LabOrList.close;
      fdm.getLabOrList(fdm.cdsGetReport43PrenatalListPID.AsInteger,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
      fdm.cdsGetReport43LabOrList.open;
      dsGetReport43LabOrList.DataSet:=FDM.cdsGetReport43LabOrList;

      cmbLaborBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BPLACE').AsString,true);
      cmbLaborBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BTYPE').AsString,true);
      cmbLaborBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbLaborBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1', fdm.cdsGetReport43LabOrList.FieldByName('BDOCTOR').AsString,true);
      UniDBEdit76.ItemIndex  :=fdm.loadHospNameList2CmbItems(UniDBEdit76.Items,fdm.cdsGetReport43LabOrListBHOSP.AsString,true);

      FDM.WriteLog('### Initial 28');
      fdm.cdsGetReport43NewbornList.close;
      fdm.getNewbornList(fdm.cdsGetReport43PrenatalListPID.AsString,FDM.cdsGetReport43PrenatalListGRAVIDA.AsString);
      fdm.cdsGetReport43NewbornList.open;
      dsGetReport43NewbornList.DataSet:=FDM.cdsGetReport43NewbornList;
      cmbNewbornBPLACE.ItemIndex:=fdm.loadCmbItems(cmbNewbornBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBPLACE.AsString,true);
      cmbNewbornBHOSP.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbNewbornBHOSP.Items,fdm.cdsGetReport43NewbornListBHOSP.AsString,true);
      cmbNewbornBIRTHNO.ItemIndex:=fdm.loadCmbItems(cmbNewbornBIRTHNO.Items,'NEWBORN','BIRTHNO','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBIRTHNO.AsString,true);
      cmbNewbornBTYPE.ItemIndex:=fdm.loadCmbItems(cmbNewbornBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBTYPE.AsString,true);
      cmbNewbornBDOCTOR.ItemIndex:=fdm.loadCmbItems(cmbNewbornBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBDOCTOR.AsString,true);
      cmbNewbornASPHYXIA.ItemIndex:=fdm.loadCmbItems(cmbNewbornASPHYXIA.Items,'NEWBORN','ASPHYXIA','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListASPHYXIA.AsString,true);
      cmbNewbornBDOCTOR.ItemIndex:=fdm.loadCmbItems(cmbNewbornBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBDOCTOR.AsString,true);
      cmbNewbornVITK.ItemIndex:=fdm.loadCmbItems(cmbNewbornVITK.Items,'NEWBORN','VITK','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListVITK.AsString,true);
      cmbNewbornTSH.ItemIndex:=fdm.loadCmbItems(cmbNewbornTSH.Items,'NEWBORN','TSH','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListTSH.AsString,true);


  cmbPrenatalVDRL_RESULT.Enabled:=False;
  cmbPrenatalHB_RESULT.Enabled:=False;
  cmbPrenatalHIV_RESULT.Enabled:=False;
  cmbPrenatalTHALASSEMIA.Enabled:=False;
  UniDBEdit46.Enabled:=False;
  UniDBEdit51.Enabled:=False;
  UniDBEdit48.Enabled:=False;
  UniDBEdit55.Enabled:=False;
  UniDBEdit54.Enabled:=False;
  cmbAncANCRESULT.Enabled:=False;
  cmbAncANCPLACE.Enabled:=False;
  cmbAncANCNO.Enabled:=False;
  UniDBEdit37.Enabled:=False;
  UniDBEdit39.Enabled:=False;
  UniDBEdit41.Enabled:=False;
  UniDBEdit43.Enabled:=False;
  cmbLaborBPLACE.Enabled:=False;
  cmbLaborBTYPE.Enabled:=False;
  cmbLaborBDOCTOR.Enabled:=False;
  cmbLaborBRESULT.Enabled:=False;
  LBORN.Enabled:=False;
  SBORN.Enabled:=False;
  UniDBEdit7.Enabled:=False;
  UniDBEdit69.Enabled:=False;
  UniDBEdit71.Enabled:=False;
  UniDBEdit72.Enabled:=False;
  UniDBEdit76.Enabled:=False;
  UniDBEdit74.Enabled:=False;
  cmbNewbornBDOCTOR.Enabled:=False;
  BTIME.Enabled:=False;
  cmbNewbornASPHYXIA .Enabled:=False;
  cmbNewbornBIRTHNO.Enabled:=False;
  UniDBEdit8 .Enabled:=False;
  UniDBEdit196 .Enabled:=False;
  UniDBEdit208 .Enabled:=False;
  cmbNewbornBHOSP.Enabled:=False;
  cmbNewbornTSH .Enabled:=False;
  cmbNewbornBTYPE .Enabled:=False;
  UniDBEdit200 .Enabled:=False;
  cmbNewbornBPLACE .Enabled:=False;
  cmbNewbornVITK .Enabled:=False;
  UniDBEdit212 .Enabled:=False;

  //btnRefresh.ScreenMask.Enabled := false;
end;


procedure TfrmRp43LaborRoom.btnSyncClick(Sender: TObject);
begin
  inherited;
   if trim(edSearchCID.Text)='' then exit;
      syncIfx(pagesIndex[8]);
      btnRefreshClick(sender);
end;

procedure TfrmRp43LaborRoom.cmbAncANCNOSelect(Sender: TObject);
begin
  inherited;
 if fdm.cdsGetReport43AncList.Active then
      begin
        if not (fdm.cdsGetReport43AncList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AncList.edit;
        fdm.cdsGetReport43AncListANCNO.AsString:=TString(cmbAncANCNO.Items.Objects[cmbAncANCNO.ItemIndex]).Str;
      end;
end;

procedure TfrmRp43LaborRoom.cmbAncANCPLACESelect(Sender: TObject);
begin
  inherited;
 if not (fdm.cdsGetReport43AncList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AncList.edit;
         fdm.cdsGetReport43AncListANCPLACE.AsString:=TString(cmbAncANCPLACE.Items.Objects[cmbAncANCPLACE.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.cmbAncANCRESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43AncList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43AncList.edit;
          fdm.cdsGetReport43AncListANCRESULT.AsString:=TString(cmbAncANCRESULT.Items.Objects[cmbAncANCRESULT.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbLaborBDOCTORSelect(Sender: TObject);
begin
  inherited;

   if not (fdm.cdsGetReport43LabOrList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOrList.edit;
           fdm.cdsGetReport43LabOrListBDOCTOR.AsString:=TString(cmbLaborBDOCTOR.Items.Objects[cmbLaborBDOCTOR.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.cmbLaborBPLACESelect(Sender: TObject);
begin
  inherited;
  if fdm.cdsGetReport43LabOrList.Active then
    begin
     if not (fdm.cdsGetReport43LabOrList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOrList.edit;
             fdm.cdsGetReport43LabOrListBPLACE.AsString:=TString(cmbLaborBPLACE.Items.Objects[cmbLaborBPLACE.ItemIndex]).Str;
    end;
end;

procedure TfrmRp43LaborRoom.cmbLaborBRESULTKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (trim(TUniComboBox(Sender).Text)<>'') and (trim(TUniComboBox(Sender).Text)<>'null') then
    if (Length(TUniComboBox(Sender).Text)>=2 ) and (Length(TUniComboBox(Sender).Text)<=4)  then
      TUniComboBox(Sender).ItemIndex := FDM.loadIcd10List2CmbItems(TUniComboBox(Sender).Items,TUniComboBox(Sender).Text,'',true);

end;

procedure TfrmRp43LaborRoom.cmbLaborBRESULTSelect(Sender: TObject);
begin
  inherited;
    // FDM.WriteLog('xxx'+Before('-',TString(cmbLaborBRESULT.Items.Objects[cmbLaborBRESULT.ItemIndex]).Str));
   if not (fdm.cdsGetReport43LabOrList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOrList.edit;
           fdm.cdsGetReport43LabOrListBRESULT.AsString:=TString(cmbLaborBRESULT.Items.Objects[cmbLaborBRESULT.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbLaborBTYPESelect(Sender: TObject);
begin
  inherited;
 if fdm.cdsGetReport43LabOrList.Active then
    begin
     if not (fdm.cdsGetReport43LabOrList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOrList.edit;
             fdm.cdsGetReport43LabOrListBTYPE.AsString:=TString(cmbLaborBTYPE.Items.Objects[cmbLaborBTYPE.ItemIndex]).Str;
    end;
end;

procedure TfrmRp43LaborRoom.cmbNewbornASPHYXIASelect(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43NewbornList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornList.edit;
  fdm.cdsGetReport43NewbornListASPHYXIA.AsString:=TString(cmbNewbornASPHYXIA.Items.Objects[cmbNewbornASPHYXIA.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbNewbornBHOSPSelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43NewbornList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornList.edit;
    fdm.cdsGetReport43NewbornListBHOSP.AsString:=TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBHOSP.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbNewbornBIRTHNOSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NewbornList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornList.edit;
  fdm.cdsGetReport43NewbornListBIRTHNO.AsString:=TString(cmbNewbornBIRTHNO.Items.Objects[cmbNewbornBIRTHNO.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbNewbornBPLACESelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NewbornList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornList.edit;
  fdm.cdsGetReport43NewbornListBPLACE.AsString:=TString(cmbNewbornBPLACE.Items.Objects[cmbNewbornBPLACE.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbNewbornBTYPESelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43NewbornList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornList.edit;
     fdm.cdsGetReport43NewbornListBTYPE.AsString:=TString(cmbNewbornBHOSP.Items.Objects[cmbNewbornBTYPE.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbNewbornTSHSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NewbornList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornList.edit;
  fdm.cdsGetReport43NewbornListTSH.AsString:=TString(cmbNewbornTSH.Items.Objects[cmbNewbornTSH.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.cmbNewbornVITKSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43NewbornList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43NewbornList.edit;
  fdm.cdsGetReport43NewbornListVITK.AsString:=TString(cmbNewbornVITK.Items.Objects[cmbNewbornVITK.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.cmbPrenatalHB_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43PrenatalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43PrenatalList.edit;
  fdm.cdsGetReport43PrenatalListHB_RESULT.AsString:=TString(cmbPrenatalHB_RESULT.Items.Objects[cmbPrenatalHB_RESULT.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.cmbPrenatalHIV_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43PrenatalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43PrenatalList.edit;
  fdm.cdsGetReport43PrenatalListHIV_RESULT.AsString:=TString(cmbPrenatalHIV_RESULT.Items.Objects[cmbPrenatalHIV_RESULT.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.cmbPrenatalTHALASSEMIASelect(Sender: TObject);
begin
  inherited;
    if not (fdm.cdsGetReport43PrenatalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43PrenatalList.edit;
       fdm.cdsGetReport43PrenatalListTHALASSEMIA.AsString:=TString(cmbPrenatalTHALASSEMIA.Items.Objects[cmbPrenatalTHALASSEMIA.ItemIndex]).Str;

end;

procedure TfrmRp43LaborRoom.cmbPrenatalVDRL_RESULTSelect(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43PrenatalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43PrenatalList.edit;
  fdm.cdsGetReport43PrenatalListVDRL_RESULT.AsString:=TString(cmbPrenatalVDRL_RESULT.Items.Objects[cmbPrenatalVDRL_RESULT.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.dsGetReport43AncListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if FDM.cdsGetReport43AncList.RecordCount>0 then
     begin
      cmbAncANCRESULT.ItemIndex:=fdm.loadCmbItems(cmbAncANCRESULT.Items,'ANC','ANCRESULT','43FILE_CODE','NAME1', fdm.cdsGetReport43AncListANCRESULT.AsString,true);
      if dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString = '0'  then
         cmbAncANCNO.ItemIndex :=-1
      else  cmbAncANCNO.ItemIndex  :=fdm.loadCmbItems(cmbAncANCNO.Items,'ANC','ANCNO','43FILE_CODE','NAME1', fdm.cdsGetReport43AncListANCNO.AsString,true);
      cmbAncANCPLACE.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbAncANCPLACE.Items,fdm.cdsGetReport43AncListANCPLACE.AsString,true);
     end;

end;

procedure TfrmRp43LaborRoom.dsGetReport43EpiListDataChange(Sender: TObject;
  Field: TField);
begin
  {//inherited;
  //cmbEpiVACCINETYPE.Items.Clear;
  cmbEpiVACCINETYPE.ItemIndex:=fdm.loadCmbItems(cmbEpiVACCINETYPE.Items,'EPI','VACCINETYPE','43FILE_CODE','NAME1',FDM.cdsGetReport43EpiListVACCINETYPE.AsString,true);

  if FDM.cdsGetReport43EpiList.RecordCount>0 then
    cmbEpiVACCINEPLACE.ItemIndex        := fdm.loadHospNameList2CmbItems(cmbEpiVACCINEPLACE.Items,fdm.cdsGetReport43EpiList.FieldByName('VACCINEPLACE').AsString,true);
  }
end;

procedure TfrmRp43LaborRoom.dsGetReport43LabOrListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  cmbLaborBRESULT.ItemIndex := fdm.getIcd10List2CmbItems(cmbLaborBRESULT.Items,'',fdm.cdsGetReport43LabOrListBRESULT.AsString,true);
  cmbLaborBPLACE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1',fdm.cdsGetReport43LabOrListBPLACE.AsString,true);
  cmbLaborBTYPE.ItemIndex  :=fdm.loadCmbItems(cmbLaborBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43LabOrListBTYPE.AsString,true);
  cmbLaborBDOCTOR.ItemIndex  :=fdm.loadCmbItems(cmbLaborBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43LabOrListBDOCTOR.AsString,true);
end;

procedure TfrmRp43LaborRoom.dsGetReport43NewbornListDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if FDM.cdsGetReport43NewbornList.RecordCount>0 then
  begin
    cmbNewbornBPLACE.ItemIndex:=fdm.loadCmbItems(cmbNewbornBPLACE.Items,'*','BPLACE','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBPLACE.AsString,true);
    cmbNewbornBHOSP.ItemIndex:=fdm.loadHospNameList2CmbItems(cmbNewbornBHOSP.Items,fdm.cdsGetReport43NewbornListBHOSP.AsString,true);
    cmbNewbornBIRTHNO.ItemIndex:=fdm.loadCmbItems(cmbNewbornBIRTHNO.Items,'NEWBORN','BIRTHNO','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBIRTHNO.AsString,true);
    cmbNewbornBTYPE.ItemIndex:=fdm.loadCmbItems(cmbNewbornBTYPE.Items,'*','BTYPE','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBTYPE.AsString,true);
    cmbNewbornBDOCTOR.ItemIndex:=fdm.loadCmbItems(cmbNewbornBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBDOCTOR.AsString,true);
    cmbNewbornASPHYXIA.ItemIndex:=fdm.loadCmbItems(cmbNewbornASPHYXIA.Items,'NEWBORN','ASPHYXIA','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListASPHYXIA.AsString,true);
    cmbNewbornBDOCTOR.ItemIndex:=fdm.loadCmbItems(cmbNewbornBDOCTOR.Items,'*','BDOCTOR','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListBDOCTOR.AsString,true);
    cmbNewbornVITK.ItemIndex:=fdm.loadCmbItems(cmbNewbornVITK.Items,'NEWBORN','VITK','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListVITK.AsString,true);
    cmbNewbornTSH.ItemIndex:=fdm.loadCmbItems(cmbNewbornTSH.Items,'NEWBORN','TSH','43FILE_CODE','NAME1',fdm.cdsGetReport43NewbornListTSH.AsString,true);
  end;

end;

procedure TfrmRp43LaborRoom.dsGetReport43PrenatalListDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if FDM.cdsGetReport43PrenatalList.RecordCount>0 then
  begin
    cmbPrenatalVDRL_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalVDRL_RESULT.Items,'PRENATAL','VDRL_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListVDRL_RESULT.AsString,true);
    cmbPrenatalHB_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHB_RESULT.Items,'PRENATAL','HB_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHB_RESULT.AsString,true);
    cmbPrenatalHIV_RESULT.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalHIV_RESULT.Items,'PRENATAL','HIV_RESULT','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListHIV_RESULT.AsString,true);
    cmbPrenatalTHALASSEMIA.ItemIndex  :=fdm.loadCmbItems(cmbPrenatalTHALASSEMIA.Items,'PRENATAL','THALASSEMIA','43FILE_CODE','NAME1',fdm.cdsGetReport43PrenatalListTHALASSEMIA.AsString,true);
  end;
end;

procedure TfrmRp43LaborRoom.edSearchCIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
  begin
    btnRefresh.ScreenMask.InitMask;
    btnRefresh.Click;
   end;
end;

procedure TfrmRp43LaborRoom.RsetComboBox;
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



procedure TfrmRp43LaborRoom.syncIfx(intArr: array of Integer);
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
{   if fdm.cdsGetReport43Person.RecordCount>0 then
      begin
        fdm.syncCardList(fdm.cdsGetReport43PersonPID.AsInteger);
        fdm.syncAddressType1(fdm.cdsGetReport43PersonPID.AsInteger);
        fdm.syncAddressType2(fdm.cdsGetReport43PersonPID.AsInteger);
      end;
 }
    FDM.WriteLog('### Initial 24');
    fdm.cdsGetReport43PrenatalList.close;
    fdm.getPrenatalList(fdm.cdsGetReport43PersonPID.AsInteger);
    fdm.cdsGetReport43PrenatalList.open;

    FDM.WriteLog('### Initial 25');
    fdm.cdsGetReport43AncList.close;
    fdm.getAncList(fdm.cdsGetReport43PersonPID.AsInteger,FDM.cdsGetReport43PrenatalGRAVIDA.AsString);
    fdm.cdsGetReport43AncList.open;

    FDM.WriteLog('### Sync 26 Labor');
    FDM.cdsGetReport43LabOrList .Close;
    fdm.syncLabOrList(fdm.cdsGetReport43PersonPID.AsInteger);
    FDM.cdsGetReport43LabOrList .Open;
end;

procedure TfrmRp43LaborRoom.UniBitBtn1Click(Sender: TObject);
begin
  inherited;
  if UniDBEdit74.Text <>'' then
  begin
    FDM.cdsGetReport43NewbornList.Edit;
    UniDBEdit74.Enabled:=True;
    cmbNewbornBDOCTOR.Enabled:=True;
    BTIME.Enabled:=True;
    cmbNewbornASPHYXIA .Enabled:=True;
    cmbNewbornBIRTHNO.Enabled:=True;
    UniDBEdit8 .Enabled:=True;
    UniDBEdit196 .Enabled:=True;
    UniDBEdit208 .Enabled:=True;
    cmbNewbornBHOSP.Enabled:=True;
    cmbNewbornTSH .Enabled:=True;
    cmbNewbornBTYPE .Enabled:=True;
    UniDBEdit200 .Enabled:=True;
    cmbNewbornBPLACE .Enabled:=True;
    cmbNewbornVITK .Enabled:=True;
    UniDBEdit212 .Enabled:=True;

   end;
end;

procedure TfrmRp43LaborRoom.UniButton2Click(Sender: TObject);
begin
  inherited;
  if UniDBEdit46.Text <>'' then
  begin
    FDM.cdsGetReport43PrenatalList.edit;
    cmbPrenatalVDRL_RESULT.Enabled:=True;
    cmbPrenatalHB_RESULT.Enabled:=True;
    cmbPrenatalHIV_RESULT.Enabled:=True;
    cmbPrenatalTHALASSEMIA.Enabled:=True;
    UniDBEdit46.Enabled:=True;
    UniDBEdit51.Enabled:=True;
    UniDBEdit48.Enabled:=True;
    UniDBEdit55.Enabled:=True;
    UniDBEdit54.Enabled:=True;
  end;


end;

procedure TfrmRp43LaborRoom.UniButton3Click(Sender: TObject);
begin
  inherited;
  if GRAVIDA.Text <> '' then
    begin
      cmbAncANCRESULT.Enabled:=True;
      cmbAncANCPLACE.Enabled:=True;
//      cmbAncANCNO.Enabled:=False;
      UniDBEdit37.Enabled:=True;
      UniDBEdit39.Enabled:=True;
      UniDBEdit41.Enabled:=True;
      UniDBEdit43.Enabled:=True;
    end;

end;

procedure TfrmRp43LaborRoom.UniButton4Click(Sender: TObject);
begin
  inherited;
  if UniDBEdit7.Text <>'' then
   begin
    cmbLaborBPLACE.Enabled:=True;
    cmbLaborBTYPE.Enabled:=True;
    cmbLaborBDOCTOR.Enabled:=True;
    cmbLaborBRESULT.Enabled:=True;
    LBORN.Enabled:=True;
    SBORN.Enabled:=True;
    UniDBEdit7.Enabled:=True;
    UniDBEdit69.Enabled:=True;
    UniDBEdit71.Enabled:=True;
    UniDBEdit72.Enabled:=True;
    UniDBEdit76.Enabled:=True;
   end;

end;

procedure TfrmRp43LaborRoom.UniDBEdit41Exit(Sender: TObject);
begin
  inherited;
   if   (dsGetReport43AncList.DataSet.FieldByName('GA').Value='1')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='2')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='3')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='4')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='5')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='6')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='7')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='8')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='9')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='10')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='11')
     or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='12') then
            begin
              cmbAncANCNO.ItemIndex := 0;
              dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString:='1';
            end
   else if      (dsGetReport43AncList.DataSet.FieldByName('GA').Value='16')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='17')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='18')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='19')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='20') then
              begin
                cmbAncANCNO.ItemIndex :=1;
                dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString:='2';
              end
   else if      (dsGetReport43AncList.DataSet.FieldByName('GA').Value='24')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='25')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='26')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='27')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='28')then
              begin
                cmbAncANCNO.ItemIndex :=2;
                dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString:='3';
              end
   else if        (dsGetReport43AncList.DataSet.FieldByName('GA').Value='30')
               or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='31')
               or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='32')
               or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='33')
               or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='34')then
              begin
                cmbAncANCNO.ItemIndex :=3;
                dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString:='4';
              end
   else if      (dsGetReport43AncList.DataSet.FieldByName('GA').Value='36')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='37')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='38')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='39')
             or (dsGetReport43AncList.DataSet.FieldByName('GA').Value='40')then
              begin
                cmbAncANCNO.ItemIndex :=4;
                dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString:='5';
              end
   else
   begin

      dsGetReport43AncList.DataSet.FieldByName('ANCNO').AsString:='0';
      cmbAncANCNO.ItemIndex := -1;
   end;

end;

procedure TfrmRp43LaborRoom.UniDBEdit48Change(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43PrenatalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43PrenatalList.edit;
   dsGetReport43PrenatalList.DataSet.FieldByName('LMP').AsDateTime := dsGetReport43PrenatalList.DataSet.FieldByName('EDC').AsDateTime - 266;

end;

procedure TfrmRp43LaborRoom.UniDBEdit51Change(Sender: TObject);
begin
  inherited;
  if not (fdm.cdsGetReport43PrenatalList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43PrenatalList.edit;
   dsGetReport43PrenatalList.DataSet.FieldByName('EDC').AsDateTime := dsGetReport43PrenatalList.DataSet.FieldByName('LMP').AsDateTime + 266;
end;

procedure TfrmRp43LaborRoom.UniDBEdit76Select(Sender: TObject);
begin
  inherited;
   if not (fdm.cdsGetReport43LabOrList.State in [dsInsert,dsedit] ) then  fdm.cdsGetReport43LabOrList.edit;
          fdm.cdsGetReport43LabOrListBHOSP.AsString:=TString(UniDBEdit76.Items.Objects[UniDBEdit76.ItemIndex]).Str;
end;

procedure TfrmRp43LaborRoom.UniFormCreate(Sender: TObject);
var k:integer;
begin
//
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


procedure TfrmRp43LaborRoom.UniFormShow(Sender: TObject);
begin
  inherited;
 RsetComboBox;

  if UniApplication.Parameters.Values['PID']<>'' then
  begin
    UniTimerAutoGet.Enabled:=true;
  end;
end;

procedure TfrmRp43LaborRoom.UniTimerAutoGetTimer(Sender: TObject);
var HN:string;
begin
  inherited;
  hn:=  FDM.getHN(strtoint(UniApplication.Parameters.Values['PID']));
  if HN<>'' then
  begin
    edSearchCID.Text:=HN;
    UniTimerRefresh.Enabled:=true;
  end else
    ShowMessage('ไม่พบ PID ที่ต้องการค้นหา');

end;

procedure TfrmRp43LaborRoom.UniTimerRefreshTimer(Sender: TObject);
begin
  inherited;
  UniTimerRefresh.Enabled:=false;
  btnRefreshClick(nil);
end;

end.
