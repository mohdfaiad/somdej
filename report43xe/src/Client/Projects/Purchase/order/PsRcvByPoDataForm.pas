unit PsRcvByPoDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  {$IFDEF FSLOSHP} MainModuleEx {$ELSE} MainModule {$ENDIF},
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, Vcl.Imaging.GIFImg, uniImage,
  uniScreenMask;

type
  TfrmPsRcvByPoData = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel8: TUniLabel;
    CmbPoType: TUniComboBox;
    UniLabel9: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    lbSearch: TUniLabel;
    UniLabel12: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniDBEdit9: TUniDBEdit;
    PnGrpdtl: TUniPanel;
    CmbAppPo: TUniComboBox;
    LbAppPo: TUniLabel;
    Pngrid: TUniPanel;
    UniButton1: TUniButton;
    UniDBEdit10: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel13: TUniLabel;
    dbgDataList: TUniDBGrid;
    UniLabel15: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniLabel23: TUniLabel;
    PnDtl1: TUniPanel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniLabel22: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    PnDtl2: TUniPanel;
    UniLabel7: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniRadioButton1: TUniRadioButton;
    UniRadioButton2: TUniRadioButton;
    UniDBEdit3: TUniDBEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDBEdit4: TUniDBEdit;
    UniCheckBox1: TUniCheckBox;
    UniDBEdit14: TUniDBEdit;
    UniLabel21: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel24: TUniLabel;
    UniComboBox1: TUniComboBox;
    UniLabel2: TUniLabel;
    PnDtl3: TUniPanel;
    UniLabel25: TUniLabel;
    UniDateTimePicker2: TUniDateTimePicker;
    UniLabel26: TUniLabel;
    UniComboBox2: TUniComboBox;
    UniLabel27: TUniLabel;
    UniComboBox3: TUniComboBox;
    UniDBMemo1: TUniDBMemo;
    UniLabel28: TUniLabel;
    procedure CmbPoTypeCloseUp(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmPsRcvByPoData: TfrmPsRcvByPoData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppPoData);

procedure TfrmPsRcvByPoData.CmbPoTypeCloseUp(Sender: TObject);
var ch : Boolean;
begin
   Ch := CmbPoType.ItemIndex <> 0 ;

   LbAppPo.Visible := Ch;
   CmbAppPo.Visible := Ch;
end;

end.
