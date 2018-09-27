unit UnitAbreCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBCtrls, pngimage, ADODB,
  Grids, DBGrids;

type
  TFormAbreCaixa = class(TForm)
    Panel1: TPanel;
    EditData: TDateTimePicker;
    Label1: TLabel;
    BtOk: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    EditUsuario: TDBLookupComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    DtAcertador: TDataSource;
    Image1: TImage;
    DtCaixa: TDataSource;
    QrAcertador: TADOQuery;
    QrCaixa: TADOQuery;
    procedure EditUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BtOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbreCaixa: TFormAbreCaixa;
    Nome,usuario:string;
    Dialancamento:tdate;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormAbreCaixa.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TFormAbreCaixa.BtOkClick(Sender: TObject);
begin
   If EditUsuario.Text = '' then EditUsuario.SetFocus;
    usuario:=EditUsuario.Keyvalue;
     dialancamento:=(editdata.date);
      nome:=DtAcertador.DataSet.fieldbyname('ACE_Des').AsString;
       if Edit1.Text = DtAcertador.DataSet.FieldByName('Ace_Senha').AsString then
        begin
             With QrCaixa do
                 begin
                       Close;
                        Sql.Clear;
                         Sql.Add('Select * from Tb_MonCaixa');
                          Sql.Add('Where Mcx_Data = ' + QuotedStr(DateToStr(Dialancamento)));
                           Sql.Add('And Mcx_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                            Open;
                             if not eof then
                                  begin
                                       if (QrCaixa.FieldByName('Mcx_Status').AsString = 'A') or (QrCaixa.FieldByName('Mcx_Status').AsString = 'R') then
                                              begin
                                                     if MessageDlg('Caixa Aberto,'+#13+'Deseja Encerra-lo? ',MtConfirmation,[mbyes,mbno],0) = mryes then
                                                           Begin
                                                                 Edit;
                                                                  DtCaixa.DataSet.FieldByName('Mcx_Status').AsString:='F';
                                                                   DtCaixa.DataSet.FieldByName('MCX_DATAHORAfec').AsString:=dateTimeToStr(Now);
                                                                    Post;
                                                                     ShowMessage('Caixa Fechado com Sucesso !');
                                                           End;
                                                       EditUsuario.KeyValue:=null;
                                                        EditData.SetFocus;
                                              end
                                         else
                                              begin
                                                     if MessageDlg('Você está Prestes a RE-Abrir o caixa DE : '+#13+DateToStr(Dialancamento) + 'Tem certeza desta açao?',MtConfirmation,[mbyes,mbno],0) = mryes then
                                                           Begin
                                                                 Edit;
                                                                  DtCaixa.DataSet.FieldByName('Mcx_Status').AsString:='R';
                                                                   DtCaixa.DataSet.FieldByName('MCX_DATAHORAABE').AsString:=dateTimeToStr(Now);
                                                                    Post;
                                                                     ShowMessage('Pronto !'+#13+'Movimento de caixa já esta RE-aberto');
                                                           End;
                                              Close;
                                              end;
                                  end
                                  else
                                  begin
                                       if MessageDlg('Deseja Abrir o caixa para o dia'+#13+DateToStr(DiaLancamento)+ '?',MtConfirmation,[mbyes,mbno],0) = mryes then
                                           Begin
                                              DtCaixa.DataSet.Open;
                                               DtCaixa.DataSet.Insert;
                                                DtCaixa.DataSet.FieldByName('Mcx_DatahoraAbe').AsString:=dateTimeToStr(Now);
                                                 DtCaixa.DataSet.FieldByName('Mcx_Coligada').AsString:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
                                                  DtCaixa.DataSet.FieldByName('Mcx_Ace').AsString:=EditUsuario.KeyValue;
                                                   DtCaixa.DataSet.FieldByName('Mcx_Data').AsString:=DateToStr(DiaLancamento);
                                                    DtCaixa.DataSet.FieldByName('Mcx_Status').AsString:='A';
                                                     DtCaixa.DataSet.Post;
                                                      ShowMessage('Pronto !'+#13+'Movimento de CAIXA já esta aberto');
                                                      Close;
                                           End
                                           else
                                           begin
                                                 EditUsuario.KeyValue:=null;
                                                  Edit1.Text:='';
                                           end;
                                  end;
                end;
      end
      else
      begin
            MessageBox(Handle,'Senha não confere','Erro de Senha',mb_IconInformation+mb_ok);
            Close;

      end;
Edit1.Text:='';
end;

procedure TFormAbreCaixa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
           key:=#0;
           btok.SetFocus;
    end;

end;

procedure TFormAbreCaixa.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
         key:=#0;
          EditUsuario.SetFocus;
    end;
end;

procedure TFormAbreCaixa.EditUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
         Key:=#0;
          If EditUsuario.keyvalue = null then
               begin
                    editUsuario.Setfocus;
               end
               else
               begin
                    Edit1.Enabled:=true;
                     Edit1.SetFocus;
               end;
   end;
end;

procedure TFormAbreCaixa.FormActivate(Sender: TObject);
begin
  DtCaixa.DataSet.Cancel;
   DtCaixa.DataSet.Close;
    EditData.Date:=now;
     DtAcertador.DataSet.Open;
end;

procedure TFormAbreCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:=cafree;
end;

end.
