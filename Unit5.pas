unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TForm5 = class(TForm)
    lblUsername: TLabel;
    Panel1: TPanel;
    lblPassword: TLabel;
    lblDatiCliente: TLabel;
    btnEntra: TButton;
    EditUsername: TEdit;
    EditPassword: TEdit;

    procedure btnEntraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FPassword: String;
    FUsername: String;

    { Private declarations }
  public
    property Username: String read FUsername write FUsername;
    property Password: String read FPassword write FPassword;
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit6, Unit7, Unit2;

procedure TForm5.btnEntraClick(Sender: TObject);
var
  UsernameDB: string;
  PasswordDB: string;
begin

  try
    screen.Cursor := crHourGlass;

    FUsername := EditUsername.Text;
    FPassword := EditPassword.Text;

    DataModule2.ADOClienti.Open;

    if DataModule2.ADOClienti.Locate('Username;Password',
      vararrayof([FUsername, FPassword]), []) then

    begin
      ShowMessage('Benvenuto' + ' ' + DataModule2.ADOClienti.FieldByName
          ('Nome').AsString);
        Form6 := TForm6.Create(Application);
        Form6.IDCliente := DataModule2.ADOClienti.FieldByName('IdClienti').AsInteger;
        Form6.Show
    end
    else
      raise Exception.Create('Credenziali non valide');
    Hide;
  finally
    screen.Cursor := crDefault;
  end;

end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
