def reverse_string():
    try:
        # 사용자 입력 안내
        s = input("문자열을 입력하세요 (최대 100자): ")
        
        # 입력값 검증
        if len(s) > 100:
            print("입력한 문자열이 너무 깁니다. 100자 이하로 입력하세요.")
            return
            
        # 문자열 뒤집기
        reversed_string = s[::-1]
        
        # 결과 출력
        print(f"뒤집힌 문자열: {reversed_string}")
    
    except Exception as e:
        print(f"오류 발생: {e}")

if __name__ == "__main__":
    reverse_string()