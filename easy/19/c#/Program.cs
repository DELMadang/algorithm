using System;

class Program
{
    static void Main(string[] args)
    {
        Console.Write("n을 입력하세요: ");
        
        try
        {
            // 입력 받기
            int n = int.Parse(Console.ReadLine());
            
            // 입력 검증
            if (n >= 0 && n <= 30)
            {
                // n번째 피보나치 수 계산 및 출력
                long result = Fibonacci(n);
                Console.WriteLine($"F({n}) = {result}");
            }
            else
            {
                Console.WriteLine("n은 0에서 30 사이의 값이어야 합니다.");
            }
        }
        catch (FormatException)
        {
            Console.WriteLine("올바른 정수를 입력하세요.");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"오류가 발생했습니다: {ex.Message}");
        }
    }
    
    /**
     * n번째 피보나치 수를 계산합니다.
     * F₀ = 0, F₁ = 1, Fₙ = Fₙ₋₁ + Fₙ₋₂
     */
    static long Fibonacci(int n)
    {
        if (n == 0) return 0;
        if (n == 1) return 1;
        
        // 동적 계획법(반복문)을 사용한 계산
        long a = 0, b = 1, c;
        for (int i = 2; i <= n; i++)
        {
            c = a + b;
            a = b;
            b = c;
        }
        
        return b;
    }
}