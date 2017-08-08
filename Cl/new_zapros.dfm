object Form4: TForm4
  Left = 640
  Top = 84
  Width = 386
  Height = 412
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Help_Desk - '#1076#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
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
    Left = 24
    Top = 156
    Width = 81
    Height = 13
    Caption = #1057#1091#1090#1100' '#1087#1088#1086#1073#1083#1077#1084#1099':'
  end
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 340
    Width = 137
    Height = 24
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 30
    Height = 13
    Caption = #1058#1077#1084#1072':'
  end
  object Label3: TLabel
    Left = 24
    Top = 8
    Width = 68
    Height = 13
    Caption = #1044#1072#1090#1072' '#1079#1072#1103#1074#1082#1080':'
  end
  object Label4: TLabel
    Left = 96
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 24
    Top = 32
    Width = 56
    Height = 13
    Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100':'
  end
  object Label6: TLabel
    Left = 24
    Top = 104
    Width = 46
    Height = 13
    Caption = 'IP-'#1072#1076#1088#1077#1089':'
  end
  object Label7: TLabel
    Left = 120
    Top = 136
    Width = 3
    Height = 13
  end
  object Label8: TLabel
    Left = 24
    Top = 136
    Width = 94
    Height = 13
    Caption = #1058#1077#1082#1091#1097#1080#1081' IP-'#1072#1076#1088#1077#1089':'
  end
  object SpeedButton2: TSpeedButton
    Left = 320
    Top = 8
    Width = 23
    Height = 22
    Visible = False
    OnClick = SpeedButton2Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 172
    Width = 329
    Height = 163
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 24
    Top = 72
    Width = 329
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 29
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1077#1087#1077#1085#1100
    OnChange = ComboBox1Change
    Items.Strings = (
      #1042#1099#1089#1086#1082#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
      #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1077#1087#1077#1085#1100
      #1053#1080#1079#1082#1072#1103' '#1089#1090#1077#1087#1077#1085#1100)
  end
  object Edit2: TEdit
    Left = 76
    Top = 101
    Width = 121
    Height = 21
    MaxLength = 16
    TabOrder = 2
    OnChange = Edit2Change
    OnKeyPress = Edit2KeyPress
    OnKeyUp = Edit2KeyUp
  end
  object Button1: TButton
    Left = 192
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    Visible = False
    OnClick = Button1Click
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO ZAPROZ (DATE_GET, ID_FROM_FIRM, ID_FROM_USER, SPEED,' +
        ' STATUS, TEMA) VALUES (:DATE_GET, :ID_FROM_FIRM, :ID_FROM_USER, ' +
        ':SPEED, :STATUS, :TEMA)')
    Left = 296
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_GET'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FROM_FIRM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FROM_USER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SPEED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEMA'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ZAPROZ ORDER BY ID')
    Left = 296
    Top = 240
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
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO ZAPROS_TELO (DATE_GET, ID_FROM, ID_SHAPKA, STATUS, T' +
        'EXT)  VALUES (:DATE_GET, :ID_FROM, :ID_SHAPKA, :STATUS, :TEXT)')
    Left = 296
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_GET'
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
end
