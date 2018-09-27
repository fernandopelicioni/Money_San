unit UnitRelatorioCentral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Buttons, ComCtrls, DBCGrids, ADODB, RpDefine,
  RpRender, RpRenderText, RvLdCompiler, pngimage, ExtCtrls;

type
  TFormRelatorioCentral = class(TForm)
    PageControl1: TPageControl;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn4: TBitBtn;
    DtAcertador: TDataSource;
    TabSheet4: TTabSheet;
    BitBtn1: TBitBtn;
    DtColigada: TDataSource;
    DtSistema: TDataSource;
    DtLinhas: TDataSource;
    ComboLinha: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBLookupComboBox4: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBCheckBox1: TDBCheckBox;
    QrLinhas: TADOQuery;
    RvRenderText1: TRvRenderText;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DtCobrador: TDataSource;
    BitBtn5: TBitBtn;
    QrPro: TADOQuery;
    Panel1: TPanel;
    Image8: TImage;
    Label9: TLabel;
    TabSheet5: TTabSheet;
    Label11: TLabel;
    BitBtn6: TBitBtn;
    TabSheet6: TTabSheet;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCentral: TFormRelatorioCentral;

implementation

uses UnPai, UnitRelatorio, UnitIniciaSistema, UnitGrafico1, telaentrada;

{$R *.dfm}

procedure TFormRelatorioCentral.BitBtn1Click(Sender: TObject);
begin
//if ComboSistema.KeyValue <> NULL then
//   BEGIN
     Screen.Cursor:=CrHourGlass;
    With Relatorio.QrTipLinha do
          begin
                close;
                Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                open

          end;

     With Relatorio.QrMOvBcd do
           Begin
                 Close;
                 Sql.Clear;
                 // Isso define a numeracao dos boletins por coligada, nesse caso, coligada 1 = Sanremo
                 if DtColigada.DataSet.FieldByName('Cod_Coligada').Asinteger = 1 then
                       Sql.Add('select (case When A.Tbcd_Cod > 1000000 then Tbcd_cod - 1000000 else Tbcd_Cod End) as Tbcd_Cod,');
                 // Coligada 3 = Asatur
                 if DtColigada.DataSet.FieldByName('Cod_Coligada').Asinteger = 3 then
                       Sql.Add('select (case When A.Tbcd_Cod > 3000000 then Tbcd_cod - 3000000 else Tbcd_Cod End) as Tbcd_Cod,');
                 if DtColigada.DataSet.FieldByName('Cod_Coligada').Asinteger = 4 then
                       Sql.Add('select (case When A.Tbcd_Cod > 4000000 then Tbcd_cod - 4000000 else Tbcd_Cod End) as Tbcd_Cod,');

                 Sql.Add('b.*, C.Mcb_Des, P.Cha_pro as Chapa, A.TBcd_DHEX as Exclusao from tb_MonBcd A');
                 Sql.Add('Left Join Tb_MonMov as B on A.Tbcd_cod = b.Bcd_Num');
                 Sql.Add('and B.Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.Bcd_data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                 Sql.Add('Join tb_MonMotCanBcd As C on A.TBcd_Status = C.Mcb_Cod');
                 Sql.Add('Left Join Tb_MonLin as D on B.bcd_Lin = D.Lin_Cod');
                 sQL.Add('Left Join Tb_Profissionais As P On P.Cod_pro = B.Bcd_Responsavel') ;
                 Sql.Add('Left Join Tb_MonTipLin as T On T.Tli_Cod = D.Lin_Tipo and T.Tli_Check = ' + QUotedstr('S'));
                 Sql.Add('And T.Tli_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                 if ComboLinha.KeyValue <> Null then
                        Sql.Add('And D.Lin_Cod = ' + QuotedStr(Combolinha.KeyValue));
              //   Sql.Add('left Join Tb_MonTipLin as E on D.Lin_Tipo = E.Tli_Cod');
                 Sql.Add('where A.Tbcd_Data >= '+ QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and a.tBcd_data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                 if DBLookupComboBox6.KeyValue <> Null then
                        Sql.Add('And B.Bcd_Acertador = ' + QuotedStr(DBLookupComboBox6.KeyValue));
                 Sql.Add('and B.Bcd_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));

                // sQL.Add('and T.Tli_Check = ' + QUotedstr('S'));
                 Sql.Add('Order by Tbcd_Cod');
                 memo2.text:=sql.Text;
                 Open;
                 Screen.Cursor:=CrDefault;
                 if not eof  then
                       begin
                             Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                              Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                               Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                Relatorio.Projeto.ExecuteReport('RvBoletins');
                  //               Relatorio.Projeto.Close;
                       end
                       else begin
                             ShowMessage('N�o existem Dados para gera��o do Relat�rio');
                       end;
           End;
//   END
//   ELSE BEGIN
//          ShowMessage('Voc� Precisa escolher um Sistema para Gerar o Relat�rio !');



//   END;
end;

procedure TFormRelatorioCentral.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormRelatorioCentral.BitBtn3Click(Sender: TObject);
begin
    With Relatorio.QrTipLinha do
          begin
                close;
                Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                open

          end;


   With Relatorio.QrResumoLinha do
         Begin
             Close;
                    Sql.Clear;
                   //  Sql.Add('Set language Brazilian');
                    Sql.Add('select A.Lin_Cod, A.Lin_Des,');
                    Sql.Add('sum(B.bcd_peatu) as peatu,');
                    Sql.Add('sum(B.bcd_peant) as peant,');
                    Sql.Add('sum(B.bcd_vteatu) as vtatu,');
                    Sql.Add('sum(B.bcd_vteant) as vtant,');
                    Sql.Add('sum(B.bcd_Outros) as Outros,');
                    Sql.Add('sum(B.bcd_GRATUIDADE) as GRATUIDADE,');
                    Sql.Add('sum(B.bcd_livre) as livre,');
                    Sql.Add('sum(B.bcd_liquido) as Liquido,');
                    Sql.Add('Sum(B.Bcd_VtDesAtu) as VtDesAtu,');
                    Sql.Add('Sum(B.Bcd_PEDesAtu) as PeDesAtu,');
                    Sql.Add('sum(B.bcd_desconto) as Desconto,');
                    Sql.Add('sum(B.bcd_Dinheiro) as Dinheiro,');
                    Sql.Add('sum(bcd_Popular) as Popular,');
                    Sql.Add('       Sum(Bcd_Social) as Social,');
                    Sql.Add('        Sum(Bcd_Grat3) as Grat3,');
                    Sql.Add('        Sum(Bcd_VTPapel) as VTPapel,');
                    Sql.Add('         Sum(Bcd_PePapel) as PePapel,');
                    Sql.Add('         Sum(Bcd_Idoso) as Idoso,');
                    Sql.Add('Sum(Bcd_VtRest) as VtREst,');
                    Sql.Add('Sum(B.Bcd_Total - B.Bcd_Livre - (CAST(bCD_PEaTU*2 AS FLOAT)/4)) AS Eqvl,');
//                          Sql.Add('Sum(B.Bcd_PeAtu/2) + (B.Bcd_PeAnt) AS Eqvl,');
                    Sql.Add('sum(B.bcd_total) as total,');
                    Sql.Add('Sum(((B.Bcd_VteAtu + B.Bcd_Liquido) * B.Bcd_TarifaAtual) + (B.Bcd_VteAnt * B.Bcd_TarifaAnterior)');
                    Sql.Add('+ (B.Bcd_PeAtu * B.Bcd_tarifaAtual/2) + (B.Bcd_PeAnt * B.Bcd_tarifaAnterior/2)');
                    Sql.Add('+ (B.Bcd_VtDesAtu * B.Bcd_tarifaDesconto) + (B.Bcd_PeDesAtu * Bcd_TarifaDesconto/2)');
                    Sql.Add('+ (B.Bcd_Desconto * B.Bcd_TarifaDesconto)');
                    Sql.Add('+ (B.BCD_SOCIAL * B.Bcd_tarifaAtual)');
                    Sql.Add('+ (B.BCD_POPULAR * B.Bcd_tarifaAtual)');
                    Sql.Add('+ (B.BCD_VTPAPEL * B.Bcd_tarifaAtual)');
                    Sql.Add('+ (B.BCD_PEPAPEL * B.Bcd_tarifaAtual/2)) as tp');
                    Sql.Add('from Tb_MonLin A, Tb_MonMov B');
                    Sql.Add('Join Tb_MonTipLin T On T.Tli_Cod = B.Bcd_sistema and T.Tli_Check = '+ QUotedstr('S'));
                    Sql.Add('And T.Tli_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                    Sql.Add('Where B.Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.Bcd_data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                    Sql.Add('and Bcd_lin = Lin_Cod');
                    Sql.Add('And T.Tli_Cod = B.Bcd_Sistema and Tli_Check = ' + QuotedStr('S'));
//                             Sql.Add('And A.Lin_Coligada = B.Bcd_Coligada');
                    Sql.Add('And B.Bcd_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                    if DBLookupComboBox4.KeyValue <> null then Sql.Add('And A.Lin_Cod = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                                   Sql.Add('group by A.lin_Cod, A.Lin_des');
                                    Sql.Add('Order By A.Lin_Cod');
                    memo1.Text:=sql.Text;
                    Open;
                    if not eof  then
                         begin
                             Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                              Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                               Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                Relatorio.Projeto.ExecuteReport('RvResumoLinha');
                         //      Relatorio.Projeto.Close;
                       end
                       else begin
                             ShowMessage('N�o existem Dados para gera��o do Relat�rio');
                       end;
         End;
end;

procedure TFormRelatorioCentral.BitBtn4Click(Sender: TObject);
begin
   Screen.Cursor:=Crhourglass;

    with Relatorio.qrdebito do
         begin
              Close;
              Sql.Clear;
              Sql.Add('Select sum(mdf_valor) as Debito from tb_mondebito');
              Sql.Add('where mdf_coligada = ' + pai.QrColigadas.FieldByName('cod_coligada').AsString);
              Sql.Add('and mdf_data >= ' + QuotedStr(Datetostr(DateTimePicker1.Date)) + ' and Mdf_data <= ' + QuotedStr(Datetostr(DateTimePicker2.Date)));
              open;
    With Relatorio.QrTipLinha do
          begin
                close;
                Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                open

          end;

         end;
    With Relatorio.QrResumoDiario do
          begin
               Close;
               Sql.Clear;
               Sql.Add('set language brazilian Select');
               if DBLookupComboBox1.KeyValue <> null then
                   Sql.Add(' Ace_des,');
               Sql.Add('   sum(bcd_peatu) as peatu,');
               Sql.Add('    sum(bcd_peant) as peant,');
               Sql.Add('     sum(bcd_vteatu) as vtatu, ');
               Sql.Add('      sum(bcd_vteant) as vtant,');
               Sql.Add('       sum(bcd_Outros) as Outros,');
               Sql.Add('        sum(bcd_livre) as livre,');
               Sql.Add('         SUM(BCD_VTDESANT) AS VTDesAnt,');
               Sql.Add('SUM(BCD_VTDESATu) AS VTDesAtU,');
               Sql.Add('SUM(BCD_pedESANT) AS pEDDesAnt,');
               Sql.Add('SUM(BCD_PEDESATU) AS pEDDesAtU,');
               Sql.Add('         sum(bcd_liquido) as Liquido, ');
               Sql.Add('          sum(bcd_desconto) as Desconto, ');
               Sql.Add('           sum(bcd_Dinheiro) as Dinheiro,');
               Sql.Add('sum(bcd_Popular) as Popular,');
               Sql.Add('       Sum(Bcd_Social) as Social,');
               Sql.Add('        Sum(Bcd_Grat3) as Grat3,');
               Sql.Add('        Sum(Bcd_VTPapel) as VTPapel,');
               Sql.Add('         Sum(Bcd_PePapel) as PePapel,');
               Sql.Add('         Sum(Bcd_Idoso) as Idoso,');
               Sql.Add('Sum(Bcd_VtRest) as VtREst,');
               Sql.Add('Sum(Bcd_Gratuidade) as Gratuidade,');
               sql.Add('avg (bcd_tarifaAtual) as tarifaAtual,');
               sql.Add('avg (bcd_tarifaAnterior) as tarifaAnterior,');

               //               Sql.Add('            Sum(Mdf_Valor) as Debito,');
               Sql.Add('            sum(bcd_total) as total,');
               Sql.Add('             Count(*) as QT');

               Sql.Add('from Tb_MonMov A');
               Sql.Add('Left Join Tb_MonAce B on B.Ace_Cod = A.Bcd_Responsavel');
  //             Sql.Add('Left Join Tb_MonDebito D On D.Mdf_Bcd = A.Bcd_Num');
               Sql.Add('Join Tb_MonTipLin T On T.Tli_Cod = A.Bcd_sistema and T.Tli_Check = '+ QUotedstr('S'));
               Sql.Add('And T.Tli_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
               Sql.Add('Where Bcd_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and Bcd_data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
               Sql.Add('And Bcd_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
               if DBLookupComboBox1.KeyValue <> null then
                          Sql.Add('And Bcd_Acertador = ' + QuotedStr(DBLookupComboBox1.KeyValue));
               if DBLookupComboBox3.KeyValue <> null then
                          Sql.Add('And Bcd_Lin = ' + QuotedStr(DBLookupComboBox3.KeyValue));
               if DBLookupComboBox1.KeyValue <> null then
                      Sql.Add('group by ace_des');
               formentrada.memo1.Text:=sql.Text;
               Open;             // Join being
               memo1.Text:=sql.Text;
               Screen.Cursor:=CrDefault;
                 if not eof  then
                       begin
                            if DBLookupComboBox1.KeyValue <> null then
                                    Relatorio.Projeto.SetParam('Acertador',DtAcertador.DataSet.FieldByName('Ace_Des').AsString)
                                    else
                                    Relatorio.Projeto.SetParam('Acertador','Todos - Fechamento Geral Di�rio');

                             Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                              Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                               Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                Relatorio.Projeto.SetParam('Sistema',DtSistema.DataSet.FieldByName('Tli_des').AsString);
                                 DtSistema.DataSet.Close;
                                 DtSistema.DataSet.open;
//                                 Relatorio.Projeto.SetParam('TarifaAtual',DtSistema.DataSet.FieldByName('Tli_TarifaAtual').AsString);
//                                  Relatorio.Projeto.SetParam('TarifaAnterior',DtSistema.DataSet.FieldByName('Tli_TarifaAnterior').AsString);
                                 Relatorio.Projeto.SetParam('TarifaAtual',FieldByName('TarifaAtual').AsString);
                                  Relatorio.Projeto.SetParam('TarifaAnterior',FieldByName('TarifaAnterior').AsString);
                                   Relatorio.Projeto.ExecuteReport('Resumo2');
                                 Relatorio.Projeto.Close;

                       end
                       else begin
                             ShowMessage('N�o existem Dados para gera��o do Relat�rio');
                       end;
          end;

end;

procedure TFormRelatorioCentral.BitBtn5Click(Sender: TObject);
begin
      With Relatorio.QrCobBcd do
           begin
                 Close;
                 sql.Clear;
                 Sql.Add('select B.Cha_Pro, B.Nom_Pro, A.* from tb_monmov A');
                 Sql.Add('Join Tb_Profissionais B On B.Cod_Pro = A.Bcd_Responsavel');
                 Sql.Add('where bcd_data >=:inicio and bcd_data <=:fim');
                 Sql.Add('and bcd_coligada =:coligada');
                 if ((DBLookupComboBox5.KeyValue <> Null) And (DBLookupComboBox2.KeyValue <> NULL)) then
                      Sql.Add('and B.cod_Pro =' + quotedStr(DtCobrador.DataSet.FieldByName('cod_pro').AsString) );
                 Sql.Add('Order By bcd_data, bcd_num');
                 Parameters.ParamByName('inicio').Value:=DateToStr(DateTimePicker1.Date);
                 Parameters.ParamByName('Fim').Value:=DateToStr(DateTimePicker2.Date);
                 Parameters.ParamByName('Coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                 Open;
                 memo1.Text:=sql.Text;
                 if not eof  then
                       begin
                             Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                             Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                             Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                             Relatorio.Projeto.ExecuteReport('RvCobBcd');
                       end
                       else
                             ShowMessage('N�o existem Dados para gera��o do Relat�rio');
           end;
end;

procedure TFormRelatorioCentral.BitBtn6Click(Sender: TObject);
begin
           With Relatorio.QrPassLinhaCob do
                begin
                       Close;
                       Parameters.ParamByName('inicio').Value:=dateToStr(DateTimePicker1.Date);
                       Parameters.ParamByName('Fim').Value:=dateToStr(DateTimePicker2.Date);
                       Open;

                       if not eof  then
                             begin
                                   Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                                   Relatorio.Projeto.SetParam('dt2',DateToStr(DateTimePicker2.Date));
                                   Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                   Relatorio.Projeto.ExecuteReport('RvPassCob');
                             end
                             else
                                     ShowMessage('N�o existem Dados para gera��o do Relat�rio');
                end;


end;

procedure TFormRelatorioCentral.DBCtrlGrid1Exit(Sender: TObject);
begin
if DtSistema.DataSet.state = DsEdit then
    DtSistema.DataSet.Post;
end;

procedure TFormRelatorioCentral.FormActivate(Sender: TObject);
begin
DtAcertador.DataSet.Open;
//DtCobrador.DataSet.Open;
//DtSistema.DataSet.Open;
DtLinhas.DataSet.Open;
With QrPro do
    begin
         CLose;
         Parameters.ParamByName('coligada').value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
         Open;
    end;
end;

procedure TFormRelatorioCentral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtAcertador.DataSet.Close;
DtSistema.DataSet.Close;
DtLinhas.DataSet.Close;
Action:=cafree;
end;

procedure TFormRelatorioCentral.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
WITH PAI.QrTipLinCompl do
       begin
             close;
             Sql.Clear;
             Sql.Add('Select * from Tb_MonTipLin A, Tb_MonParam B');
             Sql.Add('Where B.Par_Cod = A.Tli_Cod');
             Sql.Add('And Tli_Coligada = ' + quotedStr(DtColigada.dataset.fieldbyname('Cod_coligada').AsString));
             Open;
       end;



//      with Pai.QrTipLinCompl do
//         begin
//              Close;
//              Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
//              open;
//         end;
end;

procedure TFormRelatorioCentral.Image8Click(Sender: TObject);
begin
close;
end;

procedure TFormRelatorioCentral.TabSheet1Show(Sender: TObject);
begin
DtAcertador.DataSet.Open;
end;

end.