def find_maximum():
    try:
        numbers = []
        
        # 5개의 정수 입력 받기
        print("5개의 정수를 입력하세요:")
        for i in range(5):
            num = int(input(f"정수 {i+1}: "))
            numbers.append(num)
        
        # 최댓값 찾기
        max_number = numbers[0]  # 첫 번째 숫자를 최댓값으로 초기화
        
        for num in numbers[1:]:
            if num > max_number:
                max_number = num
        
        # 결과 출력
        print(f"최댓값: {max_number}")
        
    except ValueError:
        print("유효한 정수를 입력해주세요.")
    except Exception as e:
        print(f"오류 발생: {e}")

if __name__ == "__main__":
    find_maximum()