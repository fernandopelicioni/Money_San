unit UnitLancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, DBTables, ComCtrls, ActnColorMaps,
  ActnMan, CustomizeDlg, XPStyleActnCtrls, ActnList, ToolWin, ActnCtrls,
  ActnMenus, ExtCtrls, Buttons, XPMan, IWControl, IWCompEdit, IWDBStdCtrls,
  jpeg, Grids, DBGrids, ADODB, pngimage;

type
  TFormLancamento = class(TForm)
    GroupBox1: TGroupBox;
    DtMov: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    DtLinha: TDataSource;
    DtVeiculo: TDataSource;
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
    cat: TSpeedButton;
    DtPro: TDataSource;
    s: TLabel;
    EditCatracaInicial2: TEdit;
    PULADOR: TSpeedButton;
    EditDesconto: TDBEdit;
    Label23: TLabel;
    EditIdoso: TDBEdit;
    Label24: TLabel;
    eDITvIAGEM: TDBEdit;
    Label26: TLabel;
    AchaBcd: TBitBtn;
    EditBcd: TMaskEdit;
    DtLotes: TDataSource;
    DtColigada: TDataSource;
    EditLinha: TEdit;
    Editveiculo: TEdit;
    BalloonHint1: TBalloonHint;
    EDITDATA: TLabel;
    QrMovBcd: TADOQuery;
    QrMovBcdBCD_COD: TAutoIncField;
    QrMovBcdBCD_NUM: TIntegerField;
    QrMovBcdBCD_DATA: TDateTimeField;
    QrMovBcdBCD_VEI: TWideStringField;
    QrMovBcdBCD_CATINI: TIntegerField;
    QrMovBcdBCD_CATFIN: TIntegerField;
    QrMovBcdBCD_VIAGEM: TWideStringField;
    QrMovBcdBCD_PFATU: TSmallintField;
    QrMovBcdBCD_PFANT: TSmallintField;
    QrMovBcdBCD_PEATU: TSmallintField;
    QrMovBcdBCD_PEANT: TSmallintField;
    QrMovBcdBCD_VTEATU: TSmallintField;
    QrMovBcdBCD_VTEANT: TSmallintField;
    QrMovBcdBCD_LIVRE: TSmallintField;
    QrMovBcdBCD_GRATUITO: TSmallintField;
    QrMovBcdBCD_VEATU: TSmallintField;
    QrMovBcdBCD_VEANT: TSmallintField;
    QrMovBcdBCD_TOTAL: TSmallintField;
    QrMovBcdBCD_LIQUIDO: TSmallintField;
    QrMovBcdBCD_DINHEIRO: TBCDField;
    QrMovBcdBCD_DESCONTO: TSmallintField;
    QrMovBcdBCD_RESPONSAVEL: TSmallintField;
    QrMovBcdBCD_ACERTADOR: TWordField;
    QrMovBcdBCD_IDOSO: TSmallintField;
    QrMovBcdBCD_COLIGADA: TWordField;
    QrMovBcdBCD_ESTGRA: TSmallintField;
    QrMovBcdBCD_SERIE: TWideStringField;
    QrMovBcdBCD_SISTEMA: TWordField;
    Dtparam: TDataSource;
    QrCat: TADOQuery;
    Image1: TImage;
    Label22: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    EditFuncionario: TDBEdit;
    DBText1: TDBText;
    QrMovBcdBCD_LIN: TIntegerField;
    Timer1: TTimer;
    QrMovBcdBCD_DATAHORA: TDateTimeField;
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
    procedure FormActivate(Sender: TObject);
    procedure EditIdosoKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
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

uses UnPai, UnitDadosMov;

{$R *.dfm}

procedure TFormLancamento.FormShow(Sender: TObject);
begin
//statusbar1.panels[1].Text:='Acertador Atual: ' + formInfo.usuario +' - ' +forminfo.nome;
BitBtn2.SetFocus;
//editdata.caption:=       FormInfo.dialancamento;
//puladorClick             (nil);
Application.OnMessage := ProcessaMsg;
end;

procedure TFormLancamento.BitBtn2Click(Sender: TObject);
begin
pai.Genoma.Connected:=true;
DtMov.DataSet.Cancel;
                               Color:=ClBtnFace;
Editveiculo.Text:='';
EditLinha.Text:='';
EditCatracaInicial2.Text:='';
GroupBox1.Enabled:=true;
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

procedure TFormLancamento.editveiculoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
    With pai.QrVeiCat do
       begin
        Close;
        Sql.Clear;
          Sql.Add('select Vei_Nun, Vei_Coligada from Tb_Veiculos');
           Sql.Add('where VEI_NUN = ' + QuotedStr(EditVeiculo.Text));
            Sql.Add('and Vei_IntMon = ' + QuotedStr('S'));
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
                                                       if Fields[0].Value > 0 then
                                                                EditCatracaInicial2.Text:=IntToStr(Fields[0].Value)
                                                                else
                                                                EditcatracaInicial2.Text:='0';
                                            end;
                            end;
                         EditLinha.Enabled:=true;
                         EditLinha.SetFocus;
              end
              else
              begin
                         MessageBox(Handle,'Se o veículo existe, Verifique se está dísponivel para lançamento no módulo Center Bus','Não Encontrado',Mb_IconInformation+Mb_Ok);
                         Editveiculo.Text:='';
                         EditVeiculo.SetFocus;
              end;

      end;
end;

end;

procedure TFormLancamento.editlinhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
    key:=#0;
     with Pai.QrLinhasCompletas Do
         Begin
             Close;
              Sql.Clear;
               Sql.Add('Select * from Tb_MonLin A, Tb_MonTipLin B');
                Sql.Add('Where B.TLI_Cod = A.Lin_Tipo');
                 Sql.Add('And A.Lin_Cod = ' + QuotedStr(EditLinha.Text));
             //     Sql.Add('And TLI_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                   Sql.Add('And B.TLi_Cod = ' + QuotedStr(FormDadosMov.DtSIstema.DataSet.FieldByName('TLI_Cod').AsString));
                    Sql.Add('And A.Lin_Status = ' + QuotedStr('A'));
                    Open;
             if Not Eof then
                    begin
//                           Pulador.Click;
// Pulador, Funcao que define quais campos serao mostrados ou desabilitados sera feito na escolha do tipo de linha da tela anterior
                           Panel1.Enabled:=true;
                           Perform(WM_NextDlgCtl,0,0);
//                           Panel1.SetFocus;
                    End
                    Else
                    Begin
                           MessageBox(handle,'Linha não Encontrada ou pertence a outra Coligada !','Atenção !!!', MB_IconInformation + MB_OK);
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
       If EditCatracaFinal.text = '' then
                editCatracaFinal.SetFocus;
       if (StrToInt(EditCatracaInicial2.text) > StrToInt(EditCatracaFinal.text)) and   (StrToInt(EditCatracaInicial2.text) > StrToInt('99000')) then
                    BEGIN
                    EditPTotal.Caption:=IntToStr(StrtoInt(EditCatracaFinal.Text) + StrToInt('100000') - StrToInt(EditCatracaInicial2.Text));
                    END
                    else BEGIN
                    EditPTotal.Caption:=IntToStr(StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text));
                    END;
        EditFuncionario.Enabled:=TRUE;
        EditFuncionario.setfocus;

   end;
end;

procedure TFormLancamento.editbcdKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
   begin
         key:=#0;
         with QrMovBcd do
              begin
                   if EditBcd.text <> '' then
                        begin
                            Close;
                            Sql.Clear;
                             Sql.Add('Select * from Tb_MonMov');
                             Sql.Add('Where BCd_Num = ' + QuotedStr(EditBcd.Text));
                             Sql.Add('And Bcd_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                             Sql.Add('And Bcd_Sistema = ' + QuotedStr(FormDadosMov.DtSIstema.DataSet.FieldByName('TLI_COD').AsString));
                             Open;
                             if Eof then
                                   Begin
                                          Editveiculo.Enabled:=true;
                                          DtMov.DataSet.Insert;
                                          Color:=clBtnFace;
                                          EditVeiculo.SetFocus;
                                    End
                                    Else
                                    begin
                                          EditVeiculo.Text:=DtMov.DataSet.FieldByName('Bcd_vei').AsString;
                                          EditLinha.Text:=DtMov.DataSet.FieldByName('Bcd_Lin').AsString;
                                          EditCatracaInicial2.Text:=DtMov.DataSet.FieldByName('Bcd_CatIni').AsString;
                                          DtMov.DataSet.Edit;
                                          Color:=clGradientInactiveCaption;
                                          Editveiculo.Enabled:=true;
                                          EditVeiculo.SetFocus;
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
//     ShowMessage('Boletim não esta liberado para uso neste dia, confira o cadasto de Lotes'+#13+
    //             'Lote Inicial Liberedo : ' + QrLotesLote_Inicial.text + #13 +
  //               'Lote Final   Liberado : ' + QrLotesLote_Final.text);
//     BitBtn2.Click;
//     End;
//    End;

   end;
end;

procedure TFormLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//DtFuncionario.DataSet.Close;
Dtpro.DataSet.Close;
DtMov.DataSet.Close;
DtVeiculo.Dataset.close;
DtLinha.DataSet.Close;
FormDadosMov.Close;
Action:=cafree;
end;

procedure TFormLancamento.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormLancamento.editpfatualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editpfatual.Text = '' then
       editpfatual.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamento.editpfanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editpfanterior.Text = '' then
       editpfanterior.Text:='0';
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
    if editEscolarAtual.Text = '' then
        editEscolarAtual.Text:='0';
   Perform(WM_NextDlgCtl,0,0);
    end;

end;

procedure TFormLancamento.editescolaranteriorKeyPress(Sender: TObject;
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

procedure TFormLancamento.editvtatualKeyPress(Sender: TObject;
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

procedure TFormLancamento.editvtanteriorKeyPress(Sender: TObject;
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

procedure TFormLancamento.editlivreKeyPress(Sender: TObject;
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

procedure TFormLancamento.editgratuidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editgratuidade.Text = '' then
        editGratuidade.Text:='0';
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
    if editVEatual.Text = '' then
       editVeAtual.Text:='0';
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
    if editEGratuito.Text = '' then
        editEgratuito.Text:='0';
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
        if editpagante.Text = '' then
              editPagante.Text:='0';
         currencyString:='R$';
          CurrencyDecimals:=2;
           tarifa:=StrToFloat(DtLinha.DataSet.FieldByName('TLI_TARIFAATUAL').AsString);
            valor:= (StrToFloat(EditPagante.text) * tarifa);
             EditTotal.Caption:=FormatFloat('###,##0.00',valor);
              DtMov.DataSet.FieldByName('Bcd_Dinheiro').AsString:=floattoStr(valor);
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

procedure TFormLancamento.editveanteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editVeAnterior.Text = '' then
          editVeAnterior.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormLancamento.btsalvaClick(Sender: TObject);
begin
if (DtMov.DataSet.State = DsInsert) or (DtMov.Dataset.State = DsEdit) then
       begin
              Screen.Cursor:=CrHourGlass;
              Color:=clBtnFace;
              GroupBox1.Enabled:=False;
  //caucula passageiros informado x catracados;
              if EditPfAtual.Text = ''         then  EditPfAtual.text:='0';
              if editpfanterior.Text = ''      then  editpfanterior.text:='0';
              if editEscolarAtual.Text = ''    then  editEscolarAtual.text:='0';
              if editEscolarAnterior.Text = '' then  editEscolarAnterior.text:='0';
              if editVtAtual.Text = ''         then  editVtAtual.text:='0';
              if editVtAnterior.Text = ''      then  editVtAnterior.text:='0';
              if editLivre.Text = ''           then  editLivre.text:='0';
              if editGratuidade.Text = ''      then  editGratuidade.text:='0';
              if editVeAtual.Text = ''         then  editVeAtual.text:='0';
              if editVeAnterior.Text = ''      then  editVeAnterior.text:='0';
              if editiDOSO.Text = ''           then  editiDOSO.text:='0';
              if editEGratuito.Text = ''       then  editEGratuito.text:='0';
              if editPagante.Text = ''         then  editPagante.text:='0';
              if editdESCONTO.Text = ''        then  editdESCONTO.text:='0';
              cauculo:=0;
              giros:=0;
              cauculo:=    StrToInt(editpfatual.Text)          +
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

              If EditCatracaFinal.text = '' then
                         editCatracaFinal.SetFocus;
              if (StrToInt(EditCatracaInicial2.text) > StrToInt(EditCatracaFinal.text)) and  (StrToInt(EditCatracaInicial2.text) > StrToInt('99000')) then
                         giros:=StrtoInt(EditCatracaFinal.Text) + StrToInt('100000') - StrToInt(EditCatracaInicial2.Text)
                         else
                         Giros:=StrtoInt(EditCatracaFinal.Text) - StrToInt(EditCatracaInicial2.Text);
              if Giros = cauculo then
                       begin
                           if messageDlg('Movimento está correto, estou proto para salvar, Posso continuar ?',mtConfirmation,[mbyes,mbno],0) = mryes then
                                 begin
                                     // Salvar
                                       DtMov.DataSet.FieldByName('Bcd_Num').AsString:=Editbcd.Text;
                                       DtMov.DataSet.FieldByName('Bcd_Vei').AsString:=EditVeiculo.Text;
                                       DtMov.DataSet.FieldByName('Bcd_Lin').AsString:=EditLinha.Text;
                                       DtMov.DataSet.FieldByName('Bcd_Catini').AsString:=EditCatracaInicial2.Text;
                                       DtMov.DataSet.FieldByName('Bcd_Total').AsString:=IntToStr(giros);
                                       DtMov.DataSet.FieldByName('Bcd_Serie').AsString:=Dtparam.DataSet.FieldByName('Par_CodEmp').AsString;
                                       DtMov.DataSet.FieldByName('Bcd_Sistema').AsString:=FormDadosMov.DtSIstema.DataSet.FieldByName('Tli_Cod').AsString;
                                       if (DtMov.DataSet.State = DsInsert) then
                                                  begin
                                                  DtMov.DataSet.FieldByName('Bcd_Acertador').AsString:=FormDadosMov.DtAcertador.DataSet.FieldByName('Ace_Cod').AsString;
                                                  DtMov.DataSet.FieldByName('Bcd_Data').AsString:=DateToStr(FormDadosMov.EditData.Date);
                                                  end;
                                       DtMov.DataSet.FieldByName('Bcd_Coligada').AsString:=(DtColigada.DataSet.FieldByName('COD_COLIGADA').AsString);
                                       DtMov.DataSet.FieldByName('Bcd_DatahORA').AsString:=DateTIMEToStr(NOW);

//                                       DtVeiculo.DataSet.Edit;
             {                          If (StrToInt(Dtveiculo.DataSet.FieldByName('Cat_Cat').AsString) < StrToInt(EditCatracaFinal.Text)) or (StrToInt(EditCatracaFinal.text) < 1000)  then
                                                 begin
                                                       Dtveiculo.DataSet.FieldByName('Cat_Cat').AsString :=editCatracaFinal.Text;
                                                       Dtveiculo.DataSet.FieldByName('Cat_Data').AsString  :=EditData.Caption;
                                                  End;   }
                                       DtMov.DataSet.Post;
//                                       DtVeiculo.DataSet.Post;
//                                       DtVeiculo.DataSet.Close;
                                       DtMov.DataSet.Close;

                                       BitBtn2.Click;

                                 end
                                 Else begin
                                       EditVeiculo.Enabled:=true;
                                       EditVeiculo.setfocus;
                                 end
                         end
                        else begin
                              ShowMessage('Quantidade de Passageiros não conferem, verifique:'+#13+#13+'Catracados : ' + IntToStr(Giros) + #13 + 'Informados : ' + IntToStr(Cauculo));

                              GroupBox1.Enabled:=True;
                              EditVeiculo.Enabled:=true;
                              EditVeiculo.SetFocus;
                        end;


/// ************************************** Confere lancamento
              Color:=clBtnFace;
              Panel1.Enabled:=false;
              Screen.Cursor:=CrDefault;
       end
       else begin
        Dtpro.DataSet.Close;
        DtMov.DataSet.Cancel;
        Dtmov.DataSet.Close;
        bitBtn2.Click;
       end;

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
DtVeiculo.DataSet.Edit;
If (StrToInt(Dtveiculo.DataSet.FieldByName('Cat_Cat').AsString) < StrToInt(EditCatracaFinal.Text)) or (StrToInt(EditCatracaFinal.text) < 500)  then
   begin
   Dtveiculo.DataSet.FieldByName('Cat_Cat').AsString :=editCatracaFinal.Text;
   Dtveiculo.DataSet.FieldByName('Cat_Data').AsString  :=EditData.Caption;
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
         With Pai.QrProfissionais do
              Begin
                   Close;
                    Sql.Clear;
                     Sql.Add('Select A.Nom_Pro, A.Cha_Pro, A.Cod_pro, A.Ativo_pro, A.Pro_IntMon, B.FUN_INTMON from tb_profissionais A, Tb_Funcao B');
                      Sql.Add('Where A.Cod_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                       Sql.Add('And B.Cod_Funcao = A.Fun_Pro');
                         Sql.Add('And B.Fun_IntMon = ' + QuotedStr('S'));
                          Sql.Add('And A.Ativo_pro = ' + QuotedStr('A'));
                           Sql.Add('And A.Cha_Pro = ' + QuotedStr(EditFuncionario.Text));
                            open;
                   if not eof then
                        begin
                             Btsalva.SetFocus;
                        end
                        else begin
                              MessageBox(handle,'Não encontrei ninguém com esse Registro !'+#13+#13+ 'Tente de novo','Algo está errado',mb_IconInformation+mb_ok);
                              EditFuncionario.SetFocus;
                        end;
              End;
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
// caso seja tudo 2
     if DtParam.DataSet.fieldbyname('Par_IDOSO').AsString = '2' then
              BEGIN
                   EditIdoso.visible:=False;
                   LABEL24.VISIBLE:=FALSE;
              end;
     if DtParam.DataSet.fieldbyname('Par_PFAT').text = '2' then
         BEGIN
               editPFAtual.visible:=false;
               LABEL5.VISIBLE:=FALSE;
          end;

      if DtParam.DataSet.fieldbyname('Par_PFAN').text = '2' then
         BEGIN
                editPFAnterior.visible:=false;
                LABEL6.VISIBLE:=FALSE;
         END;

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

     if DtParam.DataSet.fieldbyname('Par_GRAT').text = '2' then
         BEGIN
               editGratuidade.visible:=false;
               LABEL12.VISIBLE:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VEAT').text = '2' then
         BEGIN
                editVeAtual.visible:=false;
                LABEL13.VISIBLE:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VEAN').text = '2' then
         BEGIN
                editVEAnterior.visible:=false;
                LABEL14.VISIBLE:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_ESTGRA').text = '2' then
         BEGIN
               editEgratuito.visible:=false;
               LABEL15.VISIBLE:=FALSE;
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

    if DtParam.DataSet.fieldbyname('Par_CAtINI').text = '2' then
         BEGIN
              EditCatracaInicial2.ENABLED:=false;
         end;

    IF DtParam.DataSet.fieldbyname('Par_VIAGEM').TEXT = '2' then
               begin
               EditViagem.visible:=false;
               label26.Visible:=false;
               end;
               // fim tudo 2

// caso seja tudo 0
     if DtParam.DataSet.fieldbyname('Par_IDOSO').AsString = '0' then
              BEGIN
                   EditIdoso.enabled:=False;
                   LABEL24.enabled:=FALSE;
              end;
     if DtParam.DataSet.fieldbyname('Par_PFAT').text = '0' then
         BEGIN
               editPFAtual.enabled:=false;
               LABEL5.enabled:=FALSE;
          end;

      if DtParam.DataSet.fieldbyname('Par_PFAN').text = '0' then
         BEGIN
                editPFAnterior.enabled:=false;
                LABEL6.enabled:=FALSE;
         END;

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

     if DtParam.DataSet.fieldbyname('Par_GRAT').text = '0' then
         BEGIN
               editGratuidade.enabled:=false;
               LABEL12.enabled:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VEAT').text = '0' then
         BEGIN
                editVeAtual.enabled:=false;
                LABEL13.enabled:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_VEAN').text = '0' then
         BEGIN
                editVEAnterior.enabled:=false;
                LABEL14.enabled:=FALSE;
         end;

     if DtParam.DataSet.fieldbyname('Par_ESTGRA').text = '0' then
         BEGIN
               editEgratuito.enabled:=false;
               LABEL15.enabled:=FALSE;
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

    if DtParam.DataSet.fieldbyname('Par_CAtINI').text = '0' then
         BEGIN
              EditCatracaInicial2.enabled:=false;
         end;

    IF DtParam.DataSet.fieldbyname('Par_VIAGEM').TEXT = '0' then
               begin
               EditViagem.enabled:=True;
               label26.enabled:=True;
               end;

// Fim tudo 0

// caso seja tudo 1
     if DtParam.DataSet.fieldbyname('Par_IDOSO').AsString = '1' then
              BEGIN
                   EditIdoso.Visible:=true;
                   LABEL24.Visible:=true;
              end;
     if DtParam.DataSet.fieldbyname('Par_PFAT').text = '1' then
         BEGIN
               editPFAtual.Visible:=true;
               LABEL5.Visible:=true;
          end;

      if DtParam.DataSet.fieldbyname('Par_PFAN').text = '1' then
         BEGIN
                editPFAnterior.visible:=true;
                LABEL6.visible:=true;
         END;

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

     if DtParam.DataSet.fieldbyname('Par_GRAT').text = '1' then
         BEGIN
               editGratuidade.visible:=true;
               LABEL12.visible:=true;
         end;

     if DtParam.DataSet.fieldbyname('Par_VEAT').text = '1' then
         BEGIN
                editVeAtual.visible:=true;
                LABEL13.visible:=true;
         end;

     if DtParam.DataSet.fieldbyname('Par_VEAN').text = '1' then
         BEGIN
                editVEAnterior.visible:=true;
                LABEL14.visible:=true;
         end;

     if DtParam.DataSet.fieldbyname('Par_ESTGRA').text = '1' then
         BEGIN
               editEgratuito.visible:=true;
               LABEL15.visible:=true;
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

    if DtParam.DataSet.fieldbyname('Par_CAtINI').text = '1' then
         BEGIN
              EditCatracaInicial2.visible:=true;
         end;

    IF DtParam.DataSet.fieldbyname('Par_VIAGEM').TEXT = '1' then
               begin
               EditViagem.visible:=true;
               label26.visible:=true;
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
//Habilita digitação de passageiro integral e com desconto
    if Dtveiculo.DataSet.fieldbyname( )LIQIN.text = 'False' then
         editPagante.Enabled:=false;
    if Dtveiculo.DataSet.fieldbyname( )LIQDE.text = 'False' then
         editDesconto.Enabled:=false;


    if Dtveiculo.DataSet.fieldbyname( )CAINI.text = 'False' then
         EditCatracaInicial2.Enabled:=false;       }


end;
procedure TFormLancamento.Timer1Timer(Sender: TObject);
begin
pai.Genoma.Connected:=true;
end;

procedure TFormLancamento.EditDescontoKeyPress(Sender: TObject;
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

               tarifa:=StrToFloat(DtLinha.DataSet.FieldByName('TLI_TarifaAtual').AsString);
                valor:= (StrToFloat(EditPagante.text) * tarifa);
                 tarifaDesconto:=StrToFloat(DtLinha.DataSet.FieldByName('TLI_TarifaDesconto').AsString);
                  valor:=valor+ (StrToFloat(EditDesconto.text) * tarifaDesconto);
                   DtMov.DataSet.FieldByName('Bcd_Dinheiro').AsString:=floattoStr(valor);
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

procedure TFormLancamento.EditIdosoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    if editIdoso.Text = '' then
        editIdoso.Text:='0';
    Perform(WM_NextDlgCtl,0,0);
//   editpagante.setfocus;
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
panel1.Enabled:=false;
end;

procedure TFormLancamento.editlinhaEnter(Sender: TObject);
begin
editlinha.Color:= $00C1FFC1;
panel1.Enabled:=false;
end;

procedure TFormLancamento.editpfatualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
//     DbText2.Visible:=false;
   editLinha.text:=' ';
   EditLinha.setfocus;
  end;
end;

procedure TFormLancamento.editlinhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
//   DbText5.Visible:=false;
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

procedure TFormLancamento.FormActivate(Sender: TObject);
begin
DataAtual:=DateToStr(FormDadosMov.Dialancamento);
Pulador.Click;
AcertadorAtual:=pai.QrAcertador.FieldByName('ACE_DES').AsString;
EDITDATA.Caption:=DateToStr(FormDadosMov.EditData.date);
end;

end.
