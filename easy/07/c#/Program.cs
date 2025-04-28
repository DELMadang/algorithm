using System;

namespace ReverseString
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                // 사용자 입력 안내
                Console.Write("문자열을 입력하세요 (최대 100자): ");
                string s = Console.ReadLine();
                
                // 입력값 검증
                if (s.Length > 100)
                {
                    Console.WriteLine("입력한 문자열이 너무 깁니다. 100자 이하로 입력하세요.");
                    Console.WriteLine("프로그램을 종료하려면 아무 키나 누르세요...");
                    Console.ReadKey();
                    return;
                }
                
                // 문자열 뒤집기
                char[] charArray = s.ToCharArray();
                Array.Reverse(charArray);
                string reversed = new string(charArray);
                
                // 결과 출력
                Console.WriteLine($"뒤집힌 문자열: {reversed}");
                
                // 프로그램 종료 전 대기
                Console.WriteLine("프로그램을 종료하려면 아무 키나 누르세요...");
                Console.ReadKey();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"오류 발생: {ex.Message}");
                Console.ReadLine();
            }
        }
    }
}