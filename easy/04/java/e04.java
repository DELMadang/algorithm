import java.util.Scanner;

public class e04 {
    public static void main(String[] args) {
        // 스캐너 객체 생성
        Scanner scanner = new Scanner(System.in);
        
        // 사용자로부터 정수 n 입력 받기
        System.out.print("구구단 단수를 입력하세요 (1-9): ");
        int n = scanner.nextInt();
        
        // 입력값 범위 확인 (1 ≤ n ≤ 9)
        if (n < 1 || n > 9) {
            System.out.println("1에서 9 사이의 정수를 입력해주세요.");
            scanner.close();
            return;
        }
        
        // n단 구구단 출력
        System.out.println(n + "단 구구단:");
        for (int i = 1; i <= 9; i++) {
            System.out.println(n + " × " + i + " = " + (n * i));
        }
        
        // 스캐너 객체 닫기
        scanner.close();
    }
}