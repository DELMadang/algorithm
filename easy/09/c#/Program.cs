using System;

class TemperatureConverter
{
    static void Main()
    {
        // 사용자로부터 섭씨 온도 입력 받기
        Console.Write("섭씨 온도를 입력하세요: ");
        string input = Console.ReadLine();
        
        // 입력값이 유효한 숫자인지 확인
        if (double.TryParse(input, out double celsius))
        {
            // 섭씨 온도를 화씨 온도로 변환 (공식: F = C × 9/5 + 32)
            double fahrenheit = celsius * 9.0/5.0 + 32;
            
            // 결과 출력
            Console.WriteLine($"변환된 화씨 온도: {fahrenheit:F2}°F");
        }
        else
        {
            // 잘못된 입력에 대한 오류 메시지
            Console.WriteLine("올바른 숫자를 입력하세요.");
        }
    }
}