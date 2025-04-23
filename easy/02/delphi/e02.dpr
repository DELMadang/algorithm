program e02;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  n: Integer;

begin
  try
    // 사용자 입력 안내
    Write('정수를 입력하세요 (0 ~ 10000): ');
    ReadLn(n);

    // 입력값 검증
    if (n < 0) or (n > 10000) then
    begin
      WriteLn('입력한 정수는 0에서 10000 사이여야 합니다.');
      Exit;
    end;

    // 홀짝 판별
    if n mod 2 = 0 then
      WriteLn('짝수')
    else
      WriteLn('홀수');

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
