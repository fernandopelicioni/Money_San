unit TelaRelatorioMontado1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QuickRpt, QRCtrls, XPMan, ExtCtrls, ActnColorMaps,
  ActnMan;

type
  TFormRelatorioMontado1 = class(TForm)
    QuickRep1: TQuickRep;
    XPManifest1: TXPManifest;
    Query1: TQuery;
    Query1Matricula: TStringField;
    Query1Nome: TStringField;
    Query1Funcao: TStringField;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    ptotal: TQRLabel;
    vtatual: TQRLabel;
    Vtanterior: TQRLabel;
    pfanteior: TQRLabel;
    pfatual: TQRLabel;
    veanterior: TQRLabel;
    veatual: TQRLabel;
    peanterior: TQRLabel;
    peatual: TQRLabel;
    gratuidade: TQRLabel;
    livre: TQRLabel;
    estudantegratuito: TQRLabel;
    liqdesconto: TQRLabel;
    liqintegral: TQRLabel;
    QRLabel29: TQRLabel;
    BCDS: TQRLabel;
    XPColorMap1: TXPColorMap;
    TwilightColorMap1: TTwilightColorMap;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel30: TQRLabel;
    EditIdoso: TQRLabel;
    Query2: TQuery;
    QRDBText19: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMontado1: TFormRelatorioMontado1;

implementation

uses telaentrada;

{$R *.dfm}

procedure TFormRelatorioMontado1.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//QrLabel46.mask:='###,##0.##';
end;

procedure TFormRelatorioMontado1.FormActivate(Sender: TObject);
begin
QrLabel6.Caption:= 'Versão : ' + FormEntrada.versao;
end;

end.
