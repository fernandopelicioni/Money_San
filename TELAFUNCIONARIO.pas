unit TELAFUNCIONARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ActnMan, ActnColorMaps, DBTables,
  Buttons, Grids, DBGrids, ExtCtrls, Mask;

type
  TFORMFUNCIONARIO = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    tabelafuncionario: TTable;
    TwilightColorMap1: TTwilightColorMap;
    DataSource1: TDataSource;
    DBComboBox1: TDBComboBox;
    tabelafuncionarioNome: TStringField;
    tabelafuncionarioFuncao: TStringField;
    tabelafuncionarioMatricula: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMFUNCIONARIO: TFORMFUNCIONARIO;

implementation

{$R *.dfm}

procedure TFORMFUNCIONARIO.BitBtn2Click(Sender: TObject);
begin
btsalva.Enabled:=false;
tabelafuncionario.Cancel;
tabelafuncionario.Append;
dbedit1.setfocus;

end;

procedure TFORMFUNCIONARIO.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit2.setfocus;
   end;
end;

procedure TFORMFUNCIONARIO.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBComboBox1.setfocus;
   end;
end;

procedure TFORMFUNCIONARIO.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.Enabled:=true;
   btsalva.setfocus;
   end;
end;

procedure TFORMFUNCIONARIO.btsalvaClick(Sender: TObject);
begin
IF (TABELAFUNCIONARIO.State = DSINSERT) OR (TABELAFUNCIONARIO.State = DSEDIT) THEN
    tabelafuncionario.Post;
BTSALVA.ENABLED:=FALSE;
BITBTN2.SETFOCUS;
end;

procedure TFORMFUNCIONARIO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TABELAFUNCIONARIO.CANCEL;
TABELAFUNCIONARIO.CLOSE;
end;

procedure TFORMFUNCIONARIO.FormShow(Sender: TObject);
begin
tabelafuncionario.Open;
end;

end.
