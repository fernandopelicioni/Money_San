unit UnitDadosConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, Buttons, XPMan, dblookup,
  ActnMan, ActnColorMaps, ComCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormDadosConf = class(TForm)
    btok: TBitBtn;
    btcancel: TBitBtn;
    DtAcertador: TDataSource;
    DtColigada: TDataSource;
    Panel1: TPanel;
    EditUsuario: TDBLookupComboBox;
    Label2: TLabel;
    EditData: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DtSIstema: TDataSource;
    procedure editdataKeyPress(Sender: TObject; var Key: Char);
    procedure editusuarioKeyPress(Sender: TObject; var Key: Char);
    procedure btcancelClick(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditDataEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  dialancamento: TDate;
  usuario: string[5];
  nome:string[40];
  tipotela:string;
    { Public declarations }
  end;

var
  FormDadosConf: TFormDadosConf;
implementation

uses UnPai, UnitLancamento, UnitLancamentoBSE, UnitLancaPrestacao;

{$R *.dfm}

procedure TFormDadosConf.editdataKeyPress(Sender: TObject; var Key: Char);
var
dia : string;
begin
if key = #13 then
   begin
   key:=#0;
   Dia:=DateToStr(now);
   if ((EditData.Date) < (Now - 2)) or (EditData.Date > (Now + 2)) then
       begin
       //ageBeep(150,180);
       ShowMessage('Preste Atenção, Esta data é bem diferente da data de hoje, Acho que voce teclou a data errada');
       ShowMessage('Se é exatamento isso que voce deseja fazer, va em frente');
       ShowMessage('A data escolhida para digitação é:' +#13+
                   ' * * * * * * * * * * * * * * * * * ' + #13+
                   '         '+DateToStr(EditData.Date) + #13 +
                   ' * * * * * * * * * * * * * * * * *');
       end;
     DBLookupComboBox1.SetFocus;
   end;
end;

procedure TFormDadosConf.editusuarioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key:=#0;
   If EditUsuario.keyvalue = null then
   begin
   editUsuario.Setfocus;
   end
   else
   begin
   Edit1.Enabled:=true;
   Edit1.SetFocus;
   end;
   end;
end;

procedure TFormDadosConf.btcancelClick(Sender: TObject);
begin
DtAcertador.dataSet.close;
Close;
end;

procedure TFormDadosConf.btokClick(Sender: TObject);
begin
hide;
If EditUsuario.Text = '' then EditUsuario.SetFocus;
usuario:=EditUsuario.Keyvalue;
dialancamento:=(editdata.date);
nome:=DtAcertador.DataSet.fieldbyname('ACE_Des').AsString;
if Edit1.Text = DtAcertador.DataSet.FieldByName('Ace_Senha').AsString then
    begin
          Application.CreateForm(TFormLancaPrestacao, FormlancaPrestacao);
          formLancaPrestacao.ShowModal;
    end
    else
    begin
          MessageBox(Handle,'Senha não confere','Erro de Senha',mb_IconInformation+mb_ok);
          Close;

    end;

end;

procedure TFormDadosConf.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
           key:=#0;
           EditUsuario.SetFocus;

    end;
end;

procedure TFormDadosConf.FormShow(Sender: TObject);
begin
EditData.Date:=(now);
//Editusuario.Text:=' ';

EditData.SetFocus;
end;

procedure TFormDadosConf.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
           key:=#0;
           btok.SetFocus;
    end;

end;

procedure TFormDadosConf.EditDataEnter(Sender: TObject);
var
HoraAtual:TTime;
begin
HoraAtual:=Time;
IF HoraAtual < StrtoTime('05:00:00') then
    EditData.Date:=(Now-1);
end;

procedure TFormDadosConf.FormActivate(Sender: TObject);
begin
EditUsuario.Enabled:=false;
Editusuario.KeyValue:='';
EditUsuario.Enabled:=true;
with pai.QrAcertador do
    begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from TB_MonAce');
          Sql.Add('Where Ace_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('COD_COLIGADA').AsString));
          Sql.Add('and Ace_Status = ' + QuotedStr('1'));
          Sql.Add('Order by Ace_des');
          Open;
    end;
WITH PAI.QrTipLinCompl do
       begin
             close;
             Sql.Clear;
             Sql.Add('Select * from Tb_MonTipLin A, Tb_MonParam B');
             Sql.Add('Where B.Par_Cod = A.Tli_Cod');
             Sql.Add('And Tli_Coligada = ' + quotedStr(DtColigada.dataset.fieldbyname('Cod_coligada').AsString));
             Open;
       end;


end;

procedure TFormDadosConf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtAcertador.DataSet.Close;
DtSistema.DataSet.Close;
action:=Cafree;
end;

end.
