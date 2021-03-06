unit UnitBaixaDebitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ComCtrls, pngimage, ExtCtrls, Grids, DBGrids,
  DBCtrls, ADODB;

type
  TFormBaixaDebitos = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    DtFim: TDateTimePicker;
    BitBtn1: TBitBtn;
    DtDebitos: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DtIni: TDateTimePicker;
    Label3: TLabel;
    DtPro: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton1: TSpeedButton;
    QrApagar: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaixaDebitos: TFormBaixaDebitos;

implementation

uses UnPai, UnitAutorizaBaixa;

{$R *.dfm}

procedure TFormBaixaDebitos.BitBtn1Click(Sender: TObject);
begin
       Screen.Cursor:=CrHourGlass;
       With Pai.QrDebitos do
              Begin
                   Close;
                   Sql.Clear;
                   Sql.Add('select Substring((B.Cha_Pro),5,4) as chapa, B.Nom_pro, Mdf_Valor,Mdf_data, Mdf_Status,Mdf_DtRec, Mdf_Usuario, Mdf_MOtBaixa, Mdf_Cod from tb_mondebito A');
                   Sql.Add('Left Join Tb_Profissionais B On B.Cod_Pro = A.Mdf_Chapa');
                   Sql.Add('Where A.Mdf_Status = ' + QuotedStr('A'));
                   Sql.Add('And Mdf_Data >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' And Mdf_Data <= ' + QUotedStr(DateToStr(DtFim.Date)));
                   Sql.Add('AND b.Cod_Coligada = ' + Pai.QrColigadas.FieldByName('cod_coligada').AsString);
                   if DBLookupComboBox1.KeyValue <> Null then
                       Sql.Add('And Mdf_chapa = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                   if DBLookupComboBox2.KeyValue <> Null then
                       Sql.Add('And Mdf_chapa = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                   Open;

              End;



       Screen.Cursor:=CrDefault;
end;


procedure TFormBaixaDebitos.BitBtn2Click(Sender: TObject);
begin
      if DtDebitos.DataSet.active then
      begin
          if MessageDlg('Confirma Baixa do D�bito do Sr(a): ' + DtDebitos.DataSet.FieldByName('Nom_Pro').AsString + ' ?' , mtConfirmation, [mbYes, mbNo], 0) = MrYes then
                begin
                       Application.CreateForm(TFormAutorizaBaixa,FormAutorizaBaixa);
                       FormAutorizaBaixa.ShowModal;
                end;
      end;
end;

procedure TFormBaixaDebitos.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFormBaixaDebitos.FormActivate(Sender: TObject);
begin

      Screen.Cursor:=CrHourGlass;
      DtFim.Date:=now;

      With Pai.QrPro do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('select Nom_pro, Cod_pro, Cha_pro FROM TB_Profissionais');
                  Sql.Add('Where ativo_pro = ' + QuotedStr('A'));
                  Sql.Add('And Dep_pro = 1');
                  Sql.Add('And Cod_Coligada = ' + QUotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                  Sql.Add('Order by Nom_pro');
                  Open;

            end;

      Screen.Cursor:=CrDefault;

end;

procedure TFormBaixaDebitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormBaixaDebitos.SpeedButton1Click(Sender: TObject);
begin
      if DtDebitos.DataSet.active then
      begin
          if MessageDlg('Confirma Exclus�o do D�bito do Sr(a): ' + DtDebitos.DataSet.FieldByName('Nom_Pro').AsString + ' ?' , mtConfirmation, [mbYes, mbNo], 0) = MrYes then
                begin
                       with QrApagar do
                           begin
                                Close;
                                Parameters.ParamByName('codigo').Value:=DtDebitos.DataSet.FieldByName('Mdf_Cod').AsString;
                                Open;
                                Delete;
                                close;
                           end;
                //                       Application.CreateForm(TFormAutorizaBaixa,FormAutorizaBaixa);
//                       FormAutorizaBaixa.ShowModal;
                end;
      DtDebitos.DataSet.Close;
      end;

end;

end.
