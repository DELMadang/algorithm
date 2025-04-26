import java.util.Scanner;

public class e01 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            // 사용자 입력 안내
            System.out.print("첫 번째 정수를 입력하세요 (0 ~ 1000): ");
            int a = scanner.nextInt();
            
            System.out.print("두 번째 정수를 입력하세요 (0 ~ 1000): ");
            int b = scanner.nextInt();
            
            // 입력값 검증
            if (a < 0 || a > 1000 || b < 0 || b > 1000) {
                System.out.println("입력한 정수는 0에서 1000 사이여야 합니다.");
                return;
            }
            
            // 합계 계산
            int sum = a + b;
            
            // 결과 출력
            System.out.println("두 수의 합: " + sum);
            
        } catch (Exception e) {
            System.out.println("오류 발생: " + e.getMessage());
        } finally {
            scanner.close();
        }
    }
}