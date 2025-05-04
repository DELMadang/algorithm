def sum_of_multiples(N):
    sum = 0
    for i in range(1, N + 1):
        if i % 3 == 0 or i % 5 == 0:
            sum += i
    return sum

# 입력 받기
N = int(input("정수 N을 입력하세요 (1 ≤ N ≤ 1000): "))

# 결과 출력
result = sum_of_multiples(N)
print(f"합계: {result}")