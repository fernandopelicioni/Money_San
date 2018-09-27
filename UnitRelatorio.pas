unit UnitRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,
  RpRenderText, RpRender, RpRenderPDF,  ComCtrls, StdCtrls;

type
  TRelatorio = class(TForm)
    Projeto: TRvProject;
    RvSystem1: TRvSystem;
    CnMov: TRvDataSetConnection;
    QrMov: TADOQuery;
    Qrlinhas: TADOQuery;
    CnLinhas: TRvDataSetConnection;
    CnColigadas: TRvDataSetConnection;
    QrCatracas: TADOQuery;
    CnCatracas: TRvDataSetConnection;
    QrResumoDiario: TADOQuery;
    CnResumoDiario: TRvDataSetConnection;
    QrResumoLinha: TADOQuery;
    CnResumoLinha: TRvDataSetConnection;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderText1: TRvRenderText;
    QrMovConf: TADOQuery;
    CnMovConf: TRvDataSetConnection;
    Carrega: TMemo;
    Label1: TLabel;
    QrMovDebito: TADOQuery;
    CnDebito: TRvDataSetConnection;
    QrBcdGerado: TADOQuery;
    CnBoletimGerado: TRvDataSetConnection;
    CnCaixa: TRvDataSetConnection;
    QrCaixa: TADOQuery;
    QrMovBcd: TADOQuery;
    CnMovBcd: TRvDataSetConnection;
    QrTalao: TADOQuery;
    CnTaloes: TRvDataSetConnection;
    QrMediaPas: TADOQuery;
    CnMediaPas: TRvDataSetConnection;
    QrMediaResp: TADOQuery;
    CnMediaResp: TRvDataSetConnection;
    QrMediaAce: TADOQuery;
    CnMediaAce: TRvDataSetConnection;
    QrListaDebito: TADOQuery;
    CnListaDebito: TRvDataSetConnection;
    QrConsistencia: TADOQuery;
    CnConsistencia: TRvDataSetConnection;
    QrCobBcd: TADOQuery;
    CnCobBcd: TRvDataSetConnection;
    qrdebito: TADOQuery;
    DtDebito: TRvDataSetConnection;
    QrConsultaBcd: TADOQuery;
    CnConsultaBcd: TRvDataSetConnection;
    QrTipLinha: TADOQuery;
    CnTipLinhas: TRvDataSetConnection;
    CarregaCorpore: TMemo;
    QrPassLinhaCob: TADOQuery;
    CnPasslinhaCob: TRvDataSetConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relatorio: TRelatorio;

implementation

uses UnPai;

{$R *.dfm}

end.