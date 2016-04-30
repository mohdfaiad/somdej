unit MainPopupDataFormClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, MainMasterForm, StdCtrls,
  UniLabel, UniButton, ExtCtrls, UniPanel, uniGUIBaseClasses, uniGUIClasses,
  Menus, Vcl.Imaging.GIFImg, uniImage, Vcl.Imaging.jpeg, uniScreenMask, uniMemo,
  uniDBMemo;

type
  TMainPopupDataForm = class(TMasterForm)
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
    pnUser: TUniPanel;
    LbEntryUser: TUniLabel;
    LbEntryDate: TUniLabel;
    LbEditUser: TUniLabel;
    LbEditDate: TUniLabel;
    ENTUSR: TUniLabel;
    ENTDTE: TUniLabel;
    EDTUSR: TUniLabel;
    EDTDTE: TUniLabel;
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
  {$IFDEF OBSS} MainModuleEx {$ELSE} MainModuleEx {$ENDIF};

procedure TMainPopupDataForm.btnCancelClick(Sender: TObject);
begin
  close;
  //Cancel();
end;

procedure TMainPopupDataForm.btnConfirmClick(Sender: TObject);
begin
  close;
  //Confirm();
end;

end.
