def count_words(s):
    """
    문자열 내 단어 수를 세는 함수
    단어는 공백으로 구분됨
    """
    # 공백으로 문자열을 분할하고 빈 문자열은 제외
    words = [word for word in s.split() if word]
    return len(words)

# 입력 받기
try:
    s = input("문자열을 입력하세요: ")
    
    # 입력 검증
    if len(s) <= 200:
        # 단어 수 계산 및 출력
        word_count = count_words(s)
        print(f"단어 수: {word_count}")
    else:
        print("문자열 길이는 200자 이하여야 합니다.")
except Exception as e:
    print(f"오류가 발생했습니다: {e}")