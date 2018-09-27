unit TelaRelatorioMontado2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables;

type
  TFormRelatorioMontado2 = class(TForm)
    Query2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMontado2: TFormRelatorioMontado2;

implementation

uses TelaDadosRelatorio, telaentrada;

{$R *.dfm}


procedure TFormRelatorioMontado2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

End.
