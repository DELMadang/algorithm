import java.util.Scanner;

public class e07 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            // 사용자 입력 안내
            System.out.print("문자열을 입력하세요 (최대 100자): ");
            String s = scanner.nextLine();
            
            // 입력값 검증
            if (s.length() > 100) {
                System.out.println("입력한 문자열이 너무 깁니다. 100자 이하로 입력하세요.");
                return;
            }
            
            // 문자열 뒤집기 - 방법 1: StringBuilder 사용
            StringBuilder reversed = new StringBuilder(s);
            reversed.reverse();
            
            // 방법 2: 직접 구현 (위 코드 대신 사용 가능)
            /*
            StringBuilder reversed = new StringBuilder();
            for (int i = s.length() - 1; i >= 0; i--) {
                reversed.append(s.charAt(i));
            }
            */
            
            // 결과 출력
            System.out.println("뒤집힌 문자열: " + reversed.toString());
            
        } catch (Exception e) {
            System.out.println("오류 발생: " + e.getMessage());
        } finally {
            scanner.close();
        }
    }
}