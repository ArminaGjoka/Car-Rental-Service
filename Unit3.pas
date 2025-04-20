unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls
  , Data.DB, Data.Win.ADODB, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    pnl2: TPanel;
    lblritiro: TLabel;
    lblRiconsegna: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    bitConferma: TBitBtn;
    lblPagamento: TLabel;
    chCASH: TCheckBox;
    chCredito: TCheckBox;
    pnlDati: TPanel;
    bitTotImport: TBitBtn;
    EditRitiro: TEdit;
    EditRiconsegna: TEdit;

    procedure bitTotImportClick(Sender: TObject);
    procedure bitConfermaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    FModello: String;
    FMarca: String;
    FDataInizio: TDateTime;
    FOreTotali: Integer;
    FTotaleImporto: Extended;
    FOrdini: TADOTable;
    { Private declarations }
  public
    { Public declarations }
    property Marca: String read FMarca write FMarca;
    property Modello: String read FModello write FModello;
    property DataInizio: TDateTime read FDataInizio write FDataInizio;
    property OreTotali: Integer read FOreTotali write FOreTotali;
    property TotaleImporto: Extended read FTotaleImporto write FTotaleImporto;
    Property Ordini : TADOTable read FOrdini write FOrdini;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit4, Unit2, Unit6;

procedure TForm3.bitConfermaClick(Sender: TObject);
var
  OreTotali: Integer;
  TotaleImporto: Extended;
begin

  try
    screen.Cursor := crHourGlass;

    if chCASH.Checked or chCredito.Checked then
    begin
      form4 := TForm4.Create(Self);
      form4.Show;

      FOrdini.Open;
      FOrdini.Append;
      FOrdini.FieldByName('DataOrdine').AsDateTime := Form3.DataInizio;
      FOrdini.FieldByName('OreTotale').AsInteger := Form3.OreTotali;
      FOrdini.FieldByName('TotalePagato').AsFloat := Form3.TotaleImporto;
      FOrdini.Post;
      ShowMessage('Prenotazione Completata');
      Form6.Show;
      Hide;

    end
    else
      ShowMessage('Per favore scegli un mettodo di pagamento');


  finally
     Form4.Free;
     screen.Cursor := crDefault;

  end;

end;

procedure TForm3.bitTotImportClick(Sender: TObject);
var
  OreTotali: Integer;
  DataInizio, dataFine: TDateTime;
  TotaleImporto, nPrezzoP: Extended;
begin

  TotaleImporto := 1;

  DataInizio := DateTimePicker1.DateTime;
  dataFine := DateTimePicker2.DateTime;
  if DataInizio > dataFine then
  begin
    raise Exception.Create
      ('La data iniziale non puo essere maggiore della data finale');
  end;
  OreTotali := Round(((dataFine - DataInizio) + 1) * 24);
  ShowMessage('Le ore totali sono: ' + IntToStr(OreTotali));

  DataModule2.tblAuto.Open;
  if DataModule2.tblAuto.Locate('Marca;Modello',
    vararrayof([FMarca, FModello]), []) then
  begin
    nPrezzoP := DataModule2.tblAuto.FieldByName('PrezzoPerOra').AsFloat;
    TotaleImporto := OreTotali * nPrezzoP;
    ShowMessage('Il Totale è ' + FormatFloat('#,##0.00€', TotaleImporto) + ' ' +
      #13 + ' *con il prezzo di : ' + FormatFloat('#,##0.00', nPrezzoP) +
      ' Euro/Ora ' + 'per ' + FMarca);
  end
  else
    raise Exception.Create('Modello non trovato');

end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action := caFree;
  // frmForma1.Show;
end;

end.
