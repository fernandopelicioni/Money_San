unit telaemrpesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls, DBTables, ExtCtrls, XPMan;

type
  TformEmpresa = class(TForm)
    Panel1: TPanel;
    Table1: TTable;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DataSource1: TDataSource;
    Table1Codigo: TAutoIncField;
    Table1RazaoSocial: TStringField;
    Table1Cnpj: TStringField;
    Table1Telefone: TStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    XPManifest1: TXPManifest;
    procedure btsalvaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEmpresa: TformEmpresa;

implementation

{$R *.dfm}

procedure TformEmpresa.btsalvaClick(Sender: TObject);
begin
table1.Post;
end;

procedure TformEmpresa.FormActivate(Sender: TObject);
begin
table1.Edit;
end;

procedure TformEmpresa.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
