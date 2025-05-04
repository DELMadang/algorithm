using System;

class Program
{
    static void Main(string[] args)
    {
        Console.Write("정수 N을 입력하세요 (1 ≤ N ≤ 1000): ");
        int N = int.Parse(Console.ReadLine());
        
        int sum = 0;
        
        for (int i = 1; i <= N; i++)
        {
            if (i % 3 == 0 || i % 5 == 0)
            {
                sum += i;
            }
        }
        
        Console.WriteLine("합계: " + sum);
        Console.ReadLine();
    }
}