object FormRelatorioVeiculos: TFormRelatorioVeiculos
  Left = 196
  Top = 145
  Caption = 'FormRelatorioVeiculos'
  ClientHeight = 450
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Query1: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from veiculo'
      'order by numero;')
    Left = 481
    Top = 228
    object Query1NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'MONEY."veiculo.DB".NUMERO'
    end
    object Query1LACRE: TStringField
      FieldName = 'LACRE'
      Origin = 'MONEY."veiculo.DB".LACRE'
      Size = 6
    end
    object Query1ULTIMACATRACA: TStringField
      FieldName = 'ULTIMACATRACA'
      Origin = 'MONEY."veiculo.DB".ULTIMACATRACA'
      Size = 5
    end
    object Query1ULTIMACOLETA: TStringField
      FieldName = 'ULTIMACOLETA'
      Origin = 'MONEY."veiculo.DB".ULTIMACOLETA'
      Size = 10
    end
  end
  object Query2: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from tab_empresa;')
    Left = 417
    Top = 20
  end
end
