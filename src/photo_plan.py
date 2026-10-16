"""사진 입력을 확인하고 처리 계획을 출력하는 초기 프로그램.

깊이 추정이나 3D 변환은 아직 실행하지 않습니다. 일단 간단하게 ai이용해서 코드 넣었어요.
"""

import argparse
import json
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description="입체 사진 프로젝트의 처리 계획 출력")
    parser.add_argument("--image", required=True, type=Path, help="입력 사진 파일")
    args = parser.parse_args()
    args.image = args.image.expanduser()

    if not args.image.is_file():
        parser.error("입력 사진 파일이 존재하지 않습니다.")
    if args.image.suffix.lower() not in {".jpg", ".jpeg", ".png"}:
        parser.error("JPG 또는 PNG 파일을 선택해 주세요.")

    if args.image.stat().st_size == 0:
        parser.error("입력 사진 파일이 비어 있습니다.")

    plan = {
        "image": args.image.name,
        "stage": "planning_only",
        "steps": ["깊이 추정", "가려진 일부 영역 보완", "입체 화면 구성"],
        "back_view": False,
    }
    print(json.dumps(plan, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
