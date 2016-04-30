unit MainDataFormClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, MainMasterForm, StdCtrls,
  UniLabel, UniButton, ExtCtrls, UniPanel, uniGUIBaseClasses, uniGUIClasses,
  Menus, Vcl.Imaging.GIFImg, uniImage, Vcl.Imaging.jpeg, uniScreenMask, uniMemo;

type
  TMainDataForm = class(TMasterForm)
    pnBody: TUniPanel;
    pnFooter: TUniPanel;
    btnConfirm: TUniButton;
    btnCancel: TUniButton;
    pnHeader: TUniPanel;
    btnBack: TUniButton;
    imgBotton: TUniImage;
    scClosing: TUniScreenMask;
    scCancel: TUniScreenMask;
    csConfirm: TUniScreenMask;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  protected
 //   function Confirm():boolean;  virtual; abstract;
 //   function Cancel():boolean; virtual; abstract;
  public
    { Public declarations }
    function Before(SubStr, s: string): string;
    function After(InpStr, s: string): string;
  end;

implementation

{$R *.dfm}

uses
  MainModuleEx;

  {
function Before(SubStr, s: string): string;
var
    i: integer;
begin
    i := Pos(SubStr, s);
    if i > 0 then
        Before := Copy(s, 1, i - 1)
    else
        Before := '';
end;


function After(InpStr, s: string): string;
var
    i: integer;
begin
    i := Pos(InpStr, s);
    if i <> 0 then
        Result := Copy(s, i + Length(InpStr), Length(S));
end;

}

function TMainDataForm.After(InpStr, s: string): string;
var
    i: integer;
begin
    i := Pos(InpStr, s);
    if i <> 0 then
        Result := Copy(s, i + Length(InpStr), Length(S));
end;

function TMainDataForm.Before(SubStr, s: string): string;
var
    i: integer;
begin
    i := Pos(SubStr, s);
    if i > 0 then
        Before := Copy(s, 1, i - 1)
    else
        Before := '';
end;

procedure TMainDataForm.btnCancelClick(Sender: TObject);
begin
  close;
  //Cancel();
end;

procedure TMainDataForm.btnConfirmClick(Sender: TObject);
begin
  close;
  //Confirm();
end;

end.
