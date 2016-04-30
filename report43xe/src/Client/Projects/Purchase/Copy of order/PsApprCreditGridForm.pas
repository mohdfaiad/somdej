unit PsApprCreditGridForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF FSLOSHP} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, Vcl.Imaging.GIFImg, uniImage {$ELSE} MainModule {$ENDIF};

type
  TfrmPsApprCreditGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniLabel4: TUniLabel;
    UniEdit2: TUniEdit;
    PnsumAmt: TUniPanel;
    UniLabel5: TUniLabel;
    UniEdit3: TUniEdit;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmPsApprCreditGrid: TfrmPsApprCreditGrid;

implementation

{$R *.dfm}

uses PsAppPoDataForm;

procedure TfrmPsApprCreditGrid.btnAddClick(Sender: TObject);
begin
   frmPsAppPoData.Show;
end;

//initialization
//  RegisterMainFormClass(TfrmPsApprCreditGrid);
end.
