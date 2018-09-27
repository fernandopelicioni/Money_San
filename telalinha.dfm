object FormLinha: TFormLinha
  Left = 277
  Top = 117
  Align = alCustom
  AlphaBlend = True
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de linhas'
  ClientHeight = 494
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 12
    Width = 529
    Height = 237
    Align = alCustom
    BiDiMode = bdRightToLeft
    Caption = '   Linhas  '
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 75
      Top = 28
      Width = 49
      Height = 19
      Caption = '&C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 57
      Top = 61
      Width = 68
      Height = 19
      Caption = '&Descri'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 44
      Top = 96
      Width = 80
      Height = 19
      Caption = '&Tarifa Atual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 130
      Width = 107
      Height = 19
      Caption = 'Tarifa &Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 27
      Top = 203
      Width = 98
      Height = 19
      Caption = 'E&xtens'#227'o (KM):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 26
      Top = 168
      Width = 98
      Height = 19
      Caption = 'T&arifa Anterior:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit6: TDBEdit
      Left = 138
      Top = 163
      Width = 121
      Height = 29
      Ctl3D = False
      DataField = 'TARIFAANTERIOR'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DBEdit6KeyPress
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 328
      Top = 104
      Width = 185
      Height = 105
      Caption = '  Tipo de Linha  '
      Ctl3D = False
      DataField = 'TIPOLINHA'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        'TRANSCOL'
        'SELETIVO'
        'OUTROS')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Values.Strings = (
        'T'
        'S'
        'O')
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 304
    Width = 553
    Height = 185
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 537
      Height = 169
      Cursor = crHandPoint
      Ctl3D = False
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMERO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Codigo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'MS Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Century Gothic'
          Font.Style = []
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'MS Serif'
          Title.Font.Style = []
          Width = 241
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TARIFAATUAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Tarifa Atual'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'MS Serif'
          Title.Font.Style = []
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TARIFADESCONTO'
          Title.Caption = 'Tar. Social'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'MS Serif'
          Title.Font.Style = []
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TARIFAANTERIOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Tar. Ant.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'MS Serif'
          Title.Font.Style = []
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KM'
          Title.Caption = 'Extens'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'MS Serif'
          Title.Font.Style = []
          Width = 54
          Visible = True
        end>
    end
  end
  object btsalva: TBitBtn
    Left = 79
    Top = 256
    Width = 46
    Height = 48
    TabOrder = 2
    OnClick = btsalvaClick
    Glyph.Data = {
      C6060000424DC60600000000000036000000280000001B000000140000000100
      18000000000090060000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7FBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FF0000FF
      0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      FF0000FF00000000000000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBF000000000000FF0000FF0000FF0000FF0000BFBFBFBFBFBFFF
      0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF0000FF0000FF0000000000
      7F7F7F7F7F7FBFBFBFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000000000
      00FF0000FF0000FF0000FF0000BFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFFF0000FF0000FF00000000007F7F7F7F7F7FBFBFBFBFBFBF
      7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF000000000000FF0000FF0000FF0000FF00
      00BFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF0000FF
      0000FF00000000007F7F7F7F7F7FBFBFBF7F7F7F00007F7F7F7FBFBFBFBFBFBF
      BFBFBF000000000000FF0000FF0000FF0000FF0000BFBFBFBFBFBFFF0000FF00
      00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF0000FF0000FF00000000007F7F7F7F
      7F7FBFBFBF7F7F7F00007F7F7F7F7F7F7FBFBFBFBFBFBF000000000000FF0000
      FF0000FF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFFF0000FF0000FF00000000007F7F7F7F7F7FBFBFBF7F7F7F00007F00
      007F7F7F7F7F7F7FBFBFBF000000000000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      000000007F7F7F00007F00007F00007F00007F0000FF00007F7F7F7F7F7F7F00
      0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF00000000007F7F7F00007F0000
      FF0000FF0000FF0000FF0000FF00007F7F7F7F000000000000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF00000000007F7F7F00007F0000FF0000FFFF00FFFF00FF0000
      FF0000FF00007F000000000000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000000000
      7F7F7F00007F0000FF0000FF0000FF0000FF0000FF00007F00007F0000000000
      00FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FF00000000007F7F7F00007F0000FF0000FF
      0000FF0000FF00007F00007FBFBFBF000000000000FF0000FF0000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FF00000000007F7F7F00007F00007F00007F00007F0000FF00007FBFBFBF
      BFBFBF000000000000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00000000007F7F7F7F
      7F7FBFBFBFBFBFBF00007F00007FBFBFBFBFBFBFBFBFBF000000000000FF0000
      FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FF00000000007F7F7F7F7F7FBFBFBFBFBFBF00007FBF
      BFBFBFBFBFBFBFBFBFBFBF000000000000FF0000FF0000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00
      000000007F7F7FBFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBFBFBF00
      0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000000000000000BFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBF000000}
  end
  object BitBtn2: TBitBtn
    Left = 127
    Top = 256
    Width = 46
    Height = 48
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      FE050000424DFE05000000000000360400002800000015000000130000000100
      080000000000C801000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C0007D654F00B199
      8300F4FCFF000000000000FFFF0000000000D0E5D00000000000DBDBDB000000
      0000F4D8BC0000000000F4D6BA0000000000D0D0D00000000000FFFF00000000
      0000BAB7B70000000000B1B1B1000000000000FF000000000000FEA980000000
      00009C9C9C0000000000009C9C0000000000FF00FF00000000009C9C00000000
      00000000FF0000000000009C0000000000009C009C000000000000009C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C000000FF00000000000000D9CCC100A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
      0707070700070707070707070707070101010707070707070707070700070707
      0707070707070701010107070700070707070707000707070707070007070701
      0101070707070007070707F8F8F8070707070007070707010101070707070700
      0707F8000000F8F807000707070707010101070707070707070000FB07FB0000
      F80707070707070101010707070707070007FB07FB07FB0700F8070707070701
      010107070707070700FB07FB07FB07FB00F80707070707010101070707070700
      FB07FBFBFB07FB07FB00F80707070701010107000000070007FBFBFFFBFB07FB
      0700F800000007010101070707070700FBFBFFFFFFFBFB07FB00F80707070701
      010107070707070700FBFBFFFBFB07FB00F80707070707010101070707070707
      0007FBFBFB07FB0700F80707070707010101070707070707070000FB07FB0000
      F8070707070707010101070707070700070707000000F8070700070707070701
      0101070707070007070707070707070707070007070707010101070707000707
      0707070700070707070707000707070101010707070707070707070700070707
      0707070707070701010107070707070707070707000707070707070707070701
      0101}
  end
  object DBNavigator1: TDBNavigator
    Left = 181
    Top = 256
    Width = 230
    Height = 49
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 162
    Top = 34
    Width = 121
    Height = 29
    Ctl3D = False
    DataField = 'NUMERO'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 162
    Top = 68
    Width = 372
    Height = 25
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'DESCRICAO'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 162
    Top = 102
    Width = 121
    Height = 29
    Ctl3D = False
    DataField = 'TARIFAATUAL'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 162
    Top = 139
    Width = 121
    Height = 29
    Ctl3D = False
    DataField = 'TARIFADESCONTO'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    OnKeyPress = DBEdit4KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 162
    Top = 208
    Width = 121
    Height = 29
    Ctl3D = False
    DataField = 'KM'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    OnKeyPress = DBEdit5KeyPress
  end
  object StandardColorMap1: TStandardColorMap
    HighlightColor = 15913665
    UnusedColor = 15648689
    Color = clGradientInactiveCaption
    SelectedColor = clHighlight
    Left = 600
    Top = 288
  end
  object tabelalinha: TTable
    Active = True
    DatabaseName = 'MONEY'
    TableName = 'LINHA.db'
    Left = 480
    Top = 48
    object tabelalinhaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object tabelalinhaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object tabelalinhaTARIFAATUAL: TCurrencyField
      FieldName = 'TARIFAATUAL'
    end
    object tabelalinhaTARIFAANTERIOR: TCurrencyField
      FieldName = 'TARIFAANTERIOR'
    end
    object tabelalinhaTARIFADESCONTO: TCurrencyField
      FieldName = 'TARIFADESCONTO'
    end
    object tabelalinhaKM: TSmallintField
      FieldName = 'KM'
    end
    object tabelalinhaTIPOLINHA: TStringField
      FieldName = 'TIPOLINHA'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = tabelalinha
    Left = 560
    Top = 104
  end
  object XPManifest1: TXPManifest
    Left = 456
    Top = 272
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    HotColor = clBtnShadow
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 496
    Top = 272
  end
end
