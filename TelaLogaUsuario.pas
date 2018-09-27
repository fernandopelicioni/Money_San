unit TelaLogaUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, DBTables, ExtCtrls, XPMan, ActnMan,
  ActnColorMaps, DBCtrls;

type
  TFormUsuario = class(TForm)
    Bevel1: TBevel;
    TABELAUSUARIO: TTable;
    DataSource1: TDataSource;
    TABELAUSUARIOUsuario: TStringField;
    TABELAUSUARIOSenha: TStringField;
    Editusuario: TMaskEdit;
    EditSenha: TMaskEdit;
    Label1: TLabel;
    Label3: TLabel;
    btcancel: TBitBtn;
    btok: TBitBtn;
    S: TLabel;
    XPManifest1: TXPManifest;
    XPColorMap1: TXPColorMap;
    Label4:      TLabel;
    DBText1: TDBText;
    Query1: TQuery;
    Query1RazaoSocial: TStringField;
    Query1Cnpj: TStringField;                                  

    DataSource2: TDataSource;
    DBText2: TDBText;
    Label2: TLabel;
    Label5: TLabel;
    procedure EditusuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btcancelClick(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuario: TFormUsuario;

implementation

uses telaentrada;

{$R *.dfm}

procedure TFormUsuario.EditusuarioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   Begin
   key:=#0;
   if EditUsuario.text = ' ' then EditUsuario.SetFocus;
   EditSenha.SetFocus;
   end;


end;

procedure TFormUsuario.FormShow(Sender: TObject);
begin
Editusuario.text:=' ';
end;

procedure TFormUsuario.EditSenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   Begin
   key :=#0;
   If EditSenha.text = ' ' then EditSenha.SetFocus;
   BtOk.Enabled:=true;
   btok.setfocus;
   end;
end;

procedure TFormUsuario.btcancelClick(Sender: TObject);
begin
Close;
end;

procedure TFormUsuario.btokClick(Sender: TObject);
begin
with tabelaUsuario do
     begin
     close;
     filter:='USUARIO = ' + S.CAPTION + EDITUSUARIO.TEXT + S.CAPTION;
     FILTERED:=TRUE;
     OPEN;
     END;
IF EditUsuario.Text = TABELAUSUARIOUsuario.Text then
     Begin
     if EditSenha.Text = TABELAUSUARIOSenha.text Then
         Begin
         Formusuario.Visible:=false;
         Application.CreateForm(TFormEntrada, FormEntrada);
//         FormEntrada.Create;
         end
         Else Begin
         MessageBox(handle,'Senha Incorreta !','Senha....', MB_ICONINFORMATION + MB_OK);
         EditSenha.SetFocus;
         end;
     End
     Else begin
     MessageBox(handle,'Usuário não Cadastrado !','Problema encontrado', MB_ICONINFORMATION + MB_OK);
     EditUsuario.Setfocus;
     end;
end;

procedure TFormUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFREE;
end;

procedure TFormUsuario.FormActivate(Sender: TObject);
begin
query1.open;
end;

end.
