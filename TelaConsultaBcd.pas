unit TelaConsultaBcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPMan, DB, ActnColorMaps, Grids, DBGrids,
  DBTables, ActnMan, CustomizeDlg, Mask, Buttons, DBCtrls, ComCtrls, Menus,
  DBClient;

type
  TFormConsultaMovimento = class(TForm)
    XPManifest1: TXPManifest;
    GroupBox1: TGroupBox;
    DtMOv: TDataSource;
    Panel2: TPanel;
    Label2: TLabel;
    EditData: TMaskEdit;
    BitBtn2: TBitBtn;
    btexclui: TBitBtn;
    S: TLabel;
    raio2: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lbpassefacilatual: TLabel;
    lbpasseescolaratual: TLabel;
    lbvaleeletronicoatual: TLabel;
    lblivre: TLabel;
    Lbgratuidade: TLabel;
    LbvaleEspecialAtual: TLabel;
    LbEstudanteGratuitoAtual: TLabel;
    LbLiquido: TLabel;
    LbBruto: TLabel;
    LbTotalDinheiro: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    raio: TBitBtn;
    GroupBox3: TGroupBox;
    EditNumero: TMaskEdit;
    Label13: TLabel;
    raio3: TBitBtn;
    PopupMenu1: TPopupMenu;
    GerararquivoparaOrgoGestor1: TMenuItem;
    Label14: TLabel;
    liqdes: TLabel;
    ImprimirBoletinsdodia1: TMenuItem;
    Label15: TLabel;
    LbIdoso: TLabel;
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure btexcluiClick(Sender: TObject);
    procedure EditEscolhaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    TIPO:STRING[1];

    { Public declarations }
  end;

var
  FormConsultaMovimento: TFormConsultaMovimento;
  ESCOLHA : STRING;
implementation

uses UnPai;

{$R *.dfm}

procedure TFormConsultaMovimento.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
If key = #13 then
   begin
   raio2.Enabled:=true;
   raio2.SetFocus;
   end;
end;

procedure TFormConsultaMovimento.btexcluiClick(Sender: TObject);
begin
if messagedlg('Você quer mesmo apagar este Lançamento ?',mtConfirmation,[mbno, mbyes],0)
   =mryes then begin
   //QrMovimento.Delete;
   end
   else
   begin
   //Grid.setfocus;
   end;
end;

procedure TFormConsultaMovimento.EditEscolhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
    begin
    key:=#0;
    raio.Enabled:=true;
    raio.setfocus;
    end;
end;

procedure TFormConsultaMovimento.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaMovimento.BitBtn3Click(Sender: TObject);
begin
lbpassefacilatual.caption:='0';
lbpasseescolaratual.caption:='0';
lbvaleeletronicoatual.caption:='0';
lbLivre.caption:='0';
lbgratuidade.caption:='0';
lbValeEspecialAtual.caption:='0';
lbEstudanteGratuitoAtual.caption:='0';
LbIdoso.caption:='0';
LbLiquido.caption:='0';
LbBruto.caption:='0';
LbTotalDinheiro.caption:='0';//FormatFloat('###,##0.00',TotRs);

end;

procedure TFormConsultaMovimento.EditNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
    begin
    key:=#0;
    raio3.Enabled:=true;
    raio3.setfocus;
    end;

end;

procedure TFormConsultaMovimento.RadioGroup1Click(Sender: TObject);
begin
EditData.text:=DateToStr(now);
EditData.Setfocus;
end;

procedure OrdenaDataSetGrid(var CDS: TClientDataSet; Column: TColumn; var dbgPrin: TDBGrid);
const
  idxDefault = 'DEFAULT_ORDER';
var
  strColumn : string;
  i : integer;
  bolUsed : boolean;
  idOptions : TIndexOptions;
begin

  strColumn := idxDefault;

  if Column.Field.FieldKind in [fkCalculated, fkLookup, fkAggregate] then
Exit;

  if Column.Field.DataType in [ftBlob, ftMemo] then Exit;

  for i := 0 to dbgPrin.Columns.Count -1 do
    dbgPrin.Columns[i].Title.Font.Style := [];

  bolUsed := (Column.Field.FieldName = CDS.IndexName);

  CDS.IndexDefs.Update;
  for i := 0 to CDS.IndexDefs.Count - 1 do
  begin
    if CDS.IndexDefs.Items[i].Name = Column.Field.FieldName then
    begin
      strColumn := Column.Field.FieldName;
      case (CDS.IndexDefs.Items[i].Options = [ixDescending]) of
        true : idOptions := [];
        false : idOptions := [ixDescending];
      end;
    end;
  end;

  if (strColumn = idxDefault)  or (bolUsed) then
  begin
    if bolUsed then
      CDS.DeleteIndex(Column.Field.FieldName);
    try
      CDS.AddIndex(Column.Field.FieldName, Column.Field.FieldName,
idOptions, '', '', 0);
      strColumn := Column.Field.FieldName;
    except
      if bolUsed then
      strColumn := idxDefault;
    end;
  end;

  try
   CDS.IndexName := strColumn;
   Column.Title.Font.Style := [fsbold];
  except
   CDS.IndexName := idxDefault;
  end;
end;

procedure TFormConsultaMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

end.
