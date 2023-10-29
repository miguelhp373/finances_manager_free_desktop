object fr_menu: Tfr_menu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Finances Manager Free Desktop'
  ClientHeight = 481
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object PanelLeft: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 204
    Height = 404
    Align = alLeft
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 401
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 82
      Height = 25
      Caption = 'Accounts'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 194
      Height = 391
      Align = alBottom
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 3
      object cxGridAccounts: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ScrollBars = ssVertical
        OptionsView.ColumnAutoWidth = True
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        object cxGridAccountsColumn1: TcxGridDBColumn
          Caption = 'Name'
          Options.Editing = False
          Options.Filtering = False
          Styles.Header = AppStyles.colHeader001
          Width = 119
        end
        object cxGridAccountsColumn2: TcxGridDBColumn
          Caption = 'Balance'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Options.Editing = False
          Options.Filtering = False
          Styles.Header = AppStyles.colHeader001
          Width = 60
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridAccounts
      end
    end
  end
  object PanelClient: TPanel
    AlignWithMargins = True
    Left = 213
    Top = 43
    Width = 646
    Height = 404
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 401
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 636
      Height = 394
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 391
      object TabSheet1: TTabSheet
        Caption = 'DashBoard'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        object CardPanel2: TCardPanel
          Left = 11
          Top = 19
          Width = 262
          Height = 65
          ActiveCard = Card2
          Caption = 'CardPanel2'
          TabOrder = 0
          object Card2: TCard
            Left = 1
            Top = 1
            Width = 260
            Height = 63
            Caption = 'Card2'
            CardIndex = 0
            TabOrder = 0
            object Label2: TLabel
              Left = 8
              Top = 8
              Width = 93
              Height = 20
              Caption = 'Total Balance'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 8
              Top = 34
              Width = 243
              Height = 20
              AutoSize = False
              Caption = 'R$ 999999999999999999'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object CardPanel3: TCardPanel
          Left = 12
          Top = 103
          Width = 262
          Height = 65
          ActiveCard = Card3
          Caption = 'CardPanel2'
          TabOrder = 1
          object Card3: TCard
            Left = 1
            Top = 1
            Width = 260
            Height = 63
            Caption = 'Card2'
            CardIndex = 0
            TabOrder = 0
            object Label4: TLabel
              Left = 8
              Top = 8
              Width = 98
              Height = 20
              ParentCustomHint = False
              BiDiMode = bdLeftToRight
              Caption = 'Total Incomes'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Transparent = True
            end
            object Label5: TLabel
              Left = 8
              Top = 34
              Width = 243
              Height = 20
              ParentCustomHint = False
              AutoSize = False
              BiDiMode = bdLeftToRight
              Caption = 'R$ 999999999999999999'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Transparent = True
            end
          end
        end
        object CardPanel4: TCardPanel
          Left = 13
          Top = 187
          Width = 262
          Height = 65
          ActiveCard = Card4
          Caption = 'CardPanel2'
          TabOrder = 2
          object Card4: TCard
            Left = 1
            Top = 1
            Width = 260
            Height = 63
            Caption = 'Card2'
            CardIndex = 0
            TabOrder = 0
            object Label6: TLabel
              Left = 8
              Top = 8
              Width = 103
              Height = 20
              Caption = 'Total Expenses'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 8
              Top = 34
              Width = 243
              Height = 20
              AutoSize = False
              Caption = 'R$ 999999999999999999'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object CardPanel5: TCardPanel
          Left = 13
          Top = 275
          Width = 262
          Height = 65
          ActiveCard = Card5
          Caption = 'CardPanel2'
          TabOrder = 3
          object Card5: TCard
            Left = 1
            Top = 1
            Width = 260
            Height = 63
            Caption = 'Card2'
            CardIndex = 0
            TabOrder = 0
            object Label8: TLabel
              Left = 8
              Top = 8
              Width = 104
              Height = 20
              Caption = 'Total Transfers'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 8
              Top = 34
              Width = 243
              Height = 20
              AutoSize = False
              Caption = 'R$ 999999999999999999'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Incomes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ImageIndex = 1
        ParentFont = False
        object cxGrid2: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 69
          Width = 622
          Height = 292
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 289
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ScrollBars = ssVertical
            OptionsView.ColumnAutoWidth = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Description'
              Options.Editing = False
              Options.Filtering = False
              Styles.Header = AppStyles.colHeader001
              Width = 119
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Value'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Options.Editing = False
              Options.Filtering = False
              Styles.Header = AppStyles.colHeader001
              Width = 60
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Created'
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = 'Account'
            end
            object cxGridDBTableView1Column3: TcxGridDBColumn
              Caption = 'Category'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object CardPanel1: TCardPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 622
          Height = 60
          Align = alTop
          ActiveCard = Card1
          Caption = 'CardPanel1'
          TabOrder = 1
          object Card1: TCard
            Left = 1
            Top = 1
            Width = 620
            Height = 58
            Caption = 'Card1'
            CardIndex = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label10: TLabel
              Left = 10
              Top = 8
              Width = 60
              Height = 15
              Caption = 'Description'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 164
              Top = 8
              Width = 29
              Height = 15
              Caption = 'Initial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 269
              Top = 8
              Width = 25
              Height = 15
              Caption = 'Final'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 375
              Top = 8
              Width = 50
              Height = 15
              Caption = 'Accounts'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 495
              Top = 8
              Width = 48
              Height = 15
              Caption = 'Category'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object SearchBox1: TSearchBox
              Left = 8
              Top = 24
              Width = 145
              Height = 23
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DateTimePicker1: TDateTimePicker
              Left = 268
              Top = 24
              Width = 97
              Height = 23
              Date = 45227.000000000000000000
              Time = 0.767045405089447700
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object cbxListAccounts: TComboBox
              Left = 374
              Top = 24
              Width = 114
              Height = 22
              Style = csOwnerDrawFixed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object cbxListCategorys: TComboBox
              Left = 494
              Top = 24
              Width = 114
              Height = 22
              Style = csOwnerDrawFixed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DateTimePicker2: TDateTimePicker
              Left = 164
              Top = 24
              Width = 97
              Height = 23
              Date = 45227.000000000000000000
              Time = 0.767045405089447700
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Expenses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ImageIndex = 2
        ParentFont = False
      end
      object TabSheet4: TTabSheet
        Caption = 'Transfers'
        ImageIndex = 3
      end
      object TabSheet5: TTabSheet
        Caption = 'Recurring Bills'
        ImageIndex = 4
      end
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object toolbarExitButton: TSpeedButton
      Left = 110
      Top = 0
      Width = 55
      Height = 40
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Exit'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001010306110B3F6F1F1473CB25188AF425188AF41F14
        73CB110B3F6F0101030600000000000000000000000000000000000000000000
        0000000000000503101B251B79CF2A28B0FF242FC0FF2535C8FF2435C8FF232F
        C1FF2A27B0FF261B7AD00503101B000000000000000000000000000000000000
        0000010104072B227FD03236BCFF263AC7FF2231C0FF2A3AC6FF2A3AC6FF202F
        C0FF263AC7FF3135BCFF2B2280D1010104070000000000000000000000000000
        00001A16466E3B3CBFFF283DC8FF646ECEFF9EA2DBFF3744C3FF3544C3FF9A9D
        D6FF6069CBFF283DC9FF393ABDFF1A16466E0000000000000000000000000000
        0000363085C73E4ED1FF1F33C4FF9B93C1FFFFFFECFFB3B1DBFFB2AFD8FFFFFF
        F4FF9A94C3FF1B2EC0FF3E4ED3FF363085C70000000000000000000000000000
        00004B46AEF94158DAFF364ED4FF3540B8FFAA9AB5FFFFFFF2FFFFFFF7FFB1A5
        C1FF343FB8FF374ED3FF4258DAFF4945AAF30000000000000000000000000000
        00005350B6F9435BDDFF576CDBFF4C5DD1FFACABD8FFFFFFF1FFFFFFF1FFA9A8
        D5FF4353CAFF5268DBFF455EDDFF5350B5F80000000000000000000000000000
        0000494897C7778AE6FF6579DBFF9E97C5FFFFFFF7FFAFA6C7FFA395B5FFFFFF
        F2FF9C97C7FF4D61D1FF6A7DE5FF494897C70000000000000000000000000000
        00002B2B556D8890E0FF859BECFF7D80C4FF8E81ADFF636ECBFF5D67C4FF8C7E
        A9FF767AC5FF6B83E4FF7B84E0FF2B2B556D0000000000000000000000000000
        0000030305065859A8CF95A1E8FF8CA1EBFF6C7DD8FF97ACF1FF95ABF2FF6273
        D5FF778EE5FF8A97E8FF585AA9D0030306070000000000000000000000000000
        0000000000000C0C161B5D60ACCF9CA5E7FFAEBFF5FFA6BBF3FFA4B7F2FFA4B8
        F4FF959FE7FF5D60ACCF0C0C161B000000000000000000000000000000000000
        000000000000000000000303050634355E6E5E61A9C77276CFF37276CFF35E61
        A9C734355E6E0303050600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
      OnClick = toolbarExitButtonClick
      ExplicitLeft = 0
    end
    object SpeedButton2: TSpeedButton
      Left = 55
      Top = 0
      Width = 55
      Height = 40
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Settings'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000900000012000000120000
        0009000000020000000000000000000000000000000000000000000000000000
        0000000000030000000A0000000A0000000B2519156F68473BFF67443BFF1D13
        0F700000000C0000000B0000000C000000050000000100000000000000000000
        00030403021A543B33C738251EB30D0907454C362DC4B5A198FFAB958AFF3E29
        23C50D080748311F1AB13A241ECE030202220000000400000000000000000000
        00085A4138C9C7B9B0FFA8958BFF6C4F47FF715044FECABAB0FFC6B5AAFF6142
        37FE6B5047FE9C857AFFA89388FF3B241FCB0000000B00000000000000000000
        00074C3930ABC0AEA7FFE3DBD5FFD2C3BAFFC1AFA6FFCFC0B7FFCEBEB5FFBCAA
        9FFFCAB9AEFFC9B8ADFF9F897FFF36221DB20000000A00000000000000010000
        0007110C0B368D6F65FCEAE3DFFFDACDC6FFD8CCC3FFE3D9D3FFE7E0DAFFE1D6
        D0FFD2C3B9FFCDBCB3FF705449FE0D0907410000000A00000002000000042A1E
        1A6B4C372EBB846356FED9CEC8FFE3DAD5FFCDBEB7FF8E6F62FF947567FFD0C0
        B9FFE3DAD3FFC8B7ADFF6A4940FF47312AC22418147100000007000000088D6D
        60FFD8CCC7FFEEE8E5FFEBE6E0FFEAE3DDFF7F6257FF2219155E241B175E9374
        67FFEBE4DFFFD6C8C0FFD3C6BDFFB9A59BFF78574BFF0000000D000000079373
        64FFD9CECAFFF6F3F2FFFAF7F6FFEFEAE5FF76574DFF1D1411551E1613568869
        5DFFEFE9E6FFDDD2CBFFD8CAC3FFC7B8B1FF7E5B4FFF0000000C000000033428
        245F665046B5937467FEECE6E3FFF0ECE8FFCEC2BDFF856961FF886D65FFD2C7
        C2FFECE4DFFFD9CFC9FF856458FD5A443AB92B201C6102010108000000000000
        000316110F2EA78B7EFDF6F4F1FFF3EFECFFF2EEEAFFF3EFECFFF0EBE7FFEFEA
        E6FFEFEBE7FFECE5E0FF83665BFD110C0B390000000600000001000000000000
        0003685349AADCD1CBFFF8F6F3FFF8F5F3FFEBE4E1FFFDFCFBFFF3EEECFFE2D8
        D3FFFAF9F8FFF9F7F5FFC8B9B3FF4E3931B00000000500000000000000000000
        0002776055BDE5DDD8FFDCD0CBFFAC9183FD9E7E6EFDFBF8F8FFF5F1EEFF9979
        6AFDA3897EFCD7CBC5FFE0D6D1FF6E564CC20000000500000000000000000000
        00010605040D7C6458BF69544BA51713102B6F594EB2E1D7D2FFE0D6D1FF6D57
        4DB314100E2B614D44A4775E53C7050404110000000100000000000000000000
        0000000000000000000100000002000000023B302A5EA68676FFA58375FF3A2F
        295F000000030000000300000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000030000
        0001000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
      ExplicitLeft = 8
    end
    object SpeedButton5: TSpeedButton
      Left = 0
      Top = 0
      Width = 55
      Height = 40
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Home'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00030000000C3030303F00000014000000140000001500000015000000150000
        00150000001500000016000000140000000E0000000300000000000000000000
        000B855B4FC4B8806DFFB87F6CFFB77D6BFF275392FF265190FF264F8EFF244D
        8BFFB47967FFB37866FFB47864FF805648C50000000D00000000000000000000
        0010BA8471FFFCF6F2FFF5E0D2FFF4DFD1FF2F6BBBFF5EB0ECFF4FA7E8FF306B
        BBFFF6E6DDFFF3DBCCFFF6E4DAFFB57966FF0000001200000000000000000000
        000FBD8674FFFDF9F7FFF5E2D7FFF5E1D6FF2B66B8FF6CB8EEFF56ACEAFF2B68
        B8FFF7E8DFFFF4DED0FFF7E8E0FFB67C69FF0000001200000000000000000000
        000EBF8A77FFFEFCFAFFF6E6DCFFF6E5DBFF2761B5FF7BC1F0FF5EB1EBFF2661
        B5FFF8EAE2FFF5E0D4FFF9EDE6FFB77E6BFF0000001100000000000000000000
        000CC18D7BFFFEFDFDFFF7E9E1FFF7E8DFFF235CB2FF88C9F2FF64B4EDFF235B
        B2FFF9EDE6FFF6E3D9FFFAF0EAFFB9806EFF0000000F00000000000000000000
        000BC4907EFFFEFDFDFFF9ECE5FFF8ECE4FF1D57AFFF95D0F4FF93CFF4FF1D57
        AFFFF9EDE6FFF7E7DEFFFAF3EEFFBB8471FF0000000E00000000000000090000
        0016AF7E6CFFF6F6F5FFF9EEE8FFFAEFE9FF1B53AEFF1B53AEFF1B53AEFF1B53
        AEFFF8EBE4FFF7E9E1FFF3EEEBFFA77462FF000000190000000B20865EFF2796
        6CFF1F855DFFB5C1B8FFF0E6E1FFFAF0EDFFFAF1ECFFFAF1ECFFFAF1EBFFF9EF
        E9FFF8EDE7FFEEE0DBFFB0BAAEFF1E7C56FF1D8B60FF1D7A54FF0718113C2D93
        6CFF53E3B6FF1C7951FFABB0A3FFEFE6E3FFFAF4F0FFFBF3EFFFFBF3EEFFF9F1
        EDFFECE1DEFFA8A79BFF15724BFF2AD89DFF188056FF04140D3F00000003081A
        123C339B74FF65E8C0FF1E7750FFA9ACA0FFEEE7E4FFF9F5F2FFF9F4F1FFECE2
        DEFFA7A89AFF17724BFF39DBA6FF1D885DFF04160E4300000004000000000000
        0003081C143A3AA57DFF75EBC9FF1E744EFFA5A89CFFE9E0DDFFE6DDD8FFA4A6
        9AFF17714AFF4BE0B1FF218F63FF937A63FF0000000B00000000000000000000
        000000000003091E163841AC87FF86EFD1FF1E734CFFA1A296FF829280FF1870
        48FF61E7BEFF26976CFFAFBDB2FFB98270FF0000000600000000000000000000
        000000000000000000020A1F183648B58FFF96F3DBFF348B65FF2C8961FF76EC
        C9FF2AA074FFB0C1B5FFF6F4F4FFBE8876FF0000000400000000000000000000
        00000000000000000000000000020B2119364FBD97FFA3F5E1FF89F3D7FF2FA8
        7CFF7D7B69CDCC9E8DFFCB9B8AFF946E61BF0000000200000000000000000000
        0000000000000000000000000000000000010C221B3440B78FFF40B78EFF051E
        1535000000030000000200000002000000010000000000000000}
      Layout = blGlyphTop
      OnClick = SpeedButton5Click
      ExplicitLeft = 8
    end
  end
  object panelBottomInfos: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 453
    Width = 856
    Height = 25
    Align = alBottom
    Alignment = taRightJustify
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 450
  end
  object MainMenu1: TMainMenu
    Left = 611
    Top = 3
    object Finances1: TMenuItem
      Caption = 'Actions'
      object NewTransaction1: TMenuItem
        Caption = 'New Transaction'
        object Income1: TMenuItem
          Caption = 'Income'
          OnClick = Income1Click
        end
        object Expense1: TMenuItem
          Caption = 'Expense'
          OnClick = Expense1Click
        end
        object ransfer1: TMenuItem
          Caption = 'Transfer'
          OnClick = ransfer1Click
        end
      end
      object ManageAccounts1: TMenuItem
        Caption = 'Manage Accounts'
        OnClick = ManageAccounts1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Options'
      object MyLogin1: TMenuItem
        Caption = 'My Login'
      end
      object Settings1: TMenuItem
        Caption = 'Settings'
      end
      object Logout2: TMenuItem
        Caption = 'Logout'
      end
    end
  end
  object ImageList1: TImageList
    Left = 675
    Top = 3
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 729
    Top = 3
  end
end
