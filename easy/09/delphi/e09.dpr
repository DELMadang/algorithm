program e09;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  Celsius: Double;
  Fahrenheit: Double;
  InputStr: string;
begin
  try
    // 사용자로부터 섭씨 온도 입력 받기
    Write('섭씨 온도를 입력하세요: ');
    ReadLn(InputStr);

    // 입력값이 유효한 숫자인지 확인 및 변환
    if TryStrToFloat(InputStr, Celsius) then
    begin
      // 섭씨 온도를 화씨 온도로 변환 (공식: F = C × 9/5 + 32)
      Fahrenheit := Celsius * 9/5 + 32;

      // 결과 출력
      WriteLn(Format('변환된 화씨 온도: %.2f°F', [Fahrenheit]));
    end
    else
    begin
      // 잘못된 입력에 대한 오류 메시지
      WriteLn('올바른 숫자를 입력하세요.');
    end;

    // 프로그램 종료 전 대기
    WriteLn('프로그램을 종료하려면 Enter 키를 누르세요...');
    ReadLn;
  except
    on E: Exception do
      WriteLn('오류 발생: ', E.Message);
  end;
end.
