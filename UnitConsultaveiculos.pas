unit UnitConsultaveiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormConsultaVeiculos = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaVeiculos: TFormConsultaVeiculos;

implementation

uses UnitCadastroVeiculos;

{$R *.dfm}

procedure TFormConsultaVeiculos.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormConsultaVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
