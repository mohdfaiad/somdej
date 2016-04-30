unit PopupCarForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniButton, UniEdit, UniLabel,
  Grids, DBGrids, uniDBGrid, ExtCtrls, UniPanel, uniGUIClasses, uniBasicGrid,
  uniGUIBaseClasses, Data.DB,MainMasterForm,MainModuleEx;

type
  TPopupCar = class(TMasterForm)
    pnBody: TUniPanel;
    dbgDataList: TUniDBGrid;
    pnFooter: TUniPanel;
    pnHeader: TUniPanel;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    btnPopupConfirm: TUniButton;
    btnPopupCancel: TUniButton;
    btnPopupView: TUniButton;
    btnPopupAdd: TUniButton;
    btnPopupEdit: TUniButton;
    dscPopupData: TDataSource;
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

function PopupCar: TPopupCar;

implementation

{$R *.dfm}


function PopupCar: TPopupCar;
begin
  Result := TPopupCar(UniMainModule.GetFormInstance(TPopupCar));
end;

procedure TPopupCar.btnPopupAddClick(Sender: TObject);
begin
  Append();
end;

procedure TPopupCar.btnPopupCancelClick(Sender: TObject);
begin
  close;
  //Cancel();
end;

procedure TPopupCar.btnPopupConfirmClick(Sender: TObject);
begin
  close;
  //Confirm();
end;

procedure TPopupCar.btnPopupEditClick(Sender: TObject);
begin
  Edit();
end;

procedure TPopupCar.btnPopupViewClick(Sender: TObject);
begin
  View();
end;

procedure TPopupCar.btnSearchClick(Sender: TObject);
begin
  //Search();
end;

procedure TPopupCar.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Search();
    Key := #0;
  end;
end;

end.
