using System;

class Program
{
    static int GCD(int a, int b)
    {
        while (b != 0)
        {
            int r = a % b;
            a = b;
            b = r;
        }
        return a;
    }
    
    static void Main(string[] args)
    {
        Console.Write("첫 번째 정수를 입력하세요 (1 ≤ a ≤ 10000): ");
        int a = int.Parse(Console.ReadLine());
        
        Console.Write("두 번째 정수를 입력하세요 (1 ≤ b ≤ 10000): ");
        int b = int.Parse(Console.ReadLine());
        
        Console.WriteLine($"{a}와 {b}의 최대공약수: {GCD(a, b)}");
        Console.ReadLine();
    }
}