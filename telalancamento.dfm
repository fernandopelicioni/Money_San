object FormLancamento: TFormLancamento
  Left = 261
  Top = 50
  Cursor = crCross
  ActiveControl = BitBtn2
  Align = alCustom
  AlphaBlend = True
  AlphaBlendValue = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Inclus'#227'o de Movimentos - BCD'#180'S ou Sacolinha'
  ClientHeight = 596
  ClientWidth = 481
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -19
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object x: TSpeedButton
    Left = 328
    Top = 530
    Width = 33
    Height = 41
    Caption = 'X'
    Visible = False
    OnClick = xClick
  end
  object cat: TSpeedButton
    Left = 307
    Top = 516
    Width = 33
    Height = 41
    Caption = 'cat'
    Visible = False
    OnClick = catClick
  end
  object s: TLabel
    Left = 576
    Top = 472
    Width = 4
    Height = 23
    Caption = #39
    Visible = False
  end
  object PULADOR: TSpeedButton
    Left = 176
    Top = 514
    Width = 33
    Height = 41
    Caption = 'PU'
    Visible = False
    OnClick = PULADORClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = -3
    Width = 454
    Height = 134
    Cursor = crSQLWait
    Caption = '  Dados do Boletim  '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 249
      Top = 37
      Width = 24
      Height = 14
      Caption = 'BCD:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editdata: TDBText
      Left = 74
      Top = 17
      Width = 136
      Height = 23
      DataField = 'DATABCD'
      DataSource = dtmovimento
      DragCursor = crSQLWait
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744448
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 34
      Top = 23
      Width = 27
      Height = 14
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 22
      Top = 60
      Width = 38
      Height = 14
      Caption = '&Ve'#237'culo:'
      FocusControl = editveiculo
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 97
      Width = 32
      Height = 14
      Caption = '&Linha: '
      FocusControl = editlinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 139
      Top = 100
      Width = 312
      Height = 24
      DataField = 'DESCRICAO'
      DataSource = dtlinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label21: TLabel
      Left = 180
      Top = 47
      Width = 29
      Height = 14
      Caption = 'Lacre:'
      FocusControl = editlinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 178
      Top = 62
      Width = 62
      Height = 23
      AutoSize = True
      DataField = 'LACRE'
      DataSource = dtveiculo
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DBText3: TDBText
      Left = 416
      Top = 90
      Width = 120
      Height = 17
      DataField = 'NUMERO'
      DataSource = dtveiculo
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label25: TLabel
      Left = 279
      Top = 77
      Width = 64
      Height = 23
      Caption = 'Transcol'
      FocusControl = editlinha
      Font.Charset = ANSI_CHARSET
      Font.Color = clFuchsia
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object editveiculo: TDBEdit
      Left = 70
      Top = 46
      Width = 102
      Height = 39
      Cursor = crHandPoint
      Ctl3D = False
      DataField = 'VEICULOBCD'
      DataSource = dtmovimento
      DragCursor = crSQLWait
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 16711808
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = editveiculoEnter
      OnExit = editveiculoExit
      OnKeyDown = editveiculoKeyDown
      OnKeyPress = editveiculoKeyPress
    end
    object editlinha: TDBEdit
      Left = 70
      Top = 88
      Width = 62
      Height = 39
      Cursor = crHandPoint
      Ctl3D = False
      DataField = 'LINHABCD'
      DataSource = dtmovimento
      DragCursor = crSQLWait
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 16711808
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnEnter = editlinhaEnter
      OnExit = editlinhaExit
      OnKeyDown = editlinhaKeyDown
      OnKeyPress = editlinhaKeyPress
    end
    object EditBcd: TMaskEdit
      Left = 278
      Top = 14
      Width = 172
      Height = 65
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -48
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      OnEnter = editbcdEnter
      OnExit = editbcdExit
      OnKeyPress = editbcdKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 577
    Width = 481
    Height = 19
    Panels = <
      item
        Width = 120
      end
      item
        Width = 300
      end>
  end
  object Panel1: TPanel
    Left = 34
    Top = 133
    Width = 412
    Height = 324
    Cursor = crSQLWait
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clWindow
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Candara'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 31
      Top = 3
      Width = 46
      Height = 14
      Caption = '&P. F. Atual'
      FocusControl = editpfatual
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 112
      Top = 2
      Width = 60
      Height = 14
      Caption = 'P. &F. Anterior'
      FocusControl = editpfanterior
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 225
      Top = 2
      Width = 59
      Height = 14
      Caption = 'E&scola Atual'
      FocusControl = editescolaratual
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 299
      Top = 2
      Width = 77
      Height = 14
      Caption = 'Esc&olar Anterior'
      FocusControl = editescolaranterior
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 31
      Top = 64
      Width = 48
      Height = 14
      Caption = '&V. T. Atual'
      FocusControl = editvtatual
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 111
      Top = 64
      Width = 62
      Height = 14
      Caption = 'V. &T. Anterior'
      FocusControl = editvtanterior
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 241
      Top = 64
      Width = 24
      Height = 14
      Caption = '&Livre'
      FocusControl = editlivre
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 319
      Top = 64
      Width = 38
      Height = 14
      Caption = '&Gratuito'
      FocusControl = editgratuidade
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 27
      Top = 130
      Width = 56
      Height = 14
      Caption = 'V.&Esp.Atual'
      FocusControl = editveatual
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 118
      Top = 130
      Width = 48
      Height = 14
      Caption = 'V.Esp.A&nt'
      FocusControl = editveanterior
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 226
      Top = 130
      Width = 59
      Height = 14
      Caption = 'Est. Grat&uito'
      FocusControl = editegratuito
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 261
      Top = 198
      Width = 93
      Height = 14
      Caption = 'Total Transportado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edittotal: TDBText
      Left = 257
      Top = 272
      Width = 147
      Height = 42
      Alignment = taCenter
      Color = 13361867
      DataField = 'TOTALDINHEIRO'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -32
      Font.Name = 'Candara'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 82
      Top = 193
      Width = 55
      Height = 14
      Caption = 'Liq. &Integral'
      FocusControl = editpagante
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 39
      Top = 256
      Width = 67
      Height = 14
      Caption = 'Catraca &Inicial'
      FocusControl = editcatracainicial
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 160
      Top = 256
      Width = 63
      Height = 14
      Caption = 'Cat&raca Final'
      FocusControl = editcatracafinal
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 302
      Top = 258
      Width = 66
      Height = 14
      Caption = 'Total em R$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editptotal: TDBText
      Left = 248
      Top = 212
      Width = 133
      Height = 39
      Alignment = taCenter
      Color = clWindow
      DataField = 'PTOTAL'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -32
      Font.Name = 'Candara'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label23: TLabel
      Left = 164
      Top = 193
      Width = 66
      Height = 14
      Caption = 'Liq Des&conto:'
      FocusControl = EditDesconto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 321
      Top = 130
      Width = 35
      Height = 14
      Caption = 'IDO&SO:'
      FocusControl = EditIdoso
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 323
      Top = 118
      Width = 57
      Height = 14
      Caption = 'Qt. Viagens'
      FocusControl = eDITvIAGEM
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object editpfatual: TDBEdit
      Left = 18
      Top = 17
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      BiDiMode = bdRightToLeftReadingOnly
      Ctl3D = False
      DataField = 'PFATUAL'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = editpfatualKeyDown
      OnKeyPress = editpfatualKeyPress
    end
    object editpfanterior: TDBEdit
      Left = 104
      Top = 17
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      Ctl3D = False
      DataField = 'PFANTERIOR'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnKeyDown = editpfanteriorKeyDown
      OnKeyPress = editpfanteriorKeyPress
    end
    object editescolaratual: TDBEdit
      Left = 214
      Top = 17
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'PEATUAL'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      OnKeyDown = editescolaratualKeyDown
      OnKeyPress = editescolaratualKeyPress
    end
    object editescolaranterior: TDBEdit
      Left = 298
      Top = 17
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'PEANTERIOR'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 3
      OnKeyDown = editescolaranteriorKeyDown
      OnKeyPress = editescolaranteriorKeyPress
    end
    object editvtatual: TDBEdit
      Left = 18
      Top = 79
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'VTEATUAL'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 4
      OnKeyDown = editvtatualKeyDown
      OnKeyPress = editvtatualKeyPress
    end
    object editvtanterior: TDBEdit
      Left = 104
      Top = 79
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'VTEANTERIOR'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 5
      OnKeyDown = editvtanteriorKeyDown
      OnKeyPress = editvtanteriorKeyPress
    end
    object editlivre: TDBEdit
      Left = 214
      Top = 78
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'LIVRE'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 6
      OnKeyDown = editlivreKeyDown
      OnKeyPress = editlivreKeyPress
    end
    object editgratuidade: TDBEdit
      Left = 298
      Top = 78
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'GRATUITO'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 7
      OnKeyDown = editgratuidadeKeyDown
      OnKeyPress = editgratuidadeKeyPress
    end
    object editveatual: TDBEdit
      Left = 18
      Top = 144
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'VEATUAL'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = 16711808
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 8
      OnKeyDown = editveatualKeyDown
      OnKeyPress = editveatualKeyPress
    end
    object editveanterior: TDBEdit
      Left = 104
      Top = 144
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'VEANTERIOR'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = 16711808
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 9
      OnKeyDown = editveanteriorKeyDown
      OnKeyPress = editveanteriorKeyPress
    end
    object editegratuito: TDBEdit
      Left = 214
      Top = 144
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'EGRATUITO'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = 16711808
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 10
      OnKeyDown = editegratuitoKeyDown
      OnKeyPress = editegratuitoKeyPress
    end
    object editpagante: TDBEdit
      Left = 68
      Top = 207
      Width = 80
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'PDINHEIRO'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 12
      OnKeyDown = editpaganteKeyDown
      OnKeyPress = editpaganteKeyPress
    end
    object editcatracainicial: TDBEdit
      Left = 425
      Top = 227
      Width = 81
      Height = 39
      Cursor = crHourGlass
      DataField = 'CATRACAINICIAL'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Visible = False
      OnKeyPress = editcatracainicialKeyPress
    end
    object editcatracafinal: TDBEdit
      Left = 142
      Top = 269
      Width = 101
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'CATRACAFINAL'
      DataSource = dtmovimento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 16
      OnKeyDown = editcatracafinalKeyDown
      OnKeyPress = editcatracafinalKeyPress
    end
    object EditCatracaInicial2: TEdit
      Left = 20
      Top = 269
      Width = 101
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 15
      OnKeyDown = EditCatracaInicial2KeyDown
      OnKeyPress = EditCatracaInicial2KeyPress
    end
    object EditDesconto: TDBEdit
      Left = 156
      Top = 207
      Width = 80
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'DESCONTO'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 13
      OnKeyDown = EditDescontoKeyDown
      OnKeyPress = EditDescontoKeyPress
    end
    object EditIdoso: TDBEdit
      Left = 298
      Top = 144
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSize = False
      DataField = 'IDOSO'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = 16711808
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 11
      OnKeyDown = EditIdosoKeyDown
      OnKeyPress = editegratuitoKeyPress
    end
    object eDITvIAGEM: TDBEdit
      Left = 312
      Top = 133
      Width = 79
      Height = 48
      Cursor = crHourGlass
      AutoSelect = False
      AutoSize = False
      DataField = 'VIAGEM'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -35
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      Visible = False
      OnKeyDown = editveanteriorKeyDown
      OnKeyPress = editveanteriorKeyPress
    end
  end
  object btsalva: TBitBtn
    Left = 94
    Top = 518
    Width = 99
    Height = 57
    Hint = 'Salva o movimento, se todos os campos estiverem preenchidos'
    DoubleBuffered = True
    Enabled = False
    Glyph.Data = {
      161F0000424D161F000000000000360000002800000032000000340000000100
      180000000000E01E000000000000000000000000000000000000F8F8F8F8F8F8
      F4F4F4FFFFFFFFFFFFFDFDFDF3F3F3F4F4F4F9F9F9FFFFFFFFFFFFFFFFFFFAFA
      FAFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9F8F8F8FAFAFAF2F2F2FFFFFFFEFEFEFAFAFAF1F1F1FFFF
      FFFDFDFDF7F7F7FDFDFDFEFEFEFFFFFF0000FFFFFFFFFFFFFEFEFEF7F7F7FFFF
      FFF5F5F5FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFCFCFCFCFCFCFDFDFDFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFB
      FBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFC
      FCFCFEFEFEFFFFFF0000FEFEFEFBFBFBF4F4F4FFFFFFFFFFFFC7C7C7C9C9C9BE
      BEBED1D1D1EAEAEADCDCDCE5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
      E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
      E4E4E4E4E4E4E4EBEBEBE5E5E5E1E1E1E2E2E2E9E9E9ECECECEBEBEBE8E8E8DF
      DFDFD6D6D6E1E1E1CFCFCFCBCBCBD2D2D2C8C8C8FAFAFAF9F9F9FEFEFEFFFFFF
      0000FAFAFAFFFFFFFFFFFFFEFEFEA1A1A11919190000000707076C6C6CD2D2D2
      BFBFBFBFBFBFBCBCBCBEBEBEC4C4C4C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1
      C1C1C1C1C1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B9
      B9B9BCBCBCBFBFBFC1C1C1BFBFBFBABABAB5B5B5B2B2B2BABABACBCBCBBDBDBD
      3030300000000B0B0B1A1A1A5C5C5CF3F3F3FCFCFCFFFFFF0000FFFFFFFFFFFF
      FDFDFDEFEFEF606060030303090909000000777777FFFFFFEAEAEAF4F4F4F5F5
      F5F0F0F0F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F1
      F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1ECECECF3F3F3F3F3F3
      E4E4E4D0D0D0CACACAD7D7D7E7E7E7B3B3B3E7E7E7FCFCFC5252520000000202
      02000000333333ECECECF9F9F9FFFFFF0000FFFFFFFBFBFBFFFFFFFFFFFF4646
      46000000000000101010878787FFFFFFE0E0E0F3F3F3F4F4F4EBEBEBEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDED
      EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDF1F1F1F2F2F2ECECECDCDCDCCCCCCCCDCD
      CDDEDEDEF0F0F0E0E0E0EEEEEEE6E6E62B2B2B0000001414140000002B2B2BE6
      E6E6F7F7F7FFFFFF0000FFFFFFF9F9F9F7F7F7FDFDFD3E3E3E505050A4A4A40D
      0D0D828282FFFFFFCFCFCFD5D5D5C8C8C8C3C3C3D7D7D7CECECECECECECECECE
      CECECECECECECECECECECECECECECECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
      CDCDCDCDCDCDCDCACACACACACACDCDCDD1D1D1D5D5D5D5D5D5D1D1D1CCCCCCC5
      C5C5E7E7E7EFEFEF3F3F3F4A4A4A959595474747212121E2E2E2F5F5F5FFFFFF
      0000FCFCFCFFFFFFFFFFFFECECEC535353717171FFFFFF1C1C1C939393FAFAFA
      EDEDEDF4F4F4F9F9F9F7F7F7F6F6F6F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F2F2
      F2F1F1F1F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F0
      F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F7F7F7F6F6F6EAEAEA
      3030307E7E7EF8F8F85C5C5C1D1D1DE2E2E2FEFEFEFDFDFD0000FCFCFCF7F7F7
      FFFFFFFFFFFF5454541818184848480D0D0D8A8A8AF7F7F7E4E4E4E1E1E1DEDE
      DEDBDBDBDBDBDBE1E1E1E1E1E1E1E1E1E0E0E0E0E0E0E0E0E0DFDFDFDFDFDFE0
      E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0DEDEDEDEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDED7D7D7E7E7E7F4F4F43636362424245757
      570909092C2C2CE2E2E2FEFEFEFDFDFD0000FFFFFFFCFCFCFFFFFFFFFFFF5353
      53000000000000000000808080F8F8F8E8E8E8E2E2E2DFDFDFE1E1E1E5E5E5DF
      DFDFDFDFDFDEDEDEDEDEDEDEDEDEDDDDDDDDDDDDDDDDDDDEDEDEDEDEDEDEDEDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDDDDDDEAEAEAF5F5F5404040000000000000000000333333E2
      E2E2FEFEFEFDFDFD0000FFFFFFFFFFFFFFFFFFFAFAFA5454540303030F0F0F04
      0404919191FFFFFFFAFAFAF5F5F5F5F5F5F8F8F8FCFCFCF9F9F9F9F9F9F9F9F9
      F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
      F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7EA
      EAEAF2F2F2EEEEEE4545450000000D0D0D0707072D2D2DE2E2E2FEFEFEFDFDFD
      0000FFFFFFFBFBFBFFFFFFFFFFFF545454000000020202000000838383F5F5F5
      DEDEDED8D8D8D7D7D7D5D5D5D4D4D4D7D7D7D6D6D6D6D6D6D6D6D6D5D5D5D5D5
      D5D5D5D5D4D4D4D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5
      D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5DEDEDEEDEDEDECECEC
      4646460000000808080D0D0D2B2B2BE2E2E2FEFEFEFDFDFD0000FCFCFCF8F8F8
      FFFFFFFFFFFF515151000000050505090909909090FFFFFFECECECEBEBEBF1F1
      F1F1F1F1EEEEEEEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEAEAEAE9E9E9EA
      EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
      EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE8E8E8EDEDEDEDEDED4B4B4B0000000000
      00000000323232E2E2E2FEFEFEFDFDFD0000FEFEFEFDFDFDFFFFFFFEFEFE5353
      530303031717170000008B8B8BFFFFFFEBEBEBEBEBEBF3F3F3F5F5F5F2F2F2F6
      F6F6F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F4F4F4F3F3F3F5F5F5F5F5F5F5F5F5
      F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
      F4F4F4F4F4F4F4F0F0F0EEEEEEEFEFEF4949490202020A0A0A000000343434E2
      E2E2FEFEFEFDFDFD0000FFFFFFFBFBFBFCFCFCFFFFFF5B5B5B00000000000000
      00008C8C8CFEFEFEE1E1E1D6D6D6D4D4D4D0D0D0CBCBCBCCCCCCCCCCCCCCCCCC
      CBCBCBCBCBCBCBCBCBCACACACACACACBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCB
      CBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBD4
      D4D4E5E5E5F3F3F33F3F3F0000001111110000002F2F2FE2E2E2FEFEFEFDFDFD
      0000FFFFFFFFFFFFFFFFFFFFFFFF5454540000000A0A0A0000008A8A8AFFFFFF
      F6F6F6F7F7F7FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFBFCFCFCF2F2F2
      414141000000080808000000333333E2E2E2FEFEFEFDFDFD0000FFFFFFFFFFFF
      FFFFFFFFFFFF5454540000000A0A0A0303038B8B8BFEFEFEE9E9E9E2E2E2E0E0
      E0DEDEDEDDDDDDE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E0
      E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
      E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0D8D8D8E4E4E4ECECEC4949490404040F0F
      0F000000272727E2E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFFFFFF5454
      540000000C0C0C000000858585F9F9F9E6E6E6E2E2E2E4E4E4E4E4E4E5E5E5E2
      E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
      E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
      E1E1E1E1E1E1E1E3E3E3EBEBEBECECEC4545450000000C0C0C0000002C2C2CE2
      E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFFFFFF5555550000000D0D0D0B
      0B0B959595FFFFFFFAFAFAFAFAFAFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF6
      F6F6F8F8F8EFEFEF3F3F3F000000080808010101343434E2E2E2FEFEFEFDFDFD
      0000FFFFFFFEFEFEFFFFFFFFFFFF5555550101010F0F0F000000858585F8F8F8
      E3E3E3DDDDDDDCDCDCDBDBDBDADADADFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDE
      DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEE4E4E4ECECECEDEDED
      4646460000000E0E0E0000002D2D2DE2E2E2FEFEFEFDFDFD0000FFFFFFFEFEFE
      FFFFFFFEFEFE5656560303031010100404048E8E8EFFFFFFF2F2F2EEEEEEEEEE
      EEEDEDEDECECECEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDED
      EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE7E7E7EFEFEFF0F0F04848480202020E0E
      0E0000002D2D2DE2E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFEFEFE5656
      56030303111111000000878787FFFFFFF8F8F8FAFAFAFEFEFEFFFFFFFFFFFFFC
      FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
      FBFBFBFBFBFBFBFEFEFEFFFFFFF6F6F64646460000000B0B0B020202333333E2
      E2E2FEFEFEFDFDFD0000FFFFFFFEFEFEFFFFFFFEFEFE56565604040412121203
      03038F8F8FFFFFFFFDFDFDFDFDFDFEFEFEFDFDFDFCFCFCFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFC
      FCFCFEFEFEF8F8F84949490000000D0D0D020202323232E2E2E2FEFEFEFDFDFD
      0000FCFCFCFFFFFFFEFEFEFEFEFE5858580000001313130C0C0C848484E6E6E6
      EBEBEBD6D6D6DFDFDFE7E7E7DCDCDCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDEDEDEDEDEDEDEDEDEDFDFDFDFDFDFE0E0E0E0E0E0E1E1E1E2
      E2E2DFDFDFDBDBDBD9D9D9D8D8D8DADADADCDCDCDDDDDDD7D7D7E9E9E9C5C5C5
      5151510303030A0A0A000000393939E4E4E4FFFFFFFDFDFD0000FCFCFCFFFFFF
      FEFEFEFEFEFE5858580000001313130505052828283B3B3B3232322F2F2F3B3B
      3B39393928282833333333333333333333333333333333333333333333333333
      33333333333434343434343535353535353535353636362B2B2B3333333A3A3A
      3B3B3B3838383636363838383B3B3B2727274848483333331111110505051616
      160C0C0C272727E4E4E4FFFFFFFDFDFD0000FCFCFCFFFFFFFFFFFFFEFEFE5959
      590000001414142626262727272626262222222121212121212121211E1E1E21
      2121212121212121212121212121212121212121212121212121212121212121
      2121212222222222222222222222222727273C3C3C5555556464646969696D6D
      6D7676767F7F7F7D7D7D7F7F7F3535351515150B0B0B0F0F0F0F0F0F212121E4
      E4E4FFFFFFFDFDFD0000FCFCFCFFFFFFFFFFFFFFFFFF59595900000015151510
      10101D1D1D2E2E2E3737373232322B2B2B2E2E2E363636313131313131313131
      3131313131313131313131313131313030303030303030303030303030303030
      303030303030301F1F1F3030304242424A4A4A4747474545454848484E4E4E45
      45454848481B1B1B0E0E0E0B0B0B1010100F0F0F343434E4E4E4FFFFFFFDFDFD
      0000FCFCFCFFFFFFFFFFFFFFFFFF5A5A5A0000001616161818181B1B1B1E1E1E
      2020202323232626262424241F1F1F2323232323232323232323232323232323
      2323232323232322222222222222222222222221212121212121212121212121
      21212525252727272525251E1E1E1818181616161616161717171A1A1A1B1B1B
      141414121212181818000000313131E4E4E4FFFFFFFDFDFD0000FCFCFCFFFFFF
      FFFFFFFFFFFF5B5B5B0000001717171515151616161313130D0D0D0F0F0F1414
      141212120B0B0B10101010101010101010101010101010101010101010101010
      10101010100F0F0F0F0F0F0F0F0F0F0F0F0E0E0E0E0E0E1111110F0F0F0D0D0D
      0D0D0D0F0F0F1212121313131313131212120909090E0E0E0606060D0D0D2020
      20000000383838E4E4E4FFFFFFFDFDFD0000FBFBFBFFFFFFFFFFFFFFFFFF5B5B
      5B0000001717171212121717171E1E1E1F1F1F1B1B1B1818181A1A1A1E1E1E19
      1919191919191919191919191919191919191919191919191919191919191919
      1818181818181717171717171717171919191717171414141313131313131313
      131313131212121010101717171414141919191F1F1F2222220303032B2B2BE4
      E4E4FFFFFFFDFDFD0000FCFCFCFFFFFFFFFFFFFFFFFF5C5C5C01010118181821
      21211515151111111A1A1A1C1C1C1515151414141B1B1B121212121212121212
      1212121212121212121212121212121414141313131313131313131212121111
      111111111111111010101313131616161818181818181818181818181919190E
      0E0E2525250C0C0C1414141414140D0D0D0D0D0D313131E4E4E4FFFFFFFEFEFE
      0000FDFDFDFFFFFFFEFEFEFFFFFF5E5E5E040404191919151515212121252525
      2626262626261F1F1F2222221717171616162828282E2E2E2020201717171E1E
      1E2727272828281F1F1F2424241E1E1E2525251818181E1E1E2A2A2A2323232A
      2A2A1C1C1C1111111414141616161E1E1E1515151818181717171B1B1B141414
      1919191515151919190A0A0A313131E3E3E3FEFEFEFDFDFD0000FDFDFDFFFFFF
      FEFEFEFFFFFF5E5E5E0505051A1A1A1B1B1B2121212121212323232121211B1B
      1B2020202525258686869B9B9BAEAEAEB3B3B3B1B1B1B0B0B0AAAAAAA2A2A2B1
      B1B1ACACACB8B8B8BDBDBDC7C7C7C7C7C7CACACAC8C8C8BBBBBBA8A8A86D6D6D
      1818180D0D0D1C1C1C1B1B1B1515151818181B1B1B1515151919191515151919
      190A0A0A313131E3E3E3FEFEFEFDFDFD0000FDFDFDFFFFFFFEFEFEFFFFFF5F5F
      5F0606061B1B1B2222222121211C1C1C2020201C1C1C1616161C1C1C383838F2
      F2F2EFEFEFEBEBEBEBEBEBF0F0F0F7F7F7FEFEFEFFFFFFFFFFFFE8E8E8C5C5C5
      5656564141413C3C3C424242454545DBDBDBFCFCFCCBCBCB2626260A0A0A1313
      131D1D1D1A1A1A1919191C1C1C1616161A1A1A1616161A1A1A0B0B0B323232E3
      E3E3FEFEFEFDFDFD0000FEFEFEFFFFFFFDFDFDFFFFFF5F5F5F0707071C1C1C26
      2626202020191919202020191919151515161616484848E9E9E9E0E0E0D9D9D9
      D6D6D6CCCCCCB6B6B69D9D9D8E8E8E7E7E7E9D9D9DAAAAAA1414140F0F0F1919
      19111111000000A7A7A7F8F8F8EAEAEA2727271313131515151D1D1D1919191A
      1A1A1D1D1D1717171B1B1B1717171B1B1B0C0C0C333333E3E3E3FEFEFEFDFDFD
      0000FEFEFEFFFFFFFDFDFDFFFFFF6060600808081E1E1E252525202020181818
      2323231B1B1B1A1A1A0F0F0F4F4F4FE3E3E3DDDDDDDDDDDDE1E1E1D9D9D9BDBD
      BD9A9A9A828282BCBCBCD8D8D8C2C2C20000000606061E1E1E2222220C0C0CAF
      AFAFF4F4F4E3E3E31919191C1C1C2020201C1C1C1313131B1B1B1E1E1E181818
      1C1C1C1818181C1C1C0D0D0D353535E3E3E3FEFEFEFDFDFD0000FEFEFEFFFFFF
      FDFDFDFFFFFF6060600909092020202424242222221919192424241C1C1C2222
      22090909515151F5F5F5EAEAEADFDFDFDDDDDDE5E5E5EDEDEDEEEEEEECECECEB
      EBEBFAFAFAC6C6C6141414252525252525181818010101B2B2B2EFEFEFE5E5E5
      1E1E1E1818181E1E1E1919191D1D1D1C1C1C2020201919191E1E1E1A1A1A1E1E
      1E0F0F0F363636E3E3E3FEFEFEFDFDFD0000FEFEFEFFFFFFFDFDFDFFFFFF6060
      600A0A0A2121212424242525251A1A1A2222221B1B1B292929050505505050E1
      E1E1DBDBDBCDCDCDBEBEBEBCBCBCC5C5C5C7C7C7C2C2C2BABABAE1E1E1A2A2A2
      0A0A0A2222221F1F1F181818050505A6A6A6E7E7E7E9E9E92929291010101C1C
      1C1818182424241D1D1D2020201A1A1A1F1F1F1A1A1A1F1F1F101010373737E3
      E3E3FEFEFEFDFDFD0000FEFEFEFFFFFFFCFCFCFFFFFF6161610A0A0A21212124
      24242727271A1A1A2020201A1A1A2D2D2D0505054F4F4FECECECE7E7E7D1D1D1
      B2B2B2A5A5A5ABABABADADADA6A6A6A0A0A0F1F1F1B3B3B31616161F1F1F1F1F
      1F1F1F1F070707C3C3C3F1F1F1E4E4E42626260D0D0D2828281A1A1A1919191E
      1E1E2121211B1B1B1F1F1F1B1B1B1F1F1F101010373737E3E3E3FEFEFEFDFDFD
      0000FFFFFFFFFFFFFFFFFFFFFFFF5A5A5A0F0F0F2222222A2A2A1D1D1D212121
      232323191919242424161616494949E4E4E4E5E5E5B3B3B3A1A1A1818181D4D4
      D4C8C8C8767676878787D1D1D1BABABA0D0D0D1B1B1B272727242424040404B1
      B1B1EEEEEEE6E6E62525251E1E1E2222221A1A1A2222221F1F1F1E1E1E202020
      1B1B1B2222221B1B1B121212353535E5E5E5FDFDFDFFFFFF0000FFFFFFFEFEFE
      FFFFFFFFFFFF5C5C5C1111112525252A2A2A2323232424242424242020202626
      261313134B4B4BEDEDEDEAEAEAC7C7C7A9A9A98A8A8ABCBCBCB3B3B3949494B9
      B9B9D1D1D1ACACAC2222221C1C1C1919191B1B1B131313B1B1B1EBEBEBE2E2E2
      2121211C1C1C2828282222222525251D1D1D2222222727271F1F1F2323231C1C
      1C151515383838E3E3E3FCFCFCFFFFFF0000FFFFFFFCFCFCFEFEFEFFFFFF5F5F
      5F1414142929292828282929292424242222222626262727270E0E0E515151FE
      FEFEEBEBEBF6F6F6F1F1F1EFEFEFFEFEFEEDEDEDF1F1F1FDFDFDFCFCFCB6B6B6
      161616181818303030282828000000B1B1B1EAEAEAE1E1E11F1F1F1919192B2B
      2B2828282525252020202626262929291C1C1C1F1F1F1C1C1C161616373737E0
      E0E0FBFBFBFFFFFF0000FFFFFFFBFBFBFDFDFDFFFFFF6161611717172A2A2A26
      26262C2C2C2121211D1D1D2727272626260C0C0C5A5A5A9A9A9A3B3B3B434343
      3E3E3E4242424444443E3E3E484848262626A5A5A5C3C3C31515151212121919
      192B2B2B121212B1B1B1E9E9E9E5E5E523232317171728282829292923232322
      22222424242323231919192222222424241C1C1C383838E0E0E0FAFAFAFFFFFF
      0000FFFFFFFBFBFBFDFDFDFFFFFF6262621616162828282828282B2B2B1F1F1F
      1C1C1C262626272727111111646464AAAAAA2626263B3B3B4848484949494C4C
      4C5656564F4F4F1D1D1DA8A8A8CECECE1B1B1B3F3F3F1D1D1D191919050505B1
      B1B1E5E5E5E8E8E82B2B2B161616242424292929252525252525222222212121
      1E1E1E2C2C2C2929291B1B1B353535E5E5E5FBFBFBFFFFFF0000FFFFFFFBFBFB
      FEFEFEFFFFFF6161611313132323232C2C2C2929292121212121212525252626
      261616166666669999993939396161617C7C7C7676767474748282826F6F6F33
      3333A7A7A7B0B0B00000002626261A1A1A2020200D0D0DB9B9B9E0E0E0E5E5E5
      3030301717172020202828282727272B2B2B2525252626262222222626261919
      191414143F3F3FEDEDEDFDFDFDFFFFFF0000FFFFFFFCFCFCFFFFFFFFFFFF6060
      600F0F0F1C1C1C2D2D2D2121212323232828282020202121211515155C5C5C6B
      6B6B3838383030302B2B2B1E1E1E1616162222221A1A1A0C0C0C999999D3D3D3
      3C3C3C1717170909093232324F4F4FD0D0D0E3E3E3DFDFDF3030301717171B1B
      1B2222222121212626262222222525251E1E1E1818181515153B3B3B949494F6
      F6F6FFFFFFFEFEFE0000FFFFFFFDFCFEFFFFFFFFFEFF5F5F5F0C0B0D1818182A
      2A2A1A1A1A2222222B2B2B1B1B1B1A1A1A1010104F4F4FEEEEEEF1F2F0DADBD9
      DADBD9ECEDEBEAEBE9E9EAE8E6E6E6E4E4E4E7E7E7F4F1F3DBDBDBE8E5E7F1F1
      F1F6F3F5F8F8F8E9E6E8E9E9E9DDDADC2E2E2E1815171717171D1A1C18181816
      16161315151B1D1D151717151515272929828282FFFFFFFCFCFCFFFFFEFDFDFD
      0000FFFEFFF5F4F8FCFBFDFFFEFFABAAAC58575B5D5C5E464646A4A4A4FFFFFF
      FEFEFEA9A9A95F5F5F616260888987E9EAE8E9EAE6E8E9E5E7E8E4E6E7E3E5E6
      E2E4E5E1E3E4E2E0DDDFE1DEE0E4DEE3E3E0E2E7E1E6E6E3E5EAE4E9E8E5E7EB
      E5EAF3F0F2FFFDFFE3E0E29F999E7774767D777C7D7A7C7A7C7C676C6B5C615F
      4D52505A5D5BAAAFADF7FAF8FDFFFEFAFDFBFBFFFAFCFFFD0000FFFEFFF7F6FA
      F8F7FBFFFEFFFBFAFEE3E2E6F5F4F6F9F9F9F6F6F6FAFAFAFFFFFFFFFFFFFFFF
      FFF6F7F5F0F1EFFAFBF7F9FAF6F9FAF6F8FAF4F7F8F4F7F9F3F6F7F3F6F7F3F6
      F4F4F8F3F5F9F4F6FAF5F7FBF6F8FCF7F9FDF8FAFDF8FAFBF6F8FDF8FAFFFEFF
      FFFEFFFBF6F8F9F4F6FDF8FAFAF7F9FBFFFFF8FEFDFBFFFEF0F5F3E0E5E3FAFF
      FDFBFFFEF7FCFAFAFDFBFBFFFAFCFFFB0000FFFEFFFFFEFFF5F4F6FFFEFFFFFE
      FFFFFEFFFFFEFFFFFFFFFAFAFAF4F4F4F4F4F4F7F7F7FAFAFAFFFFFEFFFFFEFF
      FFFEFFFFFEFFFFFEFFFFFCFFFFFEFFFFFCFFFFFEFFFFFEFFFFFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F8FCFAFAFFFFFFFFFF
      FFFFFFFFFFFFFFFCFEFEF6FBFAFBFFFFFBFFFFF4F9F8FAFFFEFDFFFFEBEEECFA
      FDFBFBFEFCFCFFFD0000FEFDFFFFFEFFFFFEFFFDFCFEFFFEFFFDFCFEEFEEF0FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF8F9F7F9FAF8FDFEFCFDFEFCFDFDFD
      FEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFDFEFCFDFEFAFFFEFAFDFEFAFFFEFAFDFE
      FAFFFEFAFDFEFAFBFAF6FFFFFCF9F8F4F1F2EEFEFDF9F8F9F5F3F2EEFCFDFBFD
      FFFFF5FAF9F8FDFCFAFFFEF3F8F7F7FCFBFDFFFFFDFFFFFBFDFDFCFFFDFDFFFF
      0000FBFAFCFFFEFFFFFEFFFCFBFDFEFDFFFFFEFFFFFEFFFBFBFBFBFCFAFBFBFB
      FAFAFAFBFBFBFDFDFDFBFBFBF9F9F9FDFDFDFDFDFDFEFDFFFFFEFFFFFEFFFFFE
      FFFFFEFFFFFFFFFFFFFCFDFFFBFFFFFBFCFFFAFEFFFAFCFFFAFDFFF9FBFFF9F6
      F8F2FDFFFBFFFFFBFCFFFAFFFFFBFCFFFAFBFDF7FDFFFCFDFFFFF9FBFCFBFDFD
      FDFFFFFDFFFFF7F9FAF8FAFBF9FBFCFBFDFEFCFEFEFDFFFF0000}
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btsalvaClick
  end
  object BitBtn2: TBitBtn
    Left = 207
    Top = 518
    Width = 99
    Height = 57
    Cursor = crHandPoint
    Hint = 'Digitar outro Movimento'
    DoubleBuffered = True
    Glyph.Data = {
      36240000424D3624000000000000360000002800000030000000300000000100
      20000000000000240000C40E0000C40E00000000000000000000000000000000
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
      0000CFB342FFCBB34BFFBCA13EFFB69F4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DAB9
      45FFEED765FFEFE077FFDCC485FFCCC165FFB3983DFF967726FF8D7335FF7569
      51FF747177FF7E7E88FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAB945FFEED7
      65FFFAE478FFFAE478FFF5E48AFFE9D39AFFD5C591FFB7A873FF96874EFF7665
      2EFF624F29FF584B3FFF686269FF7E7E88FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DAB945FFEED765FFFAE4
      78FFFAE478FFFAE478FFEFE077FFDACA6AFFCCC165FF94AC63FF68A735FF6AAC
      2DFF84A959FF625637FF5F4C27FF625637FF74706FFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAB945FFEED05CFFFAE478FFFAE4
      78FFFAE478FFFAE478FFDACA6AFFB7AE50FF77AB2BFF5DBA24FF65BD32FF65BD
      32FF5FC01FFF629427FF756951FF75683AFF755E27FF75683AFF8B8475FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6C993FFE9C553FFF2D469FFFAE478FFFAE4
      78FFFAE478FFE7D377FFBFB95BFF68AA1AFF5DBA24FF65BD32FF73C23DFF74CA
      49FF5FC01FFF4CAA0BFF7B835EFF8B8475FF998459FF8D7335FF8E7127FF8577
      4CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DAB945FFF2D469FFFAE478FFFAE478FFFAE4
      78FFE7D377FFCCC165FF68AA1AFF63B927FF6AC337FF74CA49FF7BD056FF78CE
      51FF6AC337FF4FB109FF688B2CFF8D8062FF9F9379FFB3A68BFFC5A864FFAC92
      34FF967726FF8A7655FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6C993FFE9C553FFF8D574FFFAE478FFFAE478FFE7D3
      77FFCCC165FF77AB2BFF5DBA24FF65BD32FF74CA49FF7BD056FF7BD056FF7BD0
      56FF74CA49FF58B818FF57A514FF85774CFF998459FFB7A873FFD5C591FFD5C5
      91FFCAB768FFAC9234FF967726FF8A7E61FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DAB455FFEED05CFFFAE478FFFAE478FFF8D574FFDACA
      6AFF77AB2BFF58B818FF6AC337FF74CA49FF81D45CFF7BD056FF7BD056FF7BD0
      56FF78CE51FF5DBA24FF4FB109FF7A7845FF998459FFB09C59FFCCC165FFE6C7
      87FFE9D39AFFE6C993FFCAB768FFA78528FF8E7127FF8B8475FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2B544FFF8D574FFFAE478FFF6D786FFE7D377FF81AC
      2CFF5DBA24FF65BD32FF74CA49FF78CE51FF78CE51FF81D45CFF78CE51FF7BD0
      56FF7BD056FF6AC337FF4FB109FF688B2CFF96874EFFAA935CFFBBA564FFCCC1
      65FFE7D377FFF6D786FFECD6A5FFE6C993FFC4A858FFA78528FF8D7335FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9D39AFFE9C553FFF6D786FFFAE478FFE7D377FFA3B645FF58B8
      18FF65BD32FF74CA49FF7BD056FF81D45CFF78CE51FF7BD056FF7BD056FF7BD0
      56FF7BD056FF74CA49FF58B818FF57A514FF85774CFF998459FFB09C59FFC5A8
      64FFE7C56CFFF2D469FFF8D574FFF5E48AFFECD6A5FFDCC485FFBC9F4CFF9677
      26FF927543FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAB455FFF6C96AFFFAE478FFF8D574FFCCC165FF57A514FF5DBA
      24FF74CA49FF78CE51FF7BD056FF78CE51FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF78CE51FF5FC026FF4CAA0BFF728539FF8A7655FF998459FFBBA5
      64FFD6B768FFEAC972FFF8D574FFF8D574FFFAE478FFF5D898FFECD6A5FFD8B6
      77FFB3983DFF967726FF8A7655FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFAF41FFF2D469FFF5E48AFFE7D377FF81AC2CFF58B818FF6AC3
      37FF78CE51FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF6DC841FF58B818FF57A514FF8A7655FF96874EFFAA93
      5CFFC5A864FFD6B768FFEAC972FFF2D469FFF8D574FFF8D574FFF6D786FFF5D8
      98FFE9D39AFFCCB671FFAC8C31FF977735FF998C77FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFAF41FFEBD381FFF8E5BAFFBFB95BFF57A514FF5DBA24FF78CE
      51FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF5FC026FF4FB109FF629427FF8A7655FF9984
      59FFB09C59FFC5A864FFE7C56CFFF8D574FFF8D574FFF8D574FFF8D574FFF8D5
      74FFF5E48AFFF2D5A2FFE6C993FFC4A858FFA77B25FF927543FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAB455FFEBD381FFE9E6D7FF6AAC2DFF58B818FF6AC337FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF74CA49FF5FC01FFF4CAA0BFF7A7845FF8A76
      55FF998459FFB99863FFCAB768FFE5B66DFFF6C96AFFF8D574FFF8D574FFF8D5
      74FFF8D574FFF8D574FFF5D898FFECD6A5FFDCC485FFB79440FF977735FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DAB455FFA9C67CFF51AD0CFF6AC337FF74CA49FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF6AC337FF58B818FF57A514FF8577
      4CFF8A7655FFAC8A60FFB99863FFD6B768FFE7C56CFFF8C871FFF8D574FFF8C8
      71FFF8D574FFF8C871FFF8D574FFF8D574FFF5D898FFD6B768FFA77B25FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B09C59FF57A514FF5DBA24FF6DC841FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF81D45CFF7BD056FF7BD056FF7BD056FF78CE51FF64C22AFF58B818FF57A5
      14FF8A7655FF998459FFAC8A60FFBBA564FFE5B66DFFE7C56CFFF8C871FFF8D5
      74FFF8C871FFF8D574FFF8C871FFF8C871FFF6D786FFE6C787FFA77B25FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000077A45AFF58B818FF65BD32FF78CE51FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF81D45CFFAFE9
      93FFD8F6C3FFA4EA85FF81D45CFF7BD056FF7BD056FF78CE51FF5FC026FF52B4
      0DFF6A8830FF8A7655FF977659FFB78C62FFC5A864FFE5B66DFFF8C871FFF8C8
      71FFF8C871FFF8C871FFF8D574FFF8C871FFF8C871FFF5CA92FFB68F2FFF9984
      59FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000057A514FF63B927FF78CE51FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF90E16CFFC5F4
      ADFFCAEAB5FFA6DD85FF89D965FF7BD056FF7BD056FF7BD056FF6DC841FF5FC0
      26FF4CAA0BFF7A7845FF8A7655FF988467FFB99863FFD5A668FFE5B66DFFF8C8
      71FFF8C871FFF8C871FFF8C871FFF8C871FFF6C96AFFF5D898FFBC9F4CFF9777
      35FF000000000000000000000000000000000000000000000000000000000000
      00000000000068A543FF58B818FF6DC841FF78CE51FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF81D45CFFA1E97FFF6AC3
      37FF68A735FF5FC026FF90E16CFF7BD056FF7BD056FF7BD056FF7BD056FF6AC3
      37FF58B818FF57A514FF85774CFF8A7655FFA8865EFFB99863FFD5A668FFE8B9
      77FFF8C871FFF8C871FFF8C871FFF8C871FFF8C871FFF5CA92FFDAB455FFA568
      24FF000000000000000000000000000000000000000000000000000000000000
      0000000000004CAA0BFF5DBA24FF78CE51FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF90E16CFFA9F18BFF5DBA
      24FFA2A578FF6AAC2DFF6DC841FF90E16CFF7BD056FF7BD056FF7BD056FF78CE
      51FF64C22AFF58B818FF5E9621FF896756FF977659FFA8865EFFC69765FFE5B6
      6DFFE5B66DFFF8C871FFF8C871FFF8C871FFF8C871FFF6C784FFD8B677FFA77B
      25FF000000000000000000000000000000000000000000000000000000000000
      0000000000004CAA0BFF65BD32FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF7BD056FF89D965FFB8F49BFF7BD056FF798D
      25FFB78436FFAC8C31FF57A514FF81D45CFF89D965FF7BD056FF81D45CFF81D4
      5CFF78CE51FF5FC026FF4FB109FF6A8830FF896756FF977659FFAC8A60FFC697
      65FFE5B66DFFF6B973FFF6B973FFF8C871FFF6B973FFF8C871FFF5CA92FFB784
      36FF988467FF0000000000000000000000000000000000000000000000000000
      00000000000051AD0CFF6DC841FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF7BD056FF81D45CFFB8F49BFFAFE993FF77B73AFFBAB3
      A2FFD6CBB7FFD3BA8DFF8C991CFF63B927FF90E16CFF7BD056FF7BD056FF7BD0
      56FF78CE51FF6DC841FF5FC01FFF4FB109FF7A7845FF8C6A63FF977659FFB78C
      62FFC69765FFE5B66DFFF6B973FFF6B973FFF8C871FFF6B973FFF5CA92FFB794
      40FF927543FF0000000000000000000000000000000000000000000000000000
      00000000000058B818FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF7BD056FF81D45CFFB8F49BFFD8F6C3FF74CA49FFA7BB94FFD6D2
      C4FFE9E6D7FFD8B677FFDB9A46FF68AA1AFF74CA49FF90E16CFF7BD056FF7BD0
      56FF81D45CFF78CE51FF6DC841FF58B818FF57A514FF7B6947FF977659FFA77B
      5DFFB99863FFDC9D67FFE5B66DFFF4B56CFFF6B973FFF6B973FFF5CA92FFD0A3
      5AFFA56824FF0000000000000000000000000000000000000000000000000000
      00000000000063B927FF90E16CFFA4EA85FF7BD056FF7BD056FF7BD056FF7BD0
      56FF7BD056FF81D45CFFBAEFA0FFE5F9D7FF86CD5BFF96B782FFD6D2C4FFE4DE
      D0FFE9E6D7FFDB9A46FFE5A35AFFC5B754FF5FC01FFF81D45CFF81D45CFF7BD0
      56FF7BD056FF7BD056FF78CE51FF64C22AFF58B818FF5E9621FF896756FF8A76
      55FFA77B5DFFB78C62FFD5A668FFE8AB70FFF6B973FFF4B56CFFF6C784FFE5B6
      6DFF9E6D1DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000065BD32FF99E678FF99E678FF81D45CFF7BD056FF7BD0
      56FF81D45CFFB8F49BFFE5F9D7FF8BCF63FF99BA74FFD6D2C4FFE4DED0FFE5F9
      D7FFE6D4BAFFDB9A46FFF4B56CFFF6C784FF89B030FF6AC337FF89D965FF7BD0
      56FF7BD056FF7BD056FF7BD056FF78CE51FF5FC026FF52B40DFF688B2CFF8967
      56FF986E60FFA77B5DFFC78C62FFDC9D67FFE7AC6CFFF4B56CFFF6B973FFE6C7
      87FFB07529FF998C77FF00000000000000000000000000000000000000000000
      000000000000000000000000000065BD32FFA9F18BFF99E678FF7BD056FF81D4
      5CFFAEF291FFE5F9D7FF81D45CFF99BA74FFCEC5B4FFE4DED0FFE5F9D7FFF3ED
      E4FFECD6A5FFE29746FFF8C871FFF6C784FFDAB455FF68AA1AFF7BD056FF89D9
      65FF7BD056FF7BD056FF7BD056FF7BD056FF6DC841FF5FC026FF4FB109FF717B
      3CFF896756FF977659FFB27C5DFFC69765FFDC9D67FFE8AB70FFF4B56CFFE6C9
      93FFB78436FF977659FF00000000000000000000000000000000000000000000
      00000000000000000000000000008DA661FF6AC337FFAEF291FFA4EA85FFB8F4
      9BFFE5F9D7FF8BCF63FF99BA74FFD6CBB7FFE4DED0FFE5F9D7FFF2ECD2FFF3ED
      E4FFE9CEA1FFE29746FFF2D5A2FFF5CA92FFF6B973FFA9AF41FF5DBA24FF89D9
      65FF7BD056FF81D45CFF7BD056FF7BD056FF7BD056FF6DC841FF5FC01FFF57A5
      14FF7A7845FF896756FF977659FFB27C5DFFC78C62FFDC9D67FFE8AB70FFF5CA
      92FFC79749FF9A6A2BFF00000000000000000000000000000000000000000000
      00000000000000000000AA9D8BFFBAB3A2FF94AC63FF6DC841FFC5F4ADFFEEFB
      E4FF98D470FF99BA74FFDED1BAFFDBEACCFFECE2C7FFF2F1D6FFF2F1D6FFF2F1
      D6FFECD6A5FFE29746FFF8E5BAFFF8E5BAFFF6B973FFF6B973FF68AA1AFF74CA
      49FF90E16CFF78CE51FF81D45CFF7BD056FF7BD056FF7BD056FF64C22AFF58B8
      18FF57A514FF7B6947FF8E5F54FFA77B5DFFB27C5DFFC78C62FFDC9D67FFE5B5
      82FFDC9D67FFA56824FF00000000000000000000000000000000000000000000
      00000000000000000000B6A995FFC5BAA8FFCBC1ADFFA9C67CFF8BCF63FF96D0
      68FFB1C781FFDED1BAFFEBDCC3FFECE2C7FFF2ECD2FFF2F1D6FFF2F1D6FFF8F3
      E9FFF0E8CBFFE29746FFF2D5A2FFFBFAF4FFF5CA92FFF6B973FFC4A858FF5DBA
      24FF99E678FF89D965FF78CE51FF81D45CFF7BD056FF7BD056FF7BD056FF64C2
      2AFF58B818FF68AA1AFF756951FF8E5F54FF996B57FFB27C5DFFC78C62FFD7A5
      78FFD7A578FFA56824FF00000000000000000000000000000000000000000000
      000000000000AEA596FFBAB3A2FFC5BAA8FFDED1BAFFE6D4BAFFDAD6AFFFE6D4
      BAFFE6D4BAFFECE2C7FFECE2C7FFECE2C7FFF0E8CBFFF2F1D6FFF2F1D6FFF2F1
      D6FFF2F1D6FFE5B582FFE5A35AFFF8F3E9FFF8F3E9FFFDCEA5FFF6B973FF96AC
      35FF6AC337FFA4EA85FF89D965FF78CE51FF7BD056FF7BD056FF7BD056FF7BD0
      56FF64C22AFF58B818FF5E9621FF80634CFF8E5F54FF996B57FFB27C5DFFC78C
      62FFD0A886FFAD7135FF977659FF000000000000000000000000000000000000
      000000000000AEA18DFFC5BAA8FFC5BAA8FFE6D4BAFFE6D4BAFFE6D4BAFFE6D4
      BAFFECE2C7FFE6D4BAFFF0E8CBFFF0E8CBFFF0E8CBFFF2F1D6FFF2ECD2FFF2F1
      D6FFEEFBE4FFF0E8CBFFE5A35AFFE8AB70FFF3EDE4FFFBFAF4FFF3EDE4FFE9CE
      A1FF77B73AFF81D45CFFA1E97FFF81D45CFF81D45CFF7BD056FF7BD056FF7BD0
      56FF78CE51FF64C22AFF58B818FF5E9621FF80634CFF8E5F54FF996B57FFB27C
      5DFFBC957EFFAB7445FF896732FF000000000000000000000000000000000000
      000000000000AEA18DFFC5BAA8FFCEC5B4FFDED1BAFFE6D4BAFFE6D4BAFFE6D4
      BAFFE6D4BAFFECE2C7FFECE2C7FFECE2C7FFF0E8CBFFF0E8CBFFF2F1D6FFF2EC
      D2FFF2F1D6FFF2F1D6FFF0E8CBFFE5A35AFFE19957FFF5CA92FFF2ECD2FFF8F3
      E9FFE5F9D7FF73C23DFF90E16CFFA9F18BFF81D45CFF7BD056FF7BD056FF7BD0
      56FF7BD056FF78CE51FF64C22AFF58B818FF5E9621FF896756FF8C6A63FF986E
      60FF996B57FF9E633FFF884F1EFF000000000000000000000000000000000000
      000000000000B6A995FFC5BAA8FFCEC5B4FFDED1BAFFE6D4BAFFE6D4BAFFE6D4
      BAFFE6D4BAFFF8E5BAFFEBDCC3FFECE2C7FFF0E8CBFFF0E8CBFFF0E8CBFFF2EC
      D2FFF2F1D6FFF2F1D6FFF2F1D6FFF2F1D6FFE6C993FFE19957FFDE8A43FFE199
      57FFE5B582FFCCB671FF63B927FF99E678FFA4EA85FF81D45CFF7BD056FF7BD0
      56FF7BD056FF7BD056FF78CE51FF64C22AFF5FC01FFF68A735FF80634CFF804A
      38FF844729FF844729FF804A38FF000000000000000000000000000000000000
      000000000000AEA18DFFC5BAA8FFCEC5B4FFE0CFB6FFE0CFB6FFE6D4BAFFE6D4
      BAFFE6D4BAFFE6D4BAFFEBDCC3FFEBDCC3FFECE2C7FFECE2C7FFF0E8CBFFF0E8
      CBFFF2ECD2FFF2F1D6FFF2F1D6FFF2F1D6FFF2F1D6FFF0E8CBFFFDCEA5FFE5B5
      82FFE19957FFDE8A43FFB68F2FFF63B927FFA1E97FFFA9F18BFF81D45CFF7BD0
      56FF7BD056FF7BD056FF7BD056FF74CA49FF64C22AFF5FC01FFF77B73AFF7568
      3AFF6F5049FF68585CFF686269FF74706FFF0000000000000000000000000000
      00000000000000000000C5BAA8FFCEC5B4FFE0CFB6FFE0CFB6FFE0CFB6FFDED1
      BAFFE6D4BAFFE6D4BAFFE6D4BAFFF8E5BAFFEBDCC3FFECE2C7FFECE2C7FFF0E8
      CBFFF0E8CBFFF2ECD2FFF2ECD2FFF2ECD2FFF2F1D6FFF2F1D6FFF2F1D6FFF2F1
      D6FFF2ECD2FFF0E8CBFFFDCEA5FFC5D28EFF6AC337FFA4EA85FFAEF291FF81D4
      5CFF7BD056FF7BD056FF7BD056FF7BD056FF78CE51FF64C22AFF64C22AFF74CA
      49FF81A572FF686269FF686269FF686269FF0000000000000000000000000000
      00000000000000000000C0B29DFFC5BAA8FFDED1BAFFDED1BAFFE0CFB6FFE0CF
      B6FFE0CFB6FFE6D4BAFFE6D4BAFFE6D4BAFFEBDCC3FFEBDCC3FFECE2C7FFECE2
      C7FFF0E8CBFFF0E8CBFFF0E8CBFFF0E8CBFFF2ECD2FFF2ECD2FFF2F1D6FFF2EC
      D2FFF2ECD2FFF2F1D6FFE5F9D7FFF2ECD2FFCCDCA2FF73C23DFFA4EA85FFB8F4
      9BFF89D965FF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF6AC337FF64C2
      2AFF5DBA24FF5B893FFF686269FF686269FF0000000000000000000000000000
      00000000000000000000AEA596FFCEC5B4FFE9E6D7FFE4DED0FFDED1BAFFE0CF
      B6FFE0CFB6FFE0CFB6FFE6D4BAFFE6D4BAFFE6D4BAFFF8E5BAFFEBDCC3FFEBDC
      C3FFECE2C7FFECE2C7FFF8E5BAFFF0E8CBFFF0E8CBFFF0E8CBFFF0E8CBFFF0E8
      CBFFF0E8CBFFF0E8CBFFF2ECD2FFF2ECD2FFF0E8CBFFCCDCA2FF73C23DFFA4EA
      85FFB8F49BFF90E16CFF7BD056FF7BD056FF7BD056FF7BD056FF7BD056FF74CA
      49FF5FC026FF51AD0CFF5C7351FF898797FF0000000000000000000000000000
      0000000000000000000000000000B6A995FFDED1BAFFF8F3E9FFF8F3E9FFE9E6
      D7FFE4DED0FFE6D4BAFFEBDCC3FFE6D4BAFFEBDCC3FFEBDCC3FFEBDCC3FFF8E5
      BAFFEBDCC3FFF0E8CBFFF0E8CBFFF2ECD2FFF2ECD2FFF2ECD2FFF2F1D6FFF8F3
      E9FFF8F3E9FFF8F3E9FFF8F3E9FFFBFAF4FFFBFAF4FFF8F3E9FFDBEACCFF74CA
      49FF99E678FFC9F6B2FFA1E97FFF7BD056FF7BD056FF7BD056FF7BD056FF7BD0
      56FF6DC841FF58B818FF5F9346FF000000000000000000000000000000000000
      000000000000000000000000000000000000B6A995FFCBC1ADFFD6D2C4FFE9E6
      D7FFF8F3E9FFFBFAF4FFFBFAF4FFFBFAF4FFF8F3E9FFF8F3E9FFF8F3E9FFF8F3
      E9FFF8F3E9FFF8F3E9FFF8F3E9FFFBFAF4FFF8F3E9FFF8F3E9FFE9E6D7FFE9E6
      D7FFE4DED0FFE6D4BAFFDED1BAFFCEC5B4FFCEC5B4FFCBC1ADFFCBC1ADFFBCB3
      9AFF7BB247FF90E16CFFD8F6C3FFBEF3A3FF90E16CFF81D45CFF7BD056FF7BD0
      56FF89D965FF6DC841FF639C46FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BAB3A2FFB6A995FFC0B2
      9DFFCBC1ADFFCBC1ADFFCEC5B4FFD6CBB7FFDED1BAFFDED1BAFFD6CBB7FFD6D2
      C4FFD6CBB7FFD6CBB7FFCEC5B4FFCEC5B4FFCBC1ADFFC5BAA8FFC5BAA8FFC0B2
      9DFFC0B29DFFC0B29DFFAEA596FFB6A995FFAEA596FFAEA596FFBAB3A2FF0000
      0000000000008EB280FF86CD5BFFD8F6C3FFE5F9D7FFC9F6B2FFA9F18BFFA4EA
      85FFC5F4ADFF78CE51FF89A583FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BAB3A2FFB6A995FFAEA596FFAEA596FFB3A68BFFAEA1
      8DFFB6A995FFB6A995FFB6A995FFBAB3A2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087B475FFA6DD85FFE5F9D7FFFBFAF4FFFBFA
      F4FFD8F6C3FF6EB244FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000096B782FF87B475FF87B4
      75FF8EB280FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000}
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn1: TBitBtn
    Left = 367
    Top = 518
    Width = 99
    Height = 56
    Cursor = crHandPoint
    DoubleBuffered = True
    Glyph.Data = {
      36240000424D3624000000000000360000002800000030000000300000000100
      20000000000000240000C40E0000C40E00000000000000000000000000000000
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
      00000000000000000000000000000000000000000000725344FF916753FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000396825FF006600FF12630CFF3E5B28FF7253
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029701BFF027A04FF039805FF018B02FF017102FF3E5B
      28FF7F5D4AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000017102FF07A00EFF07A00EFF019A01FF018B02FF0965
      06FF725344FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000645D3DFF3E5B28FF6C59
      41FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000567C36FF078B0DFF0AA314FF07A00EFF009900FF009400FF0066
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F5D4AFF465A2DFF295F1BFF096506FF026E03FF026E03FF315E
      1FFF725344FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000016A02FF0EA61DFF0FA81DFF059E08FF009900FF008000FF295F
      1BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535733FF385C
      23FF12630CFF016A02FF057B0BFF099213FF0DA01AFF0DA61AFF0CA117FF016A
      01FF4B582FFF7F5D4AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000098611FF14AD27FF11AA22FF009900FF009900FF006C00FF7264
      44FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000726444FF3E5B28FF216016FF006600FF047609FF0A8D
      14FF119B22FF13AC26FF12AB24FF10A922FF10A920FF0FA81DFF0DA61AFF0996
      11FF096506FF61563BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006600FF15A92AFF18B131FF0AA314FF009900FF018B02FF12630CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A6811FF057107FF0A8415FF119B22FF1AAE2CFF18B12FFF17B0
      2DFF15AE2BFF14AD29FF13AC25FF0EA61DFF27C03CFF55EE81FF0FA81DFF0DA6
      1AFF05840AFF186110FF725344FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A8014FF1DB63AFF1DB63AFF029B03FF009900FF007600FF465A2DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000063833DFF0C8517FF1EB73BFF1CB539FF1BB437FF1AB334FF1CB537FF20B9
      3DFF20B93DFF1AB336FF16AF2DFF0FA81FFF55EE81FF64FD97FF40D861FF0FA8
      1DFF0DA61AFF027205FF385C23FF725344FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002970
      1BFF1BA336FF21B943FF15AE2BFF009900FF009400FF006600FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006600FF20B940FF22BB42FF2BC44FFF33CC5AFF35CE64FF33CC66FF2EC7
      5BFF29C252FF22BB45FF1BB435FF12A425FF44D06AFF60F993FF5EF790FF20B9
      3DFF0FA81DFF0C9E17FF016A02FF535733FF7F5D4AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000571
      0AFF26BF4CFF26BF4CFF09A212FF009900FF008000FF295F1BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006600FF4CE475FF54ED87FF4EE781FF46DF79FF3ED771FF37D06AFF2DBF
      59FF1BA336FF0F8A1DFF026B04FF31741FFF066F09FF4BDC74FF59F28CFF53EC
      84FF14AD27FF0FA81DFF099213FF096506FF66553EFF916753FF000000000000
      0000000000000000000000000000000000000000000000000000567C36FF1BA3
      36FF2AC355FF23BC45FF009900FF009900FF006C00FF66643FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063833DFF249E37FF56EB85FF54ED87FF36BC56FF209A33FF0C7C14FF0066
      00FF000000000000000000000000000000000000000011801AFF52E882FF54ED
      87FF43DC6AFF10A920FF0FA81DFF05840AFF186110FF725344FF000000000000
      00000000000000000000000000000000000000000000726444FF036C06FF2CC4
      58FF2FC75FFF12AB23FF009900FF018B02FF12630CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063833DFF006600FF006600FF4E7D30FF00000000000000000000
      0000000000000000000000000000000000000000000063833DFF209A33FF51EA
      84FF4EE781FF2EC750FF10A920FF0FA81DFF027205FF385C23FF725344FF0000
      0000000000006C5941FF465A2DFF315E1FFF12630CFF006900FF119321FF1DB6
      3AFF10A920FF039C06FF009900FF007600FF3E5B28FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000367722FF2AAC
      46FF4BE47EFF48E17BFF1AB331FF10A920FF0DA01AFF016A02FF385C23FF295F
      1BFF096506FF016A01FF027A04FF05840AFF06920BFF049D09FF039C06FF029B
      03FF019A01FF009900FF009400FF006600FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      00FF3ACB65FF46DF79FF3DD66AFF13AC26FF10A920FF099213FF057B0BFF078B
      0DFF099611FF0AA314FF09A212FF08A10FFF07A00EFF059E0BFF049D09FF039C
      06FF029B03FF019A01FF008000FF295F1BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009750FFF43DC76FF40D972FF23BC45FF10A922FF10A920FF0FA81DFF0DA6
      1AFF0CA518FF0CA516FF0AA314FF09A212FF08A10FFF07A00EFF059E0BFF049D
      09FF039C06FF029B03FF006C00FF66643FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000367722FF35C35DFF3CD56FFF2BC452FF12AB24FF10A922FF10A920FF0FA8
      1DFF0DA61AFF0CA518FF0CA516FF0AA314FF09A212FF08A10FFF07A00EFF059B
      0AFF018B02FF027A04FF216B16FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000367722FF20A63EFF3AD36DFF31CA61FF13AC26FF12AB24FF10A922FF10A9
      20FF0FA81DFF0DA61AFF0CA518FF0BA115FF06920BFF057F0BFF017102FF0066
      00FF63833DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000118821FF36CF69FF33CC66FF18B131FF13AC26FF12AB24FF10A9
      22FF10A920FF0FA81DFF037607FF006600FF4B782FFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000046D07FF33CC66FF33CC66FF20B940FF14AD29FF13AC26FF12AB
      24FF10A922FF10A920FF047609FF4B582FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E5B28FF465A2DFF66553EFF7F5D4AFF00000000000000000000
      000000000000367722FF29B751FF33CC66FF28C150FF15AE2BFF14AD29FF13AC
      26FF12AB24FF10A922FF098611FF385C23FF916753FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006600FF118821FF0D871BFF096506FF4B582FFF916753FF000000000000
      000000000000367722FF1D9F39FF33CC66FF2FC75FFF17B02DFF15AE2BFF14AD
      29FF13AC26FF12AB24FF0C9919FF186110FF725344FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000176D
      10FF29B751FF33CC63FF24BD49FF159A2BFF12630CFF725344FF000000000000
      00000000000000000000118821FF33CC66FF33CC66FF1BB435FF17B02DFF15AE
      2BFF14AD29FF13AC26FF12AB24FF006600FF6C5941FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E7D
      30FF3AD36DFF3AD36DFF27C04EFF24BD49FF026B04FF66553EFF000000000000
      00000000000000000000036C06FF33CC66FF33CC66FF23BC45FF18B12FFF17B0
      2DFF15AE2BFF14AD29FF13AC26FF047609FF535733FF00000000000000000000
      000000000000000000006C5941FF465A2DFF315E1FFF315E1FFF725344FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000046D
      07FF3ED771FF3ED771FF2EC75BFF26BF4CFF0D8216FF4B582FFF000000000000
      000000000000000000001C6F12FF2DBF59FF33CC66FF29C252FF19B231FF18B1
      2FFF17B02DFF15AE2BFF14AD29FF098611FF3E5B28FF7F5D4AFF5A5738FF3E5B
      28FF295F1BFF096506FF026E03FF027A04FF05840AFF006600FF725344FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003677
      22FF35C35DFF41DA75FF35CE64FF27C04EFF159A2BFF295F1BFF7F5D4AFF0000
      00000000000000000000367722FF20A63EFF33CC66FF31CA61FF1AB334FF19B2
      31FF18B12FFF17B02DFF15AE2BFF0D941BFF096506FF006600FF026E04FF057F
      0BFF0A8D14FF0C9E17FF0CA518FF0CA516FF0AA314FF027104FF5A5738FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003677
      22FF2AAC46FF46DF79FF40D972FF27C050FF21B042FF096506FF725344FF0000
      0000000000000000000000000000148C26FF33CC66FF25BE4BFF1BB437FF1AB3
      34FF19B231FF18B12FFF17B02DFF15A92AFF0D941BFF12A823FF12AB24FF10A9
      22FF10A920FF0FA81DFF0AA314FF0CA516FF0CA516FF057F0BFF3E5B28FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000148C26FF4AE37DFF4AE37DFF2AC355FF27C050FF05710AFF61563BFF0000
      0000000000005A5738FF315E1FFF06730DFF26BF4CFF1EB73BFF1CB539FF1BB4
      37FF1AB334FF19B231FF18B12FFF17B02DFF15AE2BFF14AD27FF13AC22FF0FA8
      1DFF0BA413FF059E08FF029B03FF0CA518FF0CA518FF099213FF216016FF7253
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000046D07FF4EE781FF4EE781FF35CE62FF29C252FF0F8A1DFF216016FF1861
      10FF006600FF07760DFF0F8A1DFF159A2BFF20B940FF20B93DFF1EB73BFF1CB5
      39FF1BB437FF1BB435FF1DB632FF1CB52EFF1AB329FF16AF22FF12AB1BFF0EA7
      15FF08A10FFF059E08FF0BA417FF22BB45FF0DA61AFF0CA117FF006600FF7253
      44FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C6F12FF44D06AFF51EA84FF40D972FF2AC355FF1BA336FF159529FF20A6
      3EFF24B947FF24BD49FF23BC45FF23BC45FF22BB42FF25BE46FF2AC343FF2AC3
      43FF2AC343FF27C03CFF24BA37FF1FB82FFF1AB329FF16AF22FF12AB1BFF0DA3
      13FF06920BFF078B0DFF27C050FF26BF4BFF11AA22FF0DA61AFF027205FF5A57
      38FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000367722FF36BC56FF55EE88FF4AE37DFF2CC458FF2AC355FF29C252FF27C0
      50FF29C250FF31CA56FF33CC5AFF3AD358FF3AD358FF3AD358FF33CC4CFF33CC
      4CFF2AC343FF27C03CFF24BA37FF1AAE2CFF119619FF0A860FFF027205FF0066
      00FF367722FF036C06FF2CC458FF25BE46FF15AE2BFF0FA81DFF057F0BFF3E5B
      28FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000209A33FF59F28CFF59F28CFF31CA61FF3DD66AFF45DE70FF4CE4
      75FF4CE475FF49E26EFF43DC6AFF40D861FF3AD358FF3AD358FF33CC4CFF24BA
      37FF199B25FF0C8213FF057107FF176D10FF367722FF00000000000000000000
      000000000000367722FF21B042FF21B943FF15AE2BFF10A920FF0A8D14FF2160
      16FF725344FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C7812FF5EF790FF5EF790FF5EF78EFF5AF388FF55EE81FF52EB
      7BFF4CE475FF49E26EFF40D861FF32B84BFF1E9E2DFF0D8216FF006600FF3174
      1FFF000000000000000000000000000000000000000000000000000000000000
      000000000000367722FF159529FF20B93DFF16AF2DFF10A922FF0EA01CFF0066
      00FF725344FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C6F12FF55E882FF63FC95FF5EF78EFF5AF388FF4BDC74FF32B8
      4BFF209A33FF0C7C14FF006600FF4E7D30FF4E7D30FF00000000000000000000
      0000367722FF465A2DFF3E5B28FF4B582FFF66553EFF725344FF000000000000
      000000000000000000000A8014FF1CB539FF14AD27FF12AB24FF10A922FF026E
      04FF61563BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000367722FF32B84BFF36BC56FF249E37FF0C7812FF006600FF4E7D
      30FF4E7D30FF0000000000000000000000000000000000000000000000003968
      25FF026B03FF098313FF0F8A1DFF057B0BFF006600FF3E5B28FF725344FF0000
      00000000000000000000026B04FF1AB334FF12AB24FF11AA21FF12AB24FF057F
      0BFF465A2DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000367722FF4E7D30FF4E7D30FF00000000000000000000
      00000000000000000000000000000000000000000000000000004B782FFF0C7C
      14FF21B943FF20B940FF1EB73CFF19B233FF12A425FF027205FF385C23FF7253
      44FF0000000000000000367722FF12A425FF0FA81FFF0EA61DFF13AC26FF0D94
      1BFF216016FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000006730DFF2FC7
      5FFF33CC66FF31CA61FF2EC75BFF24BD49FF1BB435FF12A425FF016A02FF6156
      3BFF0000000000000000367722FF0A8D14FF0DA61AFF0AA314FF14AD29FF0D94
      1BFF295F1BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063833DFF2AAC46FF41DA
      75FF43DC76FF41DA75FF3AD36DFF33CC65FF25BE4BFF1AB334FF098611FF3E5B
      28FF000000000000000000000000016A02FF099611FF039C06FF119B22FF016A
      02FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063833DFF35C35DFF4EE7
      81FF4FE883FF4EE781FF48E17BFF3CD56FFF31CA61FF20B940FF119B22FF2160
      16FF000000000000000000000000000000001C6F12FF006600FF1C6F12FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063833DFF3AC661FF57F0
      8BFF60F993FF5BF48EFF51EA84FF46DF79FF36CF69FF25BE46FF0D941BFF315E
      1FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063833DFF209A33FF60F9
      93FF66FF99FF62FB95FF55EE88FF46DF79FF36CF69FF29C252FF057B0BFF565F
      36FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006600FF4BDC
      74FF63FC95FF5EF790FF51EA84FF46DF79FF36CF69FF1BA336FF096506FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000066F
      09FF2AAC46FF4DE37DFF4AE37DFF3ACB65FF148C26FF10690BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C6F12FF006600FF006600FF1C6F12FF1C6F12FF00000000000000000000
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
      0000000000000000000000000000000000000000000000000000}
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 461
    Width = 445
    Height = 54
    Caption = '  Respons'#225'vel pelo preenchimento  '
    Color = clBtnHighlight
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    object DBText1: TDBText
      Left = 89
      Top = 19
      Width = 70
      Height = 18
      Cursor = crCross
      AutoSize = True
      DataField = 'Nome'
      DataSource = DtFuncionario
      Font.Charset = ANSI_CHARSET
      Font.Color = 12615680
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
      Visible = False
    end
    object EditFuncionario: TDBEdit
      Left = 8
      Top = 13
      Width = 76
      Height = 35
      Cursor = crHandPoint
      AutoSize = False
      Ctl3D = False
      DataField = 'FUNCIONARIO'
      DataSource = dtmovimento
      Font.Charset = ANSI_CHARSET
      Font.Color = 12615680
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = EditFuncionarioEnter
      OnExit = EditFuncionarioExit
      OnKeyDown = EditFuncionarioKeyDown
      OnKeyPress = EditFuncionarioKeyPress
    end
  end
  object AchaBcd: TBitBtn
    Left = 8
    Top = 528
    Width = 75
    Height = 25
    Caption = 'AchaBcd'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    Visible = False
    OnClick = AchaBcdClick
  end
  object tabelamovimento: TTable
    DatabaseName = 'MONEY'
    TableName = 'MOVIMENTO.db'
    Left = 425
    Top = 32
    object tabelamovimentoNUMBCD: TIntegerField
      DisplayWidth = 6
      FieldName = 'NUMBCD'
    end
    object tabelamovimentoVEICULOBCD: TIntegerField
      FieldName = 'VEICULOBCD'
    end
    object tabelamovimentoPFATUAL: TSmallintField
      FieldName = 'PFATUAL'
      EditFormat = '0'
    end
    object tabelamovimentoPFANTERIOR: TSmallintField
      FieldName = 'PFANTERIOR'
      EditFormat = '0'
    end
    object tabelamovimentoPEATUAL: TSmallintField
      FieldName = 'PEATUAL'
      EditFormat = '0'
    end
    object tabelamovimentoPEANTERIOR: TSmallintField
      FieldName = 'PEANTERIOR'
      EditFormat = '0'
    end
    object tabelamovimentoVTEATUAL: TSmallintField
      FieldName = 'VTEATUAL'
      EditFormat = '0'
    end
    object tabelamovimentoVTEANTERIOR: TSmallintField
      FieldName = 'VTEANTERIOR'
      EditFormat = '0'
    end
    object tabelamovimentoLIVRE: TSmallintField
      FieldName = 'LIVRE'
      EditFormat = '0'
    end
    object tabelamovimentoGRATUITO: TSmallintField
      FieldName = 'GRATUITO'
      EditFormat = '0'
    end
    object tabelamovimentoVEATUAL: TSmallintField
      FieldName = 'VEATUAL'
      EditFormat = '0'
    end
    object tabelamovimentoVEANTERIOR: TSmallintField
      FieldName = 'VEANTERIOR'
      EditFormat = '0'
    end
    object tabelamovimentoEGRATUITO: TSmallintField
      FieldName = 'EGRATUITO'
      EditFormat = '0'
    end
    object tabelamovimentoPTOTAL: TSmallintField
      FieldName = 'PTOTAL'
      EditFormat = '0'
    end
    object tabelamovimentoPDINHEIRO: TSmallintField
      FieldName = 'PDINHEIRO'
      EditFormat = '0'
    end
    object tabelamovimentoFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      EditMask = '0000'
      Size = 5
    end
    object tabelamovimentoACERTADOR: TStringField
      FieldName = 'ACERTADOR'
      Size = 5
    end
    object tabelamovimentoCATRACAINICIAL: TIntegerField
      FieldName = 'CATRACAINICIAL'
    end
    object tabelamovimentoCATRACAFINAL: TIntegerField
      FieldName = 'CATRACAFINAL'
    end
    object tabelamovimentoTOTALDINHEIRO: TCurrencyField
      FieldName = 'TOTALDINHEIRO'
    end
    object tabelamovimentoDESCONTO: TSmallintField
      FieldName = 'DESCONTO'
    end
    object tabelamovimentoTIPOLINHA: TStringField
      FieldName = 'TIPOLINHA'
      Size = 1
    end
    object tabelamovimentoLINHABCD: TStringField
      FieldName = 'LINHABCD'
      Size = 5
    end
    object tabelamovimentoIDOSO: TSmallintField
      FieldName = 'IDOSO'
    end
    object tabelamovimentoVIAGEM: TStringField
      FieldName = 'VIAGEM'
      EditMask = '!0,0;1;_'
      Size = 3
    end
    object tabelamovimentoDATABCD: TDateField
      FieldName = 'DATABCD'
    end
  end
  object dtmovimento: TDataSource
    DataSet = tabelamovimento
    Left = 440
    Top = 80
  end
  object tabelaveiculo: TTable
    DatabaseName = 'MONEY'
    TableName = 'VEICULO.DB'
    Left = 8
    Top = 72
    object tabelaveiculoLACRE: TStringField
      FieldName = 'LACRE'
      Size = 6
    end
    object tabelaveiculoULTIMACATRACA: TStringField
      FieldName = 'ULTIMACATRACA'
      Size = 5
    end
    object tabelaveiculoULTIMACOLETA: TStringField
      FieldName = 'ULTIMACOLETA'
      Size = 10
    end
    object tabelaveiculoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
  end
  object tabelalinha: TTable
    AutoRefresh = True
    DatabaseName = 'MONEY'
    TableName = 'LINHA.DB'
    Left = 456
    Top = 288
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
    object tabelalinhaTARIFADESCONTO: TCurrencyField
      FieldName = 'TARIFADESCONTO'
    end
    object tabelalinhaTIPOLINHA: TStringField
      FieldName = 'TIPOLINHA'
      Size = 1
    end
  end
  object dtlinha: TDataSource
    DataSet = tabelalinha
    Left = 456
    Top = 320
  end
  object dtveiculo: TDataSource
    DataSet = tabelaveiculo
    Top = 40
  end
  object XPManifest1: TXPManifest
    Left = 544
    Top = 448
  end
  object StandardColorMap1: TStandardColorMap
    HighlightColor = clBtnHighlight
    UnusedColor = clWhite
    MenuColor = clSkyBlue
    SelectedColor = clHighlight
    Left = 576
    Top = 400
  end
  object TabelaCatraca: TTable
    DatabaseName = 'MoNey'
    TableName = 'BuscaCatraca.db'
    Left = 456
    Top = 224
    object TabelaCatracaVeiculo: TStringField
      FieldName = 'Veiculo'
      Size = 5
    end
    object TabelaCatracaChaveSecundaria: TAutoIncField
      FieldName = 'ChaveSecundaria'
      ReadOnly = True
    end
    object TabelaCatracaUltimaColeta: TStringField
      FieldName = 'UltimaColeta'
      Size = 10
    end
    object TabelaCatracaUltimaCatraca: TIntegerField
      FieldName = 'UltimaCatraca'
    end
    object TabelaCatracaUltimoBcd: TIntegerField
      FieldName = 'UltimoBcd'
    end
  end
  object DtCatraca: TDataSource
    DataSet = TabelaCatraca
    Left = 455
    Top = 257
  end
  object DTBcd: TDataSource
    Left = 223
    Top = 15
  end
  object CustomizeDlg1: TCustomizeDlg
    StayOnTop = False
    Left = 424
    Top = 559
  end
  object DtFuncionario: TDataSource
    DataSet = TabelaFuncionario
    Top = 256
  end
  object TabelaFuncionario: TTable
    DatabaseName = 'MoNey'
    TableName = 'FUNCAO.DB'
    Top = 288
    object TabelaFuncionarioMatricula: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'Matricula'
      Required = True
      EditMask = '####;0;_'
      Size = 5
    end
    object TabelaFuncionarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TabelaFuncionarioFuncao: TStringField
      FieldName = 'Funcao'
      Size = 30
    end
  end
  object XPColorMap1: TXPColorMap
    HighlightColor = 15660791
    FrameTopLeftInner = clInactiveCaptionText
    BtnSelectedColor = clBtnFace
    UnusedColor = 15660791
    Left = 544
    Top = 105
  end
  object QrPermissao: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from PERMISSAO;')
    Left = 450
    Top = 160
    object QrPermissaoPFATU: TBooleanField
      FieldName = 'PFATU'
      Origin = 'MONEY."PERMISSAO.DB".PFATU'
    end
    object QrPermissaoPFANT: TBooleanField
      FieldName = 'PFANT'
      Origin = 'MONEY."PERMISSAO.DB".PFANT'
    end
    object QrPermissaoPEATU: TBooleanField
      FieldName = 'PEATU'
      Origin = 'MONEY."PERMISSAO.DB".PEATU'
    end
    object QrPermissaoPEANT: TBooleanField
      FieldName = 'PEANT'
      Origin = 'MONEY."PERMISSAO.DB".PEANT'
    end
    object QrPermissaoVTATU: TBooleanField
      FieldName = 'VTATU'
      Origin = 'MONEY."PERMISSAO.DB".VTATU'
    end
    object QrPermissaoVTANT: TBooleanField
      FieldName = 'VTANT'
      Origin = 'MONEY."PERMISSAO.DB".VTANT'
    end
    object QrPermissaoLIVRE: TBooleanField
      FieldName = 'LIVRE'
      Origin = 'MONEY."PERMISSAO.DB".LIVRE'
    end
    object QrPermissaoGRATZ: TBooleanField
      FieldName = 'GRATZ'
      Origin = 'MONEY."PERMISSAO.DB".GRATZ'
    end
    object QrPermissaoVEATU: TBooleanField
      FieldName = 'VEATU'
      Origin = 'MONEY."PERMISSAO.DB".VEATU'
    end
    object QrPermissaoVEANT: TBooleanField
      FieldName = 'VEANT'
      Origin = 'MONEY."PERMISSAO.DB".VEANT'
    end
    object QrPermissaoESTGR: TBooleanField
      FieldName = 'ESTGR'
      Origin = 'MONEY."PERMISSAO.DB".ESTGR'
    end
    object QrPermissaoCAINI: TBooleanField
      FieldName = 'CAINI'
      Origin = 'MONEY."PERMISSAO.DB".CAINI'
    end
    object QrPermissaoLIQIN: TBooleanField
      FieldName = 'LIQIN'
      Origin = 'MONEY."PERMISSAO.DB".LIQIN'
    end
    object QrPermissaoLIQDE: TBooleanField
      FieldName = 'LIQDE'
      Origin = 'MONEY."PERMISSAO.DB".LIQDE'
    end
    object QrPermissaoCODIGOEMPRESA: TStringField
      FieldName = 'CODIGOEMPRESA'
      Origin = 'MONEY."PERMISSAO.DB".CODIGOEMPRESA'
      Size = 4
    end
    object QrPermissaoLETRABCD: TStringField
      FieldName = 'LETRABCD'
      Origin = 'MONEY."PERMISSAO.DB".LETRABCD'
      Size = 1
    end
    object QrPermissaoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'MONEY."PERMISSAO.DB".RAZAOSOCIAL'
      Size = 50
    end
    object QrPermissaoCGC: TStringField
      FieldName = 'CGC'
      Origin = 'MONEY."PERMISSAO.DB".CGC'
      Size = 18
    end
    object QrPermissaoIDOSO: TBooleanField
      FieldName = 'IDOSO'
      Origin = 'MONEY."PERMISSAO.DB".IDOSO'
    end
    object QrPermissaoSISTEMA: TStringField
      FieldName = 'SISTEMA'
      Origin = 'MONEY."PERMISSAO.DB".SISTEMA'
    end
    object QrPermissaoViagem: TBooleanField
      FieldName = 'Viagem'
      Origin = 'MONEY."PERMISSAO.DB".Viagem'
    end
  end
  object DtPermissao: TDataSource
    Left = 458
    Top = 192
  end
  object QrBusca: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'SELECT * FROM MOVIMENTO;')
    Left = 376
    Top = 88
    object QrBuscaNUMBCD: TIntegerField
      FieldName = 'NUMBCD'
      Origin = 'MONEY."MOVIMENTO.DB".NUMBCD'
    end
    object QrBuscaVEICULOBCD: TSmallintField
      FieldName = 'VEICULOBCD'
      Origin = 'MONEY."MOVIMENTO.DB".VEICULOBCD'
    end
    object QrBuscaLINHABCD: TStringField
      FieldName = 'LINHABCD'
      Origin = 'MONEY."MOVIMENTO.DB".LINHABCD'
      Size = 5
    end
    object QrBuscaCATRACAINICIAL: TIntegerField
      FieldName = 'CATRACAINICIAL'
      Origin = 'MONEY."MOVIMENTO.DB".CATRACAINICIAL'
    end
    object QrBuscaCATRACAFINAL: TIntegerField
      FieldName = 'CATRACAFINAL'
      Origin = 'MONEY."MOVIMENTO.DB".CATRACAFINAL'
    end
    object QrBuscaPFATUAL: TSmallintField
      FieldName = 'PFATUAL'
      Origin = 'MONEY."MOVIMENTO.DB".PFATUAL'
    end
    object QrBuscaPFANTERIOR: TSmallintField
      FieldName = 'PFANTERIOR'
      Origin = 'MONEY."MOVIMENTO.DB".PFANTERIOR'
    end
    object QrBuscaPEATUAL: TSmallintField
      FieldName = 'PEATUAL'
      Origin = 'MONEY."MOVIMENTO.DB".PEATUAL'
    end
    object QrBuscaPEANTERIOR: TSmallintField
      FieldName = 'PEANTERIOR'
      Origin = 'MONEY."MOVIMENTO.DB".PEANTERIOR'
    end
    object QrBuscaVTEATUAL: TSmallintField
      FieldName = 'VTEATUAL'
      Origin = 'MONEY."MOVIMENTO.DB".VTEATUAL'
    end
    object QrBuscaVTEANTERIOR: TSmallintField
      FieldName = 'VTEANTERIOR'
      Origin = 'MONEY."MOVIMENTO.DB".VTEANTERIOR'
    end
    object QrBuscaLIVRE: TSmallintField
      FieldName = 'LIVRE'
      Origin = 'MONEY."MOVIMENTO.DB".LIVRE'
    end
    object QrBuscaGRATUITO: TSmallintField
      FieldName = 'GRATUITO'
      Origin = 'MONEY."MOVIMENTO.DB".GRATUITO'
    end
    object QrBuscaVEATUAL: TSmallintField
      FieldName = 'VEATUAL'
      Origin = 'MONEY."MOVIMENTO.DB".VEATUAL'
    end
    object QrBuscaVEANTERIOR: TSmallintField
      FieldName = 'VEANTERIOR'
      Origin = 'MONEY."MOVIMENTO.DB".VEANTERIOR'
    end
    object QrBuscaEGRATUITO: TSmallintField
      FieldName = 'EGRATUITO'
      Origin = 'MONEY."MOVIMENTO.DB".EGRATUITO'
    end
    object QrBuscaPTOTAL: TSmallintField
      FieldName = 'PTOTAL'
      Origin = 'MONEY."MOVIMENTO.DB".PTOTAL'
    end
    object QrBuscaPDINHEIRO: TSmallintField
      FieldName = 'PDINHEIRO'
      Origin = 'MONEY."MOVIMENTO.DB".PDINHEIRO'
    end
    object QrBuscaTOTALDINHEIRO: TCurrencyField
      FieldName = 'TOTALDINHEIRO'
      Origin = 'MONEY."MOVIMENTO.DB".TOTALDINHEIRO'
    end
    object QrBuscaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'MONEY."MOVIMENTO.DB".FUNCIONARIO'
      Size = 5
    end
    object QrBuscaACERTADOR: TStringField
      FieldName = 'ACERTADOR'
      Origin = 'MONEY."MOVIMENTO.DB".ACERTADOR'
      Size = 5
    end
    object QrBuscaDESCONTO: TSmallintField
      FieldName = 'DESCONTO'
      Origin = 'MONEY."MOVIMENTO.DB".DESCONTO'
    end
    object QrBuscaTIPOLINHA: TStringField
      FieldName = 'TIPOLINHA'
      Origin = 'MONEY."MOVIMENTO.DB".TIPOLINHA'
      Size = 1
    end
    object QrBuscaIDOSO: TSmallintField
      FieldName = 'IDOSO'
      Origin = 'MONEY."MOVIMENTO.DB".IDOSO'
    end
    object QrBuscaDATABCD: TDateField
      FieldName = 'DATABCD'
      Origin = 'MONEY."MOVIMENTO.DB".DATABCD'
    end
    object QrBuscaVIAGEM: TStringField
      FieldName = 'VIAGEM'
      Origin = 'MONEY."MOVIMENTO.DB".VIAGEM'
      Size = 3
    end
  end
  object QrLotes: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from Lotes;')
    Left = 376
    Top = 29
    object QrLotesDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
      Origin = 'MONEY."Lotes.DB".DT_MOVIMENTO'
    end
    object QrLotesLOTE_INICIAL: TIntegerField
      FieldName = 'LOTE_INICIAL'
      Origin = 'MONEY."Lotes.DB".LOTE_INICIAL'
    end
    object QrLotesLOTE_FINAL: TIntegerField
      FieldName = 'LOTE_FINAL'
      Origin = 'MONEY."Lotes.DB".LOTE_FINAL'
    end
  end
  object DtLotes: TDataSource
    DataSet = QrLotes
    Left = 344
    Top = 29
  end
end
