unit TelaAlteraBcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask;

type
  TFormAlteraBcd = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Query1: TQuery;
    Query1NUMBCD: TIntegerField;
    Query1DATABCD: TDateField;
    Query1VEICULOBCD: TIntegerField;
    Query1LINHABCD: TStringField;
    Query1CATRACAINICIAL: TIntegerField;
    Query1CATRACAFINAL: TIntegerField;
    Query1VIAGEM: TStringField;
    Query1PFATUAL: TSmallintField;
    Query1PFANTERIOR: TSmallintField;
    Query1PEATUAL: TSmallintField;
    Query1PEANTERIOR: TSmallintField;
    Query1VTEATUAL: TSmallintField;
    Query1VTEANTERIOR: TSmallintField;
    Query1LIVRE: TSmallintField;
    Query1GRATUITO: TSmallintField;
    Query1VEATUAL: TSmallintField;
    Query1VEANTERIOR: TSmallintField;
    Query1EGRATUITO: TSmallintField;
    Query1PTOTAL: TSmallintField;
    Query1PDINHEIRO: TSmallintField;
    Query1TOTALDINHEIRO: TCurrencyField;
    Query1FUNCIONARIO: TStringField;
    Query1ACERTADOR: TStringField;
    Query1DESCONTO: TSmallintField;
    Query1TIPOLINHA: TStringField;
    Query1IDOSO: TSmallintField;
    DBText1: TDBText;
    Label2: TLabel;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBText2: TDBText;
    Edit2: TEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    EditData: TMaskEdit;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlteraBcd: TFormAlteraBcd;

implementation

{$R *.dfm}

procedure TFormAlteraBcd.SpeedButton3Click(Sender: TObject);
begin
Close;
end;

procedure TFormAlteraBcd.SpeedButton1Click(Sender: TObject);
begin
//Senha := ImputBox();
//if senha = 5458 then
//    begin
//    ShowMessage('Sistema ira alterar os dados');
    with query1 do
        begin
        close;
        Sql.Clear;
        Sql.Add('Select * from Movimento');
        Sql.Add('Where numbcd = ' + QuotedStr(Edit1.text)+';');
        Open;
        If eof then
            begin
            ShowMessage('Não existe este boletim cadastrado!');
            end
            else
            Edit2.Text:=Query1NUMBCD.text;
            EditData.Text:=Query1DATABCD.text;

        End;



//    end;
end;

procedure TFormAlteraBcd.SpeedButton2Click(Sender: TObject);
begin
Query1.edit;
Query1NUMBCD.text:=Edit2.text;
Query1DATABCD.text:=EditData.text;
Query1.Post;


end;

procedure TFormAlteraBcd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
end;

end.
