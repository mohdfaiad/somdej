unit StRunningDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,DSSetupIntfDM,
  {$IFDEF OBSS} MainModuleEx {$ELSE} MainModuleEx {$ENDIF},
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage, uniRadioButton, uniScreenMask;

type
  TfrmStRunningData = class(TMainDataForm)
    LbCreditLineDate: TUniLabel;
    DbYar: TUniDBEdit;
    LbCreditLineNo: TUniLabel;
    DbDcd: TUniDBEdit;
    UniLabel8: TUniLabel;
    DbCom: TUniDBEdit;
    UniLabel9: TUniLabel;
    DbBrn: TUniDBEdit;
    DbTnm: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    DbEnm: TUniDBEdit;
    UniLabel3: TUniLabel;
    DbFORMAT_DOC: TUniDBEdit;
    UniLabel4: TUniLabel;
    DbPr1: TUniDBEdit;
    UniLabel5: TUniLabel;
    DbPr2: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniLabel10: TUniLabel;
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
    DbN01: TUniDBEdit;
    DbN02: TUniDBEdit;
    DbN03: TUniDBEdit;
    DbN04: TUniDBEdit;
    DbN05: TUniDBEdit;
    DbN06: TUniDBEdit;
    DbN07: TUniDBEdit;
    DbN08: TUniDBEdit;
    DbN09: TUniDBEdit;
    DbN10: TUniDBEdit;
    DbN11: TUniDBEdit;
    DbN12: TUniDBEdit;
    UniLabel7: TUniLabel;
    dsgrid: TDataSource;
    CmbSTS: TUniDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
  public
    procedure Init(DM : TDSSetupDM);
  end;

var
  frmStRunningData: TfrmStRunningData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmStRunning);

procedure TfrmStRunningData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStNb1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStNb1Get.Cancel();
  inherited;


end;

procedure TfrmStRunningData.btnConfirmClick(Sender: TObject);
var ch : Boolean;
begin

  ch:= FDM.StNb1InsUpd(
       Fdm.CdsStNb1GetSTSNB1.AsString,
       Fdm.CdsStNb1GetCMPNB1.AsString,
       Fdm.CdsStNb1GetBRNNB1.AsString,
       Fdm.CdsStNb1GetDCDNB1.AsString,
       Fdm.CdsStNb1GetYARNB1.AsInteger - 543,
       Fdm.CdsStNb1GetN01NB1.AsInteger,
       Fdm.CdsStNb1GetN02NB1.AsInteger,
       Fdm.CdsStNb1GetN03NB1.AsInteger,
       Fdm.CdsStNb1GetN04NB1.AsInteger,
       Fdm.CdsStNb1GetN05NB1.AsInteger,
       Fdm.CdsStNb1GetN06NB1.AsInteger,
       Fdm.CdsStNb1GetN07NB1.AsInteger,
       Fdm.CdsStNb1GetN08NB1.AsInteger,
       Fdm.CdsStNb1GetN09NB1.AsInteger,
       Fdm.CdsStNb1GetN10NB1.AsInteger,
       Fdm.CdsStNb1GetN11NB1.AsInteger,
       Fdm.CdsStNb1GetN12NB1.AsInteger,
       Fdm.CdsStNb1GetPR1NB1.AsString,
       Fdm.CdsStNb1GetPR2NB1.AsString);

  if ch then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStRunningData.Init(DM : TDSSetupDM);
begin
  Fdm := Dm;

  dsgrid.DataSet := Fdm.CdsStNb1Get;

  CmbSTS.ListSource := Fdm.GetDSC('STS');

  if Fdm.CdsStNb1Get.State in [dsInsert] then
     btnConfirm.Visible := True
  else if Fdm.CdsStNb1Get.State in [dsEdit] then
     btnConfirm.Visible := True
  else
  begin
     btnConfirm.Visible := False;
     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;

end.
