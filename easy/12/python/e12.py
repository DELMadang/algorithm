def count_character(s, c):
    """문자열 s 내에서 문자 c의 개수를 세는 함수"""
    count = 0
    for char in s:
        if char == c:
            count += 1
    return count

# 사용자로부터 입력 받기
s = input("문자열을 입력하세요: ")
c = input("찾을 문자를 입력하세요: ")

# 입력 검증 (찾을 문자는 한 글자여야 함)
if len(c) != 1:
    print("찾을 문자는 한 글자여야 합니다.")
else:
    # 함수 호출 및 결과 출력
    result = count_character(s, c)
    print(f"문자열 '{s}' 내에 '{c}'의 개수: {result}")
