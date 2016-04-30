unit TxChangeDescInTaxBuyForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox {$ELSE} MainModuleEx,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, uniDateTimePicker, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox {$ENDIF};

type
  TfrmTxChangeDescInTaxBuyGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel3: TUniLabel;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmTxChangeDescInTaxBuyGrid: TfrmTxChangeDescInTaxBuyGrid;

implementation

{$R *.dfm}

uses uniGUIForm;


procedure TfrmTxChangeDescInTaxBuyGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmAssSaleAssetData).Create(UniApplication);
//  TfrmPsAppPoData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
//    _Form.Position := poDefault;
//    _Form.Left := Self.Left;
//    _Form.Top := Self.Top;
//    _Form.Width := Self.Width;
//    _Form.Height := Self.Height;
    _Form.Align := alNone;
    _Form.WindowState := wsNormal;
    {$ENDIF}
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
