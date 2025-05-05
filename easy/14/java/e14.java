import java.util.Scanner;

public class e14 {
    public static int gcd(int a, int b) {
        while (b != 0) {
            int r = a % b;
            a = b;
            b = r;
        }
        return a;
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("첫 번째 정수를 입력하세요 (1 ≤ a ≤ 10000): ");
        int a = scanner.nextInt();
        
        System.out.print("두 번째 정수를 입력하세요 (1 ≤ b ≤ 10000): ");
        int b = scanner.nextInt();
        
        System.out.println(a + "와 " + b + "의 최대공약수: " + gcd(a, b));
        scanner.close();
    }
}