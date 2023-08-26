unit UnitMake;

interface

uses
 {
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Buttons,
  DB, ADODB, Grids,  ComObj, ComCtrls,
  FmtBcd;
  // DBTables,
  }
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.Win.ADODB, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.Buttons,
  ComObj, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.Phys.OracleDef, FireDAC.Phys.Oracle, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Menus;

type
  Tfrm1 = class(TForm)
    cbBoxConnectionType: TComboBox;
    cbBoxDatabaseType1: TComboBox;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    cbAdoTable: TComboBox;
    cbAdoConnection: TComboBox;
    cbDatasource: TComboBox;
    cbDBGrid: TComboBox;
    ComboBoxName: TComboBox;
    BitBtn2: TBitBtn;
    ListBoxFields: TListBox;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    chkbPasswordShow: TCheckBox;
    Edit2: TEdit;
    Label3: TLabel;
    edtPassword: TEdit;
   // Query1: TQuery;
    Label4: TLabel;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtSQLServer1: TEdit;
    Label11: TLabel;
    ADOStoredProc1: TADOStoredProc;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    FDQuery1: TFDQuery;
    chbAdoFireDAC: TCheckBox;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    chkbEnglishArab: TCheckBox;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    Timer1: TTimer;
    Label12: TLabel;
    Label13: TLabel;
    DataSource1: TDataSource;
    ChkBSelectAll: TCheckBox;
    PopupMenu1: TPopupMenu;
    pMenuTComboBox1: TMenuItem;
    pMenuTEdit1: TMenuItem;
    pMenuTCheckBox1: TMenuItem;
    pMenuTDateTimePicker1: TMenuItem;
    pMenuTMemo1: TMenuItem;
    pMenuTImage1: TMenuItem;
    pMenuTDBImage1: TMenuItem;
    lblCheck1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cbBoxConnectionTypeChange(Sender: TObject);
    procedure cbBoxDatabaseType1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBoxFieldsClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkbPasswordShowClick(Sender: TObject);
    procedure ComboBoxNameChange(Sender: TObject);
    procedure cbAdoTableExit(Sender: TObject);
    procedure ComboBoxNameEnter(Sender: TObject);
    procedure edtPasswordExit(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbBoxConnectionTypeExit(Sender: TObject);
    procedure ComboBoxNameExit(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure chbAdoFireDACClick(Sender: TObject);
    procedure chkbEnglishArabClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ChkBSelectAllClick(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure pMenuTCheckBox1Click(Sender: TObject);
  private
    procedure Fields_DataType(DataSet1: TDataSet);
    procedure Fieled1;
    procedure Fieled2;
  public

    DataSet1: TDataSet;
    //TableQuery1: TDBDataSet;
    AdoTableAdoQuery: TCustomADODataSet;
    FDTableFDQuery: TFDCustomQuery;
    procedure ProcedureStringGrid;
  end;

type
  t01 = array of string;

const
  TabCount = 3;
  TabCount2 = 1;
  Tab1: array [0..TabCount] of string = (
    'Microsoft.Access',
    'Paradox and dBase',
    'Microsoft OLE DB Provider for SQL Server',
    'Microsoft OLE DB Provider for Oracle');

  TabAccess: array [0..TabCount2] of string = (
    'Microsoft.ACE.OLEDB.12.0',
    'Microsoft.Jet.OLEDB.4.0');
  TabServerSQL = 'SQLOLEDB.1';
  Brovider1='Provider=';

  ADOTablel1 = 'ADOTable1';
  ADOQueryl1 = 'ADOQuery1';

  FDTablel1 = 'FDTable1';
  FDQueryl1 = 'FDQuery1';

const
  cmax1 = 25;
  CDataType1: array[0..cmax1] of TFieldType = (
  ftString, ftSmallint,ftInteger,ftWord,ftBoolean,ftFloat,ftCurrency,ftBCD,
ftDate,ftTime,ftDateTime,ftBytes,ftMemo,ftGraphic,ftFmtMemo,ftWideString,
ftLargeint,ftVariant,ftLongWord,ftShortint,ftByte,ftExtended,ftSingle
   , ftBlob, ftWideMemo, ftTimeStamp);


const CAsDataType: array[0..cmax1] of string=(
  '.AsString','.AsInteger','.AsInteger','.AsInteger','.AsBoolean','.AsFloat',
  '.AsCurrency','.AsBCD','.AsDateTime','.AsDateTime','.AsDateTime','.AsBytes',
  '.AsString','','.AsString','.AsWideString','.AsLargeInt','.AsVariant',
  '.AsLongWord','.AsInteger','.AsInteger','.AsExtended','.AsSingle'
  ,'','.AsString','.AsDateTime');

const CTypefield: array[0..cmax1] of string=(
   'String' ,'SmallInt','Integer','Word','Boolean','Float','Currency','TBCD',
   'TDateTime','TDateTime','TDateTime','byte','TMemo','TGraphic','TFmtMemo',
  'WideString','LargeInt','Variant','LongWord','Shortint','Byte',
  'Extended','Single'
  ,'','TMemo','TDateTime');

const CTypeCovrt: array[0..cmax1] of string=(
  '','StrToInt(','StrToInt(','StrToInt(','StrToBool(','StrToFloat(',
  'StrToCurr(','StrToBCD(','StrToDate(','StrToTime(','StrToDateTime(',
  'StrToInt(','','','','','StrToInt64(','','StrToUInt(','StrToInt(',
  'StrToInt(','',''
  , '', '','StrToDateTime(');

const CTypeCovrt2: array[0..cmax1] of string=(
  '','IntToStr(','IntToStr(','IntToStr(','BoolToStr(','FloatToStr(',
  'CurrToStr(','BCDToStr(','DateToStr(','TimeToStr(','DateTimeToStr(',
  'IntToStr(','','','','','Int64ToStr(','','UIntToStr(','IntToStr(',
  'IntToStr(','',''
  , '', '','DateTimeToStr(');

const CTypeCovr1: array[0..cmax1] of string=(
 '',')',')',')',')',')',')',')',')',')',')',')','','','','',')','',
')',')',')','',''
 , '', '',')');

var
  frm1: Tfrm1;
  Connect1: string;
  Database1: string;
  TableName1: string;
  ConnStrings1: string;
  bool1: boolean;
  t1: t01;
  i01: word;
  lblLabel1: TLabel;
  tconv1,tconv12, tconv2, StrTxet1: t01;
  strtconv1, strtconv2: t01;

implementation

uses UnitMake2, UnitNotForm1;

{$R *.dfm}

procedure Tfrm1.FormCreate(Sender: TObject);
var
  i: integer;
begin

  for i := 0 to TabCount do
    cbBoxConnectionType.Items.Add(Tab1[i]);
  bool1 := false;
  i01 := 0;
  lblLabel1 := Label2;
  ChkBSelectAll.Checked := false;

end;

procedure Tfrm1.cbBoxConnectionTypeChange(Sender: TObject);
var
  i: integer;
begin

  //Timer1.Enabled := true;

  Label2.Font.Color := clWindowText;
  Label2.Color := clBtnFace;

  lblLabel1.Color := clBtnFace;
  lblLabel1 := lblCheck1;
  lblCheck1.Font.Color := clRed;

  cbAdoTable.Enabled := false;
  cbBoxDatabaseType1.Enabled := false;
  BitBtn1.Enabled := false;
  BitBtn2.Enabled := false;
  edtSQLServer1.Visible := false;
  Label11.Visible := false;
  cbAdoTable.Text := '';
  ComboBoxName.Text := '';
  cbBoxDatabaseType1.Items.Clear;

  // Microsoft Access
  if cbBoxConnectionType.ItemIndex = 0 then
  begin
    for i := 0 to TabCount2 do
     cbBoxDatabaseType1.Items.Add(TabAccess[i]);
    cbBoxDatabaseType1.Text := '';

  // Paradox and dBase
  end else if cbBoxConnectionType.ItemIndex = 1 then
    BitBtn2.Enabled := true
  // Microsoft SQL Server
  else if cbBoxConnectionType.ItemIndex = 2 then
  begin
    cbBoxDatabaseType1.Items.Add(TabServerSQL);
    cbBoxDatabaseType1.Text :=  TabServerSQL;
    edtSQLServer1.Text := InputBox('SQLServer','Enter SQL Server', '');
    edtSQLServer1.Visible := true;
    Label11.Visible := true;

  end;
    //BitBtn1.Enabled := true;
  //cbBoxDatabaseType.Text := '';
end;

procedure Tfrm1.cbBoxDatabaseType1Change(Sender: TObject);
//var  Database01: TDatabase;
begin
  BitBtn1.Enabled := true;
   {
  if cbBoxConnectionType.ItemIndex = 1 then
  begin
    Table1.Close;
    with cbBoxDatabaseType do
    begin
      Database01 := Session.FindDatabase(Items[ItemIndex]);
      try
      if Database01 = nil then
        Database01 := Session.OpenDatabase(Items[ItemIndex]);
      if Assigned(Database01) and Database01.Connected then begin
        Database1 := Database01.DatabaseName;
      Database01.GetTableNames(ListBoxFields.Items,false);
      end;
      except
      on E: EDBEngineError do
        Showmessage(E.Message);
      end;
    end;
    bool1 := true;
  end;
   }

    Label1.Font.Color := clWindowText;
    Label1.Color := clBtnFace;

    lblLabel1.Color := clBtnFace;
    lblLabel1 := Label12;
    Label12.Font.Color := clRed;

end;

procedure Tfrm1.chbAdoFireDACClick(Sender: TObject);
begin
  if chbAdoFireDAC.Checked then
  begin
    chbAdoFireDAC.Caption := 'Ado';
  end
  else
  begin
    chbAdoFireDAC.Caption := 'FireDAC';
  end;
  lblLabel1.Color := clBtnFace;
  lblLabel1.Font.Color := clWindowText;
  lblLabel1 := Label4;
  Label4.Color := clRed;
  lblCheck1.Font.Color := clWindowText;
end;

procedure Tfrm1.BitBtn1Click(Sender: TObject);
begin
  //ClearAll001;
  if cbBoxDatabaseType1.Text = '' then Exit;
  ADOConnection1.Close;
  Connect1 := Brovider1+cbBoxDatabaseType1.Text;
  ListBoxFields.Items.Clear;

  if cbBoxConnectionType.ItemIndex = 0 then
  begin
    if cbBoxDatabaseType1.ItemIndex = 0 then
      OpenDialog1.Filter := 'File Database (*.accdb)|*.accdb|File All (*.*)|*.*'
   else
      OpenDialog1.Filter := 'File Database (*.mdb)|*.mdb';

  if not OpenDialog1.Execute then Exit;

  Edit1.Text := OpenDialog1.FileName;
  Database1 := Edit1.Text;
  ConnStrings1 := Connect1+';Data Source='+Database1+';Persist Security Info=False'+Edit2.Text;

    if chbAdoFireDAC.Checked then
    begin
  if ADOConnection1.Connected then ADOConnection1.Close;
  try
  ADOConnection1.ConnectionString := ConnStrings1;
  //  if CountTable > 0 then
//  begin
  ADOConnection1.GetTableNames(ListBoxFields.Items,false);
  except
    on E: EOleException do
    ShowMessage(E.ClassName + #10 + E.Message);
  end;
    end
    //-------------------------------FireDAC
    else
    begin
      if FDConnection1.Connected then FDConnection1.Close;
      FDConnection1.Params.clear;
      FDConnection1.Params.Add('DriverID=MSAcc');
      FDConnection1.Params.Add('StringFormat=sfUnicode');
      FDConnection1.Params.Add('Database='+Database1);
      if edtPassword.Text <> '' then
        FDConnection1.Params.Add('Password='+edtPassword.Text);
      FDConnection1.GetTableNames('','','',ListBoxFields.Items);

    end;


  if ListBoxFields.Items.Count > 0 then
  begin
  TableName1 := ListBoxFields.Items.Strings[0];  //trim()
  Fieled1;
  cbAdoTable.Items.Assign(ListBoxFields.Items);
  end;
  end

  else if cbBoxConnectionType.ItemIndex = 1 then
  begin
   {
    OpenDialog1.Filter := 'File Database Paradox (*.db)|*.db|File Database dBASE (*.dbf)|*.dbf';
    if not OpenDialog1.Execute then Exit;
    Edit1.Text := OpenDialog1.FileName;
    TableName1 := Edit1.Text;
    cbBoxDatabaseType.Text := ExtractFileDir(TableName1);
    Database1 := cbBoxDatabaseType.Text;
    if(TableQuery1.Active)then TableQuery1.Close;
    TableQuery1.DatabaseName := cbBoxDatabaseType.Text;
    if(TableQuery1 is TTable)then
      Table1.TableName := TableName1
    else begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('SELECT * FROM '+ExtractFileName(TableName1));
    end;
   // TableQuery1.Active := True;
   // StringGrid1.RowCount := TableQuery1.FieldCount;
   // TableQuery1.GetFieldNames(StringGrid1.Cols[0]);
    ListBoxFields.Items.Add(DeleteExtension(ExtractFileName(Edit1.Text)));
    //Fieled2;
    bool1 := false;
    }

  end

//////////////////////////////////////////////

  else if cbBoxConnectionType.ItemIndex = 2 then
  begin
    if cbBoxDatabaseType1.ItemIndex = 0 then
      OpenDialog1.Filter := 'File Database (*.mdf)|*.mdf|File All (*.*)|*.*';
      
  if not OpenDialog1.Execute then Exit;
  Edit1.Text := OpenDialog1.FileName;
  Database1 := Edit1.Text;
  ConnStrings1 := Connect1+';Integrated Security=SSPI;'+
    'Persist Security Info=False;Initial Catalog='+
    DeleteExtension(ExtractFileName(Database1))+';Data Source='+edtSQLServer1.Text;
    //+Edit2.Text;
  ADOConnection1.Close;
  try
  ADOConnection1.ConnectionString := ConnStrings1;
  //  if CountTable > 0 then
//  begin
  ADOConnection1.GetTableNames(ListBoxFields.Items,false);
  except
    on E: EOleException do
    ShowMessage(E.ClassName + #10 + E.Message);
  end;
  if ListBoxFields.Items.Count > 0 then
  begin
  TableName1 := ListBoxFields.Items.Strings[0];  //trim()
  Fieled1;
  cbAdoTable.Items.Assign(ListBoxFields.Items);
  end;
  end;
/////////////////////////////////////////////

 ListBoxFields.Enabled := true;
 ListBoxFields.ItemIndex := 0;
 if ListBoxFields.Items.Count <= 0 then
   BitBtn2.Enabled := true;
  cbBoxDatabaseType1.Enabled := true;


    Label12.Font.Color := clWindowText;
    Label12.Color := clBtnFace;

    lblLabel1.Color := clBtnFace;
    lblLabel1 := Label13;
    Label13.Font.Color := clRed;

  StringGrid1.Enabled := true;
  ChkBSelectAll.Enabled := true;

end;

procedure Tfrm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 with cbBoxConnectionType do
  // Microsoft Access and SQL Server
  if(ItemIndex = 0)or(ItemIndex = 2)then
  begin
    if length(ComboBoxName.Text) <> 0 then
    begin
      cbBoxDatabaseType1.Enabled := true;

    end

    else
    begin
      cbBoxDatabaseType1.Enabled := false;

    end;
  end;
end;

procedure Tfrm1.ListBoxFieldsClick(Sender: TObject);
begin
  TableName1 := ListBoxFields.Items.Strings[ListBoxFields.ItemIndex];
  BitBtn2.Enabled := true;
  with cbBoxConnectionType do
  if(ItemIndex = 0)or(ItemIndex = 2)then
    Fieled1 else Fieled2;
  Form1.btnConnection1.Enabled := true;
  Form1.btnCreateComponentsOnDataModule.Enabled := true;
  lblLabel1.Color := clBtnFace;
  lblLabel1.Font.Color := clWindowText;
  BitBtn2.Font.Color := clRed;
  Timer1.Enabled := false;

end;

procedure Tfrm1.pMenuTCheckBox1Click(Sender: TObject);
begin
  if (Sender = pMenuTComboBox1) then
    StringGrid1.Cells[4, StringGrid1.Row] := 'TComboBox';
  if (Sender = pMenuTEdit1) then
    StringGrid1.Cells[4, StringGrid1.Row] := 'TEdit';
  if (Sender = pMenuTCheckBox1) then
    StringGrid1.Cells[4, StringGrid1.Row] := 'TCheckBox';
  if (Sender = pMenuTDateTimePicker1) then
    StringGrid1.Cells[4, StringGrid1.Row] := 'TDateTimePicker';
  if (Sender = pMenuTMemo1) then
    StringGrid1.Cells[4, StringGrid1.Row] := 'TMemo';
  if (Sender = pMenuTImage1) then
    StringGrid1.Cells[4, StringGrid1.Row] := 'TImage';
  if (Sender = pMenuTDBImage1) then
    StringGrid1.Cells[4, StringGrid1.Row] := 'TDBImage';

    Label13.Font.Color := clWindowText;
    Label13.Color := clBtnFace;

    lblLabel1.Color := clBtnFace;
    lblLabel1 := Label5;
    Label5.Font.Color := clRed;

end;

procedure Tfrm1.ProcedureStringGrid;
var
   i: integer;
begin
  setLength(StrTxet1, StringGrid1.RowCount);
  with StringGrid1 do
  for i := 0 to RowCount-1 do
  begin
    if(Cells[4, i] = 'TEdit')or(Cells[4, i] = 'TComboBox')or
      (Cells[4, i] = 'TDateTimePicker')or(Cells[4, i] = 'TMemo')or
      (Cells[4, i] = 'TCheckBox')then
    begin
      if((Cells[4, i] = 'TDateTimePicker')and
      ((tconv1[i] = CTypeCovrt[8])or(tconv1[i] = CTypeCovrt[9])or  //'StrToDate('//'StrToTime('
        (tconv1[i] = CTypeCovrt[10])))or   // 'StrToDateTime('
        (Cells[4, i] = 'TCheckBox')then
      begin
         tconv1[i] := '';
        tconv2[i] := '';
        tconv12[i] := '';
        if(Cells[4, i] = 'TCheckBox')then
          StrTxet1[i] := '.Checked'
        else
        StrTxet1[i] := '.Date';
      end
     else if((Cells[4, i] = 'TEdit')or(Cells[4, i] = 'TComboBox')or
     (Cells[4, i] = 'TMemo'))and
     (Cells[2,i] = '.AsString')then
     begin
      StrTxet1[i] := '.Text';
        tconv1[i] := '';
        tconv2[i] := '';
        tconv12[i] := '';
     end else StrTxet1[i] := '.Text';
    end;
  end;
end;

procedure Tfrm1.Fields_DataType;
var i, ij1, j: integer;

begin
  j := 0;
  DataSet1.Open;
  SetLength(t1, DataSet1.FieldCount+1);
  SetLength(tconv1, DataSet1.FieldCount+1);
  SetLength(tconv2, DataSet1.FieldCount+1);
  SetLength(tconv12, DataSet1.FieldCount+1);
  StringGrid1.RowCount := DataSet1.FieldCount;

  with StringGrid1, DataSet1 do
 
  begin
    for i := 0 to FieldCount-1 do
    for ij1 := 0 to cmax1 do
    begin
      if Fields[i].DataType <> ftAutoInc then
      begin
        if Fields[i].DataType = CDataType1[ij1] then
       begin
          Cells[0,i-j] := Fields[i].DisplayName;
          Cells[1,i-j] := Cells[0,i-j]+'Contrl';
          tconv2[i-j] := CTypeCovr1[ij1];

            case Fields[i].DataType of
              ftCurrency, ftBCD:  // Error
              begin
              Cells[2,i-j] := CAsDataType[6]; // '.AsCurrency'
              t1[i-j] := 'Currency';
              tconv1[i-j] := CTypeCovrt[6];  //'StrToCurr('
              tconv12[i-j] := CTypeCovrt2[6];  //'CurrToStr('
              end;

              ftString, ftWideString: // Error
              begin
              Cells[2,i-j] := CAsDataType[0];  //'.AsString'
              t1[i-j] := CTypefield[0];                //'String'
              end;


              ftFmtMemo: // Error
              begin
              Cells[2,i-j] := CAsDataType[0];   //'.AsString'
              t1[i-j] := CTypefield[0];            // 'String'
              end;

              ftMemo: // Error
              begin
              Cells[2,i-j] := CAsDataType[0];    //'.AsString'
              t1[i-j] := CTypefield[12];    //'TMemo'
              end
              else
              begin
              Cells[2,i-j] := CAsDataType[ij1];
              t1[i-j] := CTypefield[ij1];
              tconv1[i-j] := CTypeCovrt[ij1];
              tconv12[i-j] := CTypeCovrt2[ij1];
              end;
            end; // End case-of
          end;

      end else j := 1;

    end; // end for i
  end; // end with





   {
    case Fields[i].DataType of
      ftInteger:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := 'Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsInteger';
        t1[i-j] := 'Integer';
      end;
      ftSmallInt:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsInteger'; // AsSmallInt
        t1[i-j] := 'SmallInt';
      end;
      ftWord:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsInteger'; // AsWord
        t1[i-j] := 'Word';
      end;
      ftFloat:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsFloat';
        t1[i-j] := 'Float';
      end;
      ftCurrency:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsCurrency';
        t1[i-j] := 'Currency';
      end;
      ftBCD:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsBCD';
        t1[i-j] := 'TBCD';
      end;
      }

    {ftSQLTimeStamp:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsSQLTimeStamp';
      end; }

      {
      ftBoolean:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsBoolean';
        t1[i-j] := 'Boolean';
      end;

      ftDateTime:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsDateTime';
        t1[i-j] := 'TDateTime';
      end;

      ftBlob:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
   //   Cells[2,i-j] := 'TBlob';
   //   t1[i-j] := '';
      end;
      ftGraphic:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        //Cells[2,i-j] := 'TGraphic';
      t1[i-j] := 'TGraphic';
      end;
      ftMemo:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsString';
        t1[i-j] := 'TMemo';
      end;
      ftFmtMemo:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsString';
        t1[i-j] := ''; //TFmtMemo     TRichEdit
      end;
      ftVariant:
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsVariant';
        t1[i-j] := 'Variant';
      end;


      else
      begin
        Cells[0,i-j] := Fields[i].DisplayName;
        Cells[1,i-j] := Cells[0,i-j]+'Contrl';
        Cells[2,i-j] := '.AsString';
        t1[i-j] := 'String';
      end;
    end; // End case-of
    }
 //   end; // end with
//  end else j := 1;



{

  with StringGrid1 do
  for i := 0 to StringGrid1.RowCount-1 do
  begin
    Cells[0,i-j] := Cells[0,i-j];

  end;
}



  StringGrid1.RowCount := DataSet1.FieldCount-j;
end;

procedure Tfrm1.Fieled1;
begin
  if chbAdoFireDAC.Checked then
    begin
  AdoTableAdoQuery.Close;
  AdoTableAdoQuery.Connection := ADOConnection1;
  if(AdoTableAdoQuery is TAdoTable)then
  ADOTable1.TableName := TableName1
  else begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM '+TableName1);
  end;
    Fields_DataType(AdoTableAdoQuery);
    end
    //----------------------------------FireDAC------------------
    else
    begin
      FDTableFDQuery.Close;
      FDTableFDQuery.Connection := FDConnection1;
      if FDTableFDQuery is TFDTable then
        FDTable1.TableName := TableName1
      else
      begin
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add('SELECT * FROM '+TableName1);

      end;
      Fields_DataType(FDTableFDQuery);
    end;

end;

procedure TForm1ListBox2Click;
begin
 {
  with frm1 do begin
  try
  Table1.TableName := ListBoxFields.Items.Strings[ListBoxFields.ItemIndex];
  if not Table1.Exists then
    TableName1 := ListBoxFields.Items.Strings[ListBoxFields.ItemIndex]+'.dbf'
  else
   TableName1 := ListBoxFields.Items.Strings[ListBoxFields.ItemIndex]+'.db';
  Except
  on E: EDBEngineError do
    Showmessage(E.Message);
  end;
  end;
  }
end;

procedure Tfrm1.Fieled2;
//var i,j: integer;
begin
{
  TableQuery1.Close;
  TableQuery1.DatabaseName := Database1;
  if bool1 then
    TForm1ListBox2Click;
  if(TableQuery1 is TTable)then
  Table1.TableName := TableName1
  else begin
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT * FROM '+TableName1);
  end;
  TableQuery1.Open;
  // j := 0;
  StringGrid1.RowCount := TableQuery1.FieldCount;

  Fields_DataType(TableQuery1);
   }

 // StringGrid1.RowCount := TableQuery1.FieldCount-j;
end;

procedure Tfrm1.BitBtn2Click(Sender: TObject);
begin
  if StringGrid1.Enabled then
    ProcedureStringGrid;

  BitBtn2.Font.Color := clWindowText;
  with form1 do
  begin
    btnCreateComponentsOnDataModule.Font.Color := clRed;
    Show;
  end;
end;

procedure Tfrm1.chkbEnglishArabClick(Sender: TObject);
begin
  with frm1 do
  begin
    if chkbEnglishArab.Checked then
    begin
      chkbEnglishArab.Caption := 'English';
      //BiDiMode := bdRightToLeft;
      Font.Charset := DEFAULT_CHARSET;
      Font.Name := Fonts1;

      Label1.Caption := 'The database type selection or Provider';
      Label2.Caption := 'Connection type selection';
      Label3.Caption := 'The database source';
      Label4.Caption := 'The control type selection';
      Label5.Caption := 'Tables list';
      Label6.Caption := 'fields';
      Label7.Caption := 'control';
      Label8.Caption := 'value type';
      Label9.Caption := 'Control caption';
      Label10.Caption := 'use control';
      Label11.Caption := 'Server Name';
      Label13.Caption := 'Select controls:';
      chkbPasswordShow.Caption := 'Password';
      BitBtn2.Caption := 'Next';
      Label12.Caption := 'Browse';
      ChkBSelectAll.Caption := 'Select All';
      BitBtn3.Caption := '&Close';
    end
    else
    begin
      chkbEnglishArab.Caption := 'Arabic';
      //frm1.BiDiMode := bdLeftToRight;    Label.Hint := '';
      Font.Charset := ARABIC_CHARSET;
      Font.Name := Fonts1;
      Label1.Caption := ' ÕœÌœ ‰Ê⁄ ﬁ«⁄œ… «·»Ì«‰« ';
      //Label1.Hint := ' ÕœÌœ ‰Ê⁄ ﬁ«⁄œ… «·»Ì«‰«  «· Ì ”Ê›  › Õ ';
      Label2.Caption := ' ÕœÌœ ‰Ê⁄ «·« ’«·';
      Label3.Caption := '„”«—  Ê«Ãœ ﬁ«⁄œ… «·»Ì«‰« ';
      Label4.Caption := ' ÕœÌœ «·„ﬂÊ‰ «·„‰«”»';
      Label5.Caption := 'ﬁ«∆„… «·Ãœ«Ê·';
      Label6.Caption := '«·ÕﬁÊ·';
      Label7.Caption := '«·„ﬂÊ˙‰';
      Label8.Caption := '‰Ê⁄ «·ﬁÌ„';
      Label9.Caption := '⁄‰«ÊÌ‰ «·„ﬂÊ˙‰« ';
      Label10.Caption := ' ÕœÌœ «·„ﬂÊ˙‰«  «·„” ⁄„·…';
      Label11.Caption := '«”„ «·”Ì—›—';
      Label13.Caption := 'Õœœ «·⁄‰’—';
      chkbPasswordShow.Caption := 'ﬂ·„… «·”—';
      Label12.Caption := ' ÕœÌœ ﬁ«⁄œ… «·»Ì«‰« ';
      BitBtn2.Caption := '«· «·Ì';
      ChkBSelectAll.Caption := ' ÕœÌœ «·ﬂ·';
      BitBtn3.Caption := 'Œ—ÊÃ';
    end;
  end;

end;

procedure Tfrm1.chkbPasswordShowClick(Sender: TObject);
begin
 if chkbPasswordShow.Checked then
 begin
  Edit2.Text := ';Jet OLEDB:Database Password='+edtPassword.Text;
  Edit2.Visible := true;
  edtPassword.Visible := true;
 end
 else
 begin
  Edit2.Text := '';
  Edit2.Visible := false;
  edtPassword.Visible := false;
  edtPassword.Text := '';
 end;


end;

procedure Tfrm1.ComboBoxNameChange(Sender: TObject);
begin
 cbAdoTable.Text := ComboBoxName.Text;
 cbAdoTable.Enabled := true;
  with cbBoxConnectionType do
  // ADO
  if(ItemIndex = 0)or(ItemIndex = 2)then
  begin
    if chbAdoFireDAC.Checked then
    begin
    if ComboBoxName.Text = 'ADOTable1' then   // Error
       AdoTableAdoQuery := ADOTable1
    else if ComboBoxName.Text = 'ADOQuery1' then
      AdoTableAdoQuery := ADOQuery1;
      DataSet1 := AdoTableAdoQuery;

    end
    else
    // FireDAC
    begin
      if ComboBoxName.Text = 'FDTable1' then
      FDTableFDQuery := FDTable1
      else if ComboBoxName.Text = 'FDQuery1' then
      FDTableFDQuery := FDQuery1;
      DataSet1 := FDTableFDQuery;

    end;

    Label4.Font.Color := clWindowText;
    Label4.Color := clBtnFace;

    lblLabel1.Color := clBtnFace;
    lblLabel1 := Label1;
    Label1.Font.Color := clRed;

   // lblLabel1.Color := clBtnFace;
   // lblLabel1 := Label1;
   // Label1.Font.Color := clRed;
   // Label4.Font.Color := clWindowText;
  end
  else if cbBoxConnectionType.ItemIndex = 1 then
  begin
     {
   if ComboBoxName.text = 'Table1' then   // Error
       TableQuery1 := Table1
    else TableQuery1 := Query1;
    }
  end;
   {
  if (ComboBoxName.text = 'Query1')or(ComboBoxName.text = 'Table1') then  // Error
    DataSet1 := TableQuery1
  else DataSet1 := AdoTableAdoQuery;
  }
    lblLabel1.Color := clBtnFace;
    lblLabel1 := Label1;

end;

procedure Tfrm1.cbAdoTableExit(Sender: TObject);
begin
  if(cbAdoTable.text <> '')then
  begin
  cbAdoTable.Items.Clear;
  if ComboBoxName.Text <> cbAdoTable.Text then
    cbAdoTable.Text := DeleteSpace1(cbAdoTable.Text);
  cbAdoTable.Items.Add(cbAdoTable.Text);
  cbAdoTable.ItemIndex := 0;
  end;
end;

procedure Tfrm1.ComboBoxNameEnter(Sender: TObject);
begin
  ComboBoxName.Items.Clear;
  with cbBoxConnectionType do
  // Microsoft Access and SQL Server
  if(ItemIndex = 0)or(ItemIndex = 2)then
  begin
    if chbAdoFireDAC.Checked then
    begin
      ComboBoxName.Items.Add('ADOTable1');
      ComboBoxName.Items.Add('ADOQuery1');
      ComboBoxName.Items.Add('ADOStoredProc1');
      cbAdoConnection.ItemIndex := 0;
    end
    else
    begin
      ComboBoxName.Items.Add('FDTable1');
      ComboBoxName.Items.Add('FDQuery1');
      cbAdoConnection.ItemIndex := 1;
    end;


  end
   // Paradox and dBase
  else if cbBoxConnectionType.ItemIndex = 1 then
  begin
    ComboBoxName.Items.Add('Table1');
    ComboBoxName.Items.Add('Query1');
    BitBtn1.Enabled := true;

  end;

  //Session1.GetAliasNames(ComboBox2.Items);
  //ComboBoxName.ItemIndex := 0;
end;

procedure Tfrm1.ComboBoxNameExit(Sender: TObject);
begin
 with cbBoxConnectionType do
  // Microsoft Access and SQL Server
  if(ItemIndex = 0)or(ItemIndex = 2)then
  begin
    if length(ComboBoxName.Text) <> 0 then
    begin
      cbBoxDatabaseType1.Enabled := true;
      BitBtn1.Enabled := true;
    end

    else
    begin
      cbBoxDatabaseType1.Enabled := false;
      BitBtn1.Enabled := false;
    end;
  end;
end;

procedure Tfrm1.edtPasswordExit(Sender: TObject);
begin
 chkbPasswordShowClick(Sender);
end;

procedure Tfrm1.StringGrid1Click(Sender: TObject);
begin
  with StringGrid1 do
  begin
    if Col = 4 then //
    begin
      PopupMenu1.AutoPopup := true;

    end
    else
    begin
      PopupMenu1.AutoPopup := false;
    end;
  end;

end;

procedure Tfrm1.StringGrid1DblClick(Sender: TObject);
begin
//
end;

procedure Tfrm1.Timer1Timer(Sender: TObject);
begin
  if i01 mod 2 = 0 then
  begin
    lblLabel1.Color := clBlue;
    lblLabel1.Font.Color := clRed;
  end
  else
  begin
    lblLabel1.Color := clBtnFace;
    lblLabel1.Font.Color := clWindowText;
  end;

  i01 := i01 + 1;

  //caption := inttostr(i01 mod 2);

end;

procedure Tfrm1.ChkBSelectAllClick(Sender: TObject);
var
  w1: word;
begin
  if ChkBSelectAll.Checked then
  begin
  with StringGrid1 do
    for w1 := 0 to RowCount-1 do
      if Cells[4, w1] = '' then
        Cells[4, w1] := 'TEdit';
  end;
end;


procedure Tfrm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action := caFree;
  Application.Terminate;
end;

procedure Tfrm1.cbBoxConnectionTypeExit(Sender: TObject);
begin
 {
  if cbBoxConnectionType.ItemIndex = 1 then
  begin
    if Table1.Active then Table1.Close;
    try
    // Session.AutoSessionName := true;
      Session.GetDatabaseNames(cbBoxDatabaseType.Items);
      except
      on E: EDatabaseError do
        Showmessage(E.Message);
      end;
    Session.AutoSessionName := false;
  end;
  }
end;

end.
