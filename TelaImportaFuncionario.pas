unit TelaImportaFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, XPMan, DB, DBTables;

type
  TFormImportaFuncionario = class(TForm)
    XPManifest1: TXPManifest;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Database1: TDatabase;
    Table1: TTable;
    Table1Matricula: TStringField;
    Table1Nome: TStringField;
    Table1Funcao: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure OpenDialog1SelectionChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaFuncionario: TFormImportaFuncionario;

implementation

{$R *.dfm}

procedure TFormImportaFuncionario.BitBtn1Click(Sender: TObject);
begin
OpenDialog1.Execute;
end;

procedure TFormImportaFuncionario.OpenDialog1SelectionChange(
  Sender: TObject);
begin
Edit1.text:=OpenDialog1.FileName;
end;

procedure TFormImportaFuncionario.BitBtn2Click(Sender: TObject);
var
ArquivoTexto : TextFile;
LinhaArquivo : String;
begin
AssignFile(ArquivoTexto, Edit1.text);
Reset(ArquivoTexto);
ReadLn(ArquivoTexto, LinhaArquivo);
While LinhaArquivo <> '' do
   begin
   table1.Insert;
   Table1Matricula.text:= Copy(LinhaArquivo,1,4) ;
   Table1Nome.text     := Copy(LinhaArquivo,6,49);
   Table1Funcao.text   := 'COBRADOR';
   Table1.Post;
   ReadLn(ArquivoTexto, LinhaArquivo);

   end;

end;

end.
