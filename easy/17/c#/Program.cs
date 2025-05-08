using System;

class Program
{
    static void Main(string[] args)
    {
        // 입력 받기
        int n = int.Parse(Console.ReadLine());
        
        // 결과 출력
        Console.WriteLine(ReverseNumber(n));
    }
    
    static int ReverseNumber(int n)
    {
        int reversedNum = 0;
        
        while (n > 0)
        {
            // 마지막 자릿수 추출
            int lastDigit = n % 10;
            // 뒤집힌 숫자에 자릿수 추가
            reversedNum = reversedNum * 10 + lastDigit;
            // 원래 숫자에서 마지막 자릿수 제거
            n = n / 10;
        }
        
        return reversedNum;
    }
}