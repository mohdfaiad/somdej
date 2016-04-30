unit uBatchHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainDataFormClass, uniGUIClasses,
  uniScreenMask, uniButton, Vcl.Imaging.GIFImg, uniImage,
  uniGUIBaseClasses, uniPanel, uniBasicGrid, uniDBGrid, uniPageControl,DS43FileIntfDM,
  uniMultiItem, uniComboBox, Data.DB;

type
  TfrmBatchHistory = class(TMainDataForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPageControl2: TUniPageControl;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniPanel3: TUniPanel;
    cmbFileName: TUniComboBox;
    btnRefreshError: TUniButton;
    dsGetBatchList: TDataSource;
    dsGetBatchDetail: TDataSource;
    btnBatchRefresh: TUniButton;
    dsGetBatchError: TDataSource;
    dsGetBatchErrorFilename: TDataSource;
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure btnBatchRefreshClick(Sender: TObject);
    procedure btnRefreshErrorClick(Sender: TObject);
  private
    { Private declarations }
    FDM : TDS43FileDM;
  public
    { Public declarations }
    property DM : TDS43FileDM read FDM write FDM;
  end;

var
  frmBatchHistory: TfrmBatchHistory;

implementation

{$R *.dfm}



procedure TfrmBatchHistory.btnBatchRefreshClick(Sender: TObject);
begin
  //inherited;
  FDM.cdsGetBathList.Close;
  FDM.getBatchList;
  FDM.cdsGetBathList.Open;
end;

procedure TfrmBatchHistory.btnRefreshErrorClick(Sender: TObject);
begin
  //inherited;
  with FDM do
  begin
    cdsGetBatchErrorByFilename.Close;
    getBatchErrorByFileName(fdm.cdsGetBathList.FieldByName('BatchCode').AsString,TString(cmbFileName.Items.Objects[cmbFileName.ItemIndex]).Str);
    cdsGetBatchErrorByFilename.Open;
  end;
end;

procedure TfrmBatchHistory.UniDBGrid1DblClick(Sender: TObject);
begin
  //inherited;
  //ShowMessage(fdm.cdsGetBathList.FieldByName('BatchCode').AsString);

  fdm.cdsGetBatchDetail.Close;
  fdm.getBatchDetail(fdm.cdsGetBathList.FieldByName('BatchCode').AsString);
  fdm.cdsGetBatchDetail.open;

  with FDM do
  begin
    cdsGetBatchErrorGrpByFilename.Close;
    getBatchErrorByGrpFileName(fdm.cdsGetBathList.FieldByName('BatchCode').AsString);
    cdsGetBatchErrorGrpByFilename.Open;

    cmbFileName.Items.Clear;
    cmbFileName.Items.AddObject('--- เลื่อก ---',TString.Create('0'));
    cdsGetBatchErrorGrpByFilename.First;
    while not cdsGetBatchErrorGrpByFilename.Eof do
    begin
      cmbFileName.Items.AddObject(cdsGetBatchErrorGrpByFilename.FieldByName('FileName').AsString,TString.Create(cdsGetBatchErrorGrpByFilename.FieldByName('FileName').AsString));
      if not cdsGetBatchErrorGrpByFilename.Eof then cdsGetBatchErrorGrpByFilename.Next;
    end;

    cmbFileName.ItemIndex:=0;
  end;


end;

procedure TfrmBatchHistory.UniFormShow(Sender: TObject);
begin
  //inherited;
  FDM.cdsGetBathList.Close;
  FDM.getBatchList;
  FDM.cdsGetBathList.Open;
end;

end.
