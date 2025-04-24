program e03;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  numbers: array[1..5] of Integer;
  i, max: Integer;

begin
  try
    // 5���� ���� �Է� �ޱ�
    WriteLn('5���� ������ �Է��ϼ���:');
    for i := 1 to 5 do
    begin
      Write('���� ', i, ': ');
      ReadLn(numbers[i]);
    end;

    // �ִ� ã��
    max := numbers[1]; // ù ��° ���ڸ� �ִ����� �ʱ�ȭ

    for i := 2 to 5 do
    begin
      if numbers[i] > max then
        max := numbers[i];
    end;

    // ��� ���
    WriteLn('�ִ�: ', max);

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
