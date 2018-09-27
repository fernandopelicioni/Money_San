unit TelaRelatorioMontado1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, XPMan, ExtCtrls, ActnColorMaps,
  ActnMan;

type
  TFormRelatorioMontado1 = class(TForm)
    XPManifest1: TXPManifest;
    Query1: TQuery;
    Query1Matricula: TStringField;
    Query1Nome: TStringField;
    Query1Funcao: TStringField;
    XPColorMap1: TXPColorMap;
    TwilightColorMap1: TTwilightColorMap;
    Query2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMontado1: TFormRelatorioMontado1;

implementation

uses telaentrada;

{$R *.dfm}



procedure TFormRelatorioMontado1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
