def calculate_factorial(n):
    """주어진 정수 n의 팩토리얼을 계산하는 함수"""
    factorial = 1
    for i in range(2, n + 1):
        factorial *= i
    return factorial

# 사용자로부터 정수 n 입력 받기
try:
    n = int(input("정수를 입력하세요 (0 ≤ n ≤ 12): "))
    
    # 입력값 범위 확인
    if n < 0 or n > 12:
        print("입력 범위를 벗어났습니다. 0에서 12 사이의 정수를 입력해주세요.")
    else:
        # n! 계산 및 결과 출력
        result = calculate_factorial(n)
        print(f"{n}! = {result}")
except ValueError:
    print("유효한 정수를 입력해주세요.")