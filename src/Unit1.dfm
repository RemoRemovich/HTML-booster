object Form1: TForm1
  Left = 237
  Top = 205
  Width = 974
  Height = 500
  Caption = 'HTML code booster'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 958
    Height = 462
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Select'
      object Label1: TLabel
        Left = 168
        Top = 16
        Width = 238
        Height = 25
        Caption = '<input type="select">'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 112
        Top = 80
        Width = 26
        Height = 13
        Caption = 'name'
      end
      object Label3: TLabel
        Left = 112
        Top = 112
        Width = 31
        Height = 13
        Caption = 'values'
      end
      object Button1: TButton
        Left = 286
        Top = 80
        Width = 75
        Height = 25
        Caption = '&Convert'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 152
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'imya'
      end
      object Memo1: TMemo
        Left = 152
        Top = 116
        Width = 593
        Height = 133
        Lines.Strings = (
          'value1'
          'value2'
          'value3')
        ScrollBars = ssBoth
        TabOrder = 2
      end
      object Memo2: TMemo
        Left = 152
        Top = 256
        Width = 593
        Height = 133
        ScrollBars = ssBoth
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Radio'
      ImageIndex = 1
      object Label4: TLabel
        Left = 168
        Top = 16
        Width = 252
        Height = 25
        Caption = '<input type="radio"...>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 112
        Top = 80
        Width = 26
        Height = 13
        Caption = 'name'
      end
      object Label6: TLabel
        Left = 112
        Top = 112
        Width = 31
        Height = 13
        Caption = 'values'
      end
      object Edit2: TEdit
        Left = 152
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'imya'
      end
      object Memo3: TMemo
        Left = 152
        Top = 116
        Width = 593
        Height = 133
        Lines.Strings = (
          'value1'
          'value2'
          'value3')
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Memo4: TMemo
        Left = 152
        Top = 256
        Width = 593
        Height = 133
        ScrollBars = ssBoth
        TabOrder = 2
      end
      object Button2: TButton
        Left = 286
        Top = 80
        Width = 75
        Height = 25
        Caption = '&Convert'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'table'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 950
        Height = 434
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 16
          Width = 108
          Height = 25
          Caption = '<table...>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 48
          Top = 88
          Width = 47
          Height = 13
          Caption = #1089#1090#1086#1083#1073#1094#1086#1074
        end
        object Label9: TLabel
          Left = 48
          Top = 120
          Width = 29
          Height = 13
          Caption = #1089#1090#1088#1086#1082
        end
        object Label10: TLabel
          Left = 16
          Top = 160
          Width = 180
          Height = 13
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1075#1088#1072#1085#1080#1094#1099' '#1090#1072#1073#1083#1080#1094#1099':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 16
          Top = 200
          Width = 95
          Height = 13
          Caption = #1058#1086#1083#1097#1080#1085#1072' '#1075#1088#1072#1085#1080#1094#1099':'
        end
        object Label12: TLabel
          Left = 16
          Top = 232
          Width = 76
          Height = 13
          Caption = #1062#1074#1077#1090' '#1075#1088#1072#1085#1080#1094#1099':'
        end
        object Label13: TLabel
          Left = 40
          Top = 248
          Width = 184
          Height = 13
          Caption = '('#1073#1077#1083#1099#1081' '#1094#1074#1077#1090' '#1101#1090#1086' #FFFFFF '#1080#1083#1080' white)'
        end
        object Label14: TLabel
          Left = 16
          Top = 312
          Width = 55
          Height = 13
          Caption = #1054#1090#1089#1090#1091#1087#1099':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 16
          Top = 336
          Width = 306
          Height = 13
          Caption = #1054#1090#1089#1090#1091#1087' '#1090#1077#1082#1089#1090#1072' '#1086#1090' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1081' '#1075#1088#1072#1085#1080#1094#1099' '#1103#1095#1077#1081#1082#1080' (cellpadding):'
        end
        object Label16: TLabel
          Left = 16
          Top = 360
          Width = 327
          Height = 13
          Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1075#1088#1072#1085#1080#1094#1072#1084#1080' '#1076#1074#1091#1093' '#1089#1086#1089#1077#1076#1085#1080#1093' '#1103#1095#1077#1077#1082' (cellspacing):'
        end
        object Label17: TLabel
          Left = 224
          Top = 88
          Width = 91
          Height = 13
          Caption = #1064#1080#1088#1080#1085#1072' '#1090#1072#1073#1083#1080#1094#1099':'
        end
        object Label18: TLabel
          Left = 224
          Top = 120
          Width = 88
          Height = 13
          Caption = #1042#1099#1089#1086#1090#1072' '#1090#1072#1073#1083#1080#1094#1099':'
        end
        object Label19: TLabel
          Left = 224
          Top = 48
          Width = 125
          Height = 13
          Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099':'
        end
        object Label22: TLabel
          Left = 16
          Top = 272
          Width = 106
          Height = 13
          Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072' '#1090#1072#1073#1083#1080#1094#1099':'
        end
        object Label23: TLabel
          Left = 40
          Top = 288
          Width = 184
          Height = 13
          Caption = '('#1073#1077#1083#1099#1081' '#1094#1074#1077#1090' '#1101#1090#1086' #FFFFFF '#1080#1083#1080' white)'
        end
        object Label24: TLabel
          Left = 208
          Top = 16
          Width = 8
          Height = 13
          Caption = 'id'
        end
        object name: TLabel
          Left = 344
          Top = 16
          Width = 26
          Height = 13
          Caption = 'name'
        end
        object cbTH: TCheckBox
          Left = 16
          Top = 56
          Width = 153
          Height = 17
          Caption = #1089#1090#1088#1086#1082#1072' '#1079#1072#1075#1086#1083#1086#1074#1082#1086#1074' (<th>)'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object edStolbtsov: TEdit
          Left = 16
          Top = 80
          Width = 25
          Height = 21
          TabOrder = 1
          Text = '3'
        end
        object edStrok: TEdit
          Left = 16
          Top = 112
          Width = 25
          Height = 21
          TabOrder = 2
          Text = '2'
        end
        object edTableBorderWidth: TEdit
          Left = 128
          Top = 192
          Width = 33
          Height = 21
          TabOrder = 3
          Text = '1'
        end
        object cbTableBorderColor: TComboBox
          Left = 128
          Top = 224
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 4
          Text = 'black'
          Items.Strings = (
            'black'
            'grey'
            'white'
            'blue'
            'lightblue'
            'yellow'
            'red'
            'green'
            'magenta')
        end
        object edCellpadding: TEdit
          Left = 344
          Top = 328
          Width = 33
          Height = 21
          TabOrder = 5
          Text = '5'
        end
        object edCellspacing: TEdit
          Left = 344
          Top = 352
          Width = 33
          Height = 21
          TabOrder = 6
          Text = '0'
        end
        object edTableWidth: TEdit
          Left = 328
          Top = 80
          Width = 57
          Height = 21
          TabOrder = 7
        end
        object edTableHeight: TEdit
          Left = 328
          Top = 112
          Width = 57
          Height = 21
          TabOrder = 8
        end
        object cbTableAlignment: TComboBox
          Left = 368
          Top = 40
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 9
          Text = 'center'
          Items.Strings = (
            'left'
            'center'
            'right'
            'width'
            '('#1085#1077' '#1074#1099#1088#1072#1074#1085#1080#1074#1072#1090#1100')')
        end
        object cbTableBgrColor: TComboBox
          Left = 128
          Top = 264
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 10
          Items.Strings = (
            'black'
            'grey'
            'white'
            'blue'
            'lightblue'
            'yellow'
            'red'
            'green'
            'magenta')
        end
        object btGenerateCode: TButton
          Left = 600
          Top = 32
          Width = 105
          Height = 25
          Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100
          Default = True
          TabOrder = 11
          OnClick = btGenerateCodeClick
        end
        object edTableId: TEdit
          Left = 224
          Top = 8
          Width = 105
          Height = 21
          TabOrder = 12
        end
        object edTableName: TEdit
          Left = 376
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 13
        end
        object Memo5: TMemo
          Left = 408
          Top = 88
          Width = 529
          Height = 337
          ScrollBars = ssBoth
          TabOrder = 14
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '<a href...>'
      ImageIndex = 3
      object Label20: TLabel
        Left = 16
        Top = 16
        Width = 68
        Height = 25
        Caption = '<a...>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 24
        Top = 112
        Width = 22
        Height = 13
        Caption = 'title:'
      end
      object Label25: TLabel
        Left = 24
        Top = 200
        Width = 16
        Height = 13
        Caption = 'rel:'
      end
      object Label26: TLabel
        Left = 24
        Top = 144
        Width = 34
        Height = 13
        Caption = 'target:'
      end
      object Label27: TLabel
        Left = 24
        Top = 80
        Width = 23
        Height = 13
        Caption = 'URL:'
      end
      object Label28: TLabel
        Left = 24
        Top = 48
        Width = 22
        Height = 13
        Caption = '<a>'
      end
      object Label29: TLabel
        Left = 304
        Top = 48
        Width = 26
        Height = 13
        Caption = '</a>'
      end
      object Label30: TLabel
        Left = 600
        Top = 16
        Width = 57
        Height = 13
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
      end
      object selURL: TEdit
        Left = 80
        Top = 80
        Width = 257
        Height = 21
        TabOrder = 1
        Text = 'http://www.yandex.ru'
      end
      object selTitle: TEdit
        Left = 80
        Top = 112
        Width = 257
        Height = 21
        TabOrder = 2
        Text = #1057#1072#1081#1090' '#1071#1085#1076#1077#1082#1089#1072
      end
      object Button3: TButton
        Left = 192
        Top = 400
        Width = 75
        Height = 25
        Caption = '&Generate'
        Default = True
        TabOrder = 5
        OnClick = Button3Click
      end
      object selRel: TRadioGroup
        Left = 80
        Top = 200
        Width = 257
        Height = 193
        ItemIndex = 3
        Items.Strings = (
          ''
          'author'
          'canonical'
          'nofollow'
          'follow'
          'noindex'
          'index'
          'nofollow, noindex'
          'follow, index'
          'nofollow, index'
          'follow, noindex')
        TabOrder = 4
      end
      object selTarget: TRadioGroup
        Left = 80
        Top = 144
        Width = 257
        Height = 49
        ItemIndex = 0
        Items.Strings = (
          '_blank'
          '_self')
        TabOrder = 3
      end
      object Memo6: TMemo
        Left = 376
        Top = 40
        Width = 569
        Height = 385
        TabOrder = 6
      end
      object selLinkText: TEdit
        Left = 80
        Top = 48
        Width = 217
        Height = 21
        TabOrder = 0
        Text = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1071#1085#1076#1077#1082#1089
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'HTML-page'
      ImageIndex = 4
      object Label31: TLabel
        Left = 8
        Top = 48
        Width = 26
        Height = 13
        Caption = #1071#1079#1099#1082
      end
      object Label32: TLabel
        Left = 8
        Top = 16
        Width = 46
        Height = 13
        Caption = 'DOCTYPE'
      end
      object Label33: TLabel
        Left = 8
        Top = 80
        Width = 67
        Height = 13
        Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      end
      object Label34: TLabel
        Left = 8
        Top = 96
        Width = 35
        Height = 13
        Caption = #1090#1077#1082#1089#1090#1072
      end
      object Label35: TLabel
        Left = 8
        Top = 120
        Width = 56
        Height = 13
        Caption = #1050#1086#1076#1080#1088#1086#1074#1082#1072
      end
      object Label36: TLabel
        Left = 8
        Top = 144
        Width = 48
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      end
      object Label37: TLabel
        Left = 8
        Top = 160
        Width = 49
        Height = 13
        Caption = #1089#1090#1088#1072#1085#1080#1094#1099
      end
      object Label38: TLabel
        Left = 8
        Top = 184
        Width = 77
        Height = 13
        Caption = #1052#1077#1090#1072'-'#1086#1087#1080#1089#1072#1085#1080#1077
      end
      object Label39: TLabel
        Left = 8
        Top = 272
        Width = 86
        Height = 13
        Caption = #1050#1083#1102#1095#1077#1074#1099#1077' '#1089#1083#1086#1074#1072
      end
      object cbHumanLanguage: TComboBox
        Left = 96
        Top = 48
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'ru'
        Items.Strings = (
          'ru'
          'en')
      end
      object cbDoctype: TComboBox
        Left = 96
        Top = 16
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'HTML 5'
        OnChange = cbDoctypeChange
        Items.Strings = (
          'HTML 5'
          'HTML 4.01 Strict'
          'HTML 4.01 Transitional'
          'xHTML 1.0 Strict'
          'xHTML 1.0 Transitional'
          'XHTML 1.1'
          'XML 1.0')
      end
      object cbTextDirection: TComboBox
        Left = 96
        Top = 80
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'LTR'
        Items.Strings = (
          'LTR'
          'RTL')
      end
      object cbEncoding: TComboBox
        Left = 96
        Top = 112
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'UTF-8'
        Items.Strings = (
          'UTF-8'
          'Windows-1251')
      end
      object edTitle: TEdit
        Left = 96
        Top = 152
        Width = 345
        Height = 21
        MaxLength = 72
        TabOrder = 4
        Text = 
          #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1090#1088#1072#1085#1080#1094#1099' ('#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1076#1083#1080#1085#1072' '#1076#1083#1103' Google - 65 '#1089#1080#1084#1074#1086#1083#1086#1074', ' +
          #1076#1083#1103' '#1071#1085#1076#1077#1082#1089#1072' - 72 '#1089#1080#1084#1074#1086#1083#1072')'
      end
      object mmDescription: TMemo
        Left = 96
        Top = 176
        Width = 345
        Height = 89
        Lines.Strings = (
          #1044#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1076#1086#1083#1078#1077#1085' '#1089#1086#1076#1077#1088#1078#1072#1090#1100' '#1085#1077' '#1073#1086#1083#1077#1077' 156 '#1089#1080#1084#1074#1086#1083#1086#1074'. '
          #1054#1085' '#1074#1099#1074#1086#1076#1080#1090#1089#1103' '#1043#1091#1075#1083#1086#1084' (Google) '#1074' '#1086#1087#1080#1089#1072#1085#1080#1080' '#1089#1072#1081#1090#1072' '#1074' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1093' '
          #1087#1086#1080#1089#1082#1072'.'
          #1052#1077#1090#1072'-'#1086#1087#1080#1089#1072#1085#1080#1077' '#1082#1072#1078#1076#1086#1081' '#1089#1090#1088#1072#1085#1080#1094#1099' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100' '#1088#1072#1079#1085#1099#1084' '
          #1080' '#1103#1074#1083#1103#1090#1100#1089#1103' '#1082#1088#1072#1090#1082#1080#1084' '#1087#1077#1088#1077#1089#1082#1072#1079#1086#1084' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1089#1090#1088#1072#1085#1080#1094#1099'. '
          #1055#1086#1076#1088#1086#1073#1085#1077#1077' - '#1085#1072' '
          'https://support.google.com/webmasters/answer/35624')
        TabOrder = 5
      end
      object mmKeywords: TMemo
        Left = 96
        Top = 272
        Width = 345
        Height = 89
        TabOrder = 6
      end
      object mmResult: TMemo
        Left = 464
        Top = 8
        Width = 481
        Height = 393
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object btGenerateWebPage: TButton
        Left = 96
        Top = 384
        Width = 177
        Height = 25
        Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1074#1077#1073'-'#1089#1090#1088#1072#1085#1080#1094#1091
        Default = True
        TabOrder = 8
        OnClick = btGenerateWebPageClick
      end
    end
  end
end
