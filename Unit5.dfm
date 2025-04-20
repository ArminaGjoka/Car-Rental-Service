object Form5: TForm5
  Left = 0
  Top = 0
  ActiveControl = EditUsername
  Caption = 'Form5'
  ClientHeight = 431
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 431
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 430
    ExplicitHeight = 422
    object lblUsername: TLabel
      Left = 102
      Top = 167
      Width = 77
      Height = 23
      Caption = 'Username'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPassword: TLabel
      Left = 102
      Top = 238
      Width = 72
      Height = 23
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDatiCliente: TLabel
      Left = 153
      Top = 62
      Width = 138
      Height = 23
      Caption = 'Inserisci i tuoi dati'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnEntra: TButton
      Left = 168
      Top = 336
      Width = 75
      Height = 25
      Caption = 'Entra'
      TabOrder = 2
      OnClick = btnEntraClick
    end
    object EditUsername: TEdit
      Left = 223
      Top = 170
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object EditPassword: TEdit
      Left = 223
      Top = 241
      Width = 121
      Height = 23
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end
