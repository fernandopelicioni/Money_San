object FORMFUNCIONARIO: TFORMFUNCIONARIO
  Left = 351
  Top = 176
  ActiveControl = BitBtn2
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 441
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 361
    Height = 169
    Align = alCustom
    BiDiMode = bdRightToLeft
    Caption = '  Cadastro de Funcion'#225'rios  '
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
      Left = 6
      Top = 32
      Width = 66
      Height = 19
      Caption = '&Matricula:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 30
      Top = 66
      Width = 42
      Height = 19
      Caption = '&Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 23
      Top = 103
      Width = 50
      Height = 19
      Caption = '&Fun'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 77
      Top = 24
      Width = 121
      Height = 29
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Matricula'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 77
      Top = 63
      Width = 268
      Height = 25
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Nome'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBComboBox1: TDBComboBox
      Left = 77
      Top = 103
      Width = 188
      Height = 27
      BevelWidth = 20
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'Funcao'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ItemHeight = 19
      Items.Strings = (
        'COBRADOR'
        'MOTORISTA'
        'ARRECADADOR'
        'FISCAL'
        'OUTROS')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyPress = DBComboBox1KeyPress
    end
  end
  object Panel1: TPanel
    Left = 11
    Top = 248
    Width = 353
    Height = 185
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 329
      Height = 169
      Ctl3D = False
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Matricula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Chapa'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Funcao'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Fun'#231#227'o'
          Width = 79
          Visible = True
        end>
    end
  end
  object btsalva: TBitBtn
    Left = 23
    Top = 202
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
    Left = 71
    Top = 202
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
    Left = 125
    Top = 202
    Width = 240
    Height = 49
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Proximo Registro'
      'Ultimo Registro'
      'Novo'
      'Apagar?'
      'Alterar'
      'Salvar'
      'Cancelar'
      'Atualizar')
    TabOrder = 4
  end
  object tabelafuncionario: TTable
    DatabaseName = 'MONEY'
    TableName = 'FUNCAO.db'
    Left = 16
    Top = 168
    object tabelafuncionarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tabelafuncionarioFuncao: TStringField
      FieldName = 'Funcao'
      Size = 30
    end
    object tabelafuncionarioMatricula: TStringField
      FieldName = 'Matricula'
      Required = True
      EditMask = '!0000;1;_'
      Size = 5
    end
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 336
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = tabelafuncionario
    Left = 8
    Top = 224
  end
end
