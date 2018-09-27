object FormConsultaVeiculos: TFormConsultaVeiculos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ve'#237'culos Dispon'#237'veis'
  ClientHeight = 391
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 401
    Height = 345
    DataSource = FormCadastroVeiculos.DtCat
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CAT_VEI'
        Title.Caption = 'Ve'#237'culo'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_CAT'
        Title.Caption = 'Catraca Atual'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_LACRE'
        Title.Caption = 'Lacre'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_DATA'
        Title.Caption = 'Ult. Data'
        Width = 110
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 335
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Fechar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
