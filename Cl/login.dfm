object Form3: TForm3
  Left = 432
  Top = 186
  Width = 348
  Height = 219
  BorderIcons = [biSystemMenu]
  Caption = 'HELP_DESK - '#1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 40
    Width = 49
    Height = 16
    Caption = #1051#1086#1075#1080#1085':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 27
    Top = 68
    Width = 60
    Height = 16
    Caption = #1055#1072#1088#1086#1083#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 96
    Top = 112
    Width = 177
    Height = 22
    Caption = #1042#1093#1086#1076
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
  object Label3: TLabel
    Left = 304
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Label4: TLabel
    Left = 296
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object Label5: TLabel
    Left = 33
    Top = 94
    Width = 54
    Height = 16
    Caption = #1060#1080#1088#1084#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 312
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object SpeedButton2: TSpeedButton
    Left = 280
    Top = 112
    Width = 23
    Height = 22
    Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1080#1089#1090#1077#1084#1099
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
      0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
      00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
      00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
      00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
      D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
      FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton2Click
  end
  object Label7: TLabel
    Left = 8
    Top = 120
    Width = 32
    Height = 13
    Caption = 'Label7'
    Visible = False
  end
  object Label8: TLabel
    Left = 6
    Top = 8
    Width = 137
    Height = 16
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' AD:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 94
    Top = 37
    Width = 211
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
  end
  object MaskEdit1: TMaskEdit
    Left = 94
    Top = 64
    Width = 211
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnChange = MaskEdit1Change
    OnKeyDown = MaskEdit1KeyDown
  end
  object ComboBox1: TComboBox
    Left = 95
    Top = 91
    Width = 210
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnChange = ComboBox1Change
    OnKeyDown = ComboBox1KeyDown
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 162
    Width = 332
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 136
    Width = 329
    Height = 17
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 144
    Top = 8
    Width = 169
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS WHERE NAME=:NAME and FAMILY=:FAMILY')
    Left = 304
    Top = 8
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
      end>
    object IBQuery1PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery1SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery1FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery1ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery1DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery1OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery1ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FIRM ORDER BY NAME')
    Left = 312
    Top = 96
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'FIRM.ID'
    end
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'FIRM.NAME'
      Size = 50
    end
    object IBQuery2ADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = 'FIRM.ADRESS'
      Size = 120
    end
    object IBQuery2PHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = 'FIRM.PHONE'
      Size = 25
    end
    object IBQuery2OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'FIRM.OTHER'
      Size = 512
    end
    object IBQuery2UIN1: TIntegerField
      FieldName = 'UIN1'
      Origin = 'FIRM.UIN1'
    end
    object IBQuery2ACT: TIntegerField
      FieldName = 'ACT'
      Origin = 'FIRM.ACT'
    end
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FIRM WHERE ID=:ID_FIRM')
    Left = 272
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_FIRM'
        ParamType = ptUnknown
      end>
    object IBQuery3ID: TIntegerField
      FieldName = 'ID'
      Origin = 'FIRM.ID'
    end
    object IBQuery3NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'FIRM.NAME'
      Size = 50
    end
    object IBQuery3ADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = 'FIRM.ADRESS'
      Size = 120
    end
    object IBQuery3PHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = 'FIRM.PHONE'
      Size = 25
    end
    object IBQuery3OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'FIRM.OTHER'
      Size = 512
    end
    object IBQuery3UIN1: TIntegerField
      FieldName = 'UIN1'
      Origin = 'FIRM.UIN1'
    end
    object IBQuery3ACT: TIntegerField
      FieldName = 'ACT'
      Origin = 'FIRM.ACT'
    end
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 16
  end
  object Timer2: TTimer
    Interval = 500
    OnTimer = Timer2Timer
    Left = 48
  end
  object StartFBTimer: TTimer
    Interval = 50
    OnTimer = StartFBTimerTimer
    Left = 8
    Top = 32
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT IP_ONE FROM ZAPROS WHERE 0')
    Left = 240
  end
  object IBQuery5: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 208
  end
  object IBQuery6: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM USERS WHERE USLOGIN=:USLOGIN')
    Left = 48
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USLOGIN'
        ParamType = ptUnknown
      end>
    object IBQuery6ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery6NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery6SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery6FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery6PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery6ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery6DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery6OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery6ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery6USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object IBQuery7: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM USERSGRAY WHERE NAME_LOGIN=:NAME_LOGIN')
    Left = 48
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME_LOGIN'
        ParamType = ptUnknown
      end>
    object IBQuery7ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERSGRAY.ID'
    end
    object IBQuery7NAME_LOGIN: TIBStringField
      FieldName = 'NAME_LOGIN'
      Origin = 'USERSGRAY.NAME_LOGIN'
      Size = 40
    end
    object IBQuery7DET: TIntegerField
      FieldName = 'DET'
      Origin = 'USERSGRAY.DET'
    end
  end
  object IBQuery8: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS WHERE USLOGIN=:USLOGIN')
    Left = 96
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USLOGIN'
        ParamType = ptUnknown
      end>
    object IBQuery8ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery8NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery8SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery8FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery8PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery8ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery8DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery8OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery8ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery8USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
end
