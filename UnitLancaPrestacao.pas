unit UnitLancaPrestacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, pngimage, ExtCtrls, Buttons, DB, ADODB;

type
  TFormLancaPrestacao = class(TForm)
    GroupBox6: TGroupBox;
    Label3: TLabel;
    Image5: TImage;
    Label10: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    EditBcd: TEdit;
    EditVeiculo: TEdit;
    Label1: TLabel;
    DBText1: TDBText;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    EditMalote: TEdit;
    Image2: TImage;
    EditVT: TEdit;
    EditPE: TEdit;
    Label6: TLabel;
    EditDinheiro: TEdit;
    Label7: TLabel;
    EditPL: TEdit;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    EditMatricula: TEdit;
    Label8: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    BitBtn2: TBitBtn;
    Btcancel: TBitBtn;
    BitBtn3: TBitBtn;
    QrMov: TADOQuery;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    EditLinha: TEdit;
    Label12: TLabel;
    DtColigada: TDataSource;
    DtLinhas: TDataSource;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DtVeiculos: TDataSource;
    Label13: TLabel;
    Label14: TLabel;
    DtProfissionais: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditBcdKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtcancelClick(Sender: TObject);
    procedure EditVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure EditMaloteKeyPress(Sender: TObject; var Key: Char);
    procedure EditVTKeyPress(Sender: TObject; var Key: Char);
    procedure EditPEKeyPress(Sender: TObject; var Key: Char);
    procedure EditPLKeyPress(Sender: TObject; var Key: Char);
    procedure EditLinhaKeyPress(Sender: TObject; var Key: Char);
    procedure EditDinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure EditDinheiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditPEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditVTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditMaloteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditLinhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVeiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMatriculaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaPrestacao: TFormLancaPrestacao;

implementation

uses UnPai, UnitDadosConf, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormLancaPrestacao.BitBtn1Click(Sender: TObject);
begin
Btcancel.Click;
GroupBox1.Enabled:=true;
EditBcd.SetFocus;
end;

procedure TFormLancaPrestacao.BitBtn2Click(Sender: TObject);
begin
if QrMov.State = DsInsert then
       begin
              QrMov.FieldByName('Mcf_Bcd').AsString:=EditBcd.Text;
              QrMov.FieldByName('Mcf_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
              QrMov.FieldByName('Mcf_DataHora').AsString:=DateTimeToStr(now);
              QrMov.FieldByName('Mcf_Malote').AsString:=EditMalote.Text;
              QrMov.FieldByName('Mcf_vEICULO').AsString:=EditVeiculo.Text;
              QrMov.FieldByName('Mcf_Especie').AsString:=EditDinheiro.Text;
              QrMov.FieldByName('Mcf_VT').AsString:=EditVT.Text;
              QrMov.FieldByName('Mcf_PE').AsString:=EditPe.Text;
              QrMov.FieldByName('Mcf_Resp').AsString:=DtProfissionais.DataSet.FieldByName('Cod_Pro').AsString;
              QrMov.FieldByName('Mcf_Caixa').AsString:=FormDadosConf.DtAcertador.DataSet.FieldByName('Ace_Cod').AsString;
              QrMov.FieldByName('Mcf_Livre').AsString:=EditPL.Text;
              QrMov.Post;
              QrMov.Close;
              With Relatorio.QrMovConf do
                   begin
                         Close;
                          Sql.Clear;
                           Sql.Add('Select A.*, B.Nom_Pro, Cha_Pro, C.* from tb_monConferencia A, Tb_Profissionais B, Tb_MonAce C');
                            Sql.Add('Where C.Ace_Cod = A.Mcf_Caixa and B.Cod_Pro = A.Mcf_Resp');
                             Sql.Add('And Mcf_Cod = (Select MAx(Mcf_Cod) from tb_monConferencia where mcf_Coligada = '+QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString)+')');
                              Open;
                               Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                               Relatorio.Projeto.ExecuteReport('RvReciboConf');
                   end;
              end;

              Btcancel.Click;
              BitBtn1.SetFocus;
end;

procedure TFormLancaPrestacao.BitBtn3Click(Sender: TObject);
begin
DtLinhas.DataSet.Close;
DtVeiculos.DataSet.Close;
QrMov.Close;
Close;
end;

procedure TFormLancaPrestacao.BtcancelClick(Sender: TObject);
begin
EditBcd.Text:='';
EditVeiculo.Text:='';
EditLinha.Text:='';
EditMalote.Text:='';
EditVt.Text:='';
EditPe.Text:='';
EditPl.Text:='';
EditDinheiro.Text:='';
EditMatricula.Text:='';
editveiculo.Enabled:=false;
GroupBox1.Enabled:=false;
GroupBox2.Enabled:=false;
GroupBox3.Enabled:=false;
QrMov.Cancel;
QrMov.Close;
DtLinhas.DataSet.Close;
DtVeiculos.DataSet.Close;
end;

procedure TFormLancaPrestacao.EditBcdKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
      Begin
              Key:=#0;
              SpeedButton1.Click;
      End;
end;

procedure TFormLancaPrestacao.EditDinheiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
    begin
          EditPl.SetFocus;
    end;
end;

procedure TFormLancaPrestacao.EditDinheiroKeyPress(Sender: TObject;
  var Key: Char);
var resto, valor, tarifa :real;
  begin
if key =#13 then
    begin
         key:=#0;
         if EditDinheiro.Text = '' then
              begin
              EditDinheiro.Text:='0';
               GroupBox3.Enabled:=true;
                EditMatricula.Enabled:=true;
                 EditMatricula.SetFocus;
              end
              else
              begin

                      valor:=StrToFloat(EditDinheiro.Text);
                      Tarifa := StrToFloat(DtLinhas.DataSet.FieldByName('TLI_TARIFAATUAL').AsString);
                      resto:= valor/tarifa;
                      if StrToInt(Copy(FormatFloat('0000.00',Resto),6,2)) <> 0 then
                              begin
                                   if messageDlg('O valor em dinheiro informado, Não corresponde a um valor múltiplo de tarifa, deseja continuar mesmo assim?',mtConfirmation,[mbyes,mbno],0) = mryes then
                                              begin
                                                      GroupBox3.Enabled:=true;
                                                       EditMatricula.Enabled:=true;
                                                        EditMatricula.SetFocus;
                                              End
                                     else
                                              begin
                                                       EditDinheiro.Text:='';
                                                        EditDinheiro.SetFocus;
                                                         GroupBox3.Enabled:=false;
                                              End;
                               end
                               else
                                    begin
                                           GroupBox3.Enabled:=true;
                                            EditMatricula.Enabled:=true;
                                             EditMatricula.SetFocus;
                                    End;

              end;

    end;

end;

procedure TFormLancaPrestacao.EditLinhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
    begin
          EditVeiculo.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.EditLinhaKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
   begin
    key:=#0;
     with Pai.QrLinhasCompletas Do
         Begin
             Close;
              Sql.Clear;
               Sql.Add('Select * from Tb_MonLin A, Tb_MonTipLin B');
                Sql.Add('Where B.TLI_Cod = A.Lin_Tipo');
                 Sql.Add('And A.Lin_Cod = ' + QuotedStr(EditLinha.Text));
                  Sql.Add('And TLI_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                   Sql.Add('And B.TLi_Cod = ' + QuotedStr(FormDadosConf.DtSIstema.DataSet.FieldByName('TLI_Cod').AsString));
                    Sql.Add('And A.Lin_Status = ' + QuotedStr('A'));
                    Open;
             if Not Eof then
                    begin
                           GroupBox2.Enabled:=true;
                            GroupBox1.Enabled:=false;
                             EditMalote.Enabled:=true;
                              Editmalote.SetFocus;
                    End
                    Else
                    Begin
                           MessageBox(handle,'Linha não Encontrada ou pertence a outra Coligada !','Atenção !!!', MB_IconInformation + MB_OK);
                            editLinha.text:='';
                             EditLinha.SetFocus;
                    End;

                end;

   end;

end;

procedure TFormLancaPrestacao.EditMaloteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
    begin
          GroupBox1.Enabled:=true;
          GroupBox2.Enabled:=false;
          EditLinha.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.EditMaloteKeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
    begin
         key:=#0;
         if Editmalote.Text = '' then editmalote.Text:='0';
          EditVt.SetFocus;

    end;
end;

procedure TFormLancaPrestacao.EditMatriculaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
    begin
          GroupBox2.Enabled:=true;
          GroupBox3.Enabled:=false;
          EditDinheiro.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.EditMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
         Key:=#0;
         With Pai.QrProfissionais do
              Begin
                   Close;
                    Sql.Clear;
                     Sql.Add('Select A.Nom_Pro, A.Cha_Pro, A.Cod_pro, A.Ativo_pro, A.Pro_IntMon, B.FUN_INTMON from tb_profissionais A, Tb_Funcao B');
                      Sql.Add('Where A.Cod_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                       Sql.Add('And B.Cod_Funcao = A.Fun_Pro');
                         Sql.Add('And B.Fun_IntMon = ' + QuotedStr('S'));
                          Sql.Add('And A.Ativo_pro = ' + QuotedStr('A'));
                           Sql.Add('And A.Cha_Pro = ' + QuotedStr(EditMatricula.Text));
                            open;
                   if not eof then
                        begin
                             BitBtn2.SetFocus;
                        end
                        else begin
                              MessageBox(handle,'Não encontrei ninguém com esse Registro !'+#13+#13+ 'Tente de novo','Algo está errado',mb_IconInformation+mb_ok);
                              EditMatricula.SetFocus;
                        end;
              End;
end;

end;

procedure TFormLancaPrestacao.EditPEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
    begin
          EditVT.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.EditPEKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
    begin
         key:=#0;
         if EditPE.Text = '' then editPE.Text:='0';
          EditPL.SetFocus;

    end;

end;

procedure TFormLancaPrestacao.EditPLKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
    begin
          EditPe.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.EditPLKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
    begin
         key:=#0;
         if EditPl.Text = '' then editPl.Text:='0';
          EditDinheiro.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.EditVeiculoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
    begin
          BitBtn1.Click;
    end;

end;

procedure TFormLancaPrestacao.EditVeiculoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
       begin
             Key:=#0;
              if EditVeiculo.Text <> '' then
                     begin
                            With pai.QrVeiculos do
                                 begin
                                      Close;
                                       Sql.Clear;
                                        Sql.Add('select Vei_Nun, Vei_Placa, Vei_Coligada from Tb_Veiculos');
                                         Sql.Add('where VEI_NUN = ' + QuotedStr(EditVeiculo.Text));
                                          Sql.Add('and Vei_IntMon = ' + QuotedStr('S'));
                                           open;
                                           if not Eof then
                                                 begin
                                                        EditLinha.Enabled:=true;
                                                         EditLinha.SetFocus;
                                                 end
                                           else
                                                 begin
                                                         ShowMessage('Veículo não é Válido');
                                                          Editveiculo.Text:='';
                                                           EditVeiculo.SetFocus;
                                                 end;
                                  end;
                     end;
       end;
end;

procedure TFormLancaPrestacao.EditVTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
    begin
          EditMalote.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.EditVTKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
    begin
         key:=#0;
         if EditVt.Text = '' then editVt.Text:='0';
          EditPE.SetFocus;
    end;

end;

procedure TFormLancaPrestacao.FormActivate(Sender: TObject);
begin
Height:=Screen.Height;
Width:=Screen.Width;
Timer1Timer(nil);
Label19.Caption:=DateToStr(FormDadosConf.dialancamento);

end;

procedure TFormLancaPrestacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FormDadosConf.Close;
action:=cafree;
end;

procedure TFormLancaPrestacao.SpeedButton1Click(Sender: TObject);
begin
      if EditBcd.Text <> '' then
               Begin
                       With QrMov do
                            begin
                                   Close;
                                    Sql.Clear;
                                     Sql.Add('Select * from tb_monConferencia');
                                      Sql.Add('Where Mcf_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                                       Sql.Add('And Mcf_Bcd = ' + QuotedStr(EditBcd.Text));
                                        Open;
                                         if Not Eof then
                                              begin
                                                     ShowMessage('Já existe uma conferencia direcionada a este boletim, por questões de segurança, não é possível emitir um novo comprovante');
                                                      BitBtn1.Click;
                                              end
                                          Else
                                              Begin
                                                      QrMov.Insert;
                                                      EditVeiculo.Enabled:=true;
                                                      EditVeiculo.SetFocus;
                                              End;

                            end;
               End;
end;

procedure TFormLancaPrestacao.Timer1Timer(Sender: TObject);
begin
Label3.Caption:=Copy(DateTimeToStr(Now),1,16);
end;

end.
