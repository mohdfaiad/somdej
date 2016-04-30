unit AsGLDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniRadioGroup, uniPageControl;

type
  TfrmAsGLData = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel3: TUniLabel;
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel12: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    UniTabSheet6: TUniTabSheet;
    dbgDataList: TUniDBGrid;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniDBGrid4: TUniDBGrid;
    UniDBGrid5: TUniDBGrid;
    UniDBEdit1: TUniDBEdit;

  private

  public
//    procedure Init();
  end;

var
  frmAsGLData: TfrmAsGLData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

end.
