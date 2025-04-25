program e04;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  n, i: Integer;
begin
  try
    // ����� �Է� �ȳ�
    Write('����� �������� �� ���� �Է��ϼ��� (1 ~ 9): ');
    ReadLn(n);

    // �Է°� ����
    if (n < 1) or (n > 9) then
    begin
      WriteLn('�Է��� ���� 1���� 9 ���̿��� �մϴ�.');
      Exit;
    end;

    // ������ ���
    WriteLn(n, '�� ������:');
    for i := 1 to 9 do
    begin
      WriteLn(n, ' �� ', i, ' = ', n * i);
    end;

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
