program e04;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  n, i: Integer;
begin
  try
    // 사용자 입력 안내
    Write('출력할 구구단의 단 수를 입력하세요 (1 ~ 9): ');
    ReadLn(n);

    // 입력값 검증
    if (n < 1) or (n > 9) then
    begin
      WriteLn('입력한 수는 1에서 9 사이여야 합니다.');
      Exit;
    end;

    // 구구단 출력
    WriteLn(n, '단 구구단:');
    for i := 1 to 9 do
    begin
      WriteLn(n, ' × ', i, ' = ', n * i);
    end;

    // 프로그램 종료 전 대기
    WriteLn('프로그램을 종료하려면 아무 키나 누르세요...');
    ReadLn;
  except
    on E: Exception do
    begin
      WriteLn('오류 발생: ', E.Message);
      ReadLn;
    end;
  end;
end.
