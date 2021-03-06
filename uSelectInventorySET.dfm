object fSelectInventorySET: TfSelectInventorySET
  Left = 0
  Top = 0
  Caption = 'Inventeringsgrupper'
  ClientHeight = 443
  ClientWidth = 1032
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 1032
    Height = 67
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 472
      Top = 6
      Width = 113
      Height = 51
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1032
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1032
    Height = 335
    Align = alClient
    TabOrder = 2
    object grInventorySet: TcxGrid
      Left = 1
      Top = 1
      Width = 1030
      Height = 333
      Align = alClient
      TabOrder = 0
      object grInventorySetDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmInvCtrl.ds_InvCtrlSetList
        DataController.KeyFieldNames = 'IC_SETNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grInventorySetDBTableView1IC_SETNo: TcxGridDBColumn
          DataBinding.FieldName = 'IC_SETNo'
          Width = 60
        end
        object grInventorySetDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          Width = 136
        end
        object grInventorySetDBTableView1CreatedUser: TcxGridDBColumn
          DataBinding.FieldName = 'CreatedUser'
          Width = 66
        end
        object grInventorySetDBTableView1Note: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          Width = 173
        end
        object grInventorySetDBTableView1MaxDatum: TcxGridDBColumn
          DataBinding.FieldName = 'MaxDatum'
          Width = 176
        end
        object grInventorySetDBTableView1StartFilterOnMaxDate: TcxGridDBColumn
          DataBinding.FieldName = 'StartFilterOnMaxDate'
          Width = 175
        end
        object grInventorySetDBTableView1EndFilterOnMaxDate: TcxGridDBColumn
          DataBinding.FieldName = 'EndFilterOnMaxDate'
          Width = 175
        end
        object grInventorySetDBTableView1SetStatus: TcxGridDBColumn
          DataBinding.FieldName = 'SetStatus'
          Width = 55
        end
      end
      object grInventorySetLevel1: TcxGridLevel
        GridView = grInventorySetDBTableView1
      end
    end
  end
  object siLangLinked_fSelectInventorySET: TsiLangLinked
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
    Left = 512
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C0065006300740049006E0076006500
      6E0074006F0072007900530045005400010049006E00760065006E0074006500
      720069006E006700730067007200750070007000650072000100010001000D00
      0A006300780042007500740074006F006E00310001004F004B00010001000100
      0D000A006700720049006E00760065006E0074006F0072007900530065007400
      440042005400610062006C00650056006900650077003100490043005F005300
      450054004E006F000100470072007500700070006E0072000100010001000D00
      0A006700720049006E00760065006E0074006F00720079005300650074004400
      42005400610062006C0065005600690065007700310044006100740065004300
      720065006100740065006400010053006B006100700061006400010001000100
      0D000A006700720049006E00760065006E0074006F0072007900530065007400
      440042005400610062006C006500560069006500770031004300720065006100
      7400650064005500730065007200010043007200650061007400650064005500
      7300650072000100010001000D000A006700720049006E00760065006E007400
      6F0072007900530065007400440042005400610062006C006500560069006500
      770031004E006F007400650001004E006F0074006500720069006E0067000100
      010001000D000A006700720049006E00760065006E0074006F00720079005300
      65007400440042005400610062006C006500560069006500770031004D006100
      780044006100740075006D0001004D006100780044006100740075006D000100
      010001000D000A006700720049006E00760065006E0074006F00720079005300
      65007400440042005400610062006C0065005600690065007700310053007400
      610072007400460069006C007400650072004F006E004D006100780044006100
      74006500010053007400610072007400660069006C0074006500720020006D00
      6100780064006100740075006D000100010001000D000A006700720049006E00
      760065006E0074006F0072007900530065007400440042005400610062006C00
      65005600690065007700310045006E006400460069006C007400650072004F00
      6E004D00610078004400610074006500010053006C0075007400660069006C00
      74006500720020006D006100780064006100740075006D000100010001000D00
      0A006700720049006E00760065006E0074006F00720079005300650074004400
      42005400610062006C0065005600690065007700310053006500740053007400
      610074007500730001005300740061007400750073000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600530065006C00
      65006300740049006E00760065006E0074006F00720079005300450054000100
      5400610068006F006D00610001005400610068006F006D006100010054006100
      68006F006D0061000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A0054006600530065006C0065006300740049006E00760065006E007400
      6F00720079005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00}
  end
end
