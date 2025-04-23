def sum_of_two_numbers():
    try:
        # 사용자 입력 안내
        a = int(input("첫 번째 정수를 입력하세요 (0 ~ 1000): "))
        b = int(input("두 번째 정수를 입력하세요 (0 ~ 1000): "))
        
        # 입력값 검증
        if a < 0 or a > 1000 or b < 0 or b > 1000:
            print("입력한 정수는 0에서 1000 사이여야 합니다.")
            return
            
        # 합계 계산
        sum_result = a + b
        
        # 결과 출력
        print(f"두 수의 합: {sum_result}")
    
    except ValueError:
        print("유효한 정수를 입력해주세요.")
    except Exception as e:
        print(f"오류 발생: {e}")
    
    # 프로그램 종료 전 대기 (Windows 환경에서만 필요)
    # input("프로그램을 종료하려면 Enter 키를 누르세요...")

if __name__ == "__main__":
    sum_of_two_numbers()