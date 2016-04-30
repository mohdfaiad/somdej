unit MainPrintForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUITypes, OleCtrls, SHDocVw, UniURLFrame, StdCtrls,
  UniButton, ExtCtrls, UniPanel, uniGUIBaseClasses, uniGUIClasses, MainMasterForm;

type
  TMainPrint = class(TMasterForm)
    pnFooter: TUniPanel;
    btnBack: TUniButton;
    PrintURLFrame: TUniURLFrame;
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PreviewReport(_ReportName,_URL_TEXT :string) ;
  end;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModuleEx;


procedure TMainPrint.btnBackClick(Sender: TObject);
begin
  Close();
end;

procedure TMainPrint.PreviewReport(_ReportName,_URL_TEXT :string) ;
begin
  Caption :=_ReportName ;
  PrintURLFrame.URL := _URL_TEXT;
  PrintURLFrame.Show();
end;

end.
