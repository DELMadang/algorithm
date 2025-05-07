using System;

class Program
{
    static void Main(string[] args)
    {
        // 입력 받기
        Console.Write("문자열을 입력하세요 (소문자만): ");
        string s = Console.ReadLine();
        
        // 카운트 배열 초기화 (a-z는 ASCII에서 97-122)
        int[] count = new int[26];
        
        // 문자 세기
        foreach (char c in s)
        {
            if (c >= 'a' && c <= 'z')
            {
                count[c - 'a']++;
            }
        }
        
        // 결과 출력
        Console.WriteLine("각 알파벳 출현 횟수:");
        for (int i = 0; i < 26; i++)
        {
            char c = (char)('a' + i);
            if (count[i] > 0)
            {
                Console.WriteLine($"{c}: {count[i]}");
            }
        }
        
        Console.ReadLine();
    }
}