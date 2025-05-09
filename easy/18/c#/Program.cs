using System;

class Program
{
    static void Main(string[] args)
    {
        Console.Write("연도를 입력하세요: ");
        
        try
        {
            // 입력 받기
            int year = int.Parse(Console.ReadLine());
            
            // 입력 검증
            if (year >= 1 && year <= 10000)
            {
                // 윤년 판별
                if (IsLeapYear(year))
                {
                    Console.WriteLine("윤년입니다");
                }
                else
                {
                    Console.WriteLine("윤년이 아닙니다");
                }
            }
            else
            {
                Console.WriteLine("연도는 1에서 10000 사이의 값이어야 합니다.");
            }
        }
        catch (FormatException)
        {
            Console.WriteLine("올바른 숫자를 입력하세요.");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"오류가 발생했습니다: {ex.Message}");
        }
    }
    
    /**
     * 윤년인지 판별하는 함수
     * - 4로 나누어 떨어지고, 100으로 나누어 떨어지지 않으면 윤년
     * - 또는 400으로 나누어 떨어지면 윤년
     */
    static bool IsLeapYear(int year)
    {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }
}