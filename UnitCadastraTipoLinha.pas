unit UnitCadastraTipoLinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls, Mask, Buttons, Grids, DBGrids;

type
  TFormCadastraTipoLinha = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DtTipoLinha: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    DtColigada: TDataSource;
    DBCheckBox1: TDBCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraTipoLinha: TFormCadastraTipoLinha;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormCadastraTipoLinha.BitBtn1Click(Sender: TObject);
begin
if (DtTipoLinha.DataSet.State = DsInsert) or (DtTipoLinha.DataSet.State = DsEdit) then
   begin
         DtTipoLinha.DataSet.FieldByName('Tli_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
         DtTipoLinha.DataSet.Post;
   end;

end;

procedure TFormCadastraTipoLinha.BitBtn3Click(Sender: TObject);
begin
DtTipoLinha.DataSet.Insert;
DbEdit2.SetFocus;
end;

procedure TFormCadastraTipoLinha.FormActivate(Sender: TObject);
begin
//DtTipoLinha.DataSet.Open;
    With Pai.QrTipLin do
          Begin
                close;
                Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
                open;
          End;


//WITH PAI.QrTipLin do
//     begin
//            close;
//            Sql.Clear;
//            Sql.Add('Select * from Tb_MonTipLin');
//            Open;
//     end;
end;

procedure TFormCadastraTipoLinha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtTipoLinha.DataSet.Close;
action:=cafree;
end;

end.
