object frm1: Tfrm1
  Left = 265
  Top = 233
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 623
  ClientWidth = 963
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    963
    623)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 352
    Top = 14
    Width = 321
    Height = 16
    Hint = 'The database type selection'
    Alignment = taCenter
    AutoSize = False
    Caption = 'The database type selection'
    ParentShowHint = False
    ShowHint = True
    Transparent = False
    OnMouseMove = Label1MouseMove
  end
  object Label2: TLabel
    Left = 25
    Top = 8
    Width = 321
    Height = 18
    Hint = 'Select the data you want to connect ti:'
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Connection type selection'
    Color = clBtnFace
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = False
  end
  object Label3: TLabel
    Left = 24
    Top = 55
    Width = 273
    Height = 15
    Hint = 'Enter the data source and/or location of the data'
    Alignment = taCenter
    AutoSize = False
    Caption = 'The database source'
    ParentShowHint = False
    ShowHint = True
  end
  object Label4: TLabel
    Left = 4
    Top = 159
    Width = 170
    Height = 16
    Hint = 'The control type selection'
    Alignment = taCenter
    AutoSize = False
    Caption = 'The control type selection'
    ParentShowHint = False
    ShowHint = True
    Transparent = False
  end
  object Label5: TLabel
    Left = 175
    Top = 96
    Width = 122
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'Tables list'
    ParentShowHint = False
    ShowHint = True
    Transparent = False
  end
  object Label6: TLabel
    Left = 312
    Top = 96
    Width = 122
    Height = 16
    Hint = '??????'
    Alignment = taCenter
    AutoSize = False
    Caption = 'fields'
    ParentShowHint = False
    ShowHint = True
  end
  object Label7: TLabel
    Left = 440
    Top = 96
    Width = 114
    Height = 16
    Hint = '??? ??????'
    Alignment = taCenter
    AutoSize = False
    Caption = 'control '
    ParentShowHint = False
    ShowHint = True
  end
  object Label8: TLabel
    Left = 560
    Top = 96
    Width = 114
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'value type'
    ParentShowHint = False
    ShowHint = True
  end
  object Label9: TLabel
    Left = 680
    Top = 96
    Width = 103
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'Control caption'
    ParentShowHint = False
    ShowHint = True
  end
  object Label10: TLabel
    Left = 789
    Top = 96
    Width = 156
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'use control'
    ParentShowHint = False
    ShowHint = True
  end
  object Label11: TLabel
    Left = 32
    Top = 384
    Width = 83
    Height = 16
    Hint = '????? ???????'
    Alignment = taCenter
    AutoSize = False
    Caption = 'Server Name'
    ParentShowHint = False
    ShowHint = True
    Visible = False
  end
  object Label12: TLabel
    Left = 688
    Top = 16
    Width = 48
    Height = 16
    Caption = 'Browse'
    Transparent = False
  end
  object Label13: TLabel
    Left = 808
    Top = 74
    Width = 102
    Height = 16
    Hint = 'Select controls used'
    Alignment = taCenter
    Caption = 'Select controls:'
    ParentShowHint = False
    ShowHint = True
    Transparent = False
  end
  object lblCheck1: TLabel
    Left = 138
    Top = 134
    Width = 27
    Height = 19
    Caption = '<--'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object cbBoxConnectionType: TComboBox
    Left = 24
    Top = 32
    Width = 321
    Height = 24
    Style = csDropDownList
    TabOrder = 0
    OnChange = cbBoxConnectionTypeChange
    OnExit = cbBoxConnectionTypeExit
  end
  object cbBoxDatabaseType1: TComboBox
    Left = 352
    Top = 32
    Width = 321
    Height = 24
    Hint = 'Select or enter provider'
    Style = csDropDownList
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnChange = cbBoxDatabaseType1Change
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 32
    Width = 33
    Height = 25
    Hint = 'Browse'
    Caption = '...'
    Default = True
    Enabled = False
    Layout = blGlyphRight
    ModalResult = 1
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 72
    Width = 649
    Height = 24
    TabOrder = 6
  end
  object cbAdoTable: TComboBox
    Left = 24
    Top = 208
    Width = 145
    Height = 24
    Enabled = False
    TabOrder = 3
    OnExit = cbAdoTableExit
  end
  object cbAdoConnection: TComboBox
    Left = 24
    Top = 104
    Width = 145
    Height = 24
    TabOrder = 7
    Text = 'ADOConnection1'
    Items.Strings = (
      'ADOConnection1'
      'FDConnection1')
  end
  object cbDatasource: TComboBox
    Left = 24
    Top = 240
    Width = 145
    Height = 24
    TabOrder = 8
    Text = 'DataSource'
  end
  object cbDBGrid: TComboBox
    Left = 24
    Top = 272
    Width = 145
    Height = 24
    TabOrder = 9
    Text = 'DBGrid'
  end
  object ComboBoxName: TComboBox
    Left = 24
    Top = 176
    Width = 145
    Height = 24
    Style = csDropDownList
    TabOrder = 2
    OnChange = ComboBoxNameChange
    OnEnter = ComboBoxNameEnter
    OnExit = ComboBoxNameExit
  end
  object BitBtn2: TBitBtn
    Left = 808
    Top = 32
    Width = 121
    Height = 25
    Hint = 'go Next'
    Caption = 'Next'
    Default = True
    Layout = blGlyphRight
    ModalResult = 1
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object ListBoxFields: TListBox
    Left = 176
    Top = 112
    Width = 121
    Height = 241
    Enabled = False
    TabOrder = 11
    OnClick = ListBoxFieldsClick
  end
  object StringGrid1: TStringGrid
    Left = 312
    Top = 112
    Width = 617
    Height = 441
    DefaultColWidth = 120
    DefaultRowHeight = 25
    Enabled = False
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    Options = [goVertLine, goHorzLine, goEditing]
    PopupMenu = PopupMenu1
    TabOrder = 12
    OnClick = StringGrid1Click
    OnDblClick = StringGrid1DblClick
  end
  object chkbPasswordShow: TCheckBox
    Left = 24
    Top = 307
    Width = 89
    Height = 17
    Caption = 'Password'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnClick = chkbPasswordShowClick
  end
  object Edit2: TEdit
    Left = 24
    Top = 360
    Width = 265
    Height = 24
    TabOrder = 14
    Visible = False
  end
  object edtPassword: TEdit
    Left = 24
    Top = 330
    Width = 137
    Height = 24
    TabOrder = 15
    Visible = False
    OnExit = edtPasswordExit
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 552
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkClose
    Layout = blGlyphRight
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 16
  end
  object edtSQLServer1: TEdit
    Left = 24
    Top = 400
    Width = 265
    Height = 24
    TabOrder = 17
    Visible = False
  end
  object chbAdoFireDAC: TCheckBox
    Left = 40
    Top = 134
    Width = 81
    Height = 19
    Caption = ' Ado'
    Checked = True
    Color = clBackground
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    State = cbChecked
    TabOrder = 1
    OnClick = chbAdoFireDACClick
  end
  object chkbEnglishArab: TCheckBox
    Left = 192
    Top = 512
    Width = 105
    Height = 17
    Caption = 'English'
    Checked = True
    State = cbChecked
    TabOrder = 18
    OnClick = chkbEnglishArabClick
  end
  object ChkBSelectAll: TCheckBox
    Left = 840
    Top = 559
    Width = 89
    Height = 17
    Caption = 'Select All'
    Enabled = False
    TabOrder = 19
    OnClick = ChkBSelectAllClick
  end
  object OpenDialog1: TOpenDialog
    Left = 400
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 368
    Top = 65528
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'StringFormat=Unicode')
    LoginPrompt = False
    Left = 480
    Top = 568
  end
  object FDTable1: TFDTable
    Left = 552
    Top = 568
  end
  object FDQuery1: TFDQuery
    Left = 624
    Top = 568
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 712
    Top = 568
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 192
    Top = 568
  end
  object ADOTable1: TADOTable
    CursorType = ctStatic
    Left = 272
    Top = 568
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 336
    Top = 568
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 784
    Top = 568
  end
  object DataSource1: TDataSource
    Left = 408
    Top = 568
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 920
    Top = 224
    object pMenuTComboBox1: TMenuItem
      Caption = 'TComboBox'
      OnClick = pMenuTCheckBox1Click
    end
    object pMenuTEdit1: TMenuItem
      Caption = 'TEdit'
      OnClick = pMenuTCheckBox1Click
    end
    object pMenuTCheckBox1: TMenuItem
      Caption = 'TCheckBox'
      OnClick = pMenuTCheckBox1Click
    end
    object pMenuTDateTimePicker1: TMenuItem
      Caption = 'TDateTimePicker'
      OnClick = pMenuTCheckBox1Click
    end
    object pMenuTMemo1: TMenuItem
      Caption = 'TMemo'
      OnClick = pMenuTCheckBox1Click
    end
    object pMenuTImage1: TMenuItem
      Caption = 'TImage'
      OnClick = pMenuTCheckBox1Click
    end
    object pMenuTDBImage1: TMenuItem
      Caption = 'TDBImage'
      OnClick = pMenuTCheckBox1Click
    end
  end
end
