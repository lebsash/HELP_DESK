object Form9: TForm9
  Left = 463
  Top = 208
  Width = 460
  Height = 189
  BorderIcons = [biSystemMenu]
  Caption = 'HELP_DESK - '#1054#1090#1082#1083#1086#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel
    Left = 288
    Top = 0
    Width = 32
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 177
    Height = 17
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1079#1072#1103#1074#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 433
    Height = 89
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 120
    Width = 209
    Height = 25
    Caption = #1054#1090#1082#1083#1086#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
    TabOrder = 2
    OnClick = BitBtn1Click
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
  end
  object BitBtn2: TBitBtn
    Left = 216
    Top = 120
    Width = 225
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = BitBtn2Click
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
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'UPDATE ZAPROZ SET DATE_END=:DATE_END, STATUS=:STATUS WHERE ID=:I' +
        'D')
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_END'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO ZAPROS_TELO (DATE_GET, ID_ADMIN, ID_FROM, ID_SHAPKA,' +
        ' STATUS, TEXT) VALUES (:DATE_GET, :ID_ADMIN, :ID_FROM, :ID_SHAPK' +
        'A, :STATUS, :TEXT)')
    Left = 224
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_GET'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_ADMIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_SHAPKA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEXT'
        ParamType = ptUnknown
      end>
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_SHAP, ID_USER, ' +
        'TEXT) VALUES (:ACT_TYPE, :DATE_GET, :FIO, :ID_SHAP, :ID_USER, :T' +
        'EXT)')
    Left = 256
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACT_TYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATE_GET'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_SHAP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_USER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEXT'
        ParamType = ptUnknown
      end>
  end
end
