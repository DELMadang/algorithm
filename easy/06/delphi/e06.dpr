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
    // 5���� �Ǽ� �Է� �ޱ�
    WriteLn('5���� �Ǽ��� �Է��ϼ���:');
    sum := 0;

    for i := 1 to 5 do
    begin
      Write('�Ǽ� ', i, ': ');
      ReadLn(numbers[i]);
      sum := sum + numbers[i];
    end;

    // ��� ���
    average := sum / 5;

    // ��� ���
    WriteLn('�Է��� �Ǽ����� ��հ�: ', average:0:2);

    // ���α׷� ���� �� ���
    WriteLn('���α׷��� �����Ϸ��� �ƹ� Ű�� ��������...');
    ReadLn;
  except
    on E: Exception do
    begin
      WriteLn('���� �߻�: ', E.Message);
      ReadLn;
    end;
  end;
end.
