unit UnitCadastroProfissional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, XPMan, ActnMan, ActnColorMaps, StdCtrls,
  DB, Grids, DBGrids, DBCtrls, Mask, CustomizeDlg, ExtCtrls, pngimage, ImgList,
  ADODB, jpeg;

type
  TFormCadastroProfissional = class(TForm)
    XPManifest1: TXPManifest;
    DtCadastro: TDataSource;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DtCadastroFuncoes: TDataSource;
    DtCadastroDepto: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    TabSheet3: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    DBText3: TDBText;
    DBText4: TDBText;
    DtColigada: TDataSource;
    ImageList1: TImageList;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DtCarreira: TDataSource;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    TbCarreira: TADOTable;
    SpeedButton2: TSpeedButton;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    TbCarreiraCARREIRA_COD: TAutoIncField;
    TbCarreiraCARREIRA_CHAPA: TSmallintField;
    TbCarreiraCARREIRA_FUNCAO: TWordField;
    TbCarreiraCARREIRA_DATAINICIO: TDateTimeField;
    TbCarreiraCARREIRA_DATAFIM: TDateTimeField;
    TbCarreiraCARREIRA_HIS: TWideStringField;
    QrProTemp: TADOQuery;
    Image1: TImage;
    Image2: TImage;
    TabSheet4: TTabSheet;
    TbExperiencia: TADOTable;
    DtExperiencia: TDataSource;
    DBMemo2: TDBMemo;
    DtQrExperiencia: TDataSource;
    DBGrid3: TDBGrid;
    Label24: TLabel;
    DBMemo3: TDBMemo;
    QrCarreira: TADOQuery;
    DtQrCarreira: TDataSource;
    BitBtn6: TBitBtn;
    TbExperienciaTEX_COD: TSmallintField;
    TbExperienciaTEX_CHAPA: TSmallintField;
    TbExperienciaTEX_DATA: TDateTimeField;
    TbExperienciaTEX_HISPRIEXP: TWideStringField;
    TbExperienciaTEX_VENPRIEXP: TDateTimeField;
    TbExperienciaTEX_VENSEGEXP: TDateTimeField;
    TbExperienciaTEX_HISSEGEXP: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProfissional: TFormCadastroProfissional;

implementation

uses UnitMae, UnitLancaCarreira, UnitLancaDemissao, UnitBuscaPro;

{$R *.dfm}

procedure TFormCadastroProfissional.BitBtn1Click(Sender: TObject);
begin
//DtExperiencia.DataSet:=mae.QrExperiencia;
DTCadastro.Dataset.Append;
DTCadastro.Dataset.FieldByName('COD_Coligada').AsString:=DtColigada.DataSet.FieldByName('COD_COLIGADA').AsString;
DTCadastro.Dataset.FieldByName('Ativo_Pro').AsString:='A';
DTCadastro.Dataset.FieldByName('Pro_sexo').AsString:='M';
DTCadastro.Dataset.FieldByName('Tipo_Pro').AsString:='N';
   TabSheet1.Enabled:=true;
   TabSheet2.Enabled:=true;
DbEdit1.Enabled:=true;
DbEdit1.SetFocus;

end;

procedure TFormCadastroProfissional.BitBtn2Click(Sender: TObject);
begin
DTCadastro.Dataset.Cancel;
DtCarreira.DataSet.Cancel;
      DtQrExperiencia.DataSet.Cancel;
DtExperiencia.DataSet.Cancel;
end;

procedure TFormCadastroProfissional.BitBtn3Click(Sender: TObject);
var
proatual,data,PriExp,SegExp:string;
begin
if DtCadastro.DataSet.State = DsInsert then
   begin
   QrProTemp.Close;
    QrProTemp.Sql.Clear;
     QrProTemp.SQL.Add('Select * From Tb_Profissionais');
      QrProTemp.SQL.Add('Where Cha_Pro = ' + quotedStr(DbEdit1.Text) + ' and cod_coligada = ' + Mae.TbCadastroColigada.FieldByName('Cod_Coligada').AsString);
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
                   DtCarreira.DataSet.FieldByName('carreira_His')        .AsString:='Primeira função desta Admissão';
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
     {              DtCarreira.DataSet.EDIT;
                   DtCarreira.DataSet.FieldByName('carreira_Chapa')      .AsString:=DtCadastro.DataSet.FieldByName('COD_pro').AsString;
                   DtCarreira.DataSet.FieldByName('carreira_DataInicio') .AsString:=DtCadastro.DataSet.FieldByName('dt_admissao').AsString;
                   DtCarreira.DataSet.FieldByName('carreira_Funcao')     .AsString:=DtCadastroFuncoes.DataSet.FieldByName('cod_Funcao').AsString;
                   DtCarreira.DataSet.FieldByName('carreira_His')        .AsString:='Primeira função desta Admissão';
                   DtCarreira.DataSet.POST;     }
                     DTCadastro.Dataset.Post;
                     PageControl1.ActivePageIndex:=0;
                     Bitbtn3.Enabled:=False;
                     TabSheet1.Enabled:=False;
                     TabSheet2.Enabled:=False;
              End
              else
              begin
                     MessageBox(handle,'Ja existe um cadastro com esse Codigo nesta empresa, altere antes de prosseguir !','Atenção',Mb_IconInformation+Mb_Ok);
                     DbEdit1.SetFocus;
              end;

end;
DtExperiencia.DataSet.Close;
DtExperiencia.DataSet.Open;
DtCarreira.DataSet.Close;
DtCarreira.DataSet.Open;

End;

procedure TFormCadastroProfissional.BitBtn4Click(Sender: TObject);
begin
if messageDlg('Deseja realmente apagar o registro selecionado ?                        ' ,mtConfirmation,[mbno, mbyes],0) = mryes then
   begin
   DTCadastro.Dataset.delete;
   end;

end;

procedure TFormCadastroProfissional.BitBtn5Click(Sender: TObject);
begin
DTCadastro.Dataset.Cancel;
Close;
end;

procedure TFormCadastroProfissional.BitBtn6Click(Sender: TObject);
begin
Application.CreateForm(TFormBuscaPro,FormBuscaPro);
FormBuscaPro.ShowModal;
end;

procedure TFormCadastroProfissional.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit12.SetFocus;
    END;


end;

procedure TFormCadastroProfissional.DBEdit11KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit14.SetFocus;
    END;


end;

procedure TFormCadastroProfissional.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    PageControl1.ActivePage:=TabSheet2;
    DbEdit5.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit13KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit18.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit4.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit15KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit10.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit16KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit17.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit7.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit16.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit3.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit1Exit(Sender: TObject);
begin
if DtCadastro.DataSet.State = DsEdit then
   Begin
   ShowMessage('A Chapa ou Matricula não pode ser alterada');
   DtCadastro.DataSet.cancel;
   PageControl1.Enabled:=false;

   End;

end;

procedure TFormCadastroProfissional.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit2.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbLookupComboBox1.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit11.SetFocus;
    END;


end;

procedure TFormCadastroProfissional.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit15.SetFocus;
    END;


end;

procedure TFormCadastroProfissional.DBEdit5Enter(Sender: TObject);
begin
bitbtn3.Enabled:=True;
end;

procedure TFormCadastroProfissional.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit6.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit13.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit8.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit8KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit9.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbMemo1.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBGrid1DblClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
DtCadastro.DataSet.Edit;
   TabSheet1.Enabled:=True;
   TabSheet2.Enabled:=True;
With QrCarreira do
Begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from tb_carreira A, Tb_Funcao B');
  Sql.Add('Where A.Carreira_Funcao = B.Cod_Funcao');
  Sql.Add('and A.Carreira_chapa = ' + DtCadastro.DataSet.FieldByName('Cod_Pro').AsString);
  Open;
End;
DbEdit1.Enabled:=false;
DbEdit2.SetFocus;
end;

procedure TFormCadastroProfissional.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.index = 0 then
   begin
   DbGrid1.Canvas.FillRect(Rect);
   // Desenha o Quadrado
   //Image1.Picture.BitBap;
   ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,0);
   // Desenha o check sobre o quadrado quando ativo = ‘S’
   if DTCadastro.DataSet.FieldByName('TIPO_PRO').AsString = 'D' then
    ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,1);
    end;

end;


procedure TFormCadastroProfissional.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbLookupComboBox2.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
    BEGIN
    key:=#0;
    DbEdit19.SetFocus;
    END;

end;

procedure TFormCadastroProfissional.FormActivate(Sender: TObject);
begin
With DtCadastro.DataSet do
    begin
    Close;
    filter:='COD_COLIGADA = ' + QUOTEDSTR(DTCOLIGADA.DataSet.FieldByName('COD_COLIGADA').AsString);
    FILTERED:=TRUE;
    OPEN;
    end;
//DTCadastro        .Dataset.open;
DTCadastroFuncoes .Dataset.open;
DTCadastroDepto   .Dataset.open;
DtCarreira        .DataSet.Open;
DTColigada        .Dataset.open;
DtQrCarreira      .DataSet.Open;
DtExperiencia     .DataSet.Open;
DtQrExperiencia   .DataSet.Open;
End;

procedure TFormCadastroProfissional.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DTCadastro.Dataset.Close;
DtQrCarreira      .DataSet.Close;
DTCadastroFuncoes.Dataset.Close;
DTCadastroDepto.Dataset.Close;
DtCarreira        .DataSet.Close;
DtQrExperiencia   .DataSet.Close;
DtExperiencia     .DataSet.Close;
Action:=cafree;
end;

procedure TFormCadastroProfissional.SpeedButton1Click(Sender: TObject);
begin
//DtCarreira.DataSet.Edit;
DtCadastro.DataSet.Edit;
Application.CreateForm(TFormLancaCarreira, FormLancaCarreira);
FormlancaCarreira.DtCarreira.DataSet.Open;
FormlancaCarreira.DtCarreira.DataSet.Insert;
FormLancaCarreira.ShowModal;

end;

procedure TFormCadastroProfissional.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TFormLancaDemissao, FormLancaDemissao);
FormLancaDemissao.showModal;
end;

procedure TFormCadastroProfissional.TabSheet3Show(Sender: TObject);
begin
      With QrCarreira do
          Begin
                Close;
                Sql.Clear;
                Sql.Add('Select * from tb_carreira A, Tb_Funcao B');
                Sql.Add('Where A.Carreira_Funcao = B.Cod_Funcao');
                Sql.Add('and A.Carreira_chapa = ' + DtCadastro.DataSet.FieldByName('Cod_Pro').AsString);
                Open;
                if eof then
                     begin
                           Insert;
                           QrCarreira.FieldByName('Carreira_Chapa').AsString:=DtCadastro.DataSet.FieldByName('cod_pro').AsString;
                           QrCarreira.FieldByName('Carreira_funcao').AsString:=DtCadastro.DataSet.FieldByName('fun_pro').AsString;
                           QrCarreira.FieldByName('Carreira_datainicio').AsString:=DtCadastro.DataSet.FieldByName('dt_admissao').AsString;
                           QrCarreira.FieldByName('Carreira_His').AsString:='Primeira função na empresa';
                           QrCarreira.Post;
                     end;
End;
end;

end.
