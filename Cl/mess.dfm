object Form5: TForm5
  Left = 250
  Top = 182
  Width = 742
  Height = 446
  Caption = 'Help_Desk - Messages'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 265
    Width = 734
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 105
    Width = 734
    Height = 160
    Align = alTop
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 0
  end
  object RichEdit2: TRichEdit
    Left = 0
    Top = 268
    Width = 734
    Height = 102
    Align = alClient
    Lines.Strings = (
      'RichEdit2')
    TabOrder = 1
    OnKeyDown = RichEdit2KeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 734
    Height = 42
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 8
      Width = 153
      Height = 22
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
      OnClick = SpeedButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 105
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 732
      Height = 55
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 54
        Height = 13
        Caption = #8470' '#1047#1072#1103#1074#1082#1080':'
      end
      object Label2: TLabel
        Left = 64
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Label2'
      end
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 90
        Height = 13
        Caption = #1042#1072#1096' '#1082#1086#1085#1089#1091#1083#1100#1090#1072#1085#1090':'
      end
      object Label4: TLabel
        Left = 102
        Top = 25
        Width = 32
        Height = 13
        Caption = 'Label4'
      end
      object Label5: TLabel
        Left = 376
        Top = 8
        Width = 147
        Height = 13
        Caption = #1044#1072#1090#1072' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1079#1072#1103#1074#1082#1080':'
      end
      object Label6: TLabel
        Left = 529
        Top = 9
        Width = 32
        Height = 13
        Caption = 'Label6'
      end
      object Label7: TLabel
        Left = 376
        Top = 23
        Width = 76
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089' '#1079#1072#1103#1074#1082#1080':'
      end
      object Label8: TLabel
        Left = 528
        Top = 23
        Width = 32
        Height = 13
        Align = alCustom
        Caption = 'Label8'
      end
      object Label9: TLabel
        Left = 8
        Top = 40
        Width = 87
        Height = 13
        Caption = 'ID '#1050#1086#1085#1089#1091#1083#1100#1090#1072#1085#1090#1072':'
      end
      object Label10: TLabel
        Left = 102
        Top = 40
        Width = 38
        Height = 13
        Caption = 'Label10'
      end
    end
    object RichEdit3: TRichEdit
      Left = 1
      Top = 56
      Width = 732
      Height = 89
      Align = alTop
      Color = cl3DLight
      Lines.Strings = (
        'RichEdit3')
      TabOrder = 1
    end
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO ZAPROS_TELO (TEXT, STATUS, ID_SHAPKA, ID_FROM, DATE_' +
        'GET)  VALUES (:TEXT, :STATUS, :ID_SHAPKA, :ID_FROM, :DATE_GET)')
    Left = 648
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TEXT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_SHAPKA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATE_GET'
        ParamType = ptUnknown
      end>
  end
end
