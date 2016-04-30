unit AWSetupCalendaForm;

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
  TfrmAWSetupCalendaGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    LbCid: TUniLabel;
    EdtYar: TUniEdit;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel3: TUniLabel;
    EdtBrn: TUniEdit;
    smCalendar: TUniScreenMask;
    PgAssignWork: TUniPageControl;
    TabWeek: TUniTabSheet;
    DbGridList2: TUniDBGrid;
    TabOption: TUniTabSheet;
    PnList: TUniPanel;
    PN01: TUniPanel;
    PN02: TUniPanel;
    PN03: TUniPanel;
    PN04: TUniPanel;
    PN08: TUniPanel;
    PN07: TUniPanel;
    PN06: TUniPanel;
    PN05: TUniPanel;
    PN09: TUniPanel;
    PN10: TUniPanel;
    PN11: TUniPanel;
    PN12: TUniPanel;
    PN16: TUniPanel;
    PN15: TUniPanel;
    PN14: TUniPanel;
    PN13: TUniPanel;
    PN17: TUniPanel;
    PN18: TUniPanel;
    PN19: TUniPanel;
    PN20: TUniPanel;
    PN24: TUniPanel;
    PN23: TUniPanel;
    PN22: TUniPanel;
    PN21: TUniPanel;
    PN25: TUniPanel;
    PN26: TUniPanel;
    PN27: TUniPanel;
    PN28: TUniPanel;
    PN30: TUniPanel;
    PN29: TUniPanel;
    PnL1: TUniPanel;
    PnL2: TUniPanel;
    PnL3: TUniPanel;
    PnL4: TUniPanel;
    PnL5: TUniPanel;
    PnL6: TUniPanel;
    PnL7: TUniPanel;
    PnL8: TUniPanel;
    PnL9: TUniPanel;
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
    PN31: TUniPanel;
    BTSunday: TUniSpeedButton;
    LbSunday: TUniLabel;
    LbComment2: TUniLabel;
    PnComment2: TUniPanel;
    LbComment1: TUniLabel;
    UniPanel1: TUniPanel;
    procedure btnAddClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure BtnViewClick(Sender: TObject);
    procedure PgAssignWorkChange(Sender: TObject);
    procedure BT0101Click(Sender: TObject);
    procedure btnBackClick(Sender: TObject);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDSAssignWorkDM ;

    procedure SetTrue();
    procedure SundayDate(dd : integer);
    procedure MoreLastDayVisible(dd : integer);
    procedure SetWeekColore(dd : integer;cl : TColor;Grp : integer);
    procedure CheckSunday(FromDate,ToDate : TDateTime);
    procedure SetDataButton(BtnName,Mem:String);
    procedure SelectDataButton();
    procedure BTClick(var BT : TUniSpeedButton);

    procedure SelectButton(Answer:integer;BtnName ,md: String );

    procedure loadCaption(mm : integer);
    procedure ShowData();
    procedure _Confirm(AResult: Integer);
    procedure ButtonCheck();
  public
    property DM : TDSAssignWorkDM read FDM write FDM;

  end;

var
  frmAWSetupCalendaGrid: TfrmAWSetupCalendaGrid;

implementation

{$R *.dfm}

uses uniGUIForm, StDtlCodeForm, PopupStDtlCodeForm,
  XeUniGUIComponents,PopupStHdrCodeForm, ServerModuleEx, PopupWeekForm,
  PopupMarkFlagForm;

procedure TfrmAWSetupCalendaGrid.SetTrue();
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
        TUniSpeedButton(Components[I]).Enabled := True;
        TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flagnull.bmp');
        TUniSpeedButton(Components[I]).GroupIndex := 0;
      end;

    end;
  end;
end;
procedure TfrmAWSetupCalendaGrid.SundayDate(dd : integer);
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

procedure TfrmAWSetupCalendaGrid.MoreLastDayVisible(dd : integer);
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

procedure TfrmAWSetupCalendaGrid.SetWeekColore(dd : integer;cl : TColor;Grp : integer);
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
        TUniSpeedButton(Components[I]).GroupIndex := Grp;
    end;
  end;
end;

procedure TfrmAWSetupCalendaGrid.CheckSunday(FromDate,ToDate : TDateTime);
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

procedure TfrmAWSetupCalendaGrid.SetDataButton(BtnName ,Mem:String );
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
      end;
    end;
  end;
end;

procedure TfrmAWSetupCalendaGrid.SelectDataButton();
begin
  fdm.CdsTtSchOptGet.First;
  while not fdm.CdsTtSchOptGet.Eof do
  begin
    SetDataButton('BT' + FormatDateTime('dd',Fdm.CdsTtSchOptGetDATOPT.AsDateTime) +  Fdm.CdsTtSchOptGetOPTOPT.AsString ,
      Fdm.CdsTtSchOptGetMEMOPT.AsString);
    Fdm.CdsTtSchOptGet.Next;
  end;

end;

procedure TfrmAWSetupCalendaGrid.BTClick(var BT : TUniSpeedButton);
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

procedure TfrmAWSetupCalendaGrid.ShowData();
var
  _Form: TUniForm;
  mm : String;
begin

 // mm := '1-30 �ѹ��¹ 2555';

  _Form := TUniFormClass(TfrmPopupWeek).Create(UniApplication);
  TfrmPopupWeek(_Form).Init(FDM,MM);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
//    _Form.Position := poDefault;
    _Form.WindowState := wsNormal;

    {$ENDIF}
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmAWSetupCalendaGrid.SelectButton(Answer:integer ;BtnName ,md:String );
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
          if md = 'D' then
          begin
            TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flagnull.bmp');
            TUniSpeedButton(Components[I]).Hint := '';
            TUniSpeedButton(Components[I]).ShowHint := True;
            TUniSpeedButton(Components[I]).HelpKeyword := '0';
          end
          else
          begin
            TUniSpeedButton(Components[I]).Glyph.LoadFromFile('files/flag.bmp');
            TUniSpeedButton(Components[I]).Hint := Fdm.CdsTtSchOptGetMEMOPT.AsString;
            TUniSpeedButton(Components[I]).ShowHint := True;
            TUniSpeedButton(Components[I]).HelpKeyword := '1';
          end;
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


procedure TfrmAWSetupCalendaGrid.BT0101Click(Sender: TObject);
var OptionName ,md: String;
begin

  if TUniSpeedButton(Sender).HelpKeyword = '1' then
  begin
    Fdm.CdsTtSchOptGet.Locate('CMPOPT;BRNOPT;YAROPT;PRDOPT;WEKOPT;OPTOPT;DATOPT', VarArrayOf([Fdm.CdsTtSchOptGetCMPOPT.AsString,
      Fdm.CdsTtSchOptGetBRNOPT.AsString, Fdm.CdsTtSchOptGetYAROPT.AsInteger,Fdm.CdsTtSchOptGetPRDOPT.AsInteger, TUniSpeedButton(Sender).GroupIndex,
      copy(TUniSpeedButton(Sender).Name,5,2),
      StrToDate(copy(TUniSpeedButton(Sender).Name,3,2) + FormatDateTime('/mm/yyyy',Fdm.CdsTtSchGetDFRSCH.AsDateTime))]), [loPartialKey]);
    Fdm.CdsTtSchOptGet.Edit;
    md := 'E';
  end
  else
  begin
    Fdm.CdsTtSchOptGet.Append;
    md := 'A';
    fDM.CdsTtSchOptGetSTSOPT.AsString := 'A';
    FDM.CdsTtSchOptGetCMPOPT.AsString := FDM.CdsTtSchGetCMPSCH.AsString;
    FDM.CdsTtSchOptGetBRNOPT.AsString := FDM.CdsTtSchGetBRNSCH.AsString;
    Fdm.CdsTtSchOptGetYAROPT.AsInteger := Fdm.CdsTtSchGetYARSCH.AsInteger;
    Fdm.CdsTtSchOptGetPRDOPT.AsInteger := Fdm.CdsTtSchGetPRDSCH.AsInteger;
    Fdm.CdsTtSchOptGetWEKOPT.AsInteger := TUniSpeedButton(Sender).GroupIndex;
    Fdm.CdsTtSchOptGetOPTOPT.AsString := copy(TUniSpeedButton(Sender).Name,5,2);
    Fdm.CdsTtSchOptGetDATOPT.AsDateTime := StrToDate(copy(TUniSpeedButton(Sender).Name,3,2) + FormatDateTime('/mm/yyyy',Fdm.CdsTtSchGetDFRSCH.AsDateTime));
  end;

  if copy(TUniSpeedButton(Sender).Name,5,2) = '01' then
    OptionName := PnL1.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '02' then
    OptionName := PnL2.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '03' then
    OptionName := PnL3.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '05' then
    OptionName := PnL4.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '05' then
    OptionName := PnL5.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '06' then
    OptionName := PnL6.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '07' then
    OptionName := PnL7.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '08' then
    OptionName := PnL8.Caption
  else if copy(TUniSpeedButton(Sender).Name,5,2) = '09' then
    OptionName := PnL9.Caption ;

  with TfrmPopupWorkFlag.Create(UniApplication) do
  begin
    Init(Fdm,OptionName,TUniSpeedButton(Sender).Name,md);

    OnReturn := SelectButton;
    ShowModal;
  end;

end;

procedure TfrmAWSetupCalendaGrid.btnAddClick(Sender: TObject);

begin
  if not fdm.CdsTtSchGet.Active then
  begin
     IF not(FDM.TtSchGet(Fdm.CMPUser,Fdm.BRNUser,0,0)) THEN
       ShowMessage('�Դ��ͼԴ��Ҵ��Ҷ֧������');

     FDM.CdsTtSchGet.Open;
  end;

  fdm.CdsTtSchGet.Append();
  fDM.CdsTtSchGetSTSSCH.AsString := 'A';
  FDM.CdsTtSchGetCMPSCH.AsString := Fdm.CMPUser;
  FDM.CdsTtSchGetBRNSCH.AsString := Fdm.BRNUser;
  Fdm.CdsTtSchGetYARSCH.AsInteger := StrToInt(FormatDateTime('yyyy',fdm.GetSystemDate));
  Fdm.CdsTtSchGetPRDSCH.AsInteger := StrToInt(FormatDateTime('mm',fdm.GetSystemDate));

  ShowData();

end;

procedure TfrmAWSetupCalendaGrid.btnBackClick(Sender: TObject);
begin
  inherited;

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);

procedure TfrmAWSetupCalendaGrid._Confirm(AResult: Integer);
begin
  case AResult of
    mrYes:
      begin
        iF (Fdm.TtSchDel(Fdm.CdsTtSchGetCMPSCH.AsString,Fdm.CdsTtSchGetBRNSCH.AsString,
           fdm.CdsTtSchGetYARSCH.AsInteger,fdm.CdsTtSchGetPRDSCH.AsInteger)) THEN
        begin
          fdm.CdsTtSchGet.Delete();
          ShowMessage('ź��¡���������������');
          btnSearchClick(btnSearch);
        end;
        end;
  end;
end;

procedure TfrmAWSetupCalendaGrid.btnDeleteClick(Sender: TObject);
begin
   if (not Fdm.CdsTtSchGet.Active) or
    (Fdm.CdsTtSchGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

//  if RecordVerify() then
  if True then
  begin
    MessageDlg('�س��ͧ���ź���������������?', mtConfirmation, mbYesNo,
      _Confirm);
  end
  else
    ShowMessage('�������ö�ӡ��ź�����������ͧ�ҡ ' +
      Fdm.GetLastErrorMessage);


end;

procedure TfrmAWSetupCalendaGrid.btnEditClick(Sender: TObject);
begin
   if (not Fdm.CdsTtSchGet.Active) or
    (Fdm.CdsTtSchGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  fdm.CdsTtSchGet.Edit();

  ShowData();

end;

procedure TfrmAWSetupCalendaGrid.btnSearchClick(Sender: TObject);
begin
    FDM.CdsTtSchGet.Close;
    IF not(FDM.TtSchGet(trim(EdtCom.Text),trim(EdtBrn.Text),StrToInt(EdtYar.Text) - 543,StrToInt(edSearch.Text))) THEN
       ShowMessage('�Դ��ͼԴ��Ҵ��Ҷ֧������');
    FDM.CdsTtSchGet.Open;

   if Fdm.CdsTtSchGet.IsEmpty then
    begin
      ShowMessage('�� ��͹ ����к��ѧ����ա�á�˹���÷ӧҹ');
    end;
end;

procedure TfrmAWSetupCalendaGrid.BtnViewClick(Sender: TObject);
begin
   if (not Fdm.CdsTtSchGet.Active) or
    (Fdm.CdsTtSchGet.IsEmpty) then
  begin
    MessageDlg('There are no data selected.', mtConfirmation, [mbOK], nil);
    Exit;
  end;

  ShowData();

end;

procedure TfrmAWSetupCalendaGrid.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
  if order = Column.FieldName then
    order := Column.FieldName + ' desc '
  else
  order := Column.FieldName ;
  btnSearchClick(btnsearch);


end;



Procedure TfrmAWSetupCalendaGrid.loadCaption(mm : integer);
  function monthname(_m: integer):String;
  begin
    _m := _m + 1;
    if _m = 13 then
      _m := 1;

    if _m=1 then
      monthname := '�.�.'
    else if _m = 2 then
      monthname := '�.�.'
    else if _m = 3 then
      monthname := '��.�.'
    else if _m = 4 then
      monthname := '��.�.'
    else if _m = 5 then
      monthname := '�.�.'
    else if _m = 6 then
      monthname := '��.�.'
    else if _m = 7 then
      monthname := '�.�.'
    else if _m = 8 then
      monthname := '�.�.'
    else if _m = 9 then
      monthname := '�.�.'
    else if _m = 10 then
      monthname := '�.�.'
    else if _m = 11 then
      monthname := '�.�.'
    else if _m = 12 then
      monthname := '�.�.';

  end;
begin
    PnL1.Caption := '1. Rundown ' + monthname(mm);
    PnL2.Caption := '2. �����' ;
    PnL3.Caption := '3. Assign Week �͡' ;
    PnL4.Caption := '4. ��§ҹ��èѴ��ö��ºؤ��(�к��ѹ)' ;
    PnL5.Caption := '5. Pre Assign ��͹ ' + monthname(mm) + ' �͡';
    PnL6.Caption := '6. ��¡�á�èѴ��ö��ºؤ�� ' + monthname(mm) + ' (����к� Week)' ;
    PnL7.Caption := '7. Saler ��Ѻ��ا������' ;
    PnL8.Caption := '8. ��¡�á�èѴ��ö��ºؤ�� '+ monthname(mm) +' (�к� Week)' ;
    PnL9.Caption := '9. ��û�Ъ��';
end;

procedure TfrmAWSetupCalendaGrid.ButtonCheck();
var ch : Boolean;
begin
   ch := (PgAssignWork.ActivePage = TabWeek );


   btnAdd.Visible := ch;
   BtnView.Visible := ch;
   btnEdit.Visible := ch;
   btnDelete.Visible := ch;

end;

procedure TfrmAWSetupCalendaGrid.PgAssignWorkChange(Sender: TObject);
var D, M, Y : WORD;
  i ,max: integer;
begin
  if fdm.CdsTtSchGet.IsEmpty then
  begin
    ShowMessage('�������¡�á�˹���ǧ�ѹ������ѻ����');
    PgAssignWork.ActivePage := TabWeek;
  end
  else
  begin
    fdm.CdsTtSchOptGet.Close;
    if not fdm.TtSchOptGet(fdm.CdsTtSchGetCMPSCH.AsString,fdm.CdsTtSchGetBRNSCH.AsString,
                       fdm.CdsTtSchGetYARSCH.AsInteger,fdm.CdsTtSchGetPRDSCH.AsInteger) then
       ShowMessage('�Դ��ͼԴ��Ҵ��Ҷ֧������');
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

    BTSunday.Glyph.LoadFromFile('files/flagx.bmp');
    BTSunday.Enabled := False;
  end;

  ButtonCheck();
end;

procedure TfrmAWSetupCalendaGrid.UniFormCreate(Sender: TObject);
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
      '<p style="text-align:center;color:#0000A0">�к���ͧ����Է���㹡����Ҷ֧�����</p> ' +
      '<p style="text-align:center;color:#0000A0">��س� Sign-On �����ҹ���� Application Center.</p> ' +
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

//  btnBack.Caption := '�Դ�����';
  btnBack.Visible := True;
  BTSunday.Glyph.LoadFromFile('files/flagx.bmp');
end;

end.
