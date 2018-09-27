unit telalancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, DBTables, ComCtrls, ActnColorMaps,
  ActnMan, CustomizeDlg, XPStyleActnCtrls, ActnList, ToolWin, ActnCtrls,
  ActnMenus, ExtCtrls, Buttons, XPMan, IWControl, IWCompEdit, IWDBStdCtrls,
  jpeg;

type
  TFormLancamento = class(TForm)
    GroupBox1: TGroupBox;
    tabelamovimento: TTable;
    dtmovimento: TDataSource;
    Label1: TLabel;
    editdata: TDBText;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    editveiculo: TDBEdit;
    Label3: TLabel;
    tabelaveiculo: TTable;
    Label4: TLabel;
    editlinha: TDBEdit;
    DBText2: TDBText;
    tabelalinha: TTable;
    dtlinha: TDataSource;
    dtveiculo: TDataSource;
    Panel1: TPanel;
    editpfatual: TDBEdit;
    Label5: TLabel;
    editpfanterior: TDBEdit;
    Label6: TLabel;
    editescolaratual: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    editescolaranterior: TDBEdit;
    editvtatual: TDBEdit;
    Label9: TLabel;
    editvtanterior: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    editlivre: TDBEdit;
    Label12: TLabel;
    editgratuidade: TDBEdit;
    editveatual: TDBEdit;
    Label13: TLabel;
    editveanterior: TDBEdit;
    Label14: TLabel;
    editegratuito: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    edittotal: TDBText;
    editpagante: TDBEdit;
    Label17: TLabel;
    editcatracainicial: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    editcatracafinal: TDBEdit;
    Label20: TLabel;
    editptotal: TDBText;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    x: TSpeedButton;
    Label21: TLabel;
    DBText5: TDBText;
    tabelaveiculoLACRE: TStringField;
    tabelaveiculoULTIMACATRACA: TStringField;
    tabelaveiculoULTIMACOLETA: TStringField;
    tabelalinhaNUMERO: TStringField;
    tabelalinhaDESCRICAO: TStringField;
    XPManifest1: TXPManifest;
    StandardColorMap1: TStandardColorMap;
    tabelamovimentoNUMBCD: TIntegerField;
    tabelamovimentoPFATUAL: TSmallintField;
    tabelamovimentoPFANTERIOR: TSmallintField;
    tabelamovimentoPEATUAL: TSmallintField;
    tabelamovimentoPEANTERIOR: TSmallintField;
    tabelamovimentoVTEATUAL: TSmallintField;
    tabelamovimentoVTEANTERIOR: TSmallintField;
    tabelamovimentoLIVRE: TSmallintField;
    tabelamovimentoGRATUITO: TSmallintField;
    tabelamovimentoVEATUAL: TSmallintField;
    tabelamovimentoVEANTERIOR: TSmallintField;
    tabelamovimentoEGRATUITO: TSmallintField;
    tabelamovimentoPTOTAL: TSmallintField;
    tabelamovimentoPDINHEIRO: TSmallintField;
    tabelamovimentoFUNCIONARIO: TStringField;
    tabelamovimentoACERTADOR: TStringField;
    TabelaCatraca: TTable;
    DtCatraca: TDataSource;
    cat: TSpeedButton;
    DTBcd: TDataSource;
    GroupBox2: TGroupBox;
    CustomizeDlg1: TCustomizeDlg;
    EditFuncionario: TDBEdit;
    DBText1: TDBText;
    DtFuncionario: TDataSource;
    TabelaFuncionario: TTable;
    TabelaFuncionarioMatricula: TStringField;
    TabelaFuncionarioNome: TStringField;
    TabelaFuncionarioFuncao: TStringField;
    s: TLabel;
    DBText3: TDBText;
    tabelalinhaTARIFAATUAL: TCurrencyField;
    tabelamovimentoCATRACAINICIAL: TIntegerField;
    tabelamovimentoCATRACAFINAL: TIntegerField;
    XPColorMap1: TXPColorMap;
    EditCatracaInicial2: TEdit;
    tabelamovimentoTOTALDINHEIRO: TCurrencyField;
    tabelalinhaTARIFADESCONTO: TCurrencyField;
    tabelamovimentoDESCONTO: TSmallintField;
    QrPermissao: TQuery;
    DtPermissao: TDataSource;
    QrPermissaoPFATU: TBooleanField;
    QrPermissaoPFANT: TBooleanField;
    QrPermissaoPEATU: TBooleanField;
    QrPermissaoPEANT: TBooleanField;
    QrPermissaoVTATU: TBooleanField;
    QrPermissaoVTANT: TBooleanField;
    QrPermissaoLIVRE: TBooleanField;
    QrPermissaoGRATZ: TBooleanField;
    QrPermissaoVEATU: TBooleanField;
    QrPermissaoVEANT: TBooleanField;
    QrPermissaoESTGR: TBooleanField;
    QrPermissaoCAINI: TBooleanField;
    QrPermissaoLIQIN: TBooleanField;
    QrPermissaoLIQDE: TBooleanField;
    QrPermissaoCODIGOEMPRESA: TStringField;
    QrPermissaoLETRABCD: TStringField;
    PULADOR: TSpeedButton;
    EditDesconto: TDBEdit;
    Label23: TLabel;
    TabelaCatracaVeiculo: TStringField;
    TabelaCatracaChaveSecundaria: TAutoIncField;
    TabelaCatracaUltimaColeta: TStringField;
    TabelaCatracaUltimaCatraca: TIntegerField;
    TabelaCatracaUltimoBcd: TIntegerField;
    tabelamovimentoTIPOLINHA: TStringField;
    tabelalinhaTIPOLINHA: TStringField;
    tabelamovimentoLINHABCD: TStringField;
    tabelamovimentoIDOSO: TSmallintField;
    EditIdoso: TDBEdit;
    Label24: TLabel;
    QrBusca: TQuery;
    QrBuscaNUMBCD: TIntegerField;
    QrBuscaVEICULOBCD: TSmallintField;
    QrBuscaLINHABCD: TStringField;
    QrBuscaCATRACAINICIAL: TIntegerField;
    QrBuscaCATRACAFINAL: TIntegerField;
    QrBuscaPFATUAL: TSmallintField;
    QrBuscaPFANTERIOR: TSmallintField;
    QrBuscaPEATUAL: TSmallintField;
    QrBuscaPEANTERIOR: TSmallintField;
    QrBuscaVTEATUAL: TSmallintField;
    QrBuscaVTEANTERIOR: TSmallintField;
    QrBuscaLIVRE: TSmallintField;
    QrBuscaGRATUITO: TSmallintField;
    QrBuscaVEATUAL: TSmallintField;
    QrBuscaVEANTERIOR: TSmallintField;
    QrBuscaEGRATUITO: TSmallintField;
    QrBuscaPTOTAL: TSmallintField;
    QrBuscaPDINHEIRO: TSmallintField;
    QrBuscaTOTALDINHEIRO: TCurrencyField;
    QrBuscaFUNCIONARIO: TStringField;
    QrBuscaACERTADOR: TStringField;
    QrBuscaDESCONTO: TSmallintField;
    QrBuscaTIPOLINHA: TStringField;
    QrBuscaIDOSO: TSmallintField;
    QrPermissaoRAZAOSOCIAL: TStringField;
    QrPermissaoCGC: TStringField;
    QrPermissaoIDOSO: TBooleanField;
    QrPermissaoSISTEMA: TStringField;
    Label25: TLabel;
    tabelaveiculoNUMERO: TIntegerField;
    tabelamovimentoVEICULOBCD: TIntegerField;
    eDITvIAGEM: TDBEdit;
    Label26: TLabel;
    QrPermissaoViagem: TBooleanField;
    tabelamovimentoVIAGEM: TStringField;
    AchaBcd: TBitBtn;
    QrBuscaDATABCD: TDateField;
    QrBuscaVIAGEM: TStringField;
    tabelamovimentoDATABCD: TDateField;
    EditBcd: TMaskEdit;
    QrLotes: TQuery;
    QrLotesDT_MOVIMENTO: TDateField;
    QrLotesLOTE_INICIAL: TIntegerField;
    QrLotesLOTE_FINAL: TIntegerField;
    DtLotes: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure editveiculoKeyPress(Sender: TObject; var Key: Char);
    procedure editlinhaKeyPress(Sender: TObject; var Key: Char);
    procedure editcatracafinalKeyPress(Sender: TObject; var Key: Char);
    procedure editbcdKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
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
    procedure xClick(Sender: TObject);
    procedure editveanteriorKeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure editlinhaExit(Sender: TObject);
    procedure catClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure EditFuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditFuncionarioExit(Sender: TObject);
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
    procedure EditFuncionarioEnter(Sender: TObject);
    procedure AchaBcdClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
    { Private declarations }
  public
//    LANCARSISTEMA:STRING;
    { Public declarations }
  end;

var
  FormLancamento: TFormLancamento;
   cauculo: integer;
   giros: integer;
   BcdAtual : String;
   TotalDinheiro: real;
   valor: real;
   sistema,TipoLancamento:String[1];
   AcertadorAtual,DataAtual : String;


implementation

uses TELAINFO,TELAENTRADA, UnitPai;

{$R *.dfm}

procedure TFormLancamento.FormShow(Sender: TObject);
begin
statusbar1.panels[1].Text:='Acertador Atual: ' + formInfo.usuario +' - ' +forminfo.nome;
BitBtn2.SetFocus;
//editdata.caption:=       FormInfo.dialancamento;
puladorClick             (nil);
Application.OnMessage := ProcessaMsg;
end;

procedure TFormLancamento.BitBtn2Click(Sender: TObject);
begin
TabelaMovimento.            Cancel;
tabelaLinha.                Close;
TabelaMovimento.            Close;
TabelaVeiculo.              close;
TabelaFuncionario.          close;
QrBusca.                    Close;
tabelamovimento.            Open;
QrBusca.                    Open;
DbText2.Visible:=           FALSE;
DbText5.Visible:=           FALSE;
tabelamovimento.            Append;
editdata.caption:=          DataAtual;
editbcd.enabled:=           True;
EditBcd.text:=                   '';
editCatracaFinal.enabled:=  true;
EditCatracaInicial2.Text:=  ' ';
editbcd.                    SetFocus;
end;

procedure TFormLancamento.editveiculoKeyPress(Sender: TObject;
  var Key: Char);
var numerocarro: string[5];
begin
if key = #13 then
   Begin
   Key:=#0;
   If EditVeiculo.text = '' then
   Begin
       EditVeiculo.SetFocus;
   End
   Else
   Begin
       NumeroCarro:=EditVeiculo.text;
       with TabelaVeiculo do
       Begin
          Close;
          Filter:='numero = '  + NumeroCarro;
          Filtered:=true;
          Open;
       End;
   If NumeroCarro = DBText3.Caption Then
   Begin
        If tipolancamento = '2' then
        Begin
           DbText5.Visible:=true;
           EditCatracaInicial2.Text:=tabelamovimentoCATRACAINICIAL.text;
           editlinha.setfocus;
        End
        Else
        Begin
           DbText5.Visible:=true;
           EditCatracaInicial2.Text:=tabelaveiculoULTIMACATRACA.Text;
           editlinha.setfocus;
        End;
   End;

   If NumeroCarro <> DBText3.Caption Then
   Begin
           MessageBox(handle,'Veículo não Cadastrado !','Opaaaa !!!', MB_OK + MB_OK);
           EditVeiculo.SetFocus;
   End;
   End;
   End;
end;

procedure TFormLancamento.editlinhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
    key:=#0;
   if EditLinha.Text = '' then
       Begin
       editLinha.text:=' ';
       editlinha.SetFocus;
       End
       else
   begin
   with TabelaLinha Do
      Begin
      Close;
      Filter:='NUMERO = '+ EDITLINHA.TEXT ;
      Filtered:=True;
      Open;
      End;
   If EditLinha.Text = tabelalinhaNUMERO.Text Then
      Begin
      DbText2.Visible:=true;
      tabelamovimentoTIPOLINHA.Text:=tabelalinhaTIPOLINHA.TEXT;
      Perform(WM_NextDlgCtl,0,0);
      End
      Else
      Begin
      MessageBox(handle,'Atenção, Linha não Cadastrada !','Eitaa !!!', MB_OK + MB_OK);
      editLinha.text:=' ';
      EditLinha.SetFocus;
      End;

   end;
   end;
end;

procedure TFormLancamento.editcatracafinalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
   Key:=#0;
   If EditCatracaFinal.text = '' then editCatracaFinal.SetFocus;
   if (StrToInt(EditCatracaInicial2.text) > StrToInt(EditCatracaFinal.text)) and
      (StrToInt(EditCatracaInicial2.text) > StrToInt('99000')) then
         EditPTotal.Caption:=IntToStr(StrtoInt(EditCatracaFinal.Text) + StrToInt('100000') - StrToInt(EditCatracaInicial2.Text))
         else
         EditPTotal.Caption:=IntToStr(StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text));

   EditFuncionario.setfocus;
   end;
end;

procedure TFormLancamento.editbcdKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
   begin
   key:=#0;
   With QrLotes do
    begin
     close;
//     Sql.Clear;
//     Sql.Add('Select * from Lotes');
//     Sql.Add('Where DT_Movimento = ' + QuotedStr(DataAtual));
//     Sql.Add(';');
//     Edit1.Text:=Sql.text;
//     Filter:='DT_Movimento = ' + QuotedStr(dataAtual);
//     Filtered:=true;
     Open;
     End;
     If (QrLotes.Eof) or (sistema='2') or ((StrtoInt(Editbcd.text) >= StrToInt(QrLotesLote_Inicial.text)) and
        (StrtoInt(Editbcd.text)<= StrToInt(QrLotesLote_Final.text))) then
        begin
          BcdAtual:=EditBcd.Text;
          AchaBcdClick(nil);
          End   //else begin
     Else
     Begin
     ShowMessage('Boletim não esta liberado para uso neste dia, confira o cadasto de Lotes'+#13+
                 'Lote Inicial Liberedo : ' + QrLotesLote_Inicial.text + #13 +
                 'Lote Final   Liberado : ' + QrLotesLote_Final.text);
     BitBtn2.Click;
     End;
    End;

end;

procedure TFormLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
tabelamovimento.Close;
tabelaveiculo.close;
tabelalinha.close;
Action:=cafree;
end;

procedure TFormLancamento.BitBtn1Click(Sender: TObject);
begin
tabelamovimento.Cancel;
tabelamovimento.Close;
tabelaveiculo.close;
tabelalinha.close;
FormInfo.close;
formlancamento.close;
end;

procedure TFormLancamento.editpfatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamento.editpfanteriorKeyPress(Sender: TObject;
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

procedure TFormLancamento.editescolaratualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamento.editescolaranteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamento.editvtatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamento.editvtanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editlivre.setfocus;
    end;

end;

procedure TFormLancamento.editlivreKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//   editgratuidade.setfocus;
    end;

end;

procedure TFormLancamento.editgratuidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    editveatual.setfocus;
    end;

end;

procedure TFormLancamento.editveatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editveanterior.setfocus;
    end;

end;

procedure TFormLancamento.editegratuitoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//   editpagante.setfocus;
    end;

end;

procedure TFormLancamento.editpaganteKeyPress(Sender: TObject;
  var Key: Char);
var tarifa: real;

  begin
if key = #13 then
    begin
    key:=#0;
    currencyString:='R$';
    CurrencyDecimals:=2;
    tarifa:=StrToFloat(tabelalinhatarifaatual.text);
    valor:= (StrToFloat(EditPagante.text) * tarifa);
    EditTotal.Caption:=FormatFloat('#####0.00',valor);
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamento.editcatracainicialKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    editcatracaFinal.Enabled:=true;
    editcatracafinal.setfocus;

    end;

end;

procedure TFormLancamento.xClick(Sender: TObject);
begin
//caucula passageiros informado x catracados;
cauculo:=0;
giros:=0;
cauculo:=
    StrToInt(editpfatual.Text)          +
    StrToInt(editpfanterior.Text)       +
    StrToInt(editEscolarAtual.Text)     +
    StrToInt(editEscolarAnterior.Text)  +
    StrToInt(editVtAtual.Text)          +
    StrToInt(editVtAnterior.Text)       +
    StrToInt(editLivre.Text)            +
    StrToInt(editGratuidade.Text)       +
    StrToInt(editVeAtual.Text)          +
    StrToInt(editVeAnterior.Text)       +
    StrToInt(editiDOSO.Text)            +
    StrToInt(editEGratuito.Text)        +
    StrToInt(editPagante.Text)          +
    StrToInt(editdESCONTO.Text)         ;
EditPTotal.Caption:=IntToStr(cauculo);

If EditCatracaFinal.text = '' then editCatracaFinal.SetFocus;
   if (StrToInt(EditCatracaInicial2.text) > StrToInt(EditCatracaFinal.text)) and
      (StrToInt(EditCatracaInicial2.text) > StrToInt('99000')) then
         giros:=StrtoInt(EditCatracaFinal.Text) + StrToInt('100000') - StrToInt(EditCatracaInicial2.Text)
         else
         Giros:=StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text);
{giros:=
    StrToInt(EditCatracaFinal.text)-StrToInt(EditCatracaInicial2.text);}

if Giros = cauculo then
    begin
    ShowMessage('Dados corretos, pronto para salvar...');
    tabelamovimentoACERTADOR.Text:=FormInfo.usuario;
    tabelamovimentoPDINHEIRO.Text:=editPagante.text;
//    tabelamovimentoDATABCD.text:=formInfo.dialancamento;
    tabelamovimentoCATRACAINICIAL.Text:=EditCatracaInicial2.Text;
    tabelamovimentoTOTALDINHEIRO.Text:=EditTotal.caption;
    tabelamovimentoPTOTAL.Text:=EditPTotal.Caption;
    tabelamovimentoNUMBCD.text:=BcdAtual;
    tabelamovimentoACERTADOR.text:=AcertadorAtual;
    // A opcao abaixo altera a data do boletim para data do movimento quando ativada
    //    TabelaMovimentoDataBcd.text:= DataAtual;
    CatClick(nil);
    tabelamovimento.post;
    EditBcd.text:='';
    tabelaVeiculo.post;
    TabelaVeiculo.close;
    QrBusca.close;
    tabelamovimento.Close;
    btsalva.enabled:=false;
    bitbtn2.SetFocus;
    end
    else
//    If giros <> cauculo then
   begin
   EditPTotal.caption:=IntToStr(cauculo);
   ShowMessage('Atenção, Há erros, Catracados: '+IntToStr(giros)+ ', Informados: ' + IntToStr(cauculo));
   editpfatual.setfocus;
   End;
// Fecha Tabelas
//TabelaVeiculo.close;
//QrBusca.close;
//tabelamovimento.Close;
//TabelaFuncionario.close;

end;

procedure TFormLancamento.editveanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamento.btsalvaClick(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
TipoLancamento:='1';
xclick(nil);
Color:=clBtnFace;
Screen.Cursor:=CrDefault;

end;

procedure TFormLancamento.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
begin
end;

procedure TFormLancamento.editlinhaExit(Sender: TObject);
begin
editlinha.Color:=clWindow;
end;

procedure TFormLancamento.catClick(Sender: TObject);
begin
with TabelaCatraca do
           begin
           Append;
           TabelaCatracaVeiculo.text        :=EditVeiculo.Text;
           TabelaCatracaUltimaColeta.text   :=EditData.Caption;
           TabelaCatracaUltimaCatraca.Text  :=EditCatracaFinal.Text;
           Post;
           End;
TabelaVeiculo.Edit;

If (StrToInt(tabelaveiculoULTIMACATRACA.Text) < StrToInt(EditCatracaFinal.Text)) or (StrToInt(EditCatracaFinal.text) < 500)  then
   begin
   tabelaveiculoULTIMACATRACA.Text :=editCatracaFinal.Text;
   tabelaveiculoULTIMACOLETA.Text  :=EditData.Caption;
   End;

end;

procedure TFormLancamento.FormHide(Sender: TObject);
begin
formlancamento.close;
end;

procedure TFormLancamento.EditFuncionarioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
   Key:=#0;
   If EditFuncionario.text = ' ' then EditFuncionario.SetFocus;
   with TabelaFuncionario do
         begin
         Open;
         Filter:='Matricula = ' + EditFuncionario.Text;
         Filtered:=true;
         End;
   If EditFuncionario.Text = TabelaFuncionarioMatricula.Text then
      Begin
      btsalva.Enabled:=true;
      DbText1.Visible:=true;
      btsalva.setfocus;
      end
      Else
      Begin
      MessageBox(handle,'Funcionário não Cadastrado !','Problema encontrado', MB_ICONINFORMATION + MB_OK);
      EditFuncionario.SetFocus;
      end;

   end;
end;

procedure TFormLancamento.EditFuncionarioExit(Sender: TObject);
begin
statusbar1.panels[0].Text:='';
end;

procedure TFormLancamento.EditCatracaInicial2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    editcatracaFinal.Enabled:=true;
    editcatracafinal.setfocus;
    end;

end;

procedure TFormLancamento.PULADORClick(Sender: TObject);
begin
QRPERMISSAO.Close;
QRPERMISSAO.Filter:='SISTEMA = ' + S.CAPTION + FORMENTRADA.LANCARSISTEMA2 + S.CAPTION;
QRPERMISSAO.FILTERED:=TRUE;
QRPERMISSAO.Open;
if QrPermissaoSISTEMA.text = 'TRANSCOL' THEN
    begin
    sistema:='1';
    LABEL25.CAPTION:='OPER. TRANSCOL';
    EditBcd.Font.Color:=ClGreen;
    end;
if QrPermissaoSISTEMA.text = 'SELETIVO' THEN
    begin
    sistema:='2';
    LABEL25.CAPTION:='OPER. SELETIVO';
    EditBcd.Font.Color:=ClRed;
     if QrPermissaoIDOSO.text = 'False' then
              BEGIN
              EditIdoso.visible:=False;
              LABEL24.VISIBLE:=FALSE;
              END;
     if QrPermissaoPFATU.text = 'False' then
         BEGIN
         editPFAtual.visible:=false;
         LABEL5.VISIBLE:=FALSE;
          END;
      if QrPermissaoPFANT.text = 'False' then
         BEGIN
         editPFAnterior.visible:=false;
         LABEL6.VISIBLE:=FALSE;
         END;

     if QrPermissaoPEATU.text = 'False' then
         BEGIN
         editEscolarAtual.visible:=false;
         LABEL7.VISIBLE:=FALSE;
         END;

     if QrPermissaoPEANT.text = 'False' then
         BEGIN
         editEscolarAnterior.visible:=false;
         LABEL8.VISIBLE:=FALSE;
         END;

     if QrPermissaoVTATU.text = 'False' then
         BEGIN
         editVTAtual.visible:=false;
         LABEL9.VISIBLE:=FALSE;
         END;

     if QrPermissaoVTANT.text = 'False' then
         BEGIN
         editVTAnterior.visible:=false;
         LABEL10.VISIBLE:=FALSE;
         END;

     if QrPermissaoLIVRE.text = 'False' then
         BEGIN
         editLivre.visible:=false;
         LABEL11.VISIBLE:=FALSE;
         END;

     if QrPermissaoGRATZ.text = 'False' then
         BEGIN
         editGratuidade.visible:=false;
         LABEL12.VISIBLE:=FALSE;
         END;

     if QrPermissaoVEATU.text = 'False' then
         BEGIN
         editVeAtual.visible:=false;
         LABEL13.VISIBLE:=FALSE;
         END;

     if QrPermissaoVEANT.text = 'False' then
         BEGIN
         editVEAnterior.visible:=false;
         LABEL14.VISIBLE:=FALSE;
         END;

     if QrPermissaoESTGR.text = 'False' then
         BEGIN
         editEgratuito.visible:=false;
         LABEL15.VISIBLE:=FALSE;
         END;

    if QrPermissaoLIQIN.text = 'False' then
         BEGIN
         editPagante.visible:=false;
         LABEL17.VISIBLE:=FALSE;
         END;

    if QrPermissaoLIQDE.text = 'False' then
         BEGIN
         editDesconto.visible:=false;
         LABEL23.VISIBLE:=FALSE;
         END;

    if QrPermissaoCAINI.text = 'False' then
         BEGIN
         EditCatracaInicial2.ENABLED:=false;
         END;

// mostra campos

    end;
    IF QRPERMISSAOVIAGEM.TEXT = 'True' then
               begin
               EditViagem.visible:=True;
               label26.Visible:=True;
               editveatual.Visible:=false;
               editveanterior.visible:=false;
               label13.Visible:=False;
               label14.Visible:=False;
               end;
     if QrPermissaoIDOSO.text = 'False' then
              EditIdoso.Enabled:=False;
     if QrPermissaoPFATU.text = 'False' then
         editPFAtual.Enabled:=false;
     if QrPermissaoPFANT.text = 'False' then
         editPFAnterior.Enabled:=false;
     if QrPermissaoPEATU.text = 'False' then
         editEscolarAtual.Enabled:=false;
     if QrPermissaoPEANT.text = 'False' then
         editEscolarAnterior.Enabled:=false;
     if QrPermissaoVTATU.text = 'False' then
         editVTAtual.Enabled:=false;
     if QrPermissaoVTANT.text = 'False' then
         editVTAnterior.Enabled:=false;
     if QrPermissaoLIVRE.text = 'False' then
         editLivre.Enabled:=false;

     if QrPermissaoGRATZ.text = 'False' then
         editGratuidade.Enabled:=false;
     if QrPermissaoVEATU.text = 'False' then
         editVeAtual.Enabled:=false;
     if QrPermissaoVEANT.text = 'False' then
         editVEAnterior.Enabled:=false;
     if QrPermissaoESTGR.text = 'False' then
         editEgratuito.Enabled:=false;
//Habilita digitação de passageiro integral e com desconto
    if QrPermissaoLIQIN.text = 'False' then
         editPagante.Enabled:=false;
    if QrPermissaoLIQDE.text = 'False' then
         editDesconto.Enabled:=false;


    if QrPermissaoCAINI.text = 'False' then
         EditCatracaInicial2.Enabled:=false;

end;

procedure TFormLancamento.EditDescontoKeyPress(Sender: TObject;
  var Key: Char);
var tarifa: real;
begin
if key = #13 then
    begin
     key:=#0;
     currencyString:='R$';
     CurrencyDecimals:=2;
       //caucula tarifa passg integral
        tarifa:=StrToFloat(tabelalinhatarifaatual.text);
        valor:= (StrToFloat(EditPagante.text) * tarifa);
        tarifa:=StrToFloat(tabelalinhatarifaDesconto.text);
        valor:=valor+ (StrToFloat(EditDesconto.text) * tarifa);
        EditTotal.Caption:=FormatFloat('#####0.00',valor);
    Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamento.editpfanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editescolaratualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editescolaranteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editvtatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editvtanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editlivreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editgratuidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editveatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editveanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editegratuitoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.EditIdosoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editpaganteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.EditDescontoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.EditCatracaInicial2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editcatracafinalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamento.editbcdExit(Sender: TObject);
begin
editbcd.Color:=clWindow;
end;

procedure TFormLancamento.editveiculoExit(Sender: TObject);
begin
editVeiculo.Color:=clWindow;
end;

procedure TFormLancamento.editbcdEnter(Sender: TObject);
begin
Color:=ClBtnFace;
Editbcd.Color:=$00D8D8B1;

end;

procedure TFormLancamento.editveiculoEnter(Sender: TObject);
begin
editVeiculo.Color:=$00C1FFC1 ;
end;

procedure TFormLancamento.editlinhaEnter(Sender: TObject);
begin
editlinha.Color:= $00C1FFC1;
end;

procedure TFormLancamento.editpfatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
     DbText2.Visible:=false;
   editLinha.text:=' ';
   EditLinha.setfocus;
  end;
end;

procedure TFormLancamento.editlinhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
   DbText5.Visible:=false;
   editVeiculo.text:=' ';
   editveiculo.setfocus;
  end;
end;

procedure TFormLancamento.editveiculoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
  BitBtn2Click(nil);
  end;
end;

procedure TFormLancamento.EditFuncionarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_F7 then
    begin
    //FormBuscaFuncionario.Show;
    End;
end;

procedure TFormLancamento.EditFuncionarioEnter(Sender: TObject);
begin
statusbar1.panels[0].Text:='F7 - Busca Funcionários';

end;

procedure TFormLancamento.AchaBcdClick(Sender: TObject);
begin
WITH TabelaMovimento Do
    Begin
    Close;
    Filter:='NumBcd = ' + s.caption + BcdAtual + s.caption;
    Filtered:=true;
    Open;
    If not eof then
        begin
        if messagedlg('Boletim Já Cadastrado, Deseja Alterá-lo ?',mtConfirmation,[mbno, mbyes],2)
            = mryes then
            begin
            Color:=ClMoneyGreen;
            TabelaMovimento.Edit;
            TipoLancamento:='2';
            EditCatracaInicial2.Text:=tabelamovimentoCATRACAINICIAL.text;
            EditBcd.Enabled:=false;
            EditLinha.Enabled:=True;
            EditVeiculo.Enabled:=true;
            EditVeiculo.SetFocus;
                 End
            Else
                 begin
                 BitBtn2Click(nil);
                 End;
            End
         Else
         Begin
          tabelamovimento.            Append;
          Editbcd.enabled:=false;
          EditVeiculo.Enabled:=true;
          EditLinha.Enabled:=true;
          Editveiculo.setfocus;
          TabelaMovimentoDataBcd.text := DataAtual;
          //Editdata.caption:=          DataAtual;

         End;
    End;
end;

procedure TFormLancamento.FormActivate(Sender: TObject);
begin
DataAtual:=DateToStr(FormInfo.Dialancamento);
AcertadorAtual:=pai.QrAcertador.FieldByName('ACE_DES').AsString;
end;

end.
