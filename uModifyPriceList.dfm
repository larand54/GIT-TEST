object fModifyPriceList: TfModifyPriceList
  Left = 242
  Top = 107
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Prismall'
  ClientHeight = 618
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgPriceListGuide: TcxPageControl
    Left = 0
    Top = 41
    Width = 1008
    Height = 536
    ActivePage = tsPriceListHdr
    Align = alClient
    TabOrder = 0
    OnPageChanging = pgPriceListGuidePageChanging
    ClientRectBottom = 536
    ClientRectRight = 1008
    ClientRectTop = 24
    object tsPriceListHdr: TcxTabSheet
      Caption = 'tsPriceListHdr'
      ImageIndex = 0
      object lcCurrency: TcxDBLookupComboBox
        Left = 424
        Top = 208
        DataBinding.DataField = 'Valuta'
        DataBinding.DataSource = dm_marketprice.ds_PriceHdr
        ParentFont = False
        Properties.KeyFieldNames = 'CurrencyNo'
        Properties.ListColumns = <
          item
            FieldName = 'CurrencyName'
          end>
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 145
      end
      object lcPriceUnit: TcxDBLookupComboBox
        Left = 424
        Top = 240
        DataBinding.DataField = 'Prisenhet'
        DataBinding.DataSource = dm_marketprice.ds_PriceHdr
        ParentFont = False
        Properties.KeyFieldNames = 'TemplateUnitNo'
        Properties.ListColumns = <
          item
            FieldName = 'TemplateUnitName'
          end>
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 145
      end
      object tePriceListName: TcxDBTextEdit
        Left = 424
        Top = 176
        DataBinding.DataField = 'PriceListName'
        DataBinding.DataSource = dm_marketprice.ds_PriceHdr
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 145
      end
      object cxLabel1: TcxLabel
        Left = 352
        Top = 180
        Caption = 'Namn:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel4: TcxLabel
        Left = 352
        Top = 212
        Caption = 'Valuta:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel5: TcxLabel
        Left = 352
        Top = 244
        Caption = 'Prisenhet:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object ltemplateno: TcxDBLabel
        Left = 424
        Top = 136
        DataBinding.DataField = 'templateno'
        DataBinding.DataSource = dm_marketprice.ds_PriceHdr
        Height = 21
        Width = 121
      end
      object rgDefaultPeriod: TcxDBRadioGroup
        Left = 424
        Top = 280
        Caption = 'Standard period'
        DataBinding.DataField = 'DefaultPeriod'
        DataBinding.DataSource = dm_marketprice.ds_PriceHdr
        Properties.Items = <
          item
            Caption = 'M'#229'nad'
            Value = 1
          end
          item
            Caption = 'Kvartal'
            Value = 2
          end
          item
            Caption = 'Halv'#229'r'
            Value = 3
          end>
        TabOrder = 3
        Height = 105
        Width = 145
      end
    end
    object tsProductGroup: TcxTabSheet
      Caption = 'tsProductGroup'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 542
        Top = 0
        Width = 466
        Height = 512
        Align = alRight
        TabOrder = 0
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 464
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Valda produktgrupper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdSelectedPG: TcxGrid
          Left = 1
          Top = 34
          Width = 464
          Height = 477
          Align = alClient
          TabOrder = 1
          object grdSelectedPGDBTableView1: TcxGridDBTableView
            OnDblClick = grdSelectedPGDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm_marketprice.ds_SelectPG
            DataController.KeyFieldNames = 'ProductGroupNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grdSelectedPGDBTableView1ProductGroupNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductGroupNo'
              Visible = False
            end
            object grdSelectedPGDBTableView1AT: TcxGridDBColumn
              DataBinding.FieldName = 'AT'
              SortIndex = 0
              SortOrder = soAscending
              Width = 53
            end
            object grdSelectedPGDBTableView1AB: TcxGridDBColumn
              DataBinding.FieldName = 'AB'
              SortIndex = 1
              SortOrder = soAscending
              Width = 55
            end
            object grdSelectedPGDBTableView1TS: TcxGridDBColumn
              DataBinding.FieldName = 'TS'
              Width = 88
            end
            object grdSelectedPGDBTableView1UT: TcxGridDBColumn
              DataBinding.FieldName = 'UT'
              Width = 89
            end
            object grdSelectedPGDBTableView1IMP: TcxGridDBColumn
              DataBinding.FieldName = 'IMP'
              Width = 59
            end
            object grdSelectedPGDBTableView1TT: TcxGridDBColumn
              DataBinding.FieldName = 'TT'
              Width = 59
            end
            object grdSelectedPGDBTableView1TB: TcxGridDBColumn
              DataBinding.FieldName = 'TB'
              Width = 59
            end
          end
          object grdSelectedPGLevel1: TcxGridLevel
            GridView = grdSelectedPGDBTableView1
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 449
        Height = 512
        Align = alLeft
        TabOrder = 1
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 447
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Tillg'#228'ngliga produktgrupper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdAvailPG: TcxGrid
          Left = 1
          Top = 34
          Width = 447
          Height = 477
          Align = alClient
          TabOrder = 1
          object grdAvailPGDBTableView1: TcxGridDBTableView
            OnDblClick = grdAvailPGDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm_marketprice.ds_AvailPG
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'ProductGroupNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grdAvailPGDBTableView1AT: TcxGridDBColumn
              DataBinding.FieldName = 'AT'
              PropertiesClassName = 'TcxLabelProperties'
              SortIndex = 0
              SortOrder = soAscending
              Width = 47
            end
            object grdAvailPGDBTableView1AB: TcxGridDBColumn
              DataBinding.FieldName = 'AB'
              PropertiesClassName = 'TcxLabelProperties'
              SortIndex = 1
              SortOrder = soAscending
              Width = 45
            end
            object grdAvailPGDBTableView1TS: TcxGridDBColumn
              DataBinding.FieldName = 'TS'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 88
            end
            object grdAvailPGDBTableView1UT: TcxGridDBColumn
              DataBinding.FieldName = 'UT'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 87
            end
            object grdAvailPGDBTableView1IMP: TcxGridDBColumn
              DataBinding.FieldName = 'IMP'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 94
            end
            object grdAvailPGDBTableView1TT: TcxGridDBColumn
              DataBinding.FieldName = 'TT'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 42
            end
            object grdAvailPGDBTableView1TB: TcxGridDBColumn
              DataBinding.FieldName = 'TB'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 42
            end
            object grdAvailPGDBTableView1ProductGroupNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductGroupNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object grdAvailPGLevel1: TcxGridLevel
            GridView = grdAvailPGDBTableView1
          end
        end
      end
      object Panel5: TPanel
        Left = 449
        Top = 0
        Width = 93
        Height = 512
        Align = alClient
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 8
          Top = 248
          Width = 75
          Height = 25
          Action = acInsertSelectedPG
          Caption = 'L'#228'gg till'
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 8
          Top = 280
          Width = 75
          Height = 25
          Action = acRemoveSelectedPG
          Caption = 'Ta bort'
          TabOrder = 1
        end
      end
    end
    object tsGrade: TcxTabSheet
      Caption = 'tsGrade'
      ImageIndex = 1
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 455
        Height = 512
        Align = alLeft
        TabOrder = 0
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 453
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Tillg'#228'ngliga kvaliteter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdAvailGrades: TcxGrid
          Left = 1
          Top = 34
          Width = 453
          Height = 477
          Align = alClient
          TabOrder = 1
          object grdAvailGradesDBTableView1: TcxGridDBTableView
            OnDblClick = grdAvailGradesDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm_marketprice.ds_AvailProd
            DataController.KeyFieldNames = 'GradeNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grdAvailGradesDBTableView1GradeName: TcxGridDBColumn
              DataBinding.FieldName = 'GradeName'
              SortIndex = 0
              SortOrder = soAscending
            end
            object grdAvailGradesDBTableView1ProductNo: TcxGridDBColumn
              DataBinding.FieldName = 'GradeNo'
            end
          end
          object grdAvailGradesLevel1: TcxGridLevel
            GridView = grdAvailGradesDBTableView1
          end
        end
      end
      object Panel10: TPanel
        Left = 455
        Top = 0
        Width = 96
        Height = 512
        Align = alClient
        TabOrder = 1
        object BitBtn3: TBitBtn
          Left = 8
          Top = 248
          Width = 75
          Height = 25
          Action = acInsertSelectedGrades
          Caption = 'L'#228'gg till'
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 8
          Top = 280
          Width = 75
          Height = 25
          Action = acRemoveSelectedGrades
          Caption = 'Ta bort'
          TabOrder = 1
        end
      end
      object Panel11: TPanel
        Left = 551
        Top = 0
        Width = 457
        Height = 512
        Align = alRight
        TabOrder = 2
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 455
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Valda kvaliteter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdSelectGrades: TcxGrid
          Left = 1
          Top = 34
          Width = 455
          Height = 477
          Align = alClient
          TabOrder = 1
          object grdSelectGradesDBTableView1: TcxGridDBTableView
            OnDblClick = grdSelectGradesDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm_marketprice.ds_SelectProd
            DataController.KeyFieldNames = 'GradeNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grdSelectGradesDBTableView1GradeName: TcxGridDBColumn
              DataBinding.FieldName = 'GradeName'
              SortIndex = 0
              SortOrder = soAscending
              Width = 139
            end
            object grdSelectGradesDBTableView1GradeNo: TcxGridDBColumn
              DataBinding.FieldName = 'GradeNo'
              Width = 87
            end
            object grdSelectGradesDBTableView1templateno: TcxGridDBColumn
              DataBinding.FieldName = 'templateno'
              Width = 89
            end
          end
          object grdSelectGradesLevel1: TcxGridLevel
            GridView = grdSelectGradesDBTableView1
          end
        end
      end
    end
    object tsLength: TcxTabSheet
      Caption = 'tsLength'
      ImageIndex = 2
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 444
        Height = 512
        Align = alLeft
        TabOrder = 0
        object Panel14: TPanel
          Left = 1
          Top = 1
          Width = 442
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Tillg'#228'ngliga l'#228'ngder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel18: TPanel
          Left = 1
          Top = 24
          Width = 442
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object lcLengthGroups: TcxDBLookupComboBox
            Left = 152
            Top = 0
            DataBinding.DataField = 'GroupName'
            DataBinding.DataSource = dm_marketprice.dsLengthFilter
            Properties.ImmediatePost = True
            Properties.ListColumns = <>
            Properties.ListOptions.ShowHeader = False
            TabOrder = 0
            Width = 145
          end
          object cxLabel2: TcxLabel
            Left = 80
            Top = 4
            Caption = 'L'#228'ngdgrupp:'
          end
        end
        object grdAvailLengths: TcxGrid
          Left = 1
          Top = 49
          Width = 442
          Height = 462
          Align = alClient
          TabOrder = 2
          object grdAvailLengthsDBTableView1: TcxGridDBTableView
            OnDblClick = grdAvailLengthsDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm_marketprice.ds_AvailLengths
            DataController.KeyFieldNames = 'ProductLengthNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grdAvailLengthsDBTableView1ProductLengthNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductLengthNo'
            end
            object grdAvailLengthsDBTableView1ALMM: TcxGridDBColumn
              DataBinding.FieldName = 'ALMM'
              SortIndex = 0
              SortOrder = soAscending
            end
            object grdAvailLengthsDBTableView1FOT: TcxGridDBColumn
              DataBinding.FieldName = 'FOT'
            end
            object grdAvailLengthsDBTableView1TUM: TcxGridDBColumn
              DataBinding.FieldName = 'TUM'
            end
          end
          object grdAvailLengthsLevel1: TcxGridLevel
            GridView = grdAvailLengthsDBTableView1
          end
        end
      end
      object Panel15: TPanel
        Left = 444
        Top = 0
        Width = 89
        Height = 512
        Align = alClient
        TabOrder = 1
        object BitBtn5: TBitBtn
          Left = 8
          Top = 248
          Width = 75
          Height = 25
          Action = acInsertSelectedLengths
          Caption = 'L'#228'gg till'
          TabOrder = 0
        end
        object BitBtn6: TBitBtn
          Left = 8
          Top = 280
          Width = 75
          Height = 25
          Action = acRemoveSelectedLengths
          Caption = 'Ta bort'
          TabOrder = 1
        end
      end
      object Panel16: TPanel
        Left = 533
        Top = 0
        Width = 475
        Height = 512
        Align = alRight
        TabOrder = 2
        object Panel17: TPanel
          Left = 1
          Top = 1
          Width = 473
          Height = 48
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Valda l'#228'ngder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdSelectedLengths: TcxGrid
          Left = 1
          Top = 49
          Width = 473
          Height = 462
          Align = alClient
          TabOrder = 1
          object grdSelectedLengthsDBTableView1: TcxGridDBTableView
            OnDblClick = grdSelectedLengthsDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm_marketprice.ds_SelectLengths
            DataController.KeyFieldNames = 'ProductLengthNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grdSelectedLengthsDBTableView1ProductLengthNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductLengthNo'
            end
            object grdSelectedLengthsDBTableView1ALMM: TcxGridDBColumn
              DataBinding.FieldName = 'ALMM'
              SortIndex = 0
              SortOrder = soAscending
            end
            object grdSelectedLengthsDBTableView1FOT: TcxGridDBColumn
              DataBinding.FieldName = 'FOT'
            end
            object grdSelectedLengthsDBTableView1TUM: TcxGridDBColumn
              DataBinding.FieldName = 'TUM'
            end
          end
          object grdSelectedLengthsLevel1: TcxGridLevel
            GridView = grdSelectedLengthsDBTableView1
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 577
    Width = 1008
    Height = 41
    Align = alBottom
    TabOrder = 2
    object SpeedButton2: TSpeedButton
      Left = 600
      Top = 8
      Width = 97
      Height = 29
      Action = acSave
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052ADFF00006BCE00005AAD000063BD000063BD000063BD000063BD000063
        BD000063BD000063B5000063B5000063BD000063B5000063BD000063B500005A
        FD000063B50052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BE700007BE7000084EF000084F7000084F7000084F7000084F7000084
        F7000084F7000084EF000084F7000084EF000084EF00007BE700007BDE000073
        D600006BC6000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BDE00008CFF001094FF001894FF001894FF001894FF001894FF001894
        FF00088CFF001094FF001094FF00088CFF00008CFF00008CFF000084F700007B
        E700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00088CFF001094FF00299CFF00299CFF0031A5FF00299CFF00299C
        FF00219CFF001094FF001094FF00088CFF00088CFF00008CFF000084EF000084
        F700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF001094FF00219CFF0031A5FF0031A5FF0031A5FF00299CFF0084C6
        FF00219CFF001894FF001094FF00088CFF00088CFF00088CFF00008CFF000084
        F700007BE700005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00219CFF0031A5FF0031A5FF0031A5FF0031A5FF0084C6FF00FFFF
        FF0084C6FF001894FF001094FF001094FF00088CFF00008CFF000084F700008C
        FF00007BE7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF00299CFF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6
        FF00FFFFFF0084C6FF001894FF001094FF00088CFF00008CFF00008CFF00008C
        FF000084EF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5
        FF00219CFF00FFFFFF0084C6FF001094FF00088CFF00008CFF000084F700088C
        FF000084F700006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0042ADFF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF0031A5
        FF00219CFF001894FF00FFFFFF0084C6FF00088CFF00008CFF00088CFF001094
        FF000084F7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0039A5FF0042ADFF0042ADFF0084C6FF0031A5FF0031A5FF0031A5
        FF00219CFF001894FF001894FF00FFFFFF0084C6FF001094FF00088CFF00088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00299CFF004AADFF0042ADFF0042ADFF0039A5FF0031A5FF0031A5FF0031A5
        FF00299CFF001894FF001094FF001094FF00FFFFFF0084C6FF000084F700088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0052ADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5
        FF00299CFF001894FF001094FF00088CFF00088CFF00FFFFFF0084C6FF001094
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF005AB5FF0063B5FF0052ADFF004AADFF0039A5FF0031A5FF0039A5
        FF00299CFF00219CFF001894FF001094FF00088CFF001094FF00FFFFFF001094
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0039A5FF006BBDFF0063B5FF005AB5FF004AADFF0042ADFF0039A5FF0031A5
        FF00299CFF00219CFF00219CFF001894FF001894FF00088CFF00088CFF001094
        FF00088CFF00006BCE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0042ADFF007BC6FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042AD
        FF0039A5FF0031A5FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AADFF008CCEFF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052AD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219C
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF005AB5FF0084C6FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AAD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894
        FF000084F7000073D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF005AB5FF005AB5FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299C
        FF00299CFF0031A5FF00219CFF001094FF001894FF001894FF000084EF000084
        EF000084EF0052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object SpeedButton1: TSpeedButton
      Left = 288
      Top = 8
      Width = 97
      Height = 29
      Action = acCancelChanges
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052ADFF00006BCE00005AAD000063BD000063BD000063BD000063BD000063
        BD000063BD000063B5000063B5000063BD000063B5000063BD000063B500005A
        FD000063B50052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BE700007BE7000084EF000084F7000084F7000084F7000084F7000084
        F7000084F7000084EF000084F7000084EF000084EF00007BE700007BDE000073
        D600006BC6000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00007BDE00008CFF001094FF001894FF001894FF001894FF001894FF001894
        FF00088CFF001094FF001094FF00088CFF00008CFF00008CFF000084F700007B
        E700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00088CFF001094FF00299CFF00299CFF0031A5FF00299CFF00299C
        FF00219CFF001094FF001094FF00088CFF00088CFF00008CFF000084EF000084
        F700007BDE00005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF001094FF00219CFF0031A5FF00FFFFFF0084C6FF00299CFF00219C
        FF00219CFF001894FF001094FF00088CFF0084C6FF00FFFFFF00008CFF000084
        F700007BE700005AAD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000084EF00219CFF0031A5FF0031A5FF0031A5FF00FFFFFF0084C6FF00299C
        FF00219CFF001894FF001094FF0084C6FF00FFFFFF00008CFF000084F700008C
        FF00007BE7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF00299CFF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6
        FF00219CFF001894FF0084C6FF00FFFFFF00088CFF00008CFF00008CFF00008C
        FF000084EF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0039A5FF0039A5FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFF
        FF0084C6FF0084C6FF00FFFFFF001094FF00088CFF00008CFF000084F700088C
        FF000084F700006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001894FF0042ADFF0039A5FF0042ADFF0039A5FF0039A5FF0031A5FF0031A5
        FF00FFFFFF00FFFFFF001094FF001094FF00088CFF00008CFF00088CFF001094
        FF000084F7000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0039A5FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0084C6
        FF00FFFFFF00FFFFFF0084C6FF001894FF001094FF001094FF00088CFF00088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00299CFF004AADFF0042ADFF0042ADFF0039A5FF0031A5FF0084C6FF00FFFF
        FF00299CFF001894FF00FFFFFF0084C6FF00088CFF00088CFF000084F700088C
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF0052ADFF004AADFF004AADFF0042ADFF0084C6FF00FFFFFF0031A5
        FF00299CFF001894FF001094FF00FFFFFF0084C6FF00088CFF00088CFF001094
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0031A5FF005AB5FF0063B5FF0052ADFF0084C6FF00FFFFFF0031A5FF0039A5
        FF00299CFF00219CFF001894FF001094FF00FFFFFF0084C6FF001894FF001094
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0039A5FF006BBDFF0063B5FF005AB5FF00FFFFFF0042ADFF0039A5FF0031A5
        FF00299CFF00219CFF00219CFF001894FF001894FF00FFFFFF00088CFF001094
        FF00088CFF00006BCE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0042ADFF007BC6FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042AD
        FF0039A5FF0031A5FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894
        FF00008CFF00006BC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AADFF008CCEFF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052AD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219C
        FF00088CFF000063BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF005AB5FF0084C6FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AAD
        FF004AADFF004AADFF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894
        FF000084F7000073D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ADDEFF005AB5FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299C
        FF00299CFF0031A5FF00219CFF001094FF001894FF001894FF000084EF000084
        EF000084EF0052ADFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn7: TBitBtn
      Left = 496
      Top = 8
      Width = 97
      Height = 29
      Action = acNextPage
      Caption = '&N'#228'sta'
      TabOrder = 0
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00428C4200397B3900398439003984390039843900398439003984
        390039843900397B3900397B390039843900397B390039843900397B3900397B
        3900397B39008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004A9C4A004A9C4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD
        4A004AAD4A004AA54A004AA54A004AA54A004AA54A004A9C4A00429C42004294
        4200428C420039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00429C420052B552005AB55A0063BD630063BD630063BD630063BD630063BD
        630052B552005AB55A005AB55A0052B5520052B5520052B552004AAD4A004A9C
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A0052B552005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD
        6B0063BD63005AB55A005AB55A0052B5520052B5520052B552004AA54A004AAD
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A005AB55A0063BD630073C6730073C67300EFF7EF00EFF7EF00A5D6
        A50063BD630063BD63005AB55A0052B5520052B5520052B5520052B552004AAD
        4A004A9C4A00397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520063BD630073C6730073C6730073C67300EFF7EF00FFFFFF00EFF7
        EF00A5D6A50063BD63005AB55A005AB55A0052B5520052B552004AAD4A0052B5
        52004A9C4A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B552006BBD6B0073C6730073C6730073C67300EFF7EF00FFFFFF00FFFF
        FF00EFF7EF00A5D6A50063BD63005AB55A0052B5520052B5520052B5520052B5
        52004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520073C6730073C6730073C6730073C67300EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B552004AAD4A0052B5
        52004AA54A00428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0063BD63007BC67B0073C673007BC67B0073C67300EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EFF7EF00A5D6A50052B5520052B5520052B552005AB5
        5A004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730073C673007BC67B007BC67B007BC67B00EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006BBD6B0084CE84007BC67B007BC67B0073C67300EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EFF7EF00A5D6A50052B5520052B552004AA54A0052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730084CE840084CE840084CE84007BC67B00EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00EFF7EF00A5D6A50052B5520052B5520052B5520052B552005AB5
        5A0052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C673008CCE8C0094CE940084CE840084CE8400EFF7EF00FFFFFF00FFFF
        FF00EFF7EF00A5D6A50063BD63005AB55A0052B552005AB55A0063BD63005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730094CE940094CE94008CCE8C0084CE8400EFF7EF00FFFFFF00EFF7
        EF00A5D6A50063BD630063BD630063BD630063BD630052B5520052B552005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007BC67B00A5D6A5009CD69C0094CE94008CCE8C00EFF7EF00EFF7EF00A5D6
        A50073C6730073C6730073C673006BBD6B0073C6730063BD630063BD630063BD
        630052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0084CE8400ADDEAD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C6730073C6730063BD
        630052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00ADDEAD00ADDEAD009CD69C0094CE940084CE840084CE840084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C673006BBD6B0063BD
        63004AAD4A0042944200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C008CCE8C0084CE840073C6730073C6730073C673006BBD6B006BBD
        6B006BBD6B0073C6730063BD63005AB55A0063BD630063BD630052B5520052B5
        52004AA54A008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn8: TBitBtn
      Left = 392
      Top = 8
      Width = 97
      Height = 29
      Action = acPreviousPage
      Caption = '&F'#246'reg'#229'ende'
      TabOrder = 1
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00428C4200397B3900398439003984390039843900398439003984
        390039843900397B3900397B390039843900397B390039843900397B3900397B
        3900397B39008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004A9C4A004A9C4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD
        4A004AAD4A004AA54A004AA54A004AA54A004AA54A004A9C4A00429C42004294
        4200428C420039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00429C420052B552005AB55A0063BD630063BD630063BD630063BD630063BD
        630052B552005AB55A005AB55A0052B5520052B5520052B552004AAD4A004A9C
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A0052B552005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD
        6B0063BD63005AB55A005AB55A0052B5520052B5520052B552004AA54A004AAD
        4A00429C4200397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A005AB55A0063BD630073C6730073C6730073C673006BBD6B0063BD
        630063BD6300A5D6A500EFF7EF00EFF7EF0052B5520052B5520052B552004AAD
        4A004A9C4A00397B3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520063BD630073C6730073C6730073C6730073C6730073C673006BBD
        6B00A5D6A500EFF7EF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B5
        52004A9C4A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B552006BBD6B0073C6730073C6730073C6730073C6730073C67300A5D6
        A500EFF7EF00FFFFFF00FFFFFF00EFF7EF0052B5520052B5520052B5520052B5
        52004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0052B5520073C6730073C6730073C6730073C6730073C67300A5D6A500EFF7
        EF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B5
        52004AA54A00428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0063BD63007BC67B0073C673007BC67B0073C67300A5D6A500EFF7EF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB5
        5A004AA54A0039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730073C673007BC67B007BC67B00A5D6A500EFF7EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF005AB55A005AB55A0052B5520052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006BBD6B0084CE84007BC67B007BC67B0073C67300A5D6A500EFF7EF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B552004AA54A0052B5
        520052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730084CE840084CE840084CE84007BC67B0073C67300A5D6A500EFF7
        EF00FFFFFF00FFFFFF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB5
        5A0052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C673008CCE8C0094CE940084CE840084CE840073C6730073C67300A5D6
        A500EFF7EF00FFFFFF00FFFFFF00EFF7EF0052B552005AB55A0063BD63005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0073C6730094CE940094CE94008CCE8C0084CE84007BC67B0073C6730073C6
        7300A5D6A500EFF7EF00FFFFFF00EFF7EF0063BD630052B5520052B552005AB5
        5A0052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007BC67B00A5D6A5009CD69C0094CE94008CCE8C0084CE840084CE84007BC6
        7B0073C67300A5D6A500EFF7EF00EFF7EF0073C6730063BD630063BD630063BD
        630052B55200428C4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0084CE8400ADDEAD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C6730073C6730063BD
        630052B5520039843900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C00ADDEAD00ADDEAD009CD69C0094CE940084CE840084CE840084CE
        840084CE840084CE840084CE84007BC67B0073C6730073C673006BBD6B0063BD
        63004AAD4A0042944200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008CCE8C008CCE8C0084CE840073C6730073C6730073C673006BBD6B006BBD
        6B006BBD6B0073C6730063BD63005AB55A0063BD630063BD630052B5520052B5
        52004AA54A008CCE8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 480
    Top = 145
    object acInsertSelectedPG: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acInsertSelectedPGExecute
    end
    object acRemoveSelectedPG: TAction
      Caption = 'Ta bort'
      OnExecute = acRemoveSelectedPGExecute
    end
    object acInsertSelectedGrades: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acInsertSelectedGradesExecute
    end
    object acRemoveSelectedGrades: TAction
      Caption = 'acRemoveSelectedGrades'
      OnExecute = acRemoveSelectedGradesExecute
    end
    object acInsertSelectedLengths: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acInsertSelectedLengthsExecute
    end
    object acRemoveSelectedLengths: TAction
      Caption = 'acRemoveSelectedLengths'
      OnExecute = acRemoveSelectedLengthsExecute
    end
    object acNextPage: TAction
      Caption = '&N'#228'sta'
      ImageIndex = 17
      OnExecute = acNextPageExecute
      OnUpdate = acNextPageUpdate
    end
    object acPreviousPage: TAction
      Caption = '&F'#246'reg'#229'ende'
      ImageIndex = 16
      OnExecute = acPreviousPageExecute
      OnUpdate = acPreviousPageUpdate
    end
    object acSave: TAction
      Caption = '&Slutf'#246'r'
      ImageIndex = 23
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Caption = '&Avbryt'
      ImageIndex = 19
      OnExecute = acCancelChangesExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Left = 480
    Top = 105
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 352
    Top = 216
    Bitmap = {
      494C010118001D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000C000000001002000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000084848400949494006B6B6B00636363005A5A5A005A5A
      5A005A5A5A00636363006B6B6B007B7B7B0094949400A5A5A500848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      000084848400636363009C9C9C00737373005A5A5A0063636300737373008C8C
      8C00ADADAD00B5B5B500BDBDBD00BDBDBD00A5A5A5008C8C8C00848484008484
      840084848400000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00DEDEDE008484840063636300636363007B7B7B009494
      9400A5A5A500BDBDBD00CECECE00D6D6D600C6C6C600BDBDBD00ADADAD009C9C
      9C00B5B5B5000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00DEDEDE008C8C8C006363630063636300737373009494
      9400A5A5A500B5B5B500CECECE00D6D6D600C6C6C600B5B5B500ADADAD009C9C
      9C00B5B5B5000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF008494EF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      0000424242006B6B6B00D6D6D600848484006363630063636300737373008C8C
      8C00A5A5A500B5B5B500C6C6C600D6D6D600C6C6C600B5B5B500ADADAD009C9C
      9C00B5B5B50000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7009CADEF00FFFFFF008494
      EF00295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00DEDEDE008484840063636300636363007B7B7B009494
      9400A5A5A500B5B5B500AD524A00AD524A00E7C6C600E7C6C6008C8C8C008C8C
      8C008C8C8C008C8C8C00AD5A5A009431310000000000000000000084EF001094
      FF00219CFF0031A5FF0031A5FF0031A5FF00299CFF0084C6FF00219CFF001894
      FF001094FF00088CFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7004263E7003963E7003163
      E7002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B5000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7009CADEF00FFFFFF008494
      EF002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006B6B6B00C6C6C600737373005A5A5A00525252005A5A5A005A5A
      5A005A5A5A00BD7B7300C65A5A00C65A5A00E7C6C6009C393900B5737300C6CE
      C600F7F7F700F7F7F700C65A5A009431310000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF0031A5FF0084C6FF00FFFFFF0084C6FF001894
      FF001094FF001094FF00088CFF00008CFF000084F700008CFF00007BE7000063
      BD00000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7004A6BE7003963E7003163
      E700315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00004A4A4A005A5A5A00A5A5A500737373005A5A5A005A5A5A00737373008C8C
      8C00A5A5A500BD7B7300C65A5A00C65A5A00C6948C009C3939009C4A4A00E7C6
      C600C6CEC600F7F7F700C65A5A009431310000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF00FFFFFF0084C6
      FF001894FF001094FF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD00000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7004A63E7003963E700395A
      E700315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000000000000000
      0000424242006B6B6B00D6D6D600848484006363630063636300737373008C8C
      8C00A5A5A500BD7B7300C65A5A00C65A5A00C6948C00C6948C00BDA5A500BDA5
      A500E7C6C600C6CEC600C65A5A009431310000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF00219CFF00FFFF
      FF0084C6FF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C6000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE700526BE7008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE7009CADEF008494EF008494EF008494EF008494EF00FFFFFF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      00004A424A006B6B6300E7DED6008C848C0063635A00635A630084737B008C94
      8C00A5A5A500BD7B7300AD524A00B55A5A00C65A5A00C65A5A00C65A5A00C65A
      5A00C65A5A00C65A5A00C65A5A009431310000000000000000001894FF0042AD
      FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF0031A5FF00219CFF001894
      FF00FFFFFF0084C6FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD00000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000425AEF005273
      E7009CADEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      0000424242006B737300D6D6D6008C848C005A635A0063636B007B7373008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0084C6FF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF00FFFFFF0084C6FF001094FF00088CFF00088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF00FFFFFF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      000042424200636B7300DEDEDE008C848C005A636300636363007B7B7B008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A00943131000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF001094FF00FFFFFF0084C6FF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E700425AEF00425AE7003152
      E7002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7009CADEF00FFFFFF008494
      EF002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300CECECE0084737300525263005A5A5A00525252005A5A
      5A005A5A5A00BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF00088CFF00088CFF00FFFFFF0084C6FF001094FF00088CFF000063
      BD000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF00425AE700395A
      E7003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7009CADEF00FFFFFF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300A5A5A500737373005A63520063636300737373008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF004AADFF0039A5FF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00088CFF001094FF00FFFFFF001094FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7009CADEF00FFFFFF008494
      EF00395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300E7DED6008C848C0063635A006B636300737373008C8C
      8C00A5A5A500BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00088CFF00088CFF001094FF00088CFF00006B
      CE000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700FFFFFF004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300E7DED6008C848C005A635A0063635A0073737300848C
      8C009C9C9C00BD7B7300AD524A00BDBDBD00C65A5A00C65A5A00C65A5A00C65A
      5A00C65A5A00BDBDBD00AD524A0094313100000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300E7DED6008C848C005A5A630063635A006B736B00848C
      8C009C9C9C00ADADAD00C6C6C600CECECE00BDBDBD00ADADAD00A5A5A5009494
      9400ADADAD0000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B5000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000000000000000
      000052424A006B636300A5A5A500737373006B635A00635A6B006B736B00848C
      8C0094949400ADADAD00BDBDBD00CECECE00BDBDBD00A5A5A500A5A5A5008C8C
      8C00ADADAD0000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      00004242420063636B00A5A5A500737B73005A5263005252520063636300635A
      630063636300636363006B6B6B007B7B7B007B7B7B0084848400848484008484
      8400ADADAD0000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A524A006B736B00ADADB5008C8C8C00949494009CA59400A5A5A500ADAD
      FD00A5A5A500A5A5A500ADADAD00ADADAD00A5A5A5009C9C9C008C8C8C007B7B
      7B009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C847B007B737B0073737300736B730073737B006B73
      6B00737373007373730073737300737373007B7B7B007B7B7B00848484000000
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
      00000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C00000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      840000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      39000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      3900000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      3100000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD00000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      2900000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      3900000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      29000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C6730073C673006BBD6B0063BD630063BD6300A5D6
      A500EFF7EF00EFF7EF0052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C67300EFF7EF00EFF7EF00A5D6A50063BD630063BD
      63005AB55A0052B5520052B5520052B5520052B552004AAD4A004A9C4A00397B
      3900000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200F7AD6300F7AD6300FFF7E700FFF7E700FFCE9C00F7A55200F79C
      4A00EF9C4200EF944200EF944200FFCE9C00FFCE9C00E78C3900D6843100A56B
      29000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF00219CFF001894
      FF001094FF00088CFF0084C6FF00FFFFFF00008CFF000084F700007BE700005A
      FD0000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C6730073C6730073C673006BBD6B00A5D6A500EFF7
      EF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004A9C4A003984
      390000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C67300EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      63005AB55A005AB55A0052B5520052B552004AAD4A0052B552004A9C4A003984
      3900000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300F7AD6300F7AD6300FFF7E700FFFFFF00FFF7E700FFCE9C00F79C
      4A00EF9C4200EF9C4200EF944200FFCE9C00FFFFFF00EF943900D6843100B573
      31000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF001894
      FF001094FF0084C6FF00FFFFFF00008CFF000084F700008CFF00007BE7000063
      BD0000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B5520052B552004AA54A003984
      390000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B5520052B5520052B5520052B552004AA54A003984
      3900000000000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF943900DE8C3100B573
      31000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF00219CFF001894
      FF0084C6FF00FFFFFF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD0000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004AA54A00428C
      420000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A5005AB55A0052B5520052B552004AAD4A0052B552004AA54A00428C
      4200000000000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF9C4200EF944200FFCE9C00FFFFFF00EF944200E78C3900BD73
      31000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF0084C6
      FF00FFFFFF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C60000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A004AA54A003984
      390000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B5520052B552005AB55A004AA54A003984
      3900000000000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF9C4200E78C3900B573
      31000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF0039A5FF0039A5FF0031A5FF0031A5FF00FFFFFF00FFFF
      FF001094FF001094FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD0000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B00A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF005AB55A005AB55A0052B5520052B5520052B55200428C
      420000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7E700FFCE9C00FFCE9C00FFFFFF00EF944200EF943900BD73
      310000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0084C6FF00FFFFFF00FFFF
      FF0084C6FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AA54A0052B5520052B55200428C
      42000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B552004AA54A0052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0084C6FF00FFFFFF00299CFF001894
      FF00FFFFFF0084C6FF00088CFF00088CFF000084F700088CFF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A0052B552003984
      390000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A50052B5520052B5520052B5520052B552005AB55A0052B552003984
      3900000000000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF944200EF944200FFCE9C00FFFFFF00EF9C4200EF944200B573
      310000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0084C6FF00FFFFFF0031A5FF00299CFF001894
      FF001094FF00FFFFFF0084C6FF00088CFF00088CFF001094FF00088CFF000063
      BD0000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE840073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B552005AB55A0063BD63005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE8400EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B552005AB55A0063BD63005AB55A0052B55200428C
      4200000000000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFBD7B00F7B57300FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF9C4200EF943900BD73
      310000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF0084C6FF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00FFFFFF0084C6FF001894FF001094FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE84007BC67B0073C6730073C67300A5D6A500EFF7
      EF00FFFFFF00EFF7EF0063BD630052B5520052B552005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE8400EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      630063BD630063BD630063BD630052B5520052B552005AB55A0052B55200428C
      4200000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFBD8400F7B57300FFF7E700FFFFFF00FFF7E700FFCE9C00F7A5
      5200F7A55200F79C4A00F79C4A00FFCE9C00FFFFFF00EF9C4200EF944200C67B
      310000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00FFFFFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00FFFFFF00088CFF001094FF00088CFF00006B
      CE000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C0084CE840084CE84007BC67B0073C67300A5D6
      A500EFF7EF00EFF7EF0073C6730063BD630063BD630063BD630052B55200428C
      42000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C00EFF7EF00EFF7EF00A5D6A50073C6730073C6
      730073C673006BBD6B0073C6730063BD630063BD630063BD630052B55200428C
      4200000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFC68C00FFBD8400FFF7E700FFF7E700FFCE9C00F7AD6B00F7AD
      6300F7AD6300F7A55A00F7AD6300FFCE9C00FFCE9C00F79C4A00EF943900BD73
      310000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      390000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      3900000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      31000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      42000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      4200000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      31000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C00000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      8400000000000000000000000000000000000000000000000000ADDEFF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      8400000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      2900000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010528400000000000000
      0000000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      2900000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000000000005294BD004A6B
      9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B
      9C004A6B9C000042730000000000000000000000000010528400004273000000
      0000000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200FFCE9C00FFCE9C00F7AD6300F7A55A00F7A55200F7A55200F79C
      4A00FFCE9C00FFF7E700FFF7E700EF944200EF943900E78C3900D6843100A56B
      2900000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000000000000000000008639C00ADCE
      E700ADCEE700ADCEE700ADCEE700CECEDE00CECEDE00CECEDE00CECEDE008CB5
      C600004273000000000000000000000000000000000000000000004273001052
      8400000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300FFFFFF00FFCE9C00F7AD6300F7AD6300F7A55A00F7A55200FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF943900E78C3900EF943900D6843100B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000086BA500DEF7
      FF00DEF7FF00DEF7FF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00C6D6E7001052
      8400000000000000000000000000000000000000000000000000105284001052
      84004A6B9C000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00FFFFFF00FFCE9C00F7AD6300F7AD6300F7AD6300FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF943900EF943900EF943900DE8C3100B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000007BAD00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00DEF7FF00C6D6E700105284000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD00105284000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900E78C3900EF944200E78C3900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000007BAD00B5E7
      FF00B5E7FF00B5E7FF00CEF7FF00CEF7FF00ADCEE70010528400000000000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD00297BAD000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00FFFFFF00FFCE9C00F7AD6B00FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900EF944200EF9C4200E78C3900B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE630000000000000000000000000000000000001884C600B5E7
      FF00B5E7FF00B5E7FF00B5E7FF00B5E7FF00A5DEFF0029637B004A6B9C000000
      000000000000000000000000000000000000000000000000000029637B008CB5
      C600297BAD000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300FFFFFF00FFCE9C00FFCE9C00FFF7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF9C4200EF944200EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC60000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE6300000000000000000000000000000000000010A5D600A5DE
      FF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF0029637B002963
      7B000000000000000000000000000000000000000000739CAD0010528400B5E7
      FF00298CD6000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300FFFFFF00FFCE9C00F7AD6300FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200E78C3900EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B50000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD00313131000000000000000000000000000000000010A5D6008CD6
      FF008CD6FF0084BDE70084BDE7008CD6FF008CD6FF00A5DEFF008CD6FF005294
      BD00004A7B0029637B00739CAD00739CAD00216B9400105A940084BDE7008CD6
      FF00007BAD000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200B573
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF70000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B003131310000000000000000000000000010A5D6006BC6
      FF006BC6FF001884C600007BAD0084BDE7008CD6FF008CD6FF008CD6FF008CD6
      FF008CD6FF005294BD005294BD005294BD0084BDE700A5DEFF00A5DEFF0042A5
      DE0084BDE7000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFFFFF00FFCE9C00F7AD6B00F7AD6300F7AD6B00FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF9C4200F79C4A00EF9C4200EF943900BD73
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E70000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A00000000000000000010A5D6004ABD
      FF0010A5D60000000000000000001884C60042A5DE006BC6FF006BC6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF0042A5DE0042A5
      DE00000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFFFFF00FFCE9C00F7B57300F7AD6B00F7AD6300F7A55A00FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200C67B
      3100000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F700000000000000000010A5D60010A5
      D6000000000000000000000000000000000042A5DE001884C60042A5DE004ABD
      FF006BC6FF006BC6FF006BC6FF004ABDFF0042A5DE0010A5D60042A5DE000000
      0000000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFCE9C00FFCE9C00FFBD7B00F7B57300F7B57300F7AD6B00F7AD
      6300FFCE9C00FFF7E700FFF7E700F7A55200F7A55200F79C4A00EF943900BD73
      3100000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F700000000000000000010A5D6000000
      000000000000000000000000000000000000000000000000000042A5DE0042A5
      DE0010A5D60010A5D60010A5D60042A5DE0042A5DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      3100000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      310000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      8400000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400000000000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600BD6B2900B55A1800F7DEBD00BD6B
      2900B55A1800E7BD8C00EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00CE8C5A00B55A1800DEAD7B00CE8C
      5200B55A1800DEA57300EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00DEB58C00B55A1800CE8C5200F7DE
      BD00B55A1800CE844A00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00CE946300CE946300B55A1800CE946300CE94
      6300B55A1800CE946300CE946300CE946300CE946300EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000EF9C2100FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700EF9C210000000000000000000000
      00000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000B584
      8400F7EFE700FFF7EF00F7EFE700B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800EFCEA500EFCE9C00EFCE
      9C00EFCE9400B584840000000000000000000000000000000000EF9C2100F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00EF9C21000000000000000000008C
      08000000000000000000EF9C2100F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00EF9C21000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00CE8C6300B55A1800F7DE
      BD00CE8C5A00B55A1800DEAD7B00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008C0800008C
      0800007308000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700DEB59400B55A1800CE8C
      5A00F7DEBD00B55A1800CE8C5200F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C0800008C0800008C
      0800007308000073080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700CE946300CE946300CE946300B55A1800CE94
      6300CE946300B55A1800CE946300CE946300CE946300F7D6B500F7D6AD00F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008C0800008C0800008C08000073
      0800007308000073080000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5848400000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00B55A1800B55A1800B55A1800B55A1800B55A
      1800B55A1800B55A1800B55A1800B55A1800B55A1800F7DEBD00F7D6B500F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B8400000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00CE946300B55A
      1800F7DEBD00CE8C6300B55A1800DEAD8400F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B8400000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700E7BD9C00B55A
      1800CE8C6300F7DEBD00B55A1800CE8C5A00F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      FD00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B8400000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7DE00B55A
      1800BD6B2900EFDECE00B55A1800BD632900F7E7CE00F7E7CE00EFD6BD00CEBD
      FD00B5AD94009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B8400000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B5847300000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE630000000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B5847300000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE6300000000000000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B5848400000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      840000000000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0000DEE70000DE
      E70000DEE70000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000063CE0084FFFF0010F7FF0010F7
      FF0010F7FF0000DEE7000063CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007F7F7F000000
      00000000000000000000FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007F7F7F000000
      00000000000000000000FFFFFF007F7F7F000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000BD846B00A573
      6300C68C7300C68C7B00B5847300AD8C84009C847B00E7947300E79473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000007F7F
      7F007F7F7F0000FFFF0000FFFF007F7F7F007F7F7F007F7F7F0000FFFF000000
      0000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
      FF00FFFFFF00FFFFFF007F7F7F00000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B50000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000CE846300D69C8400CE94
      7B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B5847300946B5200946B
      520073422900844A3900844A390084635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000BD846300DE9C8C00FFC6
      FD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A58400F7A58400F7A5
      8400B5847300A5847B009C7B73007B4A390084635A0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DE9C8C00FFB5
      A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C6846B00B56B5200E794
      7B00EFA58C00C6846B00CE7B6300BD846B009C6B5A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DE9C8C00F7BD
      A500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C9400EFD6C600EFB5
      9C00E79C7B00E7A58C00E7947300DEA58C00B58C840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000C6846B00DEA58C00FFBD
      A500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CEB500EFEFE700DEBD
      FD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A0000000000C6846300DEA58C00FFBD
      FD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CEAD00A57B6300DEB5
      9C00FFDEBD00DEBDA500EFC6A500E7BDA500B584730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A0000000000BD846B00DEA59400FFC6
      B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C7300C67B6300E7A5
      8C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00FFFFFF0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A0000000000C6846300DEA59400FFC6
      B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D6948400FFD6BD00E7B5
      9C00CE947B00D6948400DE947B00DEAD9400B58C7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00FFFFFF0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A0000000000C6846300E7A59400FFC6
      B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6BD00F7EFDE00E7C6
      FD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007F7F7F007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      0000000000007F7F7F007F7F7F00FFFFFF000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A0000000000C6846300E7A59400FFCE
      BD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6A500AD7B6B00DEB5
      9C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007F7F7F007F7F7F00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007F7F7F007F7F7F007F7F7F00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A0000000000C6846300E7AD9C00FFD6
      C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A58C00C68C7300FFBD
      8C00CEADAD007384AD008C94AD00CEBDB500CE9C840000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007F7F7F007F7F7F00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7AD9C00FFD6
      C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A59400FFDEBD00FFC6
      8C00948CA500086BE7001063D6009CADC600DEAD7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000BD846300DEB5A500FFD6
      CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCEB500DEC6B500FFC6
      9400B5B5B5004A9CF7005294F700BDB5D600DE9C730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000BD846300DEB5A500FFDE
      CE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6BD00EFDEC600FFE7
      C600E7DECE00A5CEDE00ADC6E700D6CECE00CE94730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300DEB5A500FFDE
      D600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CEAD00F7CEAD00F7D6
      B500EFCEB500E7C6AD00EFD6B500EFD6C600C694840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7B5AD00FFE7
      DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A58400DE9C7B00DE9C
      7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F000000
      00007F7F7F007F7F7F00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7BDB500FFEF
      E700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C6300FFA56B00FFA5
      6B00FFA57300FFAD7B00FFA57300EFBDA500BDA5940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F000000
      00007F7F7F007F7F7F00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7B5AD00FFEF
      E700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B4200EF844A00EF84
      4A00F78C5200FF8C5200EF7B4200E7A58C00BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      0000000000007F7F7F00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000C6846300E7BDB500FFF7
      F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E7947300DE946B00DE94
      6B00E78C6300F78C5A00E7845200E7B59400CEA5940000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007F7F7F000000000000000000000000007F7F7F007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A0000000000CE846300F7D6CE00FFFF
      FF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFFDE00FFF7DE00FFF7
      DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007F7F7F000000000000000000000000007F7F7F007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000DEB59C00F7E7
      DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EFDE00F7EFD600F7F7
      DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C0000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007F7F7F00000000000000000000000000000000007F7F7F00000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A0000000000000000000000000000000000E7BD
      FD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CEBD00DEC6B500EFD6
      C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D600000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D6000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A0008731000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD3900087308000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F0000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD310000730800000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007F7F7F007F7F7F007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F0000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A000873080008730800087308000873080000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F0000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      39000873080000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F0000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      21000873080000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000BFBFBF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BFBFBF000000
      00007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF007F7F7F000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000BFBFBF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BFBFBF000000
      00007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000C00000000100010000000000000900000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFC0000FC0000FF00007C0000F
      C0000FC0000FF00007C0000FC0000FC0000FF00007C0000FC0000FC0000FF000
      07C0000FC0000FC0000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0
      000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0000FF00000C0000F
      C0000FC0000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0000FF000
      00C0000FC0000FC0000FF00000C0000FC0000FC0000FF00000C0000FC0000FC0
      000FF00000C0000FC0000FC0000FF00007C0000FC0000FC0000FF00007C0000F
      C0000FC0000FF00007C0000FFFFFFFFFFFFFF00007FFFFFFFFFFFFFFFFFFFC00
      1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC00003C00003FFFFFFFFFFFFC00003C00003FFFFFFC0000F
      C00003C00003FFFFFFC0000FC00003C00003FFFFFFC0000FC00003C00003FFFF
      BFC0000FC00003C00003C0039FC0000FC00003C00003C007CFC0000FC00003C0
      0003C00FC7C0000FC00003C00003C01FC7C0000FC00003C00003C03FC7C0000F
      C00003C00003C01FC7C0000FC00003C00003C00F87C0000FC00003C00003C000
      07C0000FC00003C00001C00007C0000FC00003C00000C6000FC0000FC00003C0
      0000CF001FC0000FC00003C00000DFC07FC0000FC00003C00000FFFFFFC0000F
      E00007E00007FFFFFFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003C07C07FFFFFFFFFFFFE00003C0
      7C07FFFFFFFFFFFFE00003C07C07C00003FC0007E00003C07C07C00003FC0007
      E00003C07C07C00003FC0007E00003C07C07C00003FC0007E00003C07C07C000
      03FC0007E00003C07C07C00003FC0007E00003C06C07C00003FC0007E00003FF
      C7FFC00003FC0007E00003FF83FFC00003FC0007E00003FF01FFC00003FC0007
      E00003FFEFFFC00003F00007E00003FFEFFFC00003F00007E00003FFEFFFC000
      03F00007E00003FF01FFC00003800007E00003FF01FFC00003800007E00003FF
      01FFC00003800007E00003FF01FFC00003800007E00007FF01FFC00003F0000F
      E0000FFF01FFE00007F0001FE0001FFF01FFFFFFFFF0FFFFE0003FFF01FFFFFF
      FFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFDE9DCFFFFFFC00001FFFFFFFDE9DCFF
      0C1F800000C01FFFA01801FC00078000008000FF803803F0000180000080007F
      803803E0000380000080007FC03CFB80000380000080007FC03CFB8000038000
      0080007FC03CFB80000380000080007FC03CFB80000380000080007FC038F880
      000380000080007FC038F880000380000080007F0010F8C0000380000080007F
      8008E0E0000780000080007F8008E0F8000F80000080007FC03CC3F8001F8000
      0080007FC07CD3FC007F80000080007FC07CD3FC00FF80000080007FC07CC3FC
      01FF80000080007FC13C11FC01FF80000080007FC13C11FC01FF80000080007F
      81B818FC01FF80000080007FB9DB9DF803FF80000080007FB9DB9DF803FF8000
      00C0007F7BE7BEF007FFC00001E0007FFFFFFFE00003FFFFFFFFF800FFFFFFE0
      0003FFFFFFFFF800FF1FFFE00003807FFF000000F8000FE000038003FF000428
      E0000FE0000380001F000428C0000FE0000380001F000152C0000FE000038000
      0F000428C0000FE0000380000F000428C0000FE00003800007000152C0000FE0
      0003800007000428C0000FE00003800007000428C0000FE00003800003000152
      C0000FE00003800003000428C0000FE00003800001000428C0000FE000038000
      00000152C0000FE00003800000000000C0000FE00003800007000000C0000FE0
      0003800007000000E0000FE00003800007000000F8000FE00007C03F07000000
      FE1FFFE0000FE07E0F000000FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
