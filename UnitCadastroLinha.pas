unit UnitCadastroLinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBCtrls, Buttons;

type
  TFormCadastroLinha = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    DtSistema: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroLinha: TFormCadastroLinha;

implementation

uses UnPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormCadastroLinha.BitBtn1Click(Sender: TObject);
begin
With Relatorio.Qrlinhas do
   begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from TB_MonLin A, Tb_MonTipLin B');
          Sql.Add('Where B.Tli_cod = A.Lin_Tipo');
          Sql.Add('And A.Lin_Coligada = '            + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
          if RadioGroup2.ItemIndex = 0 then
                  Sql.Add('And A.Lin_Status = '      + QuotedStr('A'));
          if RadioGroup2.ItemIndex = 1 then
                  Sql.Add('And A.Lin_Status = '      + QuotedStr('I'));
          if DBLookupComboBox1.KeyValue <> null then
                  Sql.Add('And A.Lin_Tipo = '        + DBLookupComboBox1.KeyValue);
          if RadioGroup1.ItemIndex = 0 then
                  Sql.Add('Order By A.Lin_Des')
                  else
                  Sql.Add('Order By A.Lin_Cod');
          Open;
          if Not eof then
               begin
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvLinhas');
                         Relatorio.Projeto.Close;
               end
               else begin
                         ShowMessage('Não existem Dados para geração do relatório');
               end;
   end;

end;

procedure TFormCadastroLinha.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormCadastroLinha.FormActivate(Sender: TObject);
begin
    With Pai.QrTipLin do
          Begin
                Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
          End;

DtSistema.DataSet.Open;
end;

procedure TFormCadastroLinha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtSistema.DataSet.Close;
Action:=cafree;
end;

end.
