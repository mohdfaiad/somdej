unit CsRcvMoneyAdvanceDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniScreenMask;

type
  TfrmCsRcvMoneyAdvanceData = class(TMainDataForm)
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
    UniLabel17: TUniLabel;
    UniLabel20: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    PnDtl3: TUniPanel;
    UniLabel12: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel23: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel44: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDBGrid1: TUniDBGrid;
    UniLabel3: TUniLabel;
    UniDBMemo2: TUniDBMemo;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmCsRcvMoneyAdvanceData: TfrmCsRcvMoneyAdvanceData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmCsRcvMoneyAdvanceData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
