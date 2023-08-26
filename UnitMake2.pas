unit UnitMake2;

interface

uses
  {
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Buttons
  ,DB, ADODB, ComCtrls, Menus, UnitAddString;
         // DBTables,
 }
   Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Data.Win.ADODB, Data.DB,
  UnitAddString, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, UnitMake, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btnCopySelect: TBitBtn;
    btnDBGridColumns: TBitBtn;
    btnCreateTable: TBitBtn;
    ListBoxSearch: TListBox;
    btnCreateComponentsOnForm: TBitBtn;
    btnClose: TBitBtn;
    btnCreateComponentsOnDataModule: TBitBtn;
    btnCreateDBGrid: TBitBtn;
    btnCreateBitBtn: TBitBtn;
    btnExecutessQueryss1: TBitBtn;
    btnCreateTBitBtnFindandTEdit: TBitBtn;
    btnExaforSch: TBitBtn;
    btnCreateProperties: TBitBtn;
    btnCreateUnit: TBitBtn;
    BitBtn2: TBitBtn;
    ReplaceDialog1: TReplaceDialog;
    btnReplaceText2: TBitBtn;
    BitBtn3: TBitBtn;
    MainMenu1: TMainMenu;
    LanguageofPascal1: TMenuItem;
    LoopsofPascal1: TMenuItem;
    ConditionofPascal1: TMenuItem;
    MenuFor1: TMenuItem;
    MenuWhile1: TMenuItem;
    MenuRepeat1: TMenuItem;
    MenuIf1: TMenuItem;
    MenuCaseof1: TMenuItem;
    ProcedureofPascal1: TMenuItem;
    FonctionofPascal1: TMenuItem;
    MenuRecord1: TMenuItem;
    SupMenurecords1: TMenuItem;
    DateRecord1: TMenuItem;
    MenuEmployeeRecord1: TMenuItem;
    MenuPersonRecord1: TMenuItem;
    MenuFigureRecord1: TMenuItem;
    MenuArrays1: TMenuItem;
    SubMenuArraySimple1: TMenuItem;
    Submenuarraymulti1: TMenuItem;
    MenusDelphi1: TMenuItem;
    MenuProperty1: TMenuItem;
    chkbEnglishArabi: TCheckBox;
    GroupBox1: TGroupBox;
    btnClear: TBitBtn;
    btnConnection1: TBitBtn;
    btnRegistre: TBitBtn;
    btnViewAll: TBitBtn;
    btnInsert: TBitBtn;
    btnUpdate: TBitBtn;
    btnClearAll: TBitBtn;
    btnCodeChange: TBitBtn;
    btnDelete: TBitBtn;
    btnSearch: TBitBtn;
    btnAddImage: TBitBtn;
    FontDialog1: TFontDialog;
    Tools1: TMenuItem;
    Font1: TMenuItem;
    Color1: TMenuItem;
    btnOpenDialog: TBitBtn;
    BtnCreateDBNavigator1: TBitBtn;
    ArrayUseInputQuery1: TMenuItem;
    AdvancedDelphi1: TMenuItem;
    CreateUnit1: TMenuItem;
    AddToUnitandFromUnitToFormView1: TMenuItem;
    AddToDatabaseandSaveandFromDatabaseToUnit1: TMenuItem;
    procedure btnConnection1Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCopySelectClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDBGridColumnsClick(Sender: TObject);
    procedure btnCreateTableClick(Sender: TObject);
    procedure ListBoxSearchClick(Sender: TObject);
    procedure btnRegistreClick(Sender: TObject);
    procedure btnViewAllClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure btnCreateComponentsOnFormClick(Sender: TObject);
    procedure btnCreateComponentsOnDataModuleClick(Sender: TObject);
    procedure btnCreateDBGridClick(Sender: TObject);
    procedure btnCreateBitBtnClick(Sender: TObject);
    procedure btnCodeChangeClick(Sender: TObject);
    procedure btnAddImageClick(Sender: TObject);
    procedure btnOpenDialogClick(Sender: TObject);
    procedure btnExecutessQueryss1Click(Sender: TObject);
    procedure btnCreateTBitBtnFindandTEditClick(Sender: TObject);
    procedure btnExaforSchClick(Sender: TObject);
    procedure btnCreatePropertiesClick(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MenuFor1Click(Sender: TObject);
    procedure MenuIf1Click(Sender: TObject);
    procedure MenuWhile1Click(Sender: TObject);
    procedure MenuRepeat1Click(Sender: TObject);
    procedure MenuCaseof1Click(Sender: TObject);
    procedure ProcedureofPascal1Click(Sender: TObject);
    procedure FonctionofPascal1Click(Sender: TObject);
    procedure btnReplaceText2Click(Sender: TObject);
    procedure SupMenurecords1Click(Sender: TObject);
    procedure DateRecord1Click(Sender: TObject);
    procedure MenuEmployeeRecord1Click(Sender: TObject);
    procedure MenuPersonRecord1Click(Sender: TObject);
    procedure MenuFigureRecord1Click(Sender: TObject);
    procedure SubMenuArraySimple1Click(Sender: TObject);
    procedure Submenuarraymulti1Click(Sender: TObject);
    procedure MenuProperty1Click(Sender: TObject);
    procedure chkbEnglishArabiClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure GroupBox1MouseLeave(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnCreateDBNavigator1Click(Sender: TObject);
    procedure ArrayUseInputQuery1Click(Sender: TObject);
    procedure CreateUnit1Click(Sender: TObject);
    procedure FromDatabaseToUnit1Click(Sender: TObject);
    procedure AddToUnitandFromUnitToFormView1Click(Sender: TObject);
    procedure AddToDatabaseandSaveandFromDatabaseToUnit1Click(Sender: TObject);
  private
    procedure WriteToMemo;
    procedure WriteToMemos2;
    function GetFieldss(s1: string): string;
    function UPDATE_Table_SET: string;
    procedure CloseClearAddSQL(ss1,ss2: string);
    procedure ProcActiveButtons(AValue: string);
  public
  end;

type
  TFieldArray = Array of string;
  TCells1= array of string; //[0..4, 0..2]

var
  Form1: TForm1;
  FindDeleteUpdate: string;
  j,abc, cba, abc1, abc2: word;
  sSearche: string;
  TableQury: string;
  TDBIm: string;
  Fonts1: TFontName;
  boolNotRed1 : boolean;
  boolsSearche1: boolean;
  StringList1: TStringList;
  Cells1: TCells1;
  StrUnit01, StrTableName01: string;
  Top01: integer;
  Add1, Update1, Delete1, Clear1,Close1: string;
  DBGridTop, DBNavigatorTop : integer;

implementation

uses UnitNotForm1, UnitCreateTable;

{$R *.dfm}

procedure TForm1.btnConnection1Click(Sender: TObject);
begin
  ProcActiveButtons('Accebt');
  with Memo1.Lines do
  begin
    Clear;
    with frm1.cbBoxConnectionType do
    if(ItemIndex = 0)or(ItemIndex = 2)then
    begin
      if frm1.chbAdoFireDAC.Checked then
      begin
       // Add(' with '+frm1.cbAdoConnection.Text+' do begin');
        Add(' if not '+frm1.cbAdoConnection.Text+'.Connected then');
        Add(' '+frm1.cbAdoConnection.Text+'.ConnectionString := '''+ConnStrings1+''';');
        Add(' '+frm1.cbAdoConnection.Text+'.LoginPrompt := false;');
        Add(' '+TableQury+'.Connection := '+frm1.cbAdoConnection.Text+';');
        if(frm1.ListBoxFields.Count <> 0)then
        begin
          if(frm1.AdoTableAdoQuery is TAdoTable)then
          Add(' '+TableQury+'.TableName := '''+TableName1+''';')
          else
          begin
            Add(' '+TableQury+'.Close;');
            Add(' '+TableQury+'.SQL.Clear;');
            Add(' '+TableQury+'.SQL.Add(''SELECT * FROM '+TableName1+''');');
          end;
          Add(' '+TableQury+'.Open;');

        end;
      end
      else
      //-------------------------------------FireDAc----------------
      begin

        Add(' '+frm1.cbAdoConnection.Text+'.LoginPrompt := false;');
        Add(' '+frm1.cbAdoConnection.Text+'.Close;');
        Add(' '+frm1.cbAdoConnection.Text+'.Params.Clear;');
        Add(' '+frm1.cbAdoConnection.Text+'.Params.Add(''DriverID=MSAcc'');');
        Add(' '+frm1.cbAdoConnection.Text+'.Params.Add(''StringFormat=sfUnicode'');');
        Add(' '+frm1.cbAdoConnection.Text+'.Params.Add(''Database='+Database1+''');');

        if frm1.edtPassword.Text <> '' then
        Add(' '+frm1.cbAdoConnection.Text+'.Params.Add(''Password='+frm1.edtPassword.Text+''');');
        Add(' '+frm1.cbAdoConnection.Text+'.Open;');

        Add(' '+TableQury+'.Connection := '+frm1.cbAdoConnection.Text+';');

        if(frm1.ListBoxFields.Count <> 0)then
        begin
          if(frm1.FDTableFDQuery is TFDTable)then
          Add(' '+TableQury+'.TableName := '''+TableName1+''';')
          else
          begin
            Add(' '+TableQury+'.Close;');
            Add(' '+TableQury+'.SQL.Clear;');
            Add(' '+TableQury+'.SQL.Add(''SELECT * FROM '+TableName1+''');');
          end;
          Add(' '+TableQury+'.Open;');
        end;
      end;

      //-------------------------------------FireDAc----------------

    end

      else if frm1.cbBoxConnectionType.ItemIndex = 1 then
        begin
        Add(' '+TableQury+'.Active := False;');
        Add(' try');
        Add(' '+TableQury+'.DatabaseName := '''+frm1.cbBoxDatabaseType1.Text+''';');
        Add(' except');
        Add(' on EDatabaseError do');
        Add(' '+TableQury+'.DatabaseName := '''+ExtractFileDir(TableName1)+''';');
        Add(' end;');
        {
        if(frm1.TableQuery1 is TTable)then // DeleteExtension();
        Add(' '+TableQury+'.TableName := '''+ExtractFileName(TableName1)+''';')
        else
        begin
          Add(' '+TableQury+'.Close;');
          Add(' '+TableQury+'.SQL.Clear;');
          Add(' '+TableQury+'.SQL.Add(''SELECT * FROM '+DeleteExtension(ExtractFileName(TableName1))+''');');
        end;
        }
      Add(' '+TableQury+'.Active := True;');
      end;
    Add(' '+frm1.cbDatasource.Text+'1.DataSet := '+frm1.cbAdoTable.Text+';');
    Add(' '+frm1.cbDBGrid.Text+'1.DataSource := '+frm1.cbDatasource.Text+'1;');
   // Add('  end; // end with');
  end;
  
end;

procedure TForm1.WriteToMemo;
var i: integer;
begin
  if(frm1.AdoTableAdoQuery is TAdoTable)or
    (frm1.FDTableFDQuery is TFDTable)
    //or(frm1.TableQuery1 is TTable)
    then
  begin
  for i := 0 to frm1.StringGrid1.RowCount-1 do
   with Memo1.Lines, frm1.StringGrid1 do

    if Cells[2,i] <> '' then
    begin
      //

      Add('   '+TableQury+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := '+
      tconv1[i]+Cells[1,i]+StrTxet1[i]+tconv2[i]+';');


      //
    //  caption := cbAdoTable.Text+'.FieldByName('''+StringGrid1.Cells[0,2]+''')'+
    //  StringGrid1.Cells[2,2]+' := '+tconv1[2]+StringGrid1.Cells[1,2]+Txet1+tconv2[2];

    {
      if (Cells[2,i] = '.AsDateTime')and(Cells[4,i] = 'TDateTimePicker') then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := '+Cells[1,i]+'.Date;')
      else if (Cells[2,i] = '.AsDateTime') then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := StrToDate('+Cells[1,i]+'.Text);')
      else if Cells[2,i] = '.AsInteger' then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := StrToInt('+Cells[1,i]+'.Text);')

      else if (Cells[2,i] = '.AsSmallInt') then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := StrToIntDef('+Cells[1,i]+'.Text);')

      else if (Cells[2,i] = '.AsWord') then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := StrToIntDef('+Cells[1,i]+'.Text);')

      else if (Cells[2,i] = '.AsFloat') then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := StrToFloat('+Cells[1,i]+'.Text);')

      else if (Cells[2,i] = '.AsCurrency') then
      Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := StrToCurr('+Cells[1,i]+'.Text);')
  
      else if (Cells[2,i] = '.AsBCD') then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := StrToBcd('+Cells[1,i]+'.Text);')

      else if Cells[2,i] = '.AsBoolean' then
        Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := '+Cells[1,i]+'.Checked;')
      else Add('   '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := '+Cells[1,i]+'.Text;');
      }
    end;

  end else
  begin
    if frm1.chbAdoFireDAC.Checked then
    begin
      for i := 0 to frm1.StringGrid1.RowCount-1 do
      with Memo1.Lines, frm1.StringGrid1 do
        Add('   '+TableQury+'.Parameters.ParamValues['''+Cells[0,i]+'''] := '+Cells[1,i]+'.Text;');
    end
    else
    begin
      for i := 0 to frm1.StringGrid1.RowCount-1 do
      with Memo1.Lines, frm1.StringGrid1 do
        Add('   '+TableQury+'.Params.ParamValues['''+Cells[0,i]+'''] := '+Cells[1,i]+'.Text;');
    end;
  end;

end;

procedure TForm1.btnInsertClick(Sender: TObject);
begin
  ProcActiveButtons('Accebt');
  with Memo1.Lines do
  begin
  Clear;
  //Add(' with '+sd1+' do begin');
    Add(' btnInsert.Enabled := false;');
   if(frm1.AdoTableAdoQuery is TAdoTable)or
    (frm1.FDTableFDQuery is TFDTable)
  //or(frm1.TableQuery1 is TTable)
  then
  Add('   '+TableQury+'.Append; //  Insert')
  else begin
  CloseClearAddSQL('''INSERT INTO '+TableName1+'( '+GetFieldss('')+' )''',
   ''' VALUES ( '+GetFieldss(':')+' )''');
  end;
  WriteToMemo;
    if(frm1.AdoTableAdoQuery is TAdoTable)or
      (frm1.FDTableFDQuery is TFDTable)
  //or(frm1.TableQuery1 is TTable)
  then
    Add('   '+TableQury+'.Post;')
  else Add('  '+TableQury+'.ExecSQL;');
  //Add(' end; // end with');
  Add(' // btnUpdate.Enabled := false;');
  Add(' // btnDelete.Enabled := false;');
  end;
  BitBtn2.Enabled := true;
  btnInsert.Font.Color := clWindowText;
  btnUpdate.Font.Color := clRed;
  GroupBox1.Font.Color := clWindowText;
  GroupBox1.Color := clBtnFace;
  boolNotRed1 := false;
end;

procedure TForm1.btnUpdateClick(Sender: TObject);
begin
  ProcActiveButtons('Accebt');
  FindDeleteUpdate := 'Update';
  ListBoxSearch.Items := frm1.StringGrid1.Cols[0];
  if ListBoxSearch.Items.Count <= 0 then Exit;
  Memo1.Lines.Clear;
  //Memo1.Lines.Add(' with '+sd1+'1 do begin');
  with Memo1.Lines do
  if(frm1.AdoTableAdoQuery is TAdoTable)or
    (frm1.FDTableFDQuery is TFDTable)
   // or(frm1.TableQuery1 is TTable)
    then
  begin
    Add('   '+TableQury+'.Edit; //  Update');
    WriteToMemo;
    Add('   '+TableQury+'.Post;');
   // Add(' end; // end with');

  end else
  ListBoxSearch.Visible := true;
  Memo1.Lines.Add(' // btnUpdate.Enabled := false;');
  Memo1.Lines.Add(' // btnInsert.Enabled := false;');
  Memo1.Lines.Add(' // btnDelete.Enabled := false;');
  BitBtn2.Enabled := true;
  btnUpdate.Font.Color := clWindowText;
  btnClear.Font.Color := clRed;
end;

procedure TForm1.btnDeleteClick(Sender: TObject);
begin
  ListBoxSearch.Items := frm1.StringGrid1.Cols[0];
  FindDeleteUpdate := 'Delete';
  if ListBoxSearch.Items.Count <= 0 then Exit;
  Memo1.Lines.Clear;
 // Memo1.Lines.Add(' with '+sd1+'1 do begin');
  with Memo1.Lines do
  if(frm1.AdoTableAdoQuery is TAdoTable)or
    (frm1.FDTableFDQuery is TFDTable)
    //or(frm1.TableQuery1 is TTable)
    then
  begin
  Add(' if MessageDlg(''Are you delete the active record '', mtConfirmation, [mbYes, mbNo], 0) = mrYes then');
  Add('   '+TableQury+'.Delete; //  Delete');
 // Add(' end; // end with');


  end else
  ListBoxSearch.Visible := true;
  Memo1.Lines.Add(' // btnUpdate.Enabled := false;');
  Memo1.Lines.Add(' // btnInsert.Enabled := false;');
  Memo1.Lines.Add(' // btnDelete.Enabled := false;');
  BitBtn2.Enabled := true;
  btnDelete.Font.Color := clWindowText;
  btnSearch.Font.Color := clRed;
end;

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  ListBoxSearch.Items := frm1.StringGrid1.Cols[0];
  if ListBoxSearch.Items.Count <= 0 then Exit;
  Memo1.Lines.Clear;
  Memo1.Lines.Add(' // btnInsert.Enabled := false;');
  Memo1.Lines.Add(' // btnDelete.Enabled := true;');
  Memo1.Lines.Add(' // btnUpdate.Enabled := true;');

  btnSearch.Font.Color := clWindowText;
  if boolsSearche1 = true then
  begin
    ListBoxSearch.Visible := true;
    FindDeleteUpdate := 'Find';
    ListBoxSearch.Font.Color := clRed;
  end
  else
  begin
    btnCreateDBGrid.Font.Color := clRed;
    //ListBoxSearch.OnClick(Sender);
    Memo1.Text := StringList1.Text;
    StringList1.Clear;
    boolsSearche1 := true;
  end;

  BitBtn2.Enabled := true;

end;

procedure TForm1.btnCopySelectClick(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.CopyToClipboard;
end;

procedure TForm1.btnClearClick(Sender: TObject);
var i: integer;
begin
  with Memo1.Lines, frm1.StringGrid1 do
  begin
  Clear;
  Add(' //  Clear');
  for i := 0 to RowCount-1 do
    if(Cells[4,i] = 'TMemo')or(Cells[4,i] = 'TEdit')or
      (Cells[4,i] = 'TComboBox')then
      Add(' '+Cells[1,i]+'.Clear;');
  end;
  BitBtn2.Enabled := true;
  btnClear.Font.Color := clWindowText;
  btnDelete.Font.Color := clRed;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
 TableQury := '';
 btnExecutessQueryss1.Enabled := false;
 btnExecutessQueryss1.Visible := false;
 TDBIm := '';
 boolNotRed1 := true;
 boolsSearche1 := true;
 StringList1:= TStringList.Create;
 Add1 := 'Insert';
 Update1 := 'Update';
 Delete1 := 'Delete';
 Clear1 := 'Clear';
 Close1 := '&Close';
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  StringList1.Free;
end;

procedure TForm1.FromDatabaseToUnit1Click(Sender: TObject);
var
  ss1: string;
  I: integer;
begin
  // FromDatabaseToUnit1.Checked := true;
  ss1 := '  // From Database to Unit';
  Memo1.Lines.Clear;
  btnViewAllClick(Sender);

  ReplaceDialog1.FindText := 'procedure ViewAll;';
  ReplaceDialog1.ReplaceText := '';
  ReplaceDialog1Replace(ReplaceDialog1);

    ReplaceDialog1.FindText := 'with  do begin // Add Form between ''with'' and ''do''';
  ReplaceDialog1.ReplaceText := '';
  ReplaceDialog1Replace(ReplaceDialog1);

  ReplaceDialog1.FindText := 'begin';
  ReplaceDialog1.ReplaceText := '';
  ReplaceDialog1Replace(ReplaceDialog1);

  with Memo1.Lines do
  begin
   // Clear;
    Strings[0] := 'procedure FromDatabaseToUnit;';
    Strings[1] := 'begin';
    Strings[2] := ' '+ss1;
    Strings[3] := ' with class'+StrTableName01+' do begin // Add Form between ''with'' and ''do''';
  end;

  ReplaceDialog1.FindText := 'ontrol.Text';
  ReplaceDialog1.ReplaceText := '';
  ReplaceDialog1Replace(ReplaceDialog1);

  ReplaceDialog1.FindText := 'C';
  ReplaceDialog1.ReplaceText := 'p';
  ReplaceDialog1Replace(ReplaceDialog1);

  for I := Low(CTypeCovrt2) to High(CTypeCovrt2) do
  begin
    ReplaceDialog1.FindText := ''')'+CTypeCovrt2[i];
    ReplaceDialog1.ReplaceText := '';
    ReplaceDialog1Replace(ReplaceDialog1);
  end;

end;

procedure TForm1.btnDBGridColumnsClick(Sender: TObject);
var
  i,j: integer;
begin
  j := 0;
  memo1.Lines.Clear;
  with Memo1.Lines do begin  //, frm1.cbDBGrid.Text
  Add(' with '+frm1.cbDBGrid.Text+'1 do begin');
  Add(' Columns[0].Title.caption := '''';');
  for i := j to frm1.StringGrid1.RowCount-1 do
  Add(' Columns['+inttostr(i+1)+'].Title.caption := '''+frm1.StringGrid1.Cells[3,i]+''';');
  Add(' end;');
end;
end;

function TForm1.GetFieldss(s1: string): string;
var i: integer;
begin
  with frm1.StringGrid1 do
  begin
  Result := s1+Cells[0,0];
  for i := 1 to RowCount-1 do
    Result := Result+', '+s1+Cells[0,i];
  end;
end;

procedure TForm1.GroupBox1MouseLeave(Sender: TObject);
begin
  if boolNotRed1 then
  begin
  GroupBox1.Font.Color := clWindowText;
  GroupBox1.Color := clBtnFace;
  btnInsert.Font.Color := clRed;
  end;
end;

function TForm1.UPDATE_Table_SET: string;
var i: integer;
begin
  with frm1.StringGrid1 do
  begin
  Result := Cells[0,0]+' = :'+Cells[0,0];
  for i := 1 to RowCount-1 do
    Result := Result+', '+Cells[0,i]+' = :'+Cells[0,i];
  end;
end;

procedure TForm1.btnCreateTableClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  frmCreateTable1.ShowModal;

  btnCreateTable.Enabled := false;
  btnExecutessQueryss1.Enabled := true;
  btnExecutessQueryss1.Visible := true;
end;

procedure TForm1.ListBoxSearchClick(Sender: TObject);
begin
  if boolsSearche1 = true then
    sSearche := ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex];
  with Memo1.Lines do
  begin
  if FindDeleteUpdate = 'Find' then
    begin
  Add(' // TLocateOptions');// ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex]
  Add('   if not '+TableQury+'.Locate('''+sSearche+''','+
    sSearche+'Search.Text,[loCaseInsensitive, loPartialKey]) then');
  Add(' ShowMessage('' Non Trouve'');  //  Search');
  //Add(' ('' Non Trouve'');  //  Search');
    end

  else if FindDeleteUpdate = 'Update' then
    begin

   CloseClearAddSQL('''UPDATE '+TableName1+' SET '+UPDATE_Table_SET+'''',
     ''' WHERE '+ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex]+'=:paramSearch1''');

  if frm1.chbAdoFireDAC.Checked then
  Add('   '+TableQury+'.Parameters.ParamValues[''paramSearch1''] := '+
  ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex]+'Search.Text;')
  else // for DireDAC
  Add('   '+TableQury+'.ParamByName(''paramSearch1'').AsString := '+
  ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex]+'Search.Text;');

  WriteToMemo;
  Add('  '+TableQury+'.ExecSQL;');

    end

  else if FindDeleteUpdate = 'Delete' then
    begin
    CloseClearAddSQL('''DELETE FROM '+TableName1+'''',
     ''' WHERE '+ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex]+'=:paramDelete1''');
    if frm1.chbAdoFireDAC.Checked then
  Add('   '+TableQury+'.Parameters.ParamValues[''paramDelete1''] := '+
  ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex]+'Search.Text;')
    else // for DireDAC
  Add('   '+TableQury+'.ParamByName(''paramDelete1'').AsString := '+
  ListBoxSearch.Items.Strings[ListBoxSearch.ItemIndex]+'Search.Text;');
   Add('  '+TableQury+'.ExecSQL;');
    end;
  //Add(' end; // end with');
  end;
  StringList1.Text := Memo1.Text;
  ListBoxSearch.Visible := false;
  btnCreateTBitBtnFindandTEdit.Enabled := true;
  ListBoxSearch.Font.Color := clWindowText;
  btnCreateTBitBtnFindandTEdit.Font.Color := clRed;
end;

procedure TForm1.btnRegistreClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  with Memo1.Lines do //, frm1.StringGrid1, frm1.cbAdoTable
  begin
  Add('procedure registre;');
  Add('begin');
  Add(' // begin with');
  Add(' with  do begin // Add Form between ''with'' and ''do''');
  WriteToMemo;
  Add(' end; // end with');
  Add('end;');
  end;
  BitBtn2.Enabled := true;
end;

procedure TForm1.btnViewAllClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  with Memo1.Lines, frm1.StringGrid1 do
  begin
  Add('procedure ViewAll;');
  Add('begin');
  Add(' // begin with');
  Add(' with  do begin // Add Form between ''with'' and ''do''');
  WriteToMemos2;
  Add(' end; // end with');
  Add('end;');
  end;
  BitBtn2.Enabled := true;
end;

procedure TForm1.chkbEnglishArabiClick(Sender: TObject);
begin
  with Form1 do
  begin
    if chkbEnglishArabi.Checked then
    begin
      //BiDiMode := bdRightToLeft;
      Font.Charset := DEFAULT_CHARSET;
      Font.Name := Fonts1;
      btnCreateComponentsOnDataModule.Caption := 'Create Components On Data Module';
      btnCreateComponentsOnForm.Caption := 'Create Components On Form';
      btnCreateDBGrid.Caption := 'Create TBGrid';
      BtnCreateDBNavigator1.Caption := 'Create TDBNavigator';
      btnConnection1.Caption := 'Connection';
      btnInsert.Caption := 'Insert';
      btnUpdate.Caption := 'Update';
      btnDelete.Caption := 'Delete';
      btnSearch.Caption := 'Search';
      btnClear.Caption := 'Clear';
      btnRegistre.Caption := 'Registre';
      btnViewAll.Caption := 'View All';
      btnClearAll.Caption := 'Clear All';
      btnCodeChange.Caption := 'Code Change';
      btnAddImage.Caption := 'Add Image';
      btnOpenDialog.Caption := 'Open Dialog';

      btnCreateTable.Caption := 'Create Table';
      btnExecutessQueryss1.Caption := 'Execute Query';
      btnDBGridColumns.Caption := 'DBGrid Columns';
      btnCreateBitBtn.Caption := 'Create TBitBtn Add, Update, Delete, Clear';
      btnCreateTBitBtnFindandTEdit.Caption := 'Create TBitBtn Find and TEdit';
      btnExaforSch.Caption := 'many example for Search';
      btnCreateProperties.Caption := 'Create Properties';
      btnCreateUnit.Caption := 'Create Unit';
      BitBtn2.Caption := 'Delphi to C++Builder';
      btnReplaceText2.Caption := 'Replace Text';
      btnClose.Caption := '&Close';
      btnCopySelect.Caption := 'Select and Copy';
      chkbEnglishArabi.Caption := 'English';
      Add1 := 'Insert';
      Update1 := 'Update';
      Delete1 := 'Delete';
      Clear1 := 'Clear';
      Close1 := '&Close';
    end
    else
    begin

      //frm1.BiDiMode := bdLeftToRight;    Label.Hint := '';
      Font.Charset := ARABIC_CHARSET;
      Font.Name := Fonts1;

      btnCreateComponentsOnDataModule.Caption := 'ÇäÔÇÁ ãßæäÇÊ ÇáÇÊÕÇá';
      btnCreateComponentsOnForm.Caption := 'ÇäÔÇÁ ãßæäÇÊ ÇáäãÌ';
      btnCreateDBGrid.Caption := 'ÇäÔÇÁ ÔÈßÉ';
      BtnCreateDBNavigator1.Caption := 'ÇäÔÇÁ ÇÏÇÉ ÊÍÑß';
      btnConnection1.Caption := 'äÕ ÇáÇÊÕÇá';
      btnInsert.Caption := 'ÇÖÇÝÉ';
      btnUpdate.Caption := 'ÊÚÏíá';
      btnDelete.Caption := 'ÍÐÝ';
      btnSearch.Caption := 'ÈÍË';
      btnClear.Caption := 'ãÓÍ';
      btnRegistre.Caption := 'ÇÌÑÇÁ ÊÓÌíá';
      btnViewAll.Caption := 'ÇÌÑÇÁ ÇáÚÑÖ';
      btnClearAll.Caption := 'ÇÌÑÇÁ ÇáãÓÍ';
      btnCodeChange.Caption := 'ÊÚÏíá ãÍÊæì ãÑÈÚ äÕ';
      btnAddImage.Caption := 'ÇÖÇÝÉ ÕæÑÉ';
      btnOpenDialog.Caption := 'ãÑÈÚ ÝÊÍ';

      btnCreateTable.Caption := 'ÇäÔÇÁ ÌÏæá';
      btnExecutessQueryss1.Caption := 'ÊäÝíÐ ÇÓÊÚáÇã';
      btnDBGridColumns.Caption := 'ÇÚãÏÉ ÇáÔÈßÉ';
      btnCreateBitBtn.Caption := 'ÇäÔÇÁ ÇÒÑÇÑ';
      btnCreateTBitBtnFindandTEdit.Caption := 'ÇäÔÇÁ ÒÑ ÇáÈÍË æãÑÈÚ äÕ';
      btnExaforSch.Caption := 'äÕ ÇáÈÍË ÇáãÊÚÏÏ';
      btnCreateProperties.Caption := 'äÕ ÇáÎÇÕíÉ';
      btnCreateUnit.Caption := 'ÇäÔÇÁ æÍÏÉ';
      BitBtn2.Caption := 'ÊÍæíá äÕ ÈÑãÌí ÏáÝí Çáì Óí ÈæíáÏÑ';
      btnReplaceText2.Caption := 'ÊÈÏíá';

      btnClose.Caption := 'ÚæÏÉ';
      btnCopySelect.Caption := 'ÊÍÏíÏ æ äÓÎ';
      chkbEnglishArabi.Caption := 'Arabic';
      Add1 := 'ÅÖÇÝÉ';
      Update1 := 'ÊÚÏíá';
      Delete1 := 'ÍÐÝ';
      Clear1 := 'ãÓÍ';
      Close1 := 'ÎÑæÌ';
    end;
  end;

end;

procedure TForm1.btnClearAllClick(Sender: TObject);
var i: integer;
begin
  Memo1.Lines.Clear;
  with Memo1.Lines, frm1.StringGrid1, frm1.cbAdoTable do
  begin
    Add('procedure ClearsAll;');
    Add('begin');
    Add('   //  Clear');
    //Add(' with  do begin');
    for i := 0 to RowCount - 1 do
    if(Cells[4,i] = 'TMemo')or(Cells[4,i] = 'TEdit')or
      (Cells[4,i] = 'TComboBox')then
     Add('  '+Cells[1,i]+'.Clear;');
   //Add('  end; // end with');
   Add('end;');
  end;
end;

procedure TForm1.btnCreateComponentsOnFormClick(Sender: TObject);
type
  Arrayss1 = Array of Integer;
var i: word;
  ArraysWidth: Arrayss1;
  Heights1: word;
  FieldsSize1: word;
begin

  j := 0;
  abc:=0; abc1:=0; abc2:=0; cba:=0;
  Memo1.Lines.Clear;

// TLabel
  with Memo1.Lines, frm1.AdoTableAdoQuery, {frm1.TableQuery1,}
    frm1.FDTableFDQuery, frm1.StringGrid1, frm1 do
  begin
  SetLength(ArraysWidth, RowCount);
  for i := 0 to RowCount-1 do
          begin
          Top01 := Top01 + 20;
  Add('object lbl'+Cells[0,i]+': TLabel');

  Heights1 := 15;

  Add(' Left = 20');
  Add(' Top = '+Inttostr(Top01));

  if Cells[3,i] = '' then
      begin

  ArraysWidth[i] := length(Cells[0,i])*8;
  Add(' Caption = '''+Cells[0,i]+''''); //   +Cells[1,i]+
      end
  else
      begin
  ArraysWidth[i] := length(Cells[3,i])*8;
  Add(' Caption = '''+Cells[3,i]+'''');
      end;

  Add(' Width = '+inttostr(ArraysWidth[i]));
  Add(' Height = '+inttostr(Heights1));
  Add(' Font.Charset = ARABIC_CHARSET');
  Add('end');

         // end;  // End for

  //-------------------------------------------------------//

  //for i := 0 to RowCount-1 do
          //begin

          Top01 := Top01 + 15;
  Heights1 := 23;

  Add('object '+Cells[1,i]+': '+Cells[4,i]);

   if chbAdoFireDAC.Checked then
            begin
    with TCustomADODataSet(AdoTableAdoQuery) do
      begin
    if Fields[i].Size <> 0 then
        begin
    if chbAdoFireDAC.Checked then
    FieldsSize1 := Fields[i].Size
              else
     FieldsSize1 := Fields[i].Size;
        end
    else
        begin
    if frm1.chbAdoFireDAC.Checked then
    FieldsSize1 := Fields[i+1].Size
              else
     FieldsSize1 := Fields[i+1].Size;
        end;

      end;

            end
      else
            begin
    with TFDCustomQuery(FDTableFDQuery) do
      begin
    if Fields[i].Size <> 0 then
        begin
    if chbAdoFireDAC.Checked then
    FieldsSize1 := Fields[i].Size
              else
     FieldsSize1 := Fields[i].Size;
        end
    else
        begin
    if frm1.chbAdoFireDAC.Checked then
    FieldsSize1 := Fields[i+1].Size
              else
     FieldsSize1 := Fields[i+1].Size;
        end;
      end;
            end;


  if(Cells[4,i] = 'TEdit')or(Cells[4,i] = 'TComboBox')or(Cells[4,i] = 'TMemo')then
    Add(' MaxLength = '+inttostr(FieldsSize1));


  //  TEdit and TComboBox
  if(Cells[4,i] = 'TEdit')or(Cells[4,i] = 'TComboBox')then
      begin

    Add(' Left = 20');
    Add(' Top = '+Inttostr(Top01));
    Add(' Height = '+inttostr(Heights1));

  with frm1.cbBoxConnectionType do
  if(ItemIndex = 0)or(ItemIndex = 2)then
   begin
       if Cells[2,i] = '.AsString' then
       begin
             if FieldsSize1<>0 then
      Add(' Width = '+inttostr(11+(FieldsSize1*12)))
              else
      Add(' Width = '+inttostr(135+(FieldsSize1*12)));

       end
       else
       Add(' Width = '+inttostr(135+(FieldsSize1*12)));

   end;

    {
   else
   Add('       Width = '+inttostr(121+length(Cells[1,i])+(frm1.TableQuery1 as TDBDataSet).Fields[i].Size));
   }
   ; // if active else delete simicolon


      end

    {
   else
   Add('       Width = '+inttostr(121+length(Cells[1,i])+(frm1.TableQuery1 as TDBDataSet).Fields[i].Size));

   ; // if active else delete simicolon

     // end
     }
      // TDateTimePicker
      else if(Cells[4,i] = 'TDateTimePicker')then
    begin

      Add(' Top = '+Inttostr(Top01));
      Add(' Left = 20');
      Add(' Height = 23');
      Add(' Width = 187');
    end

    // TMemo
    else if(Cells[4,i] = 'TMemo')then
    begin

      Add(' Top = '+Inttostr(Top01));
      Add(' Left = 20');
      Add(' Height = 89');
      Add(' Width = 185');
      Top01 := Top01 + 70;
    end

    // TDBImage and TImage
    else if(Cells[4,i] = 'TDBImage')or(Cells[4,i] = 'TImage')then
    begin
      TDBIm := 'TDBPhoto';

      Add(' Top = '+Inttostr(Top01));
      Add(' Left = 20');
      Add(' Height = 105');
      Add(' Width = 105');
      if Cells[4,i] = 'TDBImage' then
      begin
        Add(' DataSource = '+cbDatasource.Text+'1'); // Error
       // Add(' DataField = ');
      end;
      Add(' Stretch = True');
      Top01 := Top01 + 87;
    end

    // TCheckBox
    else if(Cells[4,i] = 'TCheckBox')then
    begin

      Add(' Top = '+Inttostr(Top01));
      Add(' Left = 20');
      Add(' Height = 17');
      Add(' Width = 105');
      j :=j+1;
      Add(' Caption = ''CheckBox'+inttostr(j)+'''');
    end;

    Add(' Font.Charset = ARABIC_CHARSET');
    Add('end');

          end;  // End for
  end;
  btnCreateComponentsOnForm.Font.Color := clWindowText;
  btnCreateBitBtn.Font.Color := clRed;
end;

procedure TForm1.btnCreateComponentsOnDataModuleClick(Sender: TObject);
type Arrayss = Array of String;
var i: integer;
  Strin222: TStrings;
  Arrays1,Arrays2: Arrayss;
  abc1: Array of integer;
begin
  ProcActiveButtons('');
  Memo1.Lines.Clear;
  if (frm1.DataSet1 is TCustomADODataSet)or
    (frm1.DataSet1 is TFDCustomQuery)then
  begin
    Strin222 := TStringList.Create;
    try
    SetLength(Arrays1, frm1.ListBoxFields.Count);
    SetLength(Arrays2, frm1.ListBoxFields.Count);
    SetLength(abc1, frm1.ListBoxFields.Count);

    with Memo1.Lines, frm1 do
    begin
    //if(MessageDlg('Components Access',mtInformation, [mbYes, mbNo],0)=mrYes)and
     // (ListBoxFields.Count <> 0)then
      begin
      if cbAdoConnection.Text = 'ADOConnection1' then
      begin
        Add('object '+cbAdoConnection.Text+': TADOConnection');
        Add('       Connected = True');
        Add('       ConnectionString = '''+ConnStrings1+'''');
        Add('       LoginPrompt = False');
        Add('       Mode = cmShareDenyNone');
        Add('       Provider = '''+cbBoxDatabaseType1.Text+'''');
        Add('       Left = 8');
        Add('       Top = 8');
        Add('end');
      end
      else
      //----------------FireDAC-------------------------------//
      begin
        Add('object '+cbAdoConnection.Text+': TFDConnection');

        Add('  Params.Strings = (');
        Add('       ''Database='+Database1+'''');
        Add('       ''DriverID=MSAcc''');
        if edtPassword.Text <> '' then
          Add('       ''Password='+edtPassword.Text+'''');
        Add('       ''StringFormat=Unicode'')');
        // Add('       Provider = '''+cbBoxDatabaseType.Text+'''');

        Add('       LoginPrompt = False');
        Add('       Connected = True');
        Add('       Left = 8');
        Add('       Top = 8');
        Add('end');
      end;
      //----------------End FireDAC-------------------------------//

      if(ListBoxFields.Count <> 0)then
      for i := 0 to ListBoxFields.Count-1 do
      begin
    if chbAdoFireDAC.Checked then
    begin
    if(AdoTableAdoQuery is TADOTable)then
  begin
    Add('object '+TableQury+IntToStr(i+1)+': TADOTable');
    Arrays1[i] := TableQury+IntToStr(i+1);
    Add('   Active = True');
    Add('   Connection = '+cbAdoConnection.Text);
    Add('   CursorType = ctStatic');
    Add('   TableName = '''+ListBoxFields.Items.Strings[i]+'''');
    abc1[i] := 9+(41*i);
    Add('   Left = '+IntToStr(abc1[i]));
    Add('   Top = 40');
    Add('end');
  end

    else
  begin
    Add('object '+TableQury+IntToStr(i+1)+': TADOQuery');
    Arrays1[i] := TableQury+IntToStr(i+1);
    Add('   Active = True');
    Add('   Connection = '+cbAdoConnection.Text);
    Add('   CursorType = ctStatic');
    Add('   Parameters = <>');
    Add('   SQL.Strings = (''SELECT * FROM '+ListBoxFields.Items.Strings[i]+''')');
    abc1[i] := 9+(41*i);
    Add('   Left = '+IntToStr(abc1[i]));
    Add('   Top = 40');
    Add('end');
  end;

    end
    else
    begin
      //----------------FireDAC-------------------------------//
    if(FDTableFDQuery is TFDTable)then
  begin
    Add('object '+TableQury+IntToStr(i+1)+': TFDTable');
    Arrays1[i] := TableQury+IntToStr(i+1);
    Add('   Active = True');
    // IndexFieldNames = 'StudentID'
    Add('   Connection = '+cbAdoConnection.Text);
    //Add('   UpdateOptions.UpdateTableName = ''Student2''');
    Add('   TableName = '''+ListBoxFields.Items.Strings[i]+'''');
    abc1[i] := 9+(41*i);
    Add('   Left = '+IntToStr(abc1[i]));
    Add('   Top = 40');
    Add('end');
  end

    else
  begin
    Add('object '+TableQury+IntToStr(i+1)+': TFDQuery');
    Arrays1[i] := TableQury+IntToStr(i+1);
    Add('   Active = True');
    Add('   Connection = '+cbAdoConnection.Text);
  
    Add('   SQL.Strings = (''SELECT * FROM '+ListBoxFields.Items.Strings[i]+''')');
    abc1[i] := 9+(41*i);
    Add('   Left = '+IntToStr(abc1[i]));
    Add('   Top = 40');
    Add('end');
  end;
      //----------------------------------------------------//
    end;

      end;

    if(ListBoxFields.Count <> 0)then
    for i := 0 to ListBoxFields.Count-1 do
    begin
    Arrays2[i] := cbDatasource.Text+IntToStr(i+1);
    Add('object '+Arrays2[i]+': TDataSource');
    Add('       DataSet = '+Arrays1[i]);
    Add('       Left = '+IntToStr(abc1[i]));
    Add('       Top = 72');
    Add('end');
    end;
    end
     ;
    //else

   { begin
    Add('     object '+cbAdoConnection.Text+': TADOConnection');
    Add('       Left = 8');
    Add('       Top = 8');
    Add('     end');
    Add('     object '+sd1+': TADOTable');
    Add('       Left = 8');
    Add('       Top = 40');
    Add('     end');
    Add('     object '+cbDatasource.Text+': TDataSource');
    Add('       DataSet = '+sd1);
    Add('       Left = 8');
    Add('       Top = 72');
    Add('     end');
    end;
    }
    end;
    finally
      Strin222.Free;
    end;

 end

 else

 begin

 with Memo1.Lines, frm1 do
  begin
    {
    if TableQuery1 is TTable then
    begin
      Add('object '+sd1+': TTable');
      Add('   TableName = '''+ListBoxFields.Items.Strings[ListBoxFields.ItemIndex]+'''');
    end
    else
    begin
      Add('object '+sd1+': TQuery');
      Add(' SQL.Strings = (''SELECT * FROM '+ListBoxFields.Items.Strings[ListBoxFields.ItemIndex]+''')');
    end;

    Add(' DatabaseName = '''+cbBoxDatabaseType.Text+'''');
    Add(' Active = true');
    Add(' Left = 8');
    Add(' Top = 40');
    Add('end');

    Add('object '+cbDatasource.Text+'1: TDataSource');
    Add(' DataSet = '+sd1);
    Add(' Left = 8');
    Add(' Top = 72');
    Add('end');
    }
  end;
 end;
  btnCreateComponentsOnDataModule.Font.Color := clWindowText;
  btnCreateComponentsOnForm.Font.Color := clRed;
end;

procedure TForm1.btnCreateDBGridClick(Sender: TObject);
var
  i: integer;
begin

  // Create TDBGrid
  Memo1.Lines.Clear;
  DBGridTop := 45;
  with Memo1.Lines, frm1 do
  begin
    for i := 0 to ListBoxFields.Count-1 do
    begin
    Add('object '+cbDBGrid.Text+IntToStr(i+1)+': TDBGrid');
    Add(' Left = 20');
    Add(' Top = '+IntToStr(DBGridTop));
    Add(' DataSource = '+cbDatasource.Text+IntToStr(i+1));
    Add(' Font.Charset = ARABIC_CHARSET');
    Add(' Font.Style = [fsBold]');
    Add(' TitleFont.Charset = ARABIC_CHARSET');
    Add(' TitleFont.Style = [fsBold]');
    Add('end');
    DBGridTop := DBGridTop + 126;
    end;

  end;

  btnCreateDBGrid.Font.Color := clWindowText;
  //.Font.Color :=
  BtnCreateDBNavigator1.Font.Color := clRed;;
end;

procedure TForm1.BtnCreateDBNavigator1Click(Sender: TObject);
var
  i: integer;
begin

  // create TDBNavigator
  Memo1.Lines.Clear;
  DBNavigatorTop := 25;
  with Memo1.Lines, frm1 do
  begin
    for i := 0 to ListBoxFields.Count-1 do
    begin
    Add('object DBNavigator1'+IntToStr(i+1)+': TDBNavigator');
    Add(' Left = 20');
    Add(' Top = '+IntToStr(DBNavigatorTop));
    Add(' Width = 250');
    Add(' Height = 25');
    Add(' DataSource = '+cbDatasource.Text+IntToStr(i+1));
    Add(' ParentShowHint = False');
    Add(' ShowHint = True');
    Add('end');
    DBNavigatorTop := DBNavigatorTop + 31;
    end;
  end;
  BtnCreateDBNavigator1.Font.Color := clWindowText;
  //.Font.Color := clRed;
end;

procedure TForm1.CloseClearAddSQL;
begin
  with Memo1.Lines do
  begin
  Add('   '+TableQury+'.Close;');
  Add('   '+TableQury+'.SQL.Clear;');
  Add('   '+TableQury+'.SQL.Add('+ss1+');');
  Add('   '+TableQury+'.SQL.Add('+ss2+');');
  end;
end;

procedure TForm1.CreateUnit1Click(Sender: TObject);
var
  i: integer;
begin
  TableQury := frm1.cbAdoTable.Text;
  CreateUnit1.Checked := true;
  StrUnit01 := 'Unit'+frm1.ListBoxFields.Items[frm1.ListBoxFields.itemindex];
	Memo1.Lines.Clear;
	with Memo1.Lines, frm1.StringGrid1 do
	begin
		Add('unit '+StrUnit01+';');
		Add('');
		Add('interface');
		Add('//uses Lieu');
		Add('type');
    StrTableName01 := frm1.ListBoxFields.Items[frm1.ListBoxFields.itemindex];
		Add('	TClass'+StrTableName01+' = class');
		Add('	private');
    for i := 0 to RowCount-1 do
		  Add('   f'+Cells[0,i]+': '+t1[i]+';');
    for i := 0 to RowCount-1 do
		  Add('		function Get'+Cells[0,i]+': '+t1[i]+';');
    for i := 0 to RowCount-1 do
		  Add('		procedure Set'+Cells[0,i]+'(a'+Cells[0,i]+': '+t1[i]+');');
    Add('	public');
    for i := 0 to RowCount-1 do
		  Add('		property p'+Cells[0,i]+': '+t1[i]+' read Get'+Cells[0,i]+' write Set'+Cells[0,i]+';');
    Add('	end;');
    Add('');
		Add('implementation');
		Add('');
    for i := 0 to RowCount-1 do begin
		Add('function TClass'+frm1.ListBoxFields.Items[frm1.ListBoxFields.itemindex]+'.Get'+Cells[0,i]+': '+t1[i]+';');
		Add('begin');
		Add('	result := f'+Cells[0,i]+';');
		Add('end;');
    end;
    Add('');
    for i := 0 to RowCount-1 do begin
		Add('procedure TClass'+frm1.ListBoxFields.Items[frm1.ListBoxFields.itemindex]+'.Set'+Cells[0,i]+'(a'+Cells[0,i]+': '+t1[i]+');');
		Add('begin');
		Add('	f'+Cells[0,i]+' := a'+Cells[0,i]+';');
		Add('end;');
    end;
    Add('');
		Add('end.');
	end;
  AddToUnitandFromUnitToFormView1.Checked := false;
  AddToDatabaseandSaveandFromDatabaseToUnit1.Checked := false;
  AddToUnitandFromUnitToFormView1.Enabled := true;
  AddToDatabaseandSaveandFromDatabaseToUnit1.Enabled := false;

end;

procedure TForm1.btnCreateBitBtnClick(Sender: TObject);
begin
 Memo1.Lines.Clear;
  with Memo1.Lines do
  begin
Add(' object btnInsert: TBitBtn');
Add('  Left = 16');
Add('  Top = 200');
Add('  Width = 97');
Add('  Height = 25');
Add('  Cursor = crHandPoint');
Add('  Caption = '''+Add1+'''');
Add('  TabOrder = 14');
Add('  OnClick = btnInsertClick');
Add('  Kind = bkOK');
Add('  Layout = blGlyphRight');
Add(' end');

Add(' object btnUpdate: TBitBtn');
Add('  Left = 120');
Add('  Top = 200');
Add('  Width = 97');
Add('  Height = 25');
Add('  Cursor = crHandPoint');
Add('  Caption = '''+Update1+'''');
Add('  TabOrder = 15');
Add('  OnClick = btnUpdateClick');
Add('  Kind = bkOK');
Add('  Layout = blGlyphRight');
Add(' end');

Add(' object btnClear: TBitBtn');
Add('  Left = 224');
Add('  Top = 200');
Add('  Width = 97');
Add('  Height = 25');
Add('  Cursor = crHandPoint');
Add('  Caption = '''+Clear1+'''');
Add('  TabOrder = 16');
Add('  OnClick = btnClearClick');
Add('  Kind = bkOK');
Add('  Layout = blGlyphRight');
Add(' end');

Add(' object btnDelete: TBitBtn');
Add('  Left = 328');
Add('  Top = 200');
Add('  Width = 97');
Add('  Height = 25');
Add('  Cursor = crHandPoint');
Add('  Caption = '''+Delete1+'''');
Add('  TabOrder = 17');
Add('  OnClick = btnDeleteClick');
Add('  Kind = bkOK');
Add('  Layout = blGlyphRight');
Add(' end');

Add(' object btnClose: TBitBtn');
Add('  Left = 432');
Add('  Top = 200');
Add('  Width = 97');
Add('  Height = 25');
Add('  Cursor = crHandPoint');
Add('  Caption = '''+Close1+'''');
Add('  TabOrder = 18');
Add('  Kind = bkClose');
Add(' end');
  end;
  btnCreateBitBtn.Font.Color := clWindowText;
  GroupBox1.Color := clSkyBlue; //
  btnInsert.Font.Color := clRed;
end;

procedure TForm1.btnCodeChangeClick(Sender: TObject);
var InputString: string;
begin
  InputString:= InputBox('Buttons','Enter a button','btnInsert');
  with Memo1.Lines, frm1.StringGrid1 do begin
  Clear;
  Add('  if('+Cells[1,0]+'.Text <> '''') and ('+Cells[1,1]+'.Text <> '''')then');
  Add('  begin');
  Add('    '+InputString+'.Enabled := true;');
  Add('  end else begin');
  Add('   '+InputString+'.Enabled := false;');
  Add('  end;');
  end;
  BitBtn2.Enabled := true;
end;

procedure TForm1.btnAddImageClick(Sender: TObject);
begin
  if TDBIm = '' then  TDBIm := 'DBImage1';
  TDBIm := InputBox('Enter TDBImage','TDBImage',TDBIm);
  with Memo1.Lines, frm1.StringGrid1 do begin
  Clear;
  Add(' //  Add Jpeg to Unit');
  Add('procedure AddJpegBitmap;');
  Add('begin');
  Add(' with  do begin // Add Form between ''with'' and ''do''');
  Add('    if not OpenDialog1.Execute then Exit;');
  Add('    '+TDBIm+'.Picture.LoadFromFile(OpenDialog1.FileName);');
  Add('    '+TDBIm+'.CopyToClipboard;');
  Add('    '+TDBIm+'.PasteFromClipboard;');
  Add('  end; // end with');
  Add(' end;');
end;
end;

procedure TForm1.btnOpenDialogClick(Sender: TObject);
begin
  with Memo1.Lines, frm1.StringGrid1 do begin
  Clear;
  Add('object OpenDialog1: TOpenDialog');
  Add('  Left = 100');
  Add('end');
  end;
end;

procedure TForm1.btnExecutessQueryss1Click(Sender: TObject);
begin
  btnExecutessQueryss1.Enabled := false;
  if Memo1.Lines.Count > 0 then
  frm1.ADOConnection1.Execute(Memo1.Text, cmdText, []);
end;

procedure TForm1.btnCreateTBitBtnFindandTEditClick(Sender: TObject);
begin
 Memo1.Lines.Clear;
  with Memo1.Lines do
  begin
  Add('object btnFind: TBitBtn');
  Add('  Left = 16');
  Add('  Top = 148');
  Add('  Width = 97');
  Add('  Height = 25');
  Add('  Cursor = crHandPoint');
  Add('  Caption = ''Find''');
  Add(' Font.Charset = ARABIC_CHARSET');
  Add('  Kind = bkOK');
  Add('  Layout = blGlyphRight');
  Add(' end');

Add('object '+sSearche+'Search: TEdit');
Add('  Left = 128');
Add('  Top = 152');
Add('  Width = 209');
Add('  Height = 22');
Add('  Font.Charset = ARABIC_CHARSET');
Add('  Font.Color = clWindowText');
Add('  Font.Height = -12');
Add('  Font.Name = ''Tahoma''');
Add('  Font.Style = [fsBold]');
Add('  ParentFont = False');
Add('end');
Add('object lblSearch: TLabel');
Add('  Left = 144');
Add('  Top = 136');
Add('  Width = 41');
Add('  Height = 14');
Add('  Caption = ''Search''');
Add('end');
end;
  btnCreateTBitBtnFindandTEdit.Font.Color := clWindowText;
  btnSearch.Font.Color := clRed;
  boolsSearche1 := false;
end;

procedure TForm1.btnExaforSchClick(Sender: TObject);
begin
 Memo1.Lines.Clear;
  with Memo1.Lines do
  begin
  Add(' '+TableQury+'.Table1.Locate(''EmpNo;FirstName;HireDate'',');
  Add('   VarArrayOf([StrToInt(Edit1.Text),Edit2.Text,StrToDate(Edit3.Text)]),');
  Add('   [loPartialKey])');
  Add('');
  end;
end;

procedure TForm1.WriteToMemos2;
var i: integer;
begin
  with Memo1.Lines, frm1.StringGrid1 do
  begin
  //
    for i := 0 to RowCount-1 do
    if Cells[2,i] <> '' then
    Add('   '+Cells[1,i]+StrTxet1[i]+' := '+tconv12[i]+TableQury+
    '.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+tconv2[i]+';');

  //
  {

    if (Cells[2,i] = '.AsDateTime')and(Cells[4,i] = 'TDateTimePicker') then
    Add('   '+Cells[1,i]+'.Date := '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+';')
    
    else if Cells[2,i] = '.AsDateTime' then
    Add('   '+Cells[1,i]+'.Text := DateToStr('+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+');')

    else if Cells[2,i] = '.AsInteger' then
    Add('   '+Cells[1,i]+'.Text := IntToStr('+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+');')

    else if Cells[2,i] = '.AsWord' then
    Add('   '+Cells[1,i]+'.Text := IntToStr('+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+');')

    else if Cells[2,i] = '.AsSmallInt' then
    Add('   '+Cells[1,i]+'.Text := IntToStr('+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+');')

    else if Cells[2,i] = '.AsFloat' then
    Add('   '+Cells[1,i]+'.Text := FloatToStr('+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+');')

    else if Cells[2,i] = '.AsCurrency' then
    Add('   '+Cells[1,i]+'.Text := CurrToStr('+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+');')

    else if Cells[2,i] = '.AsBCD' then
    Add('   '+Cells[1,i]+'.Text := CurrToStr('+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+');')

    else if(Cells[2,i] = '.AsBoolean')and(Cells[4,i] = 'TCheckBox')then
    Add('   '+Cells[1,i]+'.Checked := '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+';')
    else Add('   '+Cells[1,i]+'.Text := '+sd1+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+';');
    }
  end;

end;

procedure TForm1.btnCreatePropertiesClick(Sender: TObject);
begin
	Memo1.Lines.Clear;
	with Memo1.Lines do
	begin
		Add('type');
		Add('	TMyClass = class');
		Add('	private');
    Add('		fTestField: string;');
    Add('		function GetMyFunction: string;');
    Add('		procedure SetMyProcedure(aMyValue: string);');
    Add('	public');
    Add('		property MyProp: string read GetMyFunction write SetMyProcedure;');
    Add('	end;');
    Add('');
		Add('implementation');
		Add('');
		Add('function TMyClass.GetMyFunction: string;');
		Add('begin');
		Add('	result := fTestField;');
		Add('end;');
    Add('');
		Add('procedure TMyClass.SetMyProcedure(aMyValue: string);');
		Add('begin');
		Add('	fTestField := aMyValue;');
		Add('end;');
    Add('');
	end;
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
var
  SelPos: Integer;
  i,j: Integer;
begin

  with TReplaceDialog(Sender) do
  begin
  for i := 0 to Memo1.Lines.Count-1 do
   for j := 1 to length(Memo1.Lines.Strings[i]) do begin
  { Perform a global case-sensitive search for FindText in Memo1 }
    SelPos := Pos(FindText, Memo1.Lines.Text); //
    if SelPos > 0 then
    begin
      Memo1.SelStart := SelPos - 1;
      Memo1.SelLength := Length(FindText);
      { Replace selected text with ReplaceText }
      Memo1.SelText := ReplaceText;
    end;
    end;
    //else MessageDlg(Concat('Could not find "', FindText, '" in Memo1.'), mtError, [mbOk], 0);
  end;
end;

procedure TForm1.AddToDatabaseandSaveandFromDatabaseToUnit1Click(
  Sender: TObject);
var
  i: integer;
begin
  AddToDatabaseandSaveandFromDatabaseToUnit1.Checked := true;
  Memo1.Lines.Clear;

  with Memo1.Lines, frm1.StringGrid1 do
  begin

    Add(' // copy a code to DataModule.');
    Add('procedure AddToDatabase;');
    Add('begin');
    Add('   // preate Procedured Add to Database');
    Add(' with class'+StrTableName01+' do begin // Add DataModule between ''with'' and ''do''');

    for i := 0 to RowCount-1 do
    if Cells[2,i] <> '' then
      Add('   '+TableQury+'.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+' := '+
     'p'+Cells[0,i]+';');

    Add(' end; // end with');
    Add('end;');
    Add('');
    Add('procedure SaveToDatabase;');
    Add('begin');
    Add(' // begin with');
    Add(' with  do begin // Add Form between ''with'' and ''do''');
    Add('if AInsertChange = ''Insert'' then');
    Add('   ADOTable1.Append //  Insert');
    Add('else  ADOTable1.Edit; //  Update');
    Add('   AddToDatabase;');
    Add('   ADOTable1.Post;');
    Add(' end; // end with');
    Add('end;');

    Add('');
    Add('procedure FromDatabaseToUnit;');
    Add('begin');
    Add('   // From Database to Unit');
    Add(' with class'+StrTableName01+' do begin // Add Form between ''with'' and ''do''');

     for i := 0 to RowCount-1 do
    Add('   p'+Cells[0, i]+' := '+TableQury+
    '.FieldByName('''+Cells[0,i]+''')'+Cells[2,i]+';');

    Add(' end; // end with');
    Add('end;');
    Add('');


    Add(' // , Unit'+StrUnit01);
    Add('');
    Add('procedure SaveToDatabase(AInsertChange: string);');
    Add('');
    Add('//var');
    Add(' //DataModule: TDataModule;');
    Add(' class'+StrTableName01+': TClass'+StrTableName01+';');
    Add(' //implementation');
    Add('');
    Add(' //procedure TDataModule.DataModuleCreate(Sender: TObject);');
    Add('//begin');
    Add(' class'+StrTableName01+' := TClass'+StrTableName01+'.Create;');
    Add(' //end;');
    Add('');
    Add(' //procedure TDataModule.DataModuleDestroy(Sender: TObject);');
    Add(' //begin');
    Add(' class'+StrTableName01+'.Free;');
    Add(' //end;');
    Add('');

 end;
end;

procedure TForm1.AddToUnitandFromUnitToFormView1Click(Sender: TObject);
var
  i: integer;
begin
  AddToUnitandFromUnitToFormView1.Checked := true;
  Memo1.Lines.Clear;

  with Memo1.Lines, frm1.StringGrid1 do
  begin

    Add(' // copy a code to Form.');
    Add('procedure AddToUnit;');
    Add('begin');
    Add('   // Create Procedure Add to Unit');
    Add(' with class'+StrTableName01+' do begin // Add Form between ''with'' and ''do''');

    for i := 0 to RowCount-1 do
    Add('p'+Cells[0, i]+' := '+tconv1[i]+Cells[1, i]+StrTxet1[i]+tconv2[i]+';');


    Add(' end; // end with');
    Add('end;');
    Add('');
    Add('procedure FromUnitToFormView;');
    Add('begin');
    Add('   // From Unit to FormView');
    Add(' with class'+StrTableName01+' do begin // Add Form between ''with'' and ''do''');

    for i := 0 to RowCount-1 do
    Add('   '+Cells[1, i]+StrTxet1[i]+' := '+tconv12[i]+'p'+
    Cells[0, i]+tconv2[i]+';');

    Add(' end; // end with');
    Add('end;');
    Add('');
    Add(' //procedure TForm1.btnInsertClick(Sender: TObject);');
    Add(' //begin');
    Add(' AddToUnit;');
    Add(' SaveToDatabase(''Insert'');');
    Add(' //end;');
    Add('');
    Add(' //procedure TForm1.btnUpdateClick(Sender: TObject);');
    Add(' //begin');
    Add(' AddToUnit;');
    Add(' SaveToDatabase(''Update'');');
    Add(' //end;');

    Add('');
    Add('  end;');
    Add('');

  end;

  AddToDatabaseandSaveandFromDatabaseToUnit1.Enabled := true;
end;

procedure TForm1.ArrayUseInputQuery1Click(Sender: TObject);
{const
  Array02: Array[0..2] of string = ('zero', 'one','two');
type
 Arr01= Array of string;
var
  bo: boolean;
  Arr1: Arr01;}

begin
{
  SetLength(Arr1, StrToInt('3'));//Edit2.Text  '+Edit1.Text+'..'+Edit2.Text+'
  with memo1.Lines do
  begin
    Clear;
    Add('const');
    bo:=InputQuery('capion', Array02, Arr1);
    Add(' Array01: Array[0..3] of string = ('''+Arr1[0]+''', '''+Arr1[1]+''', '''+Arr1[2]+''' );');
    Add('');
    Add('');
    Add('');

  end;}

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  s: string;
begin
  BitBtn2.Enabled := false;
  s := TableQury+'1';
  if s = '' then s := 'ADOTable1';

  ReplaceDialog1.FindText := 'with  do begin // Add Form between ''with'' and ''do''';
  ReplaceDialog1.ReplaceText := '';
  ReplaceDialog1Replace(ReplaceDialog1);

  ReplaceDialog1.FindText := ' FieldByName(''';
  ReplaceDialog1.ReplaceText := s+'->FieldByName(''';
  ReplaceDialog1.FindText := 'with '+s+' do begin';
  ReplaceDialog1.ReplaceText := '';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'end; // end with';
  ReplaceDialog1.ReplaceText := '';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := '''';
  ReplaceDialog1.ReplaceText := '"';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := ' = ';
  ReplaceDialog1.ReplaceText := ' == ';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := ':=';
  ReplaceDialog1.ReplaceText := '=';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := '.';
  ReplaceDialog1.ReplaceText := '->';
  ReplaceDialog1Replace(ReplaceDialog1);

  ReplaceDialog1.FindText := 'Append;';
  ReplaceDialog1.ReplaceText := 'Append();';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'Post;';
  ReplaceDialog1.ReplaceText := 'Post();';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'Edit;';
  ReplaceDialog1.ReplaceText := 'Edit();';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'Delete;';
  ReplaceDialog1.ReplaceText := 'Delete();';
  ReplaceDialog1Replace(ReplaceDialog1);

  ReplaceDialog1.FindText := 'then';
  ReplaceDialog1.ReplaceText := ')';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'not';
  ReplaceDialog1.ReplaceText := '!';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := '[mbYes, mbNo]';
  ReplaceDialog1.ReplaceText := 'TMsgDlgButtons() << mbYes << mbNo';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'begin';
  ReplaceDialog1.ReplaceText := '{';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'end;';
  ReplaceDialog1.ReplaceText := '}';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'end ';
  ReplaceDialog1.ReplaceText := '}';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := '// TLocateOptions';
  ReplaceDialog1.ReplaceText := 'TLocateOptions ops1;'#13#10'ops1.Clear();'#13#10+
  'ops1 << loPartialKey << loCaseInsensitive;';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := '[loCaseInsensitive, loPartialKey]';
  ReplaceDialog1.ReplaceText := ' ops1';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := ' and ';
  ReplaceDialog1.ReplaceText := '&&';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := ' or ';
  ReplaceDialog1.ReplaceText := '||';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := '<>';
  ReplaceDialog1.ReplaceText := '!=';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'Clear;';
  ReplaceDialog1.ReplaceText := 'Clear();';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'registre;';
  ReplaceDialog1.ReplaceText := 'registre()';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'ViewAll;';
  ReplaceDialog1.ReplaceText := 'ViewAll()';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'ClearsAll;';
  ReplaceDialog1.ReplaceText := 'ClearsAll()';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'procedure';
  ReplaceDialog1.ReplaceText := 'void __fastcall';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := 'for ';
  ReplaceDialog1.ReplaceText := 'for( int ';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := ' to ';
  ReplaceDialog1.ReplaceText := '; <';
  ReplaceDialog1Replace(ReplaceDialog1);
  ReplaceDialog1.FindText := ' do';
  ReplaceDialog1.ReplaceText := '; ++)';
  ReplaceDialog1Replace(ReplaceDialog1);

  ReplaceDialog1.FindText := 'if ';
  ReplaceDialog1.ReplaceText := 'if(';
  ReplaceDialog1Replace(ReplaceDialog1);


end;

procedure TForm1.btnReplaceText2Click(Sender: TObject);
begin
  if not ReplaceDialog1.Execute then Exit;
end;

procedure TForm1.MenuFor1Click(Sender: TObject);
begin
  with Memo1.Lines do
  begin
    Clear;
    Add(' Pascal and Delphi');
    Add(' for i := 0 to 9 do');
    Add('   j = j + j*i;');
    Add(' C++');
    Add('   int j = 1;');
    Add(' for(int i = 0; i <= 9; i++)');
    Add('   j := j + j*i;');
  end;
end;

procedure TForm1.MenuIf1Click(Sender: TObject);
begin
  with Memo1.Lines do
  begin
    Clear;
    Add(' if i = 2 then i := i + 2');
  end;
end;

procedure TForm1.MenuWhile1Click(Sender: TObject);
begin
  with Memo1.Lines do
  begin
  Clear;
    Add(' Pascal and Delphi');
    Add(' i := 0;');
    Add(' while i <= 9 do');
    Add(' begin');
    Add('   i := i + 1;');
    Add(' end;');
    Add(' C++');
    Add(' int i = 0;');
    Add(' while(i <= 9)');
    Add(' {');
    Add('   i++;');
    Add(' }');
    Add(' ');
  end;
end;

procedure TForm1.MenuRepeat1Click(Sender: TObject);
begin
  with Memo1.Lines do
  begin
  Clear;
    Add(' Pascal and Delphi');
    Add(' i := 0;');
    Add(' repeat');
    Add('   i := i + 1;');
    Add(' until i >= 9;');
    Add(' C++');
    Add(' int i = 0;');
    Add(' do');
    Add(' {');
    Add('   i++;');
    Add(' }while(i <= 9);');
    Add(' ');
  end;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  if Memo1.Text = '' then
    btnCopySelect.Enabled := false
  else
    btnCopySelect.Enabled := true;
end;

procedure TForm1.MenuCaseof1Click(Sender: TObject);
begin
  with Memo1.Lines do
  begin
  Clear;
    Add(' // Pascal and Delphi');
    Add(' ');
    Add(' i := 10;');
    Add(' case i of');
    Add('   1:  i := 1;');
    Add('   10:  i := 10;');
    Add('   15:  i := 15;');
    Add('   else  i := 0;');
    Add(' end;');

    Add(' ');
    Add(' // C++');
    Add(' ');
    Add(' int i = 10;');
    Add(' switch (i)');
    Add(' {');
    Add('   case 1:  i = 1;');
    Add('   break;');
    Add('   case 10:  i = 10;');
    Add('   break;');
    Add('   case 15:  i = 15;');
    Add('   break;');
    Add('   default:  i = 0;');
    Add(' }');

  end;
end;

procedure TForm1.ProcedureofPascal1Click(Sender: TObject);
begin
  with Memo1.Lines do
  begin
    Clear;
    Add(' // Pascal and Delphi');
    Add(' ');
    Add(' procedure test;');
    Add(' begin');
    Add(' ');
    Add(' end;');
    Add(' ');
    Add(' // C++');
    Add(' ');
    Add(' void __fastcall test()');
    Add(' {');
    Add(' ');
    Add(' }');
  end;
end;

procedure TForm1.FonctionofPascal1Click(Sender: TObject);
begin
  with Memo1.Lines do
  begin
    Clear;
    Add(' // Pascal and Delphi');
    Add(' ');
    Add(' function test: integer;');
    Add(' begin');
    Add('   result := 0;');
    Add(' end;');
    Add(' ');
    Add(' // C++');
    Add(' ');
    Add(' int __fastcall test()');
    Add(' {');
    Add('   return 0;');
    Add(' }');
  end;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
  FontDialog1.Font.Name := Form1.Font.Name;
  if not FontDialog1.Execute then Exit;
  Fonts1 := FontDialog1.Font.Name;
  Form1.Font.Name := Fonts1;
end;

procedure TForm1.SupMenurecords1Click(Sender: TObject);
begin
 with Memo1.Lines do begin
   Clear;
   Add('type');
   Add('  Person = Record');
   Add('    Id: integer;');
   Add('    Nom: string[20];');
   Add('    Prenom: string[20];');
   Add('    DateN: TDate;');
   Add('  end;');
   Add('var');
   Add('  p: Person;');
   Add('begin');
   Add('  p.Id := 100;');
   Add('  p.Nom := ''Ali'';');
   Add('  p.Prenom := ''Ahmed'';');
   Add('  p.DateN := 02-02-2000;');
 end;
end;

procedure TForm1.DateRecord1Click(Sender: TObject);
begin
 with Memo1.Lines do begin
   Clear;
   Add('type');
   Add('  TDateRec = record');
   Add('    Year: Integer;');
   Add('    Month: (Jan, Feb, Mar, Apr, May, Jun, ');
   Add('            Jul, Aug, Sep, Oct, Nov, Dec);');
   Add('    Day: 1..31;');
   Add('  end;');
 end;
end;

procedure TForm1.MenuEmployeeRecord1Click(Sender: TObject);
begin
 with Memo1.Lines do begin
   Clear;
   Add('type');
   Add('  TEmployee = record');
   Add('  FirstName, LastName: string[40];');
   Add('  BirthDate: TDate;');
   Add('  case Salaried: Boolean of');
   Add('    True: (AnnualSalary: Currency);');
   Add('    False: (HourlyWage: Currency);');
   Add('end;');
 end;
end;

procedure TForm1.MenuPersonRecord1Click(Sender: TObject);
begin
 with Memo1.Lines do begin
   Clear;
   Add('type');
   Add('  TPerson = record');
   Add('  FirstName, LastName: string[40];');
   Add('  BirthDate: TDate;');
   Add('  case Citizen: Boolean of');
   Add('    True: (Birthplace: string[40]);');
   Add('    False: (Country: string[20];');
   Add('            EntryPort: string[20];');
   Add('            EntryDate, ExitDate: TDate);');
   Add('  end;');
 end;
end;

procedure TForm1.MenuFigureRecord1Click(Sender: TObject);
begin
 with Memo1.Lines do begin
   Clear;
   Add('type');
   Add('  TShapeList = (Rectangle, Triangle, Circle, Ellipse, Other);');
   Add('  TFigure = record');
   Add('    case TShapeList of');
   Add('      Rectangle: (Height, Width: Real);');
   Add('');
   Add('      Triangle: (Side1, Side2, Angle: Real);');
   Add('      Circle: (Radius: Real);');
   Add('      Ellipse, Other: ();');
   Add('  end;');
 end;
end;

procedure TForm1.SubMenuArraySimple1Click(Sender: TObject);
var
  StringList: TStringList;
begin
 StringList:= TStringList.Create;
 try
  Memo1.Text := GetListArraySimple(StringList).Text;
 finally
   StringList.Free;
 end;
end;

procedure TForm1.Submenuarraymulti1Click(Sender: TObject);
var
  StringList: TStringList;
begin
 StringList:= TStringList.Create;
 try
  Memo1.Text := GetListArrayMultiple(StringList).Text;
 finally
   StringList.Free;
 end;
end;

procedure TForm1.MenuProperty1Click(Sender: TObject);
var
  StringList: TStringList;
begin
 StringList:= TStringList.Create;
 try
  Memo1.Text := GetPropertiess(StringList).Text;
 finally
   StringList.Free;
 end;
end;

procedure TForm1.ProcActiveButtons;
begin
 TableQury := frm1.cbAdoTable.Text;
 if length(AValue) = 0 then
  Delete(TableQury,Length(TableQury),1);
 btnInsert.Enabled := true;
 btnUpdate.Enabled := true;
 btnDelete.Enabled := true;
 btnSearch.Enabled := true;
 btnRegistre.Enabled := true;
 btnViewAll.Enabled := true;
 CreateUnit1.Enabled := true;

end;

end.
