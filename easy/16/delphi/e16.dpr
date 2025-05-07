program e16;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  s: string;
  count: array['a'..'z'] of Integer;
  c: Char;
begin
  // �ʱ�ȭ
  for c := 'a' to 'z' do
    count[c] := 0;

  // �Է� �ޱ�
  Write('���ڿ��� �Է��ϼ��� (�ҹ��ڸ�): ');
  ReadLn(s);

  // ���� ����
  for c in s do
    if (c >= 'a') and (c <= 'z') then
      Inc(count[c]);

  // ��� ���
  WriteLn('�� ���ĺ� ���� Ƚ��:');
  for c := 'a' to 'z' do
    if count[c] > 0 then
      WriteLn(c, ': ', count[c]);

  ReadLn;
end.
