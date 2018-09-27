unit UnitGrafico1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, ADODB;

type
  TFormGrafico1 = class(TForm)
    DtResumoDiario: TDataSource;
    QrMedia: TADOQuery;
    DBChart1: TDBChart;
    Series1: TFastLineSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrafico1: TFormGrafico1;

implementation

uses UnitRelatorio, UnPai;

{$R *.dfm}

procedure TFormGrafico1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
