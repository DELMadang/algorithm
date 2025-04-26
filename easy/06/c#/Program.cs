using System;

namespace CalculateAverage
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                double[] numbers = new double[5];
                double sum = 0;
                
                // 5개의 실수 입력 받기
                Console.WriteLine("5개의 실수를 입력하세요:");
                for (int i = 0; i < 5; i++)
                {
                    Console.Write($"실수 {i+1}: ");
                    numbers[i] = Convert.ToDouble(Console.ReadLine());
                    sum += numbers[i];
                }
                
                // 평균 계산
                double average = sum / 5;
                
                // 결과 출력
                Console.WriteLine($"입력한 실수들의 평균값: {average:F2}");
                
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