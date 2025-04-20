unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.CheckLst,
  Vcl.ComCtrls, Vcl.Imaging.jpeg, Vcl.DBCtrls, Data.Win.ADODB, Vcl.DBCGrids;

type
  TfrmForma1 = class(TForm)
    Image1: TImage;
    pnlAuto: TPanel;
    lblScelgliAuto: TLabel;
    pnlScegliAuto: TPanel;
    tmrAuto: TTimer;
    DBCtrlGrid1: TDBCtrlGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1IdAuto: TAutoIncField;
    ADOTable1Marca: TWideStringField;
    ADOTable1Modello: TWideStringField;
    ADOTable1Anno: TIntegerField;
    ADOTable1Colore: TWideStringField;
    ADOTable1PrezzoPerOra: TIntegerField;
    ADOTable1Immagine: TWideStringField;
    DBImage1: TDBImage;
    ADOTable1MarcaModello: TWideStringField;
    DBText1: TDBText;
    bitAreaClienti: TBitBtn;
    bitSignUp: TBitBtn;

    procedure tmrAutoTimer(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure DBImage1LoadPicture(Sender: TObject; Picture: TPicture;
      var Loaded: Boolean);
    procedure ADOTable1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure bitAreaClientiClick(Sender: TObject);
    procedure bitSignUpClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmForma1: TfrmForma1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit8;

procedure TfrmForma1.ADOTable1CalcFields(DataSet: TDataSet);
begin
  ADOTable1MarcaModello.AsString := ADOTable1Marca.AsString + ' ' +
    ADOTable1Modello.AsString;
end;

procedure TfrmForma1.bitAreaClientiClick(Sender: TObject);
begin
  try
    screen.Cursor := crHourGlass;
    Form5 := TForm5.Create(Application);
    Form5.Show;
  finally
    screen.Cursor := crDefault;
  end;

end;

procedure TfrmForma1.bitSignUpClick(Sender: TObject);
begin
  try
    screen.Cursor := crHourGlass;
    Form8 := TForm8.Create(Application);
    Form8.Show;
  finally
    screen.Cursor := crDefault;
  end;

end;

procedure TfrmForma1.DBImage1Click(Sender: TObject);
begin
  ShowMessage('Ottimo! Avete scelto un ' + ADOTable1Marca.AsString + ' ' +
    ADOTable1Modello.AsString);
  try
    screen.Cursor := crHourGlass;

    if not Assigned(Form3) then
      Form3 := TForm3.Create(Application);

    if not Assigned(Form6) then
      Form6 := TForm6.Create(Application);

    if Assigned(Form6) and Assigned(Form6.ADOOrdini) then
    begin
      Form3.Marca := ADOTable1Marca.AsString;
      Form3.Modello := ADOTable1Modello.AsString;
      Form3.Ordini := Form6.ADOOrdini;
      Form3.Show;
      Hide;
    end
    else
    begin
      ShowMessage('Error: Form6 or ADOOrdini is not initialized.');
    end;

  finally
    screen.Cursor := crDefault;
  end;
end;

procedure TfrmForma1.DBImage1LoadPicture(Sender: TObject; Picture: TPicture;
  var Loaded: Boolean);
Var
  cFile: String;
begin
  cFile := ExtractFilePath(Application.ExeName) + '\AUTO\' +
    ADOTable1Immagine.AsString;
  if fileExists(cFile) then
  begin
    Picture.LoadFromFile(cFile);
    Loaded := True;
  end
  else
  begin
    Picture := nil;
    Loaded := True;
  end

end;

procedure TfrmForma1.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;

end;

procedure TfrmForma1.tmrAutoTimer(Sender: TObject);
var
  iRightSide, irightBorder: integer;
begin
  iRightSide := Image1.Left + Image1.Width;

  irightBorder := pnlAuto.Width;
  if (iRightSide >= irightBorder) then
  begin
    Image1.Left := 10;
  end
  else
  begin
    Image1.Left := Image1.Left + 20;
  end;
end;

end.
