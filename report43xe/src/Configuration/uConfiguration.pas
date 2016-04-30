unit uConfiguration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmConfiguration = class(TForm)
    edDbServerUser: TGroupBox;
    GroupBox2: TGroupBox;
    btnSave: TBitBtn;
    btnClose: TBitBtn;
    edDbServerHost: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    edDbServerPassword: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edDbServerPort: TEdit;
    Label5: TLabel;
    edApplicationServerHost: TEdit;
    Label6: TLabel;
    edApplicationServerPort: TEdit;
    edWebServerPort: TEdit;
    Label7: TLabel;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguration: TfrmConfiguration;

const
  _SERVER_CONFIG_FILE='dsconfigsvr.conf';
  _CLIENT_CONFIG_FILE='dsconfigcli.conf';


implementation

{$R *.dfm}

procedure TfrmConfiguration.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
