using System;

class WordCounter
{
    static int CountWords(string s)
    {
        // 문자열이 비어있거나, null이거나, 공백만 있는 경우 0 반환
        if (string.IsNullOrWhiteSpace(s))
        {
            return 0;
        }
        
        // 문자열을 공백으로 분리하고 단어 개수 세기
        string[] words = s.Trim().Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
        return words.Length;
    }
    
    static void Main()
    {
        // 입력 및 출력
        string s = Console.ReadLine();
        int wordCount = CountWords(s);
        Console.WriteLine(wordCount);
    }
}