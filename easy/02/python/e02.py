def check_odd_even():
    try:
        # 사용자 입력 안내
        n = int(input("정수를 입력하세요 (0 ~ 10000): "))
        
        # 입력값 검증
        if n < 0 or n > 10000:
            print("입력한 정수는 0에서 10000 사이여야 합니다.")
            return
            
        # 홀짝 판별
        if n % 2 == 0:
            print("짝수")
        else:
            print("홀수")
    
    except ValueError:
        print("유효한 정수를 입력해주세요.")
    except Exception as e:
        print(f"오류 발생: {e}")

if __name__ == "__main__":
    check_odd_even()