unit StCompanyForm;

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
  Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage, uniScreenMask;

type
  TfrmStCompany = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel2: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel24: TUniLabel;
    CmbSTS: TUniDBLookupComboBox;

  private

  public
//    procedure Init();
  end;

var
  frmStCompany: TfrmStCompany;

implementation

{$R *.dfm}

initialization
  RegisterMainFormClass(TfrmStCompany);

end.
