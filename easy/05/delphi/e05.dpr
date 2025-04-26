program e05;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n: Integer;
  factorial: Int64;
  i: Integer;
begin
  try
    // ����ڷκ��� ���� n �Է� �ޱ�
    Write('������ �Է��ϼ��� (0 �� n �� 12): ');
    ReadLn(n);

    // �Է°� ���� Ȯ��
    if (n < 0) or (n > 12) then
    begin
      WriteLn('�Է� ������ ������ϴ�. 0���� 12 ������ ������ �Է����ּ���.');
      Exit;
    end;

    // n! ���
    factorial := 1;
    for i := 2 to n do
      factorial := factorial * i;

    // ��� ���
    WriteLn(n, '! = ', factorial);

    // ���α׷� ���� �� ���
    WriteLn('���α׷��� �����Ϸ��� �ƹ� Ű�� ��������...');
    ReadLn;
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;
end.
