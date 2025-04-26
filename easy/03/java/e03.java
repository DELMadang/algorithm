import java.util.Scanner;

public class e03 {
   public static void main(String[] args) {
       Scanner scanner = new Scanner(System.in);
       
       try {
           int[] numbers = new int[5];
           
           // 5개의 정수 입력 받기
           System.out.println("5개의 정수를 입력하세요:");
           for (int i = 0; i < 5; i++) {
               System.out.print("정수 " + (i+1) + ": ");
               numbers[i] = scanner.nextInt();
           }
           
           // 최댓값 찾기
           int max = numbers[0]; // 첫 번째 숫자를 최댓값으로 초기화
           
           for (int i = 1; i < 5; i++) {
               if (numbers[i] > max) {
                   max = numbers[i];
               }
           }
           
           // 결과 출력
           System.out.println("최댓값: " + max);
           
       } catch (Exception e) {
           System.out.println("오류 발생: " + e.getMessage());
       } finally {
           scanner.close();
       }
   }
}