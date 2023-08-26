object Form1: TForm1
  Left = 353
  Top = 279
  BorderIcons = [biSystemMenu, biMinimize]
  BorderWidth = 11
  ClientHeight = 639
  ClientWidth = 855
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0900090009000000009990000000000009000900090000000900090000000000
    0900909009000000900000900000000009009090090999009000000000000000
    0900909009000000900000000000000009090009090000009000000000000000
    0909000909000000900000000000000009900000990000009000009000000000
    0990000099000000090009000000000009000000090000000099900000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFF800000FE7FFFFF3EFFFFFFBDFFFFFFDDFFFFFFDDFFFFFFDDFFF
    FFFDDFFFFFFDDFFFFFFDDFFFFFFDDBBBFC7DDBBBFBBDDB5BF7DDDB5A37FDDB5B
    F7FDDAEBF7FDDAEBF7FDD9F3F7DDD9F3FBBDDBFBFC7DDFFFFFFDDFFFFFFDDFFF
    FFFDDFFFFFFDDFFFFFFDEFFFFFFBE7FFFFF3F800000FFFFFFFFFFFFFFFFF}
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Memo1: TMemo
    Left = 40
    Top = 95
    Width = 777
    Height = 313
    ScrollBars = ssBoth
    TabOrder = 5
    OnChange = Memo1Change
  end
  object btnCopySelect: TBitBtn
    Left = 696
    Top = 15
    Width = 121
    Height = 74
    Cursor = crHandPoint
    Hint = 'Select and Copy'
    Caption = 'SelectCopy'
    Enabled = False
    Kind = bkOK
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    WordWrap = True
    OnClick = btnCopySelectClick
  end
  object btnDBGridColumns: TBitBtn
    Left = 313
    Top = 540
    Width = 136
    Height = 25
    Cursor = crHandPoint
    Caption = 'DBGrid Columns'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 7
    OnClick = btnDBGridColumnsClick
  end
  object btnCreateTable: TBitBtn
    Left = 40
    Top = 416
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create Table'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 10
    OnClick = btnCreateTableClick
  end
  object ListBoxSearch: TListBox
    Left = 592
    Top = 104
    Width = 201
    Height = 289
    ItemHeight = 14
    TabOrder = 8
    Visible = False
    OnClick = ListBoxSearchClick
  end
  object btnCreateComponentsOnForm: TBitBtn
    Left = 608
    Top = 415
    Width = 209
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create Components On Form'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCreateComponentsOnFormClick
  end
  object btnClose: TBitBtn
    Left = 32
    Top = 563
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkClose
    Layout = blGlyphRight
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 11
  end
  object btnCreateComponentsOnDataModule: TBitBtn
    Left = 560
    Top = 446
    Width = 257
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create Components On Data Module'
    Enabled = False
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 0
    OnClick = btnCreateComponentsOnDataModuleClick
  end
  object btnCreateDBGrid: TBitBtn
    Left = 471
    Top = 416
    Width = 130
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create DBGrid'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnCreateDBGridClick
  end
  object btnCreateBitBtn: TBitBtn
    Left = 240
    Top = 447
    Width = 313
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create TBitBtn Add, Update, Delete, Clear'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCreateBitBtnClick
  end
  object btnExecutessQueryss1: TBitBtn
    Left = 40
    Top = 447
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Caption = 'Execute Query'
    Enabled = False
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 12
    Visible = False
    OnClick = btnExecutessQueryss1Click
  end
  object btnCreateTBitBtnFindandTEdit: TBitBtn
    Left = 240
    Top = 416
    Width = 225
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create TBitBtn Find and TEdit'
    Enabled = False
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 9
    OnClick = btnCreateTBitBtnFindandTEditClick
  end
  object btnExaforSch: TBitBtn
    Left = 472
    Top = 509
    Width = 193
    Height = 25
    Cursor = crHandPoint
    Caption = 'many example for Search'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 13
    OnClick = btnExaforSchClick
  end
  object btnCreateProperties: TBitBtn
    Left = 313
    Top = 509
    Width = 153
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create Properties'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 14
    OnClick = btnCreatePropertiesClick
  end
  object btnCreateUnit: TBitBtn
    Left = 671
    Top = 509
    Width = 122
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create Unit'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 15
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 455
    Top = 540
    Width = 220
    Height = 25
    Cursor = crHandPoint
    Hint = 'Replace Delphi to C++Builder'
    Caption = 'Delphi to C++Builder'
    Enabled = False
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnClick = BitBtn2Click
  end
  object btnReplaceText2: TBitBtn
    Left = 681
    Top = 540
    Width = 112
    Height = 25
    Cursor = crHandPoint
    Caption = 'Replace Text'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 17
    OnClick = btnReplaceText2Click
  end
  object BitBtn3: TBitBtn
    Left = 522
    Top = 571
    Width = 57
    Height = 25
    Cursor = crHandPoint
    Caption = 'ok'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 18
    Visible = False
  end
  object chkbEnglishArabi: TCheckBox
    Left = 192
    Top = 544
    Width = 89
    Height = 17
    Caption = 'English'
    Checked = True
    State = cbChecked
    TabOrder = 19
    OnClick = chkbEnglishArabiClick
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 8
    Width = 641
    Height = 81
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    OnMouseLeave = GroupBox1MouseLeave
    object btnClear: TBitBtn
      Left = 520
      Top = 16
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Clear'
      Default = True
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnClearClick
    end
    object btnConnection1: TBitBtn
      Left = 40
      Top = 16
      Width = 113
      Height = 25
      Cursor = crHandPoint
      Caption = 'Connection'
      Default = True
      Enabled = False
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 5
      OnClick = btnConnection1Click
    end
    object btnRegistre: TBitBtn
      Left = 40
      Top = 47
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Caption = 'Registre'
      Default = True
      Enabled = False
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 6
      OnClick = btnRegistreClick
    end
    object btnViewAll: TBitBtn
      Left = 144
      Top = 47
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'ViewAll'
      Default = True
      Enabled = False
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 8
      OnClick = btnViewAllClick
    end
    object btnInsert: TBitBtn
      Left = 160
      Top = 16
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Insert'
      Default = True
      Enabled = False
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnInsertClick
    end
    object btnUpdate: TBitBtn
      Left = 248
      Top = 16
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Update'
      Default = True
      Enabled = False
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnUpdateClick
    end
    object btnClearAll: TBitBtn
      Left = 238
      Top = 47
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = 'Clear All'
      Default = True
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 9
      OnClick = btnClearAllClick
    end
    object btnCodeChange: TBitBtn
      Left = 347
      Top = 47
      Width = 129
      Height = 25
      Cursor = crHandPoint
      Caption = 'Code Change'
      Default = True
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 10
      OnClick = btnCodeChangeClick
    end
    object btnDelete: TBitBtn
      Left = 344
      Top = 16
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Delete'
      Default = True
      Enabled = False
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btnDeleteClick
    end
    object btnSearch: TBitBtn
      Left = 432
      Top = 16
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Search'
      Default = True
      Enabled = False
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btnSearchClick
    end
    object btnAddImage: TBitBtn
      Left = 482
      Top = 47
      Width = 119
      Height = 25
      Cursor = crHandPoint
      Caption = 'Add Image'
      Default = True
      Layout = blGlyphRight
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 7
      OnClick = btnAddImageClick
    end
  end
  object btnOpenDialog: TBitBtn
    Left = 523
    Top = 477
    Width = 118
    Height = 25
    Cursor = crHandPoint
    Caption = 'Open Dialog'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 20
    OnClick = btnOpenDialogClick
  end
  object BtnCreateDBNavigator1: TBitBtn
    Left = 344
    Top = 478
    Width = 157
    Height = 25
    Cursor = crHandPoint
    Caption = 'Create DBNavigator'
    Kind = bkOK
    Layout = blGlyphRight
    NumGlyphs = 2
    TabOrder = 21
    OnClick = BtnCreateDBNavigator1Click
  end
  object ReplaceDialog1: TReplaceDialog
    Options = [frDown, frFindNext, frReplaceAll]
    OnReplace = ReplaceDialog1Replace
    Left = 232
    Top = 128
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 128
    object LanguageofPascal1: TMenuItem
      Caption = 'Language of Pascal'
      object LoopsofPascal1: TMenuItem
        Caption = 'Loops of Pascal'
        object MenuFor1: TMenuItem
          Caption = 'for'
          OnClick = MenuFor1Click
        end
        object MenuWhile1: TMenuItem
          Caption = 'While'
          OnClick = MenuWhile1Click
        end
        object MenuRepeat1: TMenuItem
          Caption = 'Repeat Until'
          OnClick = MenuRepeat1Click
        end
      end
      object ConditionofPascal1: TMenuItem
        Caption = 'Condition of Pascal'
        object MenuIf1: TMenuItem
          Caption = 'if'
          OnClick = MenuIf1Click
        end
        object MenuCaseof1: TMenuItem
          Caption = 'Case of'
          OnClick = MenuCaseof1Click
        end
      end
      object ProcedureofPascal1: TMenuItem
        Caption = 'Procedure of Pascal'
        OnClick = ProcedureofPascal1Click
      end
      object FonctionofPascal1: TMenuItem
        Caption = 'Fonction of Pascal'
        OnClick = FonctionofPascal1Click
      end
      object MenuRecord1: TMenuItem
        Caption = 'Records'
        object SupMenurecords1: TMenuItem
          Caption = 'record'
          OnClick = SupMenurecords1Click
        end
        object DateRecord1: TMenuItem
          Caption = 'Date Record'
          OnClick = DateRecord1Click
        end
        object MenuEmployeeRecord1: TMenuItem
          Caption = 'Employee Record'
          OnClick = MenuEmployeeRecord1Click
        end
        object MenuPersonRecord1: TMenuItem
          Caption = 'Person Record'
          OnClick = MenuPersonRecord1Click
        end
        object MenuFigureRecord1: TMenuItem
          Caption = 'Figure Record'
          OnClick = MenuFigureRecord1Click
        end
      end
      object MenuArrays1: TMenuItem
        Caption = 'MenuArrays'
        object SubMenuArraySimple1: TMenuItem
          Caption = 'Array Simple'
          OnClick = SubMenuArraySimple1Click
        end
        object Submenuarraymulti1: TMenuItem
          Caption = 'Array Multiple'
          OnClick = Submenuarraymulti1Click
        end
        object ArrayUseInputQuery1: TMenuItem
          Caption = 'ArrayUse Input Query'
          OnClick = ArrayUseInputQuery1Click
        end
      end
    end
    object MenusDelphi1: TMenuItem
      Caption = 'Delphi'
      object MenuProperty1: TMenuItem
        Caption = 'Property'
        OnClick = MenuProperty1Click
      end
      object AdvancedDelphi1: TMenuItem
        Caption = 'Advanced Delphi'
        object CreateUnit1: TMenuItem
          Caption = 'Create Unit'
          Enabled = False
          OnClick = CreateUnit1Click
        end
        object AddToUnitandFromUnitToFormView1: TMenuItem
          Caption = 'Add To Unit and FromUnit To FormView'
          Enabled = False
          OnClick = AddToUnitandFromUnitToFormView1Click
        end
        object AddToDatabaseandSaveandFromDatabaseToUnit1: TMenuItem
          Caption = 'AddToDatabase and Save and FromDatabaseToUnit'
          Enabled = False
          OnClick = AddToDatabaseandSaveandFromDatabaseToUnit1Click
        end
      end
    end
    object Tools1: TMenuItem
      Caption = '&Tools'
      object Font1: TMenuItem
        Caption = 'Font'
        OnClick = Font1Click
      end
      object Color1: TMenuItem
        Caption = 'Color'
      end
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 304
    Top = 128
  end
end
