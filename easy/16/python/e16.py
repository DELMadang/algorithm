from collections import Counter

# 입력 받기
s = input("문자열을 입력하세요 (소문자만): ")

# Counter 사용하여 문자 세기
char_count = Counter(s)

# 결과 출력
print("각 알파벳 출현 횟수:")
for c in 'abcdefghijklmnopqrstuvwxyz':
    if char_count[c] > 0:
        print(f"{c}: {char_count[c]}")