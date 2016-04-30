unit ServerModuleEx;

interface

uses
  SysUtils, IndyPeerImpl, uniGUIServer, uniGUIMainModule;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleBeforeInit(Sender: TObject);
  private
    { Private declarations }
    FAppHttpPort    :string;
    procedure loadconfig;
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars,inifiles;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.loadconfig;
const A_CONFIG_FILE_='dsconfigcli.conf';
begin
  with TIniFile.Create(UniServerModule.StartPath+ A_CONFIG_FILE_) do
  try
    FAppHttpPort    :=  Readstring('AppServer', 'HttpPort', '');

    if FAppHttpPort='' then
    begin
      WriteString('AppServer', 'HttpPort', '8086');
    end;


      Port:=strtoint(FAppHttpPort);

  finally
    Free();
  end;
end;

procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
begin
  loadconfig;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
