object FormAlteraDataBoletim: TFormAlteraDataBoletim
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Alterando Datas'
  ClientHeight = 188
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 83
    Top = 79
    Width = 55
    Height = 13
    Caption = 'Nova Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 296
    Height = 13
    Caption = '* Aten'#231#227'o, este procedimento pode prejudicar o fechamento!'
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 329
    Height = 49
    BevelOuter = bvLowered
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DBText1: TDBText
      Left = 24
      Top = 24
      Width = 122
      Height = 17
      DataField = 'BCD_NUM'
      DataSource = FormConsultaBcd.DtMov
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 184
      Top = 24
      Width = 137
      Height = 17
      DataField = 'BCD_DATA'
      DataSource = FormConsultaBcd.DtMov
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 48
      Height = 13
      Caption = 'N. Boletim'
    end
    object Label2: TLabel
      Left = 183
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Data Atual'
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 83
    Top = 96
    Width = 186
    Height = 27
    Date = 41332.436924212960000000
    Time = 41332.436924212960000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 175
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 254
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end