program e08;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Math;

function IsPrime(n: Integer): Boolean;
var
  i, sqrt_n: Integer;
begin
  // 2보다 작은 수는 소수가 아님
  if n < 2 then
    Exit(False);

  // 2는 유일한 짝수 소수
  if n = 2 then
    Exit(True);

  // 2를 제외한 모든 짝수는 소수가 아님
  if n mod 2 = 0 then
    Exit(False);

  // 제곱근까지만 검사하여 효율성 향상
  sqrt_n := Trunc(Sqrt(n));
  for i := 3 to sqrt_n do
  begin
    if i mod 2 = 1 then  // 홀수만 검사 (짝수는 이미 처리됨)
    begin
      if n mod i = 0 then  // 나누어 떨어지면 소수가 아님
        Exit(False);
    end;
  end;

  // 모든 검사를 통과하면 소수
  Result := True;
end;

var
  n: Integer;  // 사용자 입력을 저장할 변수

begin
  try
    // 사용자로부터 입력 받기
    Write('정수를 입력하세요 (2 ≤ n ≤ 1000): ');
    Readln(n);

    // 입력값이 문제 범위 내인지 확인
    if (n < 2) or (n > 1000) then
      Writeln('입력 범위를 벗어났습니다.')
    else
    begin
      // 소수 판별 결과 출력
      if IsPrime(n) then
        Writeln('소수입니다')
      else
        Writeln('소수가 아닙니다');
    end;

    Readln;  // 콘솔창이 바로 닫히지 않도록 대기
  except
    on E: Exception do
      Writeln('오류: ', E.Message);  // 예외 처리
  end;
end.
