program e02;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  n: Integer;

begin
  try
    // ����� �Է� �ȳ�
    Write('������ �Է��ϼ��� (0 ~ 10000): ');
    ReadLn(n);

    // �Է°� ����
    if (n < 0) or (n > 10000) then
    begin
      WriteLn('�Է��� ������ 0���� 10000 ���̿��� �մϴ�.');
      Exit;
    end;

    // Ȧ¦ �Ǻ�
    if n mod 2 = 0 then
      WriteLn('¦��')
    else
      WriteLn('Ȧ��');

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
