unit uSystemSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainDataFormClass, uniGUIClasses,
  uniScreenMask, uniButton, Vcl.Imaging.GIFImg, uniImage,
  uniGUIBaseClasses, uniPanel, uniPageControl, uniEdit, uniDBEdit, uniLabel,DS43FileIntfDM,
  Data.DB, uniBasicGrid, uniDBGrid;

type
  TfrmSystemSetting = class(TMainDataForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    dsSettingGetHospName: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniPanel1: TUniPanel;
    btnNewDefault: TUniButton;
    btnEditDefault: TUniButton;
    btnDeleteDefault: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
  private
    { Private declarations }
    FDM : TDS43FileDM;
  public
    { Public declarations }
    property DM : TDS43FileDM read FDM write FDM;
  end;

var
  frmSystemSetting: TfrmSystemSetting;

implementation

{$R *.dfm}


procedure TfrmSystemSetting.btnConfirmClick(Sender: TObject);
begin
  //inherited;
  if FDM.cdsSettingGetHospName.State in [dsInsert,dsEdit] then FDM.cdsSettingGetHospName.Post;

  FDM.setHospName(FDM.cdsSettingGetHospName.FieldByName('hospcode').AsString,FDM.cdsSettingGetHospName.FieldByName('hospname').AsString);
  ShowMessage('successfull');



end;

procedure TfrmSystemSetting.UniFormShow(Sender: TObject);
begin
  inherited;
  FDM.cdsSettingGetHospName.Close;
  FDM.getHospName('','');
  FDM.cdsSettingGetHospName.Open;
end;

end.
