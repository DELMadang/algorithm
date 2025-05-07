program e16;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  s: string;
  count: array['a'..'z'] of Integer;
  c: Char;
begin
  // 초기화
  for c := 'a' to 'z' do
    count[c] := 0;

  // 입력 받기
  Write('문자열을 입력하세요 (소문자만): ');
  ReadLn(s);

  // 문자 세기
  for c in s do
    if (c >= 'a') and (c <= 'z') then
      Inc(count[c]);

  // 결과 출력
  WriteLn('각 알파벳 출현 횟수:');
  for c := 'a' to 'z' do
    if count[c] > 0 then
      WriteLn(c, ': ', count[c]);

  ReadLn;
end.
