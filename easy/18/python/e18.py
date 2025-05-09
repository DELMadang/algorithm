def is_leap_year(year):
    """
    윤년인지 판별하는 함수
    - 4로 나누어 떨어지고, 100으로 나누어 떨어지지 않으면 윤년
    - 또는 400으로 나누어 떨어지면 윤년
    """
    return (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0)

# 입력 받기
try:
    year = int(input("연도를 입력하세요: "))
    
    # 입력 검증
    if 1 <= year <= 10000:
        # 윤년 판별
        if is_leap_year(year):
            print("윤년입니다")
        else:
            print("윤년이 아닙니다")
    else:
        print("연도는 1에서 10000 사이의 값이어야 합니다.")
except ValueError:
    print("올바른 숫자를 입력하세요.")