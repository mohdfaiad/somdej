unit RmChangeNewCheqDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage;

type
  TfrmRmChangeNewCheqData = class(TMainDataForm)
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
    PnDtl3: TUniPanel;
    UniLabel9: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniDBGrid2: TUniDBGrid;
    UniLabel12: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    UniLabel11: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBEdit10: TUniDBEdit;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBEdit8: TUniDBEdit;
    UniDBMemo1: TUniDBMemo;
    UniLabel23: TUniLabel;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmRmChangeNewCheqData: TfrmRmChangeNewCheqData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmRmChangeNewCheqData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
