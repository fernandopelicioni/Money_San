unit UnitCadastraPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, pngimage,
  ExtCtrls, ComCtrls, ADODB;

type
  TFormCadastraPro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit19: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    TabSheet2: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Image2: TImage;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    TabSheet3: TTabSheet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid2: TDBGrid;
    TabSheet4: TTabSheet;
    Label24: TLabel;
    DBMemo2: TDBMemo;
    DBGrid3: TDBGrid;
    DBMemo3: TDBMemo;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    TbExperiencia: TADOTable;
    TbExperienciaTEX_COD: TSmallintField;
    TbExperienciaTEX_CHAPA: TSmallintField;
    TbExperienciaTEX_DATA: TDateTimeField;
    TbExperienciaTEX_HISPRIEXP: TWideStringField;
    TbExperienciaTEX_VENPRIEXP: TDateTimeField;
    TbExperienciaTEX_VENSEGEXP: TDateTimeField;
    TbExperienciaTEX_HISSEGEXP: TWideStringField;
    DtExperiencia: TDataSource;
    DtCadastro: TDataSource;
    DtCadastroFuncoes: TDataSource;
    DtCadastroDepto: TDataSource;
    DtColigada: TDataSource;
    TbCarreira: TADOTable;
    TbCarreiraCARREIRA_COD: TAutoIncField;
    TbCarreiraCARREIRA_CHAPA: TSmallintField;
    TbCarreiraCARREIRA_FUNCAO: TWordField;
    TbCarreiraCARREIRA_DATAINICIO: TDateTimeField;
    TbCarreiraCARREIRA_DATAFIM: TDateTimeField;
    TbCarreiraCARREIRA_HIS: TWideStringField;
    DtCarreira: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Label21: TLabel;
    QrFuncoes: TADOQuery;
    QrExperiencia: TADOQuery;
    QrPro: TADOQuery;
    QrProCOD_PRO: TSmallintField;
    QrProNOM_PRO: TWideStringField;
    QrProRG_PRO: TWideStringField;
    QrProCPF_PRO: TWideStringField;
    QrProFUN_PRO: TWordField;
    QrProDEP_PRO: TWordField;
    QrProCOD_COLIGADA: TWordField;
    QrProDT_ADMISSAO: TDateTimeField;
    QrProDT_DEMISSAO: TDateTimeField;
    QrProENDERECO_PRO: TWideStringField;
    QrProCIDADE_PRO: TWideStringField;
    QrProTEL_PRO: TWideStringField;
    QrProCNH_VAL_PRO: TDateTimeField;
    QrProCNH_NUM_PRO: TWideStringField;
    QrProCNH_CAT_PRO: TWideStringField;
    QrProTIPO_PRO: TWideStringField;
    QrProATIVO_PRO: TWideStringField;
    QrProHIS_PRO: TWideStringField;
    QrProCEL_PRO: TWideStringField;
    QrProANI_PRO: TDateTimeField;
    QrProUF_PRO: TWideStringField;
    QrProPRO_CTPS_NUM: TWideStringField;
    QrProPRO_CTPS_SERIE: TWideStringField;
    QrProPRO_PIS: TWideStringField;
    QrProPRO_SEXO: TWideStringField;
    QrProPRO_CEP: TWideStringField;
    QrProCHA_PRO: TWideStringField;
    QrProPRO_EXPSTA: TWideStringField;
    QrProPRO_INTMON: TWideStringField;
    QrDepto: TADOQuery;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraPro: TFormCadastraPro;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormCadastraPro.BitBtn1Click(Sender: TObject);
begin
DtCadastro.DataSet.Edit;
MessageBox(0, 'Ol�,'+#13+#10+'Por medidas de seguran�a, voc� pode apenas alterar a fun��o e o Departamento dos colaboradores...', 'Fique atento!', MB_ICONWARNING or MB_OK);
BitBtn3.Enabled:=true;


// Comando anterior quando o botao atendia comando de Insert
//DtExperiencia.DataSet:=mae.QrExperiencia;
//DTCadastro.Dataset.Append;
//DTCadastro.Dataset.FieldByName('COD_Coligada').AsString:=DtColigada.DataSet.FieldByName('COD_COLIGADA').AsString;
//DTCadastro.Dataset.FieldByName('Ativo_Pro').AsString:='A';
//DTCadastro.Dataset.FieldByName('Pro_sexo').AsString:='M';
//DTCadastro.Dataset.FieldByName('Tipo_Pro').AsString:='N';
//   TabSheet1.Enabled:=true;
//   TabSheet2.Enabled:=true;
//DbEdit1.Enabled:=true;
//DbEdit1.SetFocus;

end;

procedure TFormCadastraPro.BitBtn3Click(Sender: TObject);
var
proatual,data,PriExp,SegExp:string;
begin
if DtCadastro.DataSet.State = DsEDIT then
      BEGIN
            DtCadastro.DataSet.Post;
            MessageBox(0, 'Aceitei sua altera��o, pode continuar...', 'Tudo certo!',  MB_OK);

      END
      ELSE
      DtCadastro.DataSet.CANCEL;
BitBtn3.Enabled:=false;


 {
if DtCadastro.DataSet.State = DsInsert then
   begin
   QrProTemp.Close;
    QrProTemp.Sql.Clear;
     QrProTemp.SQL.Add('Select * From Tb_Profissionais');
      QrProTemp.SQL.Add('Where Cha_Pro = ' + quotedStr(DbEdit1.Text) + ' and cod_coligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
       QrProTemp.Open;
       if QrProTemp.Eof Then
         begin
            If (DtCadastro.DataSet.State = DsInsert) then
              Begin
                   TabSheet1.Enabled:=False;
                   TabSheet2.Enabled:=False;
                   PageControl1.ActivePageIndex:=0;
                   Bitbtn3.Enabled:=False;
                   data:=Dbedit10.Text;
           //      ProAtual:=DtCadastro.DataSet.FieldByName('cod_pro').AsString;
                    DTCadastro.Dataset.Post;
                   DtCarreira.DataSet.Insert;
                   DtCarreira.DataSet.FieldByName('carreira_Chapa')      .AsString:=DtCadastro.DataSet.FieldByName('COD_pro').AsString;
                   DtCarreira.DataSet.FieldByName('carreira_DataInicio') .AsString:=DtCadastro.DataSet.FieldByName('dt_admissao').AsString;
                   DtCarreira.DataSet.FieldByName('carreira_Funcao')     .AsString:=DtCadastroFuncoes.DataSet.FieldByName('cod_Funcao').AsString;
                   DtCarreira.DataSet.FieldByName('carreira_His')        .AsString:='Primeira fun��o desta Admiss�o';
                   DtCarreira.DataSet.POST;
                   DtQrExperiencia.DataSet.Insert;
                   DtQrExperiencia.DataSet.FieldByName('TEx_Chapa').AsString:=DtCadastro.DataSet.FieldByName('cod_pro').AsString;;
                   DtQrExperiencia.DataSet.FieldByName('TEx_Data').AsString:=DtCadastro.DataSet.FieldByName('Dt_Admissao').AsString;
                   DtQrExperiencia.DataSet.FieldByName('TEx_VenPriExp').AsString:=DateToStr(StrToDate(Data) + 44);
                   DtQrExperiencia.DataSet.FieldByName('TEx_VenSegExp').AsString:=DateToStr(StrToDate(Data) + 89);
                   DtQrExperiencia.DataSet.Post;
              End;
          end;
     end
     Else
     begin
         If (DtCadastro.DataSet.State = DsEdit) then
              Begin
  //   {              DtCarreira.DataSet.EDIT;
  //                 DtCarreira.DataSet.FieldByName('carreira_Chapa')      .AsString:=DtCadastro.DataSet.FieldByName('COD_pro').AsString;
  //                 DtCarreira.DataSet.FieldByName('carreira_DataInicio') .AsString:=DtCadastro.DataSet.FieldByName('dt_admissao').AsString;
  //                 DtCarreira.DataSet.FieldByName('carreira_Funcao')     .AsString:=DtCadastroFuncoes.DataSet.FieldByName('cod_Funcao').AsString;
  //                 DtCarreira.DataSet.FieldByName('carreira_His')        .AsString:='Primeira fun��o desta Admiss�o';
  //                 DtCarreira.DataSet.POST;
                     DTCadastro.Dataset.Post;
                     PageControl1.ActivePageIndex:=0;
                     Bitbtn3.Enabled:=False;
                     TabSheet1.Enabled:=False;
                     TabSheet2.Enabled:=False;
              End
              else
              begin
                     MessageBox(handle,'Ja existe um cadastro com esse Codigo nesta empresa, altere antes de prosseguir !','Aten��o',Mb_IconInformation+Mb_Ok);
                     DbEdit1.SetFocus;
              end;

end;
DtExperiencia.DataSet.Close;
DtExperiencia.DataSet.Open;
DtCarreira.DataSet.Close;
DtCarreira.DataSet.Open;
  }
end;

procedure TFormCadastraPro.BitBtn4Click(Sender: TObject);
begin
if messageDlg('Deseja realmente apagar o registro selecionado ?                        ' ,mtConfirmation,[mbno, mbyes],0) = mryes then
   begin
   DTCadastro.Dataset.delete;
   end;

end;

procedure TFormCadastraPro.BitBtn5Click(Sender: TObject);
begin
DTCadastro.Dataset.Cancel;
Close;

end;

procedure TFormCadastraPro.DBGrid1DblClick(Sender: TObject);
begin
DtCadastro.DataSet.Edit;
MessageBox(0, 'Ol�,'+#13+#10+'Por medidas de seguran�a, voc� pode apenas alterar a fun��o e o Departamento dos colaboradores...', 'Fique atento!', MB_ICONWARNING or MB_OK);
BitBtn3.Enabled:=true;

end;

procedure TFormCadastraPro.FormActivate(Sender: TObject);
begin

With QrPro do
     begin
            Close;
            Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
            open;

     end;

    //DTCadastro        .Dataset.open;
DTCadastroFuncoes .Dataset.open;
DTCadastroDepto   .Dataset.open;
DtCarreira        .DataSet.Open;
//DTColigada        .Dataset.open;
DtExperiencia     .DataSet.Open;

end;

end.
