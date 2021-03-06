object fSimulateHandHeld: TfSimulateHandHeld
  Left = 0
  Top = 0
  Caption = 'Handdator buffert'
  ClientHeight = 395
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 55
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 0
    DesignSize = (
      851
      55)
    object cxButton1: TcxButton
      Left = 755
      Top = 10
      Width = 85
      Height = 37
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Action = acClose
      Anchors = [akRight]
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 11
      Top = 10
      Width = 85
      Height = 37
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Action = acDeleteRow
      Anchors = [akRight]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 365
    Width = 851
    Height = 30
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    TabOrder = 1
  end
  object grdSimulateHandHeld: TcxGrid
    Left = 0
    Top = 55
    Width = 851
    Height = 310
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    TabOrder = 2
    object grdSimulateHandHeldDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmInvCtrl.ds_SimulateHandHeld
      DataController.KeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#########'
          Kind = skSum
          FieldName = 'Quantity'
          Column = grdSimulateHandHeldDBTableView1Quantity
        end
        item
          Format = '########'
          Kind = skCount
          FieldName = 'PackageNo'
          Column = grdSimulateHandHeldDBTableView1PackageNo
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdSimulateHandHeldDBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1Produkt: TcxGridDBColumn
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 416
      end
      object grdSimulateHandHeldDBTableView1LengthDesc: TcxGridDBColumn
        Caption = 'L'#228'ngd'
        DataBinding.FieldName = 'LengthDesc'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 164
      end
      object grdSimulateHandHeldDBTableView1PackageNo: TcxGridDBColumn
        DataBinding.FieldName = 'PackageNo'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object grdSimulateHandHeldDBTableView1Prefix: TcxGridDBColumn
        DataBinding.FieldName = 'Prefix'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 48
      end
      object grdSimulateHandHeldDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
      end
      object grdSimulateHandHeldDBTableView1Quantity: TcxGridDBColumn
        DataBinding.FieldName = 'Quantity'
      end
      object grdSimulateHandHeldDBTableView1IC_grpno: TcxGridDBColumn
        DataBinding.FieldName = 'IC_grpno'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1PdaId: TcxGridDBColumn
        DataBinding.FieldName = 'PdaId'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1Iuser: TcxGridDBColumn
        DataBinding.FieldName = 'Iuser'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdSimulateHandHeldDBTableView1Idate: TcxGridDBColumn
        DataBinding.FieldName = 'Idate'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 127
      end
      object grdSimulateHandHeldDBTableView1LengthSpecNo: TcxGridDBColumn
        DataBinding.FieldName = 'LengthSpecNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 109
      end
      object grdSimulateHandHeldDBTableView1AvgLength: TcxGridDBColumn
        DataBinding.FieldName = 'AvgLength'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdSimulateHandHeldLevel1: TcxGridLevel
      GridView = grdSimulateHandHeldDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 216
    Top = 208
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
    object acDeleteRow: TAction
      Caption = 'Ta bort rad'
      OnExecute = acDeleteRowExecute
      OnUpdate = acDeleteRowUpdate
    end
  end
  object siLangLinked_fSimulateHandHeld: TsiLangLinked
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
    Left = 416
    Top = 200
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530069006D0075006C0061007400650048006100
      6E006400480065006C0064000100480061006E0064006400610074006F007200
      200062007500660066006500720074000100010001000D000A00670072006400
      530069006D0075006C00610074006500480061006E006400480065006C006400
      440042005400610062006C006500560069006500770031004900640001004900
      64000100010001000D000A00670072006400530069006D0075006C0061007400
      6500480061006E006400480065006C006400440042005400610062006C006500
      56006900650077003100500072006F00640075006B0074000100500072006F00
      640075006B0074000100010001000D000A00670072006400530069006D007500
      6C00610074006500480061006E006400480065006C0064004400420054006100
      62006C006500560069006500770031004C0065006E0067007400680044006500
      7300630001004C00E4006E00670064000100010001000D000A00670072006400
      530069006D0075006C00610074006500480061006E006400480065006C006400
      440042005400610062006C006500560069006500770031005000610063006B00
      6100670065004E006F0001005000610063006B006100670065004E006F000100
      010001000D000A00670072006400530069006D0075006C006100740065004800
      61006E006400480065006C006400440042005400610062006C00650056006900
      6500770031005000720065006600690078000100500072006500660069007800
      0100010001000D000A00670072006400530069006D0075006C00610074006500
      480061006E006400480065006C006400440042005400610062006C0065005600
      6900650077003100530074006100740075007300010053007400610074007500
      73000100010001000D000A00670072006400530069006D0075006C0061007400
      6500480061006E006400480065006C006400440042005400610062006C006500
      560069006500770031005100750061006E007400690074007900010051007500
      61006E0074006900740079000100010001000D000A0067007200640053006900
      6D0075006C00610074006500480061006E006400480065006C00640044004200
      5400610062006C00650056006900650077003100490043005F00670072007000
      6E006F000100490043005F006700720070006E006F000100010001000D000A00
      670072006400530069006D0075006C00610074006500480061006E0064004800
      65006C006400440042005400610062006C006500560069006500770031005000
      64006100490064000100500064006100490064000100010001000D000A006700
      72006400530069006D0075006C00610074006500480061006E00640048006500
      6C006400440042005400610062006C0065005600690065007700310049007500
      7300650072000100490075007300650072000100010001000D000A0067007200
      6400530069006D0075006C00610074006500480061006E006400480065006C00
      6400440042005400610062006C00650056006900650077003100490064006100
      740065000100490064006100740065000100010001000D000A00670072006400
      530069006D0075006C00610074006500480061006E006400480065006C006400
      440042005400610062006C006500560069006500770031004C0065006E006700
      7400680053007000650063004E006F0001004C0065006E006700740068005300
      7000650063004E006F000100010001000D000A00670072006400530069006D00
      75006C00610074006500480061006E006400480065006C006400440042005400
      610062006C006500560069006500770031004100760067004C0065006E006700
      7400680001004100760067004C0065006E006700740068000100010001000D00
      0A006100630043006C006F0073006500010053007400E4006E00670001000100
      01000D000A0061006300440065006C0065007400650052006F00770001005400
      6100200062006F007200740020007200610064000100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A0054006600530069006D007500
      6C00610074006500480061006E006400480065006C0064000100540061006800
      6F006D00610001005400610068006F006D00610001005400610068006F006D00
      61000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      6600530069006D0075006C00610074006500480061006E006400480065006C00
      64000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00}
  end
end
