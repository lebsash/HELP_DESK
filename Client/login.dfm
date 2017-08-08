object Form3: TForm3
  Left = 363
  Top = 303
  Width = 427
  Height = 252
  BorderIcons = [biSystemMenu]
  Caption = 'Form3'
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
    Top = 144
    Width = 97
    Height = 22
    Caption = #1042#1093#1086#1076
    Flat = True
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel
    Left = 304
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 296
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Label4'
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
  end
  object Edit1: TEdit
    Left = 94
    Top = 21
    Width = 178
    Height = 21
    TabOrder = 0
  end
  object MaskEdit1: TMaskEdit
    Left = 94
    Top = 48
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 95
    Top = 75
    Width = 178
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ComboBox1'
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    Active = True
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
end
