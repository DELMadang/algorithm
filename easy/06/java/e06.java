import java.util.Scanner;

public class e06 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            double[] numbers = new double[5];
            double sum = 0;
            
            // 5개의 실수 입력 받기
            System.out.println("5개의 실수를 입력하세요:");
            for (int i = 0; i < 5; i++) {
                System.out.print("실수 " + (i+1) + ": ");
                numbers[i] = scanner.nextDouble();
                sum += numbers[i];
            }
            
            // 평균 계산
            double average = sum / 5;
            
            // 결과 출력
            System.out.printf("입력한 실수들의 평균값: %.2f\n", average);
            
        } catch (Exception e) {
            System.out.println("오류 발생: " + e.getMessage());
        } finally {
            scanner.close();
        }
    }
}