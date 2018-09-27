object FormGrafico1: TFormGrafico1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormGrafico1'
  ClientHeight = 515
  ClientWidth = 839
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
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 839
    Height = 515
    Title.Text.Strings = (
      'TDBChart')
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = 0.349999999999999900
    DepthAxis.Minimum = -0.650000000000000100
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = 0.349999999999999900
    DepthTopAxis.Minimum = -0.650000000000000100
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 40797.850000000010000000
    LeftAxis.Minimum = 40796.850000000010000000
    Legend.Visible = False
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    Align = alClient
    TabOrder = 0
    PrintMargins = (
      15
      19
      15
      19)
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      DataSource = QrMedia
      SeriesColor = clRed
      XLabelsSource = 'Data'
      LinePen.Color = clRed
      LinePen.EndStyle = esFlat
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'TOTAL'
      YValues.DateTime = True
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'Data'
    end
  end
  object DtResumoDiario: TDataSource
    DataSet = QrMedia
    Left = 624
    Top = 232
  end
  object QrMedia: TADOQuery
    Active = True
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select (B.Bcd_Data) as Data,'
      'sum(B.bcd_liquido) as TOTAL'
      'from Tb_MonMov B'
      'Where B.Bcd_data >= '#39'11/09/2011'#39' and B.Bcd_Data <= '#39'21/09/2011'#39
      'And B.Bcd_Coligada = '#39'1'#39
      'group by (B.Bcd_Data)')
    Left = 672
    Top = 328
  end
end
