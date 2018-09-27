object FormRelatorioBcd: TFormRelatorioBcd
  Left = 202
  Top = 162
  Caption = 'FormRelatorioBcd'
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Query1: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from TAB_Empresa;')
    Left = 241
    Top = 44
  end
end
