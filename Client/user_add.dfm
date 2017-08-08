object Form6: TForm6
  Left = 208
  Top = 114
  Width = 447
  Height = 387
  Caption = 'HELP_DESK - '#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' '#1089#1080#1089#1090#1077#1084#1099
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
    Top = 16
    Width = 105
    Height = 13
    Caption = #1058#1045#1050#1059#1065#1040#1071' '#1060#1048#1056#1052#1040': '
  end
  object Label2: TLabel
    Left = 120
    Top = 16
    Width = 305
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 55
    Top = 52
    Width = 25
    Height = 13
    Caption = #1048#1084#1103':'
  end
  object Label4: TLabel
    Left = 31
    Top = 77
    Width = 50
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
  end
  object Label5: TLabel
    Left = 30
    Top = 100
    Width = 52
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
  end
  object Label6: TLabel
    Left = 48
    Top = 144
    Width = 41
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Label7: TLabel
    Left = 11
    Top = 168
    Width = 79
    Height = 13
    Caption = #1057#1074#1077#1088#1082#1072' '#1087#1072#1088#1086#1083#1103':'
  end
  object Label8: TLabel
    Left = 28
    Top = 208
    Width = 63
    Height = 13
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
  end
  object Label9: TLabel
    Left = 52
    Top = 232
    Width = 34
    Height = 13
    Caption = #1054#1090#1076#1077#1083':'
  end
  object Label10: TLabel
    Left = 58
    Top = 272
    Width = 28
    Height = 13
    Caption = #1056#1086#1083#1100':'
  end
  object SpeedButton1: TSpeedButton
    Left = 40
    Top = 312
    Width = 337
    Height = 22
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Flat = True
    OnClick = SpeedButton1Click
  end
  object Label11: TLabel
    Left = 272
    Top = 264
    Width = 38
    Height = 13
    Caption = 'Label11'
  end
  object Label12: TLabel
    Left = 272
    Top = 280
    Width = 38
    Height = 13
    Caption = 'Label12'
  end
  object Label13: TLabel
    Left = 272
    Top = 296
    Width = 38
    Height = 13
    Caption = 'Label13'
  end
  object Edit1: TEdit
    Left = 88
    Top = 48
    Width = 265
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 88
    Top = 72
    Width = 265
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 88
    Top = 96
    Width = 265
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object MaskEdit1: TMaskEdit
    Left = 95
    Top = 141
    Width = 170
    Height = 21
    MaxLength = 15
    PasswordChar = '*'
    TabOrder = 3
  end
  object MaskEdit2: TMaskEdit
    Left = 95
    Top = 165
    Width = 170
    Height = 21
    MaxLength = 15
    PasswordChar = '*'
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 95
    Top = 204
    Width = 249
    Height = 21
    TabOrder = 5
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 95
    Top = 228
    Width = 249
    Height = 21
    TabOrder = 6
    Text = 'Edit4'
  end
  object ComboBox1: TComboBox
    Left = 94
    Top = 269
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    Items.Strings = (
      #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
      #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088)
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO USERS (NAME, FAMILY, SECOND_NAME, ID_FIRM, OTDEL, DO' +
        'LGNOST, PASS, ROLE) VALUES (:NAME, :FAMILY, :SECOND_NAME, :ID_FI' +
        'RM, :OTDEL, :DOLGNOST, :PASS, :ROLE)')
    Left = 384
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECOND_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FIRM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTDEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOLGNOST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PASS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROLE'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS ORDER BY ID')
    Left = 384
    Top = 88
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery2SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery2FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery2PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery2ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery2DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery2OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'UPDATE USERS SET DOLGNOST=:DOLGNOST, FAMILY=:FAMILY, NAME=:NAME,' +
        ' OTDEL=:OTDEL, PASS=:PASS, ROLE=:ROLE, SECOND_NAME=:SECOND_NAME ' +
        'WHERE ID=:ID')
    Left = 384
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOLGNOST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTDEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PASS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECOND_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from USERS WHERE FAMILY=:FAMILY AND NAME=:NAME AND ID_F' +
        'IRM=:ID_FIRM')
    Left = 392
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FIRM'
        ParamType = ptUnknown
      end>
    object IBQuery4ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery4SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery4FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery4PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery4ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery4DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery4OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
  end
end
