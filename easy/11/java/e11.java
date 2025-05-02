import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class e11 {
    
    /**
     * 두 정수의 모든 공약수를 찾아 반환하는 함수
     */
    public static List<Integer> findCommonDivisors(int a, int b) {
        // 두 수 중 작은 수 찾기
        int smaller = Math.min(a, b);
        
        // 공약수를 저장할 리스트
        List<Integer> commonDivisors = new ArrayList<>();
        
        // 1부터 smaller까지 모든 수에 대해 검사
        for (int i = 1; i <= smaller; i++) {
            // i가 a와 b 모두의 약수인지 확인
            if (a % i == 0 && b % i == 0) {
                commonDivisors.add(i);
            }
        }
        
        return commonDivisors;
    }
    
    public static void main(String[] args) {
        // Scanner 객체 생성
        Scanner scanner = new Scanner(System.in);
        
        // 사용자로부터 두 정수 입력 받기
        System.out.print("첫 번째 정수 a를 입력하세요 (1 ≤ a ≤ 1000): ");
        int a = scanner.nextInt();
        
        System.out.print("두 번째 정수 b를 입력하세요 (1 ≤ b ≤ 1000): ");
        int b = scanner.nextInt();
        
        // 입력값 범위 검증
        if (a < 1 || a > 1000 || b < 1 || b > 1000) {
            System.out.println("입력 범위를 벗어났습니다.");
        } else {
            // 공약수 찾기
            List<Integer> commonDivisors = findCommonDivisors(a, b);
            
            // 결과 출력
            System.out.println(a + "와 " + b + "의 모든 공약수:");
            for (int divisor : commonDivisors) {
                System.out.print(divisor + " ");
            }
        }
        
        scanner.close();
    }
}