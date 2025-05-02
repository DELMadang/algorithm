def find_common_divisors(a, b):
    """두 정수의 모든 공약수를 찾아 오름차순으로 반환하는 함수"""
    # 두 수 중 작은 수 찾기
    smaller = min(a, b)
    
    # 공약수를 저장할 리스트
    common_divisors = []
    
    # 1부터 smaller까지 모든 수에 대해 검사
    for i in range(1, smaller + 1):
        # i가 a와 b 모두의 약수인지 확인
        if a % i == 0 and b % i == 0:
            common_divisors.append(i)
    
    return common_divisors

# 사용자로부터 두 정수 입력 받기
a = int(input("첫 번째 정수 a를 입력하세요 (1 ≤ a ≤ 1000): "))
b = int(input("두 번째 정수 b를 입력하세요 (1 ≤ b ≤ 1000): "))

# 입력값 범위 검증
if a < 1 or a > 1000 or b < 1 or b > 1000:
    print("입력 범위를 벗어났습니다.")
else:
    # 공약수 찾기
    common_divisors = find_common_divisors(a, b)
    
    # 결과 출력
    print(f"{a}와 {b}의 모든 공약수:")
    for divisor in common_divisors:
        print(divisor, end=" ")