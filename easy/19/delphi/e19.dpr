program e19;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function Fibonacci(n: Integer): Int64;
var
  a, b, c: Int64;
  i: Integer;
begin
  // n번째 피보나치 수를 계산합니다.
  // F₀ = 0, F₁ = 1, Fₙ = Fₙ₋₁ + Fₙ₋₂
  if n = 0 then
    Result := 0
  else if n = 1 then
    Result := 1
  else
  begin
    // 동적 계획법(반복문)을 사용한 계산
    a := 0;
    b := 1;
    for i := 2 to n do
    begin
      c := a + b;
      a := b;
      b := c;
    end;
    Result := b;
  end;
end;

var
  n: Integer;
  ValidInput: Boolean;
begin
  ValidInput := False;

  // 입력 받기
  Write('n을 입력하세요: ');
  try
    ReadLn(n);
    ValidInput := True;

    // 입력 검증
    if (n >= 0) and (n <= 30) then
    begin
      // n번째 피보나치 수 계산 및 출력
      WriteLn('F(', n, ') = ', Fibonacci(n));
    end
    else
      WriteLn('n은 0에서 30 사이의 값이어야 합니다.');
  except
    on E: EConvertError do
      WriteLn('올바른 정수를 입력하세요.');
    on E: Exception do
      WriteLn('오류가 발생했습니다: ', E.Message);
  end;

  // 프로그램을 종료하기 전에 사용자가 결과를 볼 수 있도록 대기
  if ValidInput then
  begin
    WriteLn;
    Write('프로그램을 종료하려면 아무 키나 누르세요...');
    ReadLn;
  end;
end.
