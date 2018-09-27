unit TELAINFO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, Buttons, XPMan, dblookup,
  ActnMan, ActnColorMaps, ComCtrls;

type
  Tforminfo = class(TForm)
    btok: TBitBtn;
    btcancel: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DtAcertador: TDataSource;
    XPManifest1: TXPManifest;
    StandardColorMap1: TStandardColorMap;
    TwilightColorMap1: TTwilightColorMap;
    EditUsuario: TDBLookupComboBox;
    EditData: TDateTimePicker;
    procedure editdataKeyPress(Sender: TObject; var Key: Char);
    procedure editusuarioKeyPress(Sender: TObject; var Key: Char);
    procedure btcancelClick(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditDataEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  dialancamento: TDate;
  usuario: string[5];
  nome:string[40];
  tipotela:string;
    { Public declarations }
  end;

var
  forminfo: Tforminfo;
implementation

uses telalancamento, TelaLancamentoGrande, UnitPai;

{$R *.dfm}

procedure Tforminfo.editdataKeyPress(Sender: TObject; var Key: Char);
var
dia : string;
begin
if key = #13 then
   begin
   key:=#0;
   Dia:=DateToStr(now);
   if ((EditData.Date) < (Now - 2)) or (EditData.Date > (Now + 2)) then
       begin
       //ageBeep(150,180);
       ShowMessage('Preste Atenção, Esta data é bem diferente da data de hoje, Acho que voce teclou a data errada');
       ShowMessage('Se é exatamento isso que voce deseja fazer, va em frente');
       ShowMessage('A data escolhida para digitação é:' +#13+
                   ' * * * * * * * * * * * * * * * * * ' + #13+
                   '         '+DateToStr(EditData.Date) + #13 +
                   ' * * * * * * * * * * * * * * * * *');
       end;
     editusuario.SetFocus;
   end;
end;

procedure Tforminfo.editusuarioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key:=#0;
   If EditUsuario.text = ' ' then
   begin
   editUsuario.Setfocus;
   end
   else
   begin
   btok.Enabled:=true;
   btok.setfocus;
   end;
   end;
end;

procedure Tforminfo.btcancelClick(Sender: TObject);
begin
DtAcertador.dataSet.close;
forminfo.Close;
end;

procedure Tforminfo.btokClick(Sender: TObject);
begin
If EditUsuario.Text = '' then EditUsuario.SetFocus;
usuario:=EditUsuario.Keyvalue;
dialancamento:=(editdata.date);
nome:=DtAcertador.DataSet.fieldbyname('ACE_Des').AsString;
if tipotela = 'pequena' then
    begin
    Application.CreateForm(TFormLancamento, Formlancamento);
    formLancamento.Show;
    end;
if tipotela = 'grande' then
    begin
    Application.CreateForm(TFormLancamentogrande, Formlancamentogrande);
    formLancamentogrande.Show;
    end;
forminfo.hide;

end;

procedure Tforminfo.FormShow(Sender: TObject);
begin
EditData.Date:=(now);
//Editusuario.Text:=' ';

EditData.SetFocus;
end;

procedure Tforminfo.EditDataEnter(Sender: TObject);
var
HoraAtual:TTime;
begin
HoraAtual:=Time;
IF HoraAtual < StrtoTime('05:00:00') then
    EditData.Date:=(Now-1);
end;

procedure Tforminfo.FormActivate(Sender: TObject);
begin
EditUsuario.Enabled:=false;
Editusuario.KeyValue:='';
EditUsuario.Enabled:=true;
end;

procedure Tforminfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
