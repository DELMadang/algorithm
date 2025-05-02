program e11;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Math;

type
  TIntegerArray = array of Integer;

function FindCommonDivisors(a, b: Integer): TIntegerArray;
var
  i, smaller, count: Integer;
begin
  // 두 수 중 작은 수 찾기
  smaller := Min(a, b);

  // 최대 smaller개의 공약수가 있을 수 있음
  SetLength(Result, smaller);
  count := 0;

  // 1부터 smaller까지 모든 수에 대해 검사
  for i := 1 to smaller do
  begin
    // i가 a와 b 모두의 약수인지 확인
    if (a mod i = 0) and (b mod i = 0) then
    begin
      Result[count] := i;
      Inc(count);
    end;
  end;

  // 실제 발견된 공약수 개수에 맞게 배열 크기 조정
  SetLength(Result, count);
end;

var
  a, b: Integer;
  commonDivisors: TIntegerArray;
  i: Integer;
  inputStr: string;

begin
  try
    // 사용자로부터 두 정수 입력 받기
    Write('첫 번째 정수 a를 입력하세요 (1 ≤ a ≤ 1000): ');
    ReadLn(inputStr);
    a := StrToInt(inputStr);

    Write('두 번째 정수 b를 입력하세요 (1 ≤ b ≤ 1000): ');
    ReadLn(inputStr);
    b := StrToInt(inputStr);

    // 입력값 범위 검증
    if (a < 1) or (a > 1000) or (b < 1) or (b > 1000) then
    begin
      WriteLn('입력 범위를 벗어났습니다.');
    end
    else
    begin
      // 공약수 찾기
      commonDivisors := FindCommonDivisors(a, b);

      // 결과 출력
      WriteLn(a, '와 ', b, '의 모든 공약수:');
      for i := 0 to Length(commonDivisors) - 1 do
      begin
        Write(commonDivisors[i], ' ');
      end;
      WriteLn;
    end;

    // 프로그램 종료 전 대기
    WriteLn('프로그램을 종료하려면 Enter 키를 누르세요...');
    ReadLn;

  except
    on E: Exception do
      WriteLn('오류 발생: ', E.Message);
  end;
end.
