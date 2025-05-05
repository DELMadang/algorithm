def gcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a

# 입력 받기
a = int(input("첫 번째 정수를 입력하세요 (1 ≤ a ≤ 10000): "))
b = int(input("두 번째 정수를 입력하세요 (1 ≤ b ≤ 10000): "))

# 결과 출력
result = gcd(a, b)
print(f"{a}와 {b}의 최대공약수: {result}")