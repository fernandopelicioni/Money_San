unit UnirRelatorioBuscaTalao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TFormRelatorioBuscaTalao = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBuscaTalao: TFormRelatorioBuscaTalao;

implementation

uses UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioBuscaTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
relatorio.QrTalao.Close;
Action:=cafree;
end;

procedure TFormRelatorioBuscaTalao.SpeedButton1Click(Sender: TObject);
begin
                    With Relatorio.QrTalao do
                         Begin
                               Close;
                               Sql.clear;
                               Sql.Add('select a.*, B.Nom_pro,B.Cha_pro from tb_monTaloes A');
                               Sql.Add('Left Join Tb_Profissionais B On B.Cod_pro = A.TTl_Resp');
                               if RadioGroup1.ItemIndex = 0 then
                                    Sql.Add('where TTl_Status = ' + QuotedStr('A'));
                               if RadioGroup1.ItemIndex = 1 then
                                    Sql.Add('where TTl_Status = ' + QuotedStr('F'));
                               if RadioGroup1.ItemIndex = 2 then
                                    Sql.Add('where TTl_Status <> ' + QuotedStr('X'));
                               if ComboBox1.ItemIndex = 0 then
                                           Sql.Add('And TTl_Cod = ' + QuotedStr(Edit1.Text));
                               if ComboBox1.ItemIndex = 1 then
                                           Sql.Add('and TTl_Resp = ' + QuotedStr(Edit1.Text));
                               if ComboBox1.ItemIndex = 2 then
                                           Sql.Add('and TTl_Data = ' + QuotedStr(Edit1.Text));
                               MEMO1.TEXT:=SQL.Text;
                               open;
                               if not eof then
                                     begin
                                          Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                          Relatorio.Projeto.ExecuteReport('RvTaloes');
                                          Relatorio.Projeto.Close;
                                     end
                                     else
                                     MessageBox(0, 'Não há resultados para a pesquisa, tente com outras informações!', 'Não Encontrado', MB_ICONINFORMATION or MB_OK);

               end;

end;

procedure TFormRelatorioBuscaTalao.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
