object frmConfiguration: TfrmConfiguration
  Left = 0
  Top = 0
  Caption = 'frmConfiguration'
  ClientHeight = 333
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    492
    333)
  PixelsPerInch = 96
  TextHeight = 13
  object edDbServerUser: TGroupBox
    Left = 0
    Top = 0
    Width = 492
    Height = 145
    Align = alTop
    Caption = 'App Server Configuration'
    TabOrder = 0
    object Label1: TLabel
      Left = 44
      Top = 25
      Width = 54
      Height = 13
      Caption = 'DB SERVER'
    end
    object Label2: TLabel
      Left = 48
      Top = 47
      Width = 42
      Height = 13
      Caption = 'DB USER'
    end
    object Label3: TLabel
      Left = 48
      Top = 69
      Width = 73
      Height = 13
      Caption = 'DB PASSWORD'
    end
    object Label4: TLabel
      Left = 284
      Top = 25
      Width = 87
      Height = 13
      Caption = 'Application Server'
    end
    object edDbServerHost: TEdit
      Left = 131
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 131
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edDbServerPassword: TEdit
      Left = 131
      Top = 66
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edDbServerPort: TEdit
      Left = 344
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 145
    Width = 492
    Height = 144
    Align = alTop
    Caption = 'App Client Configuration'
    TabOrder = 1
    ExplicitTop = 137
    ExplicitWidth = 663
    object Label5: TLabel
      Left = 44
      Top = 25
      Width = 87
      Height = 13
      Caption = 'Application Server'
    end
    object Label6: TLabel
      Left = 44
      Top = 49
      Width = 75
      Height = 13
      Caption = 'Application Port'
    end
    object Label7: TLabel
      Left = 44
      Top = 76
      Width = 111
      Height = 13
      Caption = 'Web Server Port (http)'
    end
    object edApplicationServerHost: TEdit
      Left = 169
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edApplicationServerPort: TEdit
      Left = 169
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edWebServerPort: TEdit
      Left = 169
      Top = 71
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object btnSave: TBitBtn
    Left = 328
    Top = 298
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save'
    TabOrder = 2
    ExplicitLeft = 499
    ExplicitTop = 360
  end
  object btnClose: TBitBtn
    Left = 409
    Top = 298
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
    ExplicitLeft = 580
    ExplicitTop = 360
  end
end
