object frmCreateTable1: TfrmCreateTable1
  Left = 189
  Top = 102
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 583
  ClientWidth = 765
  Color = clBtnFace
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
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Memo1: TMemo
    Left = 32
    Top = 72
    Width = 713
    Height = 425
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 765
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 16
      Width = 69
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Table name'
    end
    object Label2: TLabel
      Left = 344
      Top = 16
      Width = 94
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Number of field'
    end
    object Label3: TLabel
      Left = 488
      Top = 16
      Width = 102
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Connection type'
    end
    object TableNamesEdit: TEdit
      Left = 120
      Top = 32
      Width = 209
      Height = 22
      TabOrder = 0
      Text = 'TableTest1'
      OnChange = TableNamesEditChange
    end
    object TaleCountEdit: TEdit
      Left = 352
      Top = 32
      Width = 65
      Height = 22
      TabOrder = 1
      Text = '3'
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      Default = True
      Enabled = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      Layout = blGlyphRight
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 472
      Top = 32
      Width = 145
      Height = 22
      Style = csDropDownList
      TabOrder = 3
      OnChange = ComboBox1Change
      OnDropDown = ComboBox1DropDown
      OnExit = ComboBox1Exit
      Items.Strings = (
        'Access'
        'Paradox'
        'SQL Server'
        'Oracle')
    end
    object chkbEnglishArab: TCheckBox
      Left = 640
      Top = 32
      Width = 105
      Height = 17
      Caption = 'English'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = chkbEnglishArabClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 765
    Height = 468
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 765
      Height = 468
      HorzScrollBar.Margin = 6
      HorzScrollBar.Range = 326
      VertScrollBar.Margin = 6
      VertScrollBar.Range = 900
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 533
    Width = 765
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object btnCreateTable: TBitBtn
      Left = 464
      Top = 17
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Create'
      Enabled = False
      Kind = bkOK
      Layout = blGlyphRight
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnCreateTableClick
    end
    object BitBtn2: TBitBtn
      Left = 24
      Top = 16
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Kind = bkClose
      Layout = blGlyphRight
      NumGlyphs = 2
      TabOrder = 1
    end
    object btnCreateTableParadox: TBitBtn
      Left = 568
      Top = 17
      Width = 137
      Height = 25
      Cursor = crHandPoint
      Caption = 'Create Paradox'
      Enabled = False
      Kind = bkOK
      Layout = blGlyphRight
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnCreateTableParadoxClick
    end
  end
end
