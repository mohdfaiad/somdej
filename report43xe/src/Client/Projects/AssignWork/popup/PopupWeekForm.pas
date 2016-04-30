unit PopupWeekForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainPopupDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,DSAssignWorkIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg, uniScreenMask, MainDataFormClass;

type
  TfrmPopupWeek = class(TMainPopupDataForm)
    dsgrid: TDataSource;
    LbMM: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    FD1SCH: TUniDBEdit;
    TD1SCH: TUniDBEdit;
    FD2SCH: TUniDBEdit;
    TD2SCH: TUniDBEdit;
    FD3SCH: TUniDBEdit;
    TD3SCH: TUniDBEdit;
    FD4SCH: TUniDBEdit;
    TD4SCH: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    EdtYar: TUniEdit;
    EdtMM: TUniEdit;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TD1SCHExit(Sender: TObject);
    procedure TD2SCHExit(Sender: TObject);
    procedure TD3SCHExit(Sender: TObject);
    procedure EdtMMExit(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure EdtYarExit(Sender: TObject);

  private
    Fdm : TDSAssignWorkDM;
     function mmStr(mm : integer): String;
     function mmThai(mm : integer): String;

  public
    procedure Init(DM : TDSAssignWorkDM;MM : String);
  end;

var
  frmPopupWeek: TfrmPopupWeek;

implementation

{$R *.dfm}

procedure TfrmPopupWeek.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsTtSchGet.State in [dsInsert,dsEdit] then
    Fdm.CdsTtSchGet.Cancel();
  inherited;

end;

procedure TfrmPopupWeek.btnConfirmClick(Sender: TObject);
var ch, DD_ch : Boolean;
    dd : integer;
begin
    fdm.CdsTtSchGetDFRSCH.AsDateTime := StrToDateTime('01/' + EdtMM.Text + '/' + IntToStr(StrToInt(EdtYar.Text) - 543));

    dd_ch := False;
    dd := 31;
    while not dd_ch do
    begin
        try
         fdm.CdsTtSchGetDTOSCH.AsDateTime := StrToDateTime(inttostr(dd) + '/' + EdtMM.Text + '/' + IntToStr(StrToInt(EdtYar.Text) - 543));
         dd_ch := True;
        except
          dd := dd - 1;
         //dd_ch := False
        end;

    end;

    fdm.CdsTtSchGetPRDSCH.AsInteger := StrToInt(EdtMM.Text);

    fdm.CdsTtSchGetFR1SCH.AsDateTime :=  StrToDateTime(IntToStr(Fdm.CdsTtSchGetFD1.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;
    fdm.CdsTtSchGetTO1SCH.AsDateTime := StrToDateTime(IntToStr(Fdm.CdsTtSchGetTD1.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;
    fdm.CdsTtSchGetFR2SCH.AsDateTime := StrToDateTime(IntToStr(Fdm.CdsTtSchGetFD2.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;
    fdm.CdsTtSchGetTO2SCH.AsDateTime := StrToDateTime(IntToStr(Fdm.CdsTtSchGetTD2.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;
    fdm.CdsTtSchGetFR3SCH.AsDateTime := StrToDateTime(IntToStr(Fdm.CdsTtSchGetFD3.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;
    fdm.CdsTtSchGetTO3SCH.AsDateTime := StrToDateTime(IntToStr(Fdm.CdsTtSchGetTD3.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;
    fdm.CdsTtSchGetFR4SCH.AsDateTime := StrToDateTime(IntToStr(Fdm.CdsTtSchGetFD4.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;
    fdm.CdsTtSchGetTO4SCH.AsDateTime := StrToDateTime(IntToStr(Fdm.CdsTtSchGetTD4.AsInteger) + FormatDateTime('/mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime)) ;

  ch:= FDM.TtSchInsUpd(
    fdm.CdsTtSchGetSTSSCH.AsString,
    fdm.CdsTtSchGetCMPSCH.AsString,
    fdm.CdsTtSchGetBRNSCH.AsString,
    fdm.CdsTtSchGetYARSCH.AsInteger,
    fdm.CdsTtSchGetPRDSCH.AsInteger,
    fdm.CdsTtSchGetDFRSCH.AsFloat,
    fdm.CdsTtSchGetDTOSCH.AsFloat,
    fdm.CdsTtSchGetFR1SCH.AsFloat,
    fdm.CdsTtSchGetTO1SCH.AsFloat,
    fdm.CdsTtSchGetFR2SCH.AsFloat,
    fdm.CdsTtSchGetTO2SCH.AsFloat,
    fdm.CdsTtSchGetFR3SCH.AsFloat,
    fdm.CdsTtSchGetTO3SCH.AsFloat,
    fdm.CdsTtSchGetFR4SCH.AsFloat,
    fdm.CdsTtSchGetTO4SCH.AsFloat,
    'ADMIN');

  if ch then
  begin
//    CIDCDE :=  Fdm.CdsTtSchGetCIDCDE.AsString;
    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    Fdm.CdsTtSchGet.Locate('CIDCDE',CIDCDE,[]);
    fdm.CdsTtSchGet.Close;
    fdm.CdsTtSchGet.Open;
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupWeek.EdtMMExit(Sender: TObject);
begin
    LbMM.Caption := '1 - ' + mmStr(StrToInt(EdtMM.Text)) + ' ' + mmThai(StrToInt(EdtMM.Text)) + '  ' + EdtYar.Text;

end;

procedure TfrmPopupWeek.EdtYarExit(Sender: TObject);
begin
  LbMM.Caption := '1 - ' + mmStr(StrToInt(EdtMM.Text)) + ' ' + mmThai(StrToInt(EdtMM.Text)) + '  ' + EdtYar.Text;

end;

function TfrmPopupWeek.mmStr(mm : integer): String;
begin
   case mm of
     1,3,5,7,8,10,12 : result := '31';
     4,6,9,11 : result := '30';
     2 : result := '28';
   end;
end;

function TfrmPopupWeek.mmThai(mm : integer): String;
begin
   case mm of
     1 : result := 'มกราคม';
     2 : result := 'กุมภาพันธ์';
     3 : result := 'มีนาคม';
     4 : result := 'เมษายน';
     5 : result := 'พฤษภาคม';
     6 : result := 'มิถุนายน';
     7 : result := 'กรกฎาคม';
     8 : result := 'สิงหาคม';
     9 : result := 'กันยายน';
     10 : result := 'ตุลาคม';
     11 : result := 'พฤศจิกายน';
     12 : result := 'ธันวาคม';
   end;
end;

procedure TfrmPopupWeek.Init(DM : TDSAssignWorkDM;MM : String);
begin

   Fdm := dm;
 //  LbMM.Caption := MM;



   dsgrid.DataSet := dm.CdsTtSchGet;

   EdtYar.Text := IntToStr(Fdm.CdsTtSchGetYARSCH.AsInteger + 543);
   EdtMM.Text := IntToStr(Fdm.CdsTtSchGetPRDSCH.AsInteger);
   LbMM.Caption := '1 - ' + mmStr(StrToInt(EdtMM.Text)) + ' '  + mmThai(StrToInt(EdtMM.Text)) + '  ' + EdtYar.Text;

  if (fdm.CdsTtSchGet.State in [dsInsert]) then
  begin

     btnConfirm.Visible := True;
  end
  else if (fdm.CdsTtSchGet.State in [dsEdit]) then
  begin
     btnConfirm.Visible := True;
  end
  else
  begin
     btnConfirm.Visible := False;
     RSetReadOnly();
  end;



  RSetColorReadOnly();
end;

procedure TfrmPopupWeek.TD1SCHExit(Sender: TObject);
begin
  Fdm.CdsTtSchGetFD2.AsInteger := Fdm.CdsTtSchGetTD1.AsInteger + 1;

end;

procedure TfrmPopupWeek.TD2SCHExit(Sender: TObject);
begin
   Fdm.CdsTtSchGetFD3.AsInteger := Fdm.CdsTtSchGetTD2.AsInteger + 1;

end;

procedure TfrmPopupWeek.TD3SCHExit(Sender: TObject);
begin
  Fdm.CdsTtSchGetFD4.AsInteger := Fdm.CdsTtSchGetTD3.AsInteger + 1;

end;

procedure TfrmPopupWeek.UniFormCreate(Sender: TObject);
begin


end;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
