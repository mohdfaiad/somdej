unit uRegisterNewPatient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainDataFormClass, uniButton,
  uniGUIBaseClasses, uniGUIClasses, uniPanel, uniBasicGrid, uniDBGrid,
  uniDateTimePicker, uniEdit, uniDBEdit, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniLabel;

type
  TfrmRegisterPatient = class(TfrmRegisterNewPatient)
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel12: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel9: TUniLabel;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    BtnLinkSystem: TUniButton;
    dbgDataList: TUniDBGrid;
    UniPanel1: TUniPanel;
    UniLabel7: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



//var
//  frmRegisterPatient: TfrmRegisterPatient;

function frmRegisterPatient: TfrmRegisterPatient;

implementation

{$R *.dfm}

uses ServerModuleEx,MainModuleEx;


function frmRegisterPatient: TfrmRegisterPatient;
begin
  Result := TfrmRegisterPatient(UniMainModule.GetFormInstance(TfrmRegisterPatient));

end;

procedure TfrmRegisterPatient.btnBackClick(Sender: TObject);
begin
 UniEdit1.Text:='close';
 close;

  inherited;

end;

procedure TfrmRegisterPatient.btnCancelClick(Sender: TObject);
begin
 // inherited;
 UniEdit1.Text:='close';
 close;
end;

procedure TfrmRegisterPatient.UniButton1Click(Sender: TObject);
begin
  //inherited;
  UniEdit1.Text:='close';
  close;
end;

end.
