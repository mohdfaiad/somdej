unit MsSelectCodeMoneyDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton;

type
  TfrmMsSelectCodeMoneyData = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    PnDtlGrid1: TUniPanel;
    dbgDataList: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;

  private

  public
//    procedure Init();
  end;

var
  frmMsSelectCodeMoneyData: TfrmMsSelectCodeMoneyData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppData);

end.
