object FormRelatorioBoletimGerado: TFormRelatorioBoletimGerado
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Boletins Gerados'
  ClientHeight = 221
  ClientWidth = 390
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
    Width = 390
    Height = 169
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 18
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 201
      Top = 18
      Width = 52
      Height = 13
      Caption = 'Data Final:'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 25
      Top = 34
      Width = 153
      Height = 26
      Date = 40561.696066354170000000
      Time = 40561.696066354170000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 201
      Top = 34
      Width = 145
      Height = 26
      Date = 40561.696066354170000000
      Time = 40561.696066354170000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadioGroup1: TRadioGroup
      Left = 25
      Top = 66
      Width = 321
      Height = 83
      Caption = 'Op'#231#245'es'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Utilizados'
        'N'#227'o Utilizados'
        'Todos')
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 217
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Ok'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 296
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
