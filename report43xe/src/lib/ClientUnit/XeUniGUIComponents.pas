unit XeUniGUIComponents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DSMainIntfDM, uniGUIAbstractClasses, uniGUIForm, uniGUIFrame, uniGUITypes,
  UniDBEdit, UniButton, UniPanel, UniLabel, uniGroupBox, UniDBLookupListBox,
  UniDBComboBox, UniRadioButton, UniPageControl, UniDBGrid, UniDateTimePicker,
  UniCheckBox, UniDBCheckBox, UniEdit, UniComboBox, UniDBLookupComboBox,
  UniDBDateTimePicker, UniScrollBox, UniBitBtn, UniImage, UniMemo;

procedure GetControlList(DM: TDSMainDM; Form: TUniForm; AppName: String); overload;
procedure SetControlList(DM: TDSMainDM; Form: TUniForm; AppName: String); overload;
procedure GetControlList(DM: TDSMainDM; Form: TUniFrame; AppName: String); overload;
procedure SetControlList(DM: TDSMainDM; Form: TUniFrame; AppName: String); overload;

implementation

procedure GetControlList(DM: TDSMainDM; Form: TUniForm; AppName: String);
var
  FormName, ParentName, ComponentName,
  ComponentClass, Description: String;

  procedure GetControlListEx(_Parent: TComponent);
  var
    I: Integer;
  begin
    try
      ParentName := TControl(_Parent.Components[0]).Parent.Name;
    except
      Exit;
    end;

    for I := 0 to _Parent.ComponentCount - 1 do
    begin
      try
        ParentName := TControl(_Parent.Components[I]).Parent.Name;
      except
        ParentName := '';
      end;

      try
        ComponentName := _Parent.Components[I].Name;
        ComponentClass := _Parent.Components[I].ClassName;
        ComponentClass := StringReplace(ComponentClass, 'Ext', '', [rfReplaceAll]);
        if (ComponentClass = 'TTabSheet') then
        begin
          ComponentClass := 'TUniTabSheet';
          if (TControl(_Parent.Components[I]).Hint <> '') then
            Description := TControl(_Parent.Components[I]).Hint
          else
            Description := 'á·çº' + TUniTabSheet(_Parent.Components[I]).Caption;
        end else
        if ((ComponentClass = 'TUniLabel') or (ComponentClass = 'TUniButton')) then
        begin
          if (TControl(_Parent.Components[I]).Hint <> '') then
            Description := TControl(_Parent.Components[I]).Hint
          else
            Description := 'Label ' +
              StringReplace(TUniLabel(_Parent.Components[I]).Caption, ':', '', [rfReplaceAll]);
        end else
        begin
          if (TControl(_Parent.Components[I]).Hint <> '') then
            Description := TControl(_Parent.Components[I]).Hint
          else
            Description :=
              _Parent.Components[I].Name + ': ' + _Parent.Components[I].ClassName;
        end;
      except
      end;
      if ((ComponentName <> '') and (Copy(ComponentClass, 1, 4) = 'TUni') and
          (ComponentClass <> 'TUniScreenMask')) then
      begin
        DM.InsertComponent(
          AppName, FormName, ParentName, ComponentClass,
          ComponentName, Description);
      end;
      if (_Parent.Components[I].ComponentCount > 0) then
      try
        GetControlListEx(_Parent.Components[I]);
      except
      end;
    end
  end;
begin
  if (Form.WebMode) then Exit;
  FormName := Form.Name;
  ParentName := AppName;
  ComponentName := Form.Name;
  ComponentClass := 'TUniForm';
  if (Form.Hint <> '') then
    Description := Form.Hint
  else
    Description := 'Form ' + Form.Caption;

  DM.DeleteComponent(AppName, FormName);
  DM.InsertComponent(
    AppName, FormName, ParentName, ComponentClass,
    ComponentName, Description);
  try
    GetControlListEx(Form);
  except
  end
end;

procedure SetControlList(DM: TDSMainDM; Form: TUniForm; AppName: String);
  procedure SetControlListEx(_Parent: TComponent);
  var
    ParentName, ComponentName,
    ComponentClass, Description: String;
    C: TComponent;
  begin
    while (not DM.cdsGetComponentList.Eof) do
    begin
      ComponentName := DM.cdsGetComponentListCOMPONENT_NAME.AsString;
      ComponentClass := DM.cdsGetComponentListCOMPONENT_CLASS.AsString;
      ComponentClass := StringReplace(ComponentClass, 'Ext', '', [rfReplaceAll]);

      try
        C := _Parent.FindComponent(ComponentName);
        ComponentName := C.Name;
      except
        C := nil;
      end;

      if (Assigned(C)) then
      begin
        if (ComponentClass = 'TUniPageControl') then
        begin
          TUniPageControl(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniPageControl(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniScrollBox') then
        begin
          TUniScrollBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniScrollBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniPageControl') then
        begin
          TUniPageControl(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniPageControl(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if ((ComponentClass = 'TUniTabSheet') or (ComponentClass = 'TTabSheet'))then
        begin
          TUniTabSheet(C).TabVisible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniTabSheet(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniPanel') then
        begin
          TUniPanel(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniPanel(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniGroupBox') then
        begin
          TUniGroupBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniGroupBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniButton') then
        begin
          TUniButton(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniButton(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniBitBtn') then
        begin
          TUniBitBtn(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniBitBtn(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniRadioButton') then
        begin
          TUniRadioButton(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniRadioButton(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniEdit') then
        begin
          TUniEdit(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniEdit(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniLabel') then
        begin
          TUniLabel(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniLabel(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniCheckBox') then
        begin
          TUniCheckBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniCheckBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniComboBox') then
        begin
          TUniComboBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniComboBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDateTimePicker') then
        begin
          TUniDateTimePicker(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDateTimePicker(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniMemo') then
        begin
          TUniMemo(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniMemo(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniImage') then
        begin
          TUniImage(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniImage(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBGrid') then
        begin
          TUniDBGrid(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBGrid(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBEdit') then
        begin
          TUniDBEdit(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBEdit(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBComboBox') then
        begin
          TUniDBComboBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBComboBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBLookupComboBox') then
        begin
          TUniDBLookupComboBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBLookupComboBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBLookupListBox') then
        begin
          TUniDBLookupListBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBLookupListBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBCheckBox') then
        begin
          TUniDBCheckBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBCheckBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBDateTimePicker') then
        begin
          TUniDBDateTimePicker(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBDateTimePicker(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end;
      end;

      DM.cdsGetComponentList.Next();

      if (Assigned(C)) then
      begin
        if (C.ComponentCount > 0) then
          SetControlListEx(C);
      end;
    end;
  end;
begin
  if (not Form.WebMode) then Exit;
  DM.GetComponentList(AppName, Form.Name);
  DM.cdsGetComponentList.Open();
  try
    SetControlListEx(Form);
  finally
    DM.cdsGetComponentList.Close();
  end;
end;

procedure GetControlList(DM: TDSMainDM; Form: TUniFrame; AppName: String);
var
  FormName, ParentName, ComponentName,
  ComponentClass, Description: String;

  procedure GetControlListEx(_Parent: TComponent);
  var
    I: Integer;
  begin
    try
      ParentName := TControl(_Parent.Components[0]).Parent.Name;
    except
      Exit;
    end;

    for I := 0 to _Parent.ComponentCount - 1 do
    begin
      try
        ParentName := TControl(_Parent.Components[I]).Parent.Name;
      except
        ParentName := '';
      end;

      try
        ComponentName := _Parent.Components[I].Name;
        ComponentClass := _Parent.Components[I].ClassName;
        ComponentClass := StringReplace(ComponentClass, 'Ext', '', [rfReplaceAll]);
        if (ComponentClass = 'TTabSheet') then
        begin
          ComponentClass := 'TUniTabSheet';
          if (TControl(_Parent.Components[I]).Hint <> '') then
            Description := TControl(_Parent.Components[I]).Hint
          else
            Description := 'á·çº' + TUniTabSheet(_Parent.Components[I]).Caption;
        end else
        if ((ComponentClass = 'TUniLabel') or (ComponentClass = 'TUniButton')) then
        begin
          if (TControl(_Parent.Components[I]).Hint <> '') then
            Description := TControl(_Parent.Components[I]).Hint
          else
            Description := 'Label ' +
              StringReplace(TUniLabel(_Parent.Components[I]).Caption, ':', '', [rfReplaceAll]);
        end else
        begin
          if (TControl(_Parent.Components[I]).Hint <> '') then
            Description := TControl(_Parent.Components[I]).Hint
          else
            Description :=
              _Parent.Components[I].Name + ': ' + _Parent.Components[I].ClassName;
        end;
      except
      end;
      if ((ComponentName <> '') and (Copy(ComponentClass, 1, 4) = 'TUni') and
          (ComponentClass <> 'TUniScreenMask')) then
      begin
        DM.InsertComponent(
          AppName, FormName, ParentName, ComponentClass,
          ComponentName, Description);
      end;
      if (_Parent.Components[I].ComponentCount > 0) then
      try
        GetControlListEx(_Parent.Components[I]);
      except
      end;
    end
  end;

begin
  if (Form.WebMode) then Exit;
  FormName := Form.Name;
  ParentName := AppName;
  ComponentName := Form.Name;
  ComponentClass := 'TUniFrame';
  if (Form.Hint <> '') then
    Description := Form.Hint
  else
    Description := 'Frame ' + Form.Name;

  DM.DeleteComponent(AppName, FormName);
  DM.InsertComponent(
    AppName, FormName, ParentName, ComponentClass,
    ComponentName, Description);

  GetControlListEx(Form);
end;

procedure SetControlList(DM: TDSMainDM; Form: TUniFrame; AppName: String);
  procedure SetControlListEx(_Parent: TComponent);
  var
    ParentName, ComponentName,
    ComponentClass, Description: String;
    C: TComponent;
  begin
    while (not DM.cdsGetComponentList.Eof) do
    begin
      ComponentName := DM.cdsGetComponentListCOMPONENT_NAME.AsString;
      ComponentClass := DM.cdsGetComponentListCOMPONENT_CLASS.AsString;
      ComponentClass := StringReplace(ComponentClass, 'Ext', '', [rfReplaceAll]);

      try
        C := _Parent.FindComponent(ComponentName);
        ComponentName := C.Name;
      except
        C := nil;
      end;

      if (Assigned(C)) then
      begin
        if (ComponentClass = 'TUniPageControl') then
        begin
          TUniPageControl(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniPageControl(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniScrollBox') then
        begin
          TUniScrollBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniScrollBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniPageControl') then
        begin
          TUniPageControl(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniPageControl(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if ((ComponentClass = 'TUniTabSheet') or (ComponentClass = 'TTabSheet'))then
        begin
          TUniTabSheet(C).TabVisible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniTabSheet(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniPanel') then
        begin
          TUniPanel(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniPanel(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniGroupBox') then
        begin
          TUniGroupBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniGroupBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniButton') then
        begin
          TUniButton(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniButton(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniBitBtn') then
        begin
          TUniBitBtn(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniBitBtn(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniRadioButton') then
        begin
          TUniRadioButton(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniRadioButton(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniEdit') then
        begin
          TUniEdit(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniEdit(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniLabel') then
        begin
          TUniLabel(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniLabel(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniCheckBox') then
        begin
          TUniCheckBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniCheckBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniComboBox') then
        begin
          TUniComboBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniComboBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDateTimePicker') then
        begin
          TUniDateTimePicker(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDateTimePicker(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniMemo') then
        begin
          TUniMemo(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniMemo(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniImage') then
        begin
          TUniImage(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniImage(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBGrid') then
        begin
          TUniDBGrid(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBGrid(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBEdit') then
        begin
          TUniDBEdit(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBEdit(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBComboBox') then
        begin
          TUniDBComboBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBComboBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBLookupComboBox') then
        begin
          TUniDBLookupComboBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBLookupComboBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBLookupListBox') then
        begin
          TUniDBLookupListBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBLookupListBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBCheckBox') then
        begin
          TUniDBCheckBox(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBCheckBox(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end else
        if (ComponentClass = 'TUniDBDateTimePicker') then
        begin
          TUniDBDateTimePicker(C).Visible := Boolean(DM.cdsGetComponentListIS_VISIBLED.AsInteger);
          TUniDBDateTimePicker(C).Enabled := Boolean(DM.cdsGetComponentListIS_ENABLED.AsInteger);
        end;
      end;

      DM.cdsGetComponentList.Next();

      if (Assigned(C)) then
      begin
        if (C.ComponentCount > 0) then
          SetControlListEx(C);
      end;
    end;
  end;
begin
  if (not Form.WebMode) then Exit;
  DM.GetComponentList(AppName, Form.Name);
  DM.cdsGetComponentList.Open();
  try
    SetControlListEx(Form);
  finally
    DM.cdsGetComponentList.Close();
  end;
end;

end.
