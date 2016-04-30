unit TaAssignWeekOutColorForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniDBEdit {$ELSE} MainModuleEx, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  Vcl.Imaging.GIFImg, uniImage {$ENDIF};

type
  TfrmTaAssignWeekOutColorGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel3: TUniLabel;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniPanel1: TUniPanel;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmTaAssignWeekOutColorGrid: TfrmTaAssignWeekOutColorGrid;

implementation

{$R *.dfm}

uses uniGUIForm, TaAssignWeekOutColorDataForm;


procedure TfrmTaAssignWeekOutColorGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmTaAssignWeekOutColorData).Create(UniApplication);
//  TfrmPsAppPoData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.Position := poDefault;
    _Form.Left := Self.Left;
    _Form.Top := Self.Top;
    _Form.Width := Self.Width;
    _Form.Height := Self.Height;
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
