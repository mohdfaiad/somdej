unit TxChangeDescInTaxSaleForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox {$ELSE} MainModuleEx,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, uniDateTimePicker {$ENDIF};

type
  TfrmTxChangeDescInTaxSaleGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel3: TUniLabel;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmTxChangeDescInTaxSaleGrid: TfrmTxChangeDescInTaxSaleGrid;

implementation

{$R *.dfm}

uses uniGUIForm;


procedure TfrmTxChangeDescInTaxSaleGrid.btnAddClick(Sender: TObject);
var

begin

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
