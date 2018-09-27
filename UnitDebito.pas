unit UnitDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, pngimage;

type
  TFormDebito = class(TForm)
    GroupBox1: TGroupBox;
    EditMalote: TEdit;
    GroupBox2: TGroupBox;
    EditData: TLabel;
    DBText6: TDBText;
    Label2: TLabel;
    Image1: TImage;
    DBText1: TDBText;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDebito: TFormDebito;

implementation

uses UnitLancamentoBSE, UnitDadosMov;

{$R *.dfm}

end.
