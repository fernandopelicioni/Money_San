unit UnitRelatorioListaDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, DBCtrls, DB;

type
  TFormRelatorioListaDebito = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DtIni: TDateTimePicker;
    DtFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    RadioGroup1: TRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    DtMotDebito: TDataSource;
    Label3: TLabel;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioListaDebito: TFormRelatorioListaDebito;

implementation

uses UnitRelatorio, UnitIniciaSistema, UnPai;

{$R *.dfm}

procedure TFormRelatorioListaDebito.BitBtn4Click(Sender: TObject);
begin
            Screen.Cursor:=CrHourGlass;
            With Relatorio.QrListaDebito do
                  Begin
                        close;
                        Sql.Clear;
                        Sql.Add('select Substring((B.Cha_Pro),5,4), B.Nom_Pro, C.Bcd_Num, A.Mdf_Data, A.Mdf_Valor, D.Ace_Des, E.Tbd_Des as mot, A.Mdf_Status as Status, A.Mdf_DtRec as Rec from tb_mondebito A');
                        Sql.Add('Left Join Tb_Profissionais B On B.Cod_Pro = A.Mdf_Chapa');
                        Sql.Add('Left Join Tb_MonMov C On C.Bcd_Num = A.Mdf_Bcd And C.Bcd_Data = A.Mdf_Data');
                        Sql.Add('Left Join Tb_MonAce D on Ace_Cod = Bcd_Acertador');
                        Sql.Add('Left Join Tb_MonMotDebito E On E.Tbd_Cod = A.Mdf_MotBaixa');
                        Sql.Add('Where (A.Mdf_Data >= ' + QuotedStr(DateToStr(DtIni.date)) + ') And (Mdf_Data <= ' + QUotedStr(DateToStr(DtFim.Date)));
//                        Sql.Add(') Or (A.Mdf_dtrec >= ' + QuotedStr(DateToStr(DtIni.date)) + ') And (Mdf_DtRec <= ' + QUotedStr(DateToStr(DtFim.Date))+')');
                        Sql.Add(')');
                        Sql.Add('And A.Mdf_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                        if RadioGroup1.ItemIndex = 1 then
                                Sql.Add('and A.Mdf_Status = ' + QUotedStr('A'));
                        if RadioGroup1.ItemIndex = 2 then
                                Sql.Add('and A.Mdf_Status = ' + QUotedStr('F'));
                        if DBLookupComboBox1.KeyValue <> Null then
                                Sql.Add('And A.Mdf_MotBaixa = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                        Sql.Add('order by A.Mdf_Data, B.Nom_Pro');
                        memo1.Text:=sql.Text;
                        Open;
                        if Not Eof then
                             begin
                                   Relatorio.Projeto.SetParam('dt1',DateToStr(Dtini.Date));
                                   Relatorio.Projeto.SetParam('dt2',DateToStr(Dtfim.Date));
                                   Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                   Relatorio.Projeto.ExecuteReport('RvListaDebito');
                             end
                             else
                             MessageBox(0, 'N�o existem dados para a emiss�o da lista de D�bitos!', 'Aten��o', MB_ICONINFORMATION or MB_OK);
                  End;

            Screen.Cursor:=CrDefault;
end;

procedure TFormRelatorioListaDebito.FormActivate(Sender: TObject);
begin
DtMotDebito.DataSet.Open;
end;

procedure TFormRelatorioListaDebito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormRelatorioListaDebito.FormShow(Sender: TObject);
begin
dtIni.Date:=now;
dtfim.Date:=now;

end;

procedure TFormRelatorioListaDebito.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 2 then
    DBLookupComboBox1.Enabled:=true
    else
    begin
    DBLookupComboBox1.KeyValue:=null;
    DBLookupComboBox1.Enabled:=false;

    end;

end;

procedure TFormRelatorioListaDebito.RadioGroup1Exit(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 2 then
    DBLookupComboBox1.Enabled:=true
    else
    DBLookupComboBox1.Enabled:=false;

end;

end.
