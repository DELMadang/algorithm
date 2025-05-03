using System;

class CharacterCounter
{
    /// <summary>
    /// 문자열 s 내에서 문자 c의 개수를 세는 함수
    /// </summary>
    static int CountCharacter(string s, char c)
    {
        int count = 0;
        foreach (char ch in s)
        {
            if (ch == c)
            {
                count++;
            }
        }
        return count;
    }
    
    static void Main()
    {
        // 사용자로부터 입력 받기
        Console.Write("문자열을 입력하세요: ");
        string s = Console.ReadLine();
        
        Console.Write("찾을 문자를 입력하세요: ");
        string cInput = Console.ReadLine();
        
        // 입력 검증 (찾을 문자는 한 글자여야 함)
        if (cInput.Length != 1)
        {
            Console.WriteLine("찾을 문자는 한 글자여야 합니다.");
        }
        else
        {
            char c = cInput[0];
            
            // 함수 호출 및 결과 출력
            int result = CountCharacter(s, c);
            Console.WriteLine($"문자열 '{s}' 내에 '{c}'의 개수: {result}");
        }
    }
}