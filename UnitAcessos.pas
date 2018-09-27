unit UnitAcessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, DBCtrls, Buttons, Grids,
  DBGrids, Mask;

type
  TFORMACESS = class(TForm)
    DtAcess: TDataSource;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    GroupBox1: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet7: TTabSheet;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    DBCheckBox109: TDBCheckBox;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBCheckBox136: TDBCheckBox;
    Login: TDBEdit;
    Senha2: TEdit;
    DBCheckBox137: TDBCheckBox;
    QrUsuarios: TADOQuery;
    DtUsuarios: TDataSource;
    DBText1: TDBText;
    Senha1: TEdit;
    DBCheckBox29: TDBCheckBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DtColigada: TDataSource;
    Label5: TLabel;
    DBText2: TDBText;
    Label6: TLabel;
    DBText3: TDBText;
    QrAcess: TADOQuery;
    TabSheet8: TTabSheet;
    DBCheckBox30: TDBCheckBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure TabSheet8Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMACESS: TFORMACESS;

implementation

uses UnPai;


{$R *.dfm}

procedure TFORMACESS.BitBtn1Click(Sender: TObject);
begin
//        if QrAcess.State = DsEdit then
//                  QrAcess.First;
//        DtAcess.DataSet.Close;
        PageControl2.ActivePageIndex:=1;
end;

procedure TFORMACESS.BitBtn2Click(Sender: TObject);
begin
QrAcess.Cancel;
Close;
end;

procedure TFORMACESS.BitBtn3Click(Sender: TObject);
begin

         DtUsuarios.DataSet.Open;
         DtUsuarios.DataSet.Insert;
         Login.SetFocus;


end;

procedure TFORMACESS.BitBtn4Click(Sender: TObject);
begin
         if (Senha1.text = Senha2.Text) and (Senha1.Text <> '') and (Login.Text <> '') then
              Begin
                     DtUsuarios.DataSet.FieldByName('Usu_login').AsString:=Login.Text;
                     DtUsuarios.DataSet.FieldByName('Usu_Senha').AsString:=Senha1.Text;
                     DtUsuarios.DataSet.FieldByName('Usu_Nivel').AsString:='10';
//                     DtAcess.DataSet.FieldByName('Tre_Usu').AsString:=Login.Text;
                     Try
                     DtUsuarios.DataSet.Post;
                     PageControl2.ActivePageIndex:=0;
                     Except
                     MessageBox(0, 'Nome de Usu�rio cadastro, tente novamente!', 'Usu�rio ja cadastrado', MB_ICONERROR or MB_OK);
                     DtUsuarios.DataSet.Cancel;
                     End;

              End;
end;

procedure TFORMACESS.BitBtn5Click(Sender: TObject);
begin
DtUsuarios.DataSet.Cancel;
end;

procedure TFORMACESS.DBGrid1DblClick(Sender: TObject);
begin
      DtUsuarios.DataSet.Edit;
      Login.SetFocus;
end;

procedure TFORMACESS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFORMACESS.FormShow(Sender: TObject);
begin
          PageControl2.ActivePageIndex:=1;
          DtUsuarios.DataSet.Open;
       //   DtAcess.DataSet.Open;
end;

procedure TFORMACESS.TabSheet6Show(Sender: TObject);
begin
       With QrAcess do
             begin
                  Parameters.ParamByName('usuario').Value:=QrUsuarios.FieldByName('usu_codigo').AsString;
                  Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                  Open;
                  if Eof then
                         begin
                             Insert;
                             FieldByName('Tre_Usu').AsString:=QrUsuarios.FieldByName('Usu_Codigo').AsString;
                             FieldByName('Tre_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                             Post;
                             Open;
           end
           else
           begin
                 Edit;
           end;

             end;

end;

procedure TFORMACESS.TabSheet7Show(Sender: TObject);
begin
          QrAcess.Close;
end;

procedure TFORMACESS.TabSheet8Exit(Sender: TObject);
begin
        Try
            DtAcess.DataSet.Post;
        Except
            ShowMessage('Erro desconhecido!');
            DtAcess.DataSet.Cancel;

        End;
end;

end.
