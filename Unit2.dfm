object DataModule2: TDataModule2
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=AutoD' +
      'B.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:Syste' +
      'm database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pass' +
      'word="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=' +
      '1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tran' +
      'sactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create S' +
      'ystem Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:' +
      'Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Rep' +
      'lica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 560
    Top = 320
  end
  object tblAuto: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Auto'
    Left = 656
    Top = 320
    object tblAutoIdAuto: TAutoIncField
      FieldName = 'IdAuto'
      ReadOnly = True
    end
    object tblAutoMarca: TWideStringField
      FieldName = 'Marca'
      Size = 255
    end
    object tblAutoModello: TWideStringField
      FieldName = 'Modello'
      Size = 255
    end
    object tblAutoAnno: TIntegerField
      FieldName = 'Anno'
    end
    object tblAutoColore: TWideStringField
      FieldName = 'Colore'
      Size = 255
    end
    object tblAutoPrezzoPerOra: TIntegerField
      FieldName = 'PrezzoPerOra'
    end
  end
  object dsAuto: TDataSource
    DataSet = tblAuto
    Left = 704
    Top = 320
  end
  object ADOClienti: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Clienti'
    Left = 736
    Top = 224
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
    Left = 808
    Top = 224
  end
end
