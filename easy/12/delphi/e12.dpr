program e12;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

function CountCharacter(const s: string; c: Char): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Length(s) do
  begin
    if s[i] = c then
      Inc(Result);
  end;
end;

var
  s, cInput: string;
  c: Char;
  result: Integer;

begin
  try
    // 사용자로부터 입력 받기
    Write('문자열을 입력하세요: ');
    ReadLn(s);

    Write('찾을 문자를 입력하세요: ');
    ReadLn(cInput);

    // 입력 검증 (찾을 문자는 한 글자여야 함)
    if Length(cInput) <> 1 then
    begin
      WriteLn('찾을 문자는 한 글자여야 합니다.');
    end
    else
    begin
      c := cInput[1];

      // 함수 호출 및 결과 출력
      result := CountCharacter(s, c);
      WriteLn('문자열 ''', s, ''' 내에 ''', c, '''의 개수: ', result);
    end;

    // 프로그램 종료 전 대기
    WriteLn('프로그램을 종료하려면 Enter 키를 누르세요...');
    ReadLn;

  except
    on E: Exception do
      WriteLn('오류 발생: ', E.Message);
  end;
end.
