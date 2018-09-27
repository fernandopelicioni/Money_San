unit UnitLancamentoBuscaPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormLancamentoBuscaPro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QrPro: TADOQuery;
    DtPro: TDataSource;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancamentoBuscaPro: TFormLancamentoBuscaPro;

implementation

uses UnPai, UnitLancamentoBSE;

{$R *.dfm}

procedure TFormLancamentoBuscaPro.DBGrid1DblClick(Sender: TObject);
begin
if not QrPro.Eof then
     begin
           FormLancamentoBse.EditFuncionario.Text:=Copy(DtPro.DataSet.FieldByName('Chapa').AsString,5,4);
           Close;
     end;

end;

procedure TFormLancamentoBuscaPro.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        With QrPro Do
             begin
                      Close;
                       Sql.Clear;
                        Sql.Add('Select A.Cha_Pro As Chapa, A.Nom_Pro As Nome, B.Des_Funcao as Funcao');
                         Sql.Add('From Tb_Profissionais A, Tb_Funcao B');
                          Sql.Add('Where B.Cod_Funcao = A.Fun_Pro');
                           Sql.Add('And B.Fun_IntMon = '+QuotedStr('S'));
                           Sql.Add('And Cod_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                            if ComboBox1.ItemIndex = 0 then Sql.Add('And A.Nom_pro like '+ QuotedStr('%'+Edit1.Text+'%'));
                             if ComboBox1.ItemIndex = 1 then Sql.Add('And A.Cha_pro like '+ QuotedStr('%'+Edit1.Text+'%'));
                              Open;
             end;

end;

procedure TFormLancamentoBuscaPro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      DtPro.DataSet.Close;
      Action:=Cafree;
end;

procedure TFormLancamentoBuscaPro.SpeedButton1Click(Sender: TObject);
begin
if not QrPro.Eof then
     begin
           FormLancamentoBse.EditFuncionario.Text:=DtPro.DataSet.FieldByName('Chapa').AsString;
           Close;
     end;

end;

procedure TFormLancamentoBuscaPro.SpeedButton2Click(Sender: TObject);
begin

Close;
end;

end.
