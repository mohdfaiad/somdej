unit FramSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniButton, uniBitBtn,
  uniSpeedButton,uniGUIForm;

type
  TFrmSetup = class(TUniFrame)
    SBtnSetupHdr: TUniSpeedButton;
    procedure SBtnSetupHdrClick(Sender: TObject);
  private
    FCurrentAppForm: TUniForm;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses StHdrCodeForm,
  UniGUIVars, ServerModuleEx ;


procedure TFrmSetup.SBtnSetupHdrClick(Sender: TObject);
begin
   FCurrentAppForm := TfrmStHdrCodeGrid.Create(UniApplication)
end;

end.
