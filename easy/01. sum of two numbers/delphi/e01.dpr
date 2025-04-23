program e01;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  a, b, sum: Integer;
begin
  try
    // 사용자 입력 안내
    Write('첫 번째 정수를 입력하세요 (0 ~ 1000): ');
    ReadLn(a);

    Write('두 번째 정수를 입력하세요 (0 ~ 1000): ');
    ReadLn(b);

    // 입력값 검증
    if (a < 0) or (a > 1000) or (b < 0) or (b > 1000) then
    begin
      WriteLn('입력한 정수는 0에서 1000 사이여야 합니다.');
      Exit;
    end;

    // 합계 계산
    sum := a + b;

    // 결과 출력
    WriteLn('두 수의 합: ', sum);

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
