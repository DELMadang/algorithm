import java.util.Scanner;

public class e16 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // 입력 받기
        System.out.print("문자열을 입력하세요 (소문자만): ");
        String s = scanner.nextLine();
        
        // 카운트 배열 초기화
        int[] count = new int[26];
        
        // 문자 세기
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c >= 'a' && c <= 'z') {
                count[c - 'a']++;
            }
        }
        
        // 결과 출력
        System.out.println("각 알파벳 출현 횟수:");
        for (int i = 0; i < 26; i++) {
            char c = (char)('a' + i);
            if (count[i] > 0) {
                System.out.println(c + ": " + count[i]);
            }
        }
        
        scanner.close();
    }
}