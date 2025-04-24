program e03;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  numbers: array[1..5] of Integer;
  i, max: Integer;

begin
  try
    // 5개의 정수 입력 받기
    WriteLn('5개의 정수를 입력하세요:');
    for i := 1 to 5 do
    begin
      Write('정수 ', i, ': ');
      ReadLn(numbers[i]);
    end;

    // 최댓값 찾기
    max := numbers[1]; // 첫 번째 숫자를 최댓값으로 초기화

    for i := 2 to 5 do
    begin
      if numbers[i] > max then
        max := numbers[i];
    end;

    // 결과 출력
    WriteLn('최댓값: ', max);

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
