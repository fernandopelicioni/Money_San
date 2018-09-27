unit UnitAlteraDataBoletim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, DBCtrls;

type
  TFormAlteraDataBoletim = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlteraDataBoletim: TFormAlteraDataBoletim;

implementation

uses UnitConsultaBcd;

{$R *.dfm}

procedure TFormAlteraDataBoletim.BitBtn1Click(Sender: TObject);
begin
if (MessageDlg('Aten��o, Boletim ser� trocado de Data, fique atendo, e emita novos relat�rios', mtConfirmation, [mbYes, mbNo], 0) in [mrYes, mrNo]) then

       Begin
             With FormConsultaBcd.Apagar do
                 begin
                      Close;
                      Sql.Clear;
                      Sql.Add('update tb_monmov set bcd_data =:novadata where bcd_cod =:codigobcd');
                      Parameters.ParamByName('novadata').Value :=DateToStr(DateTimePicker1.Date);
                      Parameters.ParamByName('codigobcd').Value :=FormConsultaBcd.DtMov.DataSet.FieldByName('Bcd_Cod').AsString;
                      ExecSql;
                      MessageBox(0, 'Troca efetuada com sucesso!', '', MB_ICONINFORMATION or MB_OK);
                 end;
                 Close;



       End;
end;

procedure TFormAlteraDataBoletim.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormAlteraDataBoletim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
