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
    // ����ڷκ��� ���� �µ� �Է� �ޱ�
    Write('���� �µ��� �Է��ϼ���: ');
    ReadLn(InputStr);

    // �Է°��� ��ȿ�� �������� Ȯ�� �� ��ȯ
    if TryStrToFloat(InputStr, Celsius) then
    begin
      // ���� �µ��� ȭ�� �µ��� ��ȯ (����: F = C �� 9/5 + 32)
      Fahrenheit := Celsius * 9/5 + 32;

      // ��� ���
      WriteLn(Format('��ȯ�� ȭ�� �µ�: %.2f��F', [Fahrenheit]));
    end
    else
    begin
      // �߸��� �Է¿� ���� ���� �޽���
      WriteLn('�ùٸ� ���ڸ� �Է��ϼ���.');
    end;

    // ���α׷� ���� �� ���
    WriteLn('���α׷��� �����Ϸ��� Enter Ű�� ��������...');
    ReadLn;
  except
    on E: Exception do
      WriteLn('���� �߻�: ', E.Message);
  end;
end.
