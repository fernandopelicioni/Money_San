object FormRelatorioMontado2: TFormRelatorioMontado2
  Left = 224
  Top = 159
  AlphaBlend = True
  AlphaBlendValue = 220
  Caption = 'FormRelatorioMontado2'
  ClientHeight = 466
  ClientWidth = 739
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
  object Query2: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from tab_empresa;')
    Left = 417
    Top = 20
  end
end
