unit UnitCreateTable;

interface

uses
{  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;}

  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  UnitAddString;

type
  TfrmCreateTable1 = class(TForm)
    GroupBox1: TGroupBox;
    TableNamesEdit: TEdit;
    TaleCountEdit: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    btnCreateTable: TBitBtn;
    ScrollBox1: TScrollBox;
    BitBtn2: TBitBtn;
    btnCreateTableParadox: TBitBtn;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    Label3: TLabel;
    chkbEnglishArab: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCreateTableClick(Sender: TObject);
    procedure TableNamesEditChange(Sender: TObject);
    procedure CombBxChange(Sender: TObject);
    procedure CheckBoxsClick(Sender: TObject);
    procedure CombBxChangeNULL(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCreateTableParadoxClick(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure chkbEnglishArabClick(Sender: TObject);
  private
    //procedure proCreateFieldParadox(Name1, DType: string; DSize: integer);
    //procedure proCreateIndexParadox(Name1, DType: string; DSize: integer);
    function proCIndPard(aStr1: string): boolean;
  end;

type
  TStrArray = Array of string;
  TComponentClass = class of TControl;
var
  frmCreateTable1: TfrmCreateTable1;
  ArrayFieldName, StrArraycbBox,StrArrayCount,
  StrArraycbBoxNULL, StrArraychbIndex: TStrArray;
  sdNULL12: TStrArray;
  s11, s12: string;
  bool1: boolean;
  Strings, Strings1: TStrings;
  Text1: string;


implementation

{$R *.dfm}

uses UnitNotForm1, UnitMake2;

procedure CreateLabels(Labels: TLabel; l,t: word; Captions: string);
begin
  // Create TLabel
    Labels := TLabel.Create(frmCreateTable1);
    with Labels do
    begin
      Left := l;
      Top := t;
      Parent := frmCreateTable1.ScrollBox1;
      Caption := Captions;
    end;
end;
procedure CreateComponents(Ctrl1: TComponentClass; CtrlName: string;
    StrArray: TStrArray; Txt: string; l,t,w: word);
var
  i: word;
  Contrl1: TControl;
begin
  // Create TControl
  for i := 1 to StrToInt(frmCreateTable1.TaleCountEdit.text) do
  begin
    Contrl1 := Ctrl1.Create(frmCreateTable1);
    with Contrl1 do
    begin
      Left := l;
      Top := (Height+t) * I;
      Width := w;
      Name := CtrlName + IntToStr(i);
      Parent := frmCreateTable1.ScrollBox1;
      StrArray[i] := Name;
      if(Contrl1 is TEdit)then
      with (Contrl1 as TEdit) do
      begin
        if (Contrl1 as TEdit).Name = 'FieldName' + IntToStr(i) then
         Text := Txt + IntToStr(i)
         else Text := Txt;
      end;
      if(Contrl1 is TComboBox)then
      with (Contrl1 as TComboBox)do
      begin
       Text := Txt;
       if Name = 'cbType' + IntToStr(i) then begin
        Items := Strings;
        OnChange := frmCreateTable1.CombBxChange;
        ItemIndex := 0;  ////////////////////
          
       end else
       begin
         Items := Strings1;
         OnChange := frmCreateTable1.CombBxChangeNULL;
       end;
      end;
      if(Contrl1 is TCheckBox)then
      with (Contrl1 as TCheckBox)do begin
        Caption := 'Index';
        OnClick := frmCreateTable1.CheckBoxsClick;
      end;
    end;
  end;
end;

procedure TfrmCreateTable1.BitBtn1Click(Sender: TObject);
var
  iii3: Integer;
  abc: word;
  //NamesFields,TypeField, SizeField, ValueNull, keyField: string;
begin

  GroupBox1.Visible := false;
  abc := 50;
  CreateLabels(Label1, abc+40,10, NamesFields);
  SetLength(ArrayFieldName, StrToInt(frmCreateTable1.TaleCountEdit.text)+1);
  CreateComponents(TEdit,'FieldName',ArrayFieldName,'FieldName',abc,10,195);
  CreateLabels(Label1, abc+225,10, TypeField);   //285
  SetLength(StrArraycbBox, StrToInt(frmCreateTable1.TaleCountEdit.text)+1);
  CreateComponents(TComboBox,'cbType',StrArraycbBox,Text1,abc+205,5,100); //265
  CreateLabels(Label1, abc+310,10, SizeField); //370
  SetLength(StrArrayCount, StrToInt(frmCreateTable1.TaleCountEdit.text)+1);
  CreateComponents(TEdit,'edSize',StrArrayCount,'0',abc+310,10,61); //370
  CreateLabels(Label1, abc+400,10, ValueNull);
  SetLength(StrArraycbBoxNULL, StrToInt(frmCreateTable1.TaleCountEdit.text)+1);
  CreateComponents(TComboBox,'cbNULL',StrArraycbBoxNULL,'NULL',abc+380,5,100);
  CreateLabels(Label1, abc+500,10, keyField);
  SetLength(StrArraychbIndex, StrToInt(frmCreateTable1.TaleCountEdit.text)+1);
  CreateComponents(TCheckBox,'chbNULL',StrArraychbIndex,'Index',abc+490,15,100);
  iii3:= StrToInt(frmCreateTable1.TaleCountEdit.text);
  if iii3 >= 29 then
  ScrollBox1.VertScrollBar.Range := 1500
  else if iii3 >= 45 then
  ScrollBox1.VertScrollBar.Range := 2500;
  //btnCreateTable.Enabled := true;
  bool1 := true;
  ScrollBox1.VertScrollBar.Position := 427;
  ScrollBox1.VertScrollBar.Position := 0;
end;

procedure TfrmCreateTable1.btnCreateTableClick(Sender: TObject);
var i: integer;
  //s: string;
  Strings2: TStrings;
begin

  if s12 <> '' then s11 := ',CONSTRAINT FK'+TableNamesEdit.Text+' PRIMARY KEY ('+s12+'));'
  else s11 := ');';
  Strings2:= TStringList.Create;
  try
 with Strings2 do  // Memo1.Lines
 begin
  Clear;
  Add('   CREATE TABLE '+TableNamesEdit.Text+'(');

 for i := 1 to StrToInt(TaleCountEdit.text)-1 do
 begin
  //s := TComboBox(FindComponent(StrArraycbBox[i])).Text;
 // if s = 'TEXT' then
  if proCIndPard(TComboBox(FindComponent(StrArraycbBox[i])).Text) then
  Add('   '+TEdit(FindComponent(ArrayFieldName[i])).Text+
  ' '+TComboBox(FindComponent(StrArraycbBox[i])).Text+'('+TEdit(FindComponent(StrArrayCount[i])).Text+')'+sdNULL12[i]+',')
  else
    Add('   '+TEdit(FindComponent(ArrayFieldName[i])).Text+
  ' '+TComboBox(FindComponent(StrArraycbBox[i])).Text+''+sdNULL12[i]+',');
 end;

  //if TComboBox(FindComponent(StrArraycbBox[i])).Text = 'TEXT' then
  if proCIndPard(TComboBox(FindComponent(StrArraycbBox[i])).Text) then
  Add('   '+TEdit(FindComponent(ArrayFieldName[i])).Text+
  ' '+TComboBox(FindComponent(StrArraycbBox[i])).Text+'('+TEdit(FindComponent(StrArrayCount[i])).Text+')'+sdNULL12[i]+'')
  else
    Add('   '+TEdit(FindComponent(ArrayFieldName[i])).Text+
  ' '+TComboBox(FindComponent(StrArraycbBox[i])).Text+''+sdNULL12[i]+'');
    Add('   '+s11);
 end;

 Form1.Memo1.Lines := Strings2;
 finally
   Strings2.Free;
 end;

frmCreateTable1.Close;
end;

function TfrmCreateTable1.proCIndPard(aStr1: string): boolean;
type
  bbb3 = (ftAutoInc,ftCurrency,ftSmallint,ftInteger,ftDate,ftTime,
    ftBoolean,ftFloat);
  aa2 = (TEXT,ftString,ftMemo,ftFmtMemo,ftGraphic,ftBlob,ftBCD,ftBytes,
    varchar,char);
const
  Cb3: array[0..7] of string = ('ftAutoInc','ftCurrency','ftSmallint',
  'ftInteger','ftDate','ftTime','ftBoolean','ftFloat');
  Ca2: array[0..11] of string = ('TEXT','ftString','ftMemo','ftFmtMemo',
  'ftGraphic','ftBlob','ftBCD','ftBytes','varchar','char','nvarchar','nchar');
var
  i: integer;
begin
  for i := 0 to high(Ca2) do
    if aStr1 = Ca2[i] then begin
      Result := true;
      Exit;
    end else Result := false;
end;
procedure TfrmCreateTable1.CombBxChange(Sender: TObject);
var i: integer;
begin
  for i := 1 to StrToInt(TaleCountEdit.text) do
    if not proCIndPard(TComboBox(FindComponent(StrArraycbBox[i])).Text) then
      TEdit(FindComponent(StrArrayCount[i])).Enabled := false
    else TEdit(FindComponent(StrArrayCount[i])).Enabled := true;
    //TComboBox(FindComponent(StrArraycbBox[i])).Text <> 'TEXT'
end;

procedure TfrmCreateTable1.TableNamesEditChange(Sender: TObject);
begin
  BitBtn1.Enabled := true;
end;

procedure TfrmCreateTable1.CheckBoxsClick(Sender: TObject);
var i: integer;
begin
  s12 := '';
  if TCheckBox(FindComponent(StrArraychbIndex[1])).Checked then
    s12 := TComboBox(FindComponent(ArrayFieldName[1])).Text
  else  s12 := '';
  for i := 2 to StrToInt(TaleCountEdit.text) do
    if (TCheckBox(FindComponent(StrArraychbIndex[i])).Checked) then
      s12 := s12 + ', '+TComboBox(FindComponent(ArrayFieldName[i])).Text
    else s12 := s12 +'';
    if not TCheckBox(FindComponent(StrArraychbIndex[1])).Checked then
      Delete(s12,1,2);
  if ComboBox1.Text <> 'Paradox' then
    btnCreateTable.Enabled := true;
 
 // btnCreateTable2.Enabled := true;
  //caption := s12;
end;

procedure TfrmCreateTable1.chkbEnglishArabClick(Sender: TObject);
begin
  prochkbEnglishArab(chkbEnglishArab.Checked);
  chkbEnglishArab.Caption := ACaptio;
  Label1.Caption := lblLabel1Caption;
  Label2.Caption := lblLabel2Caption;
  Label3.Caption := lblLabel3Caption;
end;

procedure TfrmCreateTable1.CombBxChangeNULL(Sender: TObject);
var i: integer;
begin
  SetLength(sdNULL12, StrToInt(TaleCountEdit.text)+1);
  for i := 1 to StrToInt(TaleCountEdit.text) do
    sdNULL12[i] := '';
  for i := 1 to StrToInt(TaleCountEdit.text) do
    if TComboBox(FindComponent(StrArraycbBoxNULL[i])).Text <> 'NULL' then
      sdNULL12[i] := sdNULL12[i]+' NOT NULL'
    else sdNULL12[i] := sdNULL12[i]+'';  //NULL
  if ComboBox1.Text <> 'Paradox' then
    btnCreateTable.Enabled := true;
end;

procedure TfrmCreateTable1.FormDestroy(Sender: TObject);
begin
  frmCreateTable1.GroupBox1.Free;
  frmCreateTable1.TableNamesEdit.Free;
  frmCreateTable1.TaleCountEdit.Free;
  frmCreateTable1.BitBtn1.Free;
  frmCreateTable1.Label1.Free;
  frmCreateTable1.Label2.Free;
  frmCreateTable1.Panel1.Free;
  frmCreateTable1.Panel2.Free;
  frmCreateTable1.btnCreateTable.Free;
  frmCreateTable1.ScrollBox1.Free;
  frmCreateTable1.Memo1.Free;
  frmCreateTable1.BitBtn2.Free;

 Strings.Free;
 Strings1.Free;
end;

procedure TfrmCreateTable1.FormActivate(Sender: TObject);
var i: integer;
begin
 s11 := ');';
 s12 := '';
 TaleCountEdit.Text := '3';
  SetLength(sdNULL12, StrToInt(TaleCountEdit.text)+1);
  for i := 1 to StrToInt(TaleCountEdit.text) do
    sdNULL12[i] := ''; //NULL
  bool1 := false;

  Strings1:= TStringList.Create;
  Strings1.Add('NULL');
  Strings1.Add('NOT NULL');
end;

procedure TfrmCreateTable1.btnCreateTableParadoxClick(Sender: TObject);
var
  i: integer;
begin
  with Memo1.Lines do begin
    Clear;
    Add(' with Table1 do begin');
    Add('  Active := False;');
    Add('  DatabaseName := '''';');
    Add('  TableType := ttParadox;');
    Add('  TableName := '''+TableNamesEdit.Text+''';');
    Add('  if not Table1.Exists then begin');
    Add('    with FieldDefs do begin');
    Add('     Clear;');
    
    for i := 1 to StrToInt(TaleCountEdit.text) do begin
    Add('     with AddFieldDef do begin');
    Add('      Name := '''+TEdit(FindComponent(ArrayFieldName[i])).Text+''';');
    Add('      DataType := '+TComboBox(FindComponent(StrArraycbBox[i])).Text+';');
    Add('      Size := '+TEdit(FindComponent(StrArrayCount[i])).Text+';');
    Add('     end;');
    end;
    Add('   end;');
    
    Add('  with IndexDefs do begin');
    Add('   Clear;');
    for i := 1 to StrToInt(TaleCountEdit.text) do
      if (TCheckBox(FindComponent(StrArraychbIndex[i])).Checked) then begin
    Add('   with AddIndexDef do begin');
    Add('   Name := '''';');
    Add('   Fields := '''+TComboBox(FindComponent(ArrayFieldName[i])).Text+''';');
    Add('   Options := [ixPrimary];');
    Add('  end;');
    end;
    
    Add(' end;');
    Add('   CreateTable;');
    Add('  end;');
    Add(' end;');

  end;
  Panel1.Visible := false;
end;
{
procedure TfrmCreateTable1.proCreateFieldParadox(Name1, DType: string;
  DSize: integer);
begin
  with Memo1.Lines do begin
    Clear;
    Add('');

  end;
end;

procedure TfrmCreateTable1.proCreateIndexParadox(Name1, DType: string;
  DSize: integer);
begin

end;
}
procedure TfrmCreateTable1.ComboBox1DropDown(Sender: TObject);
begin
  //Showmessage('ComboBox1 DropDown');
end;

procedure TfrmCreateTable1.ComboBox1Change(Sender: TObject);
begin
  Strings:= TStringList.Create;
  Strings.Clear;
  if combobox1.Text = 'Access' then begin
  Strings.Add('TEXT');
  Strings.Add('INTEGER');
  Strings.Add('Date');
  Strings.Add('DateTime');
  Strings.Add('Memo');
  Strings.Add('AutoIncrement');
  Strings.Add('Currency');
  Strings.Add('YesNo');
  Strings.Add('OLEObject');
  Text1 := 'TEXT';
  end else if combobox1.Text = 'SQL Server' then begin
	Strings.Add('varchar');
	Strings.Add('nvarchar');
	Strings.Add('char');
	Strings.Add('nchar');
	Strings.Add('int');
	Strings.Add('money');
	Strings.Add('float');
	Strings.Add('real');
	Strings.Add('datetime');
	Strings.Add('smalldatetime');
	Strings.Add('smallint');
	Strings.Add('smallmoney');
	Strings.Add('decimal');
	Strings.Add('image');
{
Strings.Add('numeric');
Strings.Add('bit');
Strings.Add('ntext');
Strings.Add('bigint');
Strings.Add('binary');
Strings.Add('sql_variant');
Strings.Add('text');
Strings.Add('timestamp');
Strings.Add('tinyint');
Strings.Add('uniqueidentifier');
Strings.Add('varbinary');
Strings.Add('varbinary');
Strings.Add('xml');
}
  Text1 := 'nvarchar';
  end else begin
  Strings.Add('ftAutoInc');
  Strings.Add('ftCurrency');
  Strings.Add('ftSmallint');
  Strings.Add('ftInteger');
  Strings.Add('ftBCD');
  Strings.Add('ftDate');
  Strings.Add('ftTime');
  Strings.Add('ftMemo');
  Strings.Add('ftFmtMemo');
  Strings.Add('ftGraphic');
  Strings.Add('ftBlob');
  Strings.Add('ftBoolean');
  Strings.Add('ftFloat');
  Strings.Add('ftBytes');
  Strings.Add('ftString');
  Text1 := '';
  end;
  BitBtn1.Enabled := true;
{
Strings.Add('varchar(50)');
Strings.Add('varchar(MAX)');
Strings.Add('nvarchar(50)');
Strings.Add('nvarchar(MAX)');
Strings.Add('char(10)');
Strings.Add('nchar(10)');
Strings.Add('int');
Strings.Add('money');
Strings.Add('float');
Strings.Add('real');
Strings.Add('datetime');
Strings.Add('smalldatetime');
Strings.Add('smallint');
Strings.Add('smallmoney');
Strings.Add('decimal(18, 0)');
Strings.Add('image');
Strings.Add('numeric(18, 0)');
Strings.Add('bit');
Strings.Add('ntext');
Strings.Add('bigint');
Strings.Add('binary(50)');
Strings.Add('sql_variant');
Strings.Add('text');
Strings.Add('timestamp');
Strings.Add('tinyint');
Strings.Add('uniqueidentifier');
Strings.Add('varbinary(50)');
Strings.Add('varbinary(MAX)');
Strings.Add('xml');
}
end;

procedure TfrmCreateTable1.ComboBox1Exit(Sender: TObject);
begin
  if ComboBox1.Text = 'Paradox' then
  begin

    btnCreateTable.Enabled := false;
    btnCreateTableParadox.Enabled := true;
  end else
  begin

    btnCreateTableParadox.Enabled := false;
  end;
end;

end.
