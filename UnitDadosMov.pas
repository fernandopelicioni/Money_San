unit UnitDadosMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, Buttons, XPMan, dblookup,
  ActnMan, ActnColorMaps, ComCtrls, ExtCtrls, Grids, DBGrids, pngimage, ADODB;

type
  TFormDadosMov = class(TForm)
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
    Image1: TImage;
    ChkRecibo: TCheckBox;
    ChkDebito: TCheckBox;
    Panel3: TPanel;
    Image8: TImage;
    QrParamGlobal: TADOQuery;
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
    procedure ChkReciboClick(Sender: TObject);
    procedure Image8Click(Sender: TObject);
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
  FormDadosMov: TFormDadosMov;
implementation

uses UnPai, UnitLancamento, UnitLancamentoBSE;

{$R *.dfm}

procedure TFormDadosMov.editdataKeyPress(Sender: TObject; var Key: Char);
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
       ShowMessage('Preste Aten��o, Esta data � bem diferente da data de hoje, Acho que voce teclou a data errada');
       end;
     DBLookupComboBox1.SetFocus;
   end;
end;

procedure TFormDadosMov.editusuarioKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormDadosMov.btcancelClick(Sender: TObject);
begin
DtAcertador.dataSet.close;
Close;
end;

procedure TFormDadosMov.btokClick(Sender: TObject);
begin
if QrParamGlobal.FieldByName('ativacao').AsDateTime < EditData.Date then
     begin
            MessageBox(0, 'Seu sistema est� com prazo de validade expirada, contate o administrador para renova��o e atualiza��o;'+#13+#10+''+#13+#10+'Fernando Pelicioni'+#13+#10+'Genoma Software'+#13+#10+'27 98115 0685', 'Necess�rio renovar a licen�a', MB_ICONSTOP or MB_OK);
            abort;
     end;




With pai.QrCaixa do
     Begin
        Close;
         Sql.Clear;
          Sql.Add('set language brazilian Select * from tb_monCaixa');
           Sql.Add('Where Mcx_Data = ' + QuotedStr(DateToStr(EditData.Date)));
            Sql.Add('And Mcx_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
             Sql.Add('And (Mcx_Status = ' + QuotedStr('A') + ' OR Mcx_Status = ' + QuotedStr('R')+')');
//              ShowMessage(Sql.Text);
              Open;
              if Not Eof then
                    begin
                         hide;
                          If EditUsuario.Text = '' then EditUsuario.SetFocus;
                           usuario:=EditUsuario.Keyvalue;
                            dialancamento:=(editdata.date);
                             nome:=DtAcertador.DataSet.fieldbyname('ACE_Des').AsString;
                              if Edit1.Text = DtAcertador.DataSet.FieldByName('Ace_Senha').AsString then
                                    begin
                                          Application.CreateForm(TFormLancamentobsE, FormlancamentoBSe);
                                           formLancamentoBSE.ShowModal;
                                    end
                                    else
                                    begin
                                          MessageBox(Handle,'Senha n�o confere','Erro de Senha',mb_IconInformation+mb_ok);
                                          Close;
                                          FormDadosMov.Close;
                                    end;
                    end
                    Else
                    begin
                           ShowMessage('O caixa para este dia n�o est� aberto, ser� necess�rio Abri-lo ou Reabri-lo !');
                            EditUsuario.KeyValue:=null;
                             Edit1.Text:='';
                    end;
     End;

end;

procedure TFormDadosMov.ChkReciboClick(Sender: TObject);
begin
if ChkRecibo.Checked = false then
     ChkDebito.Enabled:=false
     Else
     ChkDebito.Enabled:=true;

end;

procedure TFormDadosMov.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
           key:=#0;
            EditUsuario.SetFocus;

    end;
end;

procedure TFormDadosMov.FormShow(Sender: TObject);
begin
EditData.Date:=(now);
//Editusuario.Text:=' ';

EditData.SetFocus;
end;

procedure TFormDadosMov.Image8Click(Sender: TObject);
begin
    close;
end;

procedure TFormDadosMov.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
           key:=#0;
           btok.SetFocus;
    end;

end;

procedure TFormDadosMov.EditDataEnter(Sender: TObject);
var
HoraAtual:TTime;
begin
HoraAtual:=Time;
IF HoraAtual < StrtoTime('05:00:00') then
    EditData.Date:=(Now-1);
end;

procedure TFormDadosMov.FormActivate(Sender: TObject);
begin
EditUsuario.Enabled:=false;
Editusuario.KeyValue:='';
EditUsuario.Enabled:=true;
QrParamGlobal.Open;
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

procedure TFormDadosMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtAcertador.DataSet.Close;
DtSistema.DataSet.Close;
QrParamGlobal.close;
action:=Cafree;
end;

end.
