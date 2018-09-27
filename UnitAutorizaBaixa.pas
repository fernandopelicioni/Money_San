unit UnitAutorizaBaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ComCtrls, DBCtrls, ExtCtrls;

type
  TFormAutorizaBaixa = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    EditUsuario: TDBLookupComboBox;
    EditData: TDateTimePicker;
    Edit1: TEdit;
    DtAcertador: TDataSource;
    DtSIstema: TDataSource;
    btok: TBitBtn;
    btcancel: TBitBtn;
    DtMotDebito: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure btcancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAutorizaBaixa: TFormAutorizaBaixa;

implementation

uses UnPai, UnitBaixaDebitos;

{$R *.dfm}

procedure TFormAutorizaBaixa.btcancelClick(Sender: TObject);
begin
close;
end;

procedure TFormAutorizaBaixa.btokClick(Sender: TObject);
begin
     With Pai.QrTemp Do
         Begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from tb_MonAce');
               Sql.Add('Where Ace_Cod = ' + QuotedStr(EditUsuario.KeyValue));
               Sql.Add('And Ace_senha = ' + QuotedStr(Edit1.Text));
               open;
               if not eof then
                    Begin
                          if MessageDlg('Com esta operação, voce ira baixar o débito do colaborador marcado, confirma este procedimento?', mtConfirmation, [mbYes, mbNo], 0) = MrYes then
                               begin
                                      Pai.QrDebitos.Edit;
                                      Pai.QrDebitos.FieldByName('Mdf_Status').AsString:='F';
                                      Pai.QrDebitos.FieldByName('Mdf_DtRec').AsString:=DateToStr(EditData.Date);
                                      Pai.QrDebitos.FieldByName('Mdf_Usuario').AsString:=DtAcertador.DataSet.FieldByName('Ace_cod').AsString;
                                      Pai.QrDebitos.FieldByName('Mdf_MotBaixa').AsString:=DtMotDebito.DataSet.FieldByName('Tbd_cod').AsString;
                                      Pai.QrDebitos.Post;
                                      Pai.QrDebitos.Close;
                               end;
                    End
                    Else
                    MessageBox(0, 'Usuário não autorizado ou dados incorretos, Nenhum registro foi alterado!', 'Acesso Negado', MB_ICONSTOP or MB_OK)

         End;

         Close;
end;

procedure TFormAutorizaBaixa.FormActivate(Sender: TObject);
begin
EditData.Date:=now;
DtAcertador.DataSet.Open;
DtMotDebito.DataSet.Open;
end;

procedure TFormAutorizaBaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
