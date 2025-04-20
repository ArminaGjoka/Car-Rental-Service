object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 690
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object btnPrenotazioni: TButton
    Left = 24
    Top = 24
    Width = 115
    Height = 25
    Caption = 'Le mie Prenotazioni'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 184
    Width = 664
    Height = 153
    DataSource = dsClienti
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdClienti'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cognome'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Indirizzo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Username'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Password'
        Width = 100
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 72
    Width = 664
    Height = 89
    DataSource = dsOrdini
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdOrdini'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataOrdine'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OreTotale'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalePagato'
        Visible = True
      end>
  end
  object btnNuovaPrenotazione: TButton
    Left = 160
    Top = 24
    Width = 129
    Height = 25
    Caption = 'Nuova Prenotazione'
    TabOrder = 3
    OnClick = btnNuovaPrenotazioneClick
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 408
    Width = 664
    Height = 89
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdOrdini'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataOrdine'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OreTotale'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalePagato'
        Visible = True
      end>
  end
  object ADOClienti: TADOTable
    Connection = DataModule2.ADOConnection1
    CursorType = ctStatic
    TableName = 'Clienti'
    Left = 752
    Top = 232
    object ADOClientiIdClienti: TAutoIncField
      FieldName = 'IdClienti'
      ReadOnly = True
    end
    object ADOClientiNome: TWideStringField
      FieldName = 'Nome'
      Size = 255
    end
    object ADOClientiCognome: TWideStringField
      FieldName = 'Cognome'
      Size = 255
    end
    object ADOClientiEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object ADOClientiTelefono: TWideStringField
      FieldName = 'Telefono'
      Size = 255
    end
    object ADOClientiIndirizzo: TWideStringField
      FieldName = 'Indirizzo'
      Size = 255
    end
    object ADOClientiUsername: TWideStringField
      FieldName = 'Username'
      Size = 255
    end
    object ADOClientiPassword: TWideStringField
      FieldName = 'Password'
      Size = 255
    end
  end
  object dsClienti: TDataSource
    DataSet = ADOClienti
    Left = 816
    Top = 232
  end
  object ADOOrdini: TADOTable
    Connection = DataModule2.ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'FClienti'
    MasterFields = 'IdClienti'
    MasterSource = dsClienti
    TableName = 'Ordini'
    Left = 760
    Top = 136
    object ADOOrdiniIdOrdini: TAutoIncField
      FieldName = 'IdOrdini'
      ReadOnly = True
    end
    object ADOOrdiniDataOrdine: TDateTimeField
      FieldName = 'DataOrdine'
    end
    object ADOOrdiniOreTotale: TIntegerField
      FieldName = 'OreTotale'
    end
    object ADOOrdiniTotalePagato: TIntegerField
      FieldName = 'TotalePagato'
    end
    object ADOOrdiniFClienti: TIntegerField
      FieldName = 'FClienti'
    end
  end
  object dsOrdini: TDataSource
    DataSet = ADOOrdini
    Left = 816
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 784
    Top = 456
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule2.ADOConnection1
    Parameters = <>
    Left = 720
    Top = 456
  end
end
