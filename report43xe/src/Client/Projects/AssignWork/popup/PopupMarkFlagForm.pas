unit PopupMarkFlagForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,DSAssignWorkIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg, uniScreenMask, uniBitBtn,
  uniSpeedButton;

type
  TProcOfObject = procedure(Answer:integer ;BtnName,md:String) of object;
  TfrmPopupWorkFlag = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    EdtDate: TUniDateTimePicker;
    MEMOPT: TUniDBMemo;
    UniLabel1: TUniLabel;
    EdtList: TUniEdit;
    ChDelete: TUniCheckBox;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TD3SCHExit(Sender: TObject);

  private
    Fdm : TDSAssignWorkDM;
    _BtnName ,_md:String;
    FOnReturn: TProcOfObject;
  public
    procedure Init(DM : TDSAssignWorkDM;OptionName,BtnName,md : String );
    property OnReturn: TProcOfObject read FOnReturn write FOnReturn;
  end;

var
  frmPopupWorkFlag: TfrmPopupWorkFlag;

implementation

{$R *.dfm}

procedure TfrmPopupWorkFlag.btnCancelClick(Sender: TObject);
begin
  if fdm.CdsTtSchOptGet.State in [dsInsert,dsEdit] then
    fdm.CdsTtSchOptGet.Cancel;

  if (Assigned(FOnReturn)) then
     FOnReturn(0,_BtnName,_md);
  Close();
end;

procedure TfrmPopupWorkFlag.btnConfirmClick(Sender: TObject);
var ch : Boolean;
begin

    if ChDelete.Checked  then
    begin
       fdm.CdsTtSchOptGet.Cancel;
       ch := Fdm.TtSchOptDel(
          fdm.CdsTtSchOptGetCMPOPT.AsString,
          fdm.CdsTtSchOptGetBRNOPT.AsString,
          fdm.CdsTtSchOptGetYAROPT.AsInteger,
          fdm.CdsTtSchOptGetPRDOPT.AsInteger,
          fdm.CdsTtSchOptGetWEKOPT.AsInteger,
          fdm.CdsTtSchOptGetOPTOPT.AsString,
          fdm.CdsTtSchOptGetDATOPT.AsFloat);
       if ch then
        begin
          fdm.CdsTtSchOptGet.Delete;
          _md := 'D';
          ShowMessage('ลบรายการเรียบร้อยแล้ว');
        end
        else
          ShowMessage('เกิดข้อผิดพลาด??');
    end
    else
    begin
      fdm.CdsTtSchOptGet.Post;
      ch:= FDM.TtSchOptInsUpd(
          fdm.CdsTtSchOptGetSTSOPT.AsString,
          fdm.CdsTtSchOptGetCMPOPT.AsString,
          fdm.CdsTtSchOptGetBRNOPT.AsString,
          fdm.CdsTtSchOptGetYAROPT.AsInteger,
          fdm.CdsTtSchOptGetPRDOPT.AsInteger,
          fdm.CdsTtSchOptGetWEKOPT.AsInteger,
          fdm.CdsTtSchOptGetOPTOPT.AsString,
          fdm.CdsTtSchOptGetDATOPT.AsFloat,
          fdm.CdsTtSchOptGetMEMOPT.AsString,
          'ADMIN');
        if ch then
        begin
        //  fdm.CdsTtSchOptGet.Post;
          ShowMessage('บันทึกเรียบร้อยแล้ว');
        end
        else
          ShowMessage('เกิดข้อผิดพลาด??');
    end;


    if (Assigned(FOnReturn)) then
       FOnReturn(1,_BtnName,_md);
    Close;
end;

procedure TfrmPopupWorkFlag.Init(DM : TDSAssignWorkDM;OptionName ,BtnName,md: String);
begin

   Fdm := dm;
   _BtnName := BtnName;
   _md := md;
   dsgrid.DataSet := dm.CdsTtSchOptGet;
   EdtDate.Text := FDM.FSBuddhistDateToStr(dm.CdsTtSchOptGetDATOPT.AsDateTime);
   EdtList.Text := OptionName;

  if (fdm.CdsTtSchOptGet.State in [dsInsert]) then
  begin
     MEMOPT.SetFocus;
     ChDelete.Enabled := False;
  end
  else if (fdm.CdsTtSchOptGet.State in [dsEdit]) then
  begin
      MEMOPT.SetFocus;
      ChDelete.Enabled := True;
  end
  else
  begin
     ChDelete.Enabled := False;
     MEMOPT.ReadOnly := True;
     RSetReadOnly();
  end;

  RSetColorReadOnly();
end;

procedure TfrmPopupWorkFlag.TD3SCHExit(Sender: TObject);
begin


end;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
