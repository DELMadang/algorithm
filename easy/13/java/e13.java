import java.util.Scanner;

public class e13 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("정수 N을 입력하세요 (1 ≤ N ≤ 1000): ");
        int N = scanner.nextInt();
        
        int sum = 0;
        
        for (int i = 1; i <= N; i++) {
            if (i % 3 == 0 || i % 5 == 0) {
                sum += i;
            }
        }
        
        System.out.println("합계: " + sum);
        scanner.close();
    }
}