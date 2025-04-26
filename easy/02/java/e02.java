import java.util.Scanner;

public class e02 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            // 사용자 입력 안내
            System.out.print("정수를 입력하세요 (0 ~ 10000): ");
            int n = scanner.nextInt();
            
            // 입력값 검증
            if (n < 0 || n > 10000) {
                System.out.println("입력한 정수는 0에서 10000 사이여야 합니다.");
                return;
            }
            
            // 홀짝 판별
            if (n % 2 == 0) {
                System.out.println("짝수");
            } else {
                System.out.println("홀수");
            }
            
        } catch (Exception e) {
            System.out.println("오류 발생: " + e.getMessage());
        } finally {
            scanner.close();
        }
    }
}