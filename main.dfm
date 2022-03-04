object mainFrm: TmainFrm
  Left = 0
  Top = 0
  Caption = 'mainFrm'
  ClientHeight = 343
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 80
    Top = 123
    Width = 66
    Height = 20
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 85
    Top = 155
    Width = 61
    Height = 20
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object HeaderTitle: TLabel
    Left = 0
    Top = 0
    Width = 457
    Height = 21
    Align = alTop
    Alignment = taCenter
    Caption = 'CONETION PAGE'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ExplicitLeft = 101
    ExplicitTop = 24
    ExplicitWidth = 119
  end
  object Label4: TLabel
    Left = 0
    Top = 44
    Width = 457
    Height = 20
    Align = alTop
    Caption = 'Header size'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 85
  end
  object etUsername: TEdit
    Left = 152
    Top = 120
    Width = 180
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object etPassword: TEdit
    Left = 152
    Top = 152
    Width = 180
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnConnect: TButton
    Left = 198
    Top = 186
    Width = 134
    Height = 32
    Caption = 'Connect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnConnectClick
  end
  object chxSaveMe: TCheckBox
    Left = 152
    Top = 232
    Width = 180
    Height = 25
    Caption = 'Save me for next login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 0
    Top = 21
    Width = 457
    Height = 23
    Align = alTop
    NumbersOnly = True
    TabOrder = 4
    Text = '12'
    OnChange = Edit1Change
    ExplicitLeft = 8
    ExplicitTop = 22
  end
end
