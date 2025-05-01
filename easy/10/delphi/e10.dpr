program e10;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  N: Integer;
  SumLoop, SumFormula: Int64;
  I: Integer;
  InputStr: string;
begin
  try
    // 사용자로부터 정수 N 입력 받기
    Write('정수 N을 입력하세요 (1 ≤ N ≤ 10000): ');
    ReadLn(InputStr);

    // 입력값이 유효한 정수인지 확인
    if TryStrToInt(InputStr, N) then
    begin
      // 입력값 범위 검증
      if (N < 1) or (N > 10000) then
      begin
        WriteLn('입력 범위를 벗어났습니다.');
      end
      else
      begin
        // 수학 공식을 사용한 계산 (N*(N+1)/2)
        SumFormula := Int64(N) * (N + 1) div 2;  // 큰 N 값에 대비하여 Int64 사용

        // 결과 출력
        WriteLn('1부터 ', N, '까지의 합: ', SumFormula);
      end;
    end
    else
    begin
      // 잘못된 입력에 대한 오류 메시지
      WriteLn('올바른 정수를 입력하세요.');
    end;

    // 프로그램 종료 전 대기
    WriteLn('프로그램을 종료하려면 Enter 키를 누르세요...');
    ReadLn;
  except
    on E: Exception do
      WriteLn('오류 발생: ', E.Message);
  end;
end.
