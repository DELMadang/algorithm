import java.util.Arrays;
import java.util.Collections;
import java.util.Scanner;

public class e15 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Integer[] numbers = new Integer[5];
        
        // 5개의 정수 입력받기
        System.out.println("5개의 정수를 입력하세요:");
        for (int i = 0; i < 5; i++) {
            System.out.print("숫자 " + (i + 1) + ": ");
            numbers[i] = scanner.nextInt();
        }
        
        // 내림차순으로 정렬하기
        Arrays.sort(numbers, Collections.reverseOrder());
        
        // 정렬된 배열 출력하기
        System.out.println("역순으로 정렬된 정수:");
        for (int num : numbers) {
            System.out.print(num + " ");
        }
        
        scanner.close();
    }
}