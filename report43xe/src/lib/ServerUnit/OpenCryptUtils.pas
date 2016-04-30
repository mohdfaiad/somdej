unit OpenCryptUtils;

interface

function EncryptStrEx(Str: String; Key: SmallInt = 11; Level: SmallInt = 2): String;
function DecryptStrEx(Str: String; Key: SmallInt = 11; Level: SmallInt = 2): String;

implementation

uses SysUtils;

function EncryptStr(Str: String; Key, Level: SmallInt): String;
var
  i, l: Integer;
  sTemp: String;
BEGIN
  sTemp := '';
  for i := 1 to Length(Str) do
    sTemp := sTemp + Chr(ord(Str[i]) xor Key);

  for l := 1 to Level do
  begin
    Str := sTemp;
    sTemp := '';
    for i := 1 to Length(Str) do
      sTemp := sTemp + Chr((ord(Str[i]) xor Key) xor (Key xor l));
  end;

  Result := '';

  for i := 1 to Length(sTemp) do
    Result := Result + IntToHex(Ord(sTemp[i]), 2);
end;

function DecryptStr(Str: String; Key, Level: SmallInt): String;
var
  i, l: Integer;
  sTemp: String;
begin
  sTemp := '';
  i := 1;
  while (i < Length(Str)) do
  begin
    sTemp := sTemp + Chr(StrToInt('$' + Copy(Str, i, 2)));
    Inc(i, 2);
  end;

  for l := Level downto 1 do
  begin
    Str := sTemp;
    sTemp := '';
    for i := 1 to Length(Str) do
      sTemp := sTemp + Chr((Ord(Str[i]) xor Key) xor (Key xor l));
  end;

  Result := '';
  for i := 1 to Length(sTemp) do
    Result := Result + Chr(Ord(sTemp[i]) xor Key)
end;

function EncryptStrEx(Str: String; Key: SmallInt; Level: SmallInt): String;
var
  i: Integer;
begin
  Result := Str;
  for i := 1 to Level do
    Result := EncryptStr(Result, Key, i);
end;

function DecryptStrEx(Str: String; Key: SmallInt; Level: SmallInt): String;
var
  i: Integer;
begin
  Result := Str;
  for i := Level downto 1 do
    Result := DecryptStr(Result, Key, i);
end;

end.
