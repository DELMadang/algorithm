def reverse_number(n):
    reversed_num = 0
    
    while n > 0:
        # 마지막 자릿수 추출
        last_digit = n % 10
        # 뒤집힌 숫자에 자릿수 추가
        reversed_num = reversed_num * 10 + last_digit
        # 원래 숫자에서 마지막 자릿수 제거
        n = n // 10
        
    return reversed_num

# 입력 받기
n = int(input())
# 결과 출력
print(reverse_number(n))