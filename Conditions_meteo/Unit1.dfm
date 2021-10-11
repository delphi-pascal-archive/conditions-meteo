object CurrentWeather: TCurrentWeather
  Left = 220
  Top = 131
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Conditions meteo - '
  ClientHeight = 290
  ClientWidth = 828
  Color = 16108977
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    000001000100202010FF00000000E80200001600000028000000200000004000
    0000010004000000000000000000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000007F777700000077700000000000000007F77F777000077770000000
    000000007FFF777F7777777F77000000000000007FFFFF77F77F777F77000000
    0000000FFFFF7FFFFFFFFFF77F7000000000000FF7FFFFFFFFFFF7FF77700000
    0000000FFFFFFFF7F7FFFFFFFF7000000000000FFFFFFF7FFFFF7FFFF7700000
    0000000FFFFFFFFFFFFFFFFFFF70000B0000B000FFFFFFFFFFFF7FF7FF00000B
    B0000BB0FFFFFFFFFFFFF77FFF0000000B00BBBB00000FFFFFF0FFFFF0000000
    0000BBBBBBBBB00FF00000FF00000000000BBBBBBBBBBB000BB0000000000000
    000BBBBBBBBBBBBBBBB00000000000000B0BBBBBBBBBBBBBBBB0B00000000000
    0B0BBBBBBBBBBBBBBBB0B00000000000000BBBBBBBBBBBBBBBB0000000000000
    000BBBBBBBBBBBBBBBB00000000000000000BBBBBBBBBBBBBB00000000000000
    0B00BBBBBBBBBBBBBB00B0000000000BB0000BBBBBBBBBBBB0000BB00000000B
    0000B0BBBBBBBBBB0B0000B00000000000000000BBBBBB000000000000000000
    00000000000000000000000000000000000000B000BB000B0000000000000000
    00000B0000000000B0000000000000000000BB0000000000BB00000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFC07C7FFF80383FFF00003FFE00001FFE00001FFC00000FFC00000FFC0
    0000FFC00000FE000000EE000001E6000001FA000003FE000103FC0000CFF800
    007FF000003FF000003FF800007FFC0000FFFE0001FFFA00017FE600019FEE00
    01DFFE0001FFFFF03FFFFFD86FFFFFBCF7FFFF3FF3FFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = CheckConditionsClick
  PixelsPerInch = 120
  TextHeight = 16
  object Image1: TImage
    Left = 246
    Top = 5
    Width = 59
    Height = 59
    Transparent = True
  end
  object Label2: TLabel
    Left = 372
    Top = 2
    Width = 113
    Height = 16
    Caption = 'Pour aujourd'#39'hui'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 325
    Top = 46
    Width = 40
    Height = 16
    Caption = 'SkyJr'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 247
    Top = 68
    Width = 69
    Height = 16
    Caption = 'TempMax'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 247
    Top = 85
    Width = 45
    Height = 16
    Caption = 'VentJr'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 247
    Top = 101
    Width = 88
    Height = 16
    Caption = 'Precipitation'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape4: TShape
    Left = 241
    Top = 0
    Width = 277
    Height = 127
    Brush.Color = 16772582
  end
  object Image2: TImage
    Left = 246
    Top = 130
    Width = 59
    Height = 60
    Transparent = True
  end
  object Label8: TLabel
    Left = 377
    Top = 129
    Width = 65
    Height = 16
    Caption = 'Cette nuit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 325
    Top = 171
    Width = 42
    Height = 16
    Caption = 'SkyNt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 247
    Top = 193
    Width = 65
    Height = 16
    Caption = 'TempMin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 247
    Top = 209
    Width = 47
    Height = 16
    Caption = 'VentNt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 247
    Top = 225
    Width = 103
    Height = 16
    Caption = 'PrecipitationNt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape5: TShape
    Left = 241
    Top = 126
    Width = 277
    Height = 121
    Brush.Color = 16757653
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 247
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    DesignSize = (
      828
      247)
    object Shape1: TShape
      Left = 276
      Top = 0
      Width = 277
      Height = 127
      Brush.Color = 16772582
    end
    object Shape2: TShape
      Left = 276
      Top = 126
      Width = 277
      Height = 121
      Brush.Color = 16757653
    end
    object Shape3: TShape
      Left = 0
      Top = 0
      Width = 277
      Height = 247
      Anchors = [akLeft, akTop, akBottom]
      ParentShowHint = False
      ShowHint = True
    end
    object ReportedAt: TLabel
      Left = 2
      Top = 155
      Width = 271
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'ReportedAt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object WeatherBMP: TImage
      Left = 6
      Top = 5
      Width = 59
      Height = 59
      AutoSize = True
      Transparent = True
    end
    object Sky: TLabel
      Left = 76
      Top = 26
      Width = 27
      Height = 16
      Caption = 'Sky'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Temperature: TLabel
      Left = 4
      Top = 66
      Width = 90
      Height = 16
      Caption = 'Temperature'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object FeelsLike: TLabel
      Left = 4
      Top = 81
      Width = 69
      Height = 16
      Caption = 'FeelsLike'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Wind: TLabel
      Left = 4
      Top = 97
      Width = 36
      Height = 16
      Caption = 'Wind'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Humidity: TLabel
      Left = 4
      Top = 112
      Width = 61
      Height = 16
      Caption = 'Humidity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ImageJour: TImage
      Left = 281
      Top = 5
      Width = 59
      Height = 59
      AutoSize = True
      Transparent = True
    end
    object Label1: TLabel
      Left = 431
      Top = 2
      Width = 113
      Height = 16
      Caption = 'Pour aujourd'#39'hui'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object SkyJr: TLabel
      Left = 359
      Top = 33
      Width = 40
      Height = 16
      Caption = 'SkyJr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object TempMax: TLabel
      Left = 282
      Top = 68
      Width = 69
      Height = 16
      Caption = 'TempMax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object VentJr: TLabel
      Left = 282
      Top = 85
      Width = 45
      Height = 16
      Caption = 'VentJr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Precipitation: TLabel
      Left = 282
      Top = 101
      Width = 88
      Height = 16
      Caption = 'Precipitation'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ImageNuit: TImage
      Left = 281
      Top = 130
      Width = 59
      Height = 60
      AutoSize = True
      Transparent = True
    end
    object Label7: TLabel
      Left = 475
      Top = 129
      Width = 65
      Height = 16
      Caption = 'Cette nuit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object SkyNt: TLabel
      Left = 359
      Top = 159
      Width = 42
      Height = 16
      Caption = 'SkyNt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object TempMin: TLabel
      Left = 282
      Top = 193
      Width = 65
      Height = 16
      Caption = 'TempMin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object VentNt: TLabel
      Left = 282
      Top = 209
      Width = 47
      Height = 16
      Caption = 'VentNt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object PrecipitationNt: TLabel
      Left = 282
      Top = 225
      Width = 103
      Height = 16
      Caption = 'PrecipitationNt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape7: TShape
      Left = 551
      Top = 126
      Width = 277
      Height = 121
      Brush.Color = 16757653
    end
    object PrecipitationNtDemain: TLabel
      Left = 556
      Top = 225
      Width = 156
      Height = 16
      Caption = 'PrecipitationNtDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object VentNtDemain: TLabel
      Left = 556
      Top = 209
      Width = 100
      Height = 16
      Caption = 'VentNtDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object TempMinDemain: TLabel
      Left = 556
      Top = 193
      Width = 118
      Height = 16
      Caption = 'TempMinDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SkyNtDemain: TLabel
      Left = 630
      Top = 159
      Width = 95
      Height = 16
      Caption = 'SkyNtDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 715
      Top = 129
      Width = 105
      Height = 16
      Caption = 'Nuit de demain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object ImageNuitDemain: TImage
      Left = 555
      Top = 130
      Width = 59
      Height = 60
      AutoSize = True
      Transparent = True
    end
    object Shape6: TShape
      Left = 551
      Top = 0
      Width = 277
      Height = 127
      Brush.Color = 16772582
    end
    object PrecipitationDemain: TLabel
      Left = 556
      Top = 101
      Width = 141
      Height = 16
      Caption = 'PrecipitationDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object VentJrDemain: TLabel
      Left = 556
      Top = 85
      Width = 98
      Height = 16
      Caption = 'VentJrDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object TempMaxDemain: TLabel
      Left = 556
      Top = 68
      Width = 122
      Height = 16
      Caption = 'TempMaxDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SkyJrDemain: TLabel
      Left = 630
      Top = 37
      Width = 93
      Height = 16
      Caption = 'SkyJrDemain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 735
      Top = 2
      Width = 88
      Height = 16
      Caption = 'Pour demain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object ImageJourDemain: TImage
      Left = 555
      Top = 5
      Width = 59
      Height = 59
      AutoSize = True
      Transparent = True
    end
  end
  object CheckConditions: TButton
    Left = 8
    Top = 256
    Width = 265
    Height = 25
    Caption = 'Refresh meteo'
    TabOrder = 1
    OnClick = CheckConditionsClick
  end
  object BtnOk: TButton
    Left = 696
    Top = 256
    Width = 121
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = BtnOkClick
  end
  object Timer1: TTimer
    Interval = 1800000
    OnTimer = CheckConditionsClick
    Left = 488
    Top = 204
  end
end
