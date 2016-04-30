unit AWOrderColCalendaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox , DSAssignWorkIntfDM,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg, uniPageControl,
  uniBitBtn, uniSpeedButton ,DateUtils;

type
  TfrmAWOrderColCalendaGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    LbCid: TUniLabel;
    EdtYar: TUniEdit;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel3: TUniLabel;
    EdtBrn: TUniEdit;
    BT0101: TUniSpeedButton;
    BT0201: TUniSpeedButton;
    BT0301: TUniSpeedButton;
    BT0401: TUniSpeedButton;
    BT0501: TUniSpeedButton;
    BT0601: TUniSpeedButton;
    BT0701: TUniSpeedButton;
    BT0801: TUniSpeedButton;
    BT0901: TUniSpeedButton;
    BT1001: TUniSpeedButton;
    BT1101: TUniSpeedButton;
    BT1201: TUniSpeedButton;
    BT1301: TUniSpeedButton;
    BT1401: TUniSpeedButton;
    BT1501: TUniSpeedButton;
    BT1601: TUniSpeedButton;
    BT1701: TUniSpeedButton;
    BT1801: TUniSpeedButton;
    BT1901: TUniSpeedButton;
    BT2001: TUniSpeedButton;
    BT2101: TUniSpeedButton;
    BT2201: TUniSpeedButton;
    BT2301: TUniSpeedButton;
    BT2401: TUniSpeedButton;
    BT2501: TUniSpeedButton;
    BT2601: TUniSpeedButton;
    BT2701: TUniSpeedButton;
    BT2801: TUniSpeedButton;
    BT2901: TUniSpeedButton;
    BT3001: TUniSpeedButton;
    BT3101: TUniSpeedButton;
    PN01: TUniPanel;
    PN02: TUniPanel;
    PN03: TUniPanel;
    PN04: TUniPanel;
    PN05: TUniPanel;
    PN06: TUniPanel;
    PN07: TUniPanel;
    PN08: TUniPanel;
    PN09: TUniPanel;
    PN10: TUniPanel;
    PN11: TUniPanel;
    PN12: TUniPanel;
    PN13: TUniPanel;
    PN14: TUniPanel;
    PN15: TUniPanel;
    PN16: TUniPanel;
    PN17: TUniPanel;
    PN18: TUniPanel;
    PN19: TUniPanel;
    PN20: TUniPanel;
    PN21: TUniPanel;
    PN22: TUniPanel;
    PN23: TUniPanel;
    PN24: TUniPanel;
    PN25: TUniPanel;
    PN26: TUniPanel;
    PN27: TUniPanel;
    PN28: TUniPanel;
    PN29: TUniPanel;
    PN30: TUniPanel;
    PN31: TUniPanel;
    PnL1: TUniPanel;
    PnList: TUniPanel;
    PnL2: TUniPanel;
    PnL3: TUniPanel;
    PnL4: TUniPanel;
    PnL5: TUniPanel;
    PnL6: TUniPanel;
    PnL7: TUniPanel;
    PnL8: TUniPanel;
    PnL9: TUniPanel;
    BT0102: TUniSpeedButton;
    BT0202: TUniSpeedButton;
    BT0302: TUniSpeedButton;
    BT0402: TUniSpeedButton;
    BT0502: TUniSpeedButton;
    BT0602: TUniSpeedButton;
    BT0702: TUniSpeedButton;
    BT0802: TUniSpeedButton;
    BT0902: TUniSpeedButton;
    BT1002: TUniSpeedButton;
    BT1102: TUniSpeedButton;
    BT1202: TUniSpeedButton;
    BT1302: TUniSpeedButton;
    BT1402: TUniSpeedButton;
    BT1502: TUniSpeedButton;
    BT1602: TUniSpeedButton;
    BT1702: TUniSpeedButton;
    BT1802: TUniSpeedButton;
    BT1902: TUniSpeedButton;
    BT2002: TUniSpeedButton;
    BT2102: TUniSpeedButton;
    BT2202: TUniSpeedButton;
    BT2302: TUniSpeedButton;
    BT2402: TUniSpeedButton;
    BT2502: TUniSpeedButton;
    BT2602: TUniSpeedButton;
    BT2702: TUniSpeedButton;
    BT2802: TUniSpeedButton;
    BT2902: TUniSpeedButton;
    BT3002: TUniSpeedButton;
    BT3102: TUniSpeedButton;
    BT0103: TUniSpeedButton;
    BT0203: TUniSpeedButton;
    BT0303: TUniSpeedButton;
    BT0403: TUniSpeedButton;
    BT0503: TUniSpeedButton;
    BT0603: TUniSpeedButton;
    BT0703: TUniSpeedButton;
    BT0803: TUniSpeedButton;
    BT0903: TUniSpeedButton;
    BT1003: TUniSpeedButton;
    BT1103: TUniSpeedButton;
    BT1203: TUniSpeedButton;
    BT1303: TUniSpeedButton;
    BT1403: TUniSpeedButton;
    BT1503: TUniSpeedButton;
    BT1603: TUniSpeedButton;
    BT1703: TUniSpeedButton;
    BT1803: TUniSpeedButton;
    BT1903: TUniSpeedButton;
    BT2003: TUniSpeedButton;
    BT2103: TUniSpeedButton;
    BT2203: TUniSpeedButton;
    BT2303: TUniSpeedButton;
    BT2403: TUniSpeedButton;
    BT2503: TUniSpeedButton;
    BT2603: TUniSpeedButton;
    BT2703: TUniSpeedButton;
    BT2803: TUniSpeedButton;
    BT2903: TUniSpeedButton;
    BT3003: TUniSpeedButton;
    BT3103: TUniSpeedButton;
    BT0104: TUniSpeedButton;
    BT0204: TUniSpeedButton;
    BT0304: TUniSpeedButton;
    BT0404: TUniSpeedButton;
    BT0504: TUniSpeedButton;
    BT0604: TUniSpeedButton;
    BT0704: TUniSpeedButton;
    BT0804: TUniSpeedButton;
    BT0904: TUniSpeedButton;
    BT1004: TUniSpeedButton;
    BT1104: TUniSpeedButton;
    BT1204: TUniSpeedButton;
    BT1304: TUniSpeedButton;
    BT1404: TUniSpeedButton;
    BT1504: TUniSpeedButton;
    BT1604: TUniSpeedButton;
    BT1704: TUniSpeedButton;
    BT1804: TUniSpeedButton;
    BT1904: TUniSpeedButton;
    BT2004: TUniSpeedButton;
    BT2104: TUniSpeedButton;
    BT2204: TUniSpeedButton;
    BT2304: TUniSpeedButton;
    BT2404: TUniSpeedButton;
    BT2504: TUniSpeedButton;
    BT2604: TUniSpeedButton;
    BT2704: TUniSpeedButton;
    BT2804: TUniSpeedButton;
    BT2904: TUniSpeedButton;
    BT3004: TUniSpeedButton;
    BT3104: TUniSpeedButton;
    BT0105: TUniSpeedButton;
    BT0205: TUniSpeedButton;
    BT0305: TUniSpeedButton;
    BT0405: TUniSpeedButton;
    BT0505: TUniSpeedButton;
    BT0605: TUniSpeedButton;
    BT0705: TUniSpeedButton;
    BT0805: TUniSpeedButton;
    BT0905: TUniSpeedButton;
    BT1005: TUniSpeedButton;
    BT1105: TUniSpeedButton;
    BT1205: TUniSpeedButton;
    BT1305: TUniSpeedButton;
    BT1405: TUniSpeedButton;
    BT1505: TUniSpeedButton;
    BT1605: TUniSpeedButton;
    BT1705: TUniSpeedButton;
    BT1805: TUniSpeedButton;
    BT1905: TUniSpeedButton;
    BT2005: TUniSpeedButton;
    BT2105: TUniSpeedButton;
    BT2205: TUniSpeedButton;
    BT2305: TUniSpeedButton;
    BT2405: TUniSpeedButton;
    BT2505: TUniSpeedButton;
    BT2605: TUniSpeedButton;
    BT2705: TUniSpeedButton;
    BT2805: TUniSpeedButton;
    BT2905: TUniSpeedButton;
    BT3005: TUniSpeedButton;
    BT3105: TUniSpeedButton;
    BT0106: TUniSpeedButton;
    BT0206: TUniSpeedButton;
    BT0306: TUniSpeedButton;
    BT0406: TUniSpeedButton;
    BT0506: TUniSpeedButton;
    BT0606: TUniSpeedButton;
    BT0706: TUniSpeedButton;
    BT0806: TUniSpeedButton;
    BT0906: TUniSpeedButton;
    BT1006: TUniSpeedButton;
    BT1106: TUniSpeedButton;
    BT1206: TUniSpeedButton;
    BT1306: TUniSpeedButton;
    BT1406: TUniSpeedButton;
    BT1506: TUniSpeedButton;
    BT1606: TUniSpeedButton;
    BT1706: TUniSpeedButton;
    BT1806: TUniSpeedButton;
    BT1906: TUniSpeedButton;
    BT2006: TUniSpeedButton;
    BT2106: TUniSpeedButton;
    BT2206: TUniSpeedButton;
    BT2306: TUniSpeedButton;
    BT2406: TUniSpeedButton;
    BT2506: TUniSpeedButton;
    BT2606: TUniSpeedButton;
    BT2706: TUniSpeedButton;
    BT2806: TUniSpeedButton;
    BT2906: TUniSpeedButton;
    BT3006: TUniSpeedButton;
    BT3106: TUniSpeedButton;
    BT0107: TUniSpeedButton;
    BT0207: TUniSpeedButton;
    BT0307: TUniSpeedButton;
    BT0407: TUniSpeedButton;
    BT0507: TUniSpeedButton;
    BT0607: TUniSpeedButton;
    BT0707: TUniSpeedButton;
    BT0807: TUniSpeedButton;
    BT0907: TUniSpeedButton;
    BT1007: TUniSpeedButton;
    BT1107: TUniSpeedButton;
    BT1207: TUniSpeedButton;
    BT1307: TUniSpeedButton;
    BT1407: TUniSpeedButton;
    BT1507: TUniSpeedButton;
    BT1607: TUniSpeedButton;
    BT1707: TUniSpeedButton;
    BT1807: TUniSpeedButton;
    BT1907: TUniSpeedButton;
    BT2007: TUniSpeedButton;
    BT2107: TUniSpeedButton;
    BT2207: TUniSpeedButton;
    BT2307: TUniSpeedButton;
    BT2407: TUniSpeedButton;
    BT2507: TUniSpeedButton;
    BT2607: TUniSpeedButton;
    BT2707: TUniSpeedButton;
    BT2807: TUniSpeedButton;
    BT2907: TUniSpeedButton;
    BT3007: TUniSpeedButton;
    BT3107: TUniSpeedButton;
    BT0108: TUniSpeedButton;
    BT0208: TUniSpeedButton;
    BT0308: TUniSpeedButton;
    BT0408: TUniSpeedButton;
    BT0508: TUniSpeedButton;
    BT0608: TUniSpeedButton;
    BT0708: TUniSpeedButton;
    BT0808: TUniSpeedButton;
    BT0908: TUniSpeedButton;
    BT1008: TUniSpeedButton;
    BT1108: TUniSpeedButton;
    BT1208: TUniSpeedButton;
    BT1308: TUniSpeedButton;
    BT1408: TUniSpeedButton;
    BT1508: TUniSpeedButton;
    BT1608: TUniSpeedButton;
    BT1708: TUniSpeedButton;
    BT1808: TUniSpeedButton;
    BT1908: TUniSpeedButton;
    BT2008: TUniSpeedButton;
    BT2108: TUniSpeedButton;
    BT2208: TUniSpeedButton;
    BT2308: TUniSpeedButton;
    BT2408: TUniSpeedButton;
    BT2508: TUniSpeedButton;
    BT2608: TUniSpeedButton;
    BT2708: TUniSpeedButton;
    BT2808: TUniSpeedButton;
    BT2908: TUniSpeedButton;
    BT3008: TUniSpeedButton;
    BT3108: TUniSpeedButton;
    BT0109: TUniSpeedButton;
    BT0209: TUniSpeedButton;
    BT0309: TUniSpeedButton;
    BT0409: TUniSpeedButton;
    BT0509: TUniSpeedButton;
    BT0609: TUniSpeedButton;
    BT0709: TUniSpeedButton;
    BT0809: TUniSpeedButton;
    BT0909: TUniSpeedButton;
    BT1009: TUniSpeedButton;
    BT1109: TUniSpeedButton;
    BT1209: TUniSpeedButton;
    BT1309: TUniSpeedButton;
    BT1409: TUniSpeedButton;
    BT1509: TUniSpeedButton;
    BT1609: TUniSpeedButton;
    BT1709: TUniSpeedButton;
    BT1809: TUniSpeedButton;
    BT1909: TUniSpeedButton;
    BT2009: TUniSpeedButton;
    BT2109: TUniSpeedButton;
    BT2209: TUniSpeedButton;
    BT2309: TUniSpeedButton;
    BT2409: TUniSpeedButton;
    BT2509: TUniSpeedButton;
    BT2609: TUniSpeedButton;
    BT2709: TUniSpeedButton;
    BT2809: TUniSpeedButton;
    BT2909: TUniSpeedButton;
    BT3009: TUniSpeedButton;
    BT3109: TUniSpeedButton;
    BTSunday: TUniSpeedButton;
    LbSunday: TUniLabel;
    LbComment2: TUniLabel;
    PnComment2: TUniPanel;
    LbComment1: TUniLabel;
    UniPanel1: TUniPanel;
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BT0101Click(Sender: TObject);

    private

    order : String;
    FUserSession: TUniMainModule;
    FDM: TDSAssignWorkDM ;

    procedure SetTrue();
    procedure SundayDate(dd : integer);
    procedure MoreLastDayVisible(dd : integer);
    procedure SetWeekColore(dd : integer;cl : TColor;Grp : integer);
    procedure CheckSunday(FromDate,ToDate : TDateTime);
    procedure SetDataButton(BtnName ,Mem:String;OPTOPT : STRING);
    procedure SelectDataButton();
    procedure BTClick(var BT : TUniSpeedButton);

    procedure SelectButton(Answer:integer;BtnName ,md: String );

    procedure ShowCarlenda();

    procedure loadCaption(mm : integer);

  public
    property DM : TDSAssignWorkDM read FDM write FDM;

  end;

var
  frmAWOrderColCalendaGrid: TfrmAWOrderColCalendaGrid;

implementation

{$R *.dfm}

uses uniGUIForm, StDtlCodeForm, PopupStDtlCodeForm,
  XeUniGUIComponents,PopupStHdrCodeForm, ServerModuleEx, AWPreAssignForm,
  PopupAssignWeekForm, AWAssignWeekForm, AWOrderColForm;

procedure TfrmAWOrderColCalendaGrid.SetTrue();
var
  I: Integer;
begin
  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 7 then
    begin
      if Copy(TUniPanel(Components[I] as TComponent).Name,1,2) = 'PN' then
      begin
        TUniPanel(Components[I]).Visible := True;
        TUniPanel(Components[I]).Font.Color := clWindowText;
        TUniPanel(Components[I]).Font.Style := [];
      end
      else if Copy(TUniSpeedButton(Components[I] as TComponent).Name,1,2) = 'BT'then
      begin
        TUniSpeedButton(Components[I]).Visible := True;
        TUniSpeedButton(Components[I]).Enabled := False;
        TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flagnull.bmp');
        TUniSpeedButton(Components[I]).GroupIndex := 0;
      end;

    end;
  end;
end;
procedure TfrmAWOrderColCalendaGrid.SundayDate(dd : integer);
var
  I: Integer;
  StrDD : String;
begin
  StrDD := intToStr(DD);

  if Length(StrDD) = 1 then
    StrDD := '0' + StrDD;

  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 7 then
    begin
      if Copy(TUniPanel(Components[I] as TComponent).Name,1,4) = 'PN' + StrDD then
      begin
        TUniPanel(Components[I]).Font.Color := clRed;
        TUniPanel(Components[I]).Font.Style := [fsBold];
      end
      else if Copy(TUniSpeedButton(Components[I] as TComponent).Name,1,4) = 'BT' + StrDD then
      begin
        TUniSpeedButton(Components[I]).Enabled := False;
        TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flagx.bmp');
      end;

    end;
  end;
end;

procedure TfrmAWOrderColCalendaGrid.MoreLastDayVisible(dd : integer);
var
  I: Integer;
  StrDD : String;
begin
  StrDD := intToStr(DD);

  if Length(StrDD) = 1 then
    StrDD := '0' + StrDD;

  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 7 then
    begin
      if Copy(TUniPanel(Components[I] as TComponent).Name,1,4) = 'PN' + StrDD then
        TUniPanel(Components[I]).Visible := False
      else if Copy(TUniSpeedButton(Components[I] as TComponent).Name,1,4) = 'BT' + StrDD then
      begin
        TUniSpeedButton(Components[I]).Visible := False;
      end;

    end;
  end;
end;

procedure TfrmAWOrderColCalendaGrid.SetWeekColore(dd : integer;cl : TColor;Grp : integer);
var
  I: Integer;
  StrDD : String;
begin
  StrDD := intToStr(DD);

  if Length(StrDD) = 1 then
    StrDD := '0' + StrDD;

  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 7 then
    begin
      if Copy(TUniPanel(Components[I] as TComponent).Name,1,4) = 'PN' + StrDD then
        TUniPanel(Components[I]).Color := cl
      else if Copy(TUniSpeedButton(Components[I] as TComponent).Name,1,4) = 'BT' + StrDD then
      begin
        TUniSpeedButton(Components[I]).GroupIndex := Grp;
      end;
    end;
  end;
end;

procedure TfrmAWOrderColCalendaGrid.CheckSunday(FromDate,ToDate : TDateTime);
var  Y, M, D: Word;
     mm : String;
begin
  DecodeDate(FromDate, Y, M, D);
  mm := FormatDateTime('mm',FromDate);

  while FromDate <= ToDate do
  begin
    if DayOfTheWeek(FromDate) = 7 then
      SundayDate(DayOfTheMonth(FromDate));

    FromDate := FromDate + 1;
  end;

  if ((mm = '04') or (mm = '06') or (mm = '09') or (mm = '11')) then
  begin
     MoreLastDayVisible(31);
  end
  else if (mm = '02') then
  begin
    if IsLeapYear(Y) then
    begin
      MoreLastDayVisible(30);
      MoreLastDayVisible(31);
    end
    else
    begin
      MoreLastDayVisible(29);
      MoreLastDayVisible(30);
      MoreLastDayVisible(31);
    end;
  end;
end;

procedure TfrmAWOrderColCalendaGrid.SetDataButton(BtnName ,Mem:String;OPTOPT : STRING);
var
  I: Integer;
begin

  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 7 then
    begin
      if TUniSpeedButton(Components[I] as TComponent).Name  = BtnName then
      begin
          TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flag.bmp');
          TUniSpeedButton(Components[I]).Hint := Mem;
          TUniSpeedButton(Components[I]).ShowHint := True;
          TUniSpeedButton(Components[I]).HelpKeyword := '1';
          if OPTOPT = '02'  then
            TUniSpeedButton(Components[I]).Enabled := True
          else
            TUniSpeedButton(Components[I]).Enabled := False;
      end;
    end;
  end;
end;

procedure TfrmAWOrderColCalendaGrid.SelectDataButton();
begin
  fdm.CdsTtSchOptGet.First;
  while not fdm.CdsTtSchOptGet.Eof do
  begin
      SetDataButton('BT' + FormatDateTime('dd',Fdm.CdsTtSchOptGetDATOPT.AsDateTime) +
        Fdm.CdsTtSchOptGetOPTOPT.AsString ,Fdm.CdsTtSchOptGetMEMOPT.AsString,
        Fdm.CdsTtSchOptGetOPTOPT.AsString);
    Fdm.CdsTtSchOptGet.Next;
  end;

end;

procedure TfrmAWOrderColCalendaGrid.BTClick(var BT : TUniSpeedButton);
begin
  if BT.HelpKeyword = '1' then
  begin
    BT.Glyph.LoadFromFile('files/flagnull.bmp');
    BT.HelpKeyword := '0';
  end
  else
  begin
    BT.Glyph.LoadFromFile('files/flag.bmp');
    BT.HelpKeyword := '1';
  end;

end;

procedure TfrmAWOrderColCalendaGrid.SelectButton(Answer:integer ;BtnName ,md:String );
var
  I: Integer;
begin

  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 7 then
    begin
      if TUniSpeedButton(Components[I] as TComponent).Name  = BtnName then
      begin
        if Answer = 1 then
        begin
          TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flag.bmp');
          TUniSpeedButton(Components[I]).Hint := Fdm.CdsTtSchOptGetMEMOPT.AsString;
          TUniSpeedButton(Components[I]).ShowHint := True;
          TUniSpeedButton(Components[I]).HelpKeyword := '1';

        end
        else
        begin
          if md = 'A' then
            TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flagnull.bmp');
        end;
      end;
    end;
  end;
end;


procedure TfrmAWOrderColCalendaGrid.BT0101Click(Sender: TObject);
var
  _Form: TUniForm;
  _Date : TDateTime;
  Yar,Prd : integer;
begin
   Yar := Fdm.CdsTtSchGetYARSCH.AsInteger;
   Prd := Fdm.CdsTtSchGetPRDSCH.AsInteger;

   if Prd = 12 then
   begin
     Yar := Yar + 1;
     Prd := 1;
   end
   else
      Prd := Prd + 1;

   Fdm.CdsTtSchGetNextMM.Close;
   Fdm.TtSchGet(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,Yar,Prd);
   Fdm.CdsTtSchGetNextMM.Open;

  if Fdm.CdsTtSchGetNextMM.RecordCount = 0 then
  begin
    ShowMessage('ยังไม่มีการกำหนดตารางทำงานของเดือน ' + IntToStr(Prd) + ' ปี ' +  IntToStr(Yar + 543));
    exit;
  end;

      _Date := StrToDateTime( copy(TUniSpeedButton(Sender).Name,3,2) + '/' + FormatDateTime('mm/yyyy',fdm.CdsTtSchGetDFRSCH.AsDateTime));

      _Form := TUniFormClass(TfrmAWOrderColGrid).Create(UniApplication);
      TfrmAWOrderColGrid(_Form).Init(FDM,_Date,TUniSpeedButton(Sender).GroupIndex);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;
    _Form.Top := Top;
    _Form.Left := Left;
    _Form.Height := Height;
    _Form.Width := Width;
    _Form.WebForm.ExtWindow.Draggable := False;
    _Form.WebForm.ExtWindow.Resizable := False;
    _Form.Show();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);

procedure TfrmAWOrderColCalendaGrid.btnSearchClick(Sender: TObject);
begin
    FDM.CdsTtSchGet.Close;
    IF not(FDM.TtSchGet(trim(EdtCom.Text),trim(EdtBrn.Text),StrToInt(EdtYar.Text) - 543,StrToInt(edSearch.Text))) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsTtSchGet.Open;

   if Fdm.CdsTtSchGet.IsEmpty then
    begin
      ShowMessage('ปี เดือน ที่ระบุยังไม่มีการกำหนดการทำงาน');
    end
    else
    begin
      ShowCarlenda();
      BTSunday.Glyph.LoadFromFile('files/flagx.bmp');
      BTSunday.Enabled := False;
    end;
end;

procedure TfrmAWOrderColCalendaGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;



Procedure TfrmAWOrderColCalendaGrid.loadCaption(mm : integer);
  function monthname(_m: integer):String;
  begin
    mm := mm + 1;
    if mm = 13 then
      mm := 1;

    if _m=1 then
      monthname := 'ม.ค.'
    else if _m = 2 then
      monthname := 'ก.พ.'
    else if _m = 3 then
      monthname := 'มี.ค.'
    else if _m = 4 then
      monthname := 'เม.ย.'
    else if _m = 5 then
      monthname := 'พ.ค.'
    else if _m = 6 then
      monthname := 'มิ.ย.'
    else if _m = 7 then
      monthname := 'ก.ค.'
    else if _m = 8 then
      monthname := 'ส.ค.'
    else if _m = 9 then
      monthname := 'ก.ย.'
    else if _m = 10 then
      monthname := 'ต.ค.'
    else if _m = 11 then
      monthname := 'พ.ย.'
    else if _m = 12 then
      monthname := 'ธ.ค.';

  end;
begin
    PnL1.Caption := '1. Rundown ' + monthname(mm);
    PnL2.Caption := '2. สั่งสี' ;
    PnL3.Caption := '3. Assign Week ออก' ;
    PnL4.Caption := '4. รายงานการจัดสรรถรายบุคคล(ระบุวัน)' ;
    PnL5.Caption := '5. Pre Assign เดือน ' + monthname(mm) + ' ออก';
    PnL6.Caption := '6. รายการการจัดสรรถรายบุคคล ' + monthname(mm) + ' (ไม่ระบุ Week)' ;
    PnL7.Caption := '7. Saler ปรับปรุงข้อมูล' ;
    PnL8.Caption := '8. รายการการจัดสรรถรายบุคคล '+ monthname(mm) +' (ระบุ Week)' ;
    PnL9.Caption := '9. การประชุม';
end;

procedure TfrmAWOrderColCalendaGrid.ShowCarlenda();
var D, M, Y : WORD;
  i ,max: integer;
begin
    fdm.CdsTtSchOptGet.Close;
    if not fdm.TtSchOptGet(fdm.CdsTtSchGetCMPSCH.AsString,fdm.CdsTtSchGetBRNSCH.AsString,
                       fdm.CdsTtSchGetYARSCH.AsInteger,fdm.CdsTtSchGetPRDSCH.AsInteger) then
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    fdm.CdsTtSchOptGet.Open;

    SetTrue();
    loadCaption(Fdm.CdsTtSchGetPRDSCH.AsInteger);
    CheckSunday(fdm.CdsTtSchGetDFRSCH.AsDateTime,fdm.CdsTtSchGetDTOSCH.AsDateTime);
    SelectDataButton();

    i := Fdm.CdsTtSchGetFD1.AsInteger;
    max := Fdm.CdsTtSchGetTD1.AsInteger;
    while i <= max do
    begin
      SetWeekColore(i,clYellow,1); //W1
      i := i + 1;
    end;


    i := Fdm.CdsTtSchGetFD2.AsInteger;
    max := Fdm.CdsTtSchGetTD2.AsInteger;
    while i <= max do
    begin
      SetWeekColore(i,clLime,2); //W2
      i := i + 1;
    end;

    i := Fdm.CdsTtSchGetFD3.AsInteger;
    max := Fdm.CdsTtSchGetTD3.AsInteger;
    while i <= max do
    begin
      SetWeekColore(i,clFuchsia,3); //W3
      i := i + 1;
    end;

    i := Fdm.CdsTtSchGetFD4.AsInteger;
    max := Fdm.CdsTtSchGetTD4.AsInteger;
    while i <= max do
    begin
      SetWeekColore(i,clSkyBlue,4); //W4
      i := i + 1;
    end;

end;

procedure TfrmAWOrderColCalendaGrid.UniFormCreate(Sender: TObject);
begin

   FUserSession :=  UniMainModule();
   FDM:= FUsersession.DSAssignWorkDM;

  if (WebMode) then
  begin
    WebForm.ExtWindow.Draggable := False;
    WebForm.ExtWindow.Resizable := False;
  end;

////////////////////////////////////////////////////////////////////////////////
  FDM.UserID := 'admin';//UniApplication.Cookies.Values['userid'];
  FDM.UserPWD := 'admin';//UniApplication.Cookies.Values['userpwd'];

  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    UniServerModule.ServerMessages.TerminateTemplate.Text :=
      '<html> ' +
      '<body bgcolor="#E6E6FA"> ' +
      '<p style="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p style="text-align:center;color:#0000A0">please sign-on using Application Center.</p> <br>' +
      '<p style="text-align:center;color:#0000A0">ระบบต้องการสิทธิ์ในการเข้าถึงโปรแกรม</p> ' +
      '<p style="text-align:center;color:#0000A0">กรุณา Sign-On เข้าใช้งานโดยใช้ Application Center.</p> ' +
      '</body> ' +
      '</html>';
    UniApplication.Terminate();
    Exit;
  end;

  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    FDM.UserID := 'admin';
    FDM.UserPWD := 'admin';
  end;


 // FDM.LogIn(FDM.UserID, FDM.UserPWD);
////////////////////////////////////////////////////////////////////////////////

  dsgrid.DataSet:= FDM.CdsTtSchGet;
  order:='';

//  btnBack.Caption := 'ปิดโปรแกรม';
  btnBack.Visible := True;

  BTSunday.Glyph.LoadFromFile('files/flagx.bmp');
end;

end.
