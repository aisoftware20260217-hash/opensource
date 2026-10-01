import random


def main():
    answer = random.randint(1, 100)
    attempts = 0

    print("🎯 숫자 맞히기 게임")
    print("1부터 100 사이의 숫자를 맞혀보세요. (종료: q)")

    while True:
        user_input = input("숫자 입력: ").strip()

        if user_input.lower() == "q":
            print(f"게임 종료! 정답은 {answer}였습니다.")
            break

        try:
            guess = int(user_input)
        except ValueError:
            print("숫자 또는 q를 입력해주세요.")
            continue

        if not 1 <= guess <= 100:
            print("1부터 100 사이의 숫자를 입력해주세요.")
            continue

        attempts += 1

        if guess < answer:
            print("더 큰 숫자입니다!")
        elif guess > answer:
            print("더 작은 숫자입니다!")
        else:
            print(f"🎉 정답! {attempts}번 만에 맞혔습니다.")
            break


if __name__ == "__main__":
    main()
