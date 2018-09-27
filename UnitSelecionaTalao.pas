unit UnitSelecionaTalao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Buttons, DBCGrids, ExtCtrls, ActnMan,
  ActnColorMaps;

type
  TFormSelecionaTalao = class(TForm)
    DtTaloes: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBCheckBox1: TDBCheckBox;
    XPColorMap1: TXPColorMap;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelecionaTalao: TFormSelecionaTalao;

implementation

uses UnPai, UnitLancamentoBSE;

{$R *.dfm}

procedure TFormSelecionaTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtTaloes.DataSet.Close;
Action:=cafree;
end;

procedure TFormSelecionaTalao.FormShow(Sender: TObject);
begin
        With pai.QrTemp do
               Begin
                       Close;
                       Sql.Clear;
                       Sql.Add('update Tb_MonTaloes set TTL_MARCA = 0 where TTL_MARCA = ' + QuotedStr('1'));
                       ExecSQL;
               End;
        DtTaloes.DataSet.Open;

end;

procedure TFormSelecionaTalao.SpeedButton1Click(Sender: TObject);
begin
        if DtTaloes.DataSet.State = DsEdit then DtTaloes.DataSet.Post;

        With pai.QrTemp do
               Begin
                       Close;
                       Sql.Clear;
                       Sql.Add('Select Count(TTl_Marca) as qt From Tb_MonTaloes where TTl_Status = ' + QuotedStr('A') + ' and TTl_marca = ' + QuotedStr('1'));
                       Open;
                       FormlancamentoBse.QtTaloes:=Pai.QrTemp.FieldByName('Qt').AsInteger;
                       Close;
               End;
Close;
end;

end.
