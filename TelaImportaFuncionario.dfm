object FormImportaFuncionario: TFormImportaFuncionario
  Left = 391
  Top = 303
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Importa'#231#227'o de Funcionarios'
  ClientHeight = 208
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 145
    Caption = '  Importa'#231#227'o  '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 89
      Height = 13
      Caption = 'Origem do arquivo:'
    end
    object Edit1: TEdit
      Left = 8
      Top = 40
      Width = 225
      Height = 21
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'C:\Exporta.txt'
    end
    object BitBtn1: TBitBtn
      Left = 234
      Top = 40
      Width = 24
      Height = 21
      Caption = '...'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object BitBtn2: TBitBtn
    Left = 56
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 160
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
  end
  object XPManifest1: TXPManifest
    Left = 448
    Top = 48
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'c:\'
    OnSelectionChange = OpenDialog1SelectionChange
    Left = 112
    Top = 88
  end
  object Database1: TDatabase
    AliasName = 'MONEY'
    Connected = True
    DatabaseName = 'bcd'
    SessionName = 'Default'
    Left = 240
    Top = 104
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'bcd'
    TableName = 'FUNCAO.DB'
    Left = 192
    Top = 104
    object Table1Matricula: TStringField
      FieldName = 'Matricula'
      Required = True
      Size = 5
    end
    object Table1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object Table1Funcao: TStringField
      FieldName = 'Funcao'
      Size = 30
    end
  end
end
