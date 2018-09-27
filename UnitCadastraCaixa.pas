unit UnitCadastraCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, Mask, pngimage,
  Buttons;

type
  TFormCadastraCaixa = class(TForm)
    Panel1: TPanel;
    DtAcertador: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    DtColigada: TDataSource;
    Edit2: TEdit;
    DBCheckBox2: TDBCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraCaixa: TFormCadastraCaixa;
         senhaatual: string;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormCadastraCaixa.BitBtn1Click(Sender: TObject);
begin
if (DtAcertador.DataSet.State = Dsinsert) then
   begin
         GroupBox1.Enabled:=False;
         if Edit1.Text = Edit2.text then
                  begin
                  Dtacertador.DataSet.FieldByName('Ace_Senha').AsString:=Edit1.Text;
                  DtAcertador.DataSet.Post
                  end
                  else
                  begin
                    ShowMessage('Senhas não conferem, repita o processo de inclusão');
                    DtAcertador.DataSet.Cancel;
                    GroupBox1.Enabled:=false;
                  end;
                  
   end;
if (DtAcertador.DataSet.State = DsEdit) then   
    begin
         GroupBox1.Enabled:=False;
         SenhaAtual:= InputBox('Alteração de Senha','Digite a Senha Anterior:','? ');
           if senhaAtual = Edit1.text then 
               begin
                     if Edit1.Text = Edit2.text then
                            begin
                                Dtacertador.DataSet.FieldByName('Ace_Senha').AsString:=Edit1.Text;
                                DtAcertador.DataSet.Post
                             end
                             else
                             begin
                                   ShowMessage('Senhas não conferem, repita o processo de inclusão');
                                   DtAcertador.DataSet.Cancel;
                                   GroupBox1.Enabled:=false;
                             end;
               end
               else
               begin
                       ShowMessage('Senhas Informada não é igual a cadastrada, Você não pode continuar');
                       DtAcertador.DataSet.Cancel;
                       GroupBox1.Enabled:=false;
               end;

    end;
end;

procedure TFormCadastraCaixa.BitBtn2Click(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtAcertador.DataSet.Cancel;
DtAcertador.DataSet.Insert;
DtAcertador.DataSet.FieldByName('Ace_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
end;

procedure TFormCadastraCaixa.DBGrid1DblClick(Sender: TObject);
begin
SenhaAtual:=DtAcertador.DataSet.FieldByName('Ace_Senha').AsString;
DtAcertador.DataSet.Edit;
GroupBox1.Enabled:=true;
DbEdit1.SetFocus;
end;

procedure TFormCadastraCaixa.FormActivate(Sender: TObject);
begin
with pai.QrAcertador do
    begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from TB_MonAce');
          Sql.Add('Where Ace_Coligada = ' +  QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
          Sql.Add('Order by Ace_des');
          Open;
    end;
end;

procedure TFormCadastraCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DtAcertador.DataSet.Close;
    Action:=cafree;

end;

end.
