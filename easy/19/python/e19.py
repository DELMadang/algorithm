def fibonacci(n):
    """
    n번째 피보나치 수를 계산합니다.
    F₀ = 0, F₁ = 1, Fₙ = Fₙ₋₁ + Fₙ₋₂
    """
    if n == 0:
        return 0
    if n == 1:
        return 1
    
    # 동적 계획법(반복문)을 사용한 계산
    a, b = 0, 1
    for _ in range(2, n + 1):
        a, b = b, a + b
    
    return b

# 입력 받기
try:
    n = int(input("n을 입력하세요: "))
    
    # 입력 검증
    if 0 <= n <= 30:
        # n번째 피보나치 수 계산 및 출력
        result = fibonacci(n)
        print(f"F({n}) = {result}")
    else:
        print("n은 0에서 30 사이의 값이어야 합니다.")
except ValueError:
    print("올바른 정수를 입력하세요.")