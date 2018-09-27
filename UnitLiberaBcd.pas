unit UnitLiberaBcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, ADODB, Mask;

type
  TFormLiberaBcd = class(TForm)
    DtBcd: TDataSource;
    BitBtn2: TBitBtn;
    DtPro: TDataSource;
    DtLinha: TDataSource;
    QrPro: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    EditBcd: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    QrTemp: TADOQuery;
    DBText4: TDBText;
    DtTemp: TDataSource;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    EditLoteBcd: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    EditData: TMaskEdit;
    Label7: TLabel;
    BitBtn5: TBitBtn;
    QrBcd: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLiberaBcd: TFormLiberaBcd;

implementation

uses UnitIniciaSistema, UnPai;

{$R *.dfm}

procedure TFormLiberaBcd.BitBtn1Click(Sender: TObject);
begin
if (DtBcd.DataSet.State = DsEdit) or (DtBcd.DataSet.State = Dsinsert) then
     begin
           DtBcd.DataSet.FieldByName('Tbcd_Cod').AsString:=EditBcd.Text;
           DtBcd.DataSet.FieldByName('Tbcd_Func').AsString:=Edit1.Text;
           DtBcd.DataSet.FieldByName('Tbcd_Linha').AsString:=Edit2.Text;
           DtBcd.DataSet.FieldByName('Tbcd_DtSis').AsString:=DateTimeToStr(now);
           DtBcd.DataSet.FieldByName('Tbcd_Tipo').AsString:='I';
           DtBcd.DataSet.FieldByName('Tbcd_Data').AsString:=DateTostr(DateTimePicker1.Date);
           DtBcd.DataSet.FieldByName('Tbcd_Coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
           DtBcd.DataSet.post;
           // apresenta��o Sanremo
//           FormGeraRelatorios.Projeto1.ExecuteReport('RvBSE');
//           FormGeraRelatorios.Projeto1.close;


     end;
editbcd.Text:='';
Edit1.Text:='';
Edit2.Text:='';
edit1.Enabled:=false;
edit2.Enabled:=false;
DateTimePicker1.Enabled:=false;
editbcd.SetFocus;

end;

procedure TFormLiberaBcd.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormLiberaBcd.BitBtn3Click(Sender: TObject);
Var
x,UltimoBcd:integer;
begin
     With QrBcd do
         begin
               X:=0;
                Close;
                 Sql.Clear;
                  Sql.Add('Select * from tb_MonBcd where Tbcd_Coligada = '+ QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                   Open;
                     UltimoBcd := (Qrtemp.Fields[0].Value);
                     X:=1;
                      while x <= StrToInt(EditloteBcd.Text) do
                             begin
                                  Insert;
                                   UltimoBcd:=UltimoBcd+1;
                                    DtBcd.DataSet.FieldByName('TBCD_COD').AsInteger:=UltimoBcd;
                                     DtBcd.DataSet.FieldByName('Tbcd_Coligada').AsString:= Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                                      DtBcd.DataSet.FieldByName('Tbcd_Data').AsString:= EditData.text;
                                       DtBcd.DataSet.FieldByName('Tbcd_Status').AsString:='A';
                                        DtBcd.DataSet.FieldByName('Tbcd_Tipo').AsString:='L';
                                         DtBcd.DataSet.Post;
                                          X:=X+1;
                              end;
                     ShowMessage(IntToStr(X)+' Foram Gerados com sucesso e ja podem ser usados na presta��o de contas...');

         end;
GroupBox1.Enabled:=false;
end;

procedure TFormLiberaBcd.BitBtn4Click(Sender: TObject);
begin
        GroupBox1.Enabled:=true;
         EditLoteBcd.SetFocus;
end;

procedure TFormLiberaBcd.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
       begin
              key:=#0;
               Edit1.Enabled:=true;
                Edit1.SetFocus;
       end;
end;

procedure TFormLiberaBcd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
          key:=#0;
          with QrPro do
              begin
                    Close;
                     Sql.Clear;
                      Sql.Add('select Nom_pro, Cha_Pro, cod_pro from tb_profissionais');
                       Sql.Add('where Cod_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                        Sql.Add('and Ativo_pro = ' + QuotedStr('A'));
                         Sql.Add('and Cha_Pro = ' + QuotedStr(Edit1.Text));
                          Open;
                    if not eof then
                         begin
                              Edit2.Enabled:=true;
                               Edit2.SetFocus;
                         end
                         else
                         begin
                               ShowMessage('Colaborador n�o existe ou ja demitido');
                                Edit1.SetFocus;
                         end;
              end;
     end;

end;

procedure TFormLiberaBcd.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
          key:=#0;
              with pai.QrLinhas Do
                   Begin
                          Close;
                          Sql.Clear;
                          Sql.Add('Select * from Tb_MonLin');
                          Sql.Add('wHERE Lin_Cod = ' + QuotedStr(Edit2.Text));
                          Open;
                          if Not Eof then
                                 begin
                                      BitBtn5.enabled:=true;
                                      BitBtn5.SetFocus;
                                 end;
                   End;

     end;
end;

procedure TFormLiberaBcd.FormActivate(Sender: TObject);
begin

DateTimePicker1.Date:=now;
     With QrTemp do
         begin
                Close;
                 Sql.Clear;
                  Sql.Add('Select max(Tbcd_Cod) from tb_MonBcd where Tbcd_Coligada = '+ QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                   Open;
         end;

end;

procedure TFormLiberaBcd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFormLiberaBcd.SpeedButton1Click(Sender: TObject);
begin
      with QrBcd do
            begin
                  Close;
                  sql.Clear;
                  Sql.Add('Select * from tb_monBcd where TBcd_coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
                  Sql.Add('and TBcd_COd = ' + EditBcd.Text);
                  Open;
                  if eof then
                       begin
                            DtBcd.DataSet.Insert;
                            DateTimePicker1.Enabled:=true;
                            DateTimePicker1.SetFocus;
                       end
                       else
                       begin
                        if DtBcd.DataSet.FieldByName('TBcd_status').AsString <> 'F' then
                           begin
                            if MessageDlg('Boletim ja foi emitido, Deseja alterar os Dados?', mtconfirmation,[mbyes,mbno],0) = mryes then
                                begin
                                      DateTimePicker1.Date:=StrToDate(DtBcd.DataSet.FieldByName('Tbcd_data').AsString);
                                       Edit1.text:=DtBcd.DataSet.FieldByName('Tbcd_Func').AsString;
                                        Edit2.text:=DtBcd.DataSet.FieldByName('Tbcd_Linha').AsString;
                                end;
                                EditBcd.Text:='';
                                EditBcd.SetFocus;
                           end
                           else begin
                                ShowMessage('Boletim ja foi acertado na arrecada��o, n�o � possivel alterar');
                                 EditBcd.Text:='';
                                  EditBcd.SetFocus;
                           end;
                       end;
            end;
end;

procedure TFormLiberaBcd.TabSheet2Show(Sender: TObject);
begin
QrTemp.Close;
QrTemp.Open;
end;

end.
