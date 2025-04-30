# 섭씨 온도를 화씨 온도로 변환하는 프로그램

# 사용자로부터 섭씨 온도 입력 받기
celsius = float(input("섭씨 온도를 입력하세요: "))

# 섭씨 온도를 화씨 온도로 변환 (공식: F = C × 9/5 + 32)
fahrenheit = celsius * 9/5 + 32

# 결과 출력
print(f"변환된 화씨 온도: {fahrenheit:.2f}°F")