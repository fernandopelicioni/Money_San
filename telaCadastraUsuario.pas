unit telaCadastraUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, DBTables, Buttons;

type
  TFormCadastraUsuario = class(TForm)
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    TabelaUsuario: TTable;
    TabelaUsuarioUsuario: TStringField;
    TabelaUsuarioSenha: TStringField;
    Editusuario: TMaskEdit;
    EditSenha: TMaskEdit;
    EditConfirmaSenha: TMaskEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    btok: TBitBtn;
    btnovo: TBitBtn;
    btcancela: TBitBtn;
    procedure EditusuarioKeyPress(Sender: TObject; var Key: Char);
    procedure btnovoClick(Sender: TObject);
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EditConfirmaSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btokClick(Sender: TObject);
    procedure btcancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraUsuario: TFormCadastraUsuario;

implementation

{$R *.dfm}

procedure TFormCadastraUsuario.EditusuarioKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
    Begin
    If EditUsuario.Text <> ' ' then EditSenha.SetFocus;
    end;
end;

procedure TFormCadastraUsuario.btnovoClick(Sender: TObject);
begin
tabelaUsuario.Open;
tabelaUsuario.append;
EditUsuario.SetFocus;
end;

procedure TFormCadastraUsuario.EditSenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
    Begin
    If EditSenha.Text = ' ' then
       Begin
       MessageBox(handle,'É preciso Digitar uma senha !','Que que Foi !?', MB_OK + MB_OK);
       EditSenha.SetFocus;
       End;
    EditConfirmaSenha.SetFocus;
    End;


end;

procedure TFormCadastraUsuario.EditConfirmaSenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
    Begin
    BtOk.Enabled:=true;
    BtOk.setFocus;
    end;
    end;

procedure TFormCadastraUsuario.btokClick(Sender: TObject);
begin
If EditConfirmaSenha.Text <> EditSenha.Text then
       Begin
       MessageBox(handle,'Senha não confere !','Que que Foi !?', MB_OK + MB_OK);
       EditSenha.SetFocus;
       End;
If EditConfirmaSenha.Text = EditSenha.Text then
       Begin
       if messagedlg('Deseja Salvar este Novo Usuário ?',mtConfirmation,[mbno, mbyes],0)
       =mryes then begin
       TabelaUsuarioUsuario.Text:=EditUsuario.Text;
       TabelaUsuarioSenha.Text:=EditSenha.Text;
       TabelaUsuario.Post;
       End;
Close;
End;
end;

procedure TFormCadastraUsuario.btcancelaClick(Sender: TObject);
begin
Close;
end;

procedure TFormCadastraUsuario.FormShow(Sender: TObject);
begin
TabelaUsuario.Open;
end;

procedure TFormCadastraUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
tabelausuario.close;
end;

end.
