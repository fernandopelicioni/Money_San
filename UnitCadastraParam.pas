unit UnitCadastraParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, DB, Mask, Buttons, OleServer, CmAdmCtl,
  ColorGrd, ComCtrls;

type
  TFormCadastraParam = class(TForm)
    DtParam: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    Label20: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    Label4: TLabel;
    DBRadioGroup9: TDBRadioGroup;
    Label5: TLabel;
    Label6: TLabel;
    DBRadioGroup11: TDBRadioGroup;
    Label9: TLabel;
    DBRadioGroup12: TDBRadioGroup;
    Label11: TLabel;
    DBRadioGroup17: TDBRadioGroup;
    Label12: TLabel;
    DBRadioGroup18: TDBRadioGroup;
    Label17: TLabel;
    DBRadioGroup19: TDBRadioGroup;
    Label21: TLabel;
    DBRadioGroup20: TDBRadioGroup;
    Label22: TLabel;
    DBRadioGroup21: TDBRadioGroup;
    Label23: TLabel;
    DBRadioGroup22: TDBRadioGroup;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraParam: TFormCadastraParam;

implementation

uses UnPai;

{$R *.dfm}

procedure TFormCadastraParam.FormActivate(Sender: TObject);
begin
//DtParam.DataSet.Open;
with pai.QrParam do
       begin
            Close;
            Sql.Clear;
             Sql.Add('select * from Tb_MonTipLin A, Tb_MonpARAM B');
              sql.Add('Where B.Par_Cod = A.Tli_cod');
               Sql.Add('And A.Tli_coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                Open;

       end;
end;

procedure TFormCadastraParam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtParam.DataSet.Close;
Action:=cafree;
end;

procedure TFormCadastraParam.SpeedButton1Click(Sender: TObject);
begin
Dtparam.DataSet.Post;
Close;
end;

procedure TFormCadastraParam.SpeedButton2Click(Sender: TObject);
begin
DtParam.DataSet.Cancel;
close;
end;

end.
