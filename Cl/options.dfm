object Form8: TForm8
  Left = 567
  Top = 233
  BorderStyle = bsToolWindow
  Caption = 'Help_DESK - '#1053#1072#1089#1090#1086#1081#1082#1072
  ClientHeight = 298
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 80
    Top = 248
    Width = 129
    Height = 22
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 224
    Top = 248
    Width = 121
    Height = 22
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 8
    Width = 409
    Height = 121
    Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1072#1103' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103' '
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 24
      Width = 34
      Height = 13
      Caption = #1051#1086#1075#1080#1085':'
    end
    object Label2: TLabel
      Left = 29
      Top = 49
      Width = 41
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100':'
    end
    object Label3: TLabel
      Left = 29
      Top = 75
      Width = 40
      Height = 13
      Caption = #1060#1080#1088#1084#1072':'
    end
    object Edit1: TEdit
      Left = 75
      Top = 21
      Width = 190
      Height = 21
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 75
      Top = 46
      Width = 190
      Height = 21
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 74
      Top = 72
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 96
      Width = 241
      Height = 17
      Caption = #1040#1074#1090#1086#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1083#1086#1075#1080#1085#1072' '#1080' '#1087#1072#1088#1086#1083#1103
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 136
    Width = 409
    Height = 105
    Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 97
      Height = 13
      Caption = 'IP - '#1072#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072':'
    end
    object Label5: TLabel
      Left = 58
      Top = 48
      Width = 55
      Height = 13
      Caption = #1055#1091#1090#1100' '#1082' '#1041#1044':'
    end
    object Edit2: TEdit
      Left = 121
      Top = 20
      Width = 272
      Height = 21
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 120
      Top = 48
      Width = 273
      Height = 21
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 279
    Width = 487
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
