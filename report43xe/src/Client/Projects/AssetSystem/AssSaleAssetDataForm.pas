unit AssSaleAssetDataForm;

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
  TfrmAssSaleAssetData = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel5: TUniLabel;
    DbStatus: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniPanel1: TUniPanel;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    PnDtl1: TUniPanel;
    UniLabel4: TUniLabel;
    UniLabel1: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniLabel22: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    PnDtl2: TUniPanel;
    UniLabel10: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel20: TUniLabel;
    PnDtl3: TUniPanel;
    UniLabel23: TUniLabel;
    UniLabel9: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniDBGrid1: TUniDBGrid;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBMemo1: TUniDBMemo;
    UniPanel2: TUniPanel;
    UniLabel12: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniSplitter1: TUniSplitter;
    UniDBGrid2: TUniDBGrid;
    UniDBEdit6: TUniDBEdit;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmAssSaleAssetData: TfrmAssSaleAssetData;

implementation

{$R *.dfm}

uses  PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmAssSaleAssetData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
