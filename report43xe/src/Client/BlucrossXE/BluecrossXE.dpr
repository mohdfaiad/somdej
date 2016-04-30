
program

  BluecrossXE;



uses
  uniGUIISAPI,
  Forms,
  ServerModuleEx in 'ServerModuleEx.pas' {UniServerModule: TUniGUIServerModule},
  frmMainMenusForm in 'menu\frmMainMenusForm.pas' {frmMainMemus: TUniForm},
  MainMasterForm in 'ClientForm\MainMasterForm.pas' {MasterForm: TUniForm},
  MainDataFormClass in 'ClientForm\MainDataFormClass.pas' {frmRegisterNewPatient: TUniForm},
  uRegisterNewPatient in 'Opd\uRegisterNewPatient.pas' {frmRegisterPatient: TUniForm};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;


begin

  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.
