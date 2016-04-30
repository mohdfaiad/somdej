unit MainMasterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniButton, Menus,

   uniGUIAbstractClasses,
  uniGUIClasses,  uniGUIBaseClasses;

type
  TMasterForm = class(TUniForm)
  private
    FParamList: String;
    FRemoteIP: String;
  protected
    property RemoteIP: String read FRemoteIP;
    procedure SetParamList(_ParamList: String); virtual;
  public
    constructor Create(AOwner: TComponent); override;
    property ParamList: String read FParamList write SetParamList;
  end;

implementation

{$R *.dfm}

constructor TMasterForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FRemoteIP := UniApplication.RemoteAddress;
end;

procedure TMasterForm.SetParamList(_ParamList: String);
begin
  FParamList := _ParamList;
end;

end.
