unit UnitConsultaBcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, pngimage,
  ADODB, DBCtrls, RpDefine, RpCon, RpConDS;

type
  TFormConsultaBcd = class(TForm)
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DtMov: TDataSource;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Edit1: TEdit;
    Apagar: TADOQuery;
    DtAce: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    Memo1: TMemo;
    SpeedButton3: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaBcd: TFormConsultaBcd;

implementation

uses UnPai, telaentrada, UnitRelatorio, UnitIniciaSistema,
  UnitAlteraDataBoletim;

{$R *.dfm}

procedure TFormConsultaBcd.BitBtn1Click(Sender: TObject);
begin
             with Relatorio.QrConsultaBcd do
                   Begin
                         Close;
                         Sql.Clear;
//                         Sql.Add('Set language brazilian');
                         Sql.Add('select A.*, B.Nom_Pro, b.Cha_pro, D.Ace_Des from tb_monMov A, Tb_Profissionais B, Tb_MonAce D');
                         Sql.Add('where Bcd_Coligada = ' + QuotedStr(pai.QrColigadas.FieldByName('cod_coligada').AsString));
                         Sql.Add('and b.cod_pro = a.bcd_responsavel');
                         Sql.Add('And D.Ace_Cod = A.Bcd_Acertador');
                         if ComboBox1.ItemIndex = 5 then
                                   Sql.Add('and Bcd_Num = ' + QuotedStr(Edit1.Text))
                                   else
                                   Sql.Add('And Bcd_Data = ' +  QuotedStr(DateToStr(DateTimePicker1.Date)));
                            if ComboBox1.ItemIndex = 1 then
                             Sql.Add('and Bcd_acertador = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                              if ComboBox1.ItemIndex = 2 then
                               Sql.Add('and Bcd_Vei = ' + QuotedStr(Edit1.Text));
                                if ComboBox1.ItemIndex = 3 then
                                 Sql.Add('and Bcd_Lin = ' + QuotedStr(Edit1.Text));
                                  if ComboBox1.ItemIndex = 4 then
                                   Sql.Add('and Bcd_responsavel = ' + QuotedStr(Edit1.Text));
                                    Sql.Add('Order by bcd_num');
                                     memo1.Text:=sql.Text;
                                     open;
                                     if eof then
                                          begin
                                              ShowMessage('Não existem dados para esta consulta, especifique melhor');
                                          end;
                   End;
end;

procedure TFormConsultaBcd.FormActivate(Sender: TObject);
begin
DtAce.DataSet.Open;
DateTimePicker1.Date:=now;
end;

procedure TFormConsultaBcd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtMov.DataSet.Close;
action:=cafree;
end;

procedure TFormConsultaBcd.SpeedButton1Click(Sender: TObject);
var
bcd:string;
begin
if DtMov.DataSet.Active = true then
    begin
//           MessageBox(handle,'Apagar um boletim pode alterar os valores de prestação de conta e gerar sérios problemas'+#13+'Se tiver consciencia do que esta fazendo fique ciente que será necessária alterar a catraca inicial do sistema antes de lançar novamente'+#13+'Serão registras a data, hora e usuário responsável pela exclusão','Aviso Importante',mb_iconInformation+mb_ok);
           if messageDlg('Tem certeza de que é isso mesmo que quer fazer?', mtconfirmation,[mbyes,mbno],0) = mryes then
              begin
                        bcd:=DtMov.DataSet.FieldByName('Bcd_Num').AsString;
                        // Apaga conferencia ao Bcd Selecionado
                        With Apagar do
                              Begin
                                   Close;
                                   Sql.Clear;
                                   Sql.Add('Delete tb_MonConferencia where Mcf_Bcd = ' + QuotedStr(Bcd));
                                   ExecSQL;
                              End;
                        // apaga o Debito do Bcd selecionado
                        With Apagar do
                              Begin
                                   Close;
                                   Sql.Clear;
                                   Sql.Add('Delete tb_MonDebito where Mdf_Bcd = ' + QuotedStr(Bcd));
                                   ExecSQL;
                              End;
                         // Apaga o Bcd Selecionado
                        With Apagar do
                              Begin
                                   Close;
                                   Sql.Clear;
                                   Sql.Add('Delete tb_MonMov where Bcd_num = ' + QuotedStr(Bcd));
                                   ExecSQL;
                              End;

                         // Altera o status do Bcd permitindo ser lancado
                        With Apagar do
                              Begin
                                   Close;
                                   Sql.Clear;
                                   Sql.Add('Update tb_MonBcd set TBcd_Status = '+ QuotedStr('E') + ', TBcd_DHEX = ' + QuotedStr(DateTimeToStr(Now)) + ', Tbcd_Ace = ' + QuotedStr(Pai.QrUsuarios.FieldByName('Ace_Cod').AsString));
                                   Sql.Add('where TBcd_cod = ' + QuotedStr(Bcd));
                                   ExecSQL;
                              End;


                    //DtMov.DataSet.Delete;
              end;
    end;
    DtMov.DataSet.Close;
    DateTimePicker1.SetFocus;
end;

procedure TFormConsultaBcd.SpeedButton2Click(Sender: TObject);
begin

                             Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                             Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                             Relatorio.Projeto.SetParam('Titulo',
                             'Filtro : Data = ' + DateToStr(DateTimePicker1.Date) + ' e ' + ComboBox1.Text + ' = ' + Edit1.Text + DBLookupComboBox1.Text);

                             Relatorio.Projeto.ExecuteReport('RvConsultaBoletins');

end;

procedure TFormConsultaBcd.SpeedButton3Click(Sender: TObject);
begin
          if not DtMov.DataSet.eof then
               Begin
                     Application.CreateForm(TFormAlteraDataBoletim,FormAlteraDataBoletim);
                     FormAlteraDataBoletim.showmodal;
               End;

end;

end.
