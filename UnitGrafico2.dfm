object FormGrafico2: TFormGrafico2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Curva de Passageiros Transportados'
  ClientHeight = 404
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 870
    Height = 404
    Title.Text.Strings = (
      'TDBChart')
    Legend.Visible = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 24
    ExplicitWidth = 400
    ExplicitHeight = 250
    ColorPaletteIndex = 16
    object Series1: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      DataSource = QrTotais
      XLabelsSource = 'Data'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'Data'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'total'
    end
  end
  object QrTotais: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select day(Bcd_Data) as Data, Sum(BCD_Total) as total from tb_Mo' +
        'nMov'
      'group by day(bcd_Data)')
    Left = 416
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = QrTotais
    Left = 648
    Top = 120
  end
end
