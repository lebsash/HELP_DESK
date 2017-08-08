object Form7: TForm7
  Left = 607
  Top = 275
  Width = 409
  Height = 252
  BorderIcons = [biSystemMenu]
  Caption = 'HELP_DESK - '#1057#1085#1103#1090#1080#1077' '#1079#1072#1087#1088#1086#1089#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1084
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
    Left = 8
    Top = 24
    Width = 235
    Height = 13
    Caption = #1042#1099' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086' '#1093#1086#1090#1080#1090#1077' '#1089#1085#1103#1090#1100' '#1042#1072#1096#1091' '#1079#1072#1103#1074#1082#1091'?'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 53
    Height = 13
    Caption = #8470' '#1079#1072#1103#1074#1082#1080':'
  end
  object Label3: TLabel
    Left = 64
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 8
    Top = 96
    Width = 96
    Height = 13
    Caption = #1042#1072#1096' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
  end
  object SpeedButton1: TSpeedButton
    Left = 48
    Top = 184
    Width = 145
    Height = 22
    Caption = #1057#1085#1103#1090#1100' '#1079#1072#1103#1074#1082#1091
    Flat = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 192
    Top = 184
    Width = 137
    Height = 22
    Caption = #1054#1090#1084#1077#1085#1072
    Flat = True
    OnClick = SpeedButton2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 385
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 8
    Top = 112
    Width = 385
    Height = 65
    Lines.Strings = (
      'Memo2')
    TabOrder = 1
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'UPDATE ZAPROZ SET DATE_END=:DATE_END, STATUS=:STATUS, OTHER=:OTH' +
        'ER WHERE ID=:ID')
    Left = 360
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
        Name = 'OTHER'
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
      'select * from ZAPROZ WHERE ID=:ID')
    Left = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery2ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery2ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery2ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery2STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery2SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery2DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery2DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery2DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery2OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery2OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery2TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery2IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery2IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
  end
end
