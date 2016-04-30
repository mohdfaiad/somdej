unit PopupStHdrCodeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  {$IFDEF OBSS} MainModuleEx {$ELSE} MainModuleEx {$ENDIF},
  uniGUIForm,  uniGUIVars,DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg, uniScreenMask;

type
  TfrmPopupStHdrCode = class(TMainDataForm)
    LbHdrCode: TUniLabel;
    DbHdrCode: TUniDBEdit;
    LbThaiDesc: TUniLabel;
    DbThaiDesc: TUniDBEdit;
    LbEngDesc: TUniLabel;
    DbEngDesc: TUniDBEdit;
    dsgrid: TDataSource;
    UniLabel1: TUniLabel;
    DbAbbCde: TUniDBEdit;
    UniLabel11: TUniLabel;
    CmbSTS: TUniDBLookupComboBox;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
  public
    procedure Init(DM : TDSSetupDM;CID : String);
  end;

var
  frmPopupStHdrCode: TfrmPopupStHdrCode;

implementation

{$R *.dfm}

procedure TfrmPopupStHdrCode.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStCdeGet.State in [dsInsert,dsEdit] then
    Fdm.CdsStCdeGet.Cancel();
  inherited;

end;

procedure TfrmPopupStHdrCode.btnConfirmClick(Sender: TObject);
var ch : Boolean;
  CIDCDE: String;
begin
 

end;

procedure TfrmPopupStHdrCode.Init(DM : TDSSetupDM;CID : String);
begin

   Fdm := dm;
   dsgrid.DataSet := dm.CdsStCdeGet;
   CmbSTS.ListSource := Fdm.GetDSC('STS');

  if (fdm.CdsStCdeGet.State in [dsInsert]) then
  begin
     DbHdrCode.ReadOnly := False;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStCdeGet.State in [dsEdit]) then
  begin
     DbHdrCode.ReadOnly := True;
     btnConfirm.Visible := True;
  end
  else
  begin
     DbHdrCode.ReadOnly := True ;
     btnConfirm.Visible := False;
     RSetReadOnly();
  end;

  RSetColorReadOnly();
end;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
