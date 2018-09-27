unit UnitGrafico2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, ExtCtrls, TeeProcs, Chart, DBChart, Series;

type
  TFormGrafico2 = class(TForm)
    DBChart1: TDBChart;
    QrTotais: TADOQuery;
    DataSource1: TDataSource;
    Series1: TLineSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrafico2: TFormGrafico2;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormGrafico2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
QrTotais.Close;
action:=cafree;
end;

end.
