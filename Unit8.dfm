object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 442
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object lblNuovaregistrazione: TLabel
    Left = 24
    Top = 72
    Width = 239
    Height = 23
    Caption = 'Per favore inserisci tutti i campi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 24
    Top = 113
    Width = 47
    Height = 23
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblCognome: TLabel
    Left = 24
    Top = 142
    Width = 75
    Height = 23
    Caption = 'Cognome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEmail: TLabel
    Left = 24
    Top = 171
    Width = 41
    Height = 23
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblTelefono: TLabel
    Left = 24
    Top = 200
    Width = 64
    Height = 23
    Caption = 'Telefono'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblIndirizzo: TLabel
    Left = 24
    Top = 229
    Width = 65
    Height = 23
    Caption = 'Indirizzo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblUsername: TLabel
    Left = 24
    Top = 258
    Width = 77
    Height = 23
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblPassword: TLabel
    Left = 24
    Top = 287
    Width = 70
    Height = 23
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 41
    Align = alTop
    Caption = 'Nuova Registrazione'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 376
  end
  object edtNome: TEdit
    Left = 142
    Top = 116
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtCognome: TEdit
    Left = 142
    Top = 145
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object edtEmail: TEdit
    Left = 142
    Top = 174
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtTelefono: TEdit
    Left = 142
    Top = 203
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object edtIndirizzo: TEdit
    Left = 142
    Top = 229
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object edtUsername: TEdit
    Left = 142
    Top = 258
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object edtPassword: TEdit
    Left = 142
    Top = 287
    Width = 121
    Height = 23
    TabOrder = 7
  end
  object btnConfermaRegistrazione: TButton
    Left = 100
    Top = 360
    Width = 131
    Height = 25
    Caption = 'Conferma Registrazione'
    TabOrder = 8
    OnClick = btnConfermaRegistrazioneClick
  end
end
