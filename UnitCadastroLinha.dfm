object FormCadastroLinha: TFormCadastroLinha
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Linhas Cadastradas'
  ClientHeight = 243
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 193
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 112
      Width = 67
      Height = 13
      Caption = 'Tipo de Linha:'
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 294
      Height = 41
      Caption = 'Ordem de Sa'#237'da'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Descri'#231#227'o'
        'Numero')
      TabOrder = 0
    end
    object RadioGroup2: TRadioGroup
      Left = 8
      Top = 58
      Width = 294
      Height = 41
      Caption = 'Status'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ativa'
        'Inativa'
        'Todas')
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 128
      Width = 294
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'TLI_COD'
      ListField = 'TLI_DES'
      ListSource = DtSistema
      ParentFont = False
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Emitir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 225
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DtSistema: TDataSource
    DataSet = Pai.QrTipLin
    Left = 32
    Top = 184
  end
end
