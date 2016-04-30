unit PsChequeClearingGridForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniSplitter, Vcl.Imaging.GIFImg, uniImage;

type
  TfrmPsChequeClearingGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel4: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDBGrid1: TUniDBGrid;
    Splitter: TUniSplitter;

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmPsChequeClearingGrid: TfrmPsChequeClearingGrid;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmPsChequeClearingGrid);
end.
