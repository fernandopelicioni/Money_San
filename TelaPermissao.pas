unit TelaPermissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, Buttons, Mask, XPMan, ActnMan,
  ActnColorMaps;

type
  TFormPermissao = class(TForm)
    TABELAPERMISSAO: TTable;
    DTPERMISSAO: TDataSource;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    btsalva: TBitBtn;
    TABELAPERMISSAOPFATU: TBooleanField;
    TABELAPERMISSAOPFANT: TBooleanField;
    TABELAPERMISSAOPEATU: TBooleanField;
    TABELAPERMISSAOPEANT: TBooleanField;
    TABELAPERMISSAOVTATU: TBooleanField;
    TABELAPERMISSAOVTANT: TBooleanField;
    TABELAPERMISSAOLIVRE: TBooleanField;
    TABELAPERMISSAOGRATZ: TBooleanField;
    TABELAPERMISSAOVEATU: TBooleanField;
    TABELAPERMISSAOVEANT: TBooleanField;
    TABELAPERMISSAOESTGR: TBooleanField;
    TABELAPERMISSAOCAINI: TBooleanField;
    TABELAPERMISSAOLIQIN: TBooleanField;
    TABELAPERMISSAOLIQDE: TBooleanField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    TABELAPERMISSAOCODIGOEMPRESA: TStringField;
    TABELAPERMISSAOLETRABCD: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    TABELAPERMISSAORAZAOSOCIAL: TStringField;
    TABELAPERMISSAOCGC: TStringField;
    DBCheckBox15: TDBCheckBox;
    TABELAPERMISSAOIDOSO: TBooleanField;
    TABELAPERMISSAOSISTEMA: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit5: TDBEdit;
    DBCheckBox16: TDBCheckBox;
    TABELAPERMISSAOViagem: TBooleanField;
    StandardColorMap1: TStandardColorMap;
    XPManifest1: TXPManifest;
    procedure btsalvaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPermissao: TFormPermissao;

implementation

{$R *.dfm}

procedure TFormPermissao.btsalvaClick(Sender: TObject);
begin
TabelaPermissao.Post;
close;
end;

procedure TFormPermissao.FormShow(Sender: TObject);
begin
tabelapermissao.First;
TabelaPermissao.edit;
end;

procedure TFormPermissao.BitBtn2Click(Sender: TObject);
begin
TABELAPERMISSAO.Prior;
end;

procedure TFormPermissao.BitBtn1Click(Sender: TObject);
begin
TABELAPERMISSAO.next;

end;

end.
