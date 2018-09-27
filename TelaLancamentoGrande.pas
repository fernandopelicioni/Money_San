unit TelaLancamentoGrande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, DBTables, ComCtrls, ActnColorMaps,
  ActnMan, CustomizeDlg, XPStyleActnCtrls, ActnList, ToolWin, ActnCtrls,
  ActnMenus, ExtCtrls, Buttons, XPMan, IWControl, IWCompEdit, IWDBStdCtrls,
  jpeg;

type
  TFormLancamentoGrande = class(TForm)
    GroupBox1: TGroupBox;
    tabelamovimento: TTable;
    dtmovimento: TDataSource;
    editbcd: TDBEdit;
    Label1: TLabel;
    editdata: TDBText;
    Label2: TLabel;
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
    tabelamovimentoDATABCD: TStringField;
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
    tabelaBcd: TTable;
    DTBcd: TDataSource;
    tabelaBcdNumeroBcd: TIntegerField;
    tabelaBcdDiaMesAnoBcd: TStringField;
    tabelaBcdCodicao: TStringField;
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
    QrBuscaDATABCD: TStringField;
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
    Image1: TImage;
    Timer1: TTimer;
    Panel2: TPanel;
    Label22: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    QrPermissaoSISTEMA: TStringField;
    Label28: TLabel;
    tabelaveiculoNUMERO: TIntegerField;
    tabelamovimentoVEICULOBCD: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure editveiculoKeyPress(Sender: TObject; var Key: Char);
    procedure editlinhaKeyPress(Sender: TObject; var Key: Char);
    procedure editcatracafinalKeyPress(Sender: TObject; var Key: Char);
    procedure editbcdKeyPress(Sender: TObject; var Key: Char);
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
    procedure Timer1Timer(Sender: TObject);
    procedure Esconde_Barra_Tarefa(EstadoBarra:  Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure editpfatualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editlinhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editveiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancamentoGrande: TFormLancamentoGrande;
   cauculo: integer;
   giros: integer;
implementation

uses TELAINFO, telaentrada;

{$R *.dfm}

procedure TFormLancamentoGrande.FormShow(Sender: TObject);
begin
Top := 0;
Left := 0;
Width := Screen.Width;
Height := Screen.Height;

label25.caption:=copy(timetostr(now),1,5);
Label22.caption:=formInfo.usuario +' - ' +forminfo.nome;
BitBtn2.SetFocus;
//editdata.caption:=formInfo.dialancamento;
puladorClick(nil);
Application.OnMessage := ProcessaMsg;
end;

procedure TFormLancamentoGrande.BitBtn2Click(Sender: TObject);
begin
TabelaMovimento.Cancel;
tabelamovimento.Open;
DbText2.Visible:=FALSE;
DbText5.Visible:=FALSE;
tabelamovimento.Append;
//editdata.caption:=forminfo.dialancamento;
editbcd.enabled:=true;
editCatracaFinal.enabled:=true;
EditCatracaInicial2.Text:=' ';
editbcd.SetFocus;
end;


procedure TFormLancamentoGrande.editveiculoKeyPress(Sender: TObject;
  var Key: Char);
var numerocarro: string[5];
begin
if key = #13 then
   Begin
   Key:=#0;
   If EditVeiculo.text = ' ' then EditVeiculo.SetFocus;
   NumeroCarro:=EditVeiculo.text;
   with TabelaVeiculo do
         Begin
         Open;
         Filter:='numero ='  + editveiculo.Text;
         Filtered:=true;
         End;
   if NumeroCarro = DBText3.Caption Then
        Begin
        DbText5.Visible:=true;
//        TabelaCatraca.Filter:='veiculo = ' + EditVeiculo.Text;
//        TabelaCatraca.Filtered:=True;
//        TabelaCatraca.last;
        EditCatracaInicial2.Text:=tabelaveiculoULTIMACATRACA.Text;
        editlinha.setfocus;
        End;
   if NumeroCarro <> DBText3.Caption Then
        Begin
        MessageBox(handle,'Veículo não Cadastrado !','Opaaaa !!!', MB_OK + MB_OK);
        EditVeiculo.SetFocus;
        End;
   end;
end;

procedure TFormLancamentoGrande.editlinhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
   key:=#0;
   if EditLinha.Text = '' then
       Begin
       editLinha.text:='';
       editlinha.SetFocus;
       End;
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
//      editpfatual.setfocus;
      End
      Else
      Begin
      MessageBox(handle,'Atenção, Linha não Cadastrada !','Eitaa !!!', MB_OK + MB_OK);
      editLinha.text:='';
      EditLinha.SetFocus;
      End;

   end;

end;

procedure TFormLancamentoGrande.editcatracafinalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
   Key:=#0;
//   If EditCatracaFinal = '  ' then editCatracaFinal.SetFocus;
   EditPTotal.Caption:=IntToStr(StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text));
//   Perform(WM_NextDlgCtl,0,0);
   editFuncionario.Enabled:=true;
   EditFuncionario.setfocus;
   end;
end;

procedure TFormLancamentoGrande.editbcdKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   Begin
   key:=#0;
   with QrBusca do
   begin
   close;
   filter:='NumBcd = ' + s.caption + EditBcd.Text + s.caption;
   filtered:=true;
   open;
   if not eof then
       begin
       ShowMessage('Ja existe um lançamento para o numero de boletim Informado, selecione Outro');
       editbcd.text:='';
       editBcd.setfocus;
       end
       else
         begin
         editbcd.enabled:=false;
         EditVeiculo.Enabled:=true;
         editLinha.Enabled:=true;
         editveiculo.setfocus;
         end;
       end;
   end;




 {  With TabelaBcd do begin
        Close;
        Filter:='NumeroBcd = ' + EditBcd.Text;
        Filtered:=True;
        Open;
        end;
   If Editbcd.Text = tabelaBcdNumeroBcd.Text then begin
       ShowMessage('Este Boletim ja foi acertado, digite outro numero!');
       EditBcd.SetFocus;
       End;
   If Editbcd.Text <> tabelaBcdNumeroBcd.Text then
       begin
       TabelaBcd.Append;
       tabelaBcdNumeroBcd.Text:=EditBcd.Text;
       tabelaBcdDiaMesAnoBcd.Text:=EditData.Caption;
       tabelaBcdCodicao.text:='S';
       editbcd.enabled:=false;
       editveiculo.setfocus;
       end;
   End;  }

end;

procedure TFormLancamentoGrande.BitBtn1Click(Sender: TObject);
begin
tabelamovimento.Cancel;
tabelamovimento.Close;
tabelaveiculo.close;
tabelalinha.close;
close;
end;

procedure TFormLancamentoGrande.editpfatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editpfanterior.setfocus;
    end;
end;

procedure TFormLancamentoGrande.editpfanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);

    //    editescolaratual.setfocus;
   end;
if key = #11 then
    begin
//    key:=#0;
    Perform(WM_NextDlgCtl,0,0 );
    end;

end;

procedure TFormLancamentoGrande.editescolaratualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editescolaranterior.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editescolaranteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);

//    editvtatual.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editvtatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editvtanterior.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editvtanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editlivre.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editlivreKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//   editgratuidade.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editgratuidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
    editveatual.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editveatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//    editveanterior.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editegratuitoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//   editpagante.setfocus;
    end;

end;

procedure TFormLancamentoGrande.editpaganteKeyPress(Sender: TObject;
  var Key: Char);
var tarifa: real;
    valor: real;
  begin
currencyString:='R$';
CurrencyDecimals:=2;
if key = #13 then
    begin
    key:=#0;
    tarifa:=StrToFloat(tabelalinhatarifaatual.text);
    valor:= StrToFloat(EditPagante.text) * tarifa;
    EditTotal.Caption:=FormatFloat('#####0.00',valor);
//    if EditPagante.Text > '0' then
///       Begin
 //       EditDesconto.Enabled:=false;
   //     Perform(WM_NextDlgCtl,0,0);
//        end;
    Perform(WM_NextDlgCtl,0,0);

        //    editcatracainicial2.setfocus;
    end;
end;

procedure TFormLancamentoGrande.editcatracainicialKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    editcatracaFinal.Enabled:=true;
    editcatracafinal.setfocus;

    end;

end;

procedure TFormLancamentoGrande.xClick(Sender: TObject);
begin
//caucula passageiros informado x catracados;
cauculo:=0;
giros:=0;
cauculo:=
    StrToInt(editpfatual.Text)+
    StrToInt(editpfanterior.Text)+
    StrToInt(editEscolarAtual.Text)+
    StrToInt(editEscolarAnterior.Text)+
    StrToInt(editVtAtual.Text)+
    StrToInt(editVtAnterior.Text)+
    StrToInt(editLivre.Text)+
    StrToInt(editGratuidade.Text)+
    StrToInt(editVeAtual.Text)+
    StrToInt(editVeAnterior.Text)+
    StrToInt(editEGratuito.Text)+
    StrToInt(editPagante.Text);
EditPTotal.Caption:=IntToStr(cauculo);
giros:=
    StrToInt(EditCatracaFinal.text)-StrToInt(EditCatracaInicial2.text);
if Giros = cauculo then begin
    ShowMessage('Dados corretos, pronto para salvar...');
// Linha abaixo salva o bcd na lista de lançados para analize na proxima entrada de dados
// Linha Abaixo atualiza a catraca
    CatClick(nil);
//linha abaixo salva nome do acertador/arrecadador e dados
    tabelamovimentoACERTADOR.Text:=FormInfo.usuario;
    tabelamovimentoPDINHEIRO.Text:=editPagante.text;
//    tabelamovimentoDATABCD.text:=formInfo.dialancamento;
    tabelamovimentoCATRACAINICIAL.Text:=EditCatracaInicial2.Text;
    tabelamovimentoTOTALDINHEIRO.Text:=EditTotal.caption;
    tabelamovimentoPTOTAL.Text:=EditPTotal.Caption;
    tabelamovimento.post;
    tabelaVeiculo.post;
    tabelamovimento.Close;
    btsalva.enabled:=false;
    bitbtn2.SetFocus;
    end;
If giros <> cauculo then
   begin
   EditPTotal.caption:=IntToStr(cauculo);
   ShowMessage('Atenção, Há erros, Catracados: '+IntToStr(giros)+ ', Informados: ' + IntToStr(cauculo));
   editpfatual.setfocus;
   End;
end;
// **************************exemplos
{if MessageDlg('Welcome to my Delphi application.  Exit now?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    MessageDlg('Exiting the Delphi application.', mtInformation,
      [mbOk], 0, mbOk);
    Close;
  end;

end;}

procedure TFormLancamentoGrande.editveanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Perform(WM_NextDlgCtl,0,0);
//   editegratuito.setfocus;
    end;

end;

procedure TFormLancamentoGrande.btsalvaClick(Sender: TObject);
begin
xclick(nil);
end;

procedure TFormLancamentoGrande.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
begin
{if Msg.message = WM_KEYDOWN then
    if not (Screen.ActiveControl is TCustomMemo) and
       not (Screen.ActiveControl is TButtonControl) then
    begin
      if not (Screen.ActiveControl is TCustomControl) then
      begin
        if Msg.wParam = VK_Down then
           Msg.wParam := VK_Tab;
        if Msg.wParam = VK_UP then
        begin
          Msg.wParam := VK_CLEAR;
          Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
        end;
      end;
      if Msg.wParam = VK_Return then
        Msg.wParam := VK_Tab;
    end;}
end;

procedure TFormLancamentoGrande.editlinhaExit(Sender: TObject);
begin
editlinha.Color:=clWindow;
end;

procedure TFormLancamentoGrande.catClick(Sender: TObject);
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

If StrToInt(tabelaveiculoULTIMACATRACA.Text) < StrToInt(EditCatracaFinal.Text) then
   begin
   tabelaveiculoULTIMACATRACA.Text :=editCatracaFinal.Text;
   tabelaveiculoULTIMACOLETA.Text  :=EditData.Caption;
   End;

end;

procedure TFormLancamentoGrande.EditFuncionarioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
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

procedure TFormLancamentoGrande.EditFuncionarioExit(Sender: TObject);
begin
//EditFuncionarioKeyPress(nil);
end;

procedure TFormLancamentoGrande.EditCatracaInicial2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    editcatracaFinal.Enabled:=true;
//    Perform(WM_NextDlgCtl,0,0);
    editcatracafinal.setfocus;
    end;

end;

procedure TFormLancamentoGrande.PULADORClick(Sender: TObject);
begin
QRPERMISSAO.Close;
QRPERMISSAO.Filter:='SISTEMA = ' + S.CAPTION + FORMENTRADA.LANCARSISTEMA2 + S.CAPTION;
QRPERMISSAO.FILTERED:=TRUE;
QRPERMISSAO.Open;
if QrPermissaoSISTEMA.text = 'TRANSCOL' THEN
    LABEL28.CAPTION:='OPER. TRANSCOL';
if QrPermissaoSISTEMA.text = 'SELETIVO' THEN
    LABEL28.CAPTION:='OPER. SELETIVO';

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

procedure TFormLancamentoGrande.EditDescontoKeyPress(Sender: TObject;
  var Key: Char);
var tarifa: real;
    valor: real;
begin
currencyString:='R$';
CurrencyDecimals:=2;
if key = #13 then
    begin
    key:=#0;
    if EditDesconto.text > '0' Then
        Begin
        tarifa:=StrToFloat(tabelamovimentoDESCONTO.text);
        valor:= StrToFloat(EditDesconto.text) * tarifa;
        EditTotal.Caption:=FormatFloat('#####0.00',valor);
//    editcatracainicial2.setfocus;
        End;
    Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamentoGrande.editpfanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editescolaratualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editescolaranteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editvtatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editvtanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editlivreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editgratuidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editveatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editveanteriorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editegratuitoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.EditIdosoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editpaganteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.EditDescontoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.EditCatracaInicial2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editcatracafinalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editbcdExit(Sender: TObject);
begin
editbcd.Color:=clWindow;
end;

procedure TFormLancamentoGrande.editveiculoExit(Sender: TObject);
begin
editVeiculo.Color:=clWindow;
end;

procedure TFormLancamentoGrande.editbcdEnter(Sender: TObject);
begin
editbcd.Color:=$00C1FFC1;

end;

procedure TFormLancamentoGrande.editveiculoEnter(Sender: TObject);
begin
editVeiculo.Color:=$00C1FFC1 ;
end;

procedure TFormLancamentoGrande.editlinhaEnter(Sender: TObject);
begin
editlinha.Color:= $00C1FFC1;
end;

procedure TFormLancamentoGrande.Timer1Timer(Sender: TObject);
begin
label25.caption:=copy(timetostr(now),1,5);

end;

procedure TFormLancamentoGrande.Esconde_Barra_Tarefa(EstadoBarra:  Boolean);
var wndHandle :  THandle;
          wndClass :  array[0..50] of Char;
begin
   StrPCopy(@wndClass[0],'Shell_TrayWnd');
   wndHandle :=  FindWindow(@wndClass[0], nil);

   If  EstadoBarra=True Then
           ShowWindow(wndHandle, SW_RESTORE)
   Else
           ShowWindow(wndHandle, SW_HIDE);
 end;

procedure TFormLancamentoGrande.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=CaFree;
end;

procedure TFormLancamentoGrande.editpfatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editlinhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormLancamentoGrande.editveiculoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,1,0);
  end;

end;

end.
