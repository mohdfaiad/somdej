unit PsPaymentByAppDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, Vcl.Imaging.GIFImg, uniImage,
  uniScreenMask;

type
  TfrmPsPaymentByAppData = class(TMainDataForm)
    dsSt: TDataSource;
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
    PnDtlTop: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    UniGroupBox3: TUniGroupBox;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel17: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    PnDtlGrid1: TUniPanel;
    dbgDataList: TUniDBGrid;
    PnDtlBotton: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    PnSumAmt: TUniPanel;
    UniLabel23: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniLabel24: TUniLabel;
    UniLabel2: TUniLabel;
    UniComboBox1: TUniComboBox;
    UniLabel8: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel13: TUniLabel;

  private

  public
//    procedure Init();
  end;

var
  frmPsPaymentByAppData: TfrmPsPaymentByAppData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppData);

end.
