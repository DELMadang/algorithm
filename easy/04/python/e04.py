def multiplication_table():
    try:
        # 사용자 입력 안내
        n = int(input("출력할 구구단의 단 수를 입력하세요 (1 ~ 9): "))
        
        # 입력값 검증
        if n < 1 or n > 9:
            print("입력한 수는 1에서 9 사이여야 합니다.")
            return
            
        # 구구단 출력
        print(f"{n}단 구구단:")
        for i in range(1, 10):
            print(f"{n} × {i} = {n * i}")
    
    except ValueError:
        print("유효한 정수를 입력해주세요.")
    except Exception as e:
        print(f"오류 발생: {e}")

if __name__ == "__main__":
    multiplication_table()