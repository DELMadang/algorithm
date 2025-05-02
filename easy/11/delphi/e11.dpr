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
  // �� �� �� ���� �� ã��
  smaller := Min(a, b);

  // �ִ� smaller���� ������� ���� �� ����
  SetLength(Result, smaller);
  count := 0;

  // 1���� smaller���� ��� ���� ���� �˻�
  for i := 1 to smaller do
  begin
    // i�� a�� b ����� ������� Ȯ��
    if (a mod i = 0) and (b mod i = 0) then
    begin
      Result[count] := i;
      Inc(count);
    end;
  end;

  // ���� �߰ߵ� ����� ������ �°� �迭 ũ�� ����
  SetLength(Result, count);
end;

var
  a, b: Integer;
  commonDivisors: TIntegerArray;
  i: Integer;
  inputStr: string;

begin
  try
    // ����ڷκ��� �� ���� �Է� �ޱ�
    Write('ù ��° ���� a�� �Է��ϼ��� (1 �� a �� 1000): ');
    ReadLn(inputStr);
    a := StrToInt(inputStr);

    Write('�� ��° ���� b�� �Է��ϼ��� (1 �� b �� 1000): ');
    ReadLn(inputStr);
    b := StrToInt(inputStr);

    // �Է°� ���� ����
    if (a < 1) or (a > 1000) or (b < 1) or (b > 1000) then
    begin
      WriteLn('�Է� ������ ������ϴ�.');
    end
    else
    begin
      // ����� ã��
      commonDivisors := FindCommonDivisors(a, b);

      // ��� ���
      WriteLn(a, '�� ', b, '�� ��� �����:');
      for i := 0 to Length(commonDivisors) - 1 do
      begin
        Write(commonDivisors[i], ' ');
      end;
      WriteLn;
    end;

    // ���α׷� ���� �� ���
    WriteLn('���α׷��� �����Ϸ��� Enter Ű�� ��������...');
    ReadLn;

  except
    on E: Exception do
      WriteLn('���� �߻�: ', E.Message);
  end;
end.
