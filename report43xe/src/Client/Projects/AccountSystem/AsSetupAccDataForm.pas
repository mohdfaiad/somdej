unit AsSetupAccDataForm;

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
  TfrmAsSetupAccData = class(TMainDataForm)
    dsSt: TDataSource;
    PnDtlGrid1: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    UniCheckBox2: TUniCheckBox;
    UniLabel8: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniGroupBox2: TUniGroupBox;
    UniCheckBox1: TUniCheckBox;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniGroupBox3: TUniGroupBox;
    UniCheckBox3: TUniCheckBox;
    UniLabel5: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniGroupBox4: TUniGroupBox;
    UniRadioGroup4: TUniRadioGroup;
    UniCheckBox4: TUniCheckBox;
    UniLabel9: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniRadioGroup1: TUniRadioGroup;
    UniRadioGroup2: TUniRadioGroup;
    UniRadioGroup3: TUniRadioGroup;

  private

  public
//    procedure Init();
  end;

var
  frmAsSetupAccData: TfrmAsSetupAccData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

end.
