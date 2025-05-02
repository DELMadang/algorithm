using System;
using System.Collections.Generic;

class CommonDivisorsFinder
{
    /// <summary>
    /// 두 정수의 모든 공약수를 찾아 반환하는 함수
    /// </summary>
    static List<int> FindCommonDivisors(int a, int b)
    {
        // 두 수 중 작은 수 찾기
        int smaller = Math.Min(a, b);
        
        // 공약수를 저장할 리스트
        List<int> commonDivisors = new List<int>();
        
        // 1부터 smaller까지 모든 수에 대해 검사
        for (int i = 1; i <= smaller; i++)
        {
            // i가 a와 b 모두의 약수인지 확인
            if (a % i == 0 && b % i == 0)
            {
                commonDivisors.Add(i);
            }
        }
        
        return commonDivisors;
    }
    
    static void Main()
    {
        // 사용자로부터 두 정수 입력 받기
        Console.Write("첫 번째 정수 a를 입력하세요 (1 ≤ a ≤ 1000): ");
        string inputA = Console.ReadLine();
        
        Console.Write("두 번째 정수 b를 입력하세요 (1 ≤ b ≤ 1000): ");
        string inputB = Console.ReadLine();
        
        // 입력값이 유효한 정수인지 확인
        if (int.TryParse(inputA, out int a) && int.TryParse(inputB, out int b))
        {
            // 입력값 범위 검증
            if (a < 1 || a > 1000 || b < 1 || b > 1000)
            {
                Console.WriteLine("입력 범위를 벗어났습니다.");
            }
            else
            {
                // 공약수 찾기
                List<int> commonDivisors = FindCommonDivisors(a, b);
                
                // 결과 출력
                Console.WriteLine($"{a}와 {b}의 모든 공약수:");
                foreach (int divisor in commonDivisors)
                {
                    Console.Write($"{divisor} ");
                }
            }
        }
        else
        {
            // 잘못된 입력에 대한 오류 메시지
            Console.WriteLine("올바른 정수를 입력하세요.");
        }
    }
}