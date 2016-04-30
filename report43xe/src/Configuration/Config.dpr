program Config;

uses
  Vcl.Forms,
  uConfiguration in 'uConfiguration.pas' {frmConfiguration};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConfiguration, frmConfiguration);
  Application.Run;
end.
