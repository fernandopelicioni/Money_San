unit TelaConfereCatraca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls, DB,
  DBTables, ActnMan, ActnColorMaps, XPMan, Grids, DBGrids, Gauges;
type
  TFormSequenciaCatraca = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btok: TBitBtn;
    QrMovimento: TQuery;
    QrMovimentoNUMBCD: TIntegerField;
    QrMovimentoVEICULOBCD: TSmallintField;
    QrMovimentoLINHABCD: TStringField;
    QrMovimentoCATRACAINICIAL: TIntegerField;
    QrMovimentoCATRACAFINAL: TIntegerField;
    QrMovimentoPFATUAL: TSmallintField;
    QrMovimentoPFANTERIOR: TSmallintField;
    QrMovimentoPEATUAL: TSmallintField;
    QrMovimentoPEANTERIOR: TSmallintField;
    QrMovimentoVTEATUAL: TSmallintField;
    QrMovimentoVTEANTERIOR: TSmallintField;
    QrMovimentoLIVRE: TSmallintField;
    QrMovimentoGRATUITO: TSmallintField;
    QrMovimentoVEATUAL: TSmallintField;
    QrMovimentoVEANTERIOR: TSmallintField;
    QrMovimentoEGRATUITO: TSmallintField;
    QrMovimentoPTOTAL: TSmallintField;
    QrMovimentoPDINHEIRO: TSmallintField;
    QrMovimentoTOTALDINHEIRO: TCurrencyField;
    QrMovimentoFUNCIONARIO: TStringField;
    QrMovimentoACERTADOR: TStringField;
    QrMovimentoDESCONTO: TSmallintField;
    DataSource1: TDataSource;
    QrPula: TQuery;
    DataSource2: TDataSource;
    QrPulaNUMBCD: TIntegerField;
    QrPulaVEICULOBCD: TSmallintField;
    QrPulaLINHABCD: TStringField;
    QrPulaCATRACAINICIAL: TIntegerField;
    QrPulaCATRACAFINAL: TIntegerField;
    QrPulaPFATUAL: TSmallintField;
    QrPulaPFANTERIOR: TSmallintField;
    QrPulaPEATUAL: TSmallintField;
    QrPulaPEANTERIOR: TSmallintField;
    QrPulaVTEATUAL: TSmallintField;
    QrPulaVTEANTERIOR: TSmallintField;
    QrPulaLIVRE: TSmallintField;
    QrPulaGRATUITO: TSmallintField;
    QrPulaVEATUAL: TSmallintField;
    QrPulaVEANTERIOR: TSmallintField;
    QrPulaEGRATUITO: TSmallintField;
    QrPulaPTOTAL: TSmallintField;
    QrPulaPDINHEIRO: TSmallintField;
    QrPulaTOTALDINHEIRO: TCurrencyField;
    QrPulaFUNCIONARIO: TStringField;
    QrPulaACERTADOR: TStringField;
    QrPulaDESCONTO: TSmallintField;
    TbCatraca: TTable;
    DataSource3: TDataSource;
    S: TLabel;
    XPManifest1: TXPManifest;
    TwilightColorMap1: TTwilightColorMap;
    DBGrid1: TDBGrid;
    G: TGauge;
    TbCatracaVeiculo: TSmallintField;
    TbCatracaDiaMesAno: TStringField;
    TbCatracaSequencia: TAutoIncField;
    TbCatracaCatraca: TIntegerField;
    TbCatracaNUMBCD: TIntegerField;
    TbCatracaNUMBCD2: TIntegerField;
    TbCatracaCatraca2: TIntegerField;
    QrMovimentoNUMERO: TIntegerField;
    QrMovimentoLACRE: TStringField;
    QrMovimentoULTIMACATRACA: TStringField;
    QrMovimentoULTIMACOLETA: TStringField;
    QrMovimentoVIAGEM: TStringField;
    QrMovimentoTIPOLINHA: TStringField;
    QrMovimentoIDOSO: TSmallintField;
    QrMovimentoDATABCD: TDateField;
    QrPulaDATABCD: TDateField;
    QrPulaVIAGEM: TStringField;
    QrPulaTIPOLINHA: TStringField;
    QrPulaIDOSO: TSmallintField;
    procedure btokClick(Sender: TObject);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure EditDataEnter(Sender: TObject);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSequenciaCatraca: TFormSequenciaCatraca;

implementation

{$R *.dfm}

procedure TFormSequenciaCatraca.btokClick(Sender: TObject);
var
CAT_FIN, CAT_INI: INTEGER;
VEICULO,filtro,bcd2:string;
begin
cURSOR:=CrHourGlass;
Dbgrid1.cURSOR:=CrHourGlass;
panel1.cURSOR:=CrHourGlass;
tbcatraca.close;
G.progress:=1;
TbCatraca.EmptyTable;
With QrMovimento do
      Begin
//      Filter:='DATABCD = ' + s.caption + EDITDATA.Text + s.caption;
      Filtered:=true;
      Open;
      First;
      Filtro:=QrMovimentoVEICULOBCD.TEXT;
      If Not Eof Then
           Begin
//           REPEAT
           With QrPula Do
                Begin
                 close;
//                 Sql.Clear;
//                 Sql.Add('Select * from Movimento');
//                 Sql.Add('Where Databcd =   ' + QuotedStr(EditData.text));
//                 Sql.Add(' and VeiculoBcd = ' + QuotedStr(filtro));
//                 Sql.Add(' Order By CatracaInicial;');
//                 ' AND VEICULOBCD = ' + s.caption + filtro + s.caption;
                 G.progress:=G.progress+1;
                 Filtered:=true;
                 Open;
                 First;
                 CAT_FIN:= StrToInt(QrPulaCATRACAFINAL.Text);
                 Bcd2:=QrPulaNumBcd.text;
                 veiculo:=QrPulaVeiculoBcd.text;
                 Next;
                 IF NOT EOF THEN
                      BEGIN
                      REPEAT
                      if QrPulaVeiculoBcd.Text = Veiculo Then
                        Begin
                        CAT_INI:=StrToInt(QrPulaCATRACAinicial.TEXT);
                        IF CAT_FIN <> CAT_INI THEN
                                BEGIN
                                TbCATRACA.OPEN;
                                TbCATRACA.Insert;
                                TbCatracaNUMBCD.text                            :=QrPulaNUMBCD.Text;
                                TbCatracaNUMBCD2.text                           :=bcd2;
                                TbCatracaCatraca.TExt                           :=IntToStr(Cat_ini);
                                TbCatracaCatraca2.TExt                          :=IntToStr(Cat_Fin);
                                TbCatracaVeiculo.Text                           :=QrPulaVEICULOBCD.text;
                                TbCatracaDiaMesAno.Text                         :=QrPulaDATABCD.text;
                                TbCatraca.post;
                                TbCatraca.Close;
                                End;
                         End;
                                Cat_Fin:=StrToInt(QrPulaCATRACAFINAL.Text);
                                Bcd2:=QrPulaNumBcd.text;
                                veiculo:=QrPulaVeiculoBcd.text;
                   QrPula.Next;
                   Until Eof;
                  End;
                End;
                 Next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
                 if filtro = QrMovimentoVEICULOBCD.TEXT then next;
// AQUI DEVO COLOCAR UM REPETE    ^              IF VEI
 //                Until Eof;
           G.progress:=400;
           End;

      End;
cURSOR:=CrDefault;
Dbgrid1.cURSOR:=CrDefault;
panel1.cURSOR:=CrDefault;

tbcatraca.open;
TbCatraca.Refresh;
end;

procedure TFormSequenciaCatraca.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
iF KEY = #13 THEN
       BEGIN
       key    :=#0;
       btok   .Setfocus;
       End;


end;

procedure TFormSequenciaCatraca.EditDataEnter(Sender: TObject);
begin
end;

procedure TFormSequenciaCatraca.JvTransparentButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormSequenciaCatraca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
