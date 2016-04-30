unit PopupFg1ListForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM;

 type
   TfrmPopupFg1List = class(TPopupMainClass)
    procedure btnPopupCancelClick(Sender: TObject);

  private

  public
     function Init(_DM: TDSSetupDM): Boolean;
  end;

var
  frmPopupFg1List: TfrmPopupFg1List;

implementation

{$R *.dfm}


function TfrmPopupFg1List.Init(_DM: TDSSetupDM): Boolean;
begin
  dscPopupData.DataSet := _DM.CdsStFg1GetUsed;
end;

procedure TfrmPopupFg1List.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
