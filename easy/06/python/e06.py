def calculate_average():
    try:
        numbers = []
        
        # 5개의 실수 입력 받기
        print("5개의 실수를 입력하세요:")
        for i in range(5):
            num = float(input(f"실수 {i+1}: "))
            numbers.append(num)
        
        # 평균 계산
        average = sum(numbers) / 5
        
        # 결과 출력
        print(f"입력한 실수들의 평균값: {average:.2f}")
        
    except ValueError:
        print("유효한 실수를 입력해주세요.")
    except Exception as e:
        print(f"오류 발생: {e}")

if __name__ == "__main__":
    calculate_average()