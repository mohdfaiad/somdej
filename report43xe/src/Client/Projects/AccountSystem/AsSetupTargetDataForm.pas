unit AsSetupTargetDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniRadioGroup, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage;

type
  TfrmAsSetupTargetData = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    UniCheckBox4: TUniCheckBox;
    UniDBEdit11: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniRadioGroup4: TUniRadioGroup;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel7: TUniLabel;
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
    UniDBEdit6: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    UniDBEdit18: TUniDBEdit;
    UniDBEdit19: TUniDBEdit;
    UniDBEdit20: TUniDBEdit;
    UniLabel8: TUniLabel;
    dbgDataList: TUniDBGrid;

  private

  public
//    procedure Init();
  end;

var
  frmAsSetupTargetData: TfrmAsSetupTargetData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

end.
