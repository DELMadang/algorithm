using System;

namespace FindMaximum
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                int[] numbers = new int[5];
                
                // 5개의 정수 입력 받기
                Console.WriteLine("5개의 정수를 입력하세요:");
                for (int i = 0; i < 5; i++)
                {
                    Console.Write($"정수 {i+1}: ");
                    numbers[i] = int.Parse(Console.ReadLine());
                }
                
                // 최댓값 찾기
                int max = numbers[0]; // 첫 번째 숫자를 최댓값으로 초기화
                
                for (int i = 1; i < 5; i++)
                {
                    if (numbers[i] > max)
                        max = numbers[i];
                }
                
                // 결과 출력
                Console.WriteLine($"최댓값: {max}");
                
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