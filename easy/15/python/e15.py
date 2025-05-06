# 5개의 정수 입력받기
print("5개의 정수를 입력하세요:")
numbers = []
for i in range(5):
    num = int(input(f"숫자 {i + 1}: "))
    numbers.append(num)

# 내림차순으로 정렬하기
numbers.sort(reverse=True)

# 정렬된 배열 출력하기
print("역순으로 정렬된 정수:")
for num in numbers:
    print(num, end=" ")