program e17;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function ReverseNum(n: Integer): Integer;
var
  reversedNum, lastDigit: Integer;
begin
  reversedNum := 0;

  while n > 0 do
  begin
    // ������ �ڸ��� ����
    lastDigit := n mod 10;
    // ������ ���ڿ� �ڸ��� �߰�
    reversedNum := reversedNum * 10 + lastDigit;
    // ���� ���ڿ��� ������ �ڸ��� ����
    n := n div 10;
  end;

  Result := reversedNum;
end;

var
  n: Integer;
begin
  // �Է� �ޱ�
  ReadLn(n);

  // ��� ���
  WriteLn(ReverseNum(n));
  ReadLn;
end.
