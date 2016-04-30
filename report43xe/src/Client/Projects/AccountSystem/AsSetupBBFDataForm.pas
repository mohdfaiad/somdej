unit AsSetupBBFDataForm;

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
  TfrmAsSetupBBFData = class(TMainDataForm)
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
    dbgDataList: TUniDBGrid;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniPanel1: TUniPanel;
    UniLabel7: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;

  private

  public
//    procedure Init();
  end;

var
  frmAsSetupBBFData: TfrmAsSetupBBFData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

end.
