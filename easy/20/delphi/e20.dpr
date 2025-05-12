program e20;

{$APPTYPE CONSOLE}

uses
  System.SysUtils, System.Classes, System.RegularExpressions;

function CountWords(const s: string): Integer;
var
  words: TArray<string>;
begin
  // 문자열이 비어있는 경우 0 반환
  if Trim(s) = '' then
    Exit(0);
  
  // 문자열을 공백으로 분리하고 빈 문자열 제거
  words := TRegEx.Split(Trim(s), '\s+');
  
  // 단어의 개수 반환
  Result := Length(words);
end;

var
  s: string;
  wordCount: Integer;
begin
  try
    // 입력 및 출력
    ReadLn(s);
    wordCount := CountWords(s);
    WriteLn(wordCount);
    
    ReadLn; // 콘솔 창이 닫히지 않도록
  except
    on E: Exception do
    begin
      WriteLn(E.ClassName, ': ', E.Message);
      ReadLn;
    end;
  end;
end.