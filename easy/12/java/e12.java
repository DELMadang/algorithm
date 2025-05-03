import java.util.Scanner;

public class e12 {
    
    /**
     * 문자열 s 내에서 문자 c의 개수를 세는 함수
     */
    public static int countCharacter(String s, char c) {
        int count = 0;
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == c) {
                count++;
            }
        }
        return count;
    }
    
    public static void main(String[] args) {
        // Scanner 객체 생성
        Scanner scanner = new Scanner(System.in);
        
        // 사용자로부터 입력 받기
        System.out.print("문자열을 입력하세요: ");
        String s = scanner.nextLine();
        
        System.out.print("찾을 문자를 입력하세요: ");
        String cInput = scanner.nextLine();
        
        // 입력 검증 (찾을 문자는 한 글자여야 함)
        if (cInput.length() != 1) {
            System.out.println("찾을 문자는 한 글자여야 합니다.");
        } else {
            char c = cInput.charAt(0);
            
            // 함수 호출 및 결과 출력
            int result = countCharacter(s, c);
            System.out.println("문자열 '" + s + "' 내에 '" + c + "'의 개수: " + result);
        }
        
        scanner.close();
    }
}