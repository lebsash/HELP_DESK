object Form10: TForm10
  Left = 340
  Top = 164
  Width = 759
  Height = 413
  Caption = 'Help_DESK - '#1057#1086#1073#1099#1090#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 7
      Height = 13
      Caption = #1057
    end
    object Label2: TLabel
      Left = 112
      Top = 32
      Width = 12
      Height = 13
      Caption = #1076#1086
    end
    object Label3: TLabel
      Left = 272
      Top = 8
      Width = 53
      Height = 13
      Caption = #8470' '#1079#1072#1103#1074#1082#1080':'
    end
    object Label4: TLabel
      Left = 298
      Top = 32
      Width = 26
      Height = 13
      Caption = #1058#1048#1055':'
    end
    object Label5: TLabel
      Left = 237
      Top = 55
      Width = 86
      Height = 13
      Caption = #1060#1048#1054' '#1086#1087#1077#1088#1072#1090#1086#1088#1072':'
    end
    object SpeedButton1: TSpeedButton
      Left = 576
      Top = 24
      Width = 65
      Height = 49
      Hint = #1054#1089#1091#1097#1077#1089#1090#1074#1080#1090#1100' '#1074#1099#1073#1086#1088#1082#1091' '#1087#1086' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1084
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 8
      Width = 121
      Height = 17
      Caption = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1076#1072#1090#1072#1084
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 24
      Top = 28
      Width = 81
      Height = 21
      Date = 40039.401829236120000000
      Time = 40039.401829236120000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 134
      Top = 28
      Width = 81
      Height = 21
      Date = 40039.401951307870000000
      Time = 40039.401951307870000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 331
      Top = 5
      Width = 62
      Height = 21
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
    object ComboBox1: TComboBox
      Left = 331
      Top = 28
      Width = 238
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'ComboBox1'
    end
    object ComboBox2: TComboBox
      Left = 331
      Top = 49
      Width = 238
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = 'ComboBox2'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 743
    Height = 286
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object StatusBar1: TStatusBar
      Left = 1
      Top = 266
      Width = 741
      Height = 19
      Panels = <>
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 741
      Height = 265
      Align = alClient
      DataSource = DataSource1
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = #8470
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_GET'
          Title.Caption = #1044#1072#1090#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_USER'
          Title.Caption = 'ID '#1086#1087#1077#1088#1072#1090#1086#1088#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEXT'
          Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_SHAP'
          Title.Caption = #8470' '#1079#1072#1103#1074#1082#1080
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACT_TYPE'
          Title.Caption = #1058#1048#1055
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIO'
          Title.Caption = #1060#1048#1054' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
          Visible = True
        end>
    end
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ACTIONS')
    Left = 664
    Top = 9
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ACTIONS.ID'
    end
    object IBQuery1DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ACTIONS.DATE_GET'
    end
    object IBQuery1ID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ACTIONS.ID_USER'
    end
    object IBQuery1TEXT: TIBStringField
      FieldName = 'TEXT'
      Origin = 'ACTIONS.TEXT'
      Size = 1024
    end
    object IBQuery1ID_SHAP: TIntegerField
      FieldName = 'ID_SHAP'
      Origin = 'ACTIONS.ID_SHAP'
    end
    object IBQuery1ACT_TYPE: TIBStringField
      FieldName = 'ACT_TYPE'
      Origin = 'ACTIONS.ACT_TYPE'
      Size = 512
    end
    object IBQuery1FIO: TIBStringField
      FieldName = 'FIO'
      Origin = 'ACTIONS.FIO'
      Size = 512
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 704
    Top = 8
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ACT_TYPE from ACTIONS ORDER BY ACT_TYPE')
    Left = 216
    object IBQuery2ACT_TYPE: TIBStringField
      FieldName = 'ACT_TYPE'
      Origin = 'ACTIONS.ACT_TYPE'
      Size = 512
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 185
    object N1: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1083#1086#1075
      OnClick = N2Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.txt'
    Left = 672
    Top = 80
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'DELETE FROM ACTIONS')
    Left = 672
    Top = 48
  end
end
