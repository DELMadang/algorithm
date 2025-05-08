import java.util.Scanner;

public class e17 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // 입력 받기
        int n = scanner.nextInt();
        
        // 결과 출력
        System.out.println(reverseNumber(n));
        
        scanner.close();
    }
    
    public static int reverseNumber(int n) {
        int reversedNum = 0;
        
        while (n > 0) {
            // 마지막 자릿수 추출
            int lastDigit = n % 10;
            // 뒤집힌 숫자에 자릿수 추가
            reversedNum = reversedNum * 10 + lastDigit;
            // 원래 숫자에서 마지막 자릿수 제거
            n = n / 10;
        }
        
        return reversedNum;
    }
}