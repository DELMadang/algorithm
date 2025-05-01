import java.util.Scanner;

public class e10 {
    public static void main(String[] args) {
        // Scanner 객체 생성
        Scanner scanner = new Scanner(System.in);
        
        // 사용자로부터 정수 N 입력 받기
        System.out.print("정수 N을 입력하세요 (1 ≤ N ≤ 10000): ");
        int n = scanner.nextInt();
        
        // 입력값 범위 검증
        if (n < 1 || n > 10000) {
            System.out.println("입력 범위를 벗어났습니다.");
        } else {
            // 수학 공식을 사용한 계산 (N*(N+1)/2)
            long sumFormula = (long)n * (n + 1) / 2;  // 큰 N 값에 대비하여 long 사용
            
            // 결과 출력
            System.out.println("1부터 " + n + "까지의 합: " + sumFormula);
        }
        
        // Scanner 닫기
        scanner.close();
    }
}