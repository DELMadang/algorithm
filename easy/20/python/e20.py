def count_words(s):
    # 문자열을 공백으로 분리하고 빈 문자열 제거
    words = s.split()
    
    # 단어의 개수 반환
    return len(words)

# 입력 및 출력
s = input()
print(count_words(s))