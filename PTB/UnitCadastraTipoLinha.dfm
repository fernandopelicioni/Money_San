object FormCadastraTipoLinha: TFormCadastraTipoLinha
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tipo de Linhas'
  ClientHeight = 316
  ClientWidth = 439
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 409
    Height = 113
    Align = alCustom
    BiDiMode = bdLeftToRight
    Caption = 'Tipo de Linha'
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 28
      Width = 61
      Height = 13
      Caption = '&Descri'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 12
      Top = 68
      Width = 71
      Height = 13
      Caption = 'Tarifa Atual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 108
      Top = 69
      Width = 88
      Height = 13
      Caption = 'Tarifa Anterior:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 205
      Top = 68
      Width = 97
      Height = 13
      Caption = 'Tar. Desc. Atual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 303
      Top = 68
      Width = 91
      Height = 13
      Caption = 'Tar. Desc. Ant.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 12
      Top = 42
      Width = 372
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TLI_DES'
      DataSource = DtTipoLinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 12
      Top = 82
      Width = 92
      Height = 21
      Ctl3D = False
      DataField = 'TLI_TARIFAATUAL'
      DataSource = DtTipoLinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 108
      Top = 82
      Width = 92
      Height = 21
      Ctl3D = False
      DataField = 'TLI_TARIFAANTERIOR'
      DataSource = DtTipoLinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 205
      Top = 82
      Width = 92
      Height = 21
      Ctl3D = False
      DataField = 'TLI_TARIFADESCONTO'
      DataSource = DtTipoLinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 303
      Top = 82
      Width = 92
      Height = 21
      Ctl3D = False
      DataField = 'TLI_TARIFADESCONTOANTERIOR'
      DataSource = DtTipoLinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object BitBtn1: TBitBtn
    Left = 213
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 294
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object BitBtn3: TBitBtn
    Left = 132
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Incluir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 163
    Width = 439
    Height = 153
    Align = alBottom
    DataSource = DtTipoLinha
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TLI_COD'
        Title.Caption = 'Cod.'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLI_DES'
        Title.Caption = 'Descri'#231#227'o'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLI_TARIFAATUAL'
        Title.Caption = 'Tar. Atual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLI_TARIFADESCONTO'
        Title.Caption = 'Tar. Desc.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLI_TARIFAANTERIOR'
        Title.Caption = 'Tar. Ant.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLI_TARIFADESCONTOANTERIOR'
        Title.Caption = 'Tar. Des. Ant'
        Visible = True
      end>
  end
  object DtTipoLinha: TDataSource
    DataSet = Pai.QrTipLin
    Left = 368
    Top = 216
  end
  object DtColigada: TDataSource
    DataSet = Pai.QrColigadas
    Left = 312
    Top = 24
  end
end
