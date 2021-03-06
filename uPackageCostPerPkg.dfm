object fPackageCostPerPkg: TfPackageCostPerPkg
  Left = 0
  Top = 0
  Caption = 'Paketkostnader'
  ClientHeight = 767
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 695
    Width = 1064
    Height = 72
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 464
      Top = 6
      Width = 129
      Height = 59
      Caption = 'St'#228'ng'
      ModalResult = 8
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 25
    Align = alTop
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 1064
    Height = 426
    Align = alClient
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1062
      Height = 24
      Align = alTop
      TabOrder = 0
    end
    object grdPackageCost: TcxGrid
      Left = 1
      Top = 25
      Width = 1062
      Height = 400
      Align = alClient
      TabOrder = 1
      object grdPackageCostDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = dmInvCtrl.ds_LIPSUM
        DataController.KeyFieldNames = 'PackageNo;Suppliercode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'Cost'
            Column = grdPackageCostDBTableView1Cost
          end
          item
            Kind = skSum
            FieldName = 'Volume'
            Column = grdPackageCostDBTableView1Volume
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.StyleSheet = GridTableViewStyleSheetWindowsStandardlarge
        object grdPackageCostDBTableView1LIPNo: TcxGridDBColumn
          DataBinding.FieldName = 'LIPNo'
          Visible = False
        end
        object grdPackageCostDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
        end
        object grdPackageCostDBTableView1Suppliercode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'Suppliercode'
        end
        object grdPackageCostDBTableView1Cost: TcxGridDBColumn
          Caption = 'Kostnad'
          DataBinding.FieldName = 'Cost'
        end
        object grdPackageCostDBTableView1Volume: TcxGridDBColumn
          Caption = 'Volym'
          DataBinding.FieldName = 'Volume'
        end
        object grdPackageCostDBTableView1avgprice: TcxGridDBColumn
          Caption = 'Medelpris'
          DataBinding.FieldName = 'avgprice'
        end
      end
      object grdPackageCostLevel1: TcxGridLevel
        GridView = grdPackageCostDBTableView1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 459
    Width = 1064
    Height = 236
    Align = alBottom
    TabOrder = 3
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1062
      Height = 24
      Align = alTop
      TabOrder = 0
    end
    object grdPackageCostDetails: TcxGrid
      Left = 1
      Top = 25
      Width = 1062
      Height = 210
      Align = alClient
      TabOrder = 1
      object grdPackageCostDetailsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = dmInvCtrl.ds_PkgCost
        DataController.KeyFieldNames = 'PackageNo;SupplierCode;CostType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.StyleSheet = GridTableViewStyleSheetWindowsStandardlarge
        object grdPackageCostDetailsDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 92
        end
        object grdPackageCostDetailsDBTableView1SupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SupplierCode'
          Width = 90
        end
        object grdPackageCostDetailsDBTableView1LIPNo: TcxGridDBColumn
          DataBinding.FieldName = 'LIPNo'
          Visible = False
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1LoadOrderNo: TcxGridDBColumn
          Caption = 'LOnr'
          DataBinding.FieldName = 'LoadOrderNo'
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1CostType: TcxGridDBColumn
          DataBinding.FieldName = 'CostType'
          Visible = False
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1ArticleNo: TcxGridDBColumn
          DataBinding.FieldName = 'ArticleNo'
          Visible = False
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          Visible = False
          Width = 284
        end
        object grdPackageCostDetailsDBTableView1CostPerAM3: TcxGridDBColumn
          Caption = 'Kostnad/AM3'
          DataBinding.FieldName = 'CostPerAM3'
          Width = 86
        end
        object grdPackageCostDetailsDBTableView1KOSTTYP: TcxGridDBColumn
          Caption = 'Kostnadsslag'
          DataBinding.FieldName = 'KOSTTYP'
          Width = 152
        end
        object grdPackageCostDetailsDBTableView1Exclude: TcxGridDBColumn
          Caption = 'Exkluderat'
          DataBinding.FieldName = 'Exclude'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
      end
      object grdPackageCostDetailsLevel1: TcxGridLevel
        GridView = grdPackageCostDetailsDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 451
    Width = 1064
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel4
    Color = clMaroon
    ParentColor = False
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 528
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet
      Caption = 'Red, White, and Blue (VGA)'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
    object GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet
      Caption = 'Windows Standard (large)'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Inactive = cxStyle19
      Styles.Selection = cxStyle22
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Header = cxStyle18
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      BuiltIn = True
    end
  end
  object siLangLinked_fPackageCostPerPkg: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField'
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 528
    Top = 392
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000610063006B0061006700650043006F007300
      740050006500720050006B0067000100500061006B00650074006B006F007300
      74006E0061006400650072000100010001000D000A0063007800420075007400
      74006F006E003100010053007400E4006E0067000100010001000D000A006700
      720064005000610063006B0061006700650043006F0073007400440042005400
      610062006C006500560069006500770031004C00490050004E006F0001004C00
      490050004E006F000100010001000D000A006700720064005000610063006B00
      61006700650043006F0073007400440042005400610062006C00650056006900
      6500770031005000610063006B006100670065004E006F000100500061006B00
      650074006E0072000100010001000D000A006700720064005000610063006B00
      61006700650043006F0073007400440042005400610062006C00650056006900
      65007700310053007500700070006C0069006500720063006F00640065000100
      5000720065006600690078000100010001000D000A0067007200640050006100
      63006B0061006700650043006F0073007400440042005400610062006C006500
      5600690065007700310043006F007300740001004B006F00730074006E006100
      64000100010001000D000A006700720064005000610063006B00610067006500
      43006F0073007400440042005400610062006C00650056006900650077003100
      56006F006C0075006D006500010056006F006C0079006D000100010001000D00
      0A006700720064005000610063006B0061006700650043006F00730074004400
      42005400610062006C0065005600690065007700310061007600670070007200
      69006300650001004D006500640065006C007000720069007300010001000100
      0D000A006700720064005000610063006B0061006700650043006F0073007400
      440065007400610069006C007300440042005400610062006C00650056006900
      6500770031005000610063006B006100670065004E006F000100500061006B00
      650074006E0072000100010001000D000A006700720064005000610063006B00
      61006700650043006F0073007400440065007400610069006C00730044004200
      5400610062006C0065005600690065007700310053007500700070006C006900
      6500720043006F00640065000100500072006500660069007800010001000100
      0D000A006700720064005000610063006B0061006700650043006F0073007400
      440065007400610069006C007300440042005400610062006C00650056006900
      6500770031004C00490050004E006F0001004C00490050004E006F0001000100
      01000D000A006700720064005000610063006B0061006700650043006F007300
      7400440065007400610069006C007300440042005400610062006C0065005600
      69006500770031004C006F00610064004F0072006400650072004E006F000100
      4C004F006E0072000100010001000D000A006700720064005000610063006B00
      61006700650043006F0073007400440065007400610069006C00730044004200
      5400610062006C0065005600690065007700310043006F007300740054007900
      70006500010043006F007300740054007900700065000100010001000D000A00
      6700720064005000610063006B0061006700650043006F007300740044006500
      7400610069006C007300440042005400610062006C0065005600690065007700
      3100410072007400690063006C0065004E006F00010041007200740069006300
      6C0065004E006F000100010001000D000A006700720064005000610063006B00
      61006700650043006F0073007400440065007400610069006C00730044004200
      5400610062006C00650056006900650077003100440061007400650043007200
      6500610074006500640001004400610074006500430072006500610074006500
      64000100010001000D000A006700720064005000610063006B00610067006500
      43006F0073007400440065007400610069006C00730044004200540061006200
      6C0065005600690065007700310043006F007300740050006500720041004D00
      330001004B006F00730074006E00610064002F0041004D003300010001000100
      0D000A006700720064005000610063006B0061006700650043006F0073007400
      440065007400610069006C007300440042005400610062006C00650056006900
      6500770031004B004F005300540054005900500001004B006F00730074006E00
      61006400730073006C00610067000100010001000D000A006700720064005000
      610063006B0061006700650043006F0073007400440065007400610069006C00
      7300440042005400610062006C00650056006900650077003100450078006300
      6C007500640065000100450078006B006C007500640065007200610074000100
      010001000D000A0047007200690064005400610062006C006500560069006500
      77005300740079006C0065005300680065006500740052006500640057006800
      69007400650061006E00640042006C0075006500560047004100010052006500
      64002C002000570068006900740065002C00200061006E006400200042006C00
      750065002000280056004700410029000100010001000D000A00470072006900
      64005400610062006C00650056006900650077005300740079006C0065005300
      6800650065007400570069006E0064006F00770073005300740061006E006400
      6100720064006C0061007200670065000100570069006E0064006F0077007300
      20005300740061006E006400610072006400200028006C006100720067006500
      29000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A00540066005000610063006B0061006700650043006F007300740050006500
      720050006B00670001005400610068006F006D00610001005400610068006F00
      6D00610001005400610068006F006D0061000D000A0063007800420075007400
      74006F006E00310001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00630078005300740079006C0065003100010054006900
      6D006500730020004E0065007700200052006F006D0061006E00010001005400
      610068006F006D0061000D000A00630078005300740079006C00650032000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      630078005300740079006C006500330001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      34000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001005400610068006F006D0061000D000A0063007800530074007900
      6C00650035000100540069006D006500730020004E0065007700200052006F00
      6D0061006E00010001005400610068006F006D0061000D000A00630078005300
      740079006C00650036000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001005400610068006F006D0061000D000A006300
      78005300740079006C00650037000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001005400610068006F006D0061000D00
      0A00630078005300740079006C00650038000100540069006D00650073002000
      4E0065007700200052006F006D0061006E00010001005400610068006F006D00
      61000D000A00630078005300740079006C00650039000100540069006D006500
      730020004E0065007700200052006F006D0061006E0001000100540061006800
      6F006D0061000D000A00630078005300740079006C0065003100300001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001000100
      5400610068006F006D0061000D000A00630078005300740079006C0065003100
      31000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001005400610068006F006D0061000D000A0063007800530074007900
      6C0065003100320001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00630078005300740079006C0065003100330001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006300
      78005300740079006C0065003100340001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      3100350001005400610068006F006D006100010001005400610068006F006D00
      61000D000A00630078005300740079006C006500310036000100540061006800
      6F006D006100010001005400610068006F006D0061000D000A00630078005300
      740079006C0065003100370001005400610068006F006D006100010001005400
      610068006F006D0061000D000A00630078005300740079006C00650031003800
      01005400610068006F006D006100010001005400610068006F006D0061000D00
      0A00630078005300740079006C0065003100390001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0063007800530074007900
      6C0065003200300001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00630078005300740079006C0065003200310001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006300
      78005300740079006C0065003200320001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A00540066005000610063006B0061006700650043006F00
      7300740050006500720050006B0067000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078004200750074007400
      6F006E0031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006300
      78005300740079006C00650032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00630078005300740079006C006500
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C006500340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00630078005300
      740079006C00650035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C00650037000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0063007800530074007900
      6C00650038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065003900010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006300
      78005300740079006C006500310030000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078005300740079006C00
      6500310031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C0065003100320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      630078005300740079006C006500310033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0063007800530074007900
      6C006500310034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500310035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C00650031003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C006500310037000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650031003800
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C0065003100390001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00630078005300
      740079006C006500320030000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00630078005300740079006C0065003200
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C006500320032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
