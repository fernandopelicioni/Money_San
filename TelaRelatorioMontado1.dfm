object FormRelatorioMontado1: TFormRelatorioMontado1
  Left = 142
  Top = 121
  Caption = 'FormRelatorioMontado1'
  ClientHeight = 552
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object XPManifest1: TXPManifest
    Left = 688
    Top = 176
  end
  object Query1: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'Select * From Funcao;')
    Left = 560
    Top = 136
    object Query1Matricula: TStringField
      FieldName = 'Matricula'
      Origin = 'MONEY."Funcao.DB".Matricula'
      Size = 5
    end
    object Query1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'MONEY."Funcao.DB".Nome'
      Size = 50
    end
    object Query1Funcao: TStringField
      FieldName = 'Funcao'
      Origin = 'MONEY."Funcao.DB".Funcao'
      Size = 30
    end
  end
  object XPColorMap1: TXPColorMap
    HighlightColor = 15660791
    BtnSelectedColor = clBtnFace
    UnusedColor = 15660791
    Left = 651
    Top = 139
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 611
    Top = 163
  end
  object Query2: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from tab_empresa;')
    Left = 417
    Top = 20
  end
end
