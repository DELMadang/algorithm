program e18;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function IsLeapYear(Year: Integer): Boolean;
begin
  // 윤년인지 판별하는 함수
  // - 4로 나누어 떨어지고, 100으로 나누어 떨어지지 않으면 윤년
  // - 또는 400으로 나누어 떨어지면 윤년
  Result := ((Year mod 4 = 0) and (Year mod 100 <> 0)) or (Year mod 400 = 0);
end;

var
  Year: Integer;
  ValidInput: Boolean;
begin
  ValidInput := False;

  // 입력 받기
  Write('연도를 입력하세요: ');
  try
    ReadLn(Year);
    ValidInput := True;

    // 입력 검증
    if (Year >= 1) and (Year <= 10000) then
    begin
      // 윤년 판별
      if IsLeapYear(Year) then
        WriteLn('윤년입니다')
      else
        WriteLn('윤년이 아닙니다');
    end
    else
      WriteLn('연도는 1에서 10000 사이의 값이어야 합니다.');
  except
    on E: EConvertError do
      WriteLn('올바른 숫자를 입력하세요.');
    on E: Exception do
      WriteLn('오류가 발생했습니다: ', E.Message);
  end;

  // 프로그램을 종료하기 전에 사용자가 결과를 볼 수 있도록 대기
  if ValidInput then
  begin
    WriteLn;
    Write('프로그램을 종료하려면 아무 키나 누르세요...');
    ReadLn;
  end;
end.
