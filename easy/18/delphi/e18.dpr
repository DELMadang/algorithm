program e18;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function IsLeapYear(Year: Integer): Boolean;
begin
  // �������� �Ǻ��ϴ� �Լ�
  // - 4�� ������ ��������, 100���� ������ �������� ������ ����
  // - �Ǵ� 400���� ������ �������� ����
  Result := ((Year mod 4 = 0) and (Year mod 100 <> 0)) or (Year mod 400 = 0);
end;

var
  Year: Integer;
  ValidInput: Boolean;
begin
  ValidInput := False;

  // �Է� �ޱ�
  Write('������ �Է��ϼ���: ');
  try
    ReadLn(Year);
    ValidInput := True;

    // �Է� ����
    if (Year >= 1) and (Year <= 10000) then
    begin
      // ���� �Ǻ�
      if IsLeapYear(Year) then
        WriteLn('�����Դϴ�')
      else
        WriteLn('������ �ƴմϴ�');
    end
    else
      WriteLn('������ 1���� 10000 ������ ���̾�� �մϴ�.');
  except
    on E: EConvertError do
      WriteLn('�ùٸ� ���ڸ� �Է��ϼ���.');
    on E: Exception do
      WriteLn('������ �߻��߽��ϴ�: ', E.Message);
  end;

  // ���α׷��� �����ϱ� ���� ����ڰ� ����� �� �� �ֵ��� ���
  if ValidInput then
  begin
    WriteLn;
    Write('���α׷��� �����Ϸ��� �ƹ� Ű�� ��������...');
    ReadLn;
  end;
end.
