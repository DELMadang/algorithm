program e15;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  numbers: array[0..4] of Integer;
  i, j, temp: Integer;
begin
  // 5���� ���� �Է¹ޱ�
  WriteLn('5���� ������ �Է��ϼ���:');
  for i := 0 to 4 do
  begin
    Write('���� ', i + 1, ': ');
    ReadLn(numbers[i]);
  end;

  // ������������ �����ϱ� (���� ���� ���)
  for i := 0 to 3 do
  begin
    for j := 0 to 3 - i do
    begin
      if numbers[j] < numbers[j + 1] then
      begin
        temp := numbers[j];
        numbers[j] := numbers[j + 1];
        numbers[j + 1] := temp;
      end;
    end;
  end;

  // ���ĵ� �迭 ����ϱ�
  WriteLn('�������� ���ĵ� ����:');
  for i := 0 to 4 do
    Write(numbers[i], ' ');
  WriteLn;

  ReadLn; // �ܼ� â�� �ٷ� ������ �ʵ���
end.
