unit UnitGeraArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, Gauges, Grids, DBGrids,
  pngimage, ExtCtrls, DBCtrls;

type
  TFormGeraArquivo = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Gauge1: TGauge;
    QrMov: TADOQuery;
    Dtparam: TDataSource;
    Image1: TImage;
    QrParam: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraArquivo: TFormGeraArquivo;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormGeraArquivo.BitBtn2Click(Sender: TObject);
var
ArqTxt: TExtFile;
NomedoArquivo,Linha,DataSembarras:string;
begin
       Gauge1.Progress:=0;
       Memo1.Lines.Add('Iniciando...');
       Screen.Cursor:=crhourglass;
       DataSemBarras:=Copy(DateToStr(DateTimePicker1.Date),7,4) + Copy(DateToStr(DateTimePicker1.Date),4,2) + Copy(DateToStr(DateTimePicker1.Date),1,2);
       ShowMessage('Antes de continuar, aconselhamos voce a verificar a sequencia de catracas');
       NomeDoArquivo:=Edit1.Text + '\' + QrParam.FieldByName('Par_CodEmp').AsString + Copy(DateToStr(DateTimePicker1.Date),1,2) + Copy(DateToStr(DateTimePicker1.Date),4,2) + '.CSV';
       Memo1.Lines.Add('Arquivo Gravado : ' + NomeDoArquivo);
       AssignFile(ArqTxt, NOMEDOARQUIVO);
       Rewrite(ArqTxt);
       With QrMov do
            Begin
                 Close;
                  Sql.Clear;
                   Sql.Add('select * from Tb_MonMov A, Tb_MonCat B, Tb_MonParam C, Tb_MonLin D, Tb_MonTipLin E');
                    Sql.Add('where A.Bcd_coligada = ' + pai.QrColigadas.FieldByName('cod_Coligada').AsString);
                     Sql.Add('And B.Cat_Vei = A.Bcd_Vei and D.Lin_coligada = A.Bcd_Coligada And E.Tli_Cod = D.Lin_Tipo');
                      Sql.Add('And D.Lin_Cod = A.Bcd_Lin and E.Tli_Cod = C.Par_Cod');
                       Sql.Add('and A.Bcd_Data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                        Sql.Add('And E.Tli_Cod = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                        Sql.Add('Order By A.Bcd_num');
//                         Memo1.Text:=sql.Text;
                         Open;
                          Gauge1.MaxValue:=QrMov.RecordCount;
                           Memo1.Lines.Add('Serão Gravados ' + IntToStr(QrMov.RecordCount));
                            if Not eof then
                                  begin
                                      repeat
                                             Memo1.Lines.Add('Gravando dados do Boletim : ' + QrMov.FieldByName('Bcd_Num').AsString);
                                             Linha:=
                                                    QrMov.FieldByName('Bcd_Serie').AsString                          + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_Lin').AsInteger)       + ',' +
                                                    QrMov.FieldByName('Bcd_Vei').AsString                            + ',' +
                                                    DataSemBarras                                                    + ',' +
                                                    FormatFloat('000000',QrMov.FieldByName('Bcd_CatIni').AsInteger)  + ',' +
                                                    FormatFloat('000000',QrMov.FieldByName('Bcd_CatFin').AsInteger)  + ',' +
                                                    FormatFloat('00000000',QrMov.FieldByName('Cat_Lacre').AsInteger) + ',' +
                                                    '0'                                                              + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_VteAtu').AsInteger)    + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_VeAtu').AsInteger)     + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_PeAtu').AsInteger)     + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_EstGra').AsInteger)    + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_Livre').AsInteger)     + ',' +
                                                    FormatFloat('000',QrMov.FieldByName('Bcd_Idoso').AsInteger)     + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_Liquido').AsInteger)   + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_Desconto').AsInteger)  + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_PFAtu').AsInteger)     + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_PFAnt').AsInteger)     + ',' +
                                                    FormatFloat('00000000',QrMov.FieldByName('Bcd_Num').AsInteger)   + ',' +
                                                    '00'                                                             + ',' +
                                                    QrMov.FieldByName('Par_CodAux').AsString                         + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_VteAnt').AsInteger)    + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_VeAnt').AsInteger)     + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_PeAnt').AsInteger)     + ',' +
                                                    FormatFloat('0000',QrMov.FieldByName('Bcd_Gratuito').AsInteger);
                                           Writeln(ArqTxt, Linha);
                                           Gauge1.Progress:=Gauge1.Progress+1;
                                           Next;
                                          until Eof;
                                     Memo1.Lines.Add('Checando Arquivo...');

                                 end
                                 else begin
                                      ShowMessage('Não foram encontrados dados para esta geração');
                                 end;

            Memo1.Lines.Add('Local do Arquivo : '+ Edit1.text );
            End;
            CloseFile(ArqTxt);
            Memo1.Lines.Add('Arquivo Gravado : ' + NomeDoArquivo);
            Memo1.Lines.Add('...Concluído');
            Screen.Cursor:=crDefault;;

end;

procedure TFormGeraArquivo.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFormGeraArquivo.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now-1;
       With QrParam do
             begin
                  Close;
                   Sql.Clear;
                    Sql.Add('select * from tb_MontipLin A, Tb_MonParam B');
                     Sql.Add('where B.Par_Cod = A.Tli_Cod');
                      Sql.Add('And Tli_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                       Open;

             end;

end;

procedure TFormGeraArquivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
