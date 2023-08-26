unit UnitNotForm1;

interface

uses
  Classes;

  function DeleteSpace1(S: string): string;
  function DeleteExtension(S: string): string;
  function QuotedStrings(const S: string): string;

  function CountTable(sl: TStrings): Integer;

var
  j: Integer;

implementation

function CountTable(sl: TStrings): Integer;
begin
  sl := TStringList.Create;
  try
    Result := sl.Count;
  finally
    sl.Free;
  end;
end;

function DeleteSpace1(S: string): string;
var
  I, L: Integer;
begin
  L := Length(S);
  Result := '';
  for I := 1 to L do
    if S[I] <> ' ' then
      Result := Result + Copy(S, I, 1);
end;

function DeleteExtension1(S: string): string;
var
  i: Integer;
  bool1: boolean;
begin
  Result := '';
  j := 1;
  bool1 := true;
  for i := Length(S) downto 1 do
  begin
    Result := Result + S[i];
    if S[i] = '.' then bool1 := false;
    if bool1 then j := j + 1;
  end;
end;

function DeleteExtension(S: string): string;
begin
  Result := DeleteExtension1(S);
  Delete(Result,1,j);
  Result := DeleteExtension1(Result);
end;

function QuotedStrings(const S: string): string;
var
  I: Integer;
begin
  Result := S;
  for I := Length(Result) downto 1 do
    if Result[I] = '''' then Insert('''', Result, I);
  Result := '''' + Result + '''';
end;

end.
