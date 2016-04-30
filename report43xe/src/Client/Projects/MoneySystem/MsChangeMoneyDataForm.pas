unit MsChangeMoneyDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniSplitter;

type
  TfrmMsChangeMoneyData = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel9: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    PnDtlGrid1: TUniPanel;
    dbgDataList: TUniDBGrid;
    PnDtlBotton: TUniPanel;
    UniLabel10: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniSplitter1: TUniSplitter;
    UniDBGrid1: TUniDBGrid;

  private

  public
//    procedure Init();
  end;

var
  frmMsChangeMoneyData: TfrmMsChangeMoneyData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppData);

end.
