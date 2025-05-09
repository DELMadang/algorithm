program e20;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  StrUtils,
  Classes;

function CountWords(const s: string): Integer;
var
  WordList: TStringList;
  i: Integer;
  CleanString: string;
begin
  // ���ڿ� �� �ܾ� ���� ���� �Լ�
  // �ܾ�� �������� ���е�

  // �� ���ڿ� ó��
  if Trim(s) = '' then
  begin
    Result := 0;
    Exit;
  end;

  // �������� ���ڿ� ����
  WordList := TStringList.Create;
  try
    // ���ڿ� �յ� ���� ���� �� ���ӵ� ���� ó��
    CleanString := Trim(s);
    while Pos('  ', CleanString) > 0 do
      CleanString := StringReplace(CleanString, '  ', ' ', [rfReplaceAll]);

    // �������� ���ڿ� ����
    ExtractStrings([' '], [], PChar(CleanString), WordList);

    // �� �׸� ����
    for i := WordList.Count - 1 downto 0 do
      if Trim(WordList[i]) = '' then
        WordList.Delete(i);

    Result := WordList.Count;
  finally
    WordList.Free;
  end;
end;

var
  s: string;
begin
  try
    // �Է� �ޱ�
    Write('���ڿ��� �Է��ϼ���: ');
    ReadLn(s);

    // �Է� ����
    if Length(s) <= 200 then
    begin
      // �ܾ� �� ��� �� ���
      WriteLn('�ܾ� ��: ', CountWords(s));
    end
    else
      WriteLn('���ڿ� ���̴� 200�� ���Ͽ��� �մϴ�.');
  except
    on E: Exception do
      WriteLn('������ �߻��߽��ϴ�: ', E.Message);
  end;

  // ���α׷��� �����ϱ� ���� ����ڰ� ����� �� �� �ֵ��� ���
  WriteLn;
  Write('���α׷��� �����Ϸ��� �ƹ� Ű�� ��������...');
  ReadLn;
end.
