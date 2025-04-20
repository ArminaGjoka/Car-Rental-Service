object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  OnClose = FormClose
  TextHeight = 15
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 622
    ExplicitHeight = 433
    object lblritiro: TLabel
      Left = 40
      Top = 64
      Width = 123
      Height = 15
      Caption = 'Data e Localit'#224' di ritiro*'
    end
    object lblRiconsegna: TLabel
      Left = 344
      Top = 64
      Width = 156
      Height = 15
      Caption = 'Data e Localit'#224' di riconsegna*'
    end
    object lblPagamento: TLabel
      Left = 344
      Top = 264
      Width = 124
      Height = 15
      Caption = 'Metodo di Pagamento*'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 40
      Top = 105
      Width = 186
      Height = 23
      Date = 45263.000000000000000000
      Time = 0.684908368057222100
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 343
      Top = 105
      Width = 186
      Height = 23
      Date = 45263.000000000000000000
      Time = 0.684908368057222100
      TabOrder = 1
    end
    object bitConferma: TBitBtn
      Left = 256
      Top = 385
      Width = 75
      Height = 25
      Caption = 'Conferma'
      TabOrder = 2
      OnClick = bitConfermaClick
    end
    object chCASH: TCheckBox
      Left = 488
      Top = 264
      Width = 97
      Height = 17
      Caption = 'CASH'
      TabOrder = 3
    end
    object chCredito: TCheckBox
      Left = 488
      Top = 287
      Width = 121
      Height = 17
      Caption = 'Carta di Credito'
      TabOrder = 4
    end
    object pnlDati: TPanel
      Left = 1
      Top = 1
      Width = 626
      Height = 41
      Align = alTop
      Caption = 'Gentilmente compilate tutti i campi obligatori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      ExplicitWidth = 620
    end
    object bitTotImport: TBitBtn
      Left = 40
      Top = 260
      Width = 217
      Height = 25
      Caption = 'Totale Importo'
      TabOrder = 6
      OnClick = bitTotImportClick
    end
    object EditRitiro: TEdit
      Left = 42
      Top = 144
      Width = 184
      Height = 23
      TabOrder = 7
      Text = 'Ritiro'
    end
    object EditRiconsegna: TEdit
      Left = 343
      Top = 144
      Width = 184
      Height = 23
      TabOrder = 8
      Text = 'Riconsegna'
    end
  end
end
