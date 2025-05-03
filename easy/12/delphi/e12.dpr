program e12;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

function CountCharacter(const s: string; c: Char): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Length(s) do
  begin
    if s[i] = c then
      Inc(Result);
  end;
end;

var
  s, cInput: string;
  c: Char;
  result: Integer;

begin
  try
    // ����ڷκ��� �Է� �ޱ�
    Write('���ڿ��� �Է��ϼ���: ');
    ReadLn(s);

    Write('ã�� ���ڸ� �Է��ϼ���: ');
    ReadLn(cInput);

    // �Է� ���� (ã�� ���ڴ� �� ���ڿ��� ��)
    if Length(cInput) <> 1 then
    begin
      WriteLn('ã�� ���ڴ� �� ���ڿ��� �մϴ�.');
    end
    else
    begin
      c := cInput[1];

      // �Լ� ȣ�� �� ��� ���
      result := CountCharacter(s, c);
      WriteLn('���ڿ� ''', s, ''' ���� ''', c, '''�� ����: ', result);
    end;

    // ���α׷� ���� �� ���
    WriteLn('���α׷��� �����Ϸ��� Enter Ű�� ��������...');
    ReadLn;

  except
    on E: Exception do
      WriteLn('���� �߻�: ', E.Message);
  end;
end.
