unit MainGridFormClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUITypes, MainMasterForm, UniScreenMask, StdCtrls,
  UniEdit, UniLabel, UniButton, Grids, uniDBGrid, ExtCtrls, UniPanel, DBGrids,
  uniGUIClasses, uniBasicGrid, uniGUIBaseClasses, pngimage, uniImage,
  Vcl.Imaging.GIFImg, uniBitBtn, Vcl.Imaging.jpeg,MainModuleEx;

type
  TMainGridForm = class(TMasterForm)
    pnBody: TUniPanel;
    dbgDataList: TUniDBGrid;
    pnFooter: TUniPanel;
    btnBack: TUniButton;
    btnAdd: TUniButton;
    btnEdit: TUniButton;
    btnDelete: TUniButton;
    BtnView: TUniButton;
    pnHeader: TUniPanel;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    smView: TUniScreenMask;
    smAdd: TUniScreenMask;
    smEdit: TUniScreenMask;
    smSearch: TUniScreenMask;
    scBlak: TUniScreenMask;
    procedure btnBackClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);

  private
   // FAddHeight : integer;
  protected
    // Virtual abstract methods
  public
   // property AddHeight : integer read FAddHeight write FAddHeight;
  end;

function MainGridForm: TMainGridForm;

implementation

{$R *.dfm}


function MainGridForm: TMainGridForm;
begin
  Result := TMainGridForm(UniMainModule.GetFormInstance(TMainGridForm));
end;

procedure TMainGridForm.btnBackClick(Sender: TObject);
begin
  Close();

end;

procedure TMainGridForm.UniFormCreate(Sender: TObject);
begin
  inherited;
 // FAddHeight := 100;
end;

end.
