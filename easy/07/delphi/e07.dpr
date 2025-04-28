program e07;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  s: string;
  reversed: string;
  i: Integer;
begin
  try
    // 사용자 입력 안내
    Write('문자열을 입력하세요 (최대 100자): ');
    ReadLn(s);

    // 입력값 검증
    if Length(s) > 100 then
    begin
      WriteLn('입력한 문자열이 너무 깁니다. 100자 이하로 입력하세요.');
      Exit;
    end;

    // 문자열 뒤집기
    reversed := '';
    for i := Length(s) downto 1 do
    begin
      reversed := reversed + s[i];
    end;

    // 결과 출력
    WriteLn('뒤집힌 문자열: ', reversed);

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
