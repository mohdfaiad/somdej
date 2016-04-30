unit AsSetupOrgDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniScreenMask, Vcl.Imaging.GIFImg,
  uniImage;

type
  TfrmAsSetupOrgData = class(TMainDataForm)
    dsSt: TDataSource;
    PnDtlGrid1: TUniPanel;
    UniLabel13: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel11: TUniLabel;

  private

  public
//    procedure Init();
  end;

var
  frmAsSetupOrgData: TfrmAsSetupOrgData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

end.
