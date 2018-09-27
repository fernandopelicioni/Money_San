unit TelaDadosRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ActnColorMaps, ActnMan, XPMan, StdCtrls, Mask,
  ComCtrls, ExtCtrls, dblookup, Buttons;

type
  TFormDadosRelatorio = class(TForm)
    XPManifest1: TXPManifest;
    XPColorMap1: TXPColorMap;
    TwilightColorMap1: TTwilightColorMap;
    QrMovimento: TQuery;
    DtMovimento: TDataSource;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tabacerador: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    tabLinha: TTabSheet;
    TabelaFuncionario: TTable;
    DtFuncionarios: TDataSource;
    TabelaFuncionarioMatricula: TStringField;
    TabelaFuncionarioNome: TStringField;
    TabelaFuncionarioFuncao: TStringField;
    EditDataLinhaInicial: TMaskEdit;
    EditDataLinhaFinal: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditDataAcertador: TMaskEdit;
    Label6: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    EditLinha: TMaskEdit;
    bilinhaok: TBitBtn;
    btacertadorok: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    S: TLabel;
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
    EditAcertador: TDBLookupCombo;
    QrLinha: TQuery;
    dtlinha: TDataSource;
    QrLinhaNUMERO: TStringField;
    QrLinhaDESCRICAO: TStringField;
    QrLinhaTARIFAATUAL: TCurrencyField;
    QrLinhaTARIFAANTERIOR: TCurrencyField;
    QrLinhaTARIFADESCONTO: TCurrencyField;
    TabelaRel: TTable;
    Dtrel: TDataSource;
    gravarel: TBitBtn;
    ProgressBar1: TProgressBar;
    QrLinhaTIPOLINHA: TStringField;
    QrMovimentoTIPOLINHA: TStringField;
    QrMovimentoIDOSO: TSmallintField;
    QrMovimentoVIAGEM: TStringField;
    QrMovimentoNUMERO: TStringField;
    QrMovimentoDESCRICAO: TStringField;
    QrMovimentoTARIFAATUAL: TCurrencyField;
    QrMovimentoTARIFAANTERIOR: TCurrencyField;
    QrMovimentoKM: TSmallintField;
    QrMovimentoTARIFADESCONTO: TCurrencyField;
    QrMovimentoTIPOLINHA_1: TStringField;
    radio: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    radio2: TComboBox;
    TabelaRelLinha: TStringField;
    TabelaRelDESCRICAO: TStringField;
    TabelaRelTOT_PFAT: TIntegerField;
    TabelaRelTOT_PFAN: TIntegerField;
    TabelaRelTOT_VTAT: TIntegerField;
    TabelaRelTOT_VTAN: TIntegerField;
    TabelaRelTOT_PEAT: TIntegerField;
    TabelaRelTOT_PEAN: TIntegerField;
    TabelaRelTOT_VEAT: TIntegerField;
    TabelaRelTOT_VEAN: TIntegerField;
    TabelaRelTOT_LIVR: TIntegerField;
    TabelaRelTOT_GRAT: TIntegerField;
    TabelaRelTOT_BRUT: TIntegerField;
    TabelaRelTOT_LIIN: TIntegerField;
    TabelaRelTOT_LIDE: TIntegerField;
    TabelaRelTOT_DINH: TCurrencyField;
    TabelaRelTOT_EGRA: TIntegerField;
    TabelaRelTOT_IDO: TIntegerField;
    QrMovimentoDATABCD: TDateField;
    procedure EditDataLinhaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tabLinhaShow(Sender: TObject);
    procedure tabaceradorShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditDataAcertadorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDadosRelatorio: TFormDadosRelatorio;

implementation

uses TelaRelatorioMontado1,TelaRelatorioMontado2;

{$R *.dfm}

procedure TFormDadosRelatorio.EditDataLinhaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
If key =#13 then
     begin
     key:=#0;
     EditDataLinhaFinal.Text:=EditDataLinhaInicial.Text;
     EditDataLinhaFinal.setfocus;
     End;
end;

procedure TFormDadosRelatorio.tabLinhaShow(Sender: TObject);
begin
EditDataLinhaInicial.Setfocus;
end;

procedure TFormDadosRelatorio.tabaceradorShow(Sender: TObject);
begin
EditDataAcertador.Setfocus;
end;

procedure TFormDadosRelatorio.BitBtn1Click(Sender: TObject);
begin
EditDataAcertador.text:=' ';
editacertador.text:=' ';
Close;
end;

procedure TFormDadosRelatorio.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormDadosRelatorio.EditDataAcertadorKeyPress(Sender: TObject;
  var Key: Char);
begin
If key =#13 then
      begin
      If EditDataAcertador.Text = '  /  /    ' then EditDataAcertador.SetFocus;
      EditAcertador.Text:=' ';
      EditAcertador.Setfocus;
      End;

end;

end.


