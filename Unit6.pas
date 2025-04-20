unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    btnPrenotazioni: TButton;
    DBGrid1: TDBGrid;
    ADOClienti: TADOTable;
    dsClienti: TDataSource;
    DBGrid2: TDBGrid;
    ADOOrdini: TADOTable;
    dsOrdini: TDataSource;
    ADOClientiIdClienti: TAutoIncField;
    ADOClientiNome: TWideStringField;
    ADOClientiCognome: TWideStringField;
    ADOClientiEmail: TWideStringField;
    ADOClientiTelefono: TWideStringField;
    ADOClientiIndirizzo: TWideStringField;
    ADOClientiUsername: TWideStringField;
    ADOClientiPassword: TWideStringField;
    btnNuovaPrenotazione: TButton;
    ADOOrdiniIdOrdini: TAutoIncField;
    ADOOrdiniDataOrdine: TDateTimeField;
    ADOOrdiniOreTotale: TIntegerField;
    ADOOrdiniTotalePagato: TIntegerField;
    ADOOrdiniFClienti: TIntegerField;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid3: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNuovaPrenotazioneClick(Sender: TObject);

  private
    FIDCliente: Integer;
    procedure setIDCliente(const Value: Integer);

    { Private declarations }
  public
    { Public declarations }
    Property IDCliente : Integer read FIDCliente write setIDCliente;

  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit5, Unit2, Unit3, Unit1, Unit4, Unit8;

procedure TForm6.btnNuovaPrenotazioneClick(Sender: TObject);

begin

  //frmForma1 := TfrmForma1.Create(Application);
  frmForma1.Show;
  frmForma1.bitAreaClienti.Hide;
  frmForma1.bitSignUp.Hide;
  Hide;

  // if assigned(Form5) then

  // if DataModule2.ADOClienti.Locate('Username;Password',    ----Per trovare il cliente-----
  // vararrayof([Username, Password]), []) then


end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm6.setIDCliente(const Value: Integer);
begin
  FIDCliente := Value;
  ADOClienti.Open;
  ADOClienti.Locate('IdClienti',FIDCliente,[]);
  ADOOrdini.Open;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'select * from ordini where FClienti = '+formatFloat('0',FIDCliente);
  AdoQuery1.Open;
end;

end.
