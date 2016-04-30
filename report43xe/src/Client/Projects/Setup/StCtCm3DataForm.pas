unit StCtCm3DataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask;

type
  TfrmStCtCm3Data = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    CMPCM3: TUniDBEdit;
    BRNCM3: TUniDBEdit;
    TNMCM3: TUniDBEdit;
    ENMCM3: TUniDBEdit;
    UniLabel3: TUniLabel;
    TA1CM3: TUniDBEdit;
    TA2CM3: TUniDBEdit;
    TIDCM3: TUniDBEdit;
    UniLabel24: TUniLabel;
    CmbSTS: TUniDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmSCtCm3Data: TfrmStCtCm3Data;

implementation

{$R *.dfm}

uses PopupArForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);



procedure TfrmStCtCm3Data.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStCm3Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStCm3Get.Cancel();
  inherited;

end;

procedure TfrmStCtCm3Data.btnConfirmClick(Sender: TObject);
var ch  : Boolean;
  md ,Cno: String;
begin
  if Fdm.CdsStCm3Get.State in [dsInsert] then
  begin
    md := 'I' ;
  end
  else
  begin
    md := 'E';
  end;

  ch:= FDM.StCm3InsUpd(
        Fdm.CdsStCm3GetSTSCm3.AsString,
        Fdm.CdsStCm3GetCMPCm3.AsString,
        Fdm.CdsStCm3GetBRNCm3.AsString,
        Fdm.CdsStCm3GetENMCm3.AsString,
        Fdm.CdsStCm3GetTNMCm3.AsString,
        Fdm.CdsStCm3GetTA1Cm3.AsString,
        Fdm.CdsStCm3GetTA2Cm3.AsString,
        Fdm.CdsStCm3GetTIDCM3.AsString,
        md
      );

  if ch  then
  begin

    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStCtCm3Data.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStCm3Get;

   CmbSTS.ListSource := Fdm.GetDSC('STS');

  if (fdm.CdsStCm3Get.State in [dsInsert]) then
  begin
     CMPCM3.ReadOnly := False;
     BRNCM3.ReadOnly := False;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStCm3Get.State in [dsEdit]) then
  begin
     CMPCM3.ReadOnly := True;
     BRNCM3.ReadOnly := True;
     btnConfirm.Visible := True;
  end
  else
  begin
     btnConfirm.Visible := False;
     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


end.
