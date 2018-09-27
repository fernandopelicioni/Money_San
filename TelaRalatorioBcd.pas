unit TelaRalatorioBcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables;

type
  TFormRelatorioBcd = class(TForm)
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBcd: TFormRelatorioBcd;

implementation

uses telaconsultabcd;
{$R *.dfm}

procedure TFormRelatorioBcd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FormConsultaMovimento.close;
end;

end.
