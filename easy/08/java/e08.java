import java.util.Scanner;

public class e08 {
    public static boolean isPrime(int n) {
        // 2보다 작은 수는 소수가 아님
        if (n < 2) {
            return false;
        }
        
        // 2는 유일한 짝수 소수
        if (n == 2) {
            return true;
        }
        
        // 2를 제외한 모든 짝수는 소수가 아님
        if (n % 2 == 0) {
            return false;
        }
        
        // 제곱근까지만 나눗셈 검사 수행
        // 약수가 있다면 반드시 제곱근 이하에서 발견됨
        int sqrt = (int) Math.sqrt(n);
        for (int i = 3; i <= sqrt; i += 2) {  // 홀수만 검사
            if (n % i == 0) {  // 나누어 떨어지면 소수가 아님
                return false;
            }
        }
        
        // 모든 검사를 통과하면 소수
        return true;
    }
    
    public static void main(String[] args) {
        // Scanner 객체 생성하여 사용자 입력 받기
        Scanner scanner = new Scanner(System.in);
        System.out.print("정수를 입력하세요 (2 ≤ n ≤ 1000): ");
        int n = scanner.nextInt();
        
        // 입력값이 문제 범위 내인지 확인
        if (n < 2 || n > 1000) {
            System.out.println("입력 범위를 벗어났습니다.");
        } else {
            // 소수 판별 결과 출력
            if (isPrime(n)) {
                System.out.println("소수입니다");
            } else {
                System.out.println("소수가 아닙니다");
            }
        }
        scanner.close();  // 시스템 자원 해제
    }
}