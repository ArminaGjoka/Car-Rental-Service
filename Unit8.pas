unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    lblNuovaregistrazione: TLabel;
    lblNome: TLabel;
    lblCognome: TLabel;
    lblEmail: TLabel;
    lblTelefono: TLabel;
    lblIndirizzo: TLabel;
    lblUsername: TLabel;
    lblPassword: TLabel;
    edtNome: TEdit;
    edtCognome: TEdit;
    edtEmail: TEdit;
    edtTelefono: TEdit;
    edtIndirizzo: TEdit;
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnConfermaRegistrazione: TButton;
    procedure btnConfermaRegistrazioneClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm8.btnConfermaRegistrazioneClick(Sender: TObject);
begin

  DataModule2.AdoClienti.Open;
  DataModule2.AdoClienti.Append;

  DataModule2.AdoClienti.FieldByName('Nome').AsString := edtNome.Text;
  DataModule2.AdoClienti.FieldByName('Cognome').AsString := edtCognome.Text;
  DataModule2.AdoClienti.FieldByName('Email').AsString := edtEmail.Text;
  DataModule2.AdoClienti.FieldByName('Telefono').AsString := edtTelefono.Text;
  DataModule2.AdoClienti.FieldByName('Indirizzo').AsString := edtIndirizzo.Text;
  DataModule2.AdoClienti.FieldByName('Username').AsString := edtUsername.Text;
  DataModule2.AdoClienti.FieldByName('Password').AsString := edtPassword.Text;

  DataModule2.AdoClienti.Post;

  ShowMessage('Registrazione Completata');
  Form8.Hide
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

end.
