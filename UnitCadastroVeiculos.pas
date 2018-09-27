unit UnitCadastroVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask;

type
  TFormCadastroVeiculos = class(TForm)
    DtVeiculos: TDataSource;
    DtColigada: TDataSource;
    GroupBox1: TGroupBox;
    DtCat: TDataSource;
    DBEdit2: TDBEdit;
    DBText3: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btsalvaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVeiculos: TFormCadastroVeiculos;

implementation

uses UnPai, UnitConsultaveiculos;

{$R *.dfm}

procedure TFormCadastroVeiculos.BitBtn1Click(Sender: TObject);
begin
Application.CreateForm(TFormConsultaveiculos,FormConsultaveiculos);
DtCat.DataSet.Open;
FormConsultaveiculos.ShowModal;
//DtCat.DataSet.close;
end;

procedure TFormCadastroVeiculos.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormCadastroVeiculos.btsalvaClick(Sender: TObject);
begin
if (DtCat.DataSet.State = DsInsert) or (DtCat.DataSet.State = DsEdit) then
    begin
      DtCat.DataSet.post;

    end;
GroupBox1.Enabled:=false;
DtVeiculos.DataSet.Close;
end;

procedure TFormCadastroVeiculos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
         key:=#0;
         btsalva.SetFocus;
   end;
end;

procedure TFormCadastroVeiculos.EditVeiculoKeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    END;
end;

procedure TFormCadastroVeiculos.FormActivate(Sender: TObject);
begin
//DtCat.DataSet.Open;
With Pai.QrVeiCat do
     begin
           close;
            sql.Clear;
             Sql.Add('select * FROM Tb_veiculos');
              Sql.Add('Where Vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
               Sql.Add('and Vei_IntMon = ' + QuotedStr('S'));
               Open;
     end;
end;

procedure TFormCadastroVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      DtCat.DataSet.Cancel;
       DtCat.DataSet.Close;
        Dtveiculos.DataSet.Open;
         Action:=cafree;
end;

end.
