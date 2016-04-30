unit PopupMainClassForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniButton, UniEdit, UniLabel,
  Grids, DBGrids, uniDBGrid, ExtCtrls, UniPanel, uniGUIClasses, uniBasicGrid,
  uniGUIBaseClasses, Data.DB,MainMasterForm, Vcl.Imaging.GIFImg, uniImage,
  Vcl.Imaging.jpeg;

type
  TPopupMainClass = class(TMasterForm)
    pnBody: TUniPanel;
    dbgDataList: TUniDBGrid;
    pnFooter: TUniPanel;
    pnHeader: TUniPanel;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    btnPopupConfirm: TUniButton;
    btnPopupCancel: TUniButton;
    dscPopupData: TDataSource;
    imgBotton: TUniImage;
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupViewClick(Sender: TObject);
    procedure btnPopupAddClick(Sender: TObject);
    procedure btnPopupEditClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    procedure Search(); virtual; abstract;

    procedure View(); virtual; abstract;
    procedure Append(); virtual; abstract;
    procedure Edit(); virtual; abstract;

    procedure Confirm(); virtual; abstract;
    procedure Cancel(); virtual; abstract;
  public
    { Public declarations }
  end;

function PopupMainClass: TPopupMainClass;

implementation

{$R *.dfm}

uses
  {$IFDEF FSLOSHP} MainModuleEx {$ELSE} MainModule {$ENDIF};

function PopupMainClass: TPopupMainClass;
begin
  Result := TPopupMainClass(UniMainModule.GetFormInstance(TPopupMainClass));
end;

procedure TPopupMainClass.btnPopupAddClick(Sender: TObject);
begin
  Append();
end;

procedure TPopupMainClass.btnPopupCancelClick(Sender: TObject);
begin
  Cancel();
end;

procedure TPopupMainClass.btnPopupConfirmClick(Sender: TObject);
begin
  Confirm();
end;

procedure TPopupMainClass.btnPopupEditClick(Sender: TObject);
begin
  Edit();
end;

procedure TPopupMainClass.btnPopupViewClick(Sender: TObject);
begin
  View();
end;

procedure TPopupMainClass.btnSearchClick(Sender: TObject);
begin
  Search();
end;

procedure TPopupMainClass.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Search();
    Key := #0;
  end;
end;

end.
