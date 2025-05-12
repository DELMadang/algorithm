import java.util.Scanner;

public class e20 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String s = scanner.nextLine();
        scanner.close();
        
        int wordCount = countWords(s);
        System.out.println(wordCount);
    }
    
    public static int countWords(String s) {
        // 문자열이 비어있거나 공백만 있는 경우 0 반환
        if (s == null || s.trim().isEmpty()) {
            return 0;
        }
        
        // 문자열을 공백으로 분리하고 단어 개수 세기
        String[] words = s.trim().split("\\s+");
        return words.length;
    }
}