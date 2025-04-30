import java.util.Scanner;

public class e09 {
    public static void main(String[] args) {
        // Scanner 객체 생성
        Scanner scanner = new Scanner(System.in);
        
        // 사용자로부터 섭씨 온도 입력 받기
        System.out.print("섭씨 온도를 입력하세요: ");
        double celsius = scanner.nextDouble();
        
        // 섭씨 온도를 화씨 온도로 변환 (공식: F = C × 9/5 + 32)
        double fahrenheit = celsius * 9.0/5.0 + 32;
        
        // 결과 출력
        System.out.printf("변환된 화씨 온도: %.2f°F\n", fahrenheit);
        
        // Scanner 닫기
        scanner.close();
    }
}