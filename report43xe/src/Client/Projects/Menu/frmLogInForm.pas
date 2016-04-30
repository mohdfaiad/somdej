unit frmLogInForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniImage, uniEdit, uniButton,
  uniBitBtn, uniPanel, uniLabel, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFrmLogIn = class(TUniForm)
    imgBackground: TUniImage;
    PLogIn: TPanel;
    ImgBBk: TUniImage;
    lbUserID: TUniLabel;
    lbPassword: TUniLabel;
    PnBarSignOn: TUniPanel;
    btnLogIn: TUniBitBtn;
    btnCancel: TUniBitBtn;
    edUserID: TUniEdit;
    edPassword: TUniEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmLogIn: TFrmLogIn;

implementation

{$R *.dfm}

uses
  MainModule;

function FrmLogIn: TFrmLogIn;
begin
  Result := TFrmLogIn(UniMainModule.GetFormInstance(TFrmLogIn));
end;

initialization
  RegisterMainFormClass(TFrmLogIn);

end.
