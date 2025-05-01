program e10;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  N: Integer;
  SumLoop, SumFormula: Int64;
  I: Integer;
  InputStr: string;
begin
  try
    // ����ڷκ��� ���� N �Է� �ޱ�
    Write('���� N�� �Է��ϼ��� (1 �� N �� 10000): ');
    ReadLn(InputStr);

    // �Է°��� ��ȿ�� �������� Ȯ��
    if TryStrToInt(InputStr, N) then
    begin
      // �Է°� ���� ����
      if (N < 1) or (N > 10000) then
      begin
        WriteLn('�Է� ������ ������ϴ�.');
      end
      else
      begin
        // ���� ������ ����� ��� (N*(N+1)/2)
        SumFormula := Int64(N) * (N + 1) div 2;  // ū N ���� ����Ͽ� Int64 ���

        // ��� ���
        WriteLn('1���� ', N, '������ ��: ', SumFormula);
      end;
    end
    else
    begin
      // �߸��� �Է¿� ���� ���� �޽���
      WriteLn('�ùٸ� ������ �Է��ϼ���.');
    end;

    // ���α׷� ���� �� ���
    WriteLn('���α׷��� �����Ϸ��� Enter Ű�� ��������...');
    ReadLn;
  except
    on E: Exception do
      WriteLn('���� �߻�: ', E.Message);
  end;
end.
