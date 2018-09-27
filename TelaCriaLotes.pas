unit TelaCriaLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnMan, ActnColorMaps, ExtCtrls, DBCtrls,
  Grids, DBGrids, DB, DBTables, CustomizeDlg, Mask,  XPMan;

type
  TFormCriaLotes = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    TwilightColorMap1: TTwilightColorMap;
    TabelaLotes: TTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    CustomizeDlg1: TCustomizeDlg;
    TwilightColorMap2: TTwilightColorMap;
    btsalva: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    XPManifest1: TXPManifest;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure btsalvaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCriaLotes: TFormCriaLotes;

implementation

{$R *.dfm}

procedure TFormCriaLotes.BitBtn2Click(Sender: TObject);
begin
TabelaLotes.Edit;
end;

procedure TFormCriaLotes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit2.setfocus;
   end;
end;

procedure TFormCriaLotes.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit3.setfocus;
   end;

end;

procedure TFormCriaLotes.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   if StrtoInt(DbEdit3.text) < StrtoInt(DbEdit2.text) then
   begin
   ShowMessage('Numeração Final não pode ser menor que Inicial. Corrija');
   DbEdit2.focused;
   End
   Else
   BtSalva.setfocus;
   end;

end;

procedure TFormCriaLotes.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.enabled:=true;
   btsalva.setfocus;
   end;

end;

procedure TFormCriaLotes.FormShow(Sender: TObject);
begin
BITBTN2.SetFocus;
end;

procedure TFormCriaLotes.FormActivate(Sender: TObject);
begin
TabelaLotes.Open;
end;

procedure TFormCriaLotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormCriaLotes.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
DbEdit2.setfocus;
end;

procedure TFormCriaLotes.btsalvaClick(Sender: TObject);
begin
TabelaLotes.post;
end;

procedure TFormCriaLotes.BitBtn1Click(Sender: TObject);
begin
if messagedlg('Você quer mesmo apagar este Lançamento ?',mtConfirmation,[mbno, mbyes],0)
   =mryes then begin
   TabelaLotes.delete;
   End;

end;

end.
