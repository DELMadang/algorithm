using System;

class Program
{
    static void Main()
    {
        // 사용자로부터 정수 n 입력 받기
        Console.Write("정수를 입력하세요 (0 ≤ n ≤ 12): ");
        string input = Console.ReadLine();
        
        if (int.TryParse(input, out int n))
        {
            // 입력값 범위 확인
            if (n < 0 || n > 12)
            {
                Console.WriteLine("입력 범위를 벗어났습니다. 0에서 12 사이의 정수를 입력해주세요.");
                return;
            }
            
            // n! 계산
            long factorial = 1;
            for (int i = 2; i <= n; i++)
            {
                factorial *= i;
            }
            
            // 결과 출력
            Console.WriteLine($"{n}! = {factorial}");
        }
        else
        {
            Console.WriteLine("유효한 정수를 입력해주세요.");
        }
    }
}