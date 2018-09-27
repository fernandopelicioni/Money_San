unit UnitLancaPmc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, StdCtrls, ExtCtrls, ADODB, DBCtrls, Mask, ComCtrls;

type
  TFormLancaPMC = class(TForm)
    Panel1: TPanel;
    Editvei: TEdit;
    SpeedButton1: TSpeedButton;
    DtPMC: TDataSource;
    DtColigada: TDataSource;
    QrVeiculo: TADOQuery;
    QrVeiculoVEI_NUN: TWideStringField;
    QrVeiculoVEI_PLACA: TWideStringField;
    QrVeiculoVEI_AQUISICAO: TDateTimeField;
    QrVeiculoVEI_PADRAO: TSmallintField;
    QrVeiculoVEI_GRUPO: TSmallintField;
    QrVeiculoVEI_CAMPOLIVRE: TWideStringField;
    QrVeiculoVEI_CENTROCUSTO: TStringField;
    QrVeiculoVEI_CHASSINUM: TWideStringField;
    QrVeiculoVEI_CHASSIANO: TWideStringField;
    QrVeiculoVEI_MODCHA: TSmallintField;
    QrVeiculoVEI_CARMOD: TSmallintField;
    QrVeiculoVEI_CARANO: TWideStringField;
    QrVeiculoVEI_OPERADOR: TWideStringField;
    QrVeiculoVEI_COLIGADA: TWordField;
    QrVeiculoCAR_COD: TSmallintField;
    QrVeiculoCAR_DES: TWideStringField;
    QrVeiculoMOD_COD: TSmallintField;
    QrVeiculoMOD_DES: TWideStringField;
    QrVeiculoMOD_MEDCOMBUSTIVEL: TBCDField;
    QrVeiculoMOD_MEDKM: TIntegerField;
    QrVeiculoMOD_EIXOS: TWordField;
    QrVeiculoMOD_MEDCOMMAX: TBCDField;
    QrVeiculoTIN_VEI: TWideStringField;
    QrVeiculoTIN_ULTCOL: TDateTimeField;
    QrVeiculoTIN_ODO: TIntegerField;
    QrVeiculoTIN_ULTMED: TBCDField;
    DBText1: TDBText;
    Dtveiculos: TDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    EditData: TLabel;
    Edit1: TEdit;
    DBText5: TDBText;
    DtPro: TDataSource;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EditveiKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaPMC: TFormLancaPMC;

implementation

uses UnPai;


{$R *.dfm}

procedure TFormLancaPMC.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
      Key:=#0;
      DBmemo1.SetFocus;

 end;

end;

procedure TFormLancaPMC.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
      Key:=#0;
      DBmemo1.SetFocus;

 end;

end;

procedure TFormLancaPMC.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
         key:=#0;
         DBMemo1.Enabled:=true;
         DbMemo1.SetFocus;
    end;
end;

procedure TFormLancaPMC.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
      Key:=#0;
      SpeedButton4.Click;

 end;

end;

procedure TFormLancaPMC.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
      Key:=#0;
      Edit1.SetFocus;

 end;

end;

procedure TFormLancaPMC.EditveiKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
      Key:=#0;
      SpeedButton1.Click;
 end;

end;

procedure TFormLancaPMC.FormActivate(Sender: TObject);
begin
Editdata.caption:=DateTimeToStr(now);
end;

procedure TFormLancaPMC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtPmc.DataSet.Cancel;
DtPro.DataSet.Close;
DtPmc.DataSet.close;
Dtveiculos.DataSet.Close;
Action:=Cafree;
end;

procedure TFormLancaPMC.SpeedButton1Click(Sender: TObject);
begin
With QrVeiculo do
   Begin
        Close;
        Sql.Clear;
        Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D');
        Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod');
        Sql.Add('and A.Vei_Nun = D.Tin_Vei');
        Sql.Add('And A.Vei_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
        Sql.Add('And A.Vei_nun = ' + QuotedStr(EditVei.text));
        open;
        if Not Eof then
             begin
                  DtPmc.DataSet.Open;
                  DtPmc.DataSet.Insert;
                  GroupBox1.Enabled:=true;
                  GroupBox1.Enabled:=true;
                  EditData.Caption:=DateTimeToStr(now);
                  Edit1.SetFocus;
             end
             else begin
                   ShowMessage('Este veículo não existe, ou esta índisponível');
                   EditVei.Text:='';
                   EditVei.SetFocus;

             end;
   End;

end;

procedure TFormLancaPMC.SpeedButton2Click(Sender: TObject);
begin
if dtPmc.DataSet.State = Dsinsert then
    begin
          DtPmc.DataSet.FieldByName('PMC_Vei').AsString:=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
          DtPmc.DataSet.FieldByName('PMC_Recl').AsString:=DtPro.DataSet.FieldByName('nom_pro').AsString;
          DtPmc.DataSet.FieldByName('PMC_Item').AsString:='1';
          DtPmc.DataSet.FieldByName('PMC_Chapa').AsString:=DtPro.DataSet.FieldByName('cod_pro').AsString;
          DtPmc.DataSet.FieldByName('PMC_Data').AsString:=dateTimeToStr(now);
          DtPmc.DataSet.FieldByName('PMC_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
          DtPmc.DataSet.post;
          DtPmc.DataSet.close;
          GroupBox1.Enabled:=false;
          MessageBox(Handle,'Pronto !'+#13+ 'Sua Reclamação foi registrada, a equipe de Manunteção cuidará disto'+#13+#13+'Se Voce Desejar saber como está esta solicitação, basta clicar em ACOMPANHAMENTO DE PMC','Obrigado por nos Ajudar',mb_IconInformation+mb_ok);
    end;
DtPmc.DataSet.Cancel;
DtPmc.DataSet.close;
GroupBox1.Enabled:=false;
Editvei.Text:='';
Dtveiculos.DataSet.Close;
EditVei.SetFocus;

end;

procedure TFormLancaPMC.SpeedButton3Click(Sender: TObject);
begin
DtPmc.DataSet.Cancel;
Close;
end;

procedure TFormLancaPMC.SpeedButton4Click(Sender: TObject);
begin
with pai.QrPro do
    begin
      Close;
      sql.clear;
      Sql.Add('select * from tb_Profissionais');
      Sql.Add('Where Ativo_pro = ' + quotedStr('A'));
      Sql.Add('And cod_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
      Sql.add('and cha_pro = ' + QuotedStr(Edit1.text));
      Open;
      if not eof then
            begin
              DBmemo1.SetFocus;
            end
            else
            begin
                   ShowMessage('Não existe funcionário com essa matricula');
                   Edit1.SetFocus;
            end;


    end;

end;

end.
