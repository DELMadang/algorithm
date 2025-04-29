using System;

class e08
{
    static bool IsPrime(int n)
    {
        // 2보다 작은 수는 소수가 아님
        if (n < 2)
        {
            return false;
        }
        
        // 2는 유일한 짝수 소수
        if (n == 2)
        {
            return true;
        }
        
        // 2를 제외한 모든 짝수는 소수가 아님
        if (n % 2 == 0)
        {
            return false;
        }
        
        // 제곱근까지만 검사 (효율성을 위해)
        // 약수가 있다면 제곱근 이하의 수에서 발견됨
        int sqrt = (int)Math.Sqrt(n);
        for (int i = 3; i <= sqrt; i += 2)  // 홀수만 검사 (짝수는 이미 처리됨)
        {
            if (n % i == 0)  // 나누어 떨어지면 소수가 아님
            {
                return false;
            }
        }
        
        // 모든 검사를 통과하면 소수
        return true;
    }
    
    static void Main(string[] args)
    {
        // 사용자로부터 입력 받기
        Console.Write("정수를 입력하세요 (2 ≤ n ≤ 1000): ");
        int n;
        
        // 입력값이 유효한 정수인지 확인
        if (int.TryParse(Console.ReadLine(), out n))
        {
            // 입력값이 문제 범위 내인지 확인
            if (n < 2 || n > 1000)
            {
                Console.WriteLine("입력 범위를 벗어났습니다.");
            }
            else
            {
                // 소수 판별 결과 출력
                if (IsPrime(n))
                {
                    Console.WriteLine("소수입니다");
                }
                else
                {
                    Console.WriteLine("소수가 아닙니다");
                }
            }
        }
        else
        {
            // 입력값이 정수가 아닌 경우 오류 메시지 출력
            Console.WriteLine("유효한 정수를 입력하세요.");
        }
    }
}