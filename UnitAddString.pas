unit UnitAddString;

interface

uses
  Classes;

  function GetListArraySimple(StrList: TStringList): TStringList;
  function GetListArrayMultiple(StrList: TStringList): TStringList;
  function GetPropertiess(StrList: TStringList): TStringList;
  procedure prochkbEnglishArab(boo: boolean);

  var
    NamesFields, TypeField, SizeField, ValueNull, keyField: string;
    ACaptio  : string;
    lblLabel1Caption,lblLabel2Caption,lblLabel3Caption  : string;


implementation

procedure prochkbEnglishArab(boo: boolean);
begin
  if boo then
  begin
    NamesFields := 'Names Fields';
    TypeField := 'Type Field';
    SizeField := 'Size Field';
    ValueNull := 'Value Null';
    keyField := 'key Field';
    ACaptio := 'English';
    lblLabel1Caption := 'Table name';
    lblLabel2Caption := 'Number of field';
    lblLabel3Caption := 'Connection type';
  end
  else
  begin
    NamesFields := 'ÇáÇÓãÇÁ ÇáÍŞæá';
    TypeField := 'äæÚ ÇáÍŞá';
    SizeField := 'ÍÌã ÇáÍŞá';
    ValueNull := 'ŞíãÉ ÎÇáíÉ';
    keyField := 'ãİÊÇÍ';
    ACaptio := 'Arabic';
    lblLabel1Caption := 'ÇÓã ÇáÌÏæá';
    lblLabel2Caption := 'ÍÌã ÇáÍŞá';
    lblLabel3Caption := 'äæÚ ÇáÍŞá';
  end;

end;

function GetListArraySimple(StrList: TStringList): TStringList;
begin
  with StrList do begin
   Clear;
   Add('const');
   Add('  ArryStr1 : Array[0..4] of string = (''abc'',''def'',''ghi'',''jkl'',''mno'');');
   Add('  ArryInt1 : Array[0..4] of integer = (10,20,30,40,50);');
   Add('type');
   Add('  TArryStr2 = Array[0..4] of string;');
   Add('  TArryInt2 = Array[0..4] of integer;');
   Add('  TArrays1 = Array of string;');
   Add('  TArrayi1 = Array of integer;');
   Add('var');
   Add('  ArStr2: TArryStr2;');
   Add('  ArInt2: TArryInt2;');
   Add('  Ars1: TArrays1;');
   Add('  Ari1: TArrayi1;');
   Add('  i: integer;');
   Add('begin');
   Add('  for i := 0 to 4 do begin');
   Add('    ArStr2[i] := ArryStr1[i];');
   Add('    ArInt2[i] := ArryInt1[i];');
   Add('  end;');
   Add('  SetLength(Ars1, 5);');
   Add('  for i := 0 to 4 do');
   Add('    Ars1[i] := ArryStr1[i];');
   Add('  SetLength(Ari1, 5);');
   Add('  for i := 0 to 4 do');
   Add('    Ari1[i] := ArryInt1[i];');
   Add('end;');
  end;
  result := StrList;
end;

function GetListArrayMultiple(StrList: TStringList): TStringList;
begin
 with StrList do begin
   Clear;
   Add('const');
   Add('  MultipleArray : array[0..1,0..3] of Integer = ((10,20,30,40),(100,50,9,4));');
   Add('type');
   Add('  TMultipleArray = array[0..1,0..3] of Integer;');
   Add('');
   Add('var');
   Add('  vMArray: TMultipleArray;');
   Add('  i,j: integer;');
   Add('');
   Add('begin');
   Add('  for i := 0 to 1 do');
   Add('    for j := 0 to 3 do');
   Add('      vMArray[i][j] := MultipleArray[i][j];');
   Add('end;');
 end;
 result := StrList;
end;

function GetPropertiess(StrList: TStringList): TStringList;
begin
 with StrList do begin
   Clear;
  Add('// Delphi');
   Add('type');
   Add('Pers = class');
   Add('private');
   Add('  ap: integer;');
   Add('  function getap: integer;');
   Add('  procedure setap(aa: integer);');
   Add('public');
   Add('  property  pp: integer read getap write setap;');
   Add('end;');
   Add('');
   Add('var');
   Add('  Form1: TForm1;');
   Add('');
   Add('implementation');
   Add('');
   Add('{$R *.dfm}');
   Add('');
   Add('function Pers.getap: integer;');
   Add('begin');
   Add('  result := ap;');
   Add('end;');
   Add('');
   Add('procedure Pers.setap(aa: integer);');
   Add('begin');
   Add('  ap := aa;');
   Add('end;');
   Add('');
   Add('procedure TForm1.Button1Click(Sender: TObject);');
   Add('var');
   Add('  ers: Pers;');
   Add('begin');
   Add('  ers := Pers.Create;');
   Add('  ers.pp := 100;');
   Add('  caption := IntToStr(ers.pp);');
   Add('end;');
   Add('');
   Add('// C++');
   Add('// in Header File Example Neme= "Test.h"');
   Add('class Pers');
   Add('{');
   Add('private:');
   Add('        int ap;');
   Add('        int getap();');
   Add('        void setap(int aa);');
   Add('public:');
   Add('//        __fastcall Person();');
   Add('        __property int pp = {read=getap, write=setap};');
   Add('};');
   Add('');
   Add('// in cpp File Example Neme= "Test.cpp"');
   Add('int Pers::getap()');
   Add('{');
   Add('        return ap;');
   Add('}');
   Add('void Pers::setap(int aa)');
   Add('{');
   Add('        ap = aa;');
   Add('}');
   Add('');
   Add('// in cpp File');
   Add('class Pers1');
   Add('{');
   Add('private:');
   Add('int ap1;');
   Add('int Pers1::getap1()');
   Add('{');
   Add('        return ap1;');
   Add('}');
   Add('void Pers1::setap1(int aa1)');
   Add('{');
   Add('        ap1 = aa1;');
   Add('}');
   Add('public:');
   Add('//        __fastcall Person();');
   Add('        __property int pp1 = {read=getap1, write=setap1};');
   Add('};');
   Add('');
   Add('');
   Add('');
   Add('void __fastcall TForm1::Button9Click(TObject *Sender)');
   Add('{');
   Add('        Pers1* pe = new Pers1();');
   Add('        pe->pp1 = 100;');
   Add('        this->Caption = pe->pp1;');
   Add('}');
 end;
 result := StrList;
end;

end.
