unit MainMasterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniButton, Menus, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniGUIBaseClasses,
  uniGUIClasses, uniEdit, uniDBEdit, uniDateTimePicker, uniMemo, uniDBMemo,
  uniPanel;

type
  TMasterForm = class(TUniForm)
  private
    FParamList: String;
    FLeft : integer;
    FTop : integer;
    FHeight : integer;
    FWidth : integer;
  protected

  public
    procedure RSetReadOnly();
    procedure RsetComboBox();
    procedure RSetColorReadOnly();
    procedure RVerifyField();
    procedure SetParamList(_ParamList: String); virtual;
    property ParamList: String read FParamList write SetParamList;

    property RLeft : integer read FLeft write FLeft;
    property RTop : integer read FTop write FTop;
    property RHeight : integer read FHeight write FHeight;
    property RWidth : integer read FWidth write FWidth;


  end;

implementation

{$R *.dfm}

procedure TMasterForm.RsetComboBox;
var
  I: Integer;
begin
  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] is TUniComboBox ) then
      begin
        if  (Components[I]  as TUniComboBox).Enabled then
          if  (Components[I]  as TUniComboBox).Tag<>99 then
          begin
            (Components[I]  as TUniComboBox).Items.Clear;
            (Components[I]  as TUniComboBox).Text:='';
          end;
      end;
  end;
end;

procedure TMasterForm.RSetReadOnly();
var
  I: Integer;
  IsEnabled : Boolean;
  Pn ,wd : integer;
begin
  //wd := 1024;
 // Pn := Width - wd;
  IsEnabled := True;

  for I := 0 to (ComponentCount - 1) do
  begin
    if (Components[I] as TComponent).Tag = 9 then
    begin
      TUniDBEdit(Components[I]).ReadOnly := IsEnabled;
    //  TUniDBEdit(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      TUniEdit(Components[I]).ReadOnly := IsEnabled;
   //   TUniEdit(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      TUniDateTimePicker(Components[I]).ReadOnly := IsEnabled;
   //   TUniDateTimePicker(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      TUniDBLookupComboBox(Components[I]).ReadOnly := IsEnabled;
   //   TUniDBLookupComboBox(Components[I]).Color := clInfoBk;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      TUniDBMemo(Components[I]).ReadOnly := IsEnabled;
   //   TUniDBLookupComboBox(Components[I]).Color := clInfoBk;
    end
    {
    else if (Components[I] as TComponent).Tag = 10 then
    begin

      if Width < wd then
      begin
        if TUniPanel(Components[I] as TComponent).Name = 'PnCenter' then
            TUniPanel(Components[I] as TComponent).Width := wd
        else if TUniPanel(Components[I] as TComponent).Name = 'PnLeft' then
            TUniPanel(Components[I] as TComponent).Width := 0
        else if TUniPanel(Components[I] as TComponent).Name = 'PnRight' then
            TUniPanel(Components[I] as TComponent).Width := 0 ;
      end
      else
      begin
        if TUniPanel(Components[I] as TComponent).Name = 'PnCenter' then
            TUniPanel(Components[I] as TComponent).Width := wd
        else if TUniPanel(Components[I] as TComponent).Name = 'PnLeft' then
            TUniPanel(Components[I] as TComponent).Width := Pn div 2
        else if TUniPanel(Components[I] as TComponent).Name = 'PnRight' then
            TUniPanel(Components[I] as TComponent).Width := Pn div 2;
      end;

    end; }
  end;

end;

procedure TMasterForm.RSetColorReadOnly();
var
  I: Integer;
  IsEnabled : Boolean;
begin
 // IsEnabled := (Md = 'V');

  for I := 0 to (ComponentCount - 1) do
  begin
   if (Components[I] as TComponent).Tag = 9 then
    begin
      if (TUniDBEdit(Components[I]).ReadOnly = True) then
        TUniDBEdit(Components[I]).Color := cl3DLight;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      if (TUniEdit(Components[I]).ReadOnly = True) then
        TUniEdit(Components[I]).Color := cl3DLight;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      if (TUniDateTimePicker(Components[I]).ReadOnly = True) then
        TUniDateTimePicker(Components[I]).Color := cl3DLight;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      if (TUniDBLookupComboBox(Components[I]).ReadOnly = True) then
         TUniDBLookupComboBox(Components[I]).Color := cl3DLight;
    end
    else if (Components[I] as TComponent).Tag = 9 then
    begin
      if (TUniDBMemo(Components[I]).ReadOnly = True) then
         TUniDBMemo(Components[I]).Color := cl3DLight;
    end;
  end;

end;

procedure TMasterForm.RVerifyField();

begin
   ;
end;

procedure TMasterForm.SetParamList(_ParamList: String);
begin
  FParamList := _ParamList;
end;

end.
