using System;

namespace SumOfTwoNumbers
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                // 사용자 입력 안내
                Console.Write("첫 번째 정수를 입력하세요 (0 ~ 1000): ");
                int a = int.Parse(Console.ReadLine());
                
                Console.Write("두 번째 정수를 입력하세요 (0 ~ 1000): ");
                int b = int.Parse(Console.ReadLine());
                
                // 입력값 검증
                if (a < 0 || a > 1000 || b < 0 || b > 1000)
                {
                    Console.WriteLine("입력한 정수는 0에서 1000 사이여야 합니다.");
                    Console.WriteLine("프로그램을 종료하려면 아무 키나 누르세요...");
                    Console.ReadKey();
                    return;
                }
                
                // 합계 계산
                int sum = a + b;
                
                // 결과 출력
                Console.WriteLine($"두 수의 합: {sum}");
                
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