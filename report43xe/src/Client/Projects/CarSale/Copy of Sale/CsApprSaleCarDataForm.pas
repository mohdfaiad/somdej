unit CsApprSaleCarDataForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CsAppSaleCarDataForm, Data.DB,
  uniGUIClasses, uniScreenMask, Vcl.Imaging.GIFImg, uniBasicGrid, uniDBGrid,
  uniEdit, uniImage, uniMemo, uniDBMemo, uniDateTimePicker, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniButton, uniDBEdit,
  uniLabel, uniGroupBox, uniPageControl, uniGUIBaseClasses, uniPanel;

type
  TfrmCsApprSaleCarData = class(TfrmCsAppSaleCarData)
    procedure BtnSelectAppClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    procedure ApplicationSelected(YAR:Integer;CMP,BRN,DCD:String;DNO : Integer);
  public
    { Public declarations }
  end;

var
  frmCsApprSaleCarData: TfrmCsApprSaleCarData;

implementation

{$R *.dfm}

uses PopupApplicationForm ;

procedure TfrmCsApprSaleCarData.ApplicationSelected(YAR:Integer;CMP,BRN,DCD:String;DNO : Integer);
begin
     dm.CdsMtAppGet.Close();
     dm.MtAppGet(YAR,CMP,BRN,DCD,DNO);
     dm.CdsMtAppGet.Open();
     MNMPM1.ListSource := dm.GetDSC('S'+ dm.CdsMtAppGetSRSPM1.AsString); //แบบ
     btnConfirm.Visible := False;
     BtnSelectcno.Enabled := False;
     BtnSelectProduct.Enabled := False;

     ShowEdtAmtAndDate();
     GetImage();
     GetAddr(dm.CdsMtAppGetCNOOT5.AsLargeInt);
     GetCard(dm.CdsMtAppGetCNOOT5.AsLargeInt);
     RSetReadOnly();
end;

procedure TfrmCsApprSaleCarData.BtnSelectAppClick(Sender: TObject);
begin
  with TfrmPopupApplication.Create(UniApplication) do
  begin
    Init(dm, 'เลือกคำขอ',
      dm.CMPUser,
      dm.BRNUser,'C');

    OnSelectData := ApplicationSelected;
    ShowModal();
  end;

end;

procedure TfrmCsApprSaleCarData.UniFormCreate(Sender: TObject);
begin
  inherited;
  App_Appr := 'APPROVE';
end;

end.
