object FORMACESS: TFORMACESS
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerenciamento de Acessos'
  ClientHeight = 562
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl2: TPageControl
    Left = 8
    Top = 8
    Width = 585
    Height = 545
    ActivePage = TabSheet7
    TabOrder = 0
    object TabSheet6: TTabSheet
      Caption = 'Controle de Acessos'
      OnShow = TabSheet6Show
      object PageControl1: TPageControl
        Left = 3
        Top = 58
        Width = 568
        Height = 450
        ActivePage = TabSheet3
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'People'
          Enabled = False
          object DBCheckBox1: TDBCheckBox
            Left = 16
            Top = 9
            Width = 161
            Height = 17
            Caption = 'Acesso a este M'#243'dulo'
            DataField = 'TRE_PEOPLE'
            DataSource = DtAcess
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 32
            Width = 550
            Height = 349
            Caption = ' Acessos '
            TabOrder = 1
            object DBCheckBox17: TDBCheckBox
              Left = 16
              Top = 316
              Width = 153
              Height = 17
              Caption = 'Atendimento Personalizado'
              DataField = 'TRE_ATENDIMENTOPERSONALIZADO'
              DataSource = DtAcess
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox16: TDBCheckBox
              Left = 320
              Top = 248
              Width = 153
              Height = 17
              Caption = 'Exames de Candidatos'
              DataField = 'TRE_EXAMESCANDIDATOS'
              DataSource = DtAcess
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox15: TDBCheckBox
              Left = 16
              Top = 293
              Width = 153
              Height = 17
              Caption = 'Cursos e Treinamentos'
              DataField = 'TRE_LIVROEXPERIENCIA'
              DataSource = DtAcess
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox14: TDBCheckBox
              Left = 16
              Top = 270
              Width = 249
              Height = 17
              Caption = 'Livro Experiencia'
              DataField = 'TRE_LIVROEXPERIENCIA'
              DataSource = DtAcess
              TabOrder = 3
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox13: TDBCheckBox
              Left = 16
              Top = 247
              Width = 249
              Height = 17
              Caption = 'Aniversariantes'
              DataField = 'TRE_ANIVERSARIANTES'
              DataSource = DtAcess
              TabOrder = 4
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox12: TDBCheckBox
              Left = 16
              Top = 225
              Width = 249
              Height = 17
              Caption = 'Central RH / Advertencia/ Suspens'#245'es/ Faltas'
              DataField = 'TRE_CENTRALRH'
              DataSource = DtAcess
              TabOrder = 5
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox11: TDBCheckBox
              Left = 16
              Top = 201
              Width = 161
              Height = 17
              Caption = 'Banco de Talentos'
              DataField = 'TRE_BANCOTALENTOS'
              DataSource = DtAcess
              TabOrder = 6
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox10: TDBCheckBox
              Left = 16
              Top = 179
              Width = 161
              Height = 17
              Caption = 'Candidatos'
              DataField = 'TRE_CANDIDATOS'
              DataSource = DtAcess
              TabOrder = 7
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox9: TDBCheckBox
              Left = 16
              Top = 156
              Width = 161
              Height = 17
              Caption = 'Candidatos'
              DataField = 'TRE_CANDIDATOS'
              DataSource = DtAcess
              TabOrder = 8
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox8: TDBCheckBox
              Left = 16
              Top = 133
              Width = 161
              Height = 17
              Caption = 'Fun'#231#245'es'
              DataField = 'TRE_FUNCOES'
              DataSource = DtAcess
              TabOrder = 9
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox7: TDBCheckBox
              Left = 16
              Top = 110
              Width = 161
              Height = 17
              Caption = 'M'#233'dicos'
              DataField = 'TRE_MEDICOS'
              DataSource = DtAcess
              TabOrder = 10
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox6: TDBCheckBox
              Left = 16
              Top = 87
              Width = 161
              Height = 17
              Caption = 'Laborat'#243'rios'
              DataField = 'TRE_LABORATORIOS'
              DataSource = DtAcess
              TabOrder = 11
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 16
              Top = 64
              Width = 161
              Height = 17
              Caption = 'Clinicas M'#233'dicas'
              DataField = 'TRE_CLINICASMEDICAS'
              DataSource = DtAcess
              TabOrder = 12
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox4: TDBCheckBox
              Left = 16
              Top = 41
              Width = 161
              Height = 17
              Caption = 'Tipo de Atendimentos'
              DataField = 'TRE_TIPOATENDIMENTO'
              DataSource = DtAcess
              TabOrder = 13
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 16
              Top = 18
              Width = 161
              Height = 17
              Caption = 'Cadastro de Colaboradores'
              DataField = 'TRE_COLABORADORES'
              DataSource = DtAcess
              TabOrder = 14
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox27: TDBCheckBox
              Left = 320
              Top = 225
              Width = 217
              Height = 17
              Caption = 'Exames Cadastrados'
              DataField = 'TRE_EXAMESCADASTRADOS'
              DataSource = DtAcess
              TabOrder = 15
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox26: TDBCheckBox
              Left = 320
              Top = 202
              Width = 217
              Height = 17
              Caption = 'Central M'#233'dica/Atestados/Ficha Clinica'
              DataField = 'TRE_CENTRALMEDICA'
              DataSource = DtAcess
              TabOrder = 16
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox25: TDBCheckBox
              Left = 320
              Top = 179
              Width = 169
              Height = 17
              Caption = 'Emiss'#227'o de Exames'
              DataField = 'TRE_EMISSAOEXAMES'
              DataSource = DtAcess
              TabOrder = 17
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox24: TDBCheckBox
              Left = 320
              Top = 156
              Width = 169
              Height = 17
              Caption = 'Ficha Funcional'
              DataField = 'TRE_FICHAFUNCIONAL'
              DataSource = DtAcess
              TabOrder = 18
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox23: TDBCheckBox
              Left = 320
              Top = 133
              Width = 169
              Height = 17
              Caption = 'Habilita'#231#227'o'
              DataField = 'TRE_HABILITACAO'
              DataSource = DtAcess
              TabOrder = 19
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox22: TDBCheckBox
              Left = 320
              Top = 110
              Width = 169
              Height = 17
              Caption = 'Central Operacional'
              DataField = 'TRE_CENTRALOPERACIONAL'
              DataSource = DtAcess
              TabOrder = 20
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox21: TDBCheckBox
              Left = 320
              Top = 87
              Width = 169
              Height = 17
              Caption = 'Consultar Colaboradores'
              DataField = 'TRE_CONSULTACOLABORADORES'
              DataSource = DtAcess
              TabOrder = 21
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox20: TDBCheckBox
              Left = 320
              Top = 64
              Width = 169
              Height = 17
              Caption = 'Departamentos'
              DataField = 'TRE_DEPARTAMENTO'
              DataSource = DtAcess
              TabOrder = 22
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox19: TDBCheckBox
              Left = 320
              Top = 41
              Width = 169
              Height = 17
              Caption = 'Integra'#231#227'o Labore / CorporeRM'
              DataField = 'TRE_INTEGRACORPORE'
              DataSource = DtAcess
              TabOrder = 23
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox18: TDBCheckBox
              Left = 320
              Top = 18
              Width = 161
              Height = 17
              Caption = 'Historico de Advertencias'
              DataField = 'TRE_COLABORADORES'
              DataSource = DtAcess
              TabOrder = 24
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox137: TDBCheckBox
              Left = 320
              Top = 271
              Width = 153
              Height = 17
              Caption = 'Exames Pendentes'
              DataField = 'TRE_EXAMESPENDENTES'
              DataSource = DtAcess
              TabOrder = 25
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox29: TDBCheckBox
              Left = 320
              Top = 293
              Width = 153
              Height = 17
              Caption = 'Exames de Candidatos'
              DataField = 'TRE_EXAMESCANDIDATOS'
              DataSource = DtAcess
              TabOrder = 26
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
          end
          object DBCheckBox2: TDBCheckBox
            Left = 232
            Top = 9
            Width = 161
            Height = 17
            Caption = 'Usu'#225'rio Mestre'
            DataField = 'TRE_MESTRE'
            DataSource = DtAcess
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object BitBtn1: TBitBtn
            Left = 381
            Top = 387
            Width = 75
            Height = 25
            Caption = 'Salvar '
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 3
            OnClick = BitBtn1Click
          end
          object BitBtn2: TBitBtn
            Left = 462
            Top = 387
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 4
            OnClick = BitBtn2Click
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'ControlBus'
          Enabled = False
          ImageIndex = 1
          object DBCheckBox28: TDBCheckBox
            Left = 16
            Top = 9
            Width = 161
            Height = 17
            Caption = 'Acesso a este M'#243'dulo'
            DataField = 'TRE_CONTROLBUS'
            DataSource = DtAcess
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Money'
          ImageIndex = 2
          object DBCheckBox55: TDBCheckBox
            Left = 16
            Top = 9
            Width = 161
            Height = 17
            Caption = 'Acesso a este M'#243'dulo'
            DataField = 'TRE_MONEY'
            DataSource = DtAcess
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object BitBtn6: TBitBtn
            Left = 381
            Top = 387
            Width = 75
            Height = 25
            Caption = 'Salvar '
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
            OnClick = BitBtn1Click
          end
          object BitBtn7: TBitBtn
            Left = 462
            Top = 387
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = BitBtn2Click
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'CenterBus'
          Enabled = False
          ImageIndex = 3
          object DBCheckBox82: TDBCheckBox
            Left = 16
            Top = 9
            Width = 161
            Height = 17
            Caption = 'Acesso a este M'#243'dulo'
            DataField = 'TRE_CENTERBUS'
            DataSource = DtAcess
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Clock'
          Enabled = False
          ImageIndex = 4
          object DBCheckBox109: TDBCheckBox
            Left = 16
            Top = 9
            Width = 161
            Height = 17
            Caption = 'Acesso a este M'#243'dulo'
            DataField = 'TRE_CLOCK'
            DataSource = DtAcess
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Usuario Mestre '
          ImageIndex = 5
          OnExit = TabSheet8Exit
          object DBCheckBox30: TDBCheckBox
            Left = 10
            Top = 32
            Width = 383
            Height = 17
            Caption = 'Usu'#225'rio Mestre (Tem acesso totol a todos os Modulos e Coligadas)'
            DataField = 'TRE_MESTRE'
            DataSource = DtAcess
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object BitBtn8: TBitBtn
            Left = 381
            Top = 387
            Width = 75
            Height = 25
            Caption = 'Salvar '
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
            OnClick = BitBtn1Click
          end
          object BitBtn9: TBitBtn
            Left = 462
            Top = 387
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = BitBtn2Click
          end
        end
      end
      object Panel1: TPanel
        Left = 5
        Top = 11
        Width = 568
        Height = 41
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label1: TLabel
          Left = 7
          Top = 3
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 53
          Top = 1
          Width = 53
          Height = 16
          AutoSize = True
          DataField = 'USU_LOGIN'
          DataSource = DtUsuarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 7
          Top = 21
          Width = 45
          Height = 13
          Caption = 'Coligada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 56
          Top = 19
          Width = 53
          Height = 16
          AutoSize = True
          DataField = 'DES_COLIGADA'
          DataSource = DtColigada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Cadastro de Usu'#225'rios'
      ImageIndex = 1
      OnShow = TabSheet7Show
      object Label6: TLabel
        Left = 7
        Top = 6
        Width = 45
        Height = 13
        Caption = 'Coligada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 56
        Top = 5
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'DES_COLIGADA'
        DataSource = DtColigada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox6: TGroupBox
        Left = 3
        Top = 32
        Width = 558
        Height = 104
        Caption = 'Novo Usu'#225'rio'
        TabOrder = 0
        object Label2: TLabel
          Left = 19
          Top = 18
          Width = 25
          Height = 13
          Caption = 'Login'
        end
        object Label3: TLabel
          Left = 203
          Top = 18
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Label4: TLabel
          Left = 373
          Top = 18
          Width = 77
          Height = 13
          Caption = 'Repita a Senha:'
        end
        object DBCheckBox136: TDBCheckBox
          Left = 24
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Usu'#225'rio Ativo'
          DataField = 'USU_ATIVO'
          DataSource = DtUsuarios
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object Login: TDBEdit
          Left = 16
          Top = 35
          Width = 181
          Height = 24
          CharCase = ecUpperCase
          DataField = 'USU_LOGIN'
          DataSource = DtUsuarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Senha2: TEdit
          Left = 376
          Top = 35
          Width = 161
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 2
          Text = 'Senha2'
        end
        object Senha1: TEdit
          Left = 203
          Top = 35
          Width = 161
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 1
          Text = 'Senha2'
        end
      end
      object BitBtn3: TBitBtn
        Left = 326
        Top = 142
        Width = 75
        Height = 25
        Caption = 'Novo'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 406
        Top = 142
        Width = 75
        Height = 25
        Caption = 'Salvar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 486
        Top = 142
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn5Click
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 176
        Width = 571
        Height = 338
        DataSource = DtUsuarios
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USU_CODIGO'
            Title.Caption = 'Codigo'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_LOGIN'
            Title.Caption = 'Nome de Usu'#225'rio'
            Width = 281
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_ATIVO'
            Title.Caption = '1 - Ativo | 0 - Inativo'
            Width = 151
            Visible = True
          end>
      end
    end
  end
  object DtAcess: TDataSource
    DataSet = QrAcess
    Left = 224
    Top = 80
  end
  object QrUsuarios: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_Usuarios ')
    Left = 480
    Top = 32
  end
  object DtUsuarios: TDataSource
    DataSet = QrUsuarios
    Left = 480
    Top = 80
  end
  object DtColigada: TDataSource
    DataSet = Pai.QrColigadas
    Left = 400
    Top = 240
  end
  object QrAcess: TADOQuery
    Connection = Pai.Genoma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'usuario'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'coligada'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Tb_GAcess A'
      'Join Tb_Usuarios B on B.Usu_Codigo = A.Tre_Usu'
      'Where B.Usu_Codigo =:usuario'
      'And A.Tre_Coligada=:coligada')
    Left = 224
    Top = 32
  end
end