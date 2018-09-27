unit UnitLancamentoUltimasCatracas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TFormLancamentoUltimasCatracas = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancamentoUltimasCatracas: TFormLancamentoUltimasCatracas;

implementation

uses UnitLancamentoBSE;

{$R *.dfm}

procedure TFormLancamentoUltimasCatracas.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormLancamentoUltimasCatracas.FormActivate(Sender: TObject);
begin
FormLancamentoBSE.QrCatracas.Open;
end;

procedure TFormLancamentoUltimasCatracas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FormLancamentoBSE.QrCatracas.Close;
Action:=Cafree;
end;

end.
