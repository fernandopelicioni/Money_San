unit TelaGeraArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DB, DBTables, Buttons,
  Gauges, ActnMan, ActnColorMaps, XPMan, ComCtrls;

type
  TFormGeraArquivo = class(TForm)
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
    s: TLabel;
    Gauge1: TGauge;
    QrVeiculo: TQuery;
    Query1: TQuery;
    Query1PFATU: TBooleanField;
    Query1PFANT: TBooleanField;
    Query1PEATU: TBooleanField;
    Query1PEANT: TBooleanField;
    Query1VTATU: TBooleanField;
    Query1VTANT: TBooleanField;
    Query1LIVRE: TBooleanField;
    Query1GRATZ: TBooleanField;
    Query1VEATU: TBooleanField;
    Query1VEANT: TBooleanField;
    Query1ESTGR: TBooleanField;
    Query1CAINI: TBooleanField;
    Query1LIQIN: TBooleanField;
    Query1LIQDE: TBooleanField;
    Query1CODIGOEMPRESA: TStringField;
    Query1LETRABCD: TStringField;
    Query1RAZAOSOCIAL: TStringField;
    Query1CGC: TStringField;
    XPManifest1: TXPManifest;
    XPColorMap1: TXPColorMap;
    RadioGroup1: TRadioGroup;
    QrMovimentoTIPOLINHA: TStringField;
    QrMovimentoIDOSO: TSmallintField;
    Query1SISTEMA: TStringField;
    Query1IDOSO: TBooleanField;
    QrMovimentoVIAGEM: TStringField;
    Query1Viagem: TBooleanField;
    QrVeiculoNUMERO: TIntegerField;
    QrVeiculoLACRE: TStringField;
    QrVeiculoULTIMACATRACA: TStringField;
    QrVeiculoULTIMACOLETA: TStringField;
    QrMovimentoNUMERO: TIntegerField;
    QrMovimentoLACRE: TStringField;
    QrMovimentoULTIMACATRACA: TStringField;
    QrMovimentoULTIMACOLETA: TStringField;
    RadioGroup2: TRadioGroup;
    QrMovimentoDATABCD: TDateField;
    procedure btokClick(Sender: TObject);
    procedure editdataKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraArquivo: TFormGeraArquivo;

implementation

uses TelaConfereCatraca;

{$R *.dfm}

procedure TFormGeraArquivo.btokClick(Sender: TObject);
var
ArqTxt: TExtFile;
TPTOTAL,tbcd,TVeiCULO,TLACRE,TPFAT,TPFAN,TPEAT,TPEAN,TVTAT,TVTAN,TEGRA,TGRATZ,TLIVRE,TVEAT,
      TVEAN,TBRUTO,TINT,TDES,TCATINI,TCATFIN,TLINHA,TIDOSO : double;
LPTOTAL,LVIAGEM,LBCD,LVeiCULO,LLACRE,LPFAT,LPFAN,LPEAT,LPEAN,LVTAT,LVTAN,LEGRA,LGRATZ,LLIVRE,LVEAT,
      LVEAN,LBRUTO,LINT,LDES,LCATINI,LCATFIN,LLINHA,LIDOSO : string;
NOMEARQS,LINHA,v:STRING;
ldata:string;
tipo:string[1];
LDATA1 :string[4];
ldata2,Ldata3:STRING[2];
CodigoEmpresa: string[4];

begin
ShowMessage('Você precisa consistir as catracas antes de Gerar o arquivo'+#13+'Deseja fazer isso agora');
//FormSequenciaCatraca.Show;

Screen.Cursor:=CrHourGlass;
GAUGE1.PROGRESS:=1;
case RadioGroup1.ItemIndex of
     0  : tipo := 'T';
     1  : tipo := 'S';
     2  : tipo := 'O';
     END;
QUERY1.Close;
IF TIPO = 'T'  THEN
    QUERY1.FILTER:='SISTEMA = ' + S.CAPTION + 'TRANSCOL' + S.CAPTION;
IF TIPO = 'S'  THEN
    QUERY1.FILTER:='SISTEMA = ' + S.CAPTION + 'SELETIVO' + S.CAPTION;
QUERY1.FILTERED:=TRUE;
QUERY1.OPEN;
//LDATA    :=   EditData.Text;
LDATA3   :=   copy(LData,1,2);
LDATA2   :=   copy(Ldata,4,5);
if radiogroup2.itemIndex = 0 then
       begin
       NOMEARQS:='A:\' + Query1CODIGOEMPRESA.TEXT + ldata3 + ldata2 + '.CSV';
       ShowMessage('Insira disquete do Drive e clique OK');
       end;
if radiogroup2.itemIndex = 1 then
       begin
       NOMEARQS:='c:\ceturb\' + Query1CODIGOEMPRESA.TEXT + ldata3 + ldata2 + '.CSV';
       ShowMessage('Dados serão gerados no disco local');
       end;
AssignFile(ArqTxt, NOMEARQS);
Rewrite(ArqTxt);
V:=',';
CodigoEmpresa:=Query1CODIGOEMPRESA.TExt;
With QrMovimento do
     Begin
     Filter:='TIPOLINHA = ' + S.CAPTION + TIPO + S.CAPTION ;
//     ' AND DataBcd = ' + s.caption + EditData.Text + s.caption;
     Filtered:=true;
     Open;
     First;
     If Not Eof then
          Begin
          Repeat
          GAUGE1.Progress:=GAUGE1.Progress+1;
          TBCD               :=StrToFLOAT(QrMovimentoNUMBCD.tEXT);
          TLINHA             :=StrToFLOAT(QrMovimentoLINHABCD.TEXT);
          TVEICULO           :=StrToInt(QrMovimentoVEICULOBCD.TEXT);
          TIDOSO             :=StrToFLOAT(QrMovimentoIDOSO.TEXT);
          TLACRE             :=StrToFloat(QrMovimentoLACRE.Text);
          TPFAT              :=StrToFLOAT(QrMovimentoPFATUAL.TEXT);
          TPFAN              :=StrToFLOAT(QrMovimentoPFANTERIOR.TEXT);
          TPEAT              :=StrToFLOAT(QrMovimentoPEATUAL.TEXT);
          TPEAN              :=StrToFLOAT(QrMovimentoPEANTERIOR.TEXT);
          TLIVRE             :=StrToFLOAT(QrMovimentoLIVRE.TEXT);
          TVTAT              :=StrToFLOAT(QrMovimentoVTEATUAL.TEXT);
          TVTAN              :=StrToFLOAT(QrMovimentoVTEANTERIOR.TEXT);
          TEGRA              :=StrToFLOAT(QrMovimentoEGRATUITO.TEXT);
          TGRATZ             :=StrToFLOAT(QrMovimentoGRATUITO.TEXT);
          TVEAT              :=StrToFLOAT(QrMovimentoVEATUAL.TEXT);
          TVEAN              :=StrToFLOAT(QrMovimentoVEANTERIOR.TEXT);
          TBRUTO             :=StrToFLOAT(QrMovimentoPTOTAL.TEXT);
          TINT               :=StrToFLOAT(QrMovimentoPDINHEIRO.TEXT);
          TDES               :=StrToFLOAT(QrMovimentoDESCONTO.TEXT);
          TCATINI            :=StrToFLOAT(QrMovimentoCATRACAINICIAL.TEXT);
          TCATFIN            :=StrToFLOAT(QrMovimentoCATRACAFINAL.TEXT);
          TPTOTAL            :=STRTOFLOAT(QRMOVIMENTOPTOTAL.TEXT);

////
          LLINHA   :=   FormatFloat('0000',TLINHA);
//          Ldata    :=   EditData.Text;
          LDATA1   :=   copy(LData,7,10);
          LDATA2   :=   copy(Ldata,4,5);
          LDATA3   :=   Copy(lData,1,2);
          LVEICULO :=   FormatFloat('00000',Tveiculo);
          LLACRE   :=   FormatFloat('00000000',TLACRE);
          LPFAT    :=   FormatFloat('0000',TPFAT);
          LIDOSO   :=   FormatFloat('000',TIDOSO);
          LPFAN    :=   FormatFloat('0000',TPFAN);
          LPEAT    :=   FormatFloat('0000',TPEAT);
          LPEAN    :=   FormatFloat('0000',TPEAN);
          LVTAT    :=   FormatFloat('0000',TVTAT);
          LVTAN    :=   FormatFloat('0000',TVTAN);
          LEGRA    :=   FormatFloat('0000',TEGRA);
          LGRATZ   :=   FormatFloat('0000',TGRATZ);
          LLIVRE   :=   FormatFloat('0000',TLIVRE);
          LVEAT    :=   FormatFloat('0000',TVEAT);
          LVEAN    :=   FormatFloat('0000',TVEAN);
          LBRUTO   :=   FormatFloat('0000',TBRUTO);
          LINT     :=   FormatFloat('0000',TINT);
          LDES     :=   FormatFloat('0000',TDES);
          LCATINI  :=   FormatFloat('000000',TCATINI);
          LCATFIN  :=   FormatFloat('000000',TCATFIN);
          LBCD     :=   FORMATFLOAT('00000000',TBCD);
// NO CASO DO SELETIVO CONSIDERA TODOS PASSAGEIROS COMO DINHEIRO, EU CONSIDERI O PASSAG. TOTAL.
          LPTOTAL  :=   FORMATFLOAT('0000',TPTOTAL);

          LVIAGEM            :=copy(QrMovimentoVIAGEM.TEXT,1,1)+'.'+copy(QrMovimentoVIAGEM.TEXT,3,1);
                                                     // V É UMA VARIVEL VIRGULA....
          GAUGE1.Progress:=GAUGE1.Progress+1;
          if  tipo = 'T' THEN
            BEGIN
            LINHA:= CodigoEmpresa + V +
                  LLINHA        + V +
                  LVEICULO      + V +
                  LDATA1+ldata2+ldata3         + V +
                  LCATINI       + V +
                  LCATFIN       + V +
                  LLACRE        + V +
                  '0'           + V +
                  LVTAT         + V +
                  LVEAT         + V +
                  LPEAT         + V +
                  LEGRA         + V +
                  LLIVRE        + V +
                  LIDOSO        + V +   //OUTROS
                  LINT          + V +
                  LDES          + V +
                  LPFAT         + V +
                  LPFAN         + V +
                  LBCD          + V +
                  '00'           + V +
                  Query1LETRABCD.Text + v +
                  LVTAN         + V +
                  LVEAN         + V +
                  LPEAN         + V +
                  LGRATZ;
            END;
// SELETIVO
if  tipo = 'S' THEN
            BEGIN
            LINHA:=
                  LDATA1+ldata2+ldata3         + V +
                  CodigoEmpresa + V +
                  LVEICULO      + V +
                  '0'           + V +
                  LLINHA        + V +
                  LCATINI       + V +
                  LCATFIN       + V +
                  LPTOTAL       + V +
                  '0'           + V +
                  LBCD          + V +
                  Query1LETRABCD.Text + v +
                  '0,0'           + V +
                  LVIAGEM;
                  END;

                  Writeln(ArqTxt, Linha);
          Next;
          Until Eof;
          End;
     End;
GAUGE1.PROGRESS:=100;
CloseFile(ArqTxt);
Screen.Cursor:=CrDefault;
ShowMessage('Arquivo Gerado com Sucesso !!!');
GAUGE1.PROGRESS:=0;
Close;

end;

procedure TFormGeraArquivo.editdataKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key =#13 then
      Btok.SetFocus;
end;

procedure TFormGeraArquivo.FormActivate(Sender: TObject);
begin
//EditData.text:=DateTostr(now);
end;

end.
