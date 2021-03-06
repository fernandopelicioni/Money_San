unit UnitValidaCatraca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls,
  pngimage, Gauges;

type
  TFormValidaCatraca = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DtValida: TDataSource;
    BitBtn1: TBitBtn;
    QrValida: TADOQuery;
    BitBtn2: TBitBtn;
    QrValida2: TADOQuery;
    QrConsiste: TADOQuery;
    Image1: TImage;
    BitBtn3: TBitBtn;
    Gauge1: TGauge;
    Memo1: TMemo;
    DataSource1: TDataSource;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormValidaCatraca: TFormValidaCatraca;

implementation

uses UnPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormValidaCatraca.BitBtn1Click(Sender: TObject);
var
catracaanterior, catracaatual : integer;
VeiculoAtual: string;
begin
With QrConsiste do
      begin
            Close;
            Sql.Clear;
            Sql.Add('Delete tb_MonConsistencia where 1>0');
            ExecSQL;
            Close;
            Sql.Clear;
            Sql.Add('Select * from tb_MonConsistencia');
      end;


 {  With QrValida do
       begin
            Close;
             Sql.Clear;
              Sql.Add('select A.bcd_Vei as Veiculo, min(A.Bcd_CatIni) as CatracaInicial from Tb_MonMov A');
               Sql.Add('where A.bcd_data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                Sql.Add('and A.Bcd_CatIni <>');
                 Sql.Add('(select max(B.Bcd_CatFin) from TB_monMov B where B.Bcd_Data = ');
                  Sql.Add('(Select max(C.Bcd_Data) from Tb_MonMov C where C.Bcd_Vei < ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and C.Bcd_Vei = B.Bcd_Vei)');
                   Sql.Add('And B.Bcd_vei = A.Bcd_Vei)');
                    Sql.Add('Group By A.Bcd_Vei');
                     Open;

}


Screen.Cursor:=crhourglass;
Memo1.Clear;
Memo1.Lines.Add('Iniciando conferencia do dia ' +DateToStr(DateTimePicker1.Date));

   With QrValida do
       begin
            Close;
             Sql.Clear;
              Sql.Add('select bcd_Vei, min(Bcd_CatIni) from Tb_MonMov');
               Sql.Add('where bcd_data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                Sql.Add('Group By Bcd_Vei');
                 Open;
                 if not eof then
                        begin
                            Repeat
                                  CatracaAtual:= (Fields[1].Value);
                                  VeiculoAtual:=QrValida.FieldByName('Bcd_Vei').AsString;
                                  With QrValida2 do
                                        Begin
                                              Close;
                                              Sql.Clear;
                                              Sql.Add('select max(B.Bcd_CatFin) from TB_monMov B where B.Bcd_Data = ');
                                              Sql.Add('(Select max(C.Bcd_Data) from Tb_MonMov C where C.Bcd_data < ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and C.Bcd_Vei = B.Bcd_Vei');
                                              Sql.Add('And B.Bcd_Vei = ' + QuotedStr(VeiculoAtual));
                                              Sql.Add(')');
                                              Open;
                                              if not eof then
                                                          begin
                                                                if (QrValida2.Fields[0].text) = '' then
                                                                        CatracaAnterior:=0
                                                                        else
                                                                        CatracaAnterior:= QrValida2.Fields[0].Value;
                                                                if CatracaAnterior <> CatracaAtual then
                                                                        begin
                                                                              With QrConsiste do
                                                                                  begin
//                                                                                        Open;
//                                                                                        Insert;
//                                                                                        QrConsiste.FieldByName('Rco_IdMov').AsString:=QrValida.Fields[0].Value;
//                                                                                        QrConsiste.FieldByName('Rco_Data').AsString:=QrValida2.Fields[0].Value;
//                                                                                        QrConsiste.FieldByName('Rco_Vei').AsString:=QrValida.Fields[0].Value;
//                                                                                        QrConsiste.FieldByName('Rco_Vei').AsString:=QrValida.Fields[0].Value;
                                                                                        cancel;
                                                                                  end;
                                                                              Memo1.Lines.Add('* Ve�culo ' + QrValida.Fields[0].Value);
                                                                        end;
                                                          end;
                                        End;
                            Next
                            Until eof ;
                         end;
       end;
Memo1.Lines.Add('***** Conferencia entre datas Finalizada *****');
Memo1.Lines.Add('***** Inicio da Verifica��o Entre BCD�s ******');
           with QrValida do
               Begin
                     Close;
                     Sql.Clear;
                     Sql.Add('Select * from tb_monMov');
                     Sql.Add('Where Bcd_Data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and Bcd_Data <= ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                     Sql.Add('order by Bcd_Vei, Bcd_CatIni');
                     Open;
                     First;
                     if not eof then
                         begin
                               CatracaAnterior :=QrValida.FieldByName('Bcd_CatFin').AsInteger;
                               VeiculoAtual    :=QrValida.FieldByName('Bcd_Vei').AsString;
                               NExt;
                               repeat
                               if VeiculoAtual = QrValida.FieldByName('Bcd_Vei').AsString then
                                      begin
                                            if CatracaAnterior <> QrValida.FieldByName('Bcd_CatIni').AsInteger then
                                                 Begin
                                                      Memo1.Lines.Add('* Aten��o ,' + QrValida.FieldByName('Bcd_Vei').AsString + ' Catraca Anterior : ' + IntToStr(CatracaAnterior) + ', Atual : ' + QrValida.FieldByName('Bcd_CatIni').AsString + ', BCD : ' + QrValida.FieldByName('Bcd_Num').AsString);
                                                 End;
                                      end;
                                      CatracaAnterior:=QrValida.FieldByName('Bcd_CatFin').AsInteger;
                                      VeiculoAtual:=QrValida.FieldByName('Bcd_Vei').AsString;
                                      Next;
                               until Eof ;
                         end;
               End;
Memo1.Lines.Add('Valida��o de Catracas terminado, Observe as linhas com * (Asteriscos)');

Screen.Cursor:=crdefault;
end;

procedure TFormValidaCatraca.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormValidaCatraca.BitBtn3Click(Sender: TObject);
begin
             Label2.Caption:='Aguarde : Verificando consistencia do dia!';
             Screen.Cursor:=CrHourGlass;
             // Apaga tabela de consistencia

             With QrConsiste do
                 begin
                      Close;
                      Sql.Clear;
                      Sql.Add('Delete tb_MonConsistencia where 1>0');
                      ExecSQL;
                      Close;
                      Sql.Clear;
                      Sql.Add('Select * from tb_MonConsistencia');
                      Open;
                 end;
             With QrValida do
                  Begin
                       Close;
                       Sql.Clear;
                       Sql.Add('Select Bcd_Vei, Bcd_Num, Bcd_CatIni, Bcd_CatFin, Bcd_Data From tb_MonMov');
                       Sql.Add('Where Bcd_Data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                       Sql.Add('And Bcd_coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                       Sql.Add('Order By Bcd_Vei, Bcd_CatIni, Bcd_CatFin');
                       Open;
                       Gauge1.MaxValue:=QrValida.RecordCount;
                       First;
                       if Not Eof then
                             Begin
                                  Repeat
                                        With QrValida2 do
                                            Begin
                                                 Close;
                                                 Sql.Clear;
                                                 Sql.Add('Select Bcd_Vei, Bcd_Num, Bcd_CatIni, Bcd_CatFin, Bcd_Data From tb_MonMov');
                                                 Sql.Add('Where Bcd_Data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                                                 Sql.Add('And Bcd_Vei = ' + QuotedStr(QrValida.FieldByName('Bcd_Vei').AsString));
                                                 Sql.Add('And Bcd_CatIni > ' + QrValida.FieldByName('Bcd_CatIni').AsString);
                                                 Sql.Add('And Bcd_coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                                                 Sql.Add('Order By Bcd_CatIni, Bcd_CatFin');
                                                 Open;
                                                 //First;
                                                 if not eof then
                                                      begin
                                                           if QrValida.FieldByName('Bcd_catFin').AsInteger <> QrValida2.FieldByName('Bcd_CatIni').AsInteger then
                                                                 Begin
                                                                      QrConsiste.Insert;
                                                                      QrConsiste.FieldByName('Rco_Vei1').AsString:=QrValida.FieldByName('Bcd_Vei').AsString;
                                                                      QrConsiste.FieldByName('Rco_Data1').AsString:=QrValida.FieldByName('Bcd_Data').AsString;
                                                                      QrConsiste.FieldByName('Rco_Bcd1').AsString:=QrValida.FieldByName('Bcd_Num').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatIni1').AsString:=QrValida.FieldByName('Bcd_CatIni').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatFin1').AsString:=QrValida.FieldByName('Bcd_CatFin').AsString;
                                                                      QrConsiste.FieldByName('Rco_Data2').AsString:=QrValida2.FieldByName('Bcd_Data').AsString;
                                                                      QrConsiste.FieldByName('Rco_Bcd2').AsString:=QrValida2.FieldByName('Bcd_Num').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatIni2').AsString:=QrValida2.FieldByName('Bcd_CatIni').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatFin2').AsString:=QrValida2.FieldByName('Bcd_CatFin').AsString;
                                                                      QrConsiste.Post;
//                                                                      Showmessage('!');
                                                                 End;
                                                           Close;
                                                      end;
                                            End;
                                  Next;
                                  Gauge1.Progress:=Gauge1.Progress+1;
                                  Until Eof;
                             End;
                  End;
                 // Busca menor catraca do veiculo do dia em questao
                  Label2.Caption:='Aguarde : Verificando consistencia da catraca Inicial!';
                  gauge1.Progress:=0;
                  With QrValida Do
                      Begin
                           Close;
                          // Open;
                           //First;
                           Sql.Clear;
                           Sql.Add('Select A.Bcd_Vei, A.Bcd_Num, A.Bcd_CatIni,A.Bcd_CatFin, A.Bcd_Data From tb_MonMov A');
                           Sql.Add('Where Bcd_CatIni = (Select Min(B.Bcd_CatIni)  from tb_Monmov B where B.Bcd_vei = A.Bcd_Vei and B.Bcd_Data = A.Bcd_Data)');
                           Sql.Add('And A.Bcd_Data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                           Sql.Add('And A.Bcd_coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                           Sql.Add('Order By A.Bcd_Vei, Bcd_CatIni, Bcd_CatFin');
                           memo1.Text:=sql.Text;
                           Open;
                           Gauge1.MaxValue:=QrValida.RecordCount;
                           While Not Eof do
                                Begin
                                     // Busca maior catraca do ultimo dia....
                                     With QrValida2 do
                                         begin
                                              Close;
                                              Sql.Clear;
                                              Sql.Add('Select A.Bcd_Vei, A.Bcd_Num, A.Bcd_CatFin, A.Bcd_CatIni, A.Bcd_Data From tb_MonMov A');
                                              Sql.Add('Where A.Bcd_Vei = ' + QuotedStr(QrValida.FieldByName('Bcd_Vei').AsString));
                                              Sql.Add('And A.Bcd_coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                                              Sql.Add('And A.Bcd_Data = (Select Max(C.Bcd_Data) from Tb_MonMov C Where C.Bcd_Data < ' + QuotedStr(QrValida.FieldByName('Bcd_Data').AsString) + ' And C.Bcd_Vei = ' + QuotedStr(QrValida.FieldByName('Bcd_Vei').AsString)+')');
                                              Sql.Add('And A.Bcd_CatFin = (Select Max(B.Bcd_CatFin) from tb_Monmov B where B.Bcd_vei = A.Bcd_Vei and B.Bcd_Data = A.Bcd_Data)');
                                             // memo1.Text:=sql.Text;
                                              Open;
                                              If Not Eof then
                                                   begin
                                                        if QrValida.FieldByName('Bcd_catIni').AsInteger <> QrValida2.FieldByName('Bcd_CatFin').AsInteger then
                                                                 Begin
                                                                      QrConsiste.Insert;
                                                                      QrConsiste.FieldByName('Rco_Vei1').AsString:=QrValida.FieldByName('Bcd_Vei').AsString;
                                                                      QrConsiste.FieldByName('Rco_Data1').AsString:=QrValida.FieldByName('Bcd_Data').AsString;
                                                                      QrConsiste.FieldByName('Rco_Bcd1').AsString:=QrValida.FieldByName('Bcd_Num').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatIni1').AsString:=QrValida.FieldByName('Bcd_CatIni').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatFin1').AsString:=QrValida.FieldByName('Bcd_CatFin').AsString;
                                                                      QrConsiste.FieldByName('Rco_Data2').AsString:=QrValida2.FieldByName('Bcd_Data').AsString;
                                                                      QrConsiste.FieldByName('Rco_Bcd2').AsString:=QrValida2.FieldByName('Bcd_Num').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatIni2').AsString:=QrValida2.FieldByName('Bcd_CatIni').AsString;
                                                                      QrConsiste.FieldByName('Rco_CatFin2').AsString:=QrValida2.FieldByName('Bcd_CatFin').AsString;
                                                                      QrConsiste.Post;
                                                                 End;
                                                         Close;
                                                   end;
                                         end;
                                Gauge1.Progress:=Gauge1.Progress+1;
                                Next
                                End;

                      End;
                             Relatorio.Projeto.SetParam('dt1',DateToStr(DateTimePicker1.Date));
                               Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                   Relatorio.Projeto.ExecuteReport('RvConsiste');

             Screen.Cursor:=CrDefault;
end;

procedure TFormValidaCatraca.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
Gauge1.Progress:=0;
end;

procedure TFormValidaCatraca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
QrValida.Close;
action:=cafree;

end;

end.
