program e14;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function GCD(a, b: Integer): Integer;
var
  r: Integer;
begin
  while b <> 0 do
  begin
    r := a mod b;
    a := b;
    b := r;
  end;
  Result := a;
end;

var
  a, b: Integer;
begin
  Write('ù ��° ������ �Է��ϼ��� (1 �� a �� 10000): ');
  ReadLn(a);
  Write('�� ��° ������ �Է��ϼ��� (1 �� b �� 10000): ');
  ReadLn(b);

  WriteLn(a, '�� ', b, '�� �ִ�����: ', GCD(a, b));
  ReadLn;
end.
