using System;

namespace MultiplicationTable
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                // 사용자 입력 안내
                Console.Write("출력할 구구단의 단 수를 입력하세요 (1 ~ 9): ");
                int n = int.Parse(Console.ReadLine());
                
                // 입력값 검증
                if (n < 1 || n > 9)
                {
                    Console.WriteLine("입력한 수는 1에서 9 사이여야 합니다.");
                    Console.WriteLine("프로그램을 종료하려면 아무 키나 누르세요...");
                    Console.ReadKey();
                    return;
                }
                
                // 구구단 출력
                Console.WriteLine($"{n}단 구구단:");
                for (int i = 1; i <= 9; i++)
                {
                    Console.WriteLine($"{n} × {i} = {n * i}");
                }
                
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