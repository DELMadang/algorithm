import java.util.Scanner;

public class Fibonacci {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            // 입력 받기
            System.out.print("n을 입력하세요: ");
            int n = scanner.nextInt();
            
            // 입력 검증
            if (n >= 0 && n <= 30) {
                // n번째 피보나치 수 계산 및 출력
                long result = fibonacci(n);
                System.out.println("F(" + n + ") = " + result);
            } else {
                System.out.println("n은 0에서 30 사이의 값이어야 합니다.");
            }
        } catch (Exception e) {
            System.out.println("올바른 정수를 입력하세요.");
        } finally {
            scanner.close();
        }
    }
    
    /**
     * n번째 피보나치 수를 계산합니다.
     * F₀ = 0, F₁ = 1, Fₙ = Fₙ₋₁ + Fₙ₋₂
     */
    public static long fibonacci(int n) {
        if (n == 0) return 0;
        if (n == 1) return 1;
        
        // 동적 계획법(반복문)을 사용한 계산
        long a = 0, b = 1, c;
        for (int i = 2; i <= n; i++) {
            c = a + b;
            a = b;
            b = c;
        }
        
        return b;
    }
}