object Form1: TForm1
  Left = 326
  Top = 212
  Width = 733
  Height = 435
  Caption = 'HELP_DESK - '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 362
    Width = 725
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 40
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object N2: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N3: TMenuItem
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
        OnClick = N3Click
      end
    end
  end
end
