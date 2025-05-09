import java.util.Scanner;

public class LeapYear {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            // 입력 받기
            System.out.print("연도를 입력하세요: ");
            int year = scanner.nextInt();
            
            // 입력 검증
            if (year >= 1 && year <= 10000) {
                // 윤년 판별
                if (isLeapYear(year)) {
                    System.out.println("윤년입니다");
                } else {
                    System.out.println("윤년이 아닙니다");
                }
            } else {
                System.out.println("연도는 1에서 10000 사이의 값이어야 합니다.");
            }
        } catch (Exception e) {
            System.out.println("올바른 숫자를 입력하세요.");
        } finally {
            scanner.close();
        }
    }
    
    /**
     * 윤년인지 판별하는 함수
     * - 4로 나누어 떨어지고, 100으로 나누어 떨어지지 않으면 윤년
     * - 또는 400으로 나누어 떨어지면 윤년
     */
    public static boolean isLeapYear(int year) {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }
}