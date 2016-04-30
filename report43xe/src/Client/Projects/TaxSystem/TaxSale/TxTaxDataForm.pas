unit TxTaxDataForm;

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
  TfrmTxTaxData = class(TMainDataForm)
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
    UniLabel1: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniLabel22: TUniLabel;
    PnDtl2: TUniPanel;
    PnDtl3: TUniPanel;
    UniLabel9: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniDBEdit5: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel20: TUniLabel;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmTxTaxData: TfrmTxTaxData;

implementation

{$R *.dfm}

uses  PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmTxTaxData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
