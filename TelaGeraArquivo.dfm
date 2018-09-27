object FormGeraArquivo: TFormGeraArquivo
  Left = 371
  Top = 155
  BorderStyle = bsDialog
  Caption = 'Gera'#231#227'o de Arquivo'
  ClientHeight = 304
  ClientWidth = 171
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 171
    Height = 304
    Align = alClient
    Alignment = taRightJustify
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 4
      Width = 32
      Height = 18
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object s: TLabel
      Left = 32
      Top = 184
      Width = 2
      Height = 13
      Caption = #39
      Visible = False
    end
    object Gauge1: TGauge
      Left = 8
      Top = 263
      Width = 158
      Height = 33
      ForeColor = clGradientActiveCaption
      Progress = 0
    end
    object btok: TBitBtn
      Left = 39
      Top = 209
      Width = 98
      Height = 48
      Hint = 'Clique aqui para entrar'
      DoubleBuffered = True
      Glyph.Data = {
        02030000424D0203000000000000360100002800000013000000170000000100
        080000000000CC010000C30E0000C30E000040000000000000001C3404002434
        1C00242424001C3C0400243C0C00244404002C5C04003C5C240044543C005C5C
        54005C5C5C00646464006C6C6C0054743C007474740044840400747C74007C7C
        7C0084848400449404006C8C540054AC0400000000008C8C8C008C948C009494
        94009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC040074F404007CFC
        040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC240094EC3C0094FC
        2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC5400ACFC6400B4FC
        6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCCAC00BCC4B400BCCC
        B400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0C0003F3F3F3F3F3F
        191717193F3F3F3F3F3F3F3F3F003F3F3F3F3F1712111112193F3F3F3F3F3F3F
        3F003F3F3F3F19120E0C0C0E123F3F3F3F3F3F3F3F003F3F3F3F120E0C0B0B0C
        11173F3F3F3F3F3F3F003F3F3F17110C0B0A0A0B0E123F3F3F3F3F3F3F003F3F
        3F12140702010B0B0C11173F3F3F3F3F3F003F3F3F181E1E0F03100C0C0E1219
        3F3F3F3F3F003F3F3F2422231F06080C0C0C11173F3F3F3F3F003F3F2B212223
        221305170C0C0E11173F3F3F3F003F3521222323231E06090E0C0C0E12193F3F
        3F003F2B2223272726221304180E0C0C0E123F3F3F003F2926252A2F2F261F06
        08110E0C0E11173F3F0038302D232C39332E23150311110E0C0E11173F003F39
        2E28383F37312A220F0117110E0E0E1219003F3F373F3F3F3F3A30261E060917
        110E0E1117003F3F3F3F3F3F3F3F322E2315030C1712111217003F3F3F3F3F3F
        3F3F37342D2313001819171719003F3F3F3F3F3F3F3F3F3B342E231300193F3F
        3F003F3F3F3F3F3F3F3F3F3F3C3330230F011D3F3F003F3F3F3F3F3F3F3F3F3F
        3F393E31250F0D3F3F003F3F3F3F3F3F3F3F3F3F3F3F383D312320353F003F3F
        3F3F3F3F3F3F3F3F3F3F3F3F3C2A23363F003F3F3F3F3F3F3F3F3F3F3F3F3F3F
        3F3F373F3F00}
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btokClick
    end
    object RadioGroup1: TRadioGroup
      Left = 45
      Top = 115
      Width = 86
      Height = 87
      Caption = ' Tipo Linha '
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsItalic]
      ItemIndex = 0
      Items.Strings = (
        'Transcol'
        'Seletivo'
        'Outros')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object RadioGroup2: TRadioGroup
      Left = 11
      Top = 60
      Width = 155
      Height = 49
      Caption = ' Local '
      Columns = 2
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'A:'
        'C:')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object QrMovimento: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from movimento M, Veiculo V'
      'Where M.veiculobcd = V.numero'
      'order by NumBcd;')
    Left = 136
    Top = 80
    object QrMovimentoNUMBCD: TIntegerField
      FieldName = 'NUMBCD'
      Origin = 'MONEY."movimento.DB".NUMBCD'
    end
    object QrMovimentoVEICULOBCD: TSmallintField
      FieldName = 'VEICULOBCD'
      Origin = 'MONEY."movimento.DB".VEICULOBCD'
    end
    object QrMovimentoLINHABCD: TStringField
      FieldName = 'LINHABCD'
      Origin = 'MONEY."movimento.DB".LINHABCD'
      Size = 4
    end
    object QrMovimentoCATRACAINICIAL: TIntegerField
      FieldName = 'CATRACAINICIAL'
      Origin = 'MONEY."movimento.DB".CATRACAINICIAL'
    end
    object QrMovimentoCATRACAFINAL: TIntegerField
      FieldName = 'CATRACAFINAL'
      Origin = 'MONEY."movimento.DB".CATRACAFINAL'
    end
    object QrMovimentoPFATUAL: TSmallintField
      FieldName = 'PFATUAL'
      Origin = 'MONEY."movimento.DB".PFATUAL'
    end
    object QrMovimentoPFANTERIOR: TSmallintField
      FieldName = 'PFANTERIOR'
      Origin = 'MONEY."movimento.DB".PFANTERIOR'
    end
    object QrMovimentoPEATUAL: TSmallintField
      FieldName = 'PEATUAL'
      Origin = 'MONEY."movimento.DB".PEATUAL'
    end
    object QrMovimentoPEANTERIOR: TSmallintField
      FieldName = 'PEANTERIOR'
      Origin = 'MONEY."movimento.DB".PEANTERIOR'
    end
    object QrMovimentoVTEATUAL: TSmallintField
      FieldName = 'VTEATUAL'
      Origin = 'MONEY."movimento.DB".VTEATUAL'
    end
    object QrMovimentoVTEANTERIOR: TSmallintField
      FieldName = 'VTEANTERIOR'
      Origin = 'MONEY."movimento.DB".VTEANTERIOR'
    end
    object QrMovimentoLIVRE: TSmallintField
      FieldName = 'LIVRE'
      Origin = 'MONEY."movimento.DB".LIVRE'
    end
    object QrMovimentoGRATUITO: TSmallintField
      FieldName = 'GRATUITO'
      Origin = 'MONEY."movimento.DB".GRATUITO'
    end
    object QrMovimentoVEATUAL: TSmallintField
      FieldName = 'VEATUAL'
      Origin = 'MONEY."movimento.DB".VEATUAL'
    end
    object QrMovimentoVEANTERIOR: TSmallintField
      FieldName = 'VEANTERIOR'
      Origin = 'MONEY."movimento.DB".VEANTERIOR'
    end
    object QrMovimentoEGRATUITO: TSmallintField
      FieldName = 'EGRATUITO'
      Origin = 'MONEY."movimento.DB".EGRATUITO'
    end
    object QrMovimentoPTOTAL: TSmallintField
      FieldName = 'PTOTAL'
      Origin = 'MONEY."movimento.DB".PTOTAL'
    end
    object QrMovimentoPDINHEIRO: TSmallintField
      FieldName = 'PDINHEIRO'
      Origin = 'MONEY."movimento.DB".PDINHEIRO'
    end
    object QrMovimentoTOTALDINHEIRO: TCurrencyField
      FieldName = 'TOTALDINHEIRO'
      Origin = 'MONEY."movimento.DB".TOTALDINHEIRO'
    end
    object QrMovimentoFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'MONEY."movimento.DB".FUNCIONARIO'
      Size = 5
    end
    object QrMovimentoACERTADOR: TStringField
      FieldName = 'ACERTADOR'
      Origin = 'MONEY."movimento.DB".ACERTADOR'
      Size = 5
    end
    object QrMovimentoDESCONTO: TSmallintField
      FieldName = 'DESCONTO'
      Origin = 'MONEY."movimento.DB".DESCONTO'
    end
    object QrMovimentoTIPOLINHA: TStringField
      FieldName = 'TIPOLINHA'
      Origin = 'MONEY."MOVIMENTO.DB".TIPOLINHA'
      Size = 1
    end
    object QrMovimentoIDOSO: TSmallintField
      FieldName = 'IDOSO'
      Origin = 'MONEY."MOVIMENTO.DB".IDOSO'
    end
    object QrMovimentoVIAGEM: TStringField
      FieldName = 'VIAGEM'
      Origin = 'MONEY."movimento.DB".VIAGEM'
      Size = 3
    end
    object QrMovimentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'MONEY."movimento.DB".NUMBCD'
    end
    object QrMovimentoLACRE: TStringField
      FieldName = 'LACRE'
      Origin = 'MONEY."movimento.DB".NUMBCD'
      Size = 6
    end
    object QrMovimentoULTIMACATRACA: TStringField
      FieldName = 'ULTIMACATRACA'
      Origin = 'MONEY."movimento.DB".NUMBCD'
      Size = 5
    end
    object QrMovimentoULTIMACOLETA: TStringField
      FieldName = 'ULTIMACOLETA'
      Origin = 'MONEY."movimento.DB".NUMBCD'
      Size = 10
    end
    object QrMovimentoDATABCD: TDateField
      FieldName = 'DATABCD'
      Origin = 'MONEY."MOVIMENTO.DB".DATABCD'
    end
  end
  object QrVeiculo: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from veiculo'
      'order by numero;')
    Left = 144
    Top = 16
    object QrVeiculoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'MONEY."veiculo.DB".NUMERO'
    end
    object QrVeiculoLACRE: TStringField
      FieldName = 'LACRE'
      Origin = 'MONEY."veiculo.DB".LACRE'
      Size = 6
    end
    object QrVeiculoULTIMACATRACA: TStringField
      FieldName = 'ULTIMACATRACA'
      Origin = 'MONEY."veiculo.DB".ULTIMACATRACA'
      Size = 5
    end
    object QrVeiculoULTIMACOLETA: TStringField
      FieldName = 'ULTIMACOLETA'
      Origin = 'MONEY."veiculo.DB".ULTIMACOLETA'
      Size = 10
    end
  end
  object Query1: TQuery
    DatabaseName = 'MONEY'
    SQL.Strings = (
      'select * from permissao;')
    Left = 8
    Top = 112
    object Query1PFATU: TBooleanField
      FieldName = 'PFATU'
      Origin = 'MONEY."permissao.DB".PFATU'
    end
    object Query1PFANT: TBooleanField
      FieldName = 'PFANT'
      Origin = 'MONEY."permissao.DB".PFANT'
    end
    object Query1PEATU: TBooleanField
      FieldName = 'PEATU'
      Origin = 'MONEY."permissao.DB".PEATU'
    end
    object Query1PEANT: TBooleanField
      FieldName = 'PEANT'
      Origin = 'MONEY."permissao.DB".PEANT'
    end
    object Query1VTATU: TBooleanField
      FieldName = 'VTATU'
      Origin = 'MONEY."permissao.DB".VTATU'
    end
    object Query1VTANT: TBooleanField
      FieldName = 'VTANT'
      Origin = 'MONEY."permissao.DB".VTANT'
    end
    object Query1LIVRE: TBooleanField
      FieldName = 'LIVRE'
      Origin = 'MONEY."permissao.DB".LIVRE'
    end
    object Query1GRATZ: TBooleanField
      FieldName = 'GRATZ'
      Origin = 'MONEY."permissao.DB".GRATZ'
    end
    object Query1VEATU: TBooleanField
      FieldName = 'VEATU'
      Origin = 'MONEY."permissao.DB".VEATU'
    end
    object Query1VEANT: TBooleanField
      FieldName = 'VEANT'
      Origin = 'MONEY."permissao.DB".VEANT'
    end
    object Query1ESTGR: TBooleanField
      FieldName = 'ESTGR'
      Origin = 'MONEY."permissao.DB".ESTGR'
    end
    object Query1CAINI: TBooleanField
      FieldName = 'CAINI'
      Origin = 'MONEY."permissao.DB".CAINI'
    end
    object Query1LIQIN: TBooleanField
      FieldName = 'LIQIN'
      Origin = 'MONEY."permissao.DB".LIQIN'
    end
    object Query1LIQDE: TBooleanField
      FieldName = 'LIQDE'
      Origin = 'MONEY."permissao.DB".LIQDE'
    end
    object Query1CODIGOEMPRESA: TStringField
      FieldName = 'CODIGOEMPRESA'
      Origin = 'MONEY."permissao.DB".CODIGOEMPRESA'
      Size = 4
    end
    object Query1LETRABCD: TStringField
      FieldName = 'LETRABCD'
      Origin = 'MONEY."permissao.DB".LETRABCD'
      Size = 1
    end
    object Query1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'MONEY."permissao.DB".RAZAOSOCIAL'
      Size = 50
    end
    object Query1CGC: TStringField
      FieldName = 'CGC'
      Origin = 'MONEY."permissao.DB".CGC'
      Size = 18
    end
    object Query1SISTEMA: TStringField
      FieldName = 'SISTEMA'
      Origin = 'MONEY."PERMISSAO.DB".SISTEMA'
    end
    object Query1IDOSO: TBooleanField
      FieldName = 'IDOSO'
      Origin = 'MONEY."PERMISSAO.DB".IDOSO'
    end
    object Query1Viagem: TBooleanField
      FieldName = 'Viagem'
      Origin = 'MONEY."permissao.DB".Viagem'
    end
  end
  object XPManifest1: TXPManifest
    Top = 128
  end
  object XPColorMap1: TXPColorMap
    HighlightColor = 15660791
    BtnSelectedColor = clBtnFace
    UnusedColor = 15660791
    Left = 152
    Top = 80
  end
end
