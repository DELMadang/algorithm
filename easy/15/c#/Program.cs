using System;
using System.Linq;

class Program
{
    static void Main(string[] args)
    {
        int[] numbers = new int[5];
        
        // 5개의 정수 입력받기
        Console.WriteLine("5개의 정수를 입력하세요:");
        for (int i = 0; i < 5; i++)
        {
            Console.Write($"숫자 {i + 1}: ");
            numbers[i] = int.Parse(Console.ReadLine());
        }
        
        // 내림차순으로 정렬하기
        Array.Sort(numbers);
        Array.Reverse(numbers);
        
        // 정렬된 배열 출력하기
        Console.WriteLine("역순으로 정렬된 정수:");
        foreach (int num in numbers)
        {
            Console.Write($"{num} ");
        }
        
        Console.ReadLine(); // 콘솔 창이 바로 닫히지 않도록
    }
}