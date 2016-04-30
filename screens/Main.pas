unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniEdit, uniDBEdit,
  uniLabel, uniImage, uniDBImage, uniPageControl, uniGUIBaseClasses,
  uniPanel;

type
  TMainForm = class(TUniForm)
    UniPanel3: TUniPanel;
    UniPanel2: TUniPanel;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniPanel4: TUniPanel;
    UniDBImage1: TUniDBImage;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniPanel1: TUniPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniPanel5: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBEdit3: TUniDBEdit;
    UniLabel4: TUniLabel;
    xxxxx: TUniPageControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
