object Form3: TForm3
  Left = 488
  Top = 291
  Width = 307
  Height = 186
  BorderIcons = [biSystemMenu]
  Caption = 'Help_DESK - '#1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 24
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
    Top = 52
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
    Top = 104
    Width = 169
    Height = 22
    Caption = #1042#1093#1086#1076
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5000555555555555577755555555555550B0555555555555F7F7555555555550
      00B05555555555577757555555555550B3B05555555555F7F557555555555000
      3B0555555555577755755555555500B3B0555555555577555755555555550B3B
      055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
      555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
      55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
      555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
      55555575FFFF7755555555570000755555555557777775555555}
    NumGlyphs = 2
    ParentFont = False
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
    Top = 78
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
    Left = 8
    Top = 104
    Width = 23
    Height = 22
    Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1076#1086#1089#1090#1091#1087#1072' '#1082' '#1041#1044
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
      03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
      FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
      FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
      3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
      33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
      33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
      33333337FFFFFFF7F33333300000000033333337777777773333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton2Click
  end
  object Edit1: TEdit
    Left = 94
    Top = 21
    Width = 178
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object MaskEdit1: TMaskEdit
    Left = 94
    Top = 48
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = Edit1KeyDown
  end
  object ComboBox1: TComboBox
    Left = 95
    Top = 75
    Width = 178
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ComboBox1'
    OnKeyDown = Edit1KeyDown
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 129
    Width = 291
    Height = 19
    Panels = <
      item
        Width = 50
      end>
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
      'select * from FIRM ORDER BY NAME')
    Left = 296
    Top = 136
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
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS ORDER BY FAMILY')
    Left = 328
    Top = 136
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
    object IBQuery4ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
  end
  object IBQuery5: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_USER, TEXT)')
    Left = 40
  end
  object STARTFB: TTimer
    Interval = 50
    OnTimer = STARTFBTimer
    Left = 8
    Top = 56
  end
end
