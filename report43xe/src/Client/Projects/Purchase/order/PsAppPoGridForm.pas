unit PsAppPoGridForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
   MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, Vcl.Imaging.GIFImg, uniImage;

type
  TfrmPsAppPoGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel4: TUniLabel;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmPsAppPoGrid: TfrmPsAppPoGrid;

implementation

{$R *.dfm}

uses PsAppPoDataForm, uniGUIForm;

procedure TfrmPsAppPoGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmPsAppPoData).Create(UniApplication);
//  TfrmPsAppPoData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;
    _Form.Top := Top;
    _Form.Left := Left;
    _Form.Height := Height;
    _Form.Width := Width;
    _Form.WebForm.ExtWindow.Draggable := False;
    _Form.WebForm.ExtWindow.Resizable := False;
    _Form.Show();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

//initialization
//  RegisterMainFormClass(TfrmPsAppPoGrid);
end.
