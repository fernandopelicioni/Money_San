unit UnPai;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TPai = class(TDataModule)
    Genoma: TADOConnection;
    QrMovBcd: TADOQuery;
    QrLinhas: TADOQuery;
    QrTipLin: TADOQuery;
    QrAcertador: TADOQuery;
    QrVeiculos: TADOQuery;
    QrVeiCat: TADOQuery;
    QrLinhasCompletas: TADOQuery;
    QrParam: TADOQuery;
    QrUsuarios: TADOQuery;
    QrColigadas: TADOQuery;
    QrColigadasCOD_COLIGADA: TWordField;
    QrColigadasDES_COLIGADA: TWideStringField;
    QrColigadasCGC_COLIGADA: TWideStringField;
    QrColigadasLOGO: TBlobField;
    QrColigadasPERFIL: TWideStringField;
    QrUsuariosUSU_CODIGO: TWordField;
    QrUsuariosUSU_LOGIN: TWideStringField;
    QrUsuariosUSU_SENHA: TWideStringField;
    QrUsuariosUSU_PERFIL: TWideStringField;
    QrUsuariosUSU_NIVEL: TWordField;
    QrProfissionais: TADOQuery;
    QrTipLinTLI_COD: TWordField;
    QrTipLinTLI_DES: TStringField;
    QrTipLinTLI_TARIFAATUAL: TBCDField;
    QrTipLinTLI_TARIFAANTERIOR: TBCDField;
    QrTipLinTLI_TARIFADESCONTO: TBCDField;
    QrTipLinTLI_TARIFADESCONTOANTERIOR: TBCDField;
    QrTipLinTLI_COLIGADA: TWordField;
    QrTipLinCompl: TADOQuery;
    QrVales: TADOQuery;
    QrPro: TADOQuery;
    QrPmc: TADOQuery;
    QrCaixa: TADOQuery;
    QrMotCan: TADOQuery;
    QrTaloes: TADOQuery;
    QrTipLinTLI_TALAO: TWideStringField;
    QrTemp: TADOQuery;
    QrBcd: TADOQuery;
    QrBcdTBCD_COD: TIntegerField;
    QrBcdTBCD_DATA: TDateTimeField;
    QrBcdTBCD_FUNC: TSmallintField;
    QrBcdTBCD_LINHA: TIntegerField;
    QrBcdTBCD_DTSIS: TDateTimeField;
    QrBcdTBCD_COLIGADA: TWordField;
    QrBcdTBCD_STATUS: TWideStringField;
    QrBcdTBCD_TIPO: TWideStringField;
    QrDebitos: TADOQuery;
    QrDebitoschapa: TWideStringField;
    QrDebitosNom_pro: TWideStringField;
    QrDebitosMdf_Valor: TBCDField;
    QrDebitosMdf_data: TDateTimeField;
    QrDebitosMdf_Status: TWideStringField;
    QrDebitosMdf_DtRec: TDateTimeField;
    QrDebitosMdf_Usuario: TWordField;
    QrMotDebito: TADOQuery;
    QrDebitosMdf_MotBaixa: TWordField;
    QrAcessos: TADOQuery;
    QrUsuariosTRE_COD: TSmallintField;
    QrUsuariosTRE_USU: TWordField;
    QrUsuariosTRE_MESTRE: TWideStringField;
    QrUsuariosTRE_PEOPLE: TWideStringField;
    QrUsuariosTRE_CENTERBUS: TWideStringField;
    QrUsuariosTRE_CONTROLBUS: TWideStringField;
    QrUsuariosTRE_MONEY: TWideStringField;
    QrUsuariosTRE_CLOCK: TWideStringField;
    QrUsuariosTRE_COLABORADORES: TWideStringField;
    QrUsuariosTRE_TIPOATENDIMENTO: TWideStringField;
    QrUsuariosTRE_CLINICASMEDICAS: TWideStringField;
    QrUsuariosTRE_LABORATORIOS: TWideStringField;
    QrUsuariosTRE_MEDICOS: TWideStringField;
    QrUsuariosTRE_FUNCOES: TWideStringField;
    QrUsuariosTRE_CANDIDATOS: TWideStringField;
    QrUsuariosTRE_BANCOTALENTOS: TWideStringField;
    QrUsuariosTRE_CENTRALRH: TWideStringField;
    QrUsuariosTRE_ANIVERSARIANTES: TWideStringField;
    QrUsuariosTRE_LIVROEXPERIENCIA: TWideStringField;
    QrUsuariosTRE_CURSOS: TWideStringField;
    QrUsuariosTRE_EXAMESCANDIDATOS: TWideStringField;
    QrUsuariosTRE_ATENDIMENTOPERSONALIZADO: TWideStringField;
    QrUsuariosTRE_HISTORICOADVERETNCIA: TWideStringField;
    QrUsuariosTRE_INTEGRACORPORE: TWideStringField;
    QrUsuariosTRE_DEPARTAMENTO: TWideStringField;
    QrUsuariosTRE_CONSULTACOLABORADORES: TWideStringField;
    QrUsuariosTRE_CONVOCAR: TWideStringField;
    QrUsuariosTRE_CENTRALOPERACIONAL: TWideStringField;
    QrUsuariosTRE_PM: TWideStringField;
    QrUsuariosTRE_PROBLEMASOPERACAO: TWideStringField;
    QrUsuariosTRE_HABILITACAO: TWideStringField;
    QrUsuariosTRE_FICHAFUNCIONAL: TWideStringField;
    QrUsuariosTRE_EMISSAOEXAMES: TWideStringField;
    QrUsuariosTRE_CENTRALMEDICA: TWideStringField;
    QrUsuariosTRE_EXAMESCADASTRADOS: TWideStringField;
    QrUsuariosTRE_EXAMESPENDENTES: TWideStringField;
    QrUsuariosTRE_CONTROLEACESSO: TWideStringField;
    QrUsuariosTRE_EXAMECANDIDATO: TWideStringField;
    QrUsuariosTRE_COLIGADA: TWordField;
    QrUsuariosUSU_MODULO: TWideStringField;
    QrUsuariosUSU_STILO: TWideStringField;
    QrUsuariosUSU_ATIVO: TWideStringField;
    QrDebitosMdf_Cod: TSmallintField;
    Corpore: TADOConnection;
    QrAtivacao: TADOQuery;
    QrAtivacaoID: TIntegerField;
    QrAtivacaoCHAVE: TWideStringField;
    QrAtivacaoAPP: TWideStringField;
    QrAtivacaoATIVACAO: TDateTimeField;
    QrCadastraPro: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pai: TPai;

implementation

{$R *.dfm}

end.