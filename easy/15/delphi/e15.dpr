program e15;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  numbers: array[0..4] of Integer;
  i, j, temp: Integer;
begin
  // 5개의 정수 입력받기
  WriteLn('5개의 정수를 입력하세요:');
  for i := 0 to 4 do
  begin
    Write('숫자 ', i + 1, ': ');
    ReadLn(numbers[i]);
  end;

  // 내림차순으로 정렬하기 (버블 정렬 사용)
  for i := 0 to 3 do
  begin
    for j := 0 to 3 - i do
    begin
      if numbers[j] < numbers[j + 1] then
      begin
        temp := numbers[j];
        numbers[j] := numbers[j + 1];
        numbers[j + 1] := temp;
      end;
    end;
  end;

  // 정렬된 배열 출력하기
  WriteLn('역순으로 정렬된 정수:');
  for i := 0 to 4 do
    Write(numbers[i], ' ');
  WriteLn;

  ReadLn; // 콘솔 창이 바로 닫히지 않도록
end.
