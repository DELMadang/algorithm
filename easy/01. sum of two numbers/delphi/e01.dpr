program e01;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  a, b, sum: Integer;
begin
  try
    // ����� �Է� �ȳ�
    Write('ù ��° ������ �Է��ϼ��� (0 ~ 1000): ');
    ReadLn(a);

    Write('�� ��° ������ �Է��ϼ��� (0 ~ 1000): ');
    ReadLn(b);

    // �Է°� ����
    if (a < 0) or (a > 1000) or (b < 0) or (b > 1000) then
    begin
      WriteLn('�Է��� ������ 0���� 1000 ���̿��� �մϴ�.');
      Exit;
    end;

    // �հ� ���
    sum := a + b;

    // ��� ���
    WriteLn('�� ���� ��: ', sum);

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
