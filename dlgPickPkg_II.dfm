object frmPackagePicker_II: TfrmPackagePicker_II
  Left = 218
  Top = 210
  ActiveControl = grdPkgDuplicates
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 308
  ClientWidth = 907
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 266
    Width = 907
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 349
      Top = 7
      Width = 66
      Height = 27
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 427
      Top = 7
      Width = 66
      Height = 27
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 266
    Align = alClient
    TabOrder = 1
    object grdPkgDuplicates: TcxGrid
      Left = 1
      Top = 1
      Width = 905
      Height = 264
      Align = alClient
      TabOrder = 0
      object grdPkgDuplicatesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.KeyFieldNames = 'PackageNo;SupplierCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdPkgDuplicatesDBTableView1PackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Options.Filtering = False
          Width = 80
        end
        object grdPkgDuplicatesDBTableView1SupplierCode: TcxGridDBColumn
          Caption = 'Lev.Kod'
          DataBinding.FieldName = 'SupplierCode'
          Options.Filtering = False
          Width = 86
        end
        object grdPkgDuplicatesDBTableView1ProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 371
        end
        object grdPkgDuplicatesDBTableView1LengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Options.Filtering = False
          Width = 374
        end
      end
      object grdPkgDuplicatesLevel1: TcxGridLevel
        GridView = grdPkgDuplicatesDBTableView1
      end
    end
  end
  object siLangLinked_frmPackagePicker_II: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
      'ListField')
    Left = 448
    Top = 160
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065005000
      690063006B00650072005F00490049000100500061006B00650074006E007200
      20006400750062006C00650074007400010001000D000A00620074006E004F00
      4B0001004F004B00010001000D000A00620074006E00430061006E0063006500
      6C000100430061006E00630065006C00010001000D000A006700720064005000
      6B0067004400750070006C006900630061007400650073004400420054006100
      62006C006500560069006500770031005000610063006B006100670065004E00
      6F000100500061006B00650074006E007200010001000D000A00670072006400
      50006B0067004400750070006C00690063006100740065007300440042005400
      610062006C0065005600690065007700310053007500700070006C0069006500
      720043006F006400650001004C00650076002E004B006F006400010001000D00
      0A0067007200640050006B0067004400750070006C0069006300610074006500
      7300440042005400610062006C00650056006900650077003100500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065000100
      500072006F00640075006B007400010001000D000A0067007200640050006B00
      67004400750070006C0069006300610074006500730044004200540061006200
      6C006500560069006500770031004C0065006E00670074006800440065007300
      6300720069007000740069006F006E0001004C00E4006E006700640001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066007200
      6D005000610063006B006100670065005000690063006B00650072005F004900
      490001004D0053002000530061006E0073002000530065007200690066000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660072006D005000610063006B006100670065005000690063006B0065007200
      5F00490049000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00}
  end
end
