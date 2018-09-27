unit UnitCadastraOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, ComCtrls, DB, pngimage,
  ExtCtrls;

type
  TFormCadastraOcorrencias = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    EditChapa: TDBLookupComboBox;
    EditNome: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Image1: TImage;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText1: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DtColigada: TDataSource;
    DtProfissional: TDataSource;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DtReclamacao: TDataSource;
    DtVale: TDataSource;
    DBGrid4: TDBGrid;
    DBMemo3: TDBMemo;
    DtAvaria: TDataSource;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    DBGrid3: TDBGrid;
    DBMemo4: TDBMemo;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    DtMultas: TDataSource;
    DBGrid5: TDBGrid;
    DBMemo5: TDBMemo;
    DtAcidentes: TDataSource;
    DBGrid6: TDBGrid;
    DBMemo6: TDBMemo;
    DtAutos: TDataSource;
    Image2: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditNomeClick(Sender: TObject);
    procedure EditChapaClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure EditChapaEnter(Sender: TObject);
    procedure EditNomeEnter(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure EditChapaKeyPress(Sender: TObject; var Key: Char);
    procedure EditNomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraOcorrencias: TFormCadastraOcorrencias;
   ProfissionalAtual: string;
implementation

uses UnitLancaDebito, telaentrada, UnPai;

{$R *.dfm}

procedure TFormCadastraOcorrencias.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := CrHourGlass;
  Profissionalatual := DtProfissional.DataSet.FieldByName('COD_PRO').AsString;
if DtProfissional.DataSet.FieldByName('TIPO_PRO').AsString = 'D' then
    Image1.Visible := TRUE
    ELSE
    Image1.Visible := fALSE;

with Pai.Qrvales Do
     Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * From Tb_Vales where VALE_CHAPA = ' + (profissionalatual) +' order by vale_data desc;');
     Open;
     End;

     {with Mae.QrAvarias Do
     Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * From Tb_aVARIAS where AVARIA_CHAPA = ' + (profissionalatual) +' order by Avaria_data desc;');
     Open;
     End;
with Mae.QrReclamacao Do
     Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * From Tb_Reclamacoes where Recl_CHAPA = ' + (profissionalatual) +' order by Recl_data desc;');
     Open;
     End;
with Mae.QrMultas Do
     Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * From Tb_Multas where Mul_CHAPA = ' + (profissionalatual) +' order by Mul_data desc;');
     Open;
     End;
with Mae.QrAcidentes Do
     Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * From Tb_Acidentes where Aci_CHAPA = ' + (profissionalatual) +' order by Aci_data desc;');
     Open;
     End;
with Mae.QrAutos Do
     Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * From Tb_AutoInfracao where Aut_CHAPA = ' + (profissionalatual) +' order by Aut_data desc;');
     Open;
     End;

   }
GroupBox4.Visible := TRUE; GroupBox1.Enabled := TRUE;
Screen.Cursor := CrDefault;

end;

procedure TFormCadastraOcorrencias.EditChapaClick(Sender: TObject);
begin
BitBtn1.Enabled:=true;
EditNome.KeyValue := Null;

end;

procedure TFormCadastraOcorrencias.EditChapaEnter(Sender: TObject);
begin
        GroupBox1.Enabled:=False;
        GroupBox4.Visible:=False;

end;

procedure TFormCadastraOcorrencias.EditChapaKeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
  BEGIN
    KEY:=#0;
    BitBtn1.Click;
  END;

end;

procedure TFormCadastraOcorrencias.EditNomeClick(Sender: TObject);
begin
BitBtn1.Enabled:=true;
EditChapa.KeyValue := Null;
end;

procedure TFormCadastraOcorrencias.EditNomeEnter(Sender: TObject);
begin
        GroupBox1.Enabled:=False;
        GroupBox4.Visible:=False;

end;

procedure TFormCadastraOcorrencias.EditNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
  BEGIN
    KEY:=#0;
    BitBtn1.Click;
  END;

end;

procedure TFormCadastraOcorrencias.FormActivate(Sender: TObject);
begin
With Pai.QrProfissionais Do
    begin
    Close;
    Sql.Clear;
    Sql.Add('Select Dt_Admissao, Tipo_Pro,Cod_pro,Cha_pro,Nom_Pro, Ativo_pro,Fun_Pro, Cod_Funcao, Des_Funcao From TB_Profissionais A, TB_Funcao B');
    Sql.Add('Where a.Fun_Pro = B.Cod_Funcao and Ativo_Pro = '  + QuotedStr('A'));
    Sql.Add('And COD_COLIGADA = ' + DTCOLIGADA.DataSet.FieldByName('COD_COLIGADA').AsString);
    Sql.Add('order By Nom_PRO');
    Open;
    end;

{With DtProfissional.DataSet Do
    begin
    Filter:='COD_COLIGADA = ' + DTCOLIGADA.DataSet.FieldByName('COD_COLIGADA').AsString;
    FILTERED:=TRUE;
    OPEN;
    end;}

end;

procedure TFormCadastraOcorrencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtProfissional.DataSet.Close;
//DtReclamacao.DataSet.Close;
DtVale.DataSet.Close;
//DtAvaria.DataSet.Close;
//DtMultas.DataSet.Close;
//DtAcidentes.DataSet.Close;
//DtAutos.DataSet.Close;

Action:=Cafree;
end;

procedure TFormCadastraOcorrencias.SpeedButton10Click(Sender: TObject);
begin
DtAcidentes.DataSet.Insert;
DtAcidentes.DataSet.FieldByName('Aci_chapa').AsString:= DtProfissional.DataSet.FieldByName('cod_Pro').AsString;
DtAcidentes.DataSet.FieldByName('Aci_Resumo').AsString:='VEICULO -----, Linha ----, Hora --:--';
//Application.CreateForm(TFormlancaAcidentes, FormlancaAcidentes);
//FormlancaAcidentes.ShowModal;

end;

procedure TFormCadastraOcorrencias.SpeedButton11Click(Sender: TObject);
begin
if FormEntrada.Nivel > 4 then
   begin
    if MessageDlg('Você realmente quer apagar o registro selecionado ? '+#13+#13+ 'Na dúvida não faça isao !', MtConfirmation,[mbyes, mbNo],0) = MrYes then
        begin
        DtAcidentes.DataSet.Delete;
        end;
   End
   Else
     MessageBox(Handle,'Seu usuário não pode fazer isso, Contate o RH ou Depto Pessoal !','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormCadastraOcorrencias.SpeedButton13Click(Sender: TObject);
begin
DtAutos.DataSet.Insert;
DtAutos.DataSet.FieldByName('aut_chapa').AsString:= DtProfissional.DataSet.FieldByName('cod_Pro').AsString;
DtAutos.DataSet.FieldByName('Aut_Resumo').AsString:='VEICULO -----, Linha ----, Hora --:--';
//Application.CreateForm(TFormlancaAutos, FormlancaAutos);
//FormlancaAutos.ShowModal;

end;

procedure TFormCadastraOcorrencias.SpeedButton14Click(Sender: TObject);
begin
if FormEntrada.Nivel > 4 then
   begin
    if MessageDlg('Você realmente quer apagar o registro selecionado ? '+#13+#13+ 'Na dúvida não faça isao !', MtConfirmation,[mbyes, mbNo],0) = MrYes then
        begin
        DtAutos.DataSet.Delete;
        end;
   End
   Else
     MessageBox(Handle,'Seu usuário não pode fazer isso, Contate o RH ou Depto Pessoal !','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormCadastraOcorrencias.SpeedButton16Click(Sender: TObject);
begin
DtAvaria.DataSet.Insert;
DtAvaria.DataSet.FieldByName('Avaria_chapa').AsString:= DtProfissional.DataSet.FieldByName('cod_Pro').AsString;
DtAvaria.DataSet.FieldByName('Avaria_Resumo').AsString:='VEICULO ----';
//Application.CreateForm(TFormlancaAvaria, FormlancaAvaria);
//FormlancaAvaria.ShowModal;

end;

procedure TFormCadastraOcorrencias.SpeedButton17Click(Sender: TObject);
begin
if FormEntrada.Nivel > 4 then
   begin
    if MessageDlg('Você realmente quer apagar o registro selecionado ? '+#13+#13+ 'Na dúvida não faça isao !', MtConfirmation,[mbyes, mbNo],0) = MrYes then
        begin
        DtAvaria.DataSet.Delete;
        end;
   End
   Else
     MessageBox(Handle,'Seu usuário não pode fazer isso, Contate o RH ou Depto Pessoal !','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormCadastraOcorrencias.SpeedButton19Click(Sender: TObject);
begin
DtMultas.DataSet.Insert;
DtMultas.DataSet.FieldByName('Mul_chapa').AsString:= DtProfissional.DataSet.FieldByName('cod_Pro').AsString;
DtMultas.DataSet.FieldByName('Mul_Resumo').AsString:='VEICULO -----, Linha ----';
//Application.CreateForm(TFormlancaMulta, FormlancaMulta);
//FormlancaMulta.ShowModal;

end;

procedure TFormCadastraOcorrencias.SpeedButton1Click(Sender: TObject);
begin
DtReclamacao.DataSet.Insert;
DtReclamacao.DataSet.FieldByName('recl_chapa').AsString:= DtProfissional.DataSet.FieldByName('cod_Pro').AsString;
//Application.CreateForm(TFormlancaReclamacao, FormlancaReclamacao);
//FormlancaReclamacao.ShowModal;
end;

procedure TFormCadastraOcorrencias.SpeedButton20Click(Sender: TObject);
begin
if FormEntrada.Nivel > 4 then
   begin
    if MessageDlg('Você realmente quer apagar o registro selecionado ? '+#13+#13+ 'Na dúvida não faça isao !', MtConfirmation,[mbyes, mbNo],0) = MrYes then
        begin
        DtMultas.DataSet.Delete;
        end;
   End
   Else
     MessageBox(Handle,'Seu usuário não pode fazer isso, Contate o RH ou Depto Pessoal !','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormCadastraOcorrencias.SpeedButton2Click(Sender: TObject);
begin
if FormEntrada.Nivel > 4 then
   begin
    if MessageDlg('Você realmente quer apagar o registro selecionado ? '+#13+#13+ 'Na dúvida não faça isao !', MtConfirmation,[mbyes, mbNo],0) = MrYes then
        begin
        DtReclamacao.DataSet.Delete;
        end;
   End
   Else
     MessageBox(Handle,'Seu usuário não pode fazer isso, Contate o RH ou Depto Pessoal !','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormCadastraOcorrencias.SpeedButton5Click(Sender: TObject);
begin
if FormEntrada.Nivel > 4 then
   begin
    if MessageDlg('Você realmente quer apagar o registro selecionado ? '+#13+#13+ 'Na dúvida não faça isao !', MtConfirmation,[mbyes, mbNo],0) = MrYes then
        begin
        DtVale.DataSet.Delete;
        end;
   End
   Else
     MessageBox(Handle,'Seu usuário não pode fazer isso, Contate o RH ou Depto Pessoal !','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormCadastraOcorrencias.SpeedButton6Click(Sender: TObject);
begin
Dtvale.DataSet.Insert;
DtVale.DataSet.FieldByName('Vale_chapa').AsString:= DtProfissional.DataSet.FieldByName('cod_Pro').AsString;
Application.CreateForm(TFormlancadebito, FormlancaDebito);
FormlancaDebito.ShowModal;


end;

end.
