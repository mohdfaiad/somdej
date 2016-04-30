unit PsAppPoDataForm;

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
  uniMemo, uniDBMemo, Vcl.Imaging.GIFImg, uniImage;

type
  TfrmPsAppPoData = class(TMainDataForm)
    dsSt: TDataSource;
    dbgDataList: TUniDBGrid;
    UniLabel8: TUniLabel;
    UniComboBox1: TUniComboBox;
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
    UniPanel1: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    UniLabel2: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniDBEdit14: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel16: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniGroupBox3: TUniGroupBox;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel7: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniLabel21: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniDBEdit2: TUniDBEdit;

  private

  public
//    procedure Init();
  end;

var
  frmPsAppPoData: TfrmPsAppPoData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppPoData);

end.
