program e17;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function ReverseNum(n: Integer): Integer;
var
  reversedNum, lastDigit: Integer;
begin
  reversedNum := 0;

  while n > 0 do
  begin
    // 마지막 자릿수 추출
    lastDigit := n mod 10;
    // 뒤집힌 숫자에 자릿수 추가
    reversedNum := reversedNum * 10 + lastDigit;
    // 원래 숫자에서 마지막 자릿수 제거
    n := n div 10;
  end;

  Result := reversedNum;
end;

var
  n: Integer;
begin
  // 입력 받기
  ReadLn(n);

  // 결과 출력
  WriteLn(ReverseNum(n));
  ReadLn;
end.
