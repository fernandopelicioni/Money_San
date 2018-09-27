unit UnitLancaDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask;

type
  TFormLancaDebito = class(TForm)
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditData: TDateTimePicker;
    DBMemo1: TDBMemo;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Editvalor: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure EditvalorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaDebito: TFormLancaDebito;

implementation

uses UnitCadastraOcorrencia;

{$R *.dfm}

procedure TFormLancaDebito.BitBtn3Click(Sender: TObject);
begin
FormCadastraOcorrencias.DtVale.DataSet.FieldByName('vale_data').AsString:=DateToStr(EditData.Date);
FormCadastraOcorrencias.DtVale.DataSet.post;
Close;
end;

procedure TFormLancaDebito.BitBtn4Click(Sender: TObject);
begin
FormCadastraOcorrencias.DtReclamacao.DataSet.Cancel;
Close;
end;

procedure TFormLancaDebito.BitBtn5Click(Sender: TObject);
begin
FormCadastraOcorrencias.DtVale.DataSet.Cancel;
Close;

end;

procedure TFormLancaDebito.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   EditValor.SetFocus;
   end;

end;

procedure TFormLancaDebito.EditvalorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DbMemo1.SetFocus;
   end;

end;

procedure TFormLancaDebito.FormActivate(Sender: TObject);
begin
EditData.date:=StrToDate(dateToStr(Now));
end;

procedure TFormLancaDebito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

end.
