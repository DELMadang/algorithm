using System;

class SumCalculator
{
    static void Main()
    {
        // 사용자로부터 정수 N 입력 받기
        Console.Write("정수 N을 입력하세요 (1 ≤ N ≤ 10000): ");
        string input = Console.ReadLine();
        
        // 입력값이 유효한 정수인지 확인
        if (int.TryParse(input, out int n))
        {
            // 입력값 범위 검증
            if (n < 1 || n > 10000)
            {
                Console.WriteLine("입력 범위를 벗어났습니다.");
            }
            else
            {
                // 수학 공식을 사용한 계산 (N*(N+1)/2)
                long sumFormula = (long)n * (n + 1) / 2;  // 큰 N 값에 대비하여 long 사용
                
                // 결과 출력
                Console.WriteLine($"1부터 {n}까지의 합: {sumFormula}");
            }
        }
        else
        {
            // 잘못된 입력에 대한 오류 메시지
            Console.WriteLine("올바른 정수를 입력하세요.");
        }
    }
}