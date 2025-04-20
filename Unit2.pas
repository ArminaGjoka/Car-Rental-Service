unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    tblAuto: TADOTable;
    dsAuto: TDataSource;
    tblAutoIdAuto: TAutoIncField;
    tblAutoMarca: TWideStringField;
    tblAutoModello: TWideStringField;
    tblAutoAnno: TIntegerField;
    tblAutoColore: TWideStringField;
    tblAutoPrezzoPerOra: TIntegerField;
    ADOClienti: TADOTable;
    dsClienti: TDataSource;
    ADOClientiIdClienti: TAutoIncField;
    ADOClientiNome: TWideStringField;
    ADOClientiCognome: TWideStringField;
    ADOClientiEmail: TWideStringField;
    ADOClientiTelefono: TWideStringField;
    ADOClientiIndirizzo: TWideStringField;
    ADOClientiUsername: TWideStringField;
    ADOClientiPassword: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
  Uses Forms;

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
   ADOConnection1.Close;
   ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.ExeName)+'AutoDB.mdb;Mode=ReadWrite;Persist Security Info=False;';
   ADOConnection1.Connected := True;
end;

end.
