unit UnitCancelaBcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DB, DBCtrls;

type
  TFormCancelaBcd = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditBcd: TEdit;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    EditData: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    DtMotCan: TDataSource;
    EditMotivo: TDBLookupComboBox;
    DtBcd: TDataSource;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure EditBcdKeyPress(Sender: TObject; var Key: Char);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure EditMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCancelaBcd: TFormCancelaBcd;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormCancelaBcd.BitBtn1Click(Sender: TObject);
begin
if DtBcd.DataSet.State = DsEdit then
    Begin
           if MessageDlg('Atenção'+#13+'Esta Operação não poderá ser Desfeita, Cancele uma Nota ou Boletim apenas quando tiver certeza !'+#13+#13+'Posso Continuar ?',MtConfirmation,[mbyes,Mbno],0) = Mryes  then
                 begin
                       DtBcd.DataSet.FieldByName('Tbcd_Data').AsString:=EditData.Text;
                        DtBcd.DataSet.Post;
                 end;
    End;
    EditMotivo.KeyValue:=null;
    EditBcd.Text:='';
    EditData.Text:='';
    EditBcd.SetFocus;

end;

procedure TFormCancelaBcd.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormCancelaBcd.EditBcdKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
     begin
           key:=#0;
           With pai.QrBcd do
                  begin
                       Close;
                        Sql.Clear;
                         Sql.Add('Select * from tb_monbcd where Tbcd_Status = ' + QuotedStr('A'));
                           Sql.Add('And Tbcd_Cod = ' + QuotedStr(EditBcd.text));
                            Open;
                             if not eof then
                                     begin
                                           Edit;
                                            EditData.Enabled:=true;
                                             EditData.SetFocus;
                                     end
                                     Else
                                     Begin
                                            MessageBox(Handle,'Boletim não Gerado ou Ja foi Acertado, Selecione Outro','Atenção',Mb_IconStop+Mb_ok);
                                             EditBcd.text:='';
                                              EditBcd.SetFocus;
                                     End;
                  end;
     end;
end;

procedure TFormCancelaBcd.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
       begin
              EditMotivo.Enabled:=true;
               EditMotivo.SetFocus;
       end;
end;

procedure TFormCancelaBcd.EditMotivoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
           key:=#0;
            BitBtn1.SetFocus;
     end;
end;

procedure TFormCancelaBcd.FormActivate(Sender: TObject);
begin
DtMotCan.DataSet.Open;
end;

procedure TFormCancelaBcd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtMotCan.DataSet.Close;
DtBcd.DataSet.Close;
Action:=cafree;
end;

end.
