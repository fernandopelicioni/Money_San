unit telalinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnMan, ActnColorMaps, StdCtrls, Grids, DBGrids, ExtCtrls, DB,
  DBTables, Mask, DBCtrls, Buttons, XPMan;

type
  TFormLinha = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    StandardColorMap1: TStandardColorMap;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tabelalinha: TTable;
    DataSource1: TDataSource;
    btsalva: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    tabelalinhaNUMERO: TStringField;
    tabelalinhaDESCRICAO: TStringField;
    DBEdit5: TDBEdit;
    XPManifest1: TXPManifest;
    tabelalinhaTARIFAATUAL: TCurrencyField;
    tabelalinhaTARIFAANTERIOR: TCurrencyField;
    tabelalinhaKM: TSmallintField;
    tabelalinhaTARIFADESCONTO: TCurrencyField;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    tabelalinhaTIPOLINHA: TStringField;
    TwilightColorMap1: TTwilightColorMap;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure btsalvaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLinha: TFormLinha;

implementation

{$R *.dfm}

procedure TFormLinha.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit2.setfocus;
   end;
end;

procedure TFormLinha.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit3.setfocus;
   end;
end;

procedure TFormLinha.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit4.setfocus;
   end;
end;

procedure TFormLinha.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit6.setfocus;
   end;
end;

procedure TFormLinha.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   btsalva.enabled:=true;
   btsalva.setfocus;
   end;
end;

procedure TFormLinha.BitBtn2Click(Sender: TObject);
begin
tabelalinha.Append;
dbedit1.setfocus;
end;

procedure TFormLinha.btsalvaClick(Sender: TObject);
begin
IF (TABELALINHA.State = DSINSERT) OR (TABELALINHA.State = DSEDIT) THEN
         tabelalinha.Post;
btsalva.enabled:=false;
bitbtn2.setfocus;
end;

procedure TFormLinha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tabelalinha.cANCEL;
tabelalinha.close;
end;

procedure TFormLinha.FormShow(Sender: TObject);
begin
bitbtn2.SetFocus;
end;

procedure TFormLinha.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
   key:=#0;
   DBEdit5.setfocus;
   end;

end;

end.
