program e07;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  s: string;
  reversed: string;
  i: Integer;
begin
  try
    // ����� �Է� �ȳ�
    Write('���ڿ��� �Է��ϼ��� (�ִ� 100��): ');
    ReadLn(s);

    // �Է°� ����
    if Length(s) > 100 then
    begin
      WriteLn('�Է��� ���ڿ��� �ʹ� ��ϴ�. 100�� ���Ϸ� �Է��ϼ���.');
      Exit;
    end;

    // ���ڿ� ������
    reversed := '';
    for i := Length(s) downto 1 do
    begin
      reversed := reversed + s[i];
    end;

    // ��� ���
    WriteLn('������ ���ڿ�: ', reversed);

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
