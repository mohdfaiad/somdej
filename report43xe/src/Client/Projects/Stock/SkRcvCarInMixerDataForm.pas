unit SkRcvCarInMixerDataForm;

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
  TfrmSkRcvCarInMixerData = class(TMainDataForm)
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
    PnGrpdtl: TUniPanel;
    Pngrid: TUniPanel;
    dbgDataList: TUniDBGrid;
    PnDtl1: TUniPanel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniLabel6: TUniLabel;
    PnDtl2: TUniPanel;
    UniLabel7: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    PnDtl3: TUniPanel;
    UniLabel26: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniDBMemo1: TUniDBMemo;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmSkRcvCarInMixerData: TfrmSkRcvCarInMixerData;

implementation

{$R *.dfm}

uses PopupCarForm;



procedure TfrmSkRcvCarInMixerData.UniButton1Click(Sender: TObject);
begin
  PopupCar.ShowModal;
end;

//initialization
//  RegisterMainFormClass(TfrmSkRcvCarInMixerData);

end.
