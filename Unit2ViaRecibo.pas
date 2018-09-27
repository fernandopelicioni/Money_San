unit Unit2ViaRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, ComCtrls, Buttons, StdCtrls, ExtCtrls, Grids,
  DBGrids;

type
  TForm2ViaRecibo = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    QrMovConf: TADOQuery;
    QrPro: TADOQuery;
    DtColigada: TDataSource;
    DtPro: TDataSource;
    DBGrid1: TDBGrid;
    DtMovCont: TDataSource;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2ViaRecibo: TForm2ViaRecibo;

implementation

uses UnPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TForm2ViaRecibo.FormActivate(Sender: TObject);
begin
          DateTimePicker1.Date:=now;
          With QrPro do
              Begin
                   Close;
                   Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                   Open;
              End;
end;

procedure TForm2ViaRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TForm2ViaRecibo.SpeedButton1Click(Sender: TObject);
begin
           With QrMovConf do
               Begin
                     Close;
                     Parameters.ParamByName('data').Value:=DateToStr(DateTimePicker1.Date);
                     Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                     MEMO1.TEXT:=SQL.Text;
                     open;

               End;
end;

procedure TForm2ViaRecibo.SpeedButton2Click(Sender: TObject);
begin
        Screen.Cursor:=crHourGlass;

                                                        With Relatorio.QrMovConf do
                                                             begin
                                                                   Close;
                                                                   Sql.Clear;
                                                                   Sql.Add('Select A.*, B.Nom_Pro, Cha_Pro, C.* from tb_monConferencia A, Tb_Profissionais B, Tb_MonAce C');
                                                                   Sql.Add('Where C.Ace_Cod = A.Mcf_Caixa and B.Cod_Pro = A.Mcf_Resp');
                                                                   Sql.Add('And Mcf_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                   Sql.Add('And Mcf_Cod = ' + QuotedStr(DtMovCont.DataSet.FieldByName('mcf_cod').AsString));
                                                                   Open;
                                                                   MEMO1.TEXT:=SQL.Text;
                                                                   Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                                   Relatorio.Projeto.ExecuteReport('RvReciboConf');
                                                             end;
       Screen.Cursor:=CrDefault;
end;


procedure TForm2ViaRecibo.SpeedButton3Click(Sender: TObject);
begin
Close;
end;

end.
