import java.util.Scanner;

public class e20 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            // 입력 받기
            System.out.print("문자열을 입력하세요: ");
            String s = scanner.nextLine();
            
            // 입력 검증
            if (s.length() <= 200) {
                // 단어 수 계산 및 출력
                int wordCount = countWords(s);
                System.out.println("단어 수: " + wordCount);
            } else {
                System.out.println("문자열 길이는 200자 이하여야 합니다.");
            }
        } catch (Exception e) {
            System.out.println("오류가 발생했습니다: " + e.getMessage());
        } finally {
            scanner.close();
        }
    }
    
    /**
     * 문자열 내 단어 수를 세는 함수
     * 단어는 공백으로 구분됨
     */
    public static int countWords(String s) {
        // 문자열이 null이거나 빈 문자열인 경우
        if (s == null || s.isEmpty()) {
            return 0;
        }
        
        // 문자열 앞뒤 공백 제거 후 공백으로 분할
        String[] words = s.trim().split("\\s+");
        
        // 빈 문자열인 경우 (공백만 있는 경우)
        if (words.length == 1 && words[0].isEmpty()) {
            return 0;
        }
        
        return words.length;
    }
}