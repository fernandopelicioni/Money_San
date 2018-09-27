object Pai: TPai
  OldCreateOrder = False
  Height = 517
  Width = 978
  object Genoma: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=brasil;Persist Security Info=True;U' +
      'ser ID=fp;Initial Catalog=Pepple;Data Source=10.10.10.4;Use Proc' +
      'edure for Prepare=1;Auto Translate=True;Packet Size=4096;Worksta' +
      'tion ID=NOTEFERNANDO;Use Encryption for Data=False;Tag with colu' +
      'mn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 168
    Top = 40
  end
  object QrMovBcd: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_MonMov')
    Left = 16
    Top = 128
  end
  object QrLinhas: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_MonLin')
    Left = 119
    Top = 128
  end
  object QrTipLin: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_MonTipLin')
    Left = 172
    Top = 128
    object QrTipLinTLI_COD: TWordField
      FieldName = 'TLI_COD'
      ReadOnly = True
    end
    object QrTipLinTLI_DES: TStringField
      FieldName = 'TLI_DES'
      Size = 30
    end
    object QrTipLinTLI_TARIFAATUAL: TBCDField
      FieldName = 'TLI_TARIFAATUAL'
      DisplayFormat = 'R$ ##0.00'
      Precision = 19
    end
    object QrTipLinTLI_TARIFAANTERIOR: TBCDField
      FieldName = 'TLI_TARIFAANTERIOR'
      DisplayFormat = 'R$ ##0.00'
      Precision = 19
    end
    object QrTipLinTLI_TARIFADESCONTO: TBCDField
      FieldName = 'TLI_TARIFADESCONTO'
      DisplayFormat = 'R$ ##0.00'
      Precision = 19
    end
    object QrTipLinTLI_TARIFADESCONTOANTERIOR: TBCDField
      FieldName = 'TLI_TARIFADESCONTOANTERIOR'
      DisplayFormat = 'R$ ##0.00'
      Precision = 19
    end
    object QrTipLinTLI_COLIGADA: TWordField
      FieldName = 'TLI_COLIGADA'
    end
  end
  object QrAcertador: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_MonAce')
    Left = 226
    Top = 128
  end
  object QrVeiculos: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_Veiculos'
      'Where Vei_IntMon = '#39'1'#39)
    Left = 282
    Top = 128
  end
  object QrVeiCat: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Tb_MonCat')
    Left = 338
    Top = 128
  end
  object QrLinhasCompletas: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_MonLin A, Tb_MonTipLin B, Tb_MonParam C'
      'Where B.TLI_Cod = A.Lin_Tipo And C.Par_Cod = B.Tli_cod')
    Left = 386
    Top = 128
  end
  object QrParam: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_MonTipLin A, Tb_MonpARAM B'
      'Where B.Par_Cod = A.Tli_cod')
    Left = 16
    Top = 184
  end
  object QrUsuarios: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_usuarios')
    Left = 79
    Top = 184
    object QrUsuariosUSU_CODIGO: TWordField
      FieldName = 'USU_CODIGO'
      ReadOnly = True
    end
    object QrUsuariosUSU_LOGIN: TWideStringField
      FieldName = 'USU_LOGIN'
    end
    object QrUsuariosUSU_SENHA: TWideStringField
      FieldName = 'USU_SENHA'
      Size = 50
    end
    object QrUsuariosUSU_PERFIL: TWideStringField
      FieldName = 'USU_PERFIL'
      Size = 5
    end
    object QrUsuariosUSU_NIVEL: TWordField
      FieldName = 'USU_NIVEL'
    end
  end
  object QrColigadas: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_Coligadas')
    Left = 64
    Top = 128
    object QrColigadasCOD_COLIGADA: TWordField
      FieldName = 'COD_COLIGADA'
    end
    object QrColigadasDES_COLIGADA: TWideStringField
      FieldName = 'DES_COLIGADA'
      FixedChar = True
      Size = 50
    end
    object QrColigadasCGC_COLIGADA: TWideStringField
      FieldName = 'CGC_COLIGADA'
      FixedChar = True
      Size = 18
    end
    object QrColigadasLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object QrColigadasPERFIL: TWideStringField
      FieldName = 'PERFIL'
      FixedChar = True
      Size = 1
    end
  end
  object QrProfissionais: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Nom_pro, Cod_pro, Cha_pro FROM TB_Profissionais')
    Left = 146
    Top = 184
  end
  object QrTipLinCompl: TADOQuery
    Connection = Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tb_MonTipLin')
    Left = 212
    Top = 184
  end
end
