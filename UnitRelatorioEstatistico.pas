unit UnitRelatorioEstatistico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TFormRelatorioEstatistico = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DtAcertador: TDataSource;
    DtSistema: TDataSource;
    DtCobrador: TDataSource;
    DtLinha: TDataSource;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label7: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Ordem1: TRadioGroup;
    Ordem2: TRadioGroup;
    Ordem3: TRadioGroup;
    TabSheet4: TTabSheet;
    SpeedButton11: TSpeedButton;
    RadioGroup1: TRadioGroup;
    SpeedButton10: TSpeedButton;
    DBLookupComboBox5: TDBLookupComboBox;
    Label1: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioEstatistico: TFormRelatorioEstatistico;

implementation

uses UnPai, UnitRelatorio, UnitGrafico1, UnitIniciaSistema, telaentrada;

{$R *.dfm}

procedure TFormRelatorioEstatistico.ComboBox1Click(Sender: TObject);
begin
DBLookupComboBox2.Enabled:=false;
DBLookupComboBox3.Enabled:=false;
DBLookupComboBox4.Enabled:=false;
//if combobox1.ItemIndex = 0 then DBLookupComboBox2.Enabled:=true;
//if combobox1.ItemIndex = 1 then DBLookupComboBox4.Enabled:=true;
//if combobox1.ItemIndex = 2 then DBLookupComboBox3.Enabled:=true;

end;

procedure TFormRelatorioEstatistico.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now-10;
DateTimePicker2.Date:=now;
DtAcertador.DataSet.Open;
DtSistema.DataSet.Open;
DtCobrador.DataSet.Open;
DtLinha.DataSet.Open;
end;

procedure TFormRelatorioEstatistico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtAcertador.DataSet.Close;
DtSistema.DataSet.Close;
DtCobrador.DataSet.Close;
DtLinha.DataSet.Close;
Action:=cafree;
end;

procedure TFormRelatorioEstatistico.SpeedButton10Click(Sender: TObject);
begin
       Application.CreateForm(TFormGrafico1,FormGrafico1);
       With FormGrafico1.QrMedia do
             begin
                   Close;
                   Sql.Clear;
                   Sql.Add('select (B.Bcd_Data) as Data,');
                   If RadioGroup1.ItemIndex = 1 then Sql.Add('(B.bcd_peatu + B.bcd_peant) as Escolar');
                   If RadioGroup1.ItemIndex = 0 then Sql.Add('sum(B.bcd_vteatu + B.bcd_vteant) as VT');
                   If RadioGroup1.ItemIndex = 4 then Sql.Add('sum(B.bcd_livre) as livre');
                   If RadioGroup1.ItemIndex = 2 then Sql.Add('sum(B.bcd_liquido) as Liquido');
                   If RadioGroup1.ItemIndex = 3 then Sql.Add('sum(B.bcd_Total) as Total');
                   Sql.Add('from Tb_MonMov B');
                   Sql.Add('Where B.Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.Bcd_Data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                   Sql.Add('And B.Bcd_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                   if DBLookupComboBox1.KeyValue <> null then Sql.Add('And A.Lin_Tipo = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                   if DBLookupComboBox2.KeyValue <> null then Sql.Add('And A.Lin_Cod = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                   if DBLookupComboBox3.KeyValue <> null then Sql.Add('And B.Bcd_Responsavel = ' + QuotedStr(DBLookupComboBox3.KeyValue));
                   if DBLookupComboBox4.KeyValue <> null then Sql.Add('And B.Bcd_Acertador = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                   Sql.Add('group by (B.Bcd_Data)');
                   formentrada.memo1.text:=sql.Text;
                   Open;
                   if not eof then
                         begin
                                  FormGrafico1.ShowModal;
                         end;
             end;

end;

procedure TFormRelatorioEstatistico.SpeedButton1Click(Sender: TObject);
begin
Screen.Cursor:=crhourglass;

       With Relatorio.QrMediaPas do
             begin
                   Close;
                   Sql.Clear;
                   Sql.Add('select a.Lin_cod,A.Lin_des,');
                   Sql.Add('sum(B.bcd_total) as total,');
                   Sql.Add('sum((cast(B.bcd_peatu as float) + B.bcd_peant)* 100) / (sum(B.bcd_total)) as Escolar,');
                   Sql.Add('sum((cast(B.bcd_vteatu + B.bcd_vteant as float))* 100) /(sum(B.bcd_total)) as VT,');
                   Sql.Add('sum((cast(B.bcd_livre as float))* 100) /(sum(B.bcd_total)) as livre,');
                   Sql.Add('sum((cast(B.bcd_liquido as float))* 100) /(sum(B.bcd_total)) as Liquido,');
                   Sql.Add('sum((cast(B.bcd_desconto as float))* 100) /(sum(B.bcd_total)) as Desconto');
                   Sql.Add('from Tb_MonLin A, Tb_MonMov B');
                   Sql.Add('Where B.Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.Bcd_Data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                   Sql.Add('and Bcd_lin = Lin_Cod');
                   Sql.Add('And B.Bcd_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                   if DBLookupComboBox1.KeyValue <> null then Sql.Add('And A.Lin_Tipo = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                   if DBLookupComboBox2.KeyValue <> null then Sql.Add('And A.Lin_Cod = ' + QuotedStr(DBLookupComboBox2.KeyValue));
//                   if DBLookupComboBox3.KeyValue <> null then Sql.Add('And B.Bcd_Resp = ' + QuotedStr(DBLookupComboBox3.KeyValue));
//                   if DBLookupComboBox4.KeyValue <> null then Sql.Add('And B.Bcd_Ace = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                   Sql.Add('group by a.lin_cod, A.Lin_Des');
                   if Ordem2.ItemIndex = 0 then Sql.Add('Order By A.Lin_Cod');
                   if Ordem2.ItemIndex = 1 then Sql.Add('Order By A.Lin_Des');
                   if Ordem2.ItemIndex = 2 then Sql.Add('Order By VT Desc');
                   if Ordem2.ItemIndex = 3 then Sql.Add('Order By Escolar Desc');

//                   Sql.Add('Order By a.Lin_cod, A.Lin_des');
                   Open;
                   if not eof then
                          begin
                             Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                              Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                               Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
//                                Relatorio.Projeto.SetParam('Sistema',DtSistema.DataSet.FieldByName('Tli_des').AsString);
//                                 Relatorio.Projeto.SetParam('TarifaAtual',DtSistema.DataSet.FieldByName('Tli_TarifaAtual').AsString);
//                                  Relatorio.Projeto.SetParam('TarifaAnterior',DtSistema.DataSet.FieldByName('Tli_TarifaAtual').AsString);
                                   Relatorio.Projeto.ExecuteReport('RvEstatistico');
                          end
                          else
                                              ShowMessage('Não existem Dados para geração do Relatório');
             end;

Screen.Cursor:=crdefault;;
end;

procedure TFormRelatorioEstatistico.SpeedButton2Click(Sender: TObject);
begin
       Application.CreateForm(TFormGrafico1,FormGrafico1);
       With FormGrafico1.QrMedia do
             begin
                   Close;
                   Sql.Clear;
                   Sql.Add('select B.Bcd_Lin,');
//                   if ComboBox1.ItemIndex = 1 then  Sql.Add('select B.Bcd_Acertador,');
//                   if ComboBox1.ItemIndex = 2 then  Sql.Add('select B.Bcd_Responsavel,');

                   Sql.Add('sum(B.bcd_total) as total,');
                   Sql.Add('sum((cast(B.bcd_peatu as float) + B.bcd_peant)* 100) / (sum(B.bcd_total)) as Escolar,');
                   Sql.Add('sum((cast(B.bcd_vteatu + B.bcd_vteant as float))* 100) /(sum(B.bcd_total)) as VT,');
                   Sql.Add('sum((cast(B.bcd_livre as float))* 100) /(sum(B.bcd_total)) as livre,');
                   Sql.Add('sum((cast(B.bcd_liquido as float))* 100) /(sum(B.bcd_total)) as Liquido,');
                   Sql.Add('sum((cast(B.bcd_desconto as float))* 100) /(sum(B.bcd_total)) as Desconto');
                   Sql.Add('from Tb_MonLin A, Tb_MonMov B');
                   Sql.Add('Where B.Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.Bcd_Data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                   Sql.Add('and Bcd_lin = Lin_Cod');
                   Sql.Add('And B.Bcd_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                   if DBLookupComboBox1.KeyValue <> null then Sql.Add('And A.Lin_Tipo = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                   if DBLookupComboBox2.KeyValue <> null then Sql.Add('And A.Lin_Cod = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                   if DBLookupComboBox3.KeyValue <> null then Sql.Add('And B.Bcd_Responsavel = ' + QuotedStr(DBLookupComboBox3.KeyValue));
                   if DBLookupComboBox4.KeyValue <> null then Sql.Add('And B.Bcd_Acertador = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                   Sql.Add('group by B.Bcd_Lin');
//                   if ComboBox1.ItemIndex = 1 then  Sql.Add('group by B.Bcd_Acertador');
//                   if ComboBox1.ItemIndex = 2 then  Sql.Add('group by B.Bcd_Responsavel');
//                   memo1.text:=sql.Text;
                   Open;
                   if not eof then
                         begin
                                  FormGrafico1.ShowModal;
                         end;
             end;
end;

procedure TFormRelatorioEstatistico.SpeedButton3Click(Sender: TObject);
begin
      Close;
end;

procedure TFormRelatorioEstatistico.SpeedButton4Click(Sender: TObject);
begin
          Screen.Cursor:=CrHourglass;
          With Relatorio.QrMediaResp do
               begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select C.Cha_Pro, C.Nom_Pro,');
                     Sql.Add('sum(B.bcd_total) as total,');
                     Sql.Add('sum((cast(B.bcd_peatu as float) + B.bcd_peant)* 100) / (sum(B.bcd_total)) as Escolar,');
                     Sql.Add('sum((cast(B.bcd_vteatu + B.bcd_vteant as float))* 100) /(sum(B.bcd_total)) as VT,');
                     Sql.Add('sum((cast(B.bcd_livre as float))* 100) /(sum(B.bcd_total)) as livre,');
                     Sql.Add('sum((cast(B.bcd_liquido as float))* 100) /(sum(B.bcd_total)) as Liquido,');
                     Sql.Add('sum((cast(B.bcd_desconto as float))* 100) /(sum(B.bcd_total)) as Desconto');
                     Sql.Add('from Tb_MonLin A, Tb_MonMov B');
                     Sql.Add('Join Tb_Profissionais C On C.Cod_Pro = B.Bcd_Responsavel');
                     Sql.Add('Where B.Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.Bcd_Data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                     if DBLookupComboBox1.KeyValue <> null then Sql.Add('And A.Lin_Tipo = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                     if DBLookupComboBox4.KeyValue <> null then Sql.Add('And C.Cod_Pro = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                     if DBLookupComboBox5.KeyValue <> null then Sql.Add('And C.Cod_Pro = ' + QuotedStr(DBLookupComboBox5.KeyValue));
                     Sql.Add('and Bcd_lin = Lin_Cod');
                     Sql.Add('And B.Bcd_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                     Sql.Add('group by C.Cha_Pro, C.Nom_Pro');
                     if Ordem1.ItemIndex = 0 then Sql.Add('Order By C.Nom_Pro');
                     if Ordem1.ItemIndex = 1 then Sql.Add('Order By C.Cha_Pro');
                     if Ordem1.ItemIndex = 2 then Sql.Add('Order By VT Desc');
                     if Ordem1.ItemIndex = 3 then Sql.Add('Order By Escolar Desc');
                     formentrada.memo1.text:=sql.Text;
                     Open;
                     if not eof then
                            begin
                                  Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                                  Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                                  Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                  Relatorio.Projeto.ExecuteReport('RvEstatisticoResp');
                            end
                            else
                                  ShowMessage('Não existem Dados para geração do Relatório');
             end;

Screen.Cursor:=crdefault;;

end;

procedure TFormRelatorioEstatistico.SpeedButton7Click(Sender: TObject);
begin
          Screen.Cursor:=CrHourglass;
          With Relatorio.QrMediaAce do
               begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select C.Ace_Cod, C.Ace_Des,');
                     Sql.Add('sum(B.bcd_total) as total,');
                     Sql.Add('sum((cast(B.bcd_peatu as float) + B.bcd_peant)* 100) / (sum(B.bcd_total)) as Escolar,');
                     Sql.Add('sum((cast(B.bcd_vteatu + B.bcd_vteant as float))* 100) /(sum(B.bcd_total)) as VT,');
                     Sql.Add('sum((cast(B.bcd_livre as float))* 100) /(sum(B.bcd_total)) as livre,');
                     Sql.Add('sum((cast(B.bcd_liquido as float))* 100) /(sum(B.bcd_total)) as Liquido,');
                     Sql.Add('sum((cast(B.bcd_desconto as float))* 100) /(sum(B.bcd_total)) as Desconto');
                     Sql.Add('from Tb_MonLin A, Tb_MonMov B');
                     Sql.Add('Join Tb_MonAce C On C.Ace_Cod = B.Bcd_Acertador');
                     Sql.Add('Where B.Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.Bcd_Data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                     Sql.Add('and Bcd_lin = Lin_Cod');
                     Sql.Add('And B.Bcd_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                     if DBLookupComboBox3.KeyValue <> null then Sql.Add('And C.Ace_Cod = ' + QuotedStr(DBLookupComboBox3.KeyValue));
                     if DBLookupComboBox1.KeyValue <> null then Sql.Add('And A.Lin_Tipo = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                     Sql.Add('group by C.Ace_Cod, C.Ace_Des');
                     if Ordem1.ItemIndex = 0 then Sql.Add('Order By C.Ace_Des');
                     if Ordem1.ItemIndex = 1 then Sql.Add('Order By C.Ace_Cod');
                     if Ordem1.ItemIndex = 2 then Sql.Add('Order By VT Desc');
                     if Ordem1.ItemIndex = 3 then Sql.Add('Order By Escolar Desc');
//                     memo1.text:=sql.Text;
                     Open;
                     if not eof then
                            begin
                                  Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                                  Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                                  Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                  Relatorio.Projeto.ExecuteReport('RvEstatisticaAce');
                            end
                            else
                                  ShowMessage('Não existem Dados para geração do Relatório');
             end;

Screen.Cursor:=crdefault;;

end;

end.
