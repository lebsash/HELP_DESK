object Form10: TForm10
  Left = 334
  Top = 296
  Width = 431
  Height = 264
  BorderIcons = [biSystemMenu]
  Caption = 'HELP_DESK - '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 66
    Top = 112
    Width = 53
    Height = 13
    Caption = #1042#1072#1096#1077' '#1080#1084#1103':'
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 176
    Width = 401
    Height = 33
    Caption = #1057#1054#1061#1056#1040#1053#1048#1058#1068
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
    Left = 8
    Top = 208
    Width = 401
    Height = 17
    Caption = #1054#1058#1052#1045#1053#1040
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
      5555557777777775F5555559999999505555555777777757FFF5555555555550
      0955555555555FF7775F55555555995501955555555577557F75555555555555
      01995555555555557F5755555555555501905555555555557F57555555555555
      0F905555555555557FF75555555555500005555555555557777555555555550F
      F05555555555557F57F5555555555008F05555555555F775F755555555570000
      05555555555775577555555555700007555555555F755F775555555570000755
      55555555775F77555555555700075555555555F75F7755555555570007555555
      5555577F77555555555500075555555555557777555555555555}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 401
    Height = 169
    Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1089#1080#1089#1090#1077#1084#1099' '
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 87
      Height = 13
      Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103' AD:'
    end
    object Label2: TLabel
      Left = 32
      Top = 56
      Width = 79
      Height = 13
      Caption = #1042#1072#1096#1072' '#1092#1072#1084#1080#1083#1080#1103':'
    end
    object Label3: TLabel
      Left = 58
      Top = 80
      Width = 53
      Height = 13
      Caption = #1042#1072#1096#1077' '#1080#1084#1103':'
    end
    object Label5: TLabel
      Left = 34
      Top = 104
      Width = 78
      Height = 13
      Caption = #1042#1072#1096#1077' '#1086#1090#1095#1077#1089#1090#1074#1086':'
    end
    object Edit1: TEdit
      Left = 115
      Top = 29
      Width = 238
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 115
      Top = 53
      Width = 238
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
      OnChange = Edit2Change
      OnClick = Edit2Change
    end
    object Edit3: TEdit
      Left = 115
      Top = 77
      Width = 238
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
      OnChange = Edit3Change
      OnClick = Edit3Change
    end
    object CheckBox1: TCheckBox
      Left = 116
      Top = 128
      Width = 243
      Height = 17
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1072#1103' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103' '#1074' '#1089#1080#1089#1090#1077#1084#1077
      TabOrder = 4
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 152
      Width = 377
      Height = 9
      TabOrder = 3
    end
  end
  object Edit4: TEdit
    Left = 123
    Top = 109
    Width = 238
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    OnChange = Edit4Change
    OnClick = Edit4Change
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO USERSGRAY (NAME_LOGIN, DET) VALUES (:NAME_LOGIN, :DE' +
        'T)')
    Left = 336
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME_LOGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DET'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 304
    Top = 8
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS ORDER BY ID')
    Left = 272
    Top = 8
    object IBQuery3ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery3SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery3FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery3PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery3ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery3DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery3OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery3ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery3USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 376
    Top = 120
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE USERS SET PASS=:PASS, ROLE=:ROLE WHERE ID=:ID')
    Left = 376
    Top = 8
    ParamData = <
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
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end
