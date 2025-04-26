program e06;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  numbers: array[1..5] of Double;
  i: Integer;
  sum, average: Double;

begin
  try
    // 5개의 실수 입력 받기
    WriteLn('5개의 실수를 입력하세요:');
    sum := 0;

    for i := 1 to 5 do
    begin
      Write('실수 ', i, ': ');
      ReadLn(numbers[i]);
      sum := sum + numbers[i];
    end;

    // 평균 계산
    average := sum / 5;

    // 결과 출력
    WriteLn('입력한 실수들의 평균값: ', average:0:2);

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
