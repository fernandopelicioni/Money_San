unit UnitRelatorioBoletimGerado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TFormRelatorioBoletimGerado = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBoletimGerado: TFormRelatorioBoletimGerado;

implementation

uses UnitRelatorio, UnPai, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioBoletimGerado.BitBtn1Click(Sender: TObject);
begin
     With Relatorio.QrBcdGerado do
           begin
                 Close;
                  Sql.Clear;
                   Sql.Add('Set Language brazilian');
                    Sql.Add('Select * from tb_MonBcd A, Tb_MonMotCanbcd B');
                     Sql.Add('WHERE Tbcd_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                      Sql.Add('And B.Mcb_cod = A.Tbcd_Status');
                       Sql.Add('and Tbcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + 'and Tbcd_data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                        if RadioGroup1.ItemIndex = 0 then Sql.Add('And Tbcd_Status = ' + QuotedStr('F'));
                        if RadioGroup1.ItemIndex = 1 then Sql.Add('And Tbcd_Status = ' + QuotedStr('A'));
                         Open;
                          if Not eof then
                                 begin
                                      Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('RvBoletimGerado');
                                        Relatorio.Projeto.Close;
                                 end
                                 else
                                 begin
                                      ShowMessage('Não existem Dados para geração do relatório');
                                 end;

           end;
end;

procedure TFormRelatorioBoletimGerado.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormRelatorioBoletimGerado.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
end;

procedure TFormRelatorioBoletimGerado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
