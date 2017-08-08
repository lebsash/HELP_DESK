object Form5: TForm5
  Left = 722
  Top = 177
  Width = 356
  Height = 345
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'HELP_DESK - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1092#1080#1088#1084
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
    Top = 8
    Width = 118
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099':'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 48
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 37
    Height = 13
    Caption = #1055#1088#1086#1095#1077#1077
  end
  object Label5: TLabel
    Left = 8
    Top = 248
    Width = 62
    Height = 13
    Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100':'
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 272
    Width = 145
    Height = 22
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Flat = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 160
    Top = 272
    Width = 177
    Height = 22
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Flat = True
    OnClick = SpeedButton2Click
  end
  object Label6: TLabel
    Left = 8
    Top = 296
    Width = 32
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object Label7: TLabel
    Left = 224
    Top = 296
    Width = 32
    Height = 13
    Caption = 'Label7'
    Visible = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 64
    Width = 329
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 64
    Top = 91
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 144
    Width = 329
    Height = 89
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 76
    Top = 245
    Width = 261
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = #1053#1077#1072#1082#1090#1080#1074#1085#1072
    Items.Strings = (
      #1040#1082#1090#1080#1074#1085#1072
      #1053#1077#1072#1082#1090#1080#1074#1085#1072)
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO FIRM (NAME, OTHER, PHONE, ACT) VALUES (:NAME, :OTHER' +
        ', :PHONE, :ACT)')
    Left = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTHER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PHONE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACT'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'UPDATE FIRM SET ACT=:ACT, ADRESS=:ADRESS, NAME=:NAME, OTHER=:OTH' +
        'ER, PHONE=:PHONE WHERE ID=:ID')
    Left = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ADRESS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTHER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PHONE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end
