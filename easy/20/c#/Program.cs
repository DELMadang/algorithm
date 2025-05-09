using System;
using System.Linq;

class Program
{
    static void Main(string[] args)
    {
        try
        {
            // 입력 받기
            Console.Write("문자열을 입력하세요: ");
            string s = Console.ReadLine();
            
            // 입력 검증
            if (s.Length <= 200)
            {
                // 단어 수 계산 및 출력
                int wordCount = CountWords(s);
                Console.WriteLine($"단어 수: {wordCount}");
            }
            else
            {
                Console.WriteLine("문자열 길이는 200자 이하여야 합니다.");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"오류가 발생했습니다: {ex.Message}");
        }
    }
    
    /**
     * 문자열 내 단어 수를 세는 함수
     * 단어는 공백으로 구분됨
     */
    static int CountWords(string s)
    {
        // 문자열이 null이거나 빈 문자열인 경우
        if (string.IsNullOrEmpty(s))
        {
            return 0;
        }
        
        // 문자열 앞뒤 공백 제거 후 공백으로 분할
        string[] words = s.Trim().Split(new[] { ' ', '\t', '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);
        
        return words.Length;
    }
}