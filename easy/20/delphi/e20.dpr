program e20;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  StrUtils,
  Classes;

function CountWords(const s: string): Integer;
var
  WordList: TStringList;
  i: Integer;
  CleanString: string;
begin
  // 문자열 내 단어 수를 세는 함수
  // 단어는 공백으로 구분됨

  // 빈 문자열 처리
  if Trim(s) = '' then
  begin
    Result := 0;
    Exit;
  end;

  // 공백으로 문자열 분할
  WordList := TStringList.Create;
  try
    // 문자열 앞뒤 공백 제거 및 연속된 공백 처리
    CleanString := Trim(s);
    while Pos('  ', CleanString) > 0 do
      CleanString := StringReplace(CleanString, '  ', ' ', [rfReplaceAll]);

    // 공백으로 문자열 분할
    ExtractStrings([' '], [], PChar(CleanString), WordList);

    // 빈 항목 제거
    for i := WordList.Count - 1 downto 0 do
      if Trim(WordList[i]) = '' then
        WordList.Delete(i);

    Result := WordList.Count;
  finally
    WordList.Free;
  end;
end;

var
  s: string;
begin
  try
    // 입력 받기
    Write('문자열을 입력하세요: ');
    ReadLn(s);

    // 입력 검증
    if Length(s) <= 200 then
    begin
      // 단어 수 계산 및 출력
      WriteLn('단어 수: ', CountWords(s));
    end
    else
      WriteLn('문자열 길이는 200자 이하여야 합니다.');
  except
    on E: Exception do
      WriteLn('오류가 발생했습니다: ', E.Message);
  end;

  // 프로그램을 종료하기 전에 사용자가 결과를 볼 수 있도록 대기
  WriteLn;
  Write('프로그램을 종료하려면 아무 키나 누르세요...');
  ReadLn;
end.
