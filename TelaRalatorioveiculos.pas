unit TelaRalatorioveiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ExtCtrls, DB, DBTables;

type
  TFormRelatorioVeiculos = class(TForm)
    Query1: TQuery;
    Query1NUMERO: TIntegerField;
    Query1LACRE: TStringField;
    Query1ULTIMACATRACA: TStringField;
    Query1ULTIMACOLETA: TStringField;
    Query2: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVeiculos: TFormRelatorioVeiculos;

implementation

uses telaconsultabcd, telaentrada;
{$R *.dfm}


end.
