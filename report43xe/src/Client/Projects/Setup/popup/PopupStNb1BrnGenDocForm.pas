unit PopupStNb1BrnGenDocForm;

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
  TfrmPopupStNb1BrnGenDoc = class(TMainDataForm)
    lbSearch: TUniLabel;
    EdtYar: TUniEdit;
    EdtCom: TUniEdit;
    UniLabel1: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel2: TUniLabel;
    imgLogo: TUniImage;
    procedure btnConfirmClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
  public
    procedure Init(DM : TDSSetupDM);
  end;

var
  frmPopupStNb1BrnGenDoc: TfrmPopupStNb1BrnGenDoc;

implementation

{$R *.dfm}

procedure TfrmPopupStNb1BrnGenDoc.btnConfirmClick(Sender: TObject);
var ch : Boolean;
  yy : integer;
begin
  if trim(EdtYar.Text) = '' then
  begin
    ShowMessage('����ҧ ��سҡ�͡��');
    EdtYar.SetFocus();
    exit;
  end
  else   if trim(EdtCom.Text) = '' then
  begin
    ShowMessage('����ѷ ��ҧ ��سҡ�͡����ѷ');
    EdtCom.SetFocus();
    exit;
  end
  else  if trim(EdtBrn.Text) = '' then
  begin
    ShowMessage('�Ң� ��ҧ ��سҡ�͡�Ң�');
    EdtBrn.SetFocus();
    exit;
  end;

  try
    yy := StrToInt(EdtYar.Text);
  except
    exit;
  end;

  if (yy < 2550) then
  begin
    ShowMessage('��سҵ�Ǩ�ͺ ������');
    exit;
  end;

  ch:= FDM.StNb1BrnGenDoc(yy,Trim(EdtCom.Text),Trim(EdtBrn.Text));

  if ch then
  begin
    ShowMessage('���ҧ�Ţ Running �͡��÷��������º��������');
    Close;
  end
  else
    ShowMessage('�Դ��ͼԴ��Ҵ??');


end;

procedure TfrmPopupStNb1BrnGenDoc.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

end;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
