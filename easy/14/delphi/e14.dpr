program e14;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function GCD(a, b: Integer): Integer;
var
  r: Integer;
begin
  while b <> 0 do
  begin
    r := a mod b;
    a := b;
    b := r;
  end;
  Result := a;
end;

var
  a, b: Integer;
begin
  Write('첫 번째 정수를 입력하세요 (1 ≤ a ≤ 10000): ');
  ReadLn(a);
  Write('두 번째 정수를 입력하세요 (1 ≤ b ≤ 10000): ');
  ReadLn(b);

  WriteLn(a, '와 ', b, '의 최대공약수: ', GCD(a, b));
  ReadLn;
end.
