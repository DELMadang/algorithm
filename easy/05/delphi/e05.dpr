program e05;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n: Integer;
  factorial: Int64;
  i: Integer;
begin
  try
    // 사용자로부터 정수 n 입력 받기
    Write('정수를 입력하세요 (0 ≤ n ≤ 12): ');
    ReadLn(n);

    // 입력값 범위 확인
    if (n < 0) or (n > 12) then
    begin
      WriteLn('입력 범위를 벗어났습니다. 0에서 12 사이의 정수를 입력해주세요.');
      Exit;
    end;

    // n! 계산
    factorial := 1;
    for i := 2 to n do
      factorial := factorial * i;

    // 결과 출력
    WriteLn(n, '! = ', factorial);

    // 프로그램 종료 전 대기
    WriteLn('프로그램을 종료하려면 아무 키나 누르세요...');
    ReadLn;
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;
end.
