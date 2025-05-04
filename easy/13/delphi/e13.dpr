program e13;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  N, i, sum: Integer;
begin
  Write('정수 N을 입력하세요 (1 ≤ N ≤ 1000): ');
  ReadLn(N);

  sum := 0;

  for i := 1 to N do
  begin
    if (i mod 3 = 0) or (i mod 5 = 0) then
      sum := sum + i;
  end;

  WriteLn('합계: ', sum);
  ReadLn;
end.
