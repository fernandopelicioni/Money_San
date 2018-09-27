unit UnitLiberaTaloes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormLancaTaloes = class(TForm)
    DtTaloes: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    EditResp: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DtPro: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditRespKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaTaloes: TFormLancaTaloes;
  Resp:string;
implementation

uses UnPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormLancaTaloes.BitBtn1Click(Sender: TObject);
Var
Talao:integer;
begin

      talao:=StrToInt(Edit1.Text);
      while Talao <= StrToInt(Edit2.Text) do
           begin
                  DtTaloes.DataSet.Open;
                  DtTaloes.DataSet.Insert;
                  DtTaloes.DataSet.FieldByName('Ttl_Cod').AsString:=IntToStr(talao);
                  DtTaloes.DataSet.FieldByName('Ttl_data').AsString:=MaskEdit1.Text;
                  DtTaloes.DataSet.FieldByName('Ttl_Status').AsString:='A';
                  DtTaloes.DataSet.FieldByName('Ttl_RESP').AsString:=DtPro.DataSet.FieldByName('Cod_pro').AsString;
                  try
                        DtTaloes.DataSet.Post;
                  Except
                        DtTaloes.DataSet.Cancel;
                        ShowMessage('Algum campo não foi preenchido, Ou talão ja foi Gerado, verifique e tente de novo');
                  end;
                  Talao:=Talao+1;
           end;
           if MessageDlg('Deseja imprimir o Recibo de Entrega dos Talões Agora?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
                begin
                      With Relatorio.QrTalao do
                          Begin
                               Close;
                               Sql.clear;
                               Sql.Add('select a.*, B.Nom_pro,B.Cha_pro from tb_monTaloes A');
                               Sql.Add('Left Join Tb_Profissionais B On B.Cod_pro = A.TTl_Resp');
                               Sql.Add('where TTl_Status = ' + QuotedStr('A'));
                               Sql.Add('And TTl_Resp = ' + QuotedStr(resp));
                               Sql.Add('and TTl_Data = ' + QuotedStr(MaskEdit1.Text));
                               Open;
                           End;
                           Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                           Relatorio.Projeto.ExecuteReport('RvTaloes');
                           Relatorio.Projeto.Close;
                end;

edit1.Text:='';
Edit2.Text:='';
EditResp.Text:='';
MaskEdit1.Text:='';
Edit2.Enabled:=false;
EditResp.Enabled:=false;
MaskEdit1.Enabled:=false;
end;

procedure TFormLancaTaloes.BitBtn2Click(Sender: TObject);
begin
      DtTaloes.DataSet.Cancel;
      close;
end;

procedure TFormLancaTaloes.BitBtn3Click(Sender: TObject);
begin
        GroupBox1.Enabled:=true;
        Edit1.SetFocus;
end;

procedure TFormLancaTaloes.BitBtn4Click(Sender: TObject);
begin
        if MessageDlg('Deseja mesmo excluir este talão ?',mtConfirmation,[mbyes,mbno],0) = mryes then
               begin
                     DtTaloes.DataSet.Delete;
               end;
end;

procedure TFormLancaTaloes.BitBtn5Click(Sender: TObject);
Var data : string;
begin
         if MessageDlg('Deseja imprimir o Recibo de Entrega dos Talões Agora?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
               begin
                    Resp:=DtTaloes.DataSet.FieldByName('Ttl_resp').AsString;
                    Data:=DtTaloes.DataSet.FieldByName('Ttl_Data').Asstring;
                    With Relatorio.QrTalao do
                         Begin
                               Close;
                               Sql.clear;
                               Sql.Add('select a.*, B.Nom_pro,B.Cha_pro from tb_monTaloes A');
                               Sql.Add('Left Join Tb_Profissionais B On B.Cod_pro = A.TTl_Resp');
                               Sql.Add('where TTl_Status = ' + QuotedStr('A'));
                               Sql.Add('And TTl_Resp = ' + QuotedStr(resp));
                               Sql.Add('and TTl_Data = ' + QuotedStr(Data));
//                               memo1.Text:=sql.Text;
                               Open;
                         End;
                    Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                    Relatorio.Projeto.ExecuteReport('RvTaloes');
                    Relatorio.Projeto.Close;
               end;
end;

procedure TFormLancaTaloes.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
     begin
           key:=#0;
           if Edit1.Text = '' then
                edit1.SetFocus
                else
                begin
                      Edit2.Enabled:=true;
                      Edit2.SetFocus;
                end;

     end;
end;

procedure TFormLancaTaloes.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
     begin
           key:=#0;
           if Edit2.Text = '' then
                edit2.SetFocus
                else
                begin
                      if StrToInt(Edit2.Text) < StrToInt(Edit1.Text) then
                           begin
                                 ShowMessage('Numeração final não pode ser menor que a inicial');
                                 Edit2.Text:='';
                                 Edit1.SetFocus;
                           end
                           else
                           begin
                                  EditResp.Enabled:=true;
                                  EditResp.SetFocus;
                           end;
                end;

     end;

end;

procedure TFormLancaTaloes.EditRespKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
     begin
           key:=#0;
           With Pai.QrPro do
                Begin
                      Close;
                      Sql.Clear;
                      Sql.Add('select Nom_pro, Cod_pro, Cha_pro FROM TB_Profissionais');
                      Sql.Add('where ativo_pro = ' + QuotedStr('A'));
                      Sql.Add('And Cha_pro like ' + QuotedStr('%' + EditResp.Text));
                      Open;
                      if not eof then
                            begin
                                   Resp:=DtPro.DataSet.FieldByName('cod_pro').AsString;
                                   MaskEdit1.Enabled:=true;
                                   MaskEdit1.SetFocus;
                            end
                            else
                            begin
                                   ShowMessage('Não há colaborador registrado com essa matricula');
                                   EditResp.SetFocus;
                            end;
               End;
    end;
end;

procedure TFormLancaTaloes.FormActivate(Sender: TObject);
begin
DtTaloes.DataSet.Open;
end;

procedure TFormLancaTaloes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtTaloes.DataSet.Cancel;
action:=cafree;
end;

end.
