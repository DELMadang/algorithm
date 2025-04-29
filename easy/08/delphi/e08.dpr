program e08;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Math;

function IsPrime(n: Integer): Boolean;
var
  i, sqrt_n: Integer;
begin
  // 2���� ���� ���� �Ҽ��� �ƴ�
  if n < 2 then
    Exit(False);

  // 2�� ������ ¦�� �Ҽ�
  if n = 2 then
    Exit(True);

  // 2�� ������ ��� ¦���� �Ҽ��� �ƴ�
  if n mod 2 = 0 then
    Exit(False);

  // �����ٱ����� �˻��Ͽ� ȿ���� ���
  sqrt_n := Trunc(Sqrt(n));
  for i := 3 to sqrt_n do
  begin
    if i mod 2 = 1 then  // Ȧ���� �˻� (¦���� �̹� ó����)
    begin
      if n mod i = 0 then  // ������ �������� �Ҽ��� �ƴ�
        Exit(False);
    end;
  end;

  // ��� �˻縦 ����ϸ� �Ҽ�
  Result := True;
end;

var
  n: Integer;  // ����� �Է��� ������ ����

begin
  try
    // ����ڷκ��� �Է� �ޱ�
    Write('������ �Է��ϼ��� (2 �� n �� 1000): ');
    Readln(n);

    // �Է°��� ���� ���� ������ Ȯ��
    if (n < 2) or (n > 1000) then
      Writeln('�Է� ������ ������ϴ�.')
    else
    begin
      // �Ҽ� �Ǻ� ��� ���
      if IsPrime(n) then
        Writeln('�Ҽ��Դϴ�')
      else
        Writeln('�Ҽ��� �ƴմϴ�');
    end;

    Readln;  // �ܼ�â�� �ٷ� ������ �ʵ��� ���
  except
    on E: Exception do
      Writeln('����: ', E.Message);  // ���� ó��
  end;
end.
