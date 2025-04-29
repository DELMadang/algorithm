import math  # 제곱근 계산을 위한 math 모듈 임포트

def is_prime(n):
    # 소수 판별 함수
    # 소수: 1과 자기 자신으로만 나누어 떨어지는 2 이상의 자연수
    
    # 2보다 작은 수는 소수가 아님
    if n < 2:
        return False
    
    # 2는 소수 (유일한 짝수 소수)
    if n == 2:
        return True
    
    # 2를 제외한 모든 짝수는 소수가 아님 (2로 나누어 떨어지므로)
    if n % 2 == 0:
        return False
        
    # 제곱근까지만 확인하면 됨 (약수가 있다면 그 짝이 제곱근 양쪽에 위치)
    # 홀수만 검사 (짝수는 이미 위에서 처리)
    for i in range(3, int(math.sqrt(n)) + 1, 2):
        if n % i == 0:  # 나누어 떨어지면 소수가 아님
            return False
    
    # 위의 모든 검사를 통과하면 소수임
    return True

# 사용자로부터 입력 받기
n = int(input("정수를 입력하세요 (2 ≤ n ≤ 1000): "))

# 입력값이 문제 조건의 범위 내인지 확인
if n < 2 or n > 1000:
    print("입력 범위를 벗어났습니다.")
else:
    # 소수 판별 결과 출력
    if is_prime(n):
        print("소수입니다")
    else:
        print("소수가 아닙니다")