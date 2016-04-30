unit AsSetupAccOnBookDataForm;

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
  TfrmAsSetupAccOnBookData = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    dbgDataList: TUniDBGrid;

  private

  public
//    procedure Init();
  end;

var
  frmAsSetupAccOnBookData: TfrmAsSetupAccOnBookData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

end.
