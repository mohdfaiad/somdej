unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniButton, uniBitBtn, uniPanel, uniLabel,
  Vcl.Imaging.jpeg, uniGUIBaseClasses, uniImage, Vcl.ExtCtrls;

type
  TUniFrame1 = class(TUniFrame)
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

implementation

{$R *.dfm}



end.
