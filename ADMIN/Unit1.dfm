object Form1: TForm1
  Left = 312
  Top = 109
  Width = 854
  Height = 554
  Caption = 'HELP_DESK - '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 404
    Width = 838
    Height = 1
    Cursor = crVSplit
    Align = alBottom
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 477
    Width = 838
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 492
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 838
    Height = 72
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object ListView1: TListView
      Left = 1
      Top = 1
      Width = 836
      Height = 70
      Align = alClient
      Columns = <
        item
        end
        item
        end>
      RowSelect = True
      SmallImages = ImageList1
      TabOrder = 0
      ViewStyle = vsReport
      OnDblClick = ListView1DblClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 838
    Height = 404
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #1042#1089#1077' '#1079#1072#1103#1074#1082#1080
      object Label5: TLabel
        Left = 440
        Top = 18
        Width = 12
        Height = 13
        Caption = #1087#1086
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 830
        Height = 97
        Align = alTop
        Caption = #1050#1088#1080#1090#1077#1088#1080#1080' '#1074#1099#1073#1086#1088#1082#1080' '
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 40
          Height = 13
          Caption = #1060#1080#1088#1084#1072':'
        end
        object Label2: TLabel
          Left = 10
          Top = 47
          Width = 61
          Height = 13
          Caption = #1058#1080#1087' '#1079#1072#1103#1074#1082#1080':'
        end
        object Label3: TLabel
          Left = 14
          Top = 68
          Width = 56
          Height = 13
          Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100':'
        end
        object Label4: TLabel
          Left = 440
          Top = 18
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label6: TLabel
          Left = 549
          Top = 16
          Width = 12
          Height = 13
          Caption = #1087#1086
        end
        object SpeedButton1: TSpeedButton
          Left = 504
          Top = 37
          Width = 146
          Height = 49
          Caption = #1055#1086#1080#1089#1082
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = SpeedButton1Click
        end
        object Label7: TLabel
          Left = 320
          Top = 40
          Width = 53
          Height = 13
          Caption = #8470' '#1079#1072#1103#1074#1082#1080':'
        end
        object Label21: TLabel
          Left = 672
          Top = 52
          Width = 52
          Height = 13
          Caption = #1048#1085#1090#1077#1088#1074#1072#1083':'
        end
        object SpeedButton6: TSpeedButton
          Left = 200
          Top = 96
          Width = 23
          Height = 22
          Visible = False
          OnClick = SpeedButton6Click
        end
        object Label53: TLabel
          Left = 32
          Top = 104
          Width = 6
          Height = 13
          Caption = '0'
          Visible = False
        end
        object Label48: TLabel
          Left = 32
          Top = 120
          Width = 38
          Height = 13
          Caption = 'Label48'
          Visible = False
        end
        object Label49: TLabel
          Left = 32
          Top = 136
          Width = 38
          Height = 13
          Caption = 'Label49'
          Visible = False
        end
        object Label50: TLabel
          Left = 112
          Top = 144
          Width = 38
          Height = 13
          Caption = 'Label50'
          Visible = False
        end
        object Label51: TLabel
          Left = 32
          Top = 152
          Width = 38
          Height = 13
          Caption = 'Label51'
          Visible = False
        end
        object Label52: TLabel
          Left = 176
          Top = 128
          Width = 6
          Height = 13
          Caption = '1'
          Visible = False
        end
        object Label65: TLabel
          Left = 320
          Top = 64
          Width = 52
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103':'
        end
        object ComboBox1: TComboBox
          Left = 74
          Top = 21
          Width = 223
          Height = 21
          ItemHeight = 13
          TabOrder = 0
        end
        object ComboBox2: TComboBox
          Left = 74
          Top = 43
          Width = 223
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          OnChange = ComboBox2Change
        end
        object CheckBox1: TCheckBox
          Left = 320
          Top = 16
          Width = 121
          Height = 17
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1072#1084':'
          TabOrder = 2
        end
        object ComboBox3: TComboBox
          Left = 73
          Top = 64
          Width = 224
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          OnChange = ComboBox3Change
        end
        object DateTimePicker1: TDateTimePicker
          Left = 455
          Top = 14
          Width = 89
          Height = 21
          Date = 40036.543811481480000000
          Time = 40036.543811481480000000
          TabOrder = 4
        end
        object DateTimePicker2: TDateTimePicker
          Left = 568
          Top = 13
          Width = 81
          Height = 21
          Date = 40036.543841863430000000
          Time = 40036.543841863430000000
          TabOrder = 5
        end
        object Edit1: TEdit
          Left = 380
          Top = 37
          Width = 121
          Height = 21
          TabOrder = 6
          OnKeyPress = Edit1KeyPress
        end
        object CheckBox4: TCheckBox
          Left = 672
          Top = 72
          Width = 153
          Height = 15
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1089#1088#1086#1095#1085#1086#1089#1090#1080
          TabOrder = 8
        end
        object CheckBox7: TCheckBox
          Left = 672
          Top = 28
          Width = 113
          Height = 17
          Caption = #1040#1074#1090#1086#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103'.'
          Checked = True
          State = cbChecked
          TabOrder = 9
          OnClick = CheckBox7Click
        end
        object Edit4: TEdit
          Left = 731
          Top = 48
          Width = 38
          Height = 21
          Hint = #1048#1085#1090#1077#1088#1074#1072#1083' '#1074' '#1089#1077#1082#1091#1085#1076#1072#1093
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          Text = '10'
          OnChange = Edit4Change
          OnKeyPress = Edit4KeyPress
        end
        object CheckBox9: TCheckBox
          Left = 671
          Top = 10
          Width = 113
          Height = 17
          Caption = #1055#1086#1090#1086#1082#1080
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = CheckBox9Click
        end
        object Edit6: TEdit
          Left = 380
          Top = 61
          Width = 121
          Height = 21
          TabOrder = 7
          OnKeyPress = Edit1KeyPress
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 97
        Width = 830
        Height = 279
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 828
          Height = 277
          Align = alClient
          Color = clWhite
          DataSource = DataSource1
          FixedColor = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = RUSSIAN_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnKeyDown = DBGrid1KeyDown
          OnTitleClick = DBGrid1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = #8470' '#1079#1072#1103#1074#1082#1080
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_FROM_FIRM'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_ISP'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_FROM_USER'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SPEED'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATE_GET'
              Title.Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_RAB'
              Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_END'
              Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OCENKA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OTHER'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TEMA'
              Title.Caption = #1058#1045#1052#1040
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_FROM_FIRM'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_ISP'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_FROM_USER'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SPEED'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATE_GET'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATE_RAB'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATE_END'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OCENKA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OTHER'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TEMA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'IPLOCAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'IPPC'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID1'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SECOND_NAME'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PASS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ROLE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DOLGNOST'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OTDEL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_FIRM'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'USLOGIN'
              Visible = False
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1103#1074#1082#1080' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 830
        Height = 105
        Align = alTop
        Caption = #1050#1088#1080#1090#1077#1088#1080#1080' '#1074#1099#1073#1086#1088#1082#1080' '
        TabOrder = 0
        object Label8: TLabel
          Left = 32
          Top = 24
          Width = 40
          Height = 13
          Caption = #1060#1080#1088#1084#1072':'
        end
        object Label9: TLabel
          Left = 10
          Top = 47
          Width = 61
          Height = 13
          Caption = #1058#1080#1087' '#1079#1072#1103#1074#1082#1080':'
        end
        object Label10: TLabel
          Left = 14
          Top = 68
          Width = 56
          Height = 13
          Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100':'
        end
        object Label11: TLabel
          Left = 440
          Top = 18
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label12: TLabel
          Left = 549
          Top = 16
          Width = 12
          Height = 13
          Caption = #1087#1086
        end
        object SpeedButton2: TSpeedButton
          Left = 509
          Top = 38
          Width = 140
          Height = 59
          Caption = #1055#1086#1080#1089#1082
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FFF333333333333000333333333
            3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
            3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
            0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
            BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
            33337777773FF733333333333300033333333333337773333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = SpeedButton2Click
        end
        object Label13: TLabel
          Left = 320
          Top = 40
          Width = 53
          Height = 13
          Caption = #8470' '#1079#1072#1103#1074#1082#1080':'
        end
        object Label66: TLabel
          Left = 320
          Top = 64
          Width = 52
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103':'
        end
        object ComboBox4: TComboBox
          Left = 74
          Top = 21
          Width = 223
          Height = 21
          ItemHeight = 13
          TabOrder = 0
        end
        object ComboBox5: TComboBox
          Left = 74
          Top = 43
          Width = 223
          Height = 21
          ItemHeight = 13
          TabOrder = 1
        end
        object CheckBox2: TCheckBox
          Left = 320
          Top = 16
          Width = 121
          Height = 17
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1072#1084':'
          TabOrder = 2
        end
        object ComboBox6: TComboBox
          Left = 73
          Top = 64
          Width = 224
          Height = 21
          ItemHeight = 13
          TabOrder = 3
        end
        object DateTimePicker3: TDateTimePicker
          Left = 455
          Top = 14
          Width = 89
          Height = 21
          Date = 40036.543811481480000000
          Time = 40036.543811481480000000
          TabOrder = 4
        end
        object DateTimePicker4: TDateTimePicker
          Left = 568
          Top = 13
          Width = 81
          Height = 21
          Date = 40036.543841863430000000
          Time = 40036.543841863430000000
          TabOrder = 5
        end
        object Edit2: TEdit
          Left = 380
          Top = 37
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object CheckBox3: TCheckBox
          Left = 322
          Top = 82
          Width = 161
          Height = 16
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1089#1088#1086#1095#1085#1086#1089#1090#1080
          TabOrder = 8
        end
        object Edit7: TEdit
          Left = 380
          Top = 61
          Width = 121
          Height = 21
          TabOrder = 7
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 105
        Width = 830
        Height = 271
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = #8470' '#1079#1072#1103#1074#1082#1080
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_FIRM'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_ISP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_USER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SPEED'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_GET'
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_RAB'
            Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_END'
            Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCENKA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTHER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TEMA'
            Title.Caption = #1058#1045#1052#1040
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAMILY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_FIRM'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_ISP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_USER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SPEED'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_GET'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_RAB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_END'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OCENKA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTHER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TEMA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FAMILY'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SECOND_NAME'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PASS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ROLE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DOLGNOST'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTDEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FIRM'
            Visible = False
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1103#1074#1082#1080' '#1086#1089#1090#1072#1083#1100#1085#1099#1093' '#1086#1087#1077#1088#1072#1090#1086#1088#1086#1074
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 830
        Height = 121
        Align = alTop
        Caption = #1050#1088#1080#1090#1077#1088#1080#1080' '#1074#1099#1073#1086#1088#1082#1080' '
        TabOrder = 0
        object Label14: TLabel
          Left = 32
          Top = 48
          Width = 40
          Height = 13
          Caption = #1060#1080#1088#1084#1072':'
        end
        object Label15: TLabel
          Left = 10
          Top = 71
          Width = 61
          Height = 13
          Caption = #1058#1080#1087' '#1079#1072#1103#1074#1082#1080':'
        end
        object Label16: TLabel
          Left = 14
          Top = 92
          Width = 56
          Height = 13
          Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100':'
        end
        object Label17: TLabel
          Left = 440
          Top = 17
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label18: TLabel
          Left = 549
          Top = 16
          Width = 12
          Height = 13
          Caption = #1087#1086
        end
        object SpeedButton3: TSpeedButton
          Left = 512
          Top = 40
          Width = 137
          Height = 65
          Caption = #1055#1086#1080#1089#1082
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FFF333333333333000333333333
            3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
            3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
            0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
            BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
            33337777773FF733333333333300033333333333337773333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = SpeedButton3Click
        end
        object Label19: TLabel
          Left = 320
          Top = 42
          Width = 53
          Height = 13
          Caption = #8470' '#1079#1072#1103#1074#1082#1080':'
        end
        object Label20: TLabel
          Left = 8
          Top = 16
          Width = 62
          Height = 13
          Caption = #1054#1055#1045#1056#1040#1058#1054#1056':'
        end
        object Label67: TLabel
          Left = 320
          Top = 66
          Width = 52
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103':'
        end
        object ComboBox7: TComboBox
          Left = 74
          Top = 45
          Width = 223
          Height = 21
          ItemHeight = 13
          TabOrder = 0
        end
        object ComboBox8: TComboBox
          Left = 74
          Top = 67
          Width = 223
          Height = 21
          ItemHeight = 13
          TabOrder = 1
        end
        object CheckBox5: TCheckBox
          Left = 320
          Top = 15
          Width = 121
          Height = 17
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1072#1084':'
          TabOrder = 2
        end
        object ComboBox9: TComboBox
          Left = 73
          Top = 88
          Width = 224
          Height = 21
          ItemHeight = 13
          TabOrder = 3
        end
        object DateTimePicker5: TDateTimePicker
          Left = 455
          Top = 13
          Width = 89
          Height = 21
          Date = 40036.543811481480000000
          Time = 40036.543811481480000000
          TabOrder = 4
        end
        object DateTimePicker6: TDateTimePicker
          Left = 568
          Top = 12
          Width = 81
          Height = 21
          Date = 40036.543841863430000000
          Time = 40036.543841863430000000
          TabOrder = 5
        end
        object Edit3: TEdit
          Left = 380
          Top = 39
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object CheckBox6: TCheckBox
          Left = 320
          Top = 88
          Width = 161
          Height = 17
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1089#1088#1086#1095#1085#1086#1089#1090#1080
          TabOrder = 7
        end
        object ComboBox10: TComboBox
          Left = 76
          Top = 14
          Width = 221
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          OnChange = ComboBox10Change
        end
        object Edit8: TEdit
          Left = 380
          Top = 63
          Width = 121
          Height = 21
          TabOrder = 9
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 121
        Width = 830
        Height = 255
        Align = alClient
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnDblClick = DBGrid3DblClick
        OnTitleClick = DBGrid3TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_FIRM'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_ISP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_USER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SPEED'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_GET'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_RAB'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_END'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCENKA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTHER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TEMA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FAMILY'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SECOND_NAME'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PASS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ROLE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DOLGNOST'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTDEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FIRM'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_FIRM'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_ISP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FROM_USER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SPEED'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_GET'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_RAB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_END'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OCENKA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTHER'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TEMA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SECOND_NAME'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FAMILY'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PASS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ROLE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DOLGNOST'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTDEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FIRM'
            Visible = False
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1088#1072#1073#1086#1090#1099
      ImageIndex = 3
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 830
        Height = 376
        ActivePage = TabSheet6
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1092#1080#1088#1084#1072#1084
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 822
            Height = 65
            Align = alTop
            TabOrder = 0
            object Label22: TLabel
              Left = 24
              Top = 16
              Width = 89
              Height = 13
              Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1080#1088#1084#1091':'
            end
            object SpeedButton4: TSpeedButton
              Left = 264
              Top = 32
              Width = 23
              Height = 22
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1099#1073#1086#1088#1082#1091
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
              OnClick = ComboBox11Change
            end
            object ComboBox11: TComboBox
              Left = 24
              Top = 32
              Width = 233
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              Text = 'ComboBox11'
              OnChange = ComboBox11Change
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 65
            Width = 297
            Height = 283
            Align = alLeft
            TabOrder = 1
            object Label23: TLabel
              Left = 8
              Top = 32
              Width = 84
              Height = 13
              Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1092#1080#1088#1084#1077':'
            end
            object Label24: TLabel
              Left = 100
              Top = 32
              Width = 38
              Height = 13
              Caption = 'Label24'
            end
            object Label25: TLabel
              Left = 8
              Top = 13
              Width = 97
              Height = 13
              Caption = #1044#1072#1090#1072' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103':'
            end
            object Label26: TLabel
              Left = 110
              Top = 13
              Width = 38
              Height = 13
              Caption = 'Label26'
            end
            object Label27: TLabel
              Left = 8
              Top = 64
              Width = 116
              Height = 13
              Caption = #1042#1089#1077#1075#1086' '#1079#1072#1103#1074#1086#1082' '#1087#1088#1080#1085#1103#1090#1086':'
            end
            object Label28: TLabel
              Left = 130
              Top = 64
              Width = 38
              Height = 13
              Caption = 'Label28'
            end
            object Label29: TLabel
              Left = 8
              Top = 80
              Width = 131
              Height = 13
              Caption = #1042#1089#1077#1075#1086' '#1079#1072#1103#1074#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1086':'
            end
            object Label30: TLabel
              Left = 144
              Top = 81
              Width = 38
              Height = 13
              Caption = 'Label30'
            end
            object Label31: TLabel
              Left = 8
              Top = 96
              Width = 165
              Height = 13
              Caption = #1047#1072#1103#1074#1086#1082' '#1074' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
            end
            object Label32: TLabel
              Left = 178
              Top = 97
              Width = 38
              Height = 13
              Caption = 'Label32'
            end
            object Label33: TLabel
              Left = 9
              Top = 165
              Width = 208
              Height = 13
              Caption = #1047#1072#1103#1074#1086#1082', '#1086#1090#1082#1083#1086#1085#1077#1085#1085#1099#1093' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1086#1084':'
            end
            object Label34: TLabel
              Left = 224
              Top = 165
              Width = 38
              Height = 13
              Caption = 'Label34'
            end
            object Label35: TLabel
              Left = 52
              Top = 183
              Width = 164
              Height = 13
              Caption = #1047#1072#1103#1074#1086#1082', '#1089#1085#1103#1090#1099#1093' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1084':'
            end
            object Label36: TLabel
              Left = 224
              Top = 184
              Width = 38
              Height = 13
              Caption = 'Label36'
            end
            object Label39: TLabel
              Left = 8
              Top = 112
              Width = 130
              Height = 13
              Caption = #1054#1078#1080#1076#1072#1102#1097#1080#1093' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
            end
            object Label40: TLabel
              Left = 144
              Top = 112
              Width = 38
              Height = 13
              Caption = 'Label40'
            end
          end
          object GroupBox5: TGroupBox
            Left = 297
            Top = 65
            Width = 525
            Height = 283
            Align = alClient
            TabOrder = 2
            object Label41: TLabel
              Left = 13
              Top = 16
              Width = 185
              Height = 13
              Caption = #1057#1088#1077#1076#1085#1077#1077' '#1074#1088#1077#1084#1103' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1079#1072#1103#1074#1082#1080':'
            end
            object Label42: TLabel
              Left = 203
              Top = 17
              Width = 46
              Height = 13
              Caption = 'Label42'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label43: TLabel
              Left = 8
              Top = 40
              Width = 190
              Height = 13
              Caption = #1057#1088#1077#1076#1085#1077#1077' '#1074#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103' '#1086#1073#1088#1072#1073#1086#1090#1082#1080':'
            end
            object Label44: TLabel
              Left = 203
              Top = 40
              Width = 46
              Height = 13
              Caption = 'Label44'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label45: TLabel
              Left = 60
              Top = 64
              Width = 137
              Height = 13
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1086#1094#1077#1085#1082#1072' '#1079#1072' '#1088#1072#1073#1086#1090#1091':'
            end
            object Label46: TLabel
              Left = 203
              Top = 64
              Width = 46
              Height = 13
              Caption = 'Label46'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1087#1077#1088#1072#1090#1086#1088#1072#1084
          ImageIndex = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 822
            Height = 57
            Align = alTop
            TabOrder = 0
            object Label37: TLabel
              Left = 142
              Top = 28
              Width = 12
              Height = 13
              Caption = #1076#1086
            end
            object Label38: TLabel
              Left = 32
              Top = 28
              Width = 7
              Height = 13
              Caption = #1057
            end
            object SpeedButton5: TSpeedButton
              Left = 264
              Top = 8
              Width = 49
              Height = 41
              Hint = #1042#1099#1073#1086#1088#1082#1072' '#1076#1072#1085#1085#1099#1093
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
              OnClick = SpeedButton5Click
            end
            object Label47: TLabel
              Left = 520
              Top = 32
              Width = 38
              Height = 13
              Caption = 'Label47'
              Visible = False
            end
            object CheckBox8: TCheckBox
              Left = 32
              Top = 8
              Width = 161
              Height = 17
              Caption = #1057' '#1091#1095#1077#1090#1086#1084' '#1080#1085#1090#1077#1088#1074#1072#1083#1072' '#1076#1072#1090':'
              TabOrder = 0
            end
            object DateTimePicker7: TDateTimePicker
              Left = 42
              Top = 24
              Width = 97
              Height = 21
              Date = 40039.841100254630000000
              Time = 40039.841100254630000000
              TabOrder = 1
            end
            object DateTimePicker8: TDateTimePicker
              Left = 160
              Top = 24
              Width = 97
              Height = 21
              Date = 40039.853486863420000000
              Time = 40039.853486863420000000
              TabOrder = 2
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 57
            Width = 822
            Height = 291
            Align = alClient
            Caption = 'Panel5'
            TabOrder = 1
            object StringGrid1: TStringGrid
              Left = 1
              Top = 1
              Width = 820
              Height = 289
              Align = alClient
              ColCount = 7
              FixedCols = 0
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084
          ImageIndex = 2
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 822
            Height = 49
            Align = alTop
            TabOrder = 0
            object SpeedButton7: TSpeedButton
              Left = 332
              Top = 4
              Width = 49
              Height = 41
              Hint = #1055#1086#1080#1089#1082
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
                300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
                330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
                333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
                339977FF777777773377000BFB03333333337773FF733333333F333000333333
                3300333777333333337733333333333333003333333333333377333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton7Click
            end
            object Label54: TLabel
              Left = 442
              Top = 22
              Width = 7
              Height = 13
              Caption = #1057
            end
            object Label55: TLabel
              Left = 552
              Top = 22
              Width = 12
              Height = 13
              Caption = #1076#1086
            end
            object SpeedButton8: TSpeedButton
              Left = 769
              Top = 3
              Width = 47
              Height = 41
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
                8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
                8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
                8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
                03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
                03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
                33333337FFFF7733333333300000033333333337777773333333}
              NumGlyphs = 2
              PopupMenu = PopupMenu1
              OnClick = SpeedButton8Click
            end
            object Edit5: TEdit
              Left = 16
              Top = 16
              Width = 313
              Height = 21
              Hint = #1059#1082#1072#1078#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102', '#1083#1086#1075#1080#1085' AD '#1080#1083#1080' IP-'#1072#1076#1088#1077#1089' '#1076#1083#1103'  '#1074#1099#1073#1086#1088#1082#1080
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyPress = Edit5KeyPress
            end
            object DateTimePicker9: TDateTimePicker
              Left = 452
              Top = 19
              Width = 97
              Height = 21
              Date = 40039.841100254630000000
              Time = 40039.841100254630000000
              TabOrder = 1
            end
            object DateTimePicker10: TDateTimePicker
              Left = 570
              Top = 18
              Width = 97
              Height = 21
              Date = 40039.853486863420000000
              Time = 40039.853486863420000000
              TabOrder = 2
            end
            object CheckBox10: TCheckBox
              Left = 442
              Top = 1
              Width = 161
              Height = 17
              Caption = #1057' '#1091#1095#1077#1090#1086#1084' '#1080#1085#1090#1077#1088#1074#1072#1083#1072' '#1076#1072#1090':'
              TabOrder = 3
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 49
            Width = 822
            Height = 191
            Align = alClient
            TabOrder = 1
            object DBGrid4: TDBGrid
              Left = 1
              Top = 1
              Width = 820
              Height = 189
              Align = alClient
              DataSource = DataSource5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = RUSSIAN_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'USLOGIN'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FAMILY'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAME'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SECOND_NAME'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IPLOCAL'
                  Visible = True
                end>
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 240
            Width = 822
            Height = 108
            Align = alBottom
            TabOrder = 2
            object Label56: TLabel
              Left = 296
              Top = 8
              Width = 44
              Height = 16
              Caption = 'Label56'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 296
              Top = 24
              Width = 44
              Height = 16
              Caption = 'Label57'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label58: TLabel
              Left = 8
              Top = 8
              Width = 50
              Height = 16
              Caption = 'Label58'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label59: TLabel
              Left = 8
              Top = 24
              Width = 44
              Height = 16
              Caption = 'Label59'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label60: TLabel
              Left = 8
              Top = 40
              Width = 44
              Height = 16
              Caption = 'Label60'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label61: TLabel
              Left = 8
              Top = 56
              Width = 44
              Height = 16
              Caption = 'Label61'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label62: TLabel
              Left = 8
              Top = 72
              Width = 44
              Height = 16
              Caption = 'Label62'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 8
              Top = 88
              Width = 44
              Height = 16
              Caption = 'Label63'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 296
              Top = 40
              Width = 44
              Height = 16
              Caption = 'Label64'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 664
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N6: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N6Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N3: TMenuItem
        Caption = #1060#1080#1088#1084#1099' '#1080' '#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1057#1086#1073#1099#1090#1080#1103
        OnClick = N4Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object N5: TMenuItem
        Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1080
        OnClick = N5Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 396
    Top = 361
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * FROM ZAPROZ  LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM' +
        '_USER order by ZAPROZ.ID')
    Left = 436
    Top = 361
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery1ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery1ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery1ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery1STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery1SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery1DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery1DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery1DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery1OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery1OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery1TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery1NAME: TIBStringField
      DisplayLabel = #1048#1084#1103' '#1047#1072#1082#1072#1079#1095#1080#1082#1072
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Visible = False
      Size = 25
    end
    object IBQuery1IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery1IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
    object IBQuery1ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'USERS.ID'
    end
    object IBQuery1SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery1PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
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
    object IBQuery1USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FIRM WHERE NAME=:NAME')
    Left = 476
    Top = 361
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end>
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
      
        'Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_' +
        'USER order by ZAPROZ.ID')
    Left = 436
    Top = 392
    object IBQuery3ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery3ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery3ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery3ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery3STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery3SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery3DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery3DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery3DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery3OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery3OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery3TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery3ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'USERS.ID'
      Visible = False
    end
    object IBQuery3FAMILY: TIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103' '#1047#1072#1082#1072#1079#1095#1080#1082#1072
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Visible = False
      Size = 25
    end
    object IBQuery3NAME: TIBStringField
      DisplayLabel = #1048#1084#1072' '#1047#1072#1082#1072#1079#1095#1080#1082#1072
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Visible = False
      Size = 25
    end
    object IBQuery3SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Visible = False
      Size = 25
    end
    object IBQuery3PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Visible = False
      Size = 200
    end
    object IBQuery3ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Visible = False
      Size = 200
    end
    object IBQuery3DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Visible = False
      Size = 50
    end
    object IBQuery3OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Visible = False
      Size = 60
    end
    object IBQuery3ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
      Visible = False
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery3
    Left = 396
    Top = 392
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_' +
        'USER order by ZAPROZ.ID')
    Left = 436
    Top = 424
    object IBQuery4ID: TIntegerField
      DisplayLabel = #8470' '#1047#1072#1103#1074#1082#1080
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
      Visible = False
    end
    object IBQuery4ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery4ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery4ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery4STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery4SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery4DATE_GET: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery4DATE_RAB: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery4DATE_END: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery4OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery4OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery4TEMA: TIBStringField
      DisplayLabel = #1058#1045#1052#1040
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery4ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'USERS.ID'
    end
    object IBQuery4NAME: TIBStringField
      DisplayLabel = #1048#1084#1103' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
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
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103' '#1047#1072#1082#1072#1079#1095#1080#1082#1072
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
  object DataSource3: TDataSource
    DataSet = IBQuery4
    Left = 396
    Top = 424
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 36
    Top = 393
  end
  object IBQuery5: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from ZAPROZ INNER JOIN ZAPROS_TELO on ZAPROZ.ID=ZAPROS_' +
        'TELO.ID_SHAPKA WHERE ZAPROZ.ID_ISP=:ID_ISP and ZAPROZ.STATUS<=:S' +
        'TATUS and ZAPROS_TELO.STATUS=:STATUS1 order BY ZAPROS_TELO.ID')
    Left = 68
    Top = 393
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ISP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS1'
        ParamType = ptUnknown
      end>
    object IBQuery5ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery5ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery5ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery5ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery5STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery5SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery5DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery5DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery5DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery5OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery5OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery5TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery5IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery5IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
    object IBQuery5ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'ZAPROS_TELO.ID'
    end
    object IBQuery5ID_SHAPKA: TIntegerField
      FieldName = 'ID_SHAPKA'
      Origin = 'ZAPROS_TELO.ID_SHAPKA'
    end
    object IBQuery5DATE_GET1: TDateTimeField
      FieldName = 'DATE_GET1'
      Origin = 'ZAPROS_TELO.DATE_GET'
    end
    object IBQuery5TEXT: TIBStringField
      FieldName = 'TEXT'
      Origin = 'ZAPROS_TELO.TEXT'
      Size = 1024
    end
    object IBQuery5ID_FROM: TIntegerField
      FieldName = 'ID_FROM'
      Origin = 'ZAPROS_TELO.ID_FROM'
    end
    object IBQuery5ID_ADMIN: TIntegerField
      FieldName = 'ID_ADMIN'
      Origin = 'ZAPROS_TELO.ID_ADMIN'
    end
    object IBQuery5STATUS1: TIntegerField
      FieldName = 'STATUS1'
      Origin = 'ZAPROS_TELO.STATUS'
    end
    object IBQuery5DOP_ZNAK: TIntegerField
      FieldName = 'DOP_ZNAK'
      Origin = 'ZAPROS_TELO.DOP_ZNAK'
    end
  end
  object IBQuery6: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from ZAPROS_TELO WHERE ID_SHAPKA=:ID_SHAPKA and STATUS=' +
        ':STATUS ORDER BY ID')
    Left = 68
    Top = 425
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_SHAPKA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    object IBQuery6ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROS_TELO.ID'
    end
    object IBQuery6ID_SHAPKA: TIntegerField
      FieldName = 'ID_SHAPKA'
      Origin = 'ZAPROS_TELO.ID_SHAPKA'
    end
    object IBQuery6DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROS_TELO.DATE_GET'
    end
    object IBQuery6TEXT: TIBStringField
      FieldName = 'TEXT'
      Origin = 'ZAPROS_TELO.TEXT'
      Size = 1024
    end
    object IBQuery6ID_FROM: TIntegerField
      FieldName = 'ID_FROM'
      Origin = 'ZAPROS_TELO.ID_FROM'
    end
    object IBQuery6ID_ADMIN: TIntegerField
      FieldName = 'ID_ADMIN'
      Origin = 'ZAPROS_TELO.ID_ADMIN'
    end
    object IBQuery6STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROS_TELO.STATUS'
    end
    object IBQuery6DOP_ZNAK: TIntegerField
      FieldName = 'DOP_ZNAK'
      Origin = 'ZAPROS_TELO.DOP_ZNAK'
    end
  end
  object ImageList1: TImageList
    Left = 100
    Top = 393
    Bitmap = {
      494C010134003600040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000E0000000010020000000000000E0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052392100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052392100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921005239210052392100523921005239210052392100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052392100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005239
      2100523921005239210052392100523921005239210052392100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921005239210000000000000000005239210052392100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921005239210052392100523921005239210052392100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005239210052392100523921000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921000000000000000000523921005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005239210052392100523921005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921005239210052392100523921005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921000000000000000000523921005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052392100523921000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921000000000000000000523921005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005239210052392100523921005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921005239210052392100523921005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000523921005239210000000000000000005239210052392100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B5000000000000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00000000000000000000000000000000000000
      00000000000000000000CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084523100845231008452
      3100845231008452310084523100BDB5B50000000000006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B
      7B00006B7B00006B7B00CECECE00000000000000000000000000CECECE00CECE
      CE00CECECE008452310084523100845231008452310084523100845231008452
      3100845231008452310084523100CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008452310084523100BDB5
      B50000000000E7C68C00845231008452310000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE000000000000000000006B7B00006B7B00006B
      7B00006B7B0084523100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084523100CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000845231008452
      3100BDB5B50000000000000000000000000000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00006B7B00A5FFFF00A5FFFF00006B7B00A5FF
      FF00A5FFFF00006B7B00CECECE0000000000006B7B0010DEF70010DEF70010DE
      F70010DEF70084523100FFFFFF00845231008452310084523100845231008452
      310084523100FFFFFF0084523100CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008452
      310084523100BDB5B500000000000000000000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00006B7B00A5FFFF00A5FFFF00006B
      7B00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF70010DE
      F70010DEF70084523100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084523100CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDB5B5000000
      00008452310084523100BDB5B5000000000000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00006B7B00006B7B00A5FFFF00006B7B00006B
      7B00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF70010DE
      F70010DEF70084523100FFFFFF00845231008452310084523100FFFFFF008452
      3100845231008452310084523100000000000000000000000000000000000000
      0000000000000000000000000000000000005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084523100E7C68C00BDB5
      B500BDB5B5008452310084523100BDB5B50000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00006B7B00006B7B00A5FFFF00006B7B00006B
      7B00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF70010DE
      F70010DEF70084523100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008452
      3100FFFFFF0084523100CECECE00000000000000000000000000000000000000
      0000523921005239210052392100523921005239210000000000000000000000
      00000000000000000000000000000000000000000000BDB5B500BDB5B500BDB5
      B50000000000BDB5B500BDB5B500BDB5B5000000000084523100845231008452
      31008452310084523100845231008452310000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF70010DE
      F70010DEF70084523100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008452
      310084523100006B7B00CECECE00000000000000000000000000000000000000
      0000523921005239210052392100523921005239210000000000000000000000
      0000000000000000000000000000000000008452310084523100845231000000
      0000845231008452310084523100BDB5B5000000000000000000000000000000
      00000000000000000000000000000000000000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF70010DE
      F70010DEF7008452310084523100845231008452310084523100845231008452
      310010DEF700006B7B00CECECE00000000000000000000000000000000000000
      0000523921000000000000000000000000005239210052392100523921000000
      000000000000000000000000000000000000E7C68C0084523100BDB5B500BDB5
      B500BDB5B50084523100E7C68C00000000000000000000000000000000000000
      00000000CE00BDB5B500000000000000000000000000006B7B00A5FFFF00006B
      7B00006B7B00A5FFFF00006B7B00006B7B00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF70010DE
      F70010DEF70010DEF70010DEF70010DEF70010DEF70010DEF70010DEF70010DE
      F70010DEF700006B7B00CECECE00000000000000000000000000000000000000
      0000523921000000000000000000000000005239210000000000000000000000
      0000000000000000000000000000000000000000000084523100845231008452
      31008452310084523100BDB5B500000000000000000000000000000000000000
      CE000000CE000000CE00BDB5B5000000000000000000006B7B00A5FFFF00006B
      7B00006B7B00A5FFFF00006B7B00006B7B00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF700006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B0010DE
      F70010DEF700006B7B00CECECE00000000000000000000000000000000000000
      0000523921005239210052392100523921005239210000000000000000000000
      00000000000000000000000000000000000000000000E7C68C0084523100BDB5
      B50084523100E7C68C00000000000000000000000000000000000000CE000000
      CE000000CE000000CE000000CE00BDB5B50000000000006B7B00A5FFFF00006B
      7B00A5FFFF00A5FFFF00006B7B00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF0010DEF700006B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00006B7B0010DE
      F70010DEF700006B7B00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000005239210000000000000000000000
      0000000000000000000000000000000000000000000000000000845231008452
      310084523100BDB5B500000000000000CE00E7C68C0000000000000000000000
      00000000CE00BDB5B500000000000000000000000000006B7B00A5FFFF00A5FF
      FF00006B7B00A5FFFF00A5FFFF00006B7B00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE0000000000006B7B007BFFFF007BFFFF007BFF
      FF00006B7B0000FFFF00006B7B00006B7B0000FFFF00006B7B007BFFFF007BFF
      FF0010DEF700006B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C68C008452
      3100E7C68C000000000000000000000000000000CE00E7C68C00BDB5B500E7C6
      8C000000CE00BDB5B500000000000000000000000000006B7B00A5FFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FF
      FF00A5FFFF00006B7B00CECECE000000000000000000006B7B00006B7B00006B
      7B00006B7B00006B7B0000FFFF0000FFFF00006B7B00006B7B00006B7B00006B
      7B00006B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008452
      310000000000000000000000000000000000000000000000CE000000CE000000
      CE00BDB5B50000000000000000000000000000000000006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B
      7B00006B7B00006B7B0000000000000000000000000000000000000000000000
      000000000000006B7B00006B7B00006B7B00006B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE8CBD000000000000000000000000000000000000000000000000000000
      00000000000094BD9C00528C5A002173310021733100528C5A0094BD9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDC6BD00BDB5
      AD0084523100BDB5AD00BDA5BD00BDB5B50000000000000000000000000094BD
      9C0031844A0008843100089C4A0008AD520008AD4A0000944200087B31003184
      420094BD9C000000000000000000000000000000000000000000000000000000
      000000000000BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD000000
      0000000000000000000000000000000000000000000000000000BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00000000000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B0018847B00ADADAD008452
      3100C6A56B00845231008CA59C00BDB5B500000000000000000073A57B00188C
      420008AD5200000000000000000000000000000000000000000008AD52000094
      4200107B310073A57B00000000000000000000000000BDB5AD00BDB5AD00BDB5
      AD00214A7B00214A7B00214A7B00214A7B00214A7B00214A7B00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD0000000000006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B
      7B00BDB5AD00000000000000000000000000006B6B006BDEDE0039BDBD0039BD
      BD0039BDBD0039BDBD0039BDBD0039BDBD0042C6C600ADB5B50084523100C6A5
      6B00FFDEAD00C6A56B007B523100BDADB500000000008CB59400108C390008BD
      63000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000008B5
      5A00009C4A00087B29008CB59400000000008452310084523100214A7B00214A
      7B0000ADF700214A7B0000ADF700214A7B0000ADF70000ADF700214A7B00214A
      7B00214A7B00214A7B00006B4A00006B4A0000000000006B7B0010DEF70010DE
      F70010DEF70010DEF70010DEF70010DEF70010DEF70010DEF70010DEF700006B
      7B00BDB5AD00000000000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7F700B5BDBD0084523100C6A56B00FFDE
      AD00C6A56B00FFDEAD00FFFFC60094735A0000000000298C420008BD63000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000008B55A00009C4200297B390000000000C6946B0084523100214A7B0010DE
      F700214A7B0010DEF700214A7B0010DEF70010DEF700214A7B0000ADF70000AD
      F700214A7B00214A7B00006B4A0000D68C0000000000006B7B00FFFFFF0029E7
      FF0029E7FF0029E7FF0029E7FF0029E7FF0029E7FF0029E7FF0010DEF700006B
      7B00BDB5AD00000000000000000000000000006B6B00FFFFFF00ADFFF700BDB5
      AD00BDB5AD00BDB5AD0063C69C00A5B5AD0084523100C6A56B00FFDEAD007B5A
      310084523100FFFFC60073523900BDC6BD008CB59400089C420000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000B552000884310094B59400C6946B008452310010DEF70010DE
      F70010DEF70010DEF70010DEF70010DEF700214A7B0010DEF70000ADF700214A
      7B00214A7B0000ADF700006B4A0000D68C0000000000006B7B00FFFFFF00007B
      B500007BB50073F7FF00007BB500007BB500007BB500007BB50010DEF700006B
      7B00BDB5AD00AD9C9C008452310000000000006B6B00F7FFF700BDB5AD008452
      310084523100BDB5AD00BDB5AD0084523100C6A56B00FFDEAD00846B4A0094FF
      F70094FFF7006B735A00107B7B00BDB5B5004A8C5A0010BD6B0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000008BD6300009442004A8C5A00C6946B008452310010DEF70073F7
      FF0073F7FF0073F7FF0073F7FF0010DEF70010DEF70010DEF70000ADF700214A
      7B0000ADF70010DEF700006B4A0000D68C0000000000006B7B00FFFFFF0073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF0073F7FF0029E7FF0010DEF700006B
      7B00BDB5AD00845231006363630000000000006B6B00BDB5B50084523100C6A5
      6B00C6A56B008452310084523100C6A56B00FFDEAD007B6342005AB5940052AD
      940094F7FF0039BDBD00006B6B00BDB5B5002173390010D67B0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000008C66B0000A54A0029733900C6946B008452310010DEF70073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF0010DEF70000ADF700214A7B0000AD
      F70010DEF70010DEF700006B4A0000D68C0000000000006B7B00FFFFFF00007B
      B500007BB500007BB500007BB50073F7FF00007BB500007BB50021DEFF00006B
      7B008452310063636300000000000000000094A59C0084523100C6A56B008452
      310084523100FFDEAD00C6A56B00FFDEAD0084735A0094F7F70094F7FF0094F7
      FF0094F7FF0039BDBD00006B6B00BDB5B500297B390010DE7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008CE6B0008AD5200297B3900C6946B008452310010DEF70073F7
      FF0073F7FF0073F7FF00316B9C00316B9C0000ADF70000ADF700214A7B0010DE
      F70073F7FF0010DEF700006B4A0000D68C0000000000006B7B00FFFFFF007BFF
      FF0073F7FF0021DEFF0084523100845231008452310084523100000000008452
      3100636363000000000000000000000000007B523100C6A56B0084523100D6FF
      E700CEFFE70084523100FFDEAD008452310063BD9C0094F7FF0052AD940052AD
      940094F7FF0039BDBD00006B6B00BDB5B5004A945A0010C6730010EF940010F7
      940010F7940010F7940010F7940010F7940010F7940010F7940010F7940010EF
      940010DE840008CE6B00089C4A0052945A00C6946B008452310010DEF70073F7
      FF0073F7FF00316B9C0010DEF70010DEF700316B9C00316B9C0010DEF70073F7
      FF0073F7FF0010DEF700006B4A0000D68C0000000000006B7B00FFFFFF00007B
      B500007BB50084523100FFFFFF00FFFFFF00FFFFFF00FFFFFF00845231000000
      0000636363000000000000000000000000007B523100FFDEAD0084523100BDB5
      AD00D6FFE700CEFFE70084523100FFDEAD00846B520094F7FF0094F7FF0094F7
      FF0094F7FF0039BDBD00006B6B00BDB5B50094BD9C0008A54A0010E78C000000
      000010F7940010F794000000000010F794000000000010F7940010F794000000
      000010DE840008C66B000884310094B59C00C6946B0084523100FFFFFF0073F7
      FF0073F7FF00316B9C0073F7FF0073F7FF0073F7FF0073F7FF0073F7FF0073F7
      FF0073F7FF00316B9C00006B4A0000D68C0000000000006B7B00FFFFFF007BFF
      FF0084523100CEBD8400E7DE9400F7EFB500F7EFB500F7EFB500FFFFFF008452
      3100AD9C9C00000000000000000000000000006B6B00845A3100FFDEAD008452
      3100BDB5AD00BDB5AD0084523100FFFFC6007B523100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00006B6B00BDB5B50000000000298C4A0010D67B0010EF
      9400000000000000000010F7940010F7940010F79400000000000000000010E7
      8C0010D67B0008AD520029844200000000008452310084523100428CB500FFFF
      FF00FFFFFF00FFFFFF00316B9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00316B
      9C00316B9C0000000000006B4A00006B4A0000000000006B7B00FFFFFF007BFF
      FF0084523100CEBD8400E7DE9400F7EFB500F7EFB500F7EFB500FFFFFF008452
      3100AD9C9C00000000000000000000000000006B6B00006B6B007B523100FFDE
      AD008452310084523100FFFFC6007B52310039949400006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B0000000000000000008CB59400109C4A0010DE
      840010EF940010EF940010F7940010F7940010F7940010EF940010E78C0010DE
      7B0008BD6300108C39008CB5940000000000000000000000000000000000428C
      B500428CB500428CB500428CB5003973B5003973B5003973B5003973B5000000
      00000000000000000000000000000000000000000000006B7B00FFFFFF00FFFF
      FF0084523100CEBD8400F7F7CE00F7EFB500F7EFB500F7EFB500FFFFFF008452
      3100AD9C9C000000000000000000000000000000000000000000000000008C4A
      4200FFDEAD00FFFFC6007B5231004AE7B500006B6B0000000000000000000000
      000000000000000000000000000000000000000000000000000073AD8400189C
      4A0010CE730010E78C0010EF940010EF940010EF8C0010E78C0010DE7B0008B5
      6300188C420073AD7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006B7B00006B7B00006B
      7B0084523100CEBD8400F7F7CE00F7F7CE00F7F7CE00E7DE9400FFFFFF008452
      3100000000000000000000000000000000000000000000000000000000000000
      0000844A390084523100529C9C00006B6B00006B6B0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094BD
      A50031945200089C4A0010C66B0010DE7B0010D67B0008BD630008944200318C
      4A0094BD9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084523100CEBD8400CEBD8400CEBD8400CEBD8400845231000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094BD9C0052945A00297B3900297B390052945A0094BD9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084523100845231008452310084523100000000000000
      0000000000000000000000000000000000000000000000000000D6BDA500D6BD
      A500D6BDA500D6BDA500D6BDA500D6BDA500D6BDA500D6BDA500D6BDA500D6BD
      A500D6BDA500D6BDA500D6BDA500000000000000000000000000BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B50000000000000000000000000000000000B5B5AD00B5B5
      AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5
      AD00B5B5AD00B5B5AD0000000000000000000000000000000000BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500000000000000000000000000006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B
      7B00006B7B00006B7B00D6BDA50000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE00BDB5B500BDB5B500000000000000000000000000B5947300B594
      7300B5947300B5947300B5947300B5947300B5947300B5947300B5947300B594
      7300B5947300B5B5AD00B5B5AD0000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE00BDB5B500BDB5B5000000000000000000006B7B00FFFFFF0008DE
      F70008DEF70008DEF70008DEF70008DEF70008DEF70008DEF70008DEF70008DE
      F70008DEF700006B7B00D6BDA500000000000000000039A5DE004ADEF7004ADE
      F7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADE
      F7004ADEF70039A5DE00BDB5B500BDB5B50000000000B5947300F7DEBD00F7DE
      BD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      BD00F7DEBD00B5947300B5B5AD00B5B5AD000000000039A5DE004ADEF7004ADE
      F7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADE
      F7004ADEF70039A5DE00BDB5B500BDB5B50000000000006B7B00FFFFFF0021F7
      F70010E7F70010E7F70010E7F70010E7F70010E7F70010E7F70010E7F70008DE
      F70008DEF700006B7B00D6BDA5000000000039A5DE00FFFFFF0029DEF70029DE
      F70010A5D60010A5D60010A5D60029DEF70029DEF70010A5D60010A5D60010A5
      D60029DEF70029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7D6B500F7D6
      B500DEC6A500F7D6B500F7D6B500F7D6B500F7D6B500DEC6A5008C5A2900F7E7
      D600F7D6B500F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF0029DEF70029DE
      F70010A5D60010A5D60010A5D60010A5D60010A5D60010A5D60010A5D60010A5
      D60029DEF70029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF0063F7
      FF0063F7FF0063F7FF0063F7FF0063F7FF0063F7FF0031F7FF0031F7FF0021E7
      F70010DEF700006B7B00D6BDA5000000000039A5DE00FFFFFF004ADEF7008C5A
      29008C5A29008C5A29004ADEF7004ADEF7008C5A29008C5A29008C5A29004ADE
      F7004ADEF70029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7DEBD00F7E7
      D6008C5A2900DEC6A500F7DEBD00F7DEBD00DEC6A5008C5A29008C5A2900F7E7
      D600F7DEBD00F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF004ADEF700005A
      4A00005A4A00005A4A00005A4A00005A4A00005A4A00005A4A00005A4A0010A5
      D6004ADEF70029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF0073FF
      FF0073FFFF0073FFFF0073FFFF0073FFFF0073FFFF004AF7FF004AF7FF0029E7
      FF0018DEFF00006B7B00D6BDA5000000000039A5DE00FFFFFF005AE7F7005AE7
      F7008C5A290010A5D6005AE7F7005AE7F7008C5A29008C5A290010A5D6005AE7
      F7005AE7F70029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7DEC600F7E7
      D6008C5A29008C5A2900DEC6A500DEC6A5008C5A29008C5A2900F7E7D600F7DE
      C600F7DEC600F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF005AE7F700005A
      4A005AE7F7005AE7F7005AE7F7005AE7F7005AE7F7005AE7F700005A4A0010A5
      D6005AE7F70029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF007BFF
      FF007BFFFF007BFFFF007BFFFF007BFFFF007BFFFF0052FFFF0052FFFF0039E7
      FF0021DEFF00006B7B00D6BDA5000000000039A5DE00FFFFFF006BE7F7006BE7
      F7008C5A290010A5D6006BE7F7008C5A29008C5A29008C5A290010A5D6006BE7
      F7006BE7F70029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7E7CE00F7E7
      CE00F7E7D6008C5A29008C5A29008C5A29008C5A2900F7E7D600F7E7CE00F7E7
      CE00F7E7CE00F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF006BE7F700005A
      4A006BE7F7006BE7F7006BE7F7006BB59400297B5A006BE7F700005A4A0010A5
      D6006BE7F70029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF0084FF
      FF0084FFFF0084FFFF0084FFFF0084FFFF0084FFFF0063FFFF0063FFFF0039EF
      FF0029DEFF00006B7B00D6BDA5000000000039A5DE00FFFFFF007BE7FF007BE7
      FF008C5A290010A5D60010A5D6008C5A29007BE7FF008C5A290010A5D6007BE7
      FF007BE7FF0029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7E7CE00F7E7
      CE00F7E7CE00DEC6A5008C5A29008C5A2900DEC6A500F7E7CE00F7E7CE00F7E7
      CE00F7E7CE00F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF007BE7FF00005A
      4A00005A4A00005A4A00005A4A007BE7FF00297B5A007BE7FF00005A4A0010A5
      D6007BE7FF0029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF008CFF
      FF008CFFFF008CFFFF008CFFFF008CFFFF008CFFFF0021DEFF0021DEFF0021DE
      FF0021DEFF00006B7B00D6BDA5000000000039A5DE00FFFFFF0094EFF70094EF
      F7008C5A290010A5D6008C5A290094EFF70094EFF7008C5A290010A5D60094EF
      F70094EFF70029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7E7D600F7E7
      D600DEC6A5008C5A29008C5A29008C5A29008C5A2900DEC6A500F7E7D600F7E7
      D600F7E7D600F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF0094EFF70094EF
      F70094EFF70094EFF700005A4A0094EFF700297B5A0094EFF700005A4A0010A5
      D60094EFF70029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF00007BB500007BB500007B
      B500007BB500006B7B00ADB5AD000000000039A5DE00FFFFFF00ADEFF700ADEF
      F7008C5A29008C5A29008C5A2900ADEFF700ADEFF7008C5A290010A5D600ADEF
      F700ADEFF70029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7EFDE00DEC6
      A5008C5A29008C5A2900F7EFDE00FFFFFF008C5A29008C5A2900DEC6A500F7EF
      DE00F7EFDE00F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF00ADEFF700ADEF
      F700ADEFF700ADEFF700005A4A00ADEFF700ADEFF700ADEFF700005A4A0010A5
      D600ADEFF70029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00007BB50084FFFF0052EF
      FF0008DEF700006B7B00000000000000000039A5DE00FFFFFF00BDEFEF00BDEF
      EF008C5A29008C5A290010A5D600BDEFEF00BDEFEF008C5A290010A5D60010A5
      D600BDEFEF0029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7EFE700DEC6
      A5008C5A2900FFFFFF00F7EFE700F7EFE700FFFFFF008C5A29008C5A2900F7EF
      E700F7EFE700F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF00BDEFEF00BDEF
      EF00BDEFEF00BDEFEF00005A4A00BDEFEF00BDEFEF00BDEFEF00005A4A0010A5
      D600BDEFEF0029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF00A5FF
      FF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00A5FFFF00007BB5008CFFFF0008DE
      F700006B7B0000000000000000000000000039A5DE00FFFFFF00CEE7EF008C5A
      29008C5A29008C5A2900CEE7EF00CEE7EF008C5A29008C5A29008C5A2900CEE7
      EF00CEE7EF0029DEF70039A5DE00BDB5B500B5947300FFFFFF00F7F7EF00FFFF
      FF00FFFFFF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00FFFFFF008C5A29008C5A
      2900F7F7EF00F7DEBD00B5947300B5B5AD0039A5DE00FFFFFF00CEE7EF00CEE7
      EF00CEE7EF00CEE7EF00005A4A00005A4A00005A4A00005A4A00005A4A00CEE7
      EF00CEE7EF0029DEF70039A5DE00BDB5B50000000000006B7B00FFFFFF00BDFF
      FF00BDFFFF00BDFFFF00BDFFFF00BDFFFF00BDFFFF00007BB50008DEF700006B
      7B000000000000000000000000000000000039A5DE00F7FFFF00DEE7EF00DEE7
      EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00DEE7EF0029DEF70039A5DE0000000000B5947300F7FFFF00F7F7EF00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00FFFFFF00FFFF
      FF00F7F7EF00F7DEBD00B59473000000000039A5DE00F7FFFF00DEE7EF00DEE7
      EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00DEE7EF0029DEF70039A5DE000000000000000000006B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007BB500006B7B000000
      0000000000000000000000000000000000000000000039A5DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0039A5DE00000000000000000000000000B5947300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B594730000000000000000000000000039A5DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0039A5DE00000000000000000000000000006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00000000000000
      000000000000000000000000000000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE000000000000000000000000000000000000000000B5947300B594
      7300B5947300B5947300B5947300B5947300B5947300B5947300B5947300B594
      7300B5947300000000000000000000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDB5
      AD00BDB5AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B5000000000000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE00BDB5B500BDB5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00000000000000000000000000C6BDB500C6BDB500C6BD
      B500C6BDB500C6BDB500C6BDB500C6BDB500C6BDB500C6BDB500C6BDB500C6BD
      B500C6BDB500C6BDB500C6BDB500C6BDB500000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE00BDB5B500BDB5B500000000000000000039A5DE004ADEF7004ADE
      F7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADE
      F7004ADEF70039A5DE00BDB5B500BDB5B500000000000000000000000000DE84
      39000000000000000000000000000000000000000000BDB5AD0000528C000052
      8C0000528C00BDB5AD00BDB5AD000000000039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE00C6BDB5000000000039A5DE004ADEF7004ADE
      F7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADEF7004ADE
      F7004ADEF70039A5DE00BDB5B500BDB5B50039A5DE00FFFFFF0029DEF70029DE
      F70029DEF70029DEF7004AB5D6004AB5D6004AB5D6004AB5D60029DEF70029DE
      F70029DEF70029DEF70039A5DE00BDB5B5000000000000000000DE8439008C4A
      180000000000000000000000000000000000BDB5AD0000528C000094D60000AD
      F70000ADF70000528C00BDB5AD00BDB5AD0039A5DE0029DEF70029DEF70029DE
      F70029DEF70029DEF70029DEF70029DEF70029DEF70029DEF70029DEF70029DE
      F70029DEF70029DEF70039A5DE00C6BDB50039A5DE00FFFFFF0029DEF70029DE
      F70010A5D60010A5D60010A5D60029DEF70029DEF70010A5D60010A5D60010A5
      D60029DEF70029DEF70039A5DE00BDB5B50039A5DE00FFFFFF004ADEF7004ADE
      F7004ADEF7000000C6000000C6000000C6000000C6004ADEF7004ADEF7004ADE
      F7004ADEF70029DEF70039A5DE00BDB5B5000000000000000000DE8439008C4A
      1800000000000000000000000000BDB5AD0000528C000094D60000ADF70000C6
      F70000C6F70000ADF70000528C00BDB5AD0039A5DE004ADEF7004ADEF7004ADE
      F7004ADEF7004ADEF7004ADEF700DE84390000CEFF004ADEF7004ADEF7004ADE
      F7004ADEF7004ADEF70039A5DE00C6BDB50039A5DE00FFFFFF004ADEF700005A
      4A00005A4A00005A4A004ADEF7004ADEF700005A4A00005A4A00005A4A004ADE
      F7004ADEF70029DEF70039A5DE00BDB5B50039A5DE00FFFFFF005AE7F7005AE7
      F7005AE7F7005AE7F7000000C6000000C6004AB5D6005AE7F7005AE7F7005AE7
      F7005AE7F70029DEF70039A5DE00BDB5B50000000000DE843900DE8439008C4A
      18000000000000000000BDB5AD0000528C000094D60000ADF70000C6F70018E7
      FF0018E7FF0000C6F70000ADF70000528C0039A5DE005AE7F7005AE7F7005AE7
      F7005AE7F700DE8439005AE7F700DE8439005AE7F700DE8439005AE7F7005AE7
      F7005AE7F7005AE7F70039A5DE00C6BDB50039A5DE00FFFFFF005AE7F7005AE7
      F700005A4A0021ADDE005AE7F7005AE7F7005AE7F700005A4A0021ADDE005AE7
      F7005AE7F70029DEF70039A5DE00BDB5B50039A5DE00FFFFFF006BE7F7006BE7
      F7006BE7F7006BE7F7000000C6000000C6004AB5D6006BE7F7006BE7F7006BE7
      F7006BE7F70029DEF70039A5DE00BDB5B500EFC6A500DE8439008C4A18008C4A
      180000000000BDB5AD0000528C000094D60000ADF70000C6F70018E7FF0018E7
      FF006BEFF7006BEFF700FFFFFF0000528C0039A5DE006BE7F7006BE7F7006BE7
      F7006BE7F7006BE7F700DE843900DE843900DE8439006BE7F7006BE7F7006BE7
      F7006BE7F7006BE7F70039A5DE00C6BDB50039A5DE00FFFFFF006BE7F7006BE7
      F700005A4A0029ADDE006BE7F7006BE7F7006BE7F700005A4A0029ADDE006BE7
      F7006BE7F70029DEF70039A5DE00BDB5B50039A5DE00FFFFFF007BE7FF007BE7
      FF007BE7FF007BE7FF000000C6000000C6004AB5D6007BE7FF007BE7FF007BE7
      FF007BE7FF0029DEF70039A5DE00BDB5B500DE9C6300DE8439008C4A18002929
      00003131310000528C000094D60000ADF70000C6F7000094D60000ADF7006BEF
      F7006BEFF700FFFFFF00FFFFFF0000528C0039A5DE007BE7FF007BE7FF007BE7
      FF00DE843900DE843900DE8439007BE7FF00DE843900DE843900DE8439007BE7
      FF007BE7FF007BE7FF0039A5DE00C6BDB50039A5DE00FFFFFF007BE7FF007BE7
      FF00005A4A0031ADDE0031ADDE0031ADDE0031ADDE00005A4A0031ADDE007BE7
      FF007BE7FF0029DEF70039A5DE00BDB5B50039A5DE00FFFFFF0094EFF70094EF
      F70094EFF70094EFF7000000C6000000C6004AB5D60094EFF70094EFF70094EF
      F70094EFF70029DEF70039A5DE00BDB5B500EFC6A500DE843900DE8439008C4A
      1800292900000094D60000ADF70000C6F70018E7FF0000528C000094D6006BEF
      F700FFFFFF00FFFFFF0000528C000000000039A5DE0094EFF70094EFF70094EF
      F70094EFF70094EFF700DE843900DE843900DE84390094EFF70094EFF70094EF
      F70094EFF70094EFF70039A5DE00C6BDB50039A5DE00FFFFFF0094EFF70094EF
      F700005A4A00005A4A00005A4A00005A4A00005A4A00005A4A0039B5DE0094EF
      F70094EFF70029DEF70039A5DE00BDB5B50039A5DE00FFFFFF00ADEFF700ADEF
      F7004AB5D600ADEFF7000000C6000000C6004AB5D600ADEFF700ADEFF7004AB5
      D600ADEFF70029DEF70039A5DE00BDB5B500EFC6A500DE9C6300DE843900DE84
      39008C4A18003131310000C6F70018E7FF006BEFF70000528C006BEFF700FFFF
      FF00FFFFFF0000528C00000000000000000039A5DE00ADEFF700ADEFF700ADEF
      F700ADEFF700DE843900ADEFF700DE843900ADEFF700DE843900ADEFF700ADEF
      F700ADEFF700ADEFF70039A5DE00C6BDB50039A5DE00FFFFFF00ADEFF700ADEF
      F700005A4A0042B5D600ADEFF700ADEFF700ADEFF700005A4A0042B5D600ADEF
      F700ADEFF70029DEF70039A5DE00BDB5B50039A5DE00FFFFFF00BDEFEF000000
      C6004AB5D6004AB5D6000000C6000000C6004AB5D6004AB5D6000000C6004AB5
      D600BDEFEF0029DEF70039A5DE00BDB5B50000000000EFC6A500DE9C6300DE84
      3900DE843900DE84390000528C00FFFFFF00FFFFFF0000528C00FFFFFF00FFFF
      FF0000528C0000000000000000000000000039A5DE00BDEFEF00BDEFEF00BDEF
      EF00BDEFEF00BDEFEF00BDEFEF00DE843900BDEFEF00BDEFEF00BDEFEF00BDEF
      EF00BDEFEF00BDEFEF0039A5DE00C6BDB50039A5DE00FFFFFF00BDEFEF00BDEF
      EF00005A4A004AB5D6004AB5D600BDEFEF00BDEFEF00005A4A004AB5D6004AB5
      D600BDEFEF0029DEF70039A5DE00BDB5B50039A5DE00FFFFFF00CEE7EF000000
      C6000000C6000000C6000000C6000000C6000000C6000000C6000000C600CEE7
      EF00CEE7EF0029DEF70039A5DE00BDB5B50000000000EFC6A500EFC6A500DE9C
      6300DE9C6300DE9C6300DE9C630000528C00FFFFFF0000528C00FFFFFF000052
      8C000000000000000000000000000000000039A5DE00CEE7EF00CEE7EF00CEE7
      EF00CEE7EF00CEE7EF00CEE7EF00CEE7EF00CEE7EF00CEE7EF00CEE7EF00CEE7
      EF00CEE7EF00CEE7EF0039A5DE00C6BDB50039A5DE00FFFFFF00CEE7EF00005A
      4A00005A4A00005A4A00CEE7EF00CEE7EF00005A4A00005A4A00005A4A00CEE7
      EF00CEE7EF0029DEF70039A5DE00BDB5B50039A5DE00F7FFFF00DEE7EF00DEE7
      EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00DEE7EF0029DEF70039A5DE0000000000000000000000000000000000EFC6
      A500EFC6A500EFC6A500EFC6A500EFC6A50000528C0000528C0000528C000052
      8C000000000000000000000000000000000039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE000000000039A5DE00F7FFFF00DEE7EF00DEE7
      EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00DEE7EF0029DEF70039A5DE00000000000000000039A5DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0039A5DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000528C00000000000052
      8C00000000000000000000000000000000000000000039A5DE009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF0039A5DE000000000000000000000000000000
      0000000000000000000000000000000000000000000039A5DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0039A5DE000000000000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000528C00000000000052
      8C0000000000000000000000000000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000528C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B000000000000000000000000000000000000000000BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00BDB5
      AD00BDB5AD0000000000000000000000000000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD0000000000000000000000000000000000006B
      6B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00006B6B0000000000000000000000000000000000006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00BDB5AD00006B6B000000FF000000FF00185A
      940018636300185A5A00185A5A00185A63000000FF000000FF0010525200006B
      6B00BDB5AD00000000000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00BDB5AD000000000000000000BDB5AD00BDB5AD00006B
      6B0000FFFF00A5313100A531310000FFFF0000FFFF00A5313100A531310000FF
      FF00006B6B00BDB5AD00BDB5AD00BDB5AD00006B6B0000DEDE0000C6C60000BD
      BD0000B5B50000B5B50000ADAD0000ADAD0000ADAD0000A5A50000ADAD00006B
      6B00006B6B0000DEDE00006B6B00BDB5AD00006B6B0039F7F7000000FF000000
      FF00218CBD0029ADAD00219CB5000000FF000000FF00218C8C00186B6B00006B
      6B00BDB5AD00BDB5AD000000000000000000006B6B0039B5B5000000FF000000
      FF00184A7B00185A5A00185A5A00185A5A00185A5A000000FF000000FF001852
      5A0018525200006B6B00BDB5AD0000000000006B6B00006B6B00006B6B00006B
      6B0000FFFF00A5313100A531310000FFFF0000FFFF00A5313100A531310000FF
      FF00006B6B00006B6B00006B6B00BDB5AD00006B6B0000FFFF0000E7E70000DE
      DE0000DEDE0000DEDE0000D6D60000CECE0000C6C60000BDBD0000BDBD00006B
      6B00006B6B0000DEDE00006B6B00BDB5AD00006B6B004AFFFF0039F7F7000000
      FF000000FF0031BDEF000000FF000000FF0039DEDE0029B5B50021848400006B
      6B00006B6B00BDB5AD00BDB5AD0000000000006B6B004AFFFF0042CECE000000
      FF000000FF00298CBD0031ADAD0031ADAD000000FF000000FF00319CA500298C
      8C00216B6B00006B6B00BDB5AD0000000000006B6B0021B5B500187B7B00006B
      6B0000FFFF00A5313100A531310000FFFF0000FFFF00A5313100A531310000FF
      FF00006B6B0029C6C600006B6B00BDB5AD00006B6B0018FFFF0010FFFF0008FF
      FF0008FFFF0008FFFF0008FFFF0000FFFF0000F7F70000E7E70000DEDE00006B
      6B00006B6B0000E7E700006B6B00BDB5AD00006B6B005AFFFF004AFFFF0039FF
      FF000000FF000000FF000000FF0039FFFF0039F7F70031CECE0021949400006B
      6B00218C8C00006B6B00BDB5AD0000000000006B6B006BFFFF005AFFFF004AF7
      F7000000FF000000FF0039BDEF000000FF000000FF0039BDEF0042DEDE0039B5
      B50029848400006B6B00BDB5AD0000000000006B6B0031E7E70021949400006B
      6B0000FFFF00A5313100A5313100A5313100A5313100A531310000FFFF0000FF
      FF00006B6B0031DEDE00006B6B00BDB5AD00006B6B0021FFFF0021FFFF0000FF
      FF0000FFFF0021FFFF0021FFFF0018FFFF0008FFFF0000FFFF00006B6B0000EF
      EF00006B6B0000E7E700006B6B00BDB5AD00006B6B0063FFFF0052FFFF0042F7
      FF000000FF000000FF000000FF0031CEFF0039F7F70031CECE0029ADAD00006B
      6B0029ADAD00006B6B00006B6B00BDB5AD00006B6B0073FFFF0063FFFF0052FF
      FF004AFFFF000000FF000000FF000000FF0042CEFF004AFFFF004AF7F70039C6
      C600298C8C00006B6B00BDB5AD0000000000006B6B0039FFFF0029B5B500006B
      6B0000FFFF00A5313100A531310000FFFF0000FFFF00A5313100A531310000FF
      FF00006B6B0031EFEF00006B6B00BDB5AD00006B6B0021FFFF0010FFFF0008FF
      FF0010FFFF0010FFFF0018FFFF0010FFFF0008FFFF0000F7F700006B6B0000EF
      EF00006B6B0000E7E700006B6B00BDB5AD00006B6B0063FFFF0052F7FF000000
      FF000000FF0042FFFF000000FF000000FF0031CEFF0039DEDE0031C6C600006B
      6B0031CECE00006B6B00219C9C00006B6B00006B6B0073FFFF0063FFFF0052FF
      FF004AFFFF000000FF000000FF000000FF0042CEFF004AFFFF004AF7F70039C6
      C600298C8C00006B6B00BDB5AD0000000000006B6B0042FFFF0029BDBD00006B
      6B0000FFFF00A5313100A531310000FFFF0000FFFF00A5313100A531310000FF
      FF00006B6B0031F7F700006B6B00BDB5AD00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B0000E7
      E700006B6B0000E7E700006B6B00BDB5AD00006B6B006BF7FF000000FF000000
      FF004AFFFF004AFFFF005AFFFF000000FF000000FF0039CEFF0039E7E700006B
      6B0031D6D600006B6B0029B5B500006B6B00006B6B0073FFFF0063FFFF0052FF
      FF000000FF000000FF0042CEFF000000FF000000FF004ACEFF0052FFFF0042D6
      D600319C9C00006B6B00BDB5AD0000000000006B6B0042FFFF0029B5B500006B
      6B0000FFFF00A5313100A5313100A5313100A5313100A531310000FFFF0000FF
      FF00006B6B0031EFEF00006B6B00BDB5AD00006B6B0000FFFF0000E7E70000DE
      DE0000D6D60000DEDE0000DEDE0000E7E70000E7E70000E7E70000E7E70000E7
      E700006B6B0000E7E700006B6B00BDB5AD00006B6B000000FF000000FF0073FF
      FF006BFFFF0063FFFF006BFFFF0073FFFF000000FF000000FF0042FFFF00006B
      6B0031D6D600006B6B0031C6C600006B6B00006B6B0073FFFF006BFFFF000000
      FF000000FF0042CEFF0052FFFF005AFFFF000000FF000000FF005ACEFF0052FF
      FF0039C6C600006B6B00BDB5AD0000000000006B6B0042FFFF0021ADAD00006B
      6B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00006B6B0029D6D600006B6B00BDB5AD00006B6B0010FFFF0000FFFF0000EF
      EF0000E7E70000E7E70000EFEF0000EFEF0000F7F70000F7F70000F7F70000F7
      F700006B6B0000E7E700006B6B00BDB5AD00006B6B009CFFFF009CFFFF0094FF
      FF007BFFFF006BFFFF00006B6B00006B6B00006B6B00006B6B00006B6B0039FF
      FF0039E7E700006B6B0031BDBD00006B6B00006B6B0084FFFF000000FF000000
      FF004ACEFF005AFFFF005AFFFF006BFFFF007BFFFF000000FF000000FF0063CE
      FF0052FFFF00006B6B00BDB5AD0000000000006B6B0042FFFF0021ADAD00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B0029DEDE00006B6B00BDB5AD00006B6B0029FFFF0021FFFF0010FF
      FF0008FFFF0000FFFF0000F7F700006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B0000EFEF00006B6B00BDB5AD0000000000006B6B00006B6B00006B
      6B00006B6B00006B6B004AFFFF0039F7F70039FFFF004AFFFF0052FFFF0052FF
      FF0042FFFF00006B6B0031C6C600006B6B00006B6B009CFFFF0094FFFF008CFF
      FF007BFFFF0073FFFF006BFFFF0073FFFF00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B000000000000000000006B6B005AFFFF0031E7E7002194
      94001873730018737300187373001884840021ADAD0031DEDE0031F7F70042FF
      FF004AFFFF0039FFFF00006B6B00BDB5AD00006B6B0039FFFF0039FFFF0031FF
      FF0021FFFF0018FFFF00006B6B0000FFFF0000FFFF0000FFFF0010FFFF0018FF
      FF0010FFFF0000FFFF00006B6B00BDB5AD000000000000000000006B6B0084FF
      FF007BFFFF006BFFFF004AFFFF00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B0052FFFF0039EFEF00006B6B0000000000006B6B00ADFFFF00A5FF
      FF009CFFFF0094FFFF0084FFFF00006B6B000000000000000000000000000000
      000000000000000000000000000000000000006B6B0084FFFF006BFFFF0042FF
      FF0031F7F70031EFEF0031E7E70031E7E700006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B0000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B0010FFFF0008FFFF0008FFFF00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B0000000000000000000000000000000000006B
      6B00006B6B00006B6B00006B6B004AFFFF0039FFFF0042FFFF005AFFFF006BFF
      FF0073FFFF0000FFFF0052FFFF00006B6B000000000000000000006B6B00006B
      6B00006B6B00006B6B00006B6B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006B6B009CFFFF0094FF
      FF0084FFFF007BFFFF0063FFFF00006B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006B6B0031FF
      FF0031FFFF0029FFFF0021FFFF0018FFFF00006B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006B6B0084FFFF0084FFFF0073FFFF0063FFFF00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006B6B00006B
      6B00006B6B00006B6B00006B6B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000006B
      6B00006B6B00006B6B00006B6B00006B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006B6B00006B6B00006B6B00006B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5ADAD00B5ADAD00B5ADAD00B5ADAD00B5AD
      AD00B5ADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5ADAD00B5ADAD00003163000031630000316300003163000031
      630000316300B5ADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000392900003929000039
      290000000000000000000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00BDB5AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000073B5000073B50000316300FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD0000316300B5ADAD00000000000000000000000000000000000000
      00000073B5000073B5000073B5000073B500A5A5A500006B4A0000D68C00006B
      4A00A5A5A500000000000000000000000000006B6B0018CED60018ADBD001094
      A5000884940008848C00087B8C00087B8C00087B8C00087B8C00087B8400087B
      840008848C00006B6B00BDB5AD000000000000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00000000000000000000000000000000000073
      B50000ADF70000316300FFDEBD00FFFFFF00AD7B2900AD7B2900AD7B2900AD7B
      2900FFFFFF00FFDEBD0000316300B5ADAD000000000000000000000000000073
      B50000ADF70010DEF70010DEF7000073B50000316300006B4A0000D68C00006B
      4A00A5A5A500A5A5A5000000000000000000006B6B0018DEEF0018C6D60010B5
      BD0008A5B500089CAD00089CA500089CA500089CA5000894A500088C9C000884
      940008849400006B6B00BDB5AD0000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00BDB5AD000000000000000000000000000073B50000AD
      F70000316300FFDEBD00FFFFFF00AD7B2900AD7B29008C5A29008C5A2900AD7B
      2900AD7B2900FFFFFF00FFDEBD000031630000000000000000000073B50000AD
      F70010DEF70073F7FF00006B4A00006B4A00006B4A000039290000D68C000039
      290000392900003929000039290000000000006B6B0021E7FF0010E7FF0010D6
      E7003939FF003939FF0008BDCE0008BDCE0010BDCE0010B5C60010ADBD000894
      AD00088CA500006B6B00BDB5AD0000000000006B6B0021B5B500188484001063
      6300105A5A00105A5A00105A5A00105A5A001063630010636300106363001063
      630010636300006B6B00BDB5AD0000000000000000000073B50000ADF70010DE
      F70000316300FFFFFF00FFFFFF00AD7B2900C6A56B008C5A29008C5A29008C5A
      2900AD7B2900FFFFFF00FFDEBD0000316300000000000073B50000ADF70010DE
      F70073F7FF000073B500006B4A0073F7CE0000D68C0000D68C0000D68C0000D6
      8C0000D68C0000D68C000039290000000000006B6B0031EFFF0021E7FF0010D6
      E7003939FF003939FF0008ADEF0008D6EF0010D6EF0010D6E70010C6D60008AD
      BD00089CAD00006B6B00BDB5AD0000000000006B6B0031FFFF0029CECE0021B5
      B50021ADAD0021ADAD0021ADAD0021ADAD0021ADAD0021BDBD0029C6C60029BD
      BD0021A5A500006B6B00BDB5AD00000000000073B50000ADF70010DEF70010DE
      F70073F7FF0000316300FFFFFF00AD7B2900FFFFC6008C5A29008C5A2900AD7B
      2900AD7B2900FFDEBD0000316300000000000073B50000ADF70010DEF70010DE
      F70073F7FF0073F7FF00006B4A00006B4A00006B4A000039290000D68C000039
      2900006B4A00006B4A000039290000000000006B6B0039EFFF0031EFFF003939
      FF003939FF003939FF003939FF0008ADEF0010E7FF0010DEEF0010CEDE0008B5
      C600089CB500006B6B00BDB5AD0000000000006B6B0052FFFF0042FFFF0031F7
      F70031EFEF0031EFEF0031EFEF0031EFEF0031EFEF0031F7F70042FFFF004AFF
      FF0031FFFF00006B6B00BDB5AD00000000000073B50000ADF70010DEF70073F7
      FF0073F7FF0073F7FF0000316300FFDEBD00AD7B2900AD7B2900AD7B2900AD7B
      2900FFDEBD000031630000000000000000000073B50000ADF70010DEF70073F7
      FF0073F7FF0073F7FF0073F7FF0010B5EF0073F7FF00006B4A0000D68C000039
      2900A5A5A500000000000000000000000000006B6B0042EFFF003939FF003939
      FF0018EFFF0018EFFF003939FF006B8CF70008B5F70010DEF70008CEE70008B5
      C600089CB500006B6B00BDB5AD0000000000006B6B005AFFFF004AFFFF0039FF
      FF0031FFFF0031FFFF0039FFFF0039FFFF0031FFFF0031F7F700006B6B00006B
      6B00006B6B00006B6B00BDB5AD00000000000073B50000ADF70010DEF70073F7
      FF00AD7B290073F7FF0073F7FF00003163000031630000316300003163000031
      6300003163000000000000000000000000000073B50000ADF70010DEF70073F7
      FF00AD7B290073F7FF0073F7FF0073F7FF00AD7B2900006B4A0073F7CE000039
      2900A5A5A500000000000000000000000000006B6B004AEFFF003939FF0031EF
      FF0029EFFF0018EFFF0018EFFF003939FF006B8CF70008B5F70008CEE70008B5
      C600009CB500006B6B00BDB5AD0000000000006B6B005AFFFF004AFFFF0039FF
      FF0031FFFF0031FFFF0039FFFF004AFFFF0039FFFF0031EFEF00006B6B0000FF
      FF00006B6B00006B6B00BDB5AD00000000000073B5000073B50010DEF70073F7
      FF0052CEF70052CEF70073F7FF0073F7FF0052CEF70052CEF7000073B500B5AD
      AD00000000000000000000000000000000000073B5000073B50010DEF70073F7
      FF0052CEF70052CEF70073F7FF0073F7FF0052CEF700006B4A00006B4A000039
      290000000000000000000000000000000000006B6B004AEFFF0042EFFF0039EF
      FF0031EFFF0021EFFF0018EFFF005AF7FF003939FF006B8CF70008CEE70000B5
      CE00009CB500006B6B00BDB5AD0000000000006B6B005AFFFF004AFFFF0039FF
      FF0039FFFF0039FFFF0039FFFF0052FFFF005AFFFF0039FFFF00006B6B0000FF
      FF00006B6B00006B6B00BDB5AD00000000000073B500003163000073B50073F7
      FF000073B5000073B5000073B50073F7FF000073B5000073B5000073B500B5AD
      AD00000000000000000000000000000000000073B500003163000073B50073F7
      FF000073B5000073B5000073B50073F7FF000073B5000073B5000073B500A5A5
      A50000000000000000000000000000000000006B6B004AEFFF004AEFFF0042F7
      FF0039F7FF0031EFFF0029EFFF0021EFFF005AF7FF003939FF006B8CF70008BD
      D60000A5BD00006B6B00BDB5AD0000000000006B6B0063FFFF0052FFFF0039FF
      FF0039FFFF0039EFEF0039E7E700006B6B00006B6B00006B6B00006B6B0000FF
      FF00006B6B00006B6B00006B6B00006B6B000073B500003163000073B50073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF0073F7FF0010DEF7000073B500B5AD
      AD00000000000000000000000000000000000073B500003163000073B50073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF0073F7FF0010DEF7000073B500A5A5
      A50000000000000000000000000000000000006B6B005AF7FF005AF7FF0052F7
      FF004AF7FF004AF7FF0042EFFF0039EFFF0039EFFF005AF7FF003939FF006B8C
      F70008B5BD00006B6B00BDB5AD0000000000006B6B0073FFFF0063FFFF004AFF
      FF0042FFFF0039E7E70031BDBD00006B6B0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00006B6B000073B50000316300003163000073
      B50010DEF7000073B5000073B5000073B5000073B5000073B5000073B500B5AD
      AD00000000000000000000000000000000000073B50000316300003163000073
      B50010DEF7000073B5000073B5000073B5000073B5000073B5000073B500A5A5
      A50000000000000000000000000000000000006B6B006BF7FF006BF7FF006BF7
      FF0063F7FF0063F7FF0063F7FF005AF7FF005AEFFF0052F7FF005AF7FF003939
      FF003939FF00006B6B00BDB5AD0000000000006B6B008CFFFF008CFFFF0073FF
      FF0063FFFF004AFFFF0031CECE00006B6B00006B6B00006B6B00006B6B0000FF
      FF00006B6B00006B6B00006B6B00006B6B000073B50000316300003163000031
      630000319C0000319C0000319C0000319C0000319C0000319C000073B5000000
      0000000000000000000000000000000000000073B50000316300003163000031
      630000319C0000319C0000319C0000319C0000319C0000319C000073B500A5A5
      A50000000000000000000000000000000000006B6B006BF7FF0073F7FF0073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF006BF7FF006BF7FF005AEFFF0039EF
      FF0021EFFF00006B6B00BDB5AD000000000000000000006B6B00A5FFFF009CFF
      FF008CFFFF006BFFFF0042FFFF00006B6B000000000000000000006B6B0000FF
      FF00006B6B00000000000000000000000000000000000073B500003163000042
      84000042840000319C0000319C0000319C000073B5000073B500000000000000
      000000000000000000000000000000000000000000000073B500003163000042
      84000042840000319C0000319C0000319C000073B5000073B500A5A5A5000000
      000000000000000000000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B0000000000000000000000000000000000006B6B00006B
      6B00006B6B00006B6B00006B6B00000000000000000000000000006B6B0000FF
      FF00006B6B0000000000000000000000000000000000000000000073B5000073
      B5000073B5000073B5000073B5000073B5000073B50000000000000000000000
      00000000000000000000000000000000000000000000000000000073B5000073
      B5000073B5000073B5000073B5000073B5000073B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006B6B00006B
      6B00006B6B00000000000000000000000000000000000000000000000000B5B5
      B500949494007B7B7B007B7B7B007B7B7B0094949400B5A5A500B5A5A500BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00000000000000000000000000000000000000
      00000000000000000000BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5ADAD00B5AD
      AD00B5ADAD00B5ADAD0000000000000000000000000000000000000000000000
      000000000000EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000006B6B
      6B004A396B0021108C002121C6002121C60031109C002131840039A5AD005AE7
      F7005AF7FF005AF7FF00BDB5AD00000000000000000000000000000000000000
      000000000000006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00BDB5AD000000000000000000000000000000
      000000000000B5ADAD00B5ADAD00B5ADAD00B5ADAD006B63EF001000DE001000
      DE001000DE006B63EF00B5ADAD0000000000000000000000000000000000F7F7
      F700EFEFEF00B5ADAD00B5ADAD00B5ADAD00B5ADAD00DEDEDE00DEDEDE00DEDE
      DE00E7E7E70000000000000000000000000000000000000000006B6B6B003929
      73002121DE002121DE002121DE002121DE002121DE002121DE0018188C00006B
      6B00006B6B00006B6B00006B6B00BDB5AD000000000000000000000000000000
      000000000000006B6B0039CEDE0031ADBD0029949C00298C9400298C94002184
      8C00217B8400217B8400006B6B00BDADB5000000000000000000000000000000
      00000073B5000073B5000073B5000073B5001000DE001000DE001000DE001000
      DE001000DE001000DE001000DE00B5ADAD000000000000000000F7F7F700F7EF
      EF000073B5000073B5000073B5000073B500B5ADAD00B5ADAD00DEDEDE00DEDE
      DE00DEDEDE00E7E7E700000000000000000000000000E718E7004A396B002121
      DE00FFFFFF00FFFFFF002121DE002121DE00FFFFFF00FFFFFF002121DE003152
      C6005AF7FF005AF7FF005AF7FF00BDB5AD000000000000000000000000000000
      000000000000006B6B004AEFFF0042DEEF0039C6D60031B5C60031BDCE0031B5
      C60029A5AD0029949C00006B6B00CE94BD000000000000000000000000000073
      B50000ADF70010DEF70010DEF7006B63EF001000DE00FFFFFF00CECEFF001000
      DE00CECEFF00FFFFFF001000DE006B63EF0000000000F7F7F700F7F7F7000073
      B50000ADF70010DEF70010DEF70010DEF7000073B500B5ADAD00B5ADAD00DEDE
      DE00DEDEDE00E7E7E700E7E7E70000000000000000008C738C0021108C002121
      DE002121DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF002121DE002121DE002121
      B500006B6B00006B6B005AF7FF00BDB5AD000000000000000000000000000000
      000000000000006B6B005AEFFF004AEFFF0042EFFF0042E7FF0042EFFF004AEF
      FF0042E7FF0039C6D600006B6B000000000000000000000000000073B50000AD
      F70010DEF70073F7FF0073F7FF001000DE001000DE001000DE00FFFFFF00CECE
      FF00FFFFFF001000DE001000DE001000DE0000000000F7F7F7000073B50000AD
      F70010DEF70073F7FF0073F7FF0073F7FF0010DEF7000073B500B5ADAD00DEDE
      DE00DEDEDE00E7E7E700E7E7E70000000000000000008C738C002121C6002121
      DE002121DE002121DE00FFFFFF00FFFFFF002121DE002121DE002121DE002121
      DE005AF7FF005AF7FF005AF7FF00BDB5AD000000000000000000000000000000
      000000000000006B6B0063EFFF0063EFFF0052EFFF004AEFFF0052EFFF005AEF
      FF0052EFFF004AEFFF00006B6B0000000000000000000073B50000ADF70010DE
      F70073F7FF000073B5000073B5001000DE001000DE001000DE006363FF00FFFF
      FF009C9CFF001000DE001000DE001000DE00FFFFFF000073B50000ADF70010DE
      F70073F7FF000073B5000073B5000073B50073F7FF000073B50039A5DE00B5AD
      AD00E7E7E700E7E7E700E7E7E700EFEFEF0000000000E718E7002121C6002121
      DE002121DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF002121DE002121DE002121
      DE005AF7FF005AF7FF005AF7FF00BDB5AD000000000000000000000000000000
      000000000000006B6B00006B6B0063EFFF005AEFFF0052EFFF00006B6B00006B
      6B00006B6B00006B6B00006B6B00000000000073B50000ADF70010DEF70010DE
      F70073F7FF0073F7FF0073F7FF001000DE001000DE001000DE00FFFFFF00CECE
      FF00FFFFFF001000DE001000DE001000DE000073B50000ADF70010DEF70010DE
      F70073F7FF0073F7FF0073F7FF0073F7FF0073F7FF0010DEF7000073B500B5AD
      AD00B5ADAD00E7E7E700EFEFEF00EFEFEF0000000000000000004A10AD002121
      DE00FFFFFF00FFFFFF002121DE002121DE00FFFFFF00FFFFFF002121DE002121
      C6005AF7FF005AF7FF005AF7FF00BDB5AD00000000000000000000000000C69C
      B500BDB5AD00BDB5AD00006B6B005AEFFF005AEFFF0052EFFF00006B6B000000
      0000000000000000D600BDB5AD00000000000073B50000ADF70010DEF70073F7
      FF0073F7FF0073F7FF0073F7FF006B63EF001000DE00FFFFFF00CECEFF001000
      DE00CECEFF00FFFFFF001000DE006B63EF000073B50000ADF70010DEF7006363
      630031313100313131006363630010B5EF006363630031313100313131009C9C
      9C00B5ADAD00EFEFEF00EFEFEF00EFEFEF0000000000000000006B42EF002121
      DE002121DE002121DE002121DE002121DE002121DE002121DE002121DE001818
      8C00006B6B00006B6B00006B6B00BDB5AD00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00000000000000
      00003900E7000000D6000000D600BDB5AD000073B50000ADF70010DEF70073F7
      FF00AD7B290073F7FF0073F7FF0073F7FF001000DE001000DE001000DE001000
      DE001000DE001000DE001000DE00000000000073B50000ADF70010DEF7006363
      630031313100313131003131310073F7FF006363630031313100313131003131
      3100B5ADAD00EFEFEF00EFEFEF00EFEFEF000000000000000000000000006B42
      EF002121DE002121DE002121DE002121DE002121DE002121DE002952DE00006B
      6B00006B6B005AF7FF0084848400BDB5AD00006B6B0039CEDE0031ADBD002994
      9C00298C9400298C9400298C9400299CAD00006B6B00BDB5AD00000000003900
      E7000000D6000000D6000000D6007B00FF000073B5000073B50010DEF70073F7
      FF0052CEF70052CEF70073F7FF0073F7FF0052CEF7006B63EF001000DE001000
      DE001000DE006B63EF0000000000000000000073B5000073B50010DEF7006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300EFEFEF00EFEFEF00F7F7F700F7F7F7000000000000000000000000000000
      00006B42EF002121C6002121DE002121DE002121C60018188C0084848400006B
      6B008484840084848400006B6B00BDB5AD00006B6B004AEFFF0042DEEF0039C6
      D60031B5C60031B5BD0029A5B500299CA500006B6B00BDB5AD00000000000000
      0000000000000000D60000000000000000000073B500003163000073B50073F7
      FF000073B5000073B5000073B50073F7FF000073B5000073B5000073B500B5AD
      AD00000000000000000000000000000000000073B500003163000073B50073F7
      FF000073B5000073B5000073B50073F7FF000073B5000073B5000073B500B5AD
      AD00F7F7F700F7F7F700F7F7F700F7F7F7000000000000000000000000000000
      00000000000000000000006B6B005AF7FF00006B6B00006B6B00006B6B005AF7
      FF00006B6B00006B6B00006B6B00BDB5AD00006B6B005AEFFF004AEFFF0042EF
      FF0042E7FF0042E7FF0039DEEF0039C6D600006B6B00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD003900E70000000000000000000073B500003163000073B50073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF0073F7FF0010DEF7000073B500B5AD
      AD00000000000000000000000000000000000073B500003163000073B50073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF0073F7FF0010DEF7000073B500B5AD
      AD00F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000006B6B005AF7FF005AF7FF005AF7FF005AF7
      FF005AF7FF005AF7FF005AF7FF00BDB5AD00006B6B0063EFFF0063EFFF0052EF
      FF004AEFFF004AEFFF004AEFFF0042EFFF00006B6B00BDB5AD001800D6003900
      E7006B00FF000000000000000000000000000073B50000316300003163000073
      B50010DEF7000073B5000073B5000073B5000073B5000073B5000073B5000000
      0000000000000000000000000000000000000073B50000316300003163000073
      B50010DEF7000073B5000073B5000073B5000073B5000073B5000073B500B5AD
      AD00F7F7F700F7F7F700FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000006B6B005AF7FF005AF7FF005AF7
      FF005AF7FF005AF7FF005AF7FF00BDB5AD00006B6B00006B6B006BEFFF005AEF
      FF0052EFFF00006B6B00006B6B00006B6B00006B6B0000000000000000000000
      0000000000000000000000000000000000000073B50000316300003163000031
      630000319C0000319C0000319C0000319C0000319C0000319C000073B5000000
      0000000000000000000000000000000000000073B50000316300003163000031
      630000319C0000319C0000319C0000319C0000319C0000319C000073B500FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B000000000000000000006B6B006BEFFF0063EF
      FF0052EFFF00006B6B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000073B500003163000042
      84000042840000319C0000319C0000319C000073B5000073B500000000000000
      000000000000000000000000000000000000000000000073B500003163000042
      84000042840000319C0000319C0000319C000073B5000073B500FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006B6B00006B
      6B00006B6B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000073B5000073
      B5000073B5000073B5000073B5000073B5000073B50000000000000000000000
      00000000000000000000000000000000000000000000000000000073B5000073
      B5000073B5000073B5000073B5000073B5000073B500FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084523100FFDEAD008452
      3100000000000000000000000000000000000000000000000000000000000000
      0000BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B5000000000000000000000000000000
      000000000000086B2100CE84C6000000000000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD000000000000000000BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B50000000000B57B5200B57B5200B57B
      5200B57B5200B57B5200B57B5200B57B5200B57B520084523100FFDEAD008452
      3100B57B5200B57B5200B57B5200000000000000000000000000000000000073
      B5000073B5000073B5000073B5000073B5000073B5000073B5000073B5000073
      B5000073B5000073B5000073B5000073B5000000000000000000000000004A7B
      6B0008732100BDB5AD000000000000000000006B6B005AF7FF005AF7FF005AF7
      FF005AF7FF005AF7FF00BDB5AD000000000039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE00BDB5B500E7C68C00E7C68C00E7C68C00E7C6
      8C00E7C68C00E7C68C00E7C68C00E7C68C00E7C68C0084523100FFDEAD008452
      3100E7C68C00E7C68C00E7C68C00B57B52000000000063006300293131000073
      B5000073B50000B5FF0000B5FF0000B5FF0000B5FF0000B5FF0000B5FF0000B5
      FF0000B5FF0000B5FF000073B5000073B50000000000000000008CADB50031CE
      7300108C390008632100085A180008521800084210005AF7FF00006B6B00006B
      6B00006B6B00006B6B00006B6B00BDB5AD0039A5DE00FFFFFF0039C6EF0039C6
      EF0039C6EF0039C6EF0039C6EF0039C6EF0039C6EF0039C6EF0039C6EF0039C6
      EF0039C6EF0039C6EF0039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD0084523100FFDEAD008452
      3100FFDEAD00FFDEAD00E7C68C00B57B5200004A210094F7BD0010CE52000073
      B500FFFFFF000073B50029DEF70029DEF70029DEF70029DEF70029DEF70029DE
      F70029DEF7000073B50000B5FF000073B50000000000C6B5D600A5EFBD0063EF
      A50031CE7300109C310008942900087B2100085A1800004210005AF7FF005AF7
      FF005AF7FF005AF7FF005AF7FF00BDB5AD0039A5DE00FFFFFF0029DEF70029DE
      F70029DEF70029DEF70029DEF70029DEF70029DEF70029DEF70029DEF70029DE
      F70029DEF70029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD000031
      63000031630000316300003163000031630084523100E7C68C00FFDEAD008452
      310000316300FFDEAD00E7C68C00B57B5200004A2100EFFFF70010CE52000073
      B500FFFFFF004ADEF7000073B5004ADEF7004ADEF7004ADEF7004ADEF7004ADE
      F7000073B5004ADEF70000B5FF000073B50000000000CEF7DE00006B6B00ADF7
      C600006B6B00006B6B00006B6B0008AD3100006B6B00085A18005AF7FF00006B
      6B00006B6B00006B6B005AF7FF00BDB5AD0039A5DE00FFFFFF004ADEF7000073
      B5000073B5000073B5000073B5007BE7FF000073B5000073B5000073B5000073
      B5004ADEF70029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD000073
      B500009CFF00009CFF00009CFF0084523100E7C68C00FFDEAD0084523100009C
      FF0000316300FFDEAD00E7C68C00B57B5200004A2100004A2100CEFFDE000073
      B500FFFFFF005AE7F7005AE7F7000073B5005AE7F7000073B5005AE7F7000073
      B5005AE7F7005AE7F70000B5FF000073B50000000000DEBDE700DEF7E700D6F7
      DE00BDF7CE006BDE8C0029CE520018C6420008AD3100088C29005AF7FF00006B
      6B005AF7FF005AF7FF005AF7FF00BDB5AD0039A5DE00FFFFFF005AE7F7005AE7
      F7005AE7F7005AE7F7005AE7F7005AE7F7005AE7F7005AE7F7005AE7F7005AE7
      F7005AE7F70029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD000073
      B500CEFFFF0029DEF70084523100E7C68C00FFDEAD008452310029DEF700009C
      FF0000316300FFDEAD00E7C68C00B57B520000000000004A2100004A21000073
      B500FFFFFF006BE7F7006BE7F7006BE7F7000073B5006BE7F7000073B5006BE7
      F7006BE7F7006BE7F70000B5FF000073B5000000000000000000E794EF00DEB5
      E700C6DED60084E79C0042D66B0029CE52005AF7FF005AF7FF005AF7FF00006B
      6B005AF7FF005AF7FF005AF7FF00BDB5AD0039A5DE00FFFFFF006BE7F7000073
      B5000073B5000073B5000073B5000073B5007BE7FF000073B5000073B5000073
      B5006BE7F70029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD000073
      B500CEFFFF0029DEF700009CFF00845231008452310029DEF70029DEF700009C
      FF0000316300FFDEAD00E7C68C00B57B520000000000004A21009CF7BD000073
      B500FFFFFF007BE7FF007BE7FF000073B5007BE7FF007BE7FF007BE7FF000073
      B5007BE7FF007BE7FF0000B5FF000073B5000000000000000000000000000000
      00000000000000000000006B6B005AF7FF005AF7FF005AF7FF005AF7FF00006B
      6B005AF7FF005AF7FF005AF7FF00BDB5AD0039A5DE00FFFFFF007BE7FF007BE7
      FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7FF007BE7
      FF007BE7FF0029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD000073
      B500CEFFFF0029DEF70029DEF70029DEF70029DEF70029DEF70029DEF700009C
      FF0000316300FFDEAD00E7C68C00B57B5200004A2100C6F7D600BDF7D6000073
      B500FFFFFF0094EFF7000073B50094EFF70094EFF70094EFF70094EFF7007BE7
      FF000073B500ADEFF70000B5FF000073B500000000000000000000000000089C
      3100CE84C60000000000006B6B005AF7FF00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00BDB5AD0039A5DE00FFFFFF0094EFF7000073
      B5000073B5007BE7FF000073B5000073B5000073B5000073B5000073B5000073
      B5007BE7FF0029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD000073
      B500CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00009C
      FF0000316300FFDEAD00E7C68C00B57B5200004A2100004A2100004A21000073
      B500FFFFFF000073B500ADEFF700ADEFF700ADEFF700ADEFF700ADEFF700ADEF
      F700ADEFF7000073B50000B5FF000073B500000000004A7B6300087B2100BDB5
      AD000000000000000000006B6B005AF7FF005AF7FF00006B6B005AF7FF00006B
      6B00006B6B005AF7FF0084848400BDB5AD0039A5DE00FFFFFF00ADEFF700ADEF
      F700ADEFF700ADEFF700ADEFF700ADEFF700ADEFF700ADEFF700ADEFF700ADEF
      F700ADEFF70029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD000073
      B5000073B5000073B5000073B5000073B5000073B5000073B5000073B5000073
      B50000316300FFDEAD00E7C68C00B57B52000000000000000000004A21000073
      B5000073B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000073B5000073B5008484A50018B54A00088429000863
      2100084A180008421000006B6B005AF7FF00006B6B00006B6B0084848400006B
      6B008484840084848400006B6B00BDB5AD0039A5DE00FFFFFF00BDEFEF000073
      B5000073B5000073B5000073B5000073B5000073B500BDEFEF000073B5000073
      B500BDEFEF0029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD00FFDE
      AD000073B50000B5FF0000B5FF0000B5FF000073B500FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00E7C68C00B57B520000000000004A2100A5F7C6000073
      B5000073B5000073B5000073B5000073B5000073B5000073B5000073B5000073
      B5000073B5000073B5000073B5000073B500BDD6CE007BE7A50021C65A0010A5
      310008842900085A1800084210005AF7FF00006B6B00006B6B00006B6B005AF7
      FF00006B6B00006B6B00006B6B00BDB5AD0039A5DE00F7FFFF00DEE7EF00DEE7
      EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00DEE7EF0029DEF70039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD00FFDE
      AD00FFDEAD000073B5000073B5000073B500FFDEAD00FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00E7C68C00B57B520000000000004A2100E7FFEF00004A
      2100004A2100004A2100BDF7D60010CE520010CE5200004A2100004A2100CEF7
      DE0063F79C0010BD4A00004A2100BDB5AD00E7DEEF00006B6B00006B6B0052DE
      7300006B6B00089C290008632100006B6B005AF7FF005AF7FF005AF7FF005AF7
      FF005AF7FF005AF7FF005AF7FF00BDB5AD0039A5DE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0039A5DE00BDB5B500E7C68C00FFFFFF00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00E7C68C00B57B52000000000000000000004A2100004A
      210000000000004A2100C6FFD6009CF7BD0010CE5200004A2100004A2100004A
      2100BDF7D60021DE6B00004A210000000000EF9CF700E7FFEF00DEF7E700ADEF
      BD0063DE84005ADE7B004A7B630000000000006B6B005AF7FF005AF7FF005AF7
      FF005AF7FF005AF7FF005AF7FF00BDB5AD0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5DE0039A5
      DE0039A5DE0039A5DE0039A5DE0000000000E7C68C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7C68C00B57B52000000000000000000000000000000
      00000000000000000000004A2100C6F7DE0042E78400004A210000000000004A
      2100004A2100004A2100000000000000000000000000E79CEF00D6D6DE00ADEF
      BD0094CEAD009C8CAD00000000000000000000000000006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C68C00E7C68C00E7C6
      8C00E7C68C00E7C68C00E7C68C00E7C68C00E7C68C00E7C68C00E7C68C00E7C6
      8C00E7C68C00E7C68C00E7C68C00000000000000000000000000000000000000
      0000000000000000000000000000004A2100004A210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00000000000000000000000000000000000000
      0000000000000031630000316300003163000031630000316300003163000031
      63000031630000316300003163000031630000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD000000000000000000BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00BDB5AD0000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00BDB5AD00000000000000000000000000000000000000
      0000EFE7C6000073B5000031630000B5FF0000B5FF0000B5FF0000B5FF0000B5
      FF0000B5FF0000B5FF000031630000316300006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00BDB5AD0000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00BDB5AD0000000000006B6B0018CED60018ADBD001094
      A5000884940008848C00087B8C00087B8C00087B8C00087B8C00087B8400087B
      840008848C00006B6B00BDB5AD0000000000000000000000000000000000EFE7
      BD00EFE7BD000073B500FFFFFF000031630029DEF70029DEF7000031630029DE
      F70029DEF7000031630000B5FF0000316300006B6B004ADE63004ACE520039B5
      4A0029A54200299C3900299C3900299C3900299C3900299C3900219431002194
      3100299C3900006B6B00BDB5AD0000000000006B6B00CE8C29009C7B31007373
      3900526B4A004A6B4A00426B4A00426B4A00426B4A00426B4A00396B5200396B
      52004A6B4A00006B6B00BDB5AD0000000000006B6B0018DEEF0018C6D60010B5
      BD0008A5B500089CAD000873BD000873BD00089CA5000894A500088C9C000884
      940008849400006B6B00BDB5AD00000000000000000000000000EFE7BD00EFE7
      BD00EFE7BD000073B500FFFFFF0029DEF700003163000031630029DEF7000031
      63000031630029DEF70000B5FF0000316300006B6B0052F763004ADE630042CE
      520039C64A0031BD4A0031B54A0031B54A0031B54A0031B54A0031AD420029A5
      390029A54200006B6B00BDB5AD0000000000006B6B00EF9C1800CE8C2100FF5A
      0800FF5A08007B7B31007B7339007B7339007B73390073733900637B4A005273
      4A0052734A00006B6B00BDB5AD0000000000006B6B0021E7FF0010E7FF0010D6
      E70010C6D6004242FF004242FF00088CDE0010BDCE0010B5C60010ADBD000894
      AD00088CA500006B6B00BDB5AD000000000000000000EFDEBD00EFDEBD00EFDE
      BD000063BD000073B500FFFFFF0029DEF7000031630029DEF70029DEF70029DE
      F7000031630029DEF70000B5FF0000316300006B6B0052FF6B004AFF63004AEF
      63004ADE5A003939FF003939FF003939FF003939FF0039CE4A0039CE4A0031BD
      4A0031B54A00006B6B00BDB5AD0000000000006B6B00FFAD2100FF9C10004242
      FF004242FF00FF5A0800BD841800BD8C1800BD842100B59429004242FF004242
      FF006B734200006B6B00BDB5AD0000000000006B6B0031EFFF0021E7FF0010E7
      FF0010DEF7004242FF004242FF0010DEEF0010D6EF0010D6E70010C6D60008AD
      BD00089CAD00006B6B00BDB5AD000000000000000000EFDEBD00EFDEB5000063
      BD007BC6FF000073B500FFFFFF000031630029DEF70029DEF70029DEF70029DE
      F70029DEF7000031630000B5FF0000316300006B6B0063FF7B0052FF6B004AFF
      63003939FF003939FF003939FF003939FF003939FF003939FF0039CE4A0039CE
      4A0031BD4A00006B6B00BDB5AD0000000000006B6B00FFAD3100FFAD2100FFA5
      10004242FF004242FF00FF5A0800EF940800E7AD18004242FF004242FF009C84
      2900847B3100006B6B00BDB5AD0000000000006B6B0039EFFF0031EFFF0021EF
      FF0018E7FF0010E7FF0010E7FF0010ADFF0008ADFF0010DEEF0010CEDE0008B5
      C600089CB500006B6B00BDB5AD000000000000000000EFDEB5000063BD007BC6
      FF0094EFFF000073B50000316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000031630000316300006B6B006BFF840063FF7B003939
      FF003939FF004AF763004AEF630042DE5A0039D65A003939FF003939FF0039CE
      520039C64A00006B6B00BDB5AD0000000000006B6B00F7B54200FFAD3100FFA5
      2100FFA518004242FF004242FF00FF5A08004242FF004242FF00D68C1800AD84
      21008C7B3100006B6B00BDB5AD0000000000006B6B0042EFFF0042EFFF0031EF
      FF0021EFFF0018EFFF004242FF004242FF0008ADFF0010DEF70008CEE70008B5
      C600089CB500006B6B00BDB5AD0000000000EFDEB5000063BD007BC6FF0094EF
      FF000000A500003163000073B5000073B5000073B5000073B5000073B5000073
      B5000073B5000073B5000073B50000316300006B6B006BFF84006BFF84003939
      FF0052FF6B004AFF63004AF763004AEF630042DE5A0039D65A003939FF0039CE
      520039C65200006B6B00BDB5AD0000000000006B6B00F7B54A00FFB54200FFAD
      3100FFA52100FFA518004242FF004242FF004242FF00F79C1000DE941000B584
      21008C843100006B6B00BDB5AD0000000000006B6B004AEFFF0042EFFF0031EF
      FF0029EFFF0029EFFF004242FF004242FF0010ADFF0010DEF70008CEE70008B5
      C600009CB500006B6B00BDB5AD00000000000063BD007BC6FF0094EFFF0094EF
      FF004A9CDE003929B5000800C6000800C6000800C6000000A5003939BD0094EF
      FF007BC6FF000063BD00EFDEB500EFDEB500006B6B0073FF84006BFF7B006BFF
      840063FF7B0052FF6B004AFF63004AF763004AEF630042DE5A0039D65A0039CE
      520031C64A00006B6B00BDB5AD0000000000006B6B00F7B55200FFAD4200FFAD
      3900FFA52900FFAD18004242FF004242FF004242FF00FF5A0800DE941000AD8C
      21008C842900006B6B00BDB5AD0000000000006B6B004AEFFF0042EFFF0039EF
      FF0031EFFF0031EFFF004242FF004242FF0010B5FF0010ADF70008CEE70000B5
      CE00009CB500006B6B00BDB5AD00000000000063BD000063BD00FFFFFF0094EF
      FF0094EFFF007BB5DE007BB5DE000000A5000800C6000000A5003939BD0094EF
      FF000063BD00C6BDA500EFDEB500EFDEB500006B6B0073FF84006BFF84006BFF
      7B0063FF730052FF6B0052FF6B004AFF63004AF763004AEF630042DE5A0039D6
      5A0031C64A00006B6B00BDB5AD0000000000006B6B00F7B55200F7B54A00FFAD
      3900FFB531004242FF004242FF00FFA518004242FF004242FF00FF5A0800B58C
      180094842900006B6B00BDB5AD0000000000006B6B004AEFFF004AEFFF0042F7
      FF0039F7FF0039F7FF0039F7FF004242FF004242FF0010B5FF0010DEEF0008BD
      D60000A5BD00006B6B00BDB5AD00000000007BC6FF000063BD000063BD00FFFF
      FF0094EFFF0094EFFF0094EFFF004A9CDE000000A5000000A5004A9CDE007BC6
      FF000063BD00EFDEB500EFDEB50000000000006B6B0073FF840073FF84006BFF
      84003939FF0063FF730063FF7B0052FF6B004AFF63003939FF004AEF630042DE
      5A0031CE5200006B6B00BDB5AD0000000000006B6B00F7BD5A00F7B55200F7BD
      42004242FF004242FF00FFA52900FFA52100FFA521004242FF004242FF00FF5A
      08009C842900006B6B00BDB5AD0000000000006B6B005AF7FF005AF7FF0052F7
      FF004AF7FF004AF7FF004AF7FF004242FF004242FF0021B5FF0018EFFF0008D6
      EF0008BDD600006B6B00BDB5AD0000000000000000000063BD000063BD000063
      BD00FFFFFF0094EFFF0094EFFF0094EFFF0094EFFF0094EFFF0094EFFF000063
      BD00C6BDA500EFDEB500EFDEB50000000000006B6B007BFF8C007BFF8C007BFF
      84003939FF0073FF840063FF7B0063FF7B006BFF7B003939FF0052FF6B0042F7
      630042DE5A00006B6B00BDB5AD0000000000006B6B00EFC66B00EFBD6B004242
      FF004242FF00F7B55200F7B54A00FFAD4200FFAD3900FFAD31004242FF004242
      FF00C68C1800006B6B00BDB5AD0000000000006B6B006BF7FF006BF7FF006BF7
      FF0063F7FF0063F7FF0063F7FF004242FF004242FF0052F7FF0039EFFF0018E7
      FF0010D6EF00006B6B00BDB5AD0000000000000000007BC6FF000063BD007B8C
      B5000063BD00FFFFFF0094EFFF0094EFFF0094EFFF0094EFFF007BC6FF000063
      BD00EFDEB500EFDEB5000000000000000000006B6B008CFF94008CFF94008CFF
      940084FF8C0084FF8C0084FF8C007BFF8C007BFF8C007BFF8C006BFF7B0052FF
      6B004AF76300006B6B00BDB5AD0000000000006B6B00DECE8400DECE8C00DECE
      8400E7C67B00E7C67B00E7C67B00E7C67300EFBD6B00EFBD6300FFB54200FFA5
      1800EF9C1000006B6B00BDB5AD0000000000006B6B006BF7FF0073F7FF0073F7
      FF0073F7FF0073F7FF0073F7FF0073F7FF006BF7FF006BF7FF005AEFFF0039EF
      FF0021EFFF00006B6B00BDB5AD000000000000000000000000000063BD009CAD
      CE009CADCE000063BD00FFFFFF0094EFFF0094EFFF0094EFFF000063BD00C6BD
      A500EFDEBD00000000000000000000000000006B6B008CFF94008CFF9C008CFF
      9C008CFF9C008CFF9C008CFF9C008CFF9C008CFF94008CFF94007BFF8C006BFF
      7B0052FF6B00006B6B00BDB5AD0000000000006B6B00DECE9400D6D69C00D6D6
      9C00D6D69C00D6D69C00D6D69C00D6D69C00D6CE9400DECE8C00EFBD6B00FFB5
      3900FFA52100006B6B00BDB5AD0000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00000000000000000000000000000000007BC6FF000063
      BD000063BD00EFDEBD000063BD000063BD00FFFFFF007BC6FF000063BD00EFDE
      BD0000000000000000000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      BD00000000000000000000000000000000000063BD000063BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000316300BDB5AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDB500BDBDB500BDBDB500BDBDB500BDBDB500BDBDB500000000000000
      00000000000000000000000000000000000000000000AD9C9C00B5ADA500B5AD
      AD00B5ADA500B5ADA500ADA5A500ADA59C00ADA5A500006B7B00006B7B00006B
      7B00A59C9400AD9C9C00BDB5AD00000000000000000000000000000000000000
      00000000000000000000000000000031630000316300BDB5AD00000000000000
      00000000000000000000000000000000000000000000BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500000000000000000000000000BDBD
      B500396B5A00396B5A00396B5A00396B5A00396B5A00396B5A00BDBDB500BDBD
      B5000000000000000000000000000000000000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF00006B7B00006B7B0000CEFF00006B7B0031FF840042FF8C00006B
      7B0000CEFF0000CEFF00C6B5B500000000000000000000000000000000000000
      00000000000000000000000000000031630031EFFF0000316300BDB5AD00BDB5
      AD00BDB5AD00BDB5AD000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00BDB5B5000000000000000000396B5A00396B
      5A00FFFFC600949463007B7B4A0094946300F7FFA500F7FFA500396B5A00396B
      5A00BDBDB50000000000000000000000000000CEFF00006B7B00006B7B00006B
      7B00006B7B00006B7B0029C66300006B7B0029DE730039FF8C00006B7B00006B
      7B00006B7B0000CEFF00BDB5B500000000000000000000000000000000000000
      000000000000BDB5AD00BDB5AD000031630031EFFF0021B5C600003163000031
      630000316300BDB5AD000000000000000000006B6B006BDEDE0039BDBD0039BD
      BD0039BDBD0039BDBD0039BDBD0039BDBD0039BDBD0039BDBD0039BDBD0039BD
      BD0039BDBD0039BDBD00006B6B00BDB5B50000000000396B5A00FFFFC600FFFF
      C600BDD6A500949463007B7B4A007B7B4A00BDC68400FFFFC600FFFFC600F7FF
      A500396B5A00BDBDB500000000000000000000CEFF00006B7B00FFFFFF00FFFF
      FF00FFFFFF00006B7B0021A5520021BD630029E7730042FF8C00006B7B00006B
      7B00006B7B0000CEFF00BDB5AD00000000000000000000000000000000000000
      000000009C0000009C00003163000031630031EFFF0021B5C60021B5C6000031
      630000316300BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0039BDBD00006B6B00BDB5B50000000000396B5A00FFFFC600FFFF
      DE00A5C67B00849C5A00849C5A00849C5A009CAD6B00FFFFDE00FFFFC600FFFF
      C600396B5A00BDBDB500000000000000000000CEFF00006B7B00FFFFFF00FFFF
      FF00FFFFFF00006B7B0021A5520029CE6B0031FF840052FF940063FF9C005AFF
      9C00006B7B0000CEFF00BDB5AD00000000000000000000000000000000000000
      9C000000CE0000009C0010BDD6000031630031EFFF0018B5BD0021BDC60021BD
      CE0000316300BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0052AD
      940052AD940052AD940052AD940052AD940094F7FF0052AD940052AD940052AD
      940094F7FF0039BDBD00006B6B00BDB5B500396B5A00F7FFA500FFFFDE00BDD6
      A5009CAD6B00BDD6A500BDD6A500BDD6A500FFFFC600FFFFC600FFFFDE00BDC6
      84009CAD6B00396B5A00BDBDB5000000000000CEFF00006B7B00FFFFFF00006B
      7B00006B7B00006B7B0021A5520029DE73004AFF8C0063FFA50073FFAD00006B
      7B00006B7B0000CEFF00BDB5AD0000000000000000000000000000009C000000
      CE000000E70000009C0010C6D6000031630031EFFF000031630021BDCE0021C6
      D60000316300BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0039BDBD00006B6B00BDB5B500396B5A00FFFFC600BDD6A5009CAD
      6B0084B55A00FFFFDE009CAD6B00A5C67B00FFFFC600FFFFDE00BDC684009494
      63007B7B4A00396B5A00BDBDB5000000000000CEFF00006B7B00FFFFFF00FFFF
      FF00FFFFFF00006B7B0021AD5A0031F77B005AFF9C0073FFAD00006B7B00FFFF
      FF00006B7B0000CEFF00BDB5AD00000000000000000000009C000000CE000000
      E7001800F70000009C0000009C000031630031EFFF000031630021C6CE0029CE
      DE0000316300BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0052AD
      940052AD940052AD940094F7FF0052AD940052AD940052AD940052AD940052AD
      940094F7FF0039BDBD00006B6B00BDB5B500396B5A00849C5A0042B5290084B5
      5A0084B55A0084B55A00F7FFA500FFFFDE00FFFFDE00FFFFDE00A5C67B0042B5
      29007B7B4A00396B5A00BDBDB5000000000000CEFF00006B7B00FFFFFF00006B
      7B00006B7B00006B7B0029C6630042FF8C006BFFA500006B7B00FFFFFF00FFFF
      FF00006B7B0000CEFF00BDB5AD000000000000009C000000CE000000E7001800
      F7001800F7001800F7001800F7000031630031EFFF000031630021BDCE0029D6
      E70000316300BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0039BDBD00006B6B00BDB5B500396B5A007B7B4A0042B5290084B5
      5A0084B55A0084B55A00FFFFDE00FFFFDE00F7FFA500FFFFDE00A5C67B00849C
      5A007B7B4A00396B5A00BDBDB5000000000000CEFF00006B7B00FFFFFF00FFFF
      FF00FFFFFF00006B7B0029E7730052FF9400006B7B00FFFFFF00FFFFFF00FFFF
      FF00006B7B0000CEFF00BDB5AD000000000000009C009C9CFF001800F7001800
      F7001800F7009C9CFF009C9CFF000031630031EFFF0018A5B50021BDCE0029D6
      E70000316300BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0052AD
      940052AD940052AD940052AD940052AD940052AD940094F7FF0052AD940052AD
      940094F7FF0039BDBD00006B6B00BDB5B500396B5A0042B5290042B5290084B5
      5A009CAD6B009CAD6B00BDD6A500FFFFDE00FFFFDE00FFFFDE00F7FFA500BDC6
      840094946300396B5A00BDBDB5000000000000CEFF00006B7B00FFFFFF00006B
      7B00006B7B00006B7B0031FF8400006B7B00006B7B00006B7B00006B7B00FFFF
      FF00006B7B0000CEFF00BDB5AD00000000000000000000009C009C9CFF001800
      F7001800F70000009C0000009C0000316300FFFFFF0018ADB50021B5C60029D6
      DE0000316300BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0039BDBD00006B6B00BDB5B500396B5A00849C5A0042B5290084B5
      5A00BDD6A500A5C67B0084B55A0084B55A00FFFFC600FFFFDE00A5C67B00A5C6
      7B00BDD6A500396B5A00BDBDB5000000000000CEFF00006B7B00FFFFFF00FFFF
      FF00FFFFFF00006B7B00006B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00006B7B0000CEFF00BDB5AD0000000000000000000000000000009C009C9C
      FF001800F70000009C0010A5B50000316300FFFFFF0000FFFF0018B5BD0029CE
      D60000316300BDB5AD000000000000000000006B6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00006B6B00006B6B00006B6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00006B6B00BDB5B50000000000396B5A0042B52900A5C6
      7B00A5C67B00BDD6A500BDD6A500BDD6A500FFFFDE00FFFFC6007B7B4A007B7B
      4A00396B5A00BDBDB500000000000000000000CEFF00006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B
      7B00006B7B0000CEFF00BDB5AD00000000000000000000000000000000000000
      9C009C9CFF0000009C0010A5B50010BDCE0000316300FFFFFF0000FFFF0021BD
      CE0000316300BDB5AD000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B0000D69400006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B000000000000000000396B5A009CAD6B00A5C6
      7B0084B55A00BDD6A500FFFFC600FFFFDE00BDC68400FFFFC600A5C67B007B7B
      4A00396B5A00BDBDB500000000000000000000CEFF00006B7B00006B7B00FFD6
      B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6B500FFD6
      B500006B7B0000CEFF00BDB5B500000000000000000000000000000000000000
      000000009C0000009C0010ADBD0010C6D60021C6D60000316300FFFFFF0000FF
      FF0000316300BDB5AD0000000000000000000000000000000000000000000000
      00000000000000000000006B6B0000D69400006B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000396B5A00396B
      5A0042B52900FFFFDE00F7FFA500FFFFDE009CAD6B00F7FFA500396B5A00396B
      5A00BDBDB50000000000000000000000000000CEFF00006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B
      7B00006B7B0000CEFF0000000000000000000000000000000000000000000000
      0000000000000073B50010B5C60021C6D60031CEDE0039CEDE0000316300FFFF
      FF00003163000000000000000000000000000000000000000000000000000000
      00000000000000000000006B6B00006B6B00006B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000396B5A00396B5A00396B5A00396B5A00396B5A00396B5A00000000000000
      00000000000000000000000000000000000000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000000000000000000000000000000000000000000000
      0000000000000073B5000073B5000073B5000073B5000073B5000073B5000031
      6300003163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5ADAD00B5AD
      AD008C8C84008C8C84008C8C8400B5ADAD00B5ADAD00B5ADAD00B5ADAD00B5AD
      AD00B5ADAD00B5ADAD0000000000000000000000000000000000000000000000
      000000000000CEFFE700C6FFE700C6FFDE00C6FFDE00C6FFDE00C6FFE7000000
      0000BDB5AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDB5AD00BDB5AD00BDB5AD000000000000000000BDB5AD00BDB5
      AD00BDB5AD00000000000000000000000000000000000000000000C6A5007B42
      00007B4200007B420000009C7B00009C7B0000C6A50000C6A50000C6A50000C6
      A50000C6A500B5ADAD00B5ADAD0000000000000000000000000000000000D6FF
      E700CEFFE700C6FFDE00BDFFDE00BDFFDE00B5FFDE00B5FFDE00BDFFDE00BDB5
      AD0084523100BDB5AD0000000000000000000000000000000000B5B5AD00B5B5
      AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5AD00B5B5
      AD00B5B5AD00B5B5AD0000000000000000000000000000000000000000000000
      0000006B6B00006B6B00006B6B00BDB5AD00BDB5AD00006B6B00006B6B00006B
      6B00BDB5AD000000000000000000000000000000000000C6A50031C6B50042F7
      E7007B420000E7C684007B42000031C6B50042F7E70042F7E70042F7E70042F7
      E70042F7E70000C6A500B5ADAD00B5ADAD000000000000000000D6FFE700CEFF
      E700C6FFDE00BDFFDE00B5FFDE00ADFFD600ADFFD600ADFFD600BDB5AD008452
      3100C6A56B0084523100BDB5AD00000000000000000000000000845231008452
      3100845231008452310084523100845231008452310084523100845231008452
      310084523100B5B5AD00B5B5AD0000000000000000000000000000000000BDB5
      AD00006B6B0000DEFF00006B6B00006B6B00006B6B00006B6B0000DEFF00006B
      6B00BDB5AD00BDB5AD00000000000000000000C6A5007B42000018C6AD0018C6
      AD007B420000E7C684007B42000018C6AD0021F7DE0021F7DE0021F7DE0021F7
      DE0021F7DE005AF7E70000C6A500B5ADAD0000000000DEFFEF00CEFFE700C6FF
      E700BDFFDE00B5FFDE00ADFFD600A5FFD600A5FFD600BDB5AD0084523100C6A5
      6B00FFDEAD00C6A56B0084523100000000000000000084523100F7DEBD00F7DE
      BD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      BD00F7DEBD0084523100B5B5AD00B5B5AD000000000000000000006B6B00006B
      6B00006B6B0000DEFF00006B6B0063FFA50010CE5A00006B6B0000DEFF00006B
      6B00006B6B00BDB5AD00BDB5AD000000000000C6A5007B4200007B4200007B42
      0000FFDEAD00E7C684007B42000031C6B50042F7E70042F7E70042F7E70042F7
      E70042F7E7005AF7E70000C6A500B5ADAD0000000000DEFFEF00CEFFE700C6FF
      DE00B5FFDE00ADFFD600A5FFD600A5FFCE00BDB5AD0084523100C6A56B00FFDE
      AD00C6A56B00FFDEAD00FFFFC60084523100B5946B00FFFFFF00F7D6B500F7D6
      B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500F7D6
      B500F7D6B500F7DEBD0084523100B5B5AD000000000000000000006B6B0039EF
      FF0000DEFF0000DEFF00006B6B0063FFA50010CE5A00006B6B0039EFFF0000DE
      FF0000DEFF00006B6B00BDB5AD000000000000C6A5007B420000FFEFD600FFEF
      D600FFDEAD00FFDEAD007B42000042C6B50042C6B50052F7E70052F7E70052F7
      E70052F7E7006BF7EF0000C6A500B5ADAD00E7FFEF00D6FFEF00CEFFE700BDB5
      AD00BDB5AD00BDB5AD00A5FFD600BDB5AD0084523100C6A56B00FFDEAD008452
      310084523100FFFFC60084523100D6FFEF00B5946B00FFFFFF00F7DEBD00FFEF
      E700FFEFE700F7DEBD00F7DEBD00F7DEBD00F7DEBD00FFEFE700FFEFE700F7DE
      BD00F7DEBD00F7DEBD0084523100B5B5AD000000000000000000006B6B0063F7
      FF00006B6B0000DEFF00006B6B0063FFA50010CE5A00006B6B0039EFFF000031
      630000DEFF00006B6B00BDB5AD000000000000C6A500F7F7F7007B4200007B42
      00007B4200007B420000E7C684007B4200004AC6B5004AC6B50063F7E70063F7
      E70063F7E70084F7EF0000C6A500B5ADAD00E7FFEF00DEFFEF00BDB5AD008452
      310084523100BDB5AD00BDB5AD0084523100C6A56B00FFDEAD0084523100ADFF
      D600BDFFDE0084523100CEFFE700DEFFEF00B5946B00FFFFFF00F7DEC6000000
      9C000000FF00FFEFE700F7DEC600F7DEC600FFEFE70000009C000000FF00F7DE
      C600F7DEC600F7DEBD0084523100B5B5AD000000000000000000006B6B0063F7
      FF0063F7FF0039EFFF00006B6B0063FFA50010CE5A00006B6B0039EFFF0039EF
      FF0000DEFF00006B6B00BDB5AD000000000000C6A500F7F7F70073F7E70073F7
      E70073F7E70073F7E7007B420000E7C684007B4200005AC6B5005AC6B5005AC6
      B5005AC6B50073C6BD0000C6A500B5ADAD00E7FFF700BDB5AD0084523100C6A5
      6B00C6A56B008452310084523100C6A56B00FFDEAD0084523100ADFFD600B5FF
      DE00BDFFDE00C6FFE700CEFFE700DEFFEF00B5946B00FFFFFF00F7E7CE00F7E7
      CE0000009C000000FF00FFEFE700FFEFE70000009C000000FF00F7E7CE00F7E7
      CE00F7E7CE00F7DEBD0084523100B5B5AD000000000000000000006B6B00006B
      6B00006B6B00006B6B00006B6B0063FFA50010CE5A00006B6B00006B6B00006B
      6B00006B6B00006B6B00000000000000000000C6A500F7F7F7008CF7E7008CF7
      E7008CF7E7008CF7E7008CF7E7007B420000E7C684007B4200007B4200007B42
      00007B42000084C6BD00009C7B00B5ADAD00BDB5AD0084523100C6A56B008452
      310084523100FFDEAD00C6A56B00FFDEAD0084523100ADFFD600B5FFDE00BDFF
      DE00C6FFDE00CEFFE700D6FFEF00DEFFEF00B5946B00FFFFFF00F7E7CE00F7E7
      CE00F7E7CE0000009C000000FF0000009C000000FF00F7E7CE00F7E7CE00F7E7
      CE00F7E7CE00F7DEBD0084523100B5B5AD000000000000000000000000000000
      0000006B6B0063F7FF0063F7FF00006B6B00006B6B0000DEFF0000DEFF00006B
      6B00BDB5AD0000000000000000000000000000C6A500F7F7F700A5EFE700A5EF
      E700A5EFE700A5EFE700A5EFE700A5EFE7007B420000FFDEAD00E7C68400E7C6
      8400E7C684007B420000009C7B00B5ADAD0084523100C6A56B0084523100D6FF
      E700CEFFE70084523100FFDEAD0084523100B5FFDE00B5FFDE00BDFFDE00C6FF
      DE00CEFFE700D6FFE700DEFFEF00E7FFEF00B5946B00FFFFFF00F7E7D600F7E7
      D600F7E7D600FFFFFF0000009C000000FF00FFFFFF00F7E7D600F7E7D600F7E7
      D600F7E7D600F7DEBD0084523100B5B5AD000000000000000000000000000000
      0000006B6B0063F7FF00006B6B0063FFA50010CE5A00006B6B0000DEFF00006B
      6B00BDB5AD0000000000000000000000000000C6A500F7F7F700B5EFE700B5EF
      E700B5EFE700B5EFE700B5EFE700B5EFE7007B420000FFDEAD00FFDEAD007B42
      00007B4200007B420000009C7B00B5ADAD0084523100FFDEAD0084523100BDB5
      AD00D6FFE700CEFFE70084523100FFDEAD0084523100C6FFDE00C6FFE700CEFF
      E700D6FFE700DEFFEF00DEFFEF00E7FFF700B5946B00FFFFFF00F7EFDE00F7EF
      DE00FFFFFF0000009C000000FF0000009C000000FF00FFFFFF00F7EFDE00F7EF
      DE00F7EFDE00F7DEBD0084523100B5B5AD000000000000000000000000000000
      0000006B6B0063F7FF00006B6B0094F7BD0063FFA500006B6B0000DEFF00006B
      6B00BDB5AD0000000000000000000000000000C6A500F7F7F700C6E7E700C6E7
      E700C6E7E700C6E7E700C6E7E700C6E7E7007B420000FFDEAD007B4200009CB5
      B500C6E7E7007B42000000C6A500B5ADAD000000000084523100FFDEAD008452
      3100BDB5AD00BDB5AD0084523100FFFFC60084523100CEFFE700CEFFE700D6FF
      EF00DEFFEF00DEFFEF00E7FFF70000000000B5946B00FFFFFF00F7EFE700FFFF
      FF0000009C000000FF00F7EFE700F7EFE70000009C000000FF00FFFFFF00F7EF
      E700F7EFE700F7DEBD0084523100B5B5AD000000000000000000000000000000
      0000006B6B0084F7FF0084F7FF00006B6B00006B6B0031F7FF0039EFFF00006B
      6B00BDB5AD0000000000000000000000000000C6A500EFF7F700DEE7E700DEE7
      E700DEE7E700DEE7E700DEE7E700DEE7E7007B420000FFEFD6007B420000ADB5
      B500ADB5B500EFF7F70000C6A5000000000000000000F7FFF70084523100FFDE
      AD008452310084523100FFFFC60084523100D6FFEF00D6FFEF00DEFFEF00DEFF
      EF00E7FFEF00E7FFF700EFFFF70000000000B5946B00FFFFFF00F7F7EF000000
      9C0000009C00F7F7EF00F7F7EF00F7F7EF00F7F7EF0000009C0000009C00F7F7
      EF00F7F7EF00F7DEBD0084523100B5B5AD000000000000000000000000000000
      0000006B6B0084F7FF0084F7FF0084F7FF0039EFFF0039EFFF0039EFFF00006B
      6B00000000000000000000000000000000000000000000C6A500F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7007B4200007B4200007B42
      0000F7F7F70000C6A50000000000000000000000000000000000F7FFF7008452
      3100FFDEAD00FFFFC60084523100E7FFEF00E7FFEF00E7FFEF00E7FFEF00E7FF
      F700EFFFF700EFFFF7000000000000000000B5946B00F7FFFF00F7F7EF00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7
      EF00F7F7EF00F7DEBD0084523100000000000000000000000000000000000000
      000000000000006B6B00006B6B00006B6B00006B6B00006B6B00006B6B000000
      000000000000000000000000000000000000000000000000000000C6A50000C6
      A50000C6A50000C6A50000C6A50000C6A50000C6A50000C6A50000C6A50000C6
      A50000C6A500000000000000000000000000000000000000000000000000F7FF
      FF008452310084523100EFFFF700EFFFF700EFFFF700EFFFF700EFFFF700EFFF
      F700F7FFF70000000000000000000000000000000000B5946B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008452310000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006B6B00006B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7FFFF00F7FFF700F7FFF700F7FFF700F7FFF700F7FFFF000000
      0000000000000000000000000000000000000000000000000000B5946B00B594
      6B00B5946B00B5946B00B5946B00B5946B00B5946B00B5946B00B5946B00B594
      6B00B5946B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006B6B00006B6B000000
      000000000000000000000000000000000000000000000000000000000000006B
      4A00006B4A00006B4A00BDB5AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD7B2900AD7B2900AD7B2900AD7B
      2900AD7B2900AD7B2900AD7B2900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B50000000000000000000000000000000000BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500000000000000000000000000BDB5AD00006B
      4A0000D68C00006B4A00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5AD00BDB5
      AD00BDB5AD00BDB5AD00000000000000000000000000BDB5B500BDB5B500BDB5
      B500BDB5B500BDB5B500BDB5B500AD7B2900E7C68C00E7C68C00E7C68C00E7C6
      8C00E7C68C00E7C68C00E7C68C00AD7B29000000000000000000000000000000
      000000000000000000000000000000000000008C7300008C7300008C7300008C
      7300008C7300BDB5B500000000000000000000000000006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B
      7B00006B7B00006B7B00BDB5B5000000000000000000006B4A00006B4A00006B
      4A0000D68C00006B4A00006B4A00006B4A00006B7B00006B7B00006B7B00006B
      7B00006B7B00BDB5AD000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00AD7B2900FFFFC600FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00E7C68C00AD7B29000000000000000000000000000000
      000000000000000000000000000000000000008C730000D6CE00008C730000D6
      CE00008C7300BDB5B500000000000000000000000000006B7B00FFFFFF0008DE
      F70008DEF70008DEF70008DEF70008DEF70008DEF70008DEF70008DEF70008DE
      F70008DEF700006B7B00BDB5B5000000000000000000006B4A0073F7CE0000D6
      8C0000D68C0000D68C0000D68C00006B4A0010DEF70010DEF70010DEF70010DE
      F700006B7B00BDB5AD000000000000000000006B6B006BDEDE0039BDBD0039BD
      BD0039BDBD0039BDBD0039BDBD00AD7B2900FFFFC600AD7B2900FFDEAD00AD7B
      2900FFDEAD00AD7B2900E7C68C00AD7B2900000000000000000000000000BDB5
      B500BDB5B500BDB5B500BDB5B500BDB5B500008C730008F7E700008C730008F7
      E700008C7300BDB5B500000000000000000000000000006B7B00FFFFFF0021F7
      F70010E7F700007BD600007BD600007BD600007BD60010E7F70010E7F70008DE
      F70008DEF700006B7B00BDB5B5000000000000000000006B4A00006B4A00006B
      4A0000D68C00006B4A00006B4A00006B4A0029E7FF0029E7FF0029E7FF0010DE
      F700006B7B00BDB5AD000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF00AD7B2900FFFFC600FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00E7C68C00AD7B29000000000000000000DE080800DE08
      08008C5A29004252290042524200BDB5B500008C730008F7E700008C730008F7
      E700008C7300BDB5B500BDB5B500BDB5B50000000000006B7B00FFFFFF0063F7
      FF0031F7FF0031F7FF00007BD600007BD600FFFFFF0031F7FF0031F7FF0021E7
      F70010DEF700006B7B00BDB5B500000000000000000000000000006B7B00006B
      4A0073F7CE00006B4A0073F7FF0073F7FF0073F7FF0073F7FF0029E7FF0010DE
      F700006B7B00BDB5AD00AD9C9C0084523100006B6B00FFFFFF0094F7FF0052AD
      940052AD940052AD940052AD9400AD7B2900FFFFC600AD7B2900FFDEAD00AD7B
      2900FFDEAD00AD7B2900E7C68C00AD7B290000000000DE0808007B5221007B52
      2100634A1800528C2100008C7300008C7300008C730008F7E70000D6CE0008F7
      E700008C7300008C7300008C7300BDB5B50000000000006B7B00FFFFFF0073FF
      FF004AF7FF004AF7FF00007BD600007BD600FFFFFF004AF7FF004AF7FF0029E7
      FF0018DEFF00006B7B00BDB5B500000000000000000000000000006B7B00006B
      4A00006B4A00006B4A0073F7FF0073F7FF0073F7FF0073F7FF0029E7FF0010DE
      F700006B7B00BDB5AD008452310063636300006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF00AD7B2900FFFFC600FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00E7C68C00AD7B2900DE0808007B522100A55A1000528C
      2100528C21005AA52100008C7300FFFFFF00008C730008F7E70008F7E70008F7
      E700008C730000D6CE00008C7300BDB5B50000000000006B7B00FFFFFF007BFF
      FF0052FFFF0052FFFF00007BD600007BD600FFFFFF0052FFFF0052FFFF0039E7
      FF0021DEFF00006B7B00BDB5B500000000000000000000000000006B7B00FFFF
      FF007BFFFF0073F7FF0073F7FF0021DEFF0021DEFF0021DEFF0021DEFF0021DE
      FF00006B7B00845231006363630000000000006B6B00FFFFFF0094F7FF0052AD
      940052AD940052AD940094F7FF00AD7B2900FFFFC600AD7B2900AD7B2900AD7B
      2900AD7B2900AD7B2900E7C68C00AD7B2900DE080800DE0808007B734A00528C
      21005AA52100528C2100008C7300FFFFFF00008C730008F7E70008F7E70008F7
      E700008C730000D6CE00008C7300BDB5B50000000000006B7B00FFFFFF0084FF
      FF0063FFFF0063FFFF00007BD600007BD600FFFFFF0063FFFF0063FFFF0039EF
      FF0029DEFF00006B7B00BDB5B500000000000000000000000000006B7B00FFFF
      FF007BFFFF0073F7FF0021DEFF00845231008452310084523100845231000000
      000084523100636363000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF00AD7B2900FFFFC600AD7B2900FFFFFF00FFFF
      C600FFFFC600AD7B2900E7C68C00AD7B2900DE080800DE080800DE08080084EF
      5A005AA52100C6AD3900008C7300FFFFFF0008F7E70008F7E70008F7E70008F7
      E70000D6CE0000D6CE00008C73000000000000000000006B7B00FFFFFF008CFF
      FF006BFFFF00007BD600007BD600007BD600FFFFFF0021DEFF0021DEFF0021DE
      FF0021DEFF00006B7B00BDB5B500000000000000000000000000006B7B00FFFF
      FF007BFFFF0021DEFF0084523100FFFFFF00FFFFFF00FFFFFF00FFFFFF008452
      310000000000636363000000000000000000006B6B00FFFFFF0094F7FF0052AD
      940094F7FF0052AD940052AD9400AD7B2900FFFFC600AD7B2900FFFFFF00FFFF
      C600FFFFC600AD7B2900E7C68C00AD7B2900DE080800F7A53100DE080800DE08
      0800C6F7100008EF4200C6AD3900008C7300FFFFFF0008F7E70008F7E70000D6
      CE00008C7300008C7300BDB5B5000000000000000000006B7B00FFFFFF0094FF
      FF007BFFFF007BFFFF007BFFFF007BFFFF007BFFFF00007BB500007BB500007B
      B500007BB500006B7B00BDB5B500000000000000000000000000006B7B00FFFF
      FF007BFFFF0084523100CEBD8400E7DE9400F7EFB500F7EFB500F7EFB500FFFF
      FF0084523100AD9C9C000000000000000000006B6B00FFFFFF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF00AD7B2900FFFFC600AD7B2900FFFFFF00FFFF
      FF00FFFFFF00AD7B2900E7C68C00AD7B2900F7A53100FF7B2100F7A53100CE84
      1800F7A5310008EF42003131290084101000528C2100008C7300008C7300008C
      7300BDB5B500BDB5B500000000000000000000000000006B7B00FFFFFF009CFF
      FF0084FFFF0084FFFF00007BD600007BD600FFFFFF00007BB50084FFFF0052EF
      FF0008DEF700006B7B0000000000000000000000000000000000006B7B00FFFF
      FF007BFFFF0084523100CEBD8400E7DE9400F7EFB500F7EFB500F7EFB500FFFF
      FF0084523100AD9C9C000000000000000000006B6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00006B6B00AD7B2900FFFFC600AD7B2900AD7B2900AD7B
      2900AD7B2900AD7B2900E7C68C00AD7B2900D6D6CE0008EF4200C6AD39004AF7
      1800C6AD390042522900DE0808005AA52100008C730063F7FF0000D6CE0000D6
      CE00008C7300BDB5B500000000000000000000000000006B7B00FFFFFF00A5FF
      FF008CFFFF008CFFFF00007BD600007BD600FFFFFF00007BB5008CFFFF0008DE
      F700006B7B000000000000000000000000000000000000000000006B7B00FFFF
      FF00FFFFFF0084523100CEBD8400F7F7CE00F7EFB500F7EFB500F7EFB500FFFF
      FF0084523100AD9C9C000000000000000000006B6B00006B6B00006B6B00006B
      6B00006B6B00006B6B00006B6B00AD7B2900FFFFC600FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00FFDEAD00E7C68C00AD7B29000000000008EF420008EF4200C6AD
      390084EF5A00C6AD3900DE080800DE080800008C7300FFFFFF0008F7E70063F7
      FF00008C7300BDB5B500000000000000000000000000006B7B00FFFFFF00BDFF
      FF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00ADFFFF00007BB50008DEF700006B
      7B00000000000000000000000000000000000000000000000000006B7B00006B
      7B00006B7B0084523100CEBD8400F7F7CE00F7F7CE00F7F7CE00E7DE9400FFFF
      FF00845231000000000000000000000000000000000000000000000000000000
      00000000000000000000006B6B0000D69400AD7B2900AD7B2900AD7B2900AD7B
      2900AD7B2900AD7B2900AD7B2900000000000000000000000000C6D6A50008BD
      0800528C2100F7A53100F7A51800BDB5B500008C7300FFFFFF00FFFFFF0008F7
      E700008C730000000000000000000000000000000000006B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007BB500006B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084523100CEBD8400CEBD8400CEBD8400CEBD84008452
      3100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000006B6B00006B6B00006B6B0000000000000000000000
      0000AD7B2900AD7B290000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C7300008C7300008C
      73000000000000000000000000000000000000000000006B7B00006B7B00006B
      7B00006B7B00006B7B00006B7B00006B7B00006B7B00006B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000845231008452310084523100845231000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000E00000000100010000000000000700000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFF
      FDFFFFFFF03FFDFFE03FF33FF03FF8FFF67FF87FFFFFF07FF67FFCFFFFFFFFFF
      F67FF87FFFFFFFFFF07FF33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C001FC00FFFFFF808001C000FFFF
      FF8880018000FFFFFFC780010000FFFFFFE380010000FFFFFFD180010001FF7F
      FF8080010001F07F888080010001F07F10FF80010001F71F01F380010001F77F
      81E180010001F07F83C080010001FF7FC27380010003FFFFC70380018007FFFF
      EF878003F87FFFFFFFFFFFFFFFFFFFFFFFF7F81FFFFFFFFF8000E007F81FC007
      0000C00380008007000080010000800700008001000080070000000000008001
      0000000000008001000000000000800300000000000080070000000000008007
      0000000000008007000080010004800700018001E01F8007E07FC003FFFF800F
      F07FE007FFFFF81FFFFFF81FFFFFFC3FC001C003C003C0038001C001C001C001
      8001800080008000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      80030000000000008007000000000000800F000100010001801F800380038003
      803FC007C007C007FFFFFFFFFFFFFFFFC003FFE7FFFFC003C001FFC38000C001
      8000EF81000080000000CF00000000000000CE000000000000008C0000000000
      0000080000000000000000000000000000000001000000000000000300000000
      00008007000000000000800F000000000001E00F000100018003FFAF80FF8003
      C007FFAFC1FFC007FFFFFFDFFFFFFFFFFFFFFFFFFFFF800FFFFFE007C0000007
      8001E00780000007000180000000000300010000000000010001000000000001
      0001000000000000000100000000000000010000000000000001000000000000
      00010000000000000001000000008000000300000000C00080FF00010001E000
      C1FF80FFC07FF001FFFFC1FFE0FFF87FFE07FFFF8001FFFFF803FF8F0001FFFF
      F001F00700018001E000E00300010001C000C001000100018000800100010001
      000100010001000100030007000100010007000700010001000F000F00010001
      000F000F00010000000F000F00010000000F000F00010000001F000F000180C7
      803F801F0003C1C7C07FC07FFFFFFFC7E001FC00FFC3F81FE001F800F801E007
      C000F800F000C0038000F800E00080018000F801C00080018000F80180000000
      8000F80100000000C000E01900000000C000003000010000E000002000030000
      F000003B000F0000FC000003000F0001FE000007001F0001FF00007F001F0003
      FF8183FF803F8007FFFFC7FFC07FC01FFFFFFF8FF000F98180008001E000E301
      000000008000C000000000000000800000000000000080000000000000008000
      000000008000C000000000008000FC00000000000000E4000000000000008C00
      00000000C00000000000000080000000000000008000000000000000C8010100
      00010000FC238381FFFF8001FE7FFFFF8001F800800180010001F00000010001
      0001E000000100010001C0000001000100018000000100010001800000010001
      0001800000010001000100000001000100010000000100010001000000010001
      0001000100010001000180010001000100018003000100010001C00700010001
      0003C00F00030003FFFFEF3FFFFFFFFFFE7FFFFFF03F8001FE3F8000E00F0001
      FE030000C0070001F803000080030001F003000080030001E003000000010001
      C003000000010001800300000001000100030000000100010003000000010001
      8003000000010001C003000080030001E003000180030001F003FC7FC0070003
      F807FC7FF03F0003F807FFFFFFFFFFFFC003F817FFFFF8C7C001E003C003F007
      8000C001C001E003000080018000C001000080000000C001000000000000C001
      000000000000C001000000000000C003000000000000F007000000000000F007
      000000000000F007000080010000F007000180010000F00F8003C0030001F81F
      C007E0078003FF9FFFFFF81FC007FF9FE1FFFF01FF83C001C0038000FF038001
      80030000FF03800180030000E003800180030000C0008001C000000080008001
      C000000000008001C001000000008001C003000000018001C003000000018001
      C003000000038003C003000000038007C00300008003800FC007FC01C007801F
      FC0FFC73FF8F803FFE1FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object Timer2: TTimer
    Interval = 400
    OnTimer = Timer2Timer
    Left = 36
    Top = 425
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer3Timer
    Left = 476
    Top = 392
  end
  object IBQuery7: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ZAPROZ ORDER BY ID')
    Left = 704
    Top = 184
    object IBQuery7ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery7ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery7ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery7ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery7STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery7SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery7DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery7DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery7DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery7OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery7OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery7TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
  end
  object IBQuery8: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FIRM WHERE NAME=:NAME')
    Left = 736
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end>
    object IBQuery8ID: TIntegerField
      FieldName = 'ID'
      Origin = 'FIRM.ID'
    end
    object IBQuery8NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'FIRM.NAME'
      Size = 50
    end
    object IBQuery8ADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = 'FIRM.ADRESS'
      Size = 120
    end
    object IBQuery8PHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = 'FIRM.PHONE'
      Size = 25
    end
    object IBQuery8OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'FIRM.OTHER'
      Size = 512
    end
    object IBQuery8UIN1: TIntegerField
      FieldName = 'UIN1'
      Origin = 'FIRM.UIN1'
    end
    object IBQuery8ACT: TIntegerField
      FieldName = 'ACT'
      Origin = 'FIRM.ACT'
    end
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 600000
    OnTimer = ComboBox11Change
    Left = 672
    Top = 184
  end
  object IBQuery9: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DISTINCT ID_ISP from ZAPROZ ORDER BY ID_ISP')
    Left = 672
    Top = 233
    object IBQuery9ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
  end
  object IBQuery10: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from ZAPROZ WHERE ID_ISP=:ID_ISP AND DATE_GET>=:DATE1 a' +
        'nd DATE_END<=:DATE2')
    Left = 672
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ISP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATE2'
        ParamType = ptUnknown
      end>
    object IBQuery10ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery10ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery10ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery10ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery10STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery10SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery10DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery10DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery10DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery10OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery10OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery10TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
  end
  object IBQuery11: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS WHERE ID=:ID')
    Left = 712
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object IBQuery11ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery11NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery11SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery11FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery11PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery11ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery11DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery11OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery11ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
  end
  object IBQuery12: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * FROM ZAPROZ  LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM' +
        '_USER order by ZAPROZ.ID')
    Left = 516
    Top = 393
    object IBQuery12ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery12ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery12ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery12ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery12STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery12SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery12DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery12DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery12DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery12OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery12OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery12TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery12IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery12IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
    object IBQuery12ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'USERS.ID'
    end
    object IBQuery12NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery12SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery12FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery12PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery12ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery12DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery12OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery12ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
  end
  object IBQuery13: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FIRM WHERE NAME=:NAME')
    Left = 544
    Top = 396
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end>
    object IBQuery13ID: TIntegerField
      FieldName = 'ID'
      Origin = 'FIRM.ID'
    end
    object IBQuery13NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'FIRM.NAME'
      Size = 50
    end
    object IBQuery13ADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = 'FIRM.ADRESS'
      Size = 120
    end
    object IBQuery13PHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = 'FIRM.PHONE'
      Size = 25
    end
    object IBQuery13OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'FIRM.OTHER'
      Size = 512
    end
    object IBQuery13UIN1: TIntegerField
      FieldName = 'UIN1'
      Origin = 'FIRM.UIN1'
    end
    object IBQuery13ACT: TIntegerField
      FieldName = 'ACT'
      Origin = 'FIRM.ACT'
    end
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer5Timer
    Left = 668
    Top = 321
  end
  object IBQuery14: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * FROM ZAPROZ  LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM' +
        '_USER order by ZAPROZ.ID')
    Left = 748
    Top = 281
    object IBQuery14ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery14ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery14ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery14ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery14STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery14SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery14DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery14DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery14DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery14OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery14OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery14TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery14IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery14IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
    object IBQuery14ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'USERS.ID'
    end
    object IBQuery14NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery14SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery14FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery14PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery14ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery14DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery14OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery14ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery14USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object IBQuery15: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * FROM ZAPROZ  LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM' +
        '_USER order by ZAPROZ.ID')
    Left = 700
    Top = 320
    object IBQuery15ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery15ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery15ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery15ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery15STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery15SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery15DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery15DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery15DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery15OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery15OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery15TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery15IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery15IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
    object IBQuery15ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'USERS.ID'
    end
    object IBQuery15NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery15SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery15FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery15PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery15ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery15DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery15OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery15ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery15USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object IBQuery16: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * FROM ZAPROZ  LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM' +
        '_USER order by ZAPROZ.ID')
    Left = 732
    Top = 321
    object IBQuery16ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery16ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery16ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery16ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery16STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery16SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery16DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery16DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery16DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery16OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery16OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery16TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery16IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery16IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
    object IBQuery16ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'USERS.ID'
    end
    object IBQuery16NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery16SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery16FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery16PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery16ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery16DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery16OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery16ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery16USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object DataSource4: TDataSource
    Left = 748
    Top = 248
  end
  object DataSource5: TDataSource
    DataSet = IBQuery17
    Left = 328
    Top = 145
  end
  object IBQuery17: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT distinct USERS.USLOGIN,USERS.NAME, USERS.FAMILY, USERS.SE' +
        'COND_NAME, ZAPROZ.IPLOCAL FROM USERS INNER JOIN ZAPROZ ON ZAPROZ' +
        '.ID_FROM_USER=USERS.ID WHERE  (ZAPROZ.DATE_GET>=:DATE_GET1 AND Z' +
        'APROZ.DATE_GET<=:DATE_GET2) AND (USERS.FAMILY LIKE :FAMILY OR US' +
        'ERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL) ORDER B' +
        'Y USERS.FAMILY')
    Left = 360
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_GET1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATE_GET2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IPLOCAL'
        ParamType = ptUnknown
      end>
    object IBQuery17USLOGIN: TIBStringField
      DisplayLabel = #1051#1086#1075#1080#1085' AD'
      DisplayWidth = 20
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
    object IBQuery17FAMILY: TIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery17NAME: TIBStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery17SECOND_NAME: TIBStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery17IPLOCAL: TIBStringField
      DisplayLabel = 'IP-'#1072#1076#1088#1077#1089
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
  end
  object IBQuery18: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT * FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USE' +
        'RS.ID WHERE  (ZAPROZ.DATE_GET>=:DATE_GET1 AND ZAPROZ.DATE_GET<=:' +
        'DATE_GET2) AND (USERS.FAMILY LIKE :FAMILY OR USERS.USLOGIN LIKE ' +
        ':LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL) ORDER BY USERS.FAMILY')
    Left = 392
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_GET1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATE_GET2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IPLOCAL'
        ParamType = ptUnknown
      end>
    object IBQuery18USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
    object IBQuery18NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery18FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery18SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery18IPLOCAL: TIBStringField
      FieldName = 'IPLOCAL'
      Origin = 'ZAPROZ.IPLOCAL'
      Size = 17
    end
    object IBQuery18STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'ZAPROZ.STATUS'
    end
    object IBQuery18ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery18PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery18ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery18DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery18OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery18ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery18ID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'ZAPROZ.ID'
    end
    object IBQuery18ID_FROM_FIRM: TIntegerField
      FieldName = 'ID_FROM_FIRM'
      Origin = 'ZAPROZ.ID_FROM_FIRM'
    end
    object IBQuery18ID_ISP: TIntegerField
      FieldName = 'ID_ISP'
      Origin = 'ZAPROZ.ID_ISP'
    end
    object IBQuery18ID_FROM_USER: TIntegerField
      FieldName = 'ID_FROM_USER'
      Origin = 'ZAPROZ.ID_FROM_USER'
    end
    object IBQuery18SPEED: TIntegerField
      FieldName = 'SPEED'
      Origin = 'ZAPROZ.SPEED'
    end
    object IBQuery18DATE_GET: TDateTimeField
      FieldName = 'DATE_GET'
      Origin = 'ZAPROZ.DATE_GET'
    end
    object IBQuery18DATE_RAB: TDateTimeField
      FieldName = 'DATE_RAB'
      Origin = 'ZAPROZ.DATE_RAB'
    end
    object IBQuery18DATE_END: TDateTimeField
      FieldName = 'DATE_END'
      Origin = 'ZAPROZ.DATE_END'
    end
    object IBQuery18OCENKA: TIntegerField
      FieldName = 'OCENKA'
      Origin = 'ZAPROZ.OCENKA'
    end
    object IBQuery18OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'ZAPROZ.OTHER'
      Size = 200
    end
    object IBQuery18TEMA: TIBStringField
      FieldName = 'TEMA'
      Origin = 'ZAPROZ.TEMA'
      Size = 60
    end
    object IBQuery18IPPC: TIBStringField
      FieldName = 'IPPC'
      Origin = 'ZAPROZ.IPPC'
      Size = 17
    end
  end
  object frxReport1: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41256.682248784700000000
    ReportOptions.LastChange = 41257.965100659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 424
    Top = 304
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        KeepHeader = True
        RowCount = 0
        object frxDBDataset1USLOGIN: TfrxMemoView
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'USLOGIN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."USLOGIN"]')
          ParentFont = False
        end
        object frxDBDataset1FAMILY: TfrxMemoView
          Left = 158.740260000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAMILY'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."FAMILY"]')
          ParentFont = False
        end
        object frxDBDataset1NAME: TfrxMemoView
          Left = 313.700990000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."NAME"]')
          ParentFont = False
        end
        object frxDBDataset1IPLOCAL: TfrxMemoView
          Left = 457.323130000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IPLOCAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."IPLOCAL"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'HelpDesk v1.0. ')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 177.637910000000000000
          Top = 34.015770000000000000
          Width = 400.630180000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1115#1057#8218#1057#8225#1056#181#1057#8218' '#1056#1111#1056#1109' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#181' '#1057#1027' '#1056#1111#1056#1109#1056#187#1057#1034#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1039#1056#1112#1056#1105)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1057#1026#1056#1105#1057#8218#1056#181#1057#1026#1056#1105#1056#1105' '#1056#1030#1057#8249#1056#177#1056#1109#1057#1026#1056#1108#1056#1105':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 676.535870000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8217#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1029#1056#1109#1056#8470' '#1056#1105#1056#1029#1057#8218#1056#181#1057#1026#1056#1030#1056#176#1056#187': '#1057#1027' [DAT_BEG] '#1056#1111#1056#1109' [DAT_END]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 34.015770000000000000
          Top = 120.944960000000000000
          Width = 646.299630000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026#1056#1109#1056#1108#1056#176' '#1056#1030#1057#8249#1056#177#1056#1109#1057#1026#1056#1108#1056#1105': [SEARCH_STR]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8250#1056#1109#1056#1110#1056#1105#1056#1029' AD')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 313.700990000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#1112#1057#1039)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 457.323130000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IP '#1056#1109#1057#8218#1056#1111#1057#1026#1056#176#1056#1030#1056#1105#1057#8218#1056#181#1056#187#1057#1039)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 279.685220000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 449.764070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L58]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 4.543290000000000000
          Top = 30.236240000000000000
          Width = 449.764070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L59]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 4.543290000000000000
          Top = 52.913420000000000000
          Width = 449.764070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L60]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 4.543290000000000000
          Top = 75.590600000000000000
          Width = 449.764070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L61]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L62]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 120.944960000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L63]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 4.236240000000000000
          Top = 142.842610000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L56]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 4.236240000000000000
          Top = 165.519790000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L57]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 454.000310000000000000
          Top = 7.559060000000000000
          Width = 249.448980000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[L64]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 298.582870000000000000
          Top = 211.653680000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '_________________________ / __________________________')
        end
        object Memo20: TfrxMemoView
          Left = 298.582870000000000000
          Top = 241.889920000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039': [Date]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'USLOGIN=USLOGIN'
      'FAMILY=FAMILY'
      'NAME=NAME'
      'SECOND_NAME=SECOND_NAME'
      'IPLOCAL=IPLOCAL')
    DataSet = IBQuery17
    BCDToCurrency = False
    Left = 456
    Top = 304
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 424
    Top = 273
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 424
    Top = 241
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 169
    object N7: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N7Click
    end
    object JPG1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' JPG'
      OnClick = JPG1Click
    end
    object IF1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' TIF'
      OnClick = IF1Click
    end
    object XLS1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' XLS'
      OnClick = XLS1Click
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 416
    Top = 209
  end
end
