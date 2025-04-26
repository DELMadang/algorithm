import java.util.Scanner;

public class e05 {
    public static void main(String[] args) {
        // 스캐너 객체 생성
        Scanner scanner = new Scanner(System.in);
        
        // 사용자로부터 정수 n 입력 받기
        System.out.print("정수를 입력하세요 (0 ≤ n ≤ 12): ");
        
        try {
            int n = scanner.nextInt();
            
            // 입력값 범위 확인
            if (n < 0 || n > 12) {
                System.out.println("입력 범위를 벗어났습니다. 0에서 12 사이의 정수를 입력해주세요.");
                scanner.close();
                return;
            }
            
            // n! 계산
            long factorial = 1;
            for (int i = 2; i <= n; i++) {
                factorial *= i;
            }
            
            // 결과 출력
            System.out.println(n + "! = " + factorial);
        } catch (Exception e) {
            System.out.println("유효한 정수를 입력해주세요.");
        } finally {
            // 스캐너 객체 닫기
            scanner.close();
        }
    }
}