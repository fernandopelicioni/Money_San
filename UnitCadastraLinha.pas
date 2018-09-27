unit UnitCadastraLinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnMan, ActnColorMaps, StdCtrls, Grids, DBGrids, ExtCtrls, DB,
  DBTables, Mask, DBCtrls, Buttons, XPMan;

type
  TFormCadastraLinha = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    StandardColorMap1: TStandardColorMap;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label5: TLabel;
    DtLinha: TDataSource;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DtTipoLinha: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DtColigada: TDataSource;
    DBCheckBox1: TDBCheckBox;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure btsalvaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraLinha: TFormCadastraLinha;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormCadastraLinha.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit2.setfocus;
   end;
end;

procedure TFormCadastraLinha.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit5.setfocus;
   end;

end;

procedure TFormCadastraLinha.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBLookupComboBox1.SetFocus;
   end;
end;

procedure TFormCadastraLinha.BitBtn2Click(Sender: TObject);
begin
Dtlinha.DataSet.Insert;
         GroupBox1.Enabled:=tRUE;
         Dbedit1.setfocus;
end;

procedure TFormCadastraLinha.btsalvaClick(Sender: TObject);
begin
IF (DtLinha.Dataset.State = DSINSERT) OR (DtLinha.Dataset.State = DSEDIT) THEN
     BEGIN
         if DtColigada.DataSet.FieldByName('COD_COLIGADA').AsInteger = 3 then
                DBEdit1.Text:=IntToStr(StrToInt(DBEdit1.Text)+300);

         Dtlinha.DataSet.FieldByName('Lin_Coligada').AsString:=DtColigada.DataSet.FieldByName('COD_COLIGADA').AsString;
         DtLinha.Dataset.Post;
         GroupBox1.Enabled:=FALSE;
     END;
//btsalva.enabled:=false;
bitbtn2.setfocus;
end;

procedure TFormCadastraLinha.FormActivate(Sender: TObject);
begin
DtLinha.dataSet.open;
//DtTipoLinha.DataSet.Open;
with Pai.QrLinhas do
    begin
           Close;
           Sql.Clear;
//           Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
           Sql.Add('Select * from Tb_MonLin');
           Sql.Add('Where Lin_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
           Open;
    end;
    With Pai.QrTipLin do
          Begin
                close;
                Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
                open;
          End;

end;

procedure TFormCadastraLinha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtLinha.Dataset.cANCEL;
DtLinha.Dataset.close;
DtTipoLinha.DataSet.Close;
Action:=cafree;
end;

procedure TFormCadastraLinha.FormShow(Sender: TObject);
begin
bitbtn2.SetFocus;
end;

procedure TFormCadastraLinha.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit5.setfocus;
   end;

end;

procedure TFormCadastraLinha.DBGrid1DblClick(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtLinha.DataSet.Edit;
DbEdit1.setfocus;
end;

procedure TFormCadastraLinha.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.enabled:=true;
   btsalva.setfocus;
   end;

end;

end.
