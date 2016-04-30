unit AssUndefinedAssetDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  {$IFDEF OBSS} MainModuleEx {$ELSE} MainModuleEx {$ENDIF},
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, uniScreenMask;

type
  TfrmAssUndefinedAssetData = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel5: TUniLabel;
    DbStatus: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniLabel12: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniSplitter1: TUniSplitter;
    UniDBGrid2: TUniDBGrid;
    UniDBEdit6: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmAssUndefinedAssetData: TfrmAssUndefinedAssetData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmAssUndefinedAssetData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
