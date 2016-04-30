unit MsSetupAccountTextDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniSplitter;

type
  TfrmMsSetupAccountTextData = class(TMainDataForm)
    dsSt: TDataSource;
    PnDtlGrid1: TUniPanel;
    dbgDataList: TUniDBGrid;
    PnDtlTop: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniGroupBox2: TUniGroupBox;
    UniDBEdit3: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniGroupBox3: TUniGroupBox;
    UniDBEdit1: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniLabel2: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    PnSearch: TUniPanel;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    UniDBGrid1: TUniDBGrid;
    UniSplitter1: TUniSplitter;

  private

  public
//    procedure Init();
  end;

var
  frmMsSetupAccountTextData: TfrmMsSetupAccountTextData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

end.
