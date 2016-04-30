unit MainDataFormClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, MainMasterForm, StdCtrls,
  UniLabel, UniButton, ExtCtrls, UniPanel, uniGUIBaseClasses, uniGUIClasses,
  Menus;

type
  TfrmRegisterNewPatient = class(TMasterForm)
    pnBody: TUniPanel;
    pnFooter: TUniPanel;
    btnConfirm: TUniButton;
    btnCancel: TUniButton;
    pnHeader: TUniPanel;
    btnBack: TUniButton;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function Confirm():boolean;  virtual; abstract;
    function Cancel():boolean; virtual; abstract;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  {$IFDEF FSLOSHP} MainModuleEx {$ELSE} MainModule {$ENDIF};

procedure TfrmRegisterNewPatient.btnCancelClick(Sender: TObject);
begin
  close;
//  Cancel();
end;

procedure TfrmRegisterNewPatient.btnConfirmClick(Sender: TObject);
begin
  close;
//  Confirm();
end;

end.
