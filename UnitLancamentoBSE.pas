{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit UnitLancamentobse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, DBTables, ComCtrls, ActnColorMaps,
  ActnMan, CustomizeDlg, XPStyleActnCtrls, ActnList, ToolWin, ActnCtrls,
  ActnMenus, ExtCtrls, Buttons, XPMan, IWControl, IWCompEdit, IWDBStdCtrls,
  jpeg, Grids, DBGrids, ADODB, pngimage;

type
  TFormLancamentoBSE = class(TForm)
    GroupBox1: TGroupBox;
    DtMov: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    DtLinha: TDataSource;
    DtVeiculo: TDataSource;
    btsalva: TBitBtn;
    x: TSpeedButton;
    cat: TSpeedButton;
    DtPro: TDataSource;
    PULADOR: TSpeedButton;
    EditBcd: TMaskEdit;
    DtLotes: TDataSource;
    DtColigada: TDataSource;
    EditLinha: TEdit;
    Editveiculo: TEdit;
    BalloonHint1: TBalloonHint;
    QrMovBcd: TADOQuery;
    QrMovBcdBCD_COD: TAutoIncField;
    QrMovBcdBCD_NUM: TIntegerField;
    QrMovBcdBCD_DATA: TDateTimeField;
    QrMovBcdBCD_VEI: TWideStringField;
    QrMovBcdBCD_CATINI: TIntegerField;
    QrMovBcdBCD_CATFIN: TIntegerField;
    QrMovBcdBCD_PEATU: TSmallintField;
    QrMovBcdBCD_PEANT: TSmallintField;
    QrMovBcdBCD_VTEATU: TSmallintField;
    QrMovBcdBCD_VTEANT: TSmallintField;
    QrMovBcdBCD_LIVRE: TSmallintField;
    QrMovBcdBCD_TOTAL: TSmallintField;
    QrMovBcdBCD_LIQUIDO: TSmallintField;
    QrMovBcdBCD_DINHEIRO: TBCDField;
    QrMovBcdBCD_DESCONTO: TSmallintField;
    QrMovBcdBCD_RESPONSAVEL: TSmallintField;
    QrMovBcdBCD_ACERTADOR: TWordField;
    QrMovBcdBCD_COLIGADA: TWordField;
    QrMovBcdBCD_SISTEMA: TWordField;
    Dtparam: TDataSource;
    QrCat: TADOQuery;
    Image1: TImage;
    Label22: TLabel;
    Panel2: TPanel;
    DBText1: TDBText;
    QrMovBcdBCD_LIN: TIntegerField;
    Timer1: TTimer;
    QrMovBcdBCD_DATAHORA: TDateTimeField;
    EditData: TLabel;
    Label14: TLabel;
    DBText6: TDBText;
    Label2: TLabel;
    Image3: TImage;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Btcancel: TBitBtn;
    GroupBox2: TGroupBox;
    Image2: TImage;
    EditMalote: TEdit;
    Label5: TLabel;
    EditDinheiro: TEdit;
    Label6: TLabel;
    QrMovConf: TADOQuery;
    DBText3: TDBText;
    QrMovBcdBCD_OUTROS: TSmallintField;
    Memo1: TMemo;
    LabelRecibo: TLabel;
    QrMovBcdBcd_tarifaAtual: TFloatField;
    QrMovBcdBcd_tarifaAnterior: TFloatField;
    GroupBox3: TGroupBox;
    EditDebito: TEdit;
    Image4: TImage;
    Label12: TLabel;
    LabelDebito: TLabel;
    SpeedButton1: TSpeedButton;
    QrMovDebito: TADOQuery;
    Label13: TLabel;
    StatusBar1: TStatusBar;
    QrCatracas: TADOQuery;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    edittotal: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    editptotal: TDBText;
    Label23: TLabel;
    LabelOutros: TLabel;
    editescolaratual: TDBEdit;
    editescolaranterior: TDBEdit;
    editvtatual: TDBEdit;
    editvtanterior: TDBEdit;
    editlivre: TDBEdit;
    editpagante: TDBEdit;
    editcatracafinal: TDBEdit;
    EditCatracaInicial2: TEdit;
    EditDesconto: TDBEdit;
    editOutros: TDBEdit;
    DtCatracaas: TDataSource;
    EditFuncionario: TEdit;
    DtBcd: TDataSource;
    EditVtDesAtual: TDBEdit;
    Label15: TLabel;
    EditVtDesAnterior: TDBEdit;
    Label21: TLabel;
    EditPeDesAtual: TDBEdit;
    EditPeDesAnterior: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    QrMovBcdBCD_VTDESANT: TSmallintField;
    QrMovBcdBCD_VTDESATU: TSmallintField;
    QrMovBcdBCD_PEDESATU: TSmallintField;
    QrMovBcdBCD_PEDESANT: TSmallintField;
    QrMovBcdBCD_TARIFADESCONTO: TFloatField;
    QrMovBcdBCD_VTPAPEL: TSmallintField;
    QrMovBcdBCD_PEPAPEL: TSmallintField;
    QrMovBcdBCD_POPULAR: TSmallintField;
    QrMovBcdBCD_SOCIAL: TSmallintField;
    EditPopular: TDBEdit;
    Label26: TLabel;
    EditIdoso: TDBEdit;
    Label27: TLabel;
    QrMovBcdBCD_IDOSO: TSmallintField;
    Label28: TLabel;
    EditGrat3: TDBEdit;
    QrMovBcdBCD_GRAT3: TSmallintField;
    EditVPapel: TDBEdit;
    EditPPapel: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    EditSocial: TDBEdit;
    Label32: TLabel;
    Label31: TLabel;
    EditGratuidade: TDBEdit;
    QrMovBcdBCD_VTREST: TSmallintField;
    QrMovBcdBCD_GRATUIDADE: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure editveiculoKeyPress(Sender: TObject; var Key: Char);
    procedure editlinhaKeyPress(Sender: TObject; var Key: Char);
    procedure editcatracafinalKeyPress(Sender: TObject; var Key: Char);
    procedure editbcdKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure editpfatualKeyPress(Sender: TObject; var Key: Char);
    procedure editpfanteriorKeyPress(Sender: TObject; var Key: Char);
    procedure editescolaratualKeyPress(Sender: TObject; var Key: Char);
    procedure editescolaranteriorKeyPress(Sender: TObject; var Key: Char);
    procedure editvtatualKeyPress(Sender: TObject; var Key: Char);
    procedure editvtanteriorKeyPress(Sender: TObject; var Key: Char);
    procedure editlivreKeyPress(Sender: TObject; var Key: Char);
    procedure editgratuidadeKeyPress(Sender: TObject; var Key: Char);
    procedure editveatualKeyPress(Sender: TObject; var Key: Char);
    procedure editegratuitoKeyPress(Sender: TObject; var Key: Char);
    procedure editpaganteKeyPress(Sender: TObject; var Key: Char);
    procedure editcatracainicialKeyPress(Sender: TObject; var Key: Char);
    procedure editveanteriorKeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure editlinhaExit(Sender: TObject);
    procedure catClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure EditFuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditCatracaInicial2KeyPress(Sender: TObject; var Key: Char);
    procedure PULADORClick(Sender: TObject);
    procedure EditDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure editpfanteriorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editescolaratualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editescolaranteriorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editvtatualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editvtanteriorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editlivreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editgratuidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editveatualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editveanteriorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editegratuitoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditIdosoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editpaganteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCatracaInicial2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editcatracafinalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editbcdExit(Sender: TObject);
    procedure editveiculoExit(Sender: TObject);
    procedure editbcdEnter(Sender: TObject);
    procedure editveiculoEnter(Sender: TObject);
    procedure editlinhaEnter(Sender: TObject);
    procedure editpfatualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editlinhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editveiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure EditIdosoKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditMaloteKeyPress(Sender: TObject; var Key: Char);
    procedure EditDinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure EditDinheiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMaloteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editOutrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editOutrosKeyPress(Sender: TObject; var Key: Char);
    procedure EditDebitoKeyPress(Sender: TObject; var Key: Char);
    procedure BtcancelClick(Sender: TObject);
    procedure editcatracafinalEnter(Sender: TObject);
    procedure EditFuncionarioEnter(Sender: TObject);
    procedure EditFuncionarioExit(Sender: TObject);
    procedure editcatracafinalExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditVtDesAtualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVtDesAnteriorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPeDesAtualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPeDesAnteriorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVtDesAtualKeyPress(Sender: TObject; var Key: Char);
    procedure EditVtDesAnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure EditPeDesAtualKeyPress(Sender: TObject; var Key: Char);
    procedure EditPeDesAnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure EditCatracaInicial2Enter(Sender: TObject);
    procedure EditPopularKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPopularKeyPress(Sender: TObject; var Key: Char);
    procedure EditGrat3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditGrat3KeyPress(Sender: TObject; var Key: Char);
    procedure EditVPapelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPPapelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPPapelKeyPress(Sender: TObject; var Key: Char);
    procedure EditVPapelKeyPress(Sender: TObject; var Key: Char);
    procedure EditSocialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSocialKeyPress(Sender: TObject; var Key: Char);
  private
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
    { Private declarations }
  public
//    LANCARSISTEMA:STRING;
      QtTaloes:word;
    { Public declarations }
  end;

var
  FormLancamentoBSE: TFormLancamentoBSE;
   cauculo: integer;
   Catracados,Informados,giros: integer;
   BcdAtual : String;
   TotalDinheiro: real;
   valor: real;
   sistema,TipoLancamento:String[1];
   ValorDebito,AcertadorAtual,DataAtual : String;
   Linha:INTEGER;


implementation

uses UnPai, UnitDadosMov, UnitLancamento, UnitRelatorio,
  UnitIniciaSistema, UnitLancamentoBuscaPro, UnitLancamentoUltimasCatracas,
  UnitSelecionaTalao;

{$R *.dfm}

procedure TFormLancamentoBSE.FormShow(Sender: TObject);
var  Vertical,Horizontal:integer;
begin
Vertical := GetSystemMetrics(SM_CXSCREEN);
Horizontal := GetSystemMetrics(SM_CYSCREEN);
if (vertical <> 1024) or (horizontal <> 768) then MessageBox(handle,'Este sistema foi Desenvolvido para rodar com a Resolu��o 1024 X 768, � aconselh�vel Alterar a Resolu��o','Problemas de Resolu��o', MB_OK + MB_ICONInformation);

//statusbar1.panels[1].Text:='Acertador Atual: ' + formInfo.usuario +' - ' +forminfo.nome;
BitBtn2.SetFocus;
//editdata.caption:=       FormInfo.dialancamento;
//puladorClick             (nil);

Application.OnMessage := ProcessaMsg;
end;

procedure TFormLancamentoBSE.BitBtn2Click(Sender: TObject);
begin
pai.Genoma.Connected:=true;
DtMov.DataSet.Cancel;
Color:=$00F8E3D1 ;
EditFuncionario.Text:='';
EditDebito.Text:='';
ValorDebito:='';
EditMalote.Text:='';
EditDinheiro.Text:='';
Editveiculo.Text:='';
EditLinha.Text:='';
EditCatracaInicial2.Text:='';
GroupBox1.Enabled:=true;
GroupBox2.Enabled:=false;
GroupBox3.Enabled:=false;
Dtlinha.DataSet.Close;
DtPro.DataSet.Close;
//Dtparam.DataSet.Close;
DtVeiculo.DataSet.Close;
editdata.caption:=          DataAtual;
editbcd.enabled:=           True;
EditBcd.text:=                   '';
editCatracaFinal.enabled:=  true;
EditCatracaInicial2.Text:=  '';
editbcd.                    SetFocus;
end;

procedure TFormLancamentoBSE.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFormLancamentoBSE.BtcancelClick(Sender: TObject);
begin
DtMov.DataSet.Cancel;
QrMovDebito.Cancel;
QrMovConf.Cancel;
QrMovBcd.Close;
Pai.QrBcd.Cancel;
BitBtn2.Click;
end;

procedure TFormLancamentoBSE.editveiculoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
    Key:=#0;
    With pai.QrVeiCat do
       begin
        Close;
         Sql.Clear;
          Sql.Add('select Vei_Nun, vei_lacre, Vei_Coligada from Tb_Veiculos');
           Sql.Add('where VEI_NUN = ' + QuotedStr(EditVeiculo.Text));
            Sql.Add('and Vei_IntMon = ' + QuotedStr('S'));
             sql.Add('and vei_coligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString)  ;
        Open;
        if not eof then
              begin
                      if EditCatracaInicial2.Text = '' then
                            begin
                                   With QrCat do
                                            begin
                                                  Close;
                                                   Sql.Clear;
                                                    Sql.Add('select max(A.bcd_catfin) from tb_monmov A where A.bcd_vei = ' + QuotedStr(EditVeiculo.text));
                                                     Sql.Add('and A.Bcd_Data = (select max(bcd_data)from Tb_MonMov B where B.bcd_vei = ' + QuotedStr(EditVeiculo.text) + ')');
                                                      Open;
                                                       if QrMovBcd.State = DsInsert then
                                                       begin
                                                              if Fields[0].Value > 0 then
                                                                     EditCatracaInicial2.Text:=IntToStr(Fields[0].Value)
                                                                     else
                                                                     EditcatracaInicial2.Text:='0';
                                                       end;
                                            end;
                            end;
                         EditLinha.Enabled:=true;
                         EditLinha.SetFocus;
              end
              else
              begin
                         MessageBox(Handle,'Se o ve�culo existe, Verifique se est� d�sponivel para lan�amento no m�dulo Center Bus','N�o Encontrado',Mb_IconInformation+Mb_Ok);
                         Editveiculo.Text:='';
                         EditVeiculo.SetFocus;
              end;

      end;
end;

end;

procedure TFormLancamentoBSE.editlinhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
    key:=#0;
     if DtColigada.DataSet.FieldByName('cod_coligada').AsString = '3' then
           Linha:=(StrToInt(EditLinha.Text)+300)
           else
           Linha:=sTRtOiNT(EditLinha.Text);
     with Pai.QrLinhasCompletas Do
         Begin
             Close;
              Sql.Clear;
               Sql.Add('Select * from Tb_MonLin A, Tb_MonTipLin B');
                Sql.Add('Where B.TLI_Cod = A.Lin_Tipo');
                 Sql.Add('And A.Lin_Cod = ' + QuotedStr(IntToStr(Linha)));
                   Sql.Add('And B.TLi_Cod = ' + QuotedStr(FormDadosMov.DtSIstema.DataSet.FieldByName('TLI_Cod').AsString));
                    Sql.Add('And A.Lin_Status = ' + QuotedStr('A'));
                    Open;
             if Not Eof then
                    begin
// Pulador, Funcao que define quais campos serao mostrados ou desabilitados sera feito na escolha do tipo de linha da tela anterior
                           Panel1.Enabled:=true;
                           Perform(WM_NextDlgCtl,0,0);
//                           Panel1.SetFocus;
                    End
                    Else
                    Begin
                           MessageBox(handle,'Linha n�o Encontrada, pertence a outra Coligada ou n�o est� ativa !','Aten��o !!!', MB_IconInformation + MB_OK);
                           editLinha.text:=' ';
                           EditLinha.SetFocus;
                    End;

                end;

      end;
end;

procedure TFormLancamentoBSE.editcatracafinalKeyPress(Sender: TObject;
  var Key: Char);
Var Informados,Catracados:integer;
begin
if key = #13 then
   Begin
       Key:=#0;
        EditCatracaInicial2.SetFocus;
   end;
end;

procedure TFormLancamentoBSE.editbcdKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
   begin
         key:=#0;
         with QrMovBcd do
              begin
                   if EditBcd.text <> '' then
                       begin
//  ********************************** Ajuste devido a mudan�a de numera��o do sistema **********
//                            BcdAtual:=EditBcd.Text;
                           if (DtColigada.DataSet.FieldByName('Cod_Coligada').AsInteger = 1)  and (Sistema = '1') and (StrToInt(EditBcd.Text) < 840000) then  // 840000 � o primeiro boletim da numeracao antiga
                                      begin
                                           BcdAtual:=FormatFloat('0000000',StrToInt(EditBcd.text)+1000000)
                                      end;
                            if (DtColigada.DataSet.FieldByName('Cod_Coligada').AsInteger = 3)  then
                                     BcdAtual:=FormatFloat('0000000',StrToInt(EditBcd.text)+3000000);

                         if (DtColigada.DataSet.FieldByName('Cod_Coligada').AsInteger = 4)  then
                                  BcdAtual:=FormatFloat('0000000',StrToInt(EditBcd.text)+4000000);

                         //BcdAtual:=EditBcd.Text;


                        //    showmessage((bcdatual) + sistema);
                            Close;
                            Sql.Clear;
                            Sql.Add('Select * from Tb_MonMov');
                            Sql.Add('Where BCd_Num = ' + QuotedStr(BcdAtual));
                            Sql.Add('And Bcd_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                            Sql.Add('And Bcd_Sistema = ' + QuotedStr(FormDadosMov.DtSIstema.DataSet.FieldByName('TLI_COD').AsString));
                            Open;
                            if Eof then
                                  Begin
                                       with Pai.QrBcd do
                                            begin
                                                 Close;
                                                 Sql.Clear;
                                                 Sql.Add('select * from tb_monbcd where (Tbcd_Status = '+QuotedStr('A') + ' or TBcd_Status = ' + QuotedStr('E'));
                                                 Sql.Add(') and Tbcd_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                 Sql.Add('And Tbcd_Cod = ' + QuotedStr(BcdAtual));
                                                 Open;
                                                 if not eof then
                                                      begin
                                                           // Se BCD tiver sido Gerado...
                                                           if DataAtual <> Pai.QrBcd.FieldByName('Tbcd_Data').AsString then
                                                                  begin
                                                                      // Se a data do lancamento for diferente do bcd lancado ele pergunta
                                                                       beep;
                                                                       if MessageDlg('A data de Gera��o do Boletim � diferente da Data do Lan�amento !!!, '+#13+'Deseja Lan�ar mesmo assim?',MtConfirmation,[mbyes,Mbno],0) =mryes then
                                                                              Begin
                                                                                    // se a data do lancamento for diferente e resposa for sim
                                                                                    Editveiculo.Enabled:=true;
                                                                                    DtMov.DataSet.Insert;
                                                                                    Color:=$00F8E3D1;
                                                                                    EditVeiculo.SetFocus;
                                                                              End
                                                                              else
                                                                              Begin
//                                                                                  MessageBox(handle,'Este Boletim N�o foi Gerado e por isso N�o pode ser Lan�ado','Boletim N�o Gerado / Alocado',MB_OK + MB_ICONStop);
                                                                                    Btcancel.Click;
                                                                                    BitBtn2.Click;

                                                                              End;
                                                                   end
                                                                   else
                                                                   begin
                                                                          // Se A data do lancamento for igual a do Bcd gerado
                                                                          Editveiculo.Enabled:=true;
                                                                          DtMov.DataSet.Insert;
                                                                          Color:=$00F8E3D1;
                                                                          EditVeiculo.SetFocus;
                                                                   end;
                                                             end
                                                             else
                                                             begin
                                                                        MessageBox(handle,'Este Boletim N�o foi Gerado Ou Est� Cancelado, E por isto, n�o pode ser Lan�ado','Boletim N�o Gerado Ou Cancelado',MB_OK + MB_ICONStop);
                                                                         Btcancel.Click;
                                                                          BitBtn2.Click;
                                                             end;
                                            end;
                                    End
                                    Else
                                    begin
                                          IF MessageDlg('Boletim ja foi Digitado, '+#13+'Deseja Alterar ?',MtConfirmation,[MByes, MBNO],0) = Mryes then
                                                begin
                                                      EditVeiculo.Text:=DtMov.DataSet.FieldByName('Bcd_vei').AsString;
                                                      if DtColigada.DataSet.FieldByName('cod_coligada').AsInteger = 3 then
                                                                EditLinha.Text:=IntToStr(DtMov.DataSet.FieldByName('Bcd_Lin').AsInteger - 300)
                                                                else
                                                                EditLinha.Text:=DtMov.DataSet.FieldByName('Bcd_Lin').AsString;

                                                      //EditFuncionario.Text:=DtMov.DataSet.FieldByName('Bcd_Responsavel').AsString;
                                                      EditCatracaInicial2.Text:=DtMov.DataSet.FieldByName('Bcd_CatIni').AsString;
                                                      DtMov.DataSet.Edit;
                                                      Color:=cLbTNfACE;
                                                      if FormDadosMov.ChkRecibo.Checked = true then
                                                           begin
                                                                 With QrMovConf do
                                                                     begin
                                                                           Close;
                                                                           Sql.Clear;
                                                                           Sql.Add('Select * from tb_monConferencia');
                                                                           Sql.Add('Where Mcf_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                           Sql.Add('And Mcf_Bcd = ' + QuotedStr(BcdAtual));
                                                                           Open;
                                                                           EditMalote.Text:=QrMovConf.FieldByName('Mcf_Malote').AsString;
                                                                           EditDinheiro.Text:=QrMovConf.FieldByName('Mcf_Especie').AsString;
                                                                           Edit;
                                                                     end;
                                                           end;
                                                      if FormDadosMov.ChkDebito.Checked = true then
                                                           begin
                                                                 With QrMovDebito do
                                                                     begin
                                                                           Close;
                                                                           Sql.Clear;
                                                                           Sql.Add('Select * From Tb_MonDebito');
                                                                           Sql.Add('Where Mdf_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                           Sql.Add('And Mdf_Bcd = ' + QuotedStr(BcdAtual));
                                                                           Open;
                                                                           EditDebito.Text:=QrMovDebito.FieldByName('Mdf_valor').AsString;
                                                                     end;
                                                           end;
                                                      Editveiculo.Enabled:=true;
                                                      EditVeiculo.SetFocus;
                                                end
                                                else
                                                begin
                                                         // Alterar bcd: negativa
                                                         Btcancel.Click;
                                                         BitBtn2.Click;
                                                end;
                                    end;
                          end else
                          begin
                               EditBcd.SetFocus
                           end;

              end;



   //   With QrLotes do
//    begin
    // close;
//     Sql.Clear;
//     Sql.Add('Select * from Lotes');
//     Sql.Add('Where DT_Movimento = ' + QuotedStr(DataAtual));
//     Sql.Add(';');
//     Edit1.Text:=Sql.text;
//     Filter:='DT_Movimento = ' + QuotedStr(dataAtual);
//     Filtered:=true;
  //   Open;
 //    End;
    // If (QrLotes.Eof) or (sistema='2') or ((StrtoInt(Editbcd.text) >= StrToInt(QrLotesLote_Inicial.text)) and
      //  (StrtoInt(Editbcd.text)<= StrToInt(QrLotesLote_Final.text))) then
   //     begin
    //      BcdAtual:=EditBcd.Text;
     //     AchaBcdClick(nil);
     //     End   //else begin
   //  Else
   //  Begin
//     ShowMessage('Boletim n�o esta liberado para uso neste dia, confira o cadasto de Lotes'+#13+
    //             'Lote Inicial Liberedo : ' + QrLotesLote_Inicial.text + #13 +
  //               'Lote Final   Liberado : ' + QrLotesLote_Final.text);
//     BitBtn2.Click;
//     End;
//    End;

   end;
end;

procedure TFormLancamentoBSE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//DtFuncionario.DataSet.Close;
pai.QrBcd.Close;
Dtpro.DataSet.Close;
DtMov.DataSet.Close;
QrMovDebito.Close;
QrMovConf.Close;
DtVeiculo.Dataset.close;
DtLinha.DataSet.Close;
FormDadosMov.Close;
Action:=cafree;
end;

procedure TFormLancamentoBSE.editpfatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamentoBSE.editpfanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);

   end;
if key = #11 then
    begin
//    key:=#0;
    Perform(WM_NextDlgCtl,0,0 );
    end;

end;

procedure TFormLancamentoBSE.editescolaratualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editEscolarAtual.Text = '' then
        editEscolarAtual.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoBSE.editescolaranteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editEscolarAnterior.Text = '' then
       editEscolarAnterior.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamentoBSE.editvtatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editVtatual.Text = '' then
       editVtAtual.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamentoBSE.EditVtDesAnteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditVtDesAnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if EditVtDesAnterior.Text = '' then
        EditVtDesanterior.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoBSE.EditVtDesAtualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditVtDesAtualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if EditVtDesAtual.Text = '' then
        EditVtDesAtual.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;


end;

procedure TFormLancamentoBSE.editvtanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editVtanterior.Text = '' then
       editVtAnterior.Text:='0';

    Perform(WM_NextDlgCtl,0,0);
//    editlivre.setfocus;
    end;

end;

procedure TFormLancamentoBSE.editlivreKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editLivre.Text = '' then
         editLivre.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
//   editgratuidade.setfocus;
    end;

end;

procedure TFormLancamentoBSE.EditMaloteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
       EditCatracaFinal.SetFocus;
    //Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditMaloteKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
    begin
         key:=#0;
         if Editmalote.Text = '' then editmalote.Text:='0';
         EditDinheiro.SetFocus;
    end;

end;

procedure TFormLancamentoBSE.editgratuidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editGratuidade.Text = '' then
         editGratuidade.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
//   editgratuidade.setfocus;
    end;

end;

procedure TFormLancamentoBSE.editveatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editveanterior.setfocus;
    end;

end;

procedure TFormLancamentoBSE.editegratuitoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//   editpagante.setfocus;
    end;

end;

procedure TFormLancamentoBSE.editpaganteKeyPress(Sender: TObject;
  var Key: Char);
var tarifa: real;
       Msg:string;
       Pas: word;
begin
if key = #13 then
    begin
    key:=#0;
            if editpagante.Text = '' then editPagante.Text:='0';
             currencyString:='R$';
              CurrencyDecimals:=2;
               tarifa:=StrToFloat(DtLinha.DataSet.FieldByName('TLI_TARIFAATUAL').AsString);
     //           valor:=valor+ (StrToFloat(EditDesconto.text) * tarifaDesconto);
                valor:= valor + (StrToFloat(EditPagante.text) * tarifa);
                EditTotal.Caption:=FormatFloat('###,##0.00',valor);
                EditDinheiro.text:=FormatFloat('###,##0.00',valor);
                DtMov.DataSet.FieldByName('Bcd_Dinheiro').AsString:=floattoStr(valor);
                if Catracados = Informados+StrToInt(EditPagante.Text)+StrToInt(EditDesconto.Text) then
                     begin
                          if Dtparam.DataSet.FieldByName('Tli_Talao').AsString = 'S' then
                                 begin
                                         pas:= (StrToInt(EditVtAtual.Text) + StrToInt(EditVtAnterior.Text) + StrToInt(EditEscolarAtual.Text) + StrToInt(EditEscolarAnterior.Text) + StrToInt(EditPagante.Text));
                                         Application.CreateForm(TFormSelecionaTalao,FormSelecionaTalao);
                                         FormSelecionaTalao.Panel1.Caption:='Escolha ' + FormatFloat('00',pas) + ' Tal�es !';
                                         FormSelecionaTalao.ShowModal;
                                         if QtTaloes <> pas then
                                                begin
                                                       Msg:='A quantidade de Tal�es Informados/Utilizados n�o conferem'+#13+
                                                            'Tal�es Informados : ' + IntTostr(QtTaloes) +#13+
                                                            'Passageiros : ' + IntToStr(pas);
                                                       MessageBox(handle,Pchar(Msg),'Erro na Quantidade de Tal�es',MB_OK + MB_ICONStop);
                                                       Screen.Cursor:=CrDefault;
                                                       EditCatracaFinal.SetFocus;
                                                end
                                                else
                                                begin
                                                      if FormDadosMov.ChkRecibo.Checked = false then
                                                           begin
                                                                 EditMalote.Text:='';
                                                                 EditDinheiro.Text:='';
                                                                 EditDebito.Text:='';
                                                                 EditFuncionario.Enabled:=true;
                                                                 EditFuncionario.setfocus;
                                                           end
                                                           else
                                                           begin
                                                                 GroupBox2.Enabled:=true;
                                                                 EditMalote.SetFocus;
                                                           end;
                                                end;
                                  end
                                  else
                                  begin
                                  if FormDadosMov.ChkRecibo.Checked = false then
                                         begin
                                               EditMalote.Text:='';
                                               EditDinheiro.Text:='';
                                               EditDebito.Text:='';
                                               EditFuncionario.Enabled:=true;
                                               EditFuncionario.setfocus;
                                         end
                                         else
                                         begin
                                               GroupBox2.Enabled:=true;
                                               EditMalote.SetFocus;
                                         end;
                                  end;
                      end
                      else
                      begin
                            Msg:='Quantitativos Informados n�o est�o corretos, verifique !'+#13 +
                            'Catracados : ' + IntToStr(Catracados)+#13 +
                            'Informados : ' + IntToStr(Informados+StrToInt(EditPagante.Text)+StrToInt(EditDesconto.Text)) +#13+
                            'Corrija antes de prosseguir !';
                            MessageBox(handle,Pchar(Msg),'Erro de Calculo',MB_OK + MB_ICONStop);
                            EditCatracaFinal.SetFocus;
                      end;
                   end;
end;

procedure TFormLancamentoBSE.editcatracainicialKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    editcatracaFinal.Enabled:=true;
    editcatracafinal.setfocus;

    end;

end;

procedure TFormLancamentoBSE.editveanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamentoBSE.btsalvaClick(Sender: TObject);
begin
if (DtMov.DataSet.State = DsInsert) or (DtMov.Dataset.State = DsEdit) then
       begin
              Screen.Cursor:=CrHourGlass;
              Color:=$00F8E3D1;
              GroupBox1.Enabled:=False;
  //caucula passageiros informado x catracados;
              if editEscolarAtual.Text = ''    then  editEscolarAtual.text:='0';
              if editEscolarAnterior.Text = '' then  editEscolarAnterior.text:='0';
              if editVtAtual.Text = ''         then  editVtAtual.text:='0';
              if editVtAnterior.Text = ''      then  editVtAnterior.text:='0';
              if editLivre.Text = ''           then  editLivre.text:='0';
              if editPagante.Text = ''         then  editPagante.text:='0';
              if editdESCONTO.Text = ''        then  editdESCONTO.text:='0';
              if EditSocial.Text = ''          Then  EditSocial.text:='0';
              if EditIdoso.Text = ''           Then  EditIdoso.text:='0';
              if Editpopular.Text = ''         Then  EditPopular.text:='0';
              if EditGrat3.Text = ''           Then  EditGrat3.text:='0';
              if EditGratuidade.Text = ''      Then  EditGratuidade.text:='0';
              if EditVpapel.Text = ''          Then  EditVpapel.text:='0';
              if EditPpapel.Text = ''          Then  EditPpapel.text:='0';
              if EditOutros.Text = ''          Then  EditOutros.text:='0';


              cauculo:=0;
              giros:=0;
              cauculo:=
                           StrToInt(editEscolarAtual.Text)     +
                           StrToInt(editEscolarAnterior.Text)  +
                           StrToInt(editVtAtual.Text)          +
                           StrToInt(editVtAnterior.Text)       +
                           StrToInt(editLivre.Text)            +
                           StrToInt(editPagante.Text)          +
                           StrToInt(EditVtDesAtual.text)       +
                           StrToInt(EditVtDesAnterior.Text)    +
                           StrToInt(EditPeDesAtual.text)       +
                           StrToInt(EditPeDesAnterior.text)    +
                           StrToInt(editIdoso.Text)            +
                           StrToInt(editSocial.Text)           +
                           StrToInt(editPopular.Text)          +
                           StrToInt(editGrat3.Text)            +
                           StrToInt(editGratuidade.Text)       +
                           StrToInt(editVpapel.Text)           +
                           StrToInt(editPpapel.Text)           +
                           StrToInt(editOutros.Text)           +
                           StrToInt(editdESCONTO.Text)         ;
              EditPTotal.Caption:=IntToStr(cauculo);
              If EditCatracaFinal.text = '' then
                         editCatracaFinal.SetFocus;
              if (StrToInt(EditCatracaInicial2.text) > StrToInt(EditCatracaFinal.text)) and  (StrToInt(EditCatracaInicial2.text) > StrToInt('99000')) then
                         giros:=StrtoInt(EditCatracaFinal.Text) + StrToInt('100000') - StrToInt(EditCatracaInicial2.Text)
                         else
                         Giros:=StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text);
              if Giros = cauculo then
                       begin
                           if messageDlg('Movimento est� correto, estou proto para salvar, Posso continuar ?',mtConfirmation,[mbyes,mbno],0) = mryes then
                                 begin
//***************************************** Salvar **********************************************************************
                                       DtMov.DataSet.FieldByName('Bcd_Num').AsString:=BcdAtual;
                                        DtMov.DataSet.FieldByName('Bcd_Vei').AsString:=EditVeiculo.Text;
                                         DtMov.DataSet.FieldByName('Bcd_Lin').AsInteger:=(Linha);
                                          DtMov.DataSet.FieldByName('Bcd_Catini').AsString:=EditCatracaInicial2.Text;
                                           DtMov.DataSet.FieldByName('Bcd_Total').AsString:=IntToStr(giros);
                                            DtMov.DataSet.FieldByName('Bcd_Sistema').AsString:=FormDadosMov.DtSIstema.DataSet.FieldByName('Tli_Cod').AsString;
                                             DtMov.DataSet.FieldByName('Bcd_Responsavel').AsString:=DtPro.DataSet.FieldByName('Cod_Pro').AsString;
                                              DtMov.DataSet.FieldByName('Bcd_tarifaAtual').AsString:=FormDadosMov.DtSIstema.DataSet.FieldByName('Tli_TarifaAtual').AsString;
                                               DtMov.DataSet.FieldByName('Bcd_tarifaAnterior').AsString:=FormDadosMov.DtSIstema.DataSet.FieldByName('Tli_TarifaAnterior').AsString;
                                                DtMov.DataSet.FieldByName('Bcd_tarifaDesconto').AsString:=FormDadosMov.DtSIstema.DataSet.FieldByName('Tli_TarifaDesconto').AsString;
                                               if (DtMov.DataSet.State = DsInsert) then
                                                     begin
                                                           DtMov.DataSet.FieldByName('Bcd_Acertador').AsString:=FormDadosMov.DtAcertador.DataSet.FieldByName('Ace_Cod').AsString;
                                                            DtMov.DataSet.FieldByName('Bcd_Data').AsString:=DateToStr(FormDadosMov.EditData.Date);
                                                             Pai.QrBcd.Edit; // Altera a tabnela de controle dos BCDS
                                                              DtBcd.DataSet.FieldByName('Tbcd_data').AsString:=DateToStr(FormDadosMov.EditData.Date) ;
                                                               DtBcd.Dataset.FieldByName('Tbcd_status').AsString:='F';
                                                                DtBcd.DataSet.Post;
                                                     end;
                                               DtMov.DataSet.FieldByName('Bcd_Coligada').AsString:=(DtColigada.DataSet.FieldByName('COD_COLIGADA').AsString);
                                               DtMov.DataSet.FieldByName('Bcd_DatahORA').AsString:=DateTIMEToStr(NOW);
//                                               SHOWMESSAGE(DTBCD.DataSet.FieldByName('TBCD_COD').AsString);
                                       DtMov.DataSet.Post;
// ************************ grava Comprovante ****************************************************************************
                                     With QrMovConf do
                                           begin
                                                Open;
                                                 Insert;

                                                  QrMovConf.FieldByName('Mcf_Bcd').AsString:=BcdAtual;
                                                   QrMovConf.FieldByName('Mcf_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                                                    QrMovConf.FieldByName('Mcf_DataHora').AsString:=DateTimeToStr(now);
                                                     QrMovConf.FieldByName('Mcf_Malote').AsString:=EditMalote.Text;
                                                      QrMovConf.FieldByName('Mcf_vEICULO').AsString:=EditVeiculo.Text;
                                                       QrMovConf.FieldByName('Mcf_Especie').AsString:=EditDinheiro.Text;
                                                        QrMovConf.FieldByName('Mcf_VT').AsString:=IntToStr(StrtoInt(EditVtDesAtual.Text)+StrToInt(EditVtAtual.Text));
                                                         QrMovConf.FieldByName('Mcf_VTAnt').AsString:=IntToStr(StrtoInt(EditVtDesAnterior.Text)+StrToInt(EditVtAnterior.Text));
                                                          QrMovConf.FieldByName('Mcf_PE').AsString:=IntToStr(StrtoInt(EditPeDesAtual.Text)+StrtoInt(EditEscolarAtual.Text));
                                                           QrMovConf.FieldByName('Mcf_PEAnt').AsString:=IntToStr(StrtoInt(EditPeDesAnterior.Text)+StrToInt(EditEscolarAnterior.Text));
                                                            QrMovConf.FieldByName('Mcf_Resp').AsString:=DtPro.DataSet.FieldByName('Cod_pro').AsString;
                                                             QrMovConf.FieldByName('Mcf_Caixa').AsString:=FormDadosMov.DtAcertador.DataSet.FieldByName('Ace_Cod').AsString;
                                                              QrMovConf.FieldByName('Mcf_Livre').AsString:=EditLivre.Text;
                                                               QrMovConf.FieldByName('Mcf_Mov').AsString:=DtMov.DataSet.FieldByName('Bcd_Cod').AsString;
                                                                QrMovConf.FieldByName('MCf_Vpapel').AsString:=DtMov.DataSet.FieldByName('Bcd_VtPapel').AsString;
                                                                 QrMovConf.FieldByName('MCf_PPapel').AsString:=DtMov.DataSet.FieldByName('Bcd_PePapel').AsString;
                                                                  QrMovConf.FieldByName('MCf_VtRest').AsString:=DtMov.DataSet.FieldByName('Bcd_VtRest').AsString;
                                                                  QrMovConf.FieldByName('MCf_Gratuidade').AsString:=DtMov.DataSet.FieldByName('Bcd_Gratuidade').AsString;
                                                                  QrMovConf.FieldByName('MCf_idoso').AsString:=DtMov.DataSet.FieldByName('Bcd_Idoso').AsString;
                                                                  QrMovConf.FieldByName('MCf_Grat3').AsString:=DtMov.DataSet.FieldByName('Bcd_Grat3').AsString;
                                                                  QrMovConf.FieldByName('MCf_Ptotal').AsString:=DtMov.DataSet.FieldByName('Bcd_Total').AsString;
                                                                  QrMovConf.FieldByName('MCf_liquido').AsString:=DtMov.DataSet.FieldByName('Bcd_Liquido').AsString;
                                                                  QrMovConf.FieldByName('MCf_Social').AsString:=DtMov.DataSet.FieldByName('Bcd_Social').AsString;
                                                                  QrMovConf.FieldByName('MCf_Popular').AsString:=DtMov.DataSet.FieldByName('Bcd_Popular').AsString;
                                                                  QrMovConf.FieldByName('MCf_Outros').AsString:=DtMov.DataSet.FieldByName('Bcd_Outros').AsString;
                                                                   QrMovConf.Post;
                                                                    QrMovConf.Close;
//*************************************** Salva D�bito caso esteja habilitado *****************************************************************************************************************
                                     if EditDebito.text <> '' then
                                          begin
                                               With QrMovDEBITO do
                                                     begin
                                                          Open;
                                                           Insert;
                                                            QrMovDebito.FieldByName('Mdf_Bcd').AsString:=BcdAtual;
                                                             QrMovDebito.FieldByName('Mdf_Mov').AsString:=DtMov.DataSet.FieldByName('Bcd_Cod').AsString;
                                                              QrMovDebito.FieldByName('Mdf_Chapa').AsString:=DtPro.DataSet.FieldByName('Cod_pro').AsString;
                                                               QrMovDebito.FieldByName('Mdf_Valor').AsString:=EditDebito.Text;
                                                                QrMovDebito.FieldByName('Mdf_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                                                                 QrMovDebito.FieldByName('Mdf_Data').AsString:=DateToStr(FormDadosMov.EditData.Date);
                                                                  QrMovDebito.FieldByName('Mdf_Caixa').AsString:=FormDadosMov.DtAcertador.DataSet.FieldByName('Ace_Cod').AsString;
                                                                  QrMovDebito.FieldByName('Mdf_Status').AsString:='A';
                                                                   QrMovDebito.post;
                                                                    QrMovDebito.Close;
                                                     end;
                                          end;
                                     if Dtparam.DataSet.FieldByName('Tli_talao').AsString = 'S' then
                                            begin
                                                  With pai.QrTemp do
                                                       Begin
                                                             Close;
                                                             Sql.Clear;
                                                             Sql.Add('update tb_montaloes set ttl_status = ' + QuotedStr('F') + ', Ttl_resp = ' + QuotedStr(DtPro.DataSet.FieldByName('Cod_pro').AsString) + ' where Ttl_marca = ' + QuotedStr('1'));
                                                             ExecSql;
                                                       End;
                                            end;

//************************************** Pergunta se usuario quer imprimir recibo, Caso Opcao Esteja marcada em FormDadosMov.ChkRecibo *********************************************************
                                                                  if FormDadosMov.ChkRecibo.Checked = True then
                                                                       begin
                                                                             if messageDlg('Aten��o ! '+#13+'O Comprovante est� salvo...' +#13+'Deseja Imprimi-lo agora ?',mtConfirmation,[mbyes,mbno],0) = mryes then
                                                                                   begin
//                                                                                  if Dtparam.DataSet.FieldByName('Par_GeraRecibo').AsString = 'I' then
//                                                                                      begin
//                                                                                         Relatorio.RvSystem1.DefaultDest:='rdPrinter';
                                                                                         MessageBox(handle,'Prepare a Impressora para a Emiss�o do Recibo !','Aten��o !',Mb_IconInformation+Mb_Ok);
                                                                 //                     end;
                                                                                         With Relatorio.QrMovConf do
                                                                                                begin
                                                                                                       Close;
                                                                                                        Sql.Clear;
                                                                                                         Sql.Add('Select A.*, B.Nom_Pro, Cha_Pro, C.* from tb_monConferencia A, Tb_Profissionais B, Tb_MonAce C');
                                                                                                          Sql.Add('Where C.Ace_Cod = A.Mcf_Caixa and B.Cod_Pro = A.Mcf_Resp');

                                                                                                           Sql.Add('And Mcf_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                                                            Sql.Add('And Mcf_Bcd = ' + QuotedStr(BcdAtual));
                                                                                                             Open;
                                                                                                              Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                                                                                 if EditDebito.Text <> '' then Relatorio.Projeto.SetParam('InfoDebito','* Aten��o, Voc� deve : ' + EditDebito.text + ' na Arrecada��o!');
                                                                                                                Relatorio.Projeto.ExecuteReport('RvReciboConf');
                                                                                                end;
                                                                              end;
                                                                       end;
//--************************************************* Pergunta se quer imprimir o Debito agora ************************************************
                                                                   if FormDadosMov.ChkDebito.Checked = True then
                                                                       begin
                                                                             if EditDebito.Text <> '' then
                                                                                   begin
                                                                                         if messageDlg('Aten��o ! '+#13+'O Sistema Criou um D�bito para esta Colaborador...' +#13+'Voc� pode Imprimi-lo para que ele assine'+#13'+Quer fazer isto agora ?',mtConfirmation,[mbyes,mbno],0) = mryes then
                                                                                               begin
                                                                                                     MessageBox(handle,'Prepare a Impressora para a Emiss�o do Recibo !','Aten��o !',Mb_IconInformation+Mb_Ok);
                                                                                                       With Relatorio.QrMovDebito do
                                                                                                              begin
                                                                                                                   Close;
                                                                                                                    Sql.Clear;
                                                                                                                     Sql.Add('Select A.*, B.Nom_Pro, Cha_Pro, C.* from tb_monDebito A, Tb_Profissionais B, Tb_MonAce C');
                                                                                                                      Sql.Add('Where C.Ace_Cod = A.Mdf_Caixa and B.Cod_Pro = A.Mdf_Chapa');
                                                                                                                       Sql.Add('And Mdf_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                                                                        Sql.Add('And Mdf_Bcd = ' + QuotedStr(BcdAtual));
                                                                                                                         Open;
                                                                                                                          Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                                                                                           Relatorio.Projeto.ExecuteReport('RvDebito');
                                                                                                              end;
                                                                                                end;
                                                                                     end;
                                                                       end;
                                             Close;
                                             end;
                                       DtMov.DataSet.Close;
                                       BitBtn2.Click;

                                 end
                                 Else begin
                                       EditVeiculo.Enabled:=true;
                                       EditVeiculo.setfocus;
                                 end
                         end
                        else begin
                              ShowMessage('Quantidade de Passageiros n�o conferem, verifique:'+#13+#13+'Catracados : ' + IntToStr(Giros) + #13 + 'Informados : ' + IntToStr(Cauculo));
                              GroupBox1.Enabled:=True;
                              EditVeiculo.Enabled:=true;
                              EditVeiculo.SetFocus;
                        end;


/// ************************************** Confere lancamento   *********************************************************
//              Color:=clBtnFace;
              Panel1.Enabled:=false;
              VALOR:=0;
              Screen.Cursor:=CrDefault;
       end
       else begin
        Dtpro.DataSet.Close;
        DtMov.DataSet.Cancel;
        Dtmov.DataSet.Close;
        bitBtn2.Click;
       end;

end;

procedure TFormLancamentoBSE.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
begin
end;

procedure TFormLancamentoBSE.editlinhaExit(Sender: TObject);
begin
editlinha.Color:=clWindow;
end;

procedure TFormLancamentoBSE.catClick(Sender: TObject);
begin
DtVeiculo.DataSet.Edit;
If (StrToInt(Dtveiculo.DataSet.FieldByName('Cat_Cat').AsString) < StrToInt(EditCatracaFinal.Text)) or (StrToInt(EditCatracaFinal.text) < 500)  then
   begin
   Dtveiculo.DataSet.FieldByName('Cat_Cat').AsString :=editCatracaFinal.Text;
   Dtveiculo.DataSet.FieldByName('Cat_Data').AsString  :=EditData.Caption;
   End;

end;

procedure TFormLancamentoBSE.EditVPapelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditVPapelKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if EditVPapel.Text = '' then
        EditVpapel.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;


end;

procedure TFormLancamentoBSE.EditPPapelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditPPapelKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if EditPPapel.Text = '' then
        EditPpapel.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoBSE.EditSocialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditSocialKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editSocial.Text = '' then
         editSocial.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
//   editgratuidade.setfocus;
    end;


end;

procedure TFormLancamentoBSE.EditPopularKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
        Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditPopularKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editPopular.Text = '' then
       editPopular.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoBSE.EditPeDesAtualKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditPeDesAtualKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if EditPeDesAtual.Text = '' then
        EditPeDesAtual.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoBSE.EditPeDesAnteriorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditPeDesAnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if EditPeDesAnterior.Text = '' then
        EditPeDesAnterior.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoBSE.FormHide(Sender: TObject);
begin
formlancamentoBSE.close;
end;

procedure TFormLancamentoBSE.EditFuncionarioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
         Key:=#0;
         With Pai.QrProfissionais do
              Begin
                   Close;
                    Sql.Clear;
                     Sql.Add('Select A.Nom_Pro, A.Cha_Pro, A.Cod_pro, B.FUN_INTMON from tb_profissionais A, Tb_Funcao B');
                      Sql.Add('Where A.Cod_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                       Sql.Add('And B.Cod_Funcao = A.Fun_Pro');
                      //   Sql.Add('And B.Fun_IntMon = ' + QuotedStr('S'));
                          Sql.Add('And A.Ativo_pro = ' + QuotedStr('A'));
                           Sql.Add('And A.Cha_Pro like ' + QuotedStr('%'+EditFuncionario.Text));
                            open;
                             if not eof then
                                   begin
                                         Btsalva.SetFocus;
                                   end
                                   else
                                   begin
                                         MessageBox(handle,'N�o encontrei ningu�m com esse Registro !'+#13+#13+ 'Tente de novo','Algo est� errado',mb_IconInformation+mb_ok);
                                          EditFuncionario.SetFocus;
                                   end;
              End;

    end;
end;

procedure TFormLancamentoBSE.EditGrat3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditGrat3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editGrat3.Text = '' then
         editGrat3.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
//   editgratuidade.setfocus;
    end;

end;

procedure TFormLancamentoBSE.EditCatracaInicial2KeyPress(Sender: TObject;
  var Key: Char);

begin
if key = #13 then
    begin
    key:=#0;
           If EditCatracaFinal.text = '' then
                editCatracaFinal.SetFocus;
           if (StrToInt(EditCatracaInicial2.text) > StrToInt(EditCatracaFinal.text)) and   (StrToInt(EditCatracaInicial2.text) > StrToInt('99000')) then
                    BEGIN
                          Catracados:=(StrtoInt(EditCatracaFinal.Text) + StrToInt('100000') - StrToInt(EditCatracaInicial2.Text));
                           EditPTotal.Caption:=IntToStr(StrtoInt(EditCatracaFinal.Text) + StrToInt('100000') - StrToInt(EditCatracaInicial2.Text));
                    END
                    else
                    BEGIN
                          Catracados:=(StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text));
                           EditPTotal.Caption:=IntToStr(StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text));
                    END;

           if catracados >= 0 then
                 begin
                       if editEscolarAtual.Text = ''    then  editEscolarAtual.text:='0';
                       If editEscolarAnterior.Text = '' then  editEscolarAnterior.text:='0';
                       if editVtAtual.Text = ''         then  editVtAtual.text:='0';
                       if editVtAnterior.Text = ''      then  editVtAnterior.text:='0';
                       if editLivre.Text = ''           then  editLivre.text:='0';
                       if editPagante.Text = ''         then  editPagante.text:='0';
                       if editOutros.Text = ''          then  editOutros.text:='0';
                       if EditPeDesAtual.Text = ''      then  EditPeDesAtual.text:='0';
                       if EditPeDesAnterior.Text = ''   then  EditPeDesAnterior.text:='0';
                       if EditVtDesAtual.Text = ''      then  EditVtDesAtual.text:='0';
                       if EditVtDesAnterior.Text = ''   then  EditVtDesAnterior.text:='0';
                       if editdESCONTO.Text = ''        then  editdESCONTO.text:='0';
                       if EditSocial.Text = ''          Then  EditSocial.text:='0';
                       if EditIdoso.Text = ''           Then  EditIdoso.text:='0';
                       if Editpopular.Text = ''         Then  EditPopular.text:='0';
                       if EditGrat3.Text = ''           Then  EditGrat3.text:='0';
                       if EditVpapel.Text = ''          Then  EditVpapel.text:='0';
                       if EditPpapel.Text = ''          Then  EditPpapel.text:='0';
                       if Editoutros.Text = ''          Then  EditOutros.text:='0';
                       if EditGratuidade.Text = ''      Then  EditGratuidade.text:='0';

                               Informados:=
                                         StrToInt(editEscolarAtual.Text)     +
                                          StrToInt(editEscolarAnterior.Text)  +
                                           StrToInt(editVtAtual.Text)          +
                                            StrToInt(editVtAnterior.Text)       +
                                             StrToInt(editLivre.Text)            +
                                              StrToInt(EditVtDesAtual.text)       +
                                               StrToInt(EditVtDesAnterior.Text)    +
                                                StrToInt(EditPeDesAtual.text)       +
                                                 StrToInt(EditPeDesAnterior.text)    +
                                                  StrToInt(editOutros.Text)           +
                                                   StrToInt(editIdoso.Text)           +
                                                    StrToInt(editSocial.Text)          +
                                                     StrToInt(editPopular.Text)         +
                                                      StrToInt(editGrat3.Text)           +
                                                       StrToInt(editVpapel.Text)          +
                                                         StrToInt(editGratuidade.Text)          +
                                                         StrToInt(editPpapel.Text)          ;
                        EditPTotal.Caption:=IntToStr(Catracados);
                        EditPagante.Enabled:=true;
                        DtMov.DataSet.FieldByName('Bcd_Liquido').AsString:=IntToStr(catracados-Informados);
                        //      EditPagante.Text:=IntToStr(catracados-Informados);
                        Perform(WM_NextDlgCtl,0,0);
                 end
                 else
                 begin
                        MessageBox(Handle,'Catraca Final esta menor que a inicial, Verifique','Erro de Catraca',MB_OK + MB_ICONWARNING);
                         EditCatracaFinal.SetFocus;
                 end;
    end;

end;

procedure TFormLancamentoBSE.PULADORClick(Sender: TObject);
begin
// caso seja tudo 2

     if DtParam.DataSet.fieldbyname('Par_PEAT').text = '2' then
         BEGIN
              editEscolarAtual.visible:=false;
              LABEL7.VISIBLE:=FALSE;
          End;
     if DtParam.DataSet.fieldbyname('Par_PEAN').text = '2' then
         BEGIN
               editEscolarAnterior.visible:=false;
               LABEL8.VISIBLE:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VTAT').text = '2' then
         BEGIN
               editVTAtual.visible:=false;
               LABEL9.VISIBLE:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VTAN').text = '2' then
         BEGIN
               editVTAnterior.visible:=false;
               LABEL10.VISIBLE:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_LIVRE').text = '2' then
         BEGIN
               editLivre.visible:=false;
               LABEL11.VISIBLE:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_Outros').text = '2' then
         BEGIN
               editOutros.visible:=false;
               labelOutros.VISIBLE:=FALSE;

         end;


    if DtParam.DataSet.fieldbyname('Par_LIQ').text = '2' then
         BEGIN
               editPagante.visible:=false;
               LABEL17.VISIBLE:=FALSE;
         end;

    if DtParam.DataSet.fieldbyname('Par_Desc').text = '2' then
         BEGIN
                 editDesconto.visible:=false;
                 LABEL23.VISIBLE:=FALSE;
         end;

    if DtParam.DataSet.fieldbyname('Par_VtDesAtu').text = '2' then
         BEGIN
                 editVtdesAtual.visible:=false;
                 LABEL15.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_VtDesAnt').text = '2' then
         BEGIN
                 editVtdesAnterior.visible:=false;
                 LABEL21.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_PeDesAtu').text = '2' then
         BEGIN
                 editPedesAtual.visible:=false;
                 LABEL25.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_popular').text = '2' then
         BEGIN
                 editPopular.visible:=false;
                 LABEL26.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_Idoso').text = '2' then
         BEGIN
                 editIdoso.visible:=false;
                 LABEL27.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_Grat3').text = '2' then
         BEGIN
                 editGrat3.visible:=false;
                 LABEL28.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_VtPapel').text = '2' then
         BEGIN
                 editVpapel.visible:=false;
                 LABEL29.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_PePapel').text = '2' then
         BEGIN
                 editPpapel.visible:=false;
                 LABEL30.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_sOCIAL').text = '2' then
         BEGIN
                 editSocial.visible:=false;
                 LABEL32.VISIBLE:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_Gratuidade').text = '2' then
         BEGIN
                 EditGratuidade.visible:=false;
                 LABEL31.VISIBLE:=FALSE;
         end;

    if DtParam.DataSet.fieldbyname('Par_CAtINI').text = '2' then
         BEGIN
              EditCatracaInicial2.ReadOnly:=True;
         end;

               // fim tudo 2    ******************************

// caso seja tudo 0


     if DtParam.DataSet.fieldbyname('Par_PEAT').text = '0' then
         BEGIN
              editEscolarAtual.enabled:=false;
              LABEL7.enabled:=FALSE;
          End;
     if DtParam.DataSet.fieldbyname('Par_PEAN').text = '0' then
         BEGIN
               editEscolarAnterior.enabled:=false;
               LABEL8.enabled:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VTAT').text = '0' then
         BEGIN
               editVTAtual.enabled:=false;
               LABEL9.enabled:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VTAN').text = '0' then
         BEGIN
               editVTAnterior.enabled:=false;
               LABEL10.enabled:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_LIVRE').text = '0' then
         BEGIN
               editLivre.enabled:=false;
               LABEL11.enabled:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_Outros').text = '0' then
         BEGIN
               editOutros.enabled:=false;
                labelOutros.enabled:=FALSE;
          end;

    if DtParam.DataSet.fieldbyname('Par_LIQ').text = '0' then
         BEGIN
               editPagante.enabled:=false;
               LABEL17.enabled:=FALSE;
         end;

    if DtParam.DataSet.fieldbyname('Par_Desc').text = '0' then
         BEGIN
                 editDesconto.enabled:=false;
                 LABEL23.enabled:=FALSE;
         end;

    if DtParam.DataSet.fieldbyname('Par_VtDesAtu').text = '0' then
         BEGIN
                 editVtdesAtual.enabled:=false;
                 LABEL15.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_VtDesAnt').text = '0' then
         BEGIN
                 editVtdesAnterior.enabled:=false;
                 LABEL21.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_PeDesAtu').text = '0' then
         BEGIN
                 editPedesAtual.enabled:=false;
                 LABEL25.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_PeDesAnt').text = '0' then
         BEGIN
                 editPedesAnterior.enabled:=false;
                 LABEL24.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_popular').text = '0' then
         BEGIN
                 editPopular.enabled:=false;
                 LABEL26.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_Idoso').text = '0' then
         BEGIN
                 editIdoso.enabled:=false;
                 LABEL27.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_Grat3').text = '0' then
         BEGIN
                 editGrat3.enabled:=false;
                 LABEL28.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_VtPapel').text = '0' then
         BEGIN
                 editVpapel.enabled:=false;
                 LABEL29.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_PePapel').text = '0' then
         BEGIN
                 editPpapel.enabled:=false;
                 LABEL30.enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_sOCIAL').text = '0' then
         BEGIN
                 editSocial.Enabled:=false;
                 LABEL32.Enabled:=FALSE;
         end;
    if DtParam.DataSet.fieldbyname('Par_Gratuidade').text = '0' then
         BEGIN
                 EditGratuidade.Enabled:=false;
                 LABEL31.Enabled:=FALSE;
         end;

    if DtParam.DataSet.fieldbyname('Par_CAtINI').text = '0' then
         BEGIN
              EditCatracaInicial2.ReadOnly:=FALSE;
         end;

// Fim tudo 0     ****************************************************

// caso seja tudo 1

     if DtParam.DataSet.fieldbyname('Par_PEAT').text = '1' then
         BEGIN
              editEscolarAtual.visible:=true;
              LABEL7.visible:=true;
          End;
     if DtParam.DataSet.fieldbyname('Par_PEAN').text = '1' then
         BEGIN
               editEscolarAnterior.visible:=true;
               LABEL8.visible:=true;
         end;

     if DtParam.DataSet.fieldbyname('Par_VTAT').text = '1' then
         BEGIN
               editVTAtual.visible:=true;
               LABEL9.visible:=true;
         end;

     if DtParam.DataSet.fieldbyname('Par_VTAN').text = '1' then
         BEGIN
               editVTAnterior.visible:=true;
               LABEL10.visible:=true;
         end;

     if DtParam.DataSet.fieldbyname('Par_LIVRE').text = '1' then
         BEGIN
               editLivre.visible:=true;
               LABEL11.visible:=true;
         end;

     if DtParam.DataSet.fieldbyname('Par_Outros').text = '1' then
         BEGIN
               editOutros.visible:=true;
                LABELOutros.visible:=true;

         end;

    if DtParam.DataSet.fieldbyname('Par_LIQ').text = '1' then
         BEGIN
               editPagante.visible:=true;
               LABEL17.visible:=true;
         end;

    if DtParam.DataSet.fieldbyname('Par_Desc').text = '1' then
         BEGIN
                 editDesconto.visible:=true;
                 LABEL23.visible:=true;
         end;

    if DtParam.DataSet.fieldbyname('Par_VtDesAtu').text = '1' then
         BEGIN
                 editVtdesAtual.visible:=true;
                 LABEL15.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_VtDesAnt').text = '1' then
         BEGIN
                 editVtdesAnterior.visible:=true;
                 LABEL21.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_PeDesAtu').text = '1' then
         BEGIN
                 editPedesAtual.visible:=true;
                 LABEL25.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_PeDesAnt').text = '1' then
         BEGIN
                 editPedesAnterior.visible:=true;
                 LABEL24.visible:=true;
         end;

    if DtParam.DataSet.fieldbyname('Par_popular').text = '1' then
         BEGIN
                 editPopular.visible:=true;
                 LABEL26.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_Idoso').text = '1' then
         BEGIN
                 editIdoso.visible:=true;
                 LABEL27.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_Grat3').text = '1' then
         BEGIN
                 editGrat3.visible:=true;
                 LABEL28.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_VtPapel').text = '1' then
         BEGIN
                 editVpapel.visible:=true;
                 LABEL29.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_PePapel').text = '1' then
         BEGIN
                 editPpapel.visible:=true;
                 LABEL30.visible:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_sOCIAL').text = '1' then
         BEGIN
                 editSocial.visible:=true;
                 LABEL32.VISIBLE:=true;
         end;
    if DtParam.DataSet.fieldbyname('Par_Gratuidade').text = '1' then
         BEGIN
                 EditGratuidade.visible:=true;
                 LABEL31.VISIBLE:=true;
         end;



    if DtParam.DataSet.fieldbyname('Par_CAtINI').text = '1' then
         BEGIN
              EditCatracaInicial2.ReadOnly:=TRUE;
         end;

// Fim tudo 1

  {   if Dtveiculo.DataSet.fieldbyname( )IDOSO.text = 'False' then
              EditIdoso.Enabled:=False;
     if Dtveiculo.DataSet.fieldbyname( )PFATU.text = 'False' then
         editPFAtual.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )PFANT.text = 'False' then
         editPFAnterior.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )PEATU.text = 'False' then
         editEscolarAtual.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )PEANT.text = 'False' then
         editEscolarAnterior.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )VTATU.text = 'False' then
         editVTAtual.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )VTANT.text = 'False' then
         editVTAnterior.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )LIVRE.text = 'False' then
         editLivre.Enabled:=false;

     if Dtveiculo.DataSet.fieldbyname( )GRATZ.text = 'False' then
         editGratuidade.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )VEATU.text = 'False' then
         editVeAtual.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )VEANT.text = 'False' then
         editVEAnterior.Enabled:=false;
     if Dtveiculo.DataSet.fieldbyname( )ESTGR.text = 'False' then
         editEgratuito.Enabled:=false;
//Habilita digita��o de passageiro integral e com desconto
    if Dtveiculo.DataSet.fieldbyname( )LIQIN.text = 'False' then
         editPagante.Enabled:=false;
    if Dtveiculo.DataSet.fieldbyname( )LIQDE.text = 'False' then
         editDesconto.Enabled:=false;


    if Dtveiculo.DataSet.fieldbyname( )CAINI.text = 'False' then
         EditCatracaInicial2.Enabled:=false;       }


end;
procedure TFormLancamentoBSE.SpeedButton1Click(Sender: TObject);
begin
          Application.CreateForm(TFormLancamentoBuscaPro,FormLancamentoBuscaPro);
          FormLancamentoBuscaPro.ShowModal;

end;

procedure TFormLancamentoBSE.Timer1Timer(Sender: TObject);
begin
if pai.Genoma.Connected = false then pai.Genoma.Connected:=true;
end;

procedure TFormLancamentoBSE.EditDescontoKeyPress(Sender: TObject;
  var Key: Char);
var tarifa, tarifadesconto: real;
begin
if key = #13 then
    begin
          key:=#0;
           if editDesconto.Text = '' then
                  editDesconto.Text:='0';
           if editPagante.Text = '' then
                  editPagante.Text:='0';
             currencyString:='R$';
              CurrencyDecimals:=2;
               valor:=0;
               tarifa:=StrToFloat(DtLinha.DataSet.FieldByName('TLI_TarifaAtual').AsString);
//                valor:= (StrToFloat(EditPagante.text) * tarifa);
                 tarifaDesconto:=StrToFloat(DtLinha.DataSet.FieldByName('TLI_TarifaDesconto').AsString);
                  valor:=valor+ (StrToint(EditDesconto.text) * tarifaDesconto);
                   DtMov.DataSet.FieldByName('Bcd_Dinheiro').AsString:=floattoStr(valor);
                    EditTotal.Caption:=FormatFloat('#####0.00',valor);
                     DtMov.DataSet.FieldByName('Bcd_Liquido').AsString:=IntToStr(StrToInt(editpagante.Text)-StrtoInt(EditDesconto.Text));
//                     editpagante.Text:=IntToStr(StrToInt(editpagante.Text)-StrtoInt(EditDesconto.Text));
                     Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoBSE.EditDinheiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditDinheiroKeyPress(Sender: TObject;
  var Key: Char);
var valordigitado:real;
tarifa :real;
  begin
if key =#13 then
    begin
         key:=#0;
         if EditDinheiro.Text = '' then
              begin
                   EditDinheiro.Text:='0';
                   if FormDadosMov.ChkDebito.Checked = true then
                            begin
                                 GroupBox3.Enabled:=true;
                                  EditDebito.Text:=FormatFloat('##0.00',Valor-ValorDigitado);
                                   EditDebito.SetFocus;
                            end
                            else
                            begin
                                 EditFuncionario.Enabled:=true;
                                  EditFuncionario.setfocus;
                            end;
              end
              else
              begin
                   valordigitado:=StrToFloat(EditDinheiro.Text);
//                   showmessage('Valor cauculado : ' + FormatFloat('0.0000',valor-valordigitado));
//                   showmessage('valor : '+ FormatFloat('0.0000',valor));
                   if valorDigitado > Valor then
                          Begin
                                  ShowMessage('Valor entregue n�o pode ser maior que o que consta no Boletim, Acerte'+#13+FormatFloat('###0.00',ValorDigitado)+#13+FormatFloat('###0.00',Valor));
                                  EditDinheiro.SetFocus;
                          End
                        else
                          begin
                              if (valor-valordigitado) > 0 then
                                     begin
                                           if messageDlg('Aten��o !'+#13+#13+'O valor entregue n�o � igual ao Valor do Boletim !'+#13+'Deseja Salvar o recibo e Confeccionar o Documento de D�bito? ',mtConfirmation,[mbyes,mbno],0) = mryes then
                                                  begin
                                                        if FormDadosMov.ChkDebito.Checked = true then
                                                              begin
                                                                     GroupBox3.Enabled:=true;
                                                                     EditDebito.Text:=FormatFloat('##0.00',Valor-ValorDigitado);
                                                                     EditDebito.SetFocus;
                                                              end
                                                             else
                                                              begin
                                                                     EditFuncionario.Enabled:=true;
                                                                     EditFuncionario.setfocus;
                                                              end;
                                                   end
                                                   else
                                                   begin
                                                          EditDinheiro.Text:='';
                                                           EditDinheiro.SetFocus;
                                                   end;
                                     End
                                     else
                                     begin
                                          EditDebito.Text:='';
                                           EditFuncionario.Enabled:=true;
                                            EditFuncionario.setfocus;
                                     End;
                          End;
              End;
    End;
end;

procedure TFormLancamentoBSE.editpfanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
         Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editescolaratualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
         Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editescolaranteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
        Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editvtatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
        Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editvtanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editlivreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editgratuidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editveatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editveanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editegratuitoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditIdosoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditIdosoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if EditIdoso.Text = '' then
        EditIdoso.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;

if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//   editpagante.setfocus;
    end;

end;

procedure TFormLancamentoBSE.editOutrosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editOutrosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editOutros.Text = '' then
         editOutros.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
//   editgratuidade.setfocus;
    end;

end;

procedure TFormLancamentoBSE.editpaganteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
        EditCatracaFinal.SetFocus;
    //Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditDebitoKeyPress(Sender: TObject; var Key: Char);
begin
if KEY = #13 then
       BEGIN
             KEY:=#0;
               try
               if messageDlg('Confirmar Valor do D�bito Informado ? ',mtConfirmation,[mbyes,mbno],0) = mryes then
                    begin
                           EditFuncionario.Enabled:=true;
                            EditFuncionario.SetFocus;
                    end
                    else
                    EditDebito.SetFocus;
               Except
                       ShowMessage('Valor Inv�lido');
                        EditDebito.SetFocus;
               end;
       END;
end;

procedure TFormLancamentoBSE.EditDescontoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.EditCatracaInicial2Enter(Sender: TObject);
begin
    editTotal.Caption:='0';
    Valor:=0;
    editDinheiro.text:='';
    editDebito.text:='';

end;

procedure TFormLancamentoBSE.EditCatracaInicial2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoBSE.editcatracafinalEnter(Sender: TObject);
begin
//if DtMov.State = DsInsert then
//begin

    editTotal.Caption:='0';
    Valor:=0;
//    editDinheiro.text:='';
//    editDebito.text:='';
//end;
StatusBar1.Panels[0].Text:='    Clique em F8 para Buscar ultimas catracas...';

end;

procedure TFormLancamentoBSE.editcatracafinalExit(Sender: TObject);
begin
StatusBar1.Panels[0].Text:='';

end;

procedure TFormLancamentoBSE.editcatracafinalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;
if key = vk_F8 then
    begin
          QrCatracas.Parameters.ParambyName('Veiculo').Value:=Editveiculo.Text;
           Application.CreateForm(TFormLancamentoUltimasCatracas,FormLancamentoUltimasCatracas);
            FormLancamentoUltimasCatracas.ShowModal;
             editcatracafinal.SetFocus;

    End;


end;

procedure TFormLancamentoBSE.editbcdExit(Sender: TObject);
begin
editbcd.Color:=clWindow;
end;

procedure TFormLancamentoBSE.editveiculoExit(Sender: TObject);
begin
editVeiculo.Color:=clWindow;
end;

procedure TFormLancamentoBSE.editbcdEnter(Sender: TObject);
begin
//Color:=ClBtnFace;
EditFuncionario.Text:='';
Editbcd.Color:=clCream;

end;

procedure TFormLancamentoBSE.editveiculoEnter(Sender: TObject);
begin
editVeiculo.Color:=$00C1FFC1 ;
    if QrMovBcd.State = DsInsert then EditCatracaInicial2.Text:='';
panel1.Enabled:=false;
end;

procedure TFormLancamentoBSE.editlinhaEnter(Sender: TObject);
begin
editlinha.Color:= $00C1FFC1;
panel1.Enabled:=false;
end;

procedure TFormLancamentoBSE.editpfatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
//     DbText2.Visible:=false;
   editLinha.text:=' ';
   EditLinha.setfocus;
  end;
end;

procedure TFormLancamentoBSE.editlinhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
//   DbText5.Visible:=false;
   editVeiculo.text:=' ';
   editveiculo.setfocus;
  end;
end;

procedure TFormLancamentoBSE.editveiculoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
  BitBtn2Click(nil);
  end;
end;

procedure TFormLancamentoBSE.EditFuncionarioEnter(Sender: TObject);
begin
StatusBar1.Panels[0].Text:='Clique em F8 para Buscar...';
end;

procedure TFormLancamentoBSE.EditFuncionarioExit(Sender: TObject);
begin
StatusBar1.Panels[0].Text:='';
end;

procedure TFormLancamentoBSE.EditFuncionarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

if key = vk_F8 then
    begin
          Application.CreateForm(TFormLancamentoBuscaPro,FormLancamentoBuscaPro);
          FormLancamentoBuscaPro.ShowModal;
    End;
end;

procedure TFormLancamentoBSE.FormActivate(Sender: TObject);
Begin
Screen.Cursor:=crHourGlass;
      Top:=0;
       Left:=0;
        Height:=Screen.Height;
         Width:=Screen.Width;
          DataAtual:=DateToStr(FormDadosMov.Dialancamento);
           Pulador.Click;
            AcertadorAtual:=pai.QrAcertador.FieldByName('ACE_DES').AsString;
             EDITDATA.Caption:=DateToStr(FormDadosMov.EditData.date);
             Sistema:=FormDadosMov.DtSIstema.DataSet.FieldByName('TLI_COD').AsString;
//***************************************** HABILITA LANCAMENTO DE VALES ***********************************************
                If FormDadosMov.ChkDebito.Checked = FALSE then
                   Begin
                        LabelDebito.Caption:='N�o Permite Criar D�bito';
                         LabelDebito.Font.Color:=ClRed;
                          GroupBox3.Enabled:=false;
                   End
                   else
                   begin
                         LabelDebito.Caption:='Permite Cria��o de D�bito';
                          LabelDebito.Font.Color:=ClBlue;
     //                      GroupBox3.Enabled:=True;
                   end;
//******************************************* HABILITA LANCAMENTO DE RECIBO *********************************************

             if FormDadosMov.ChkRecibo.Checked = False then
                   Begin
                        LabelDebito.Caption:='N�o Permite Criar D�bito';
                         LabelDebito.Font.Color:=ClRed;
                          GroupBox3.Enabled:=false;
                        LabelRecibo.Caption:='Recibo Desabilitado';
                         LabelRecibo.Font.Color:=ClRed;
                          GroupBox2.Enabled:=false;
                   End
                   else
                   begin
                         LabelRecibo.Caption:='Recibo Habilitado';
                          LabelRecibo.Font.Color:=ClBlue;
       //                    GroupBox2.Enabled:=True;
                   end;
Screen.Cursor:=CrDefault;
end;

end.