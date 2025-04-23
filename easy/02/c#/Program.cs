using System;

namespace OddEvenChecker
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                // 사용자 입력 안내
                Console.Write("정수를 입력하세요 (0 ~ 10000): ");
                int n = int.Parse(Console.ReadLine());

                // 입력값 검증
                if (n < 0 || n > 10000)
                {
                    Console.WriteLine("입력한 정수는 0에서 10000 사이여야 합니다.");
                    Console.WriteLine("프로그램을 종료하려면 아무 키나 누르세요...");
                    Console.ReadKey();
                    return;
                }

                // 홀짝 판별
                if (n % 2 == 0)
                    Console.WriteLine("짝수");
                else
                    Console.WriteLine("홀수");

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