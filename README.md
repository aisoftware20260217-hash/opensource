# 사진 한 장으로 보는 입체 사진 도구

사진 한 장의 깊이를 추정하고 가려진 일부 영역을 보완하여, **정면부터 비스듬한 옆쪽 시점까지 탐색하는 웹 도구**를 개발하는 프로젝트입니다.

> 현재는 프로젝트 제안 및 초기 코드 작성 단계입니다. 사진의 3D 변환과 옆면 보완 기능은 아직 구현되지 않았습니다. 뒷면 생성과 완전한 90도 측면은 개발 범위에서 제외합니다.

## 프로젝트 목표

- 사진 속 가까운 부분과 먼 부분을 구분해 입체감을 표현합니다.
- 시점 이동으로 드러나는 일부 영역을 보완하고 경계의 늘어짐을 줄입니다.
- 사용자가 이동 범위와 입체감을 조절하고 원본과 결과를 비교하도록 합니다.

## 활용할 오픈소스

| 오픈소스 | 활용 계획 |
| --- | --- |
| [Depth Anything V2 Small](https://github.com/DepthAnything/Depth-Anything-V2) | 사진의 상대적인 앞뒤 관계 추정 |
| [3D Photo Inpainting](https://github.com/vt-vl-lab/3d-photo-inpainting) | 가려진 영역 보완 방법과 실행 가능성 검토 |
| [Three.js](https://github.com/mrdoob/three.js) | 브라우저에서 입체 화면 표시 및 시점 조작 |
| [OpenVINO 예제](https://github.com/openvinotoolkit/openvino_notebooks/tree/latest/notebooks/depth-anything) | 깊이 추정 실행 최적화 검토 |

## 파일 구성

```text
opensource/
├── doc/
│   └── project-proposal.docx
├── src/
│   └── photo_plan.py
├── LICENSE
└── README.md
```

프로젝트 제안서는 [제안서 파일](doc/project-proposal.docx)에서 확인할 수 있습니다.

## 초기 프로그램 실행

Python 3 표준 기능만 사용하므로 추가 패키지 설치 없이 실행할 수 있습니다.

```bash
python src/photo_plan.py --image "사진파일.jpg"
```

초기 프로그램은 사진 경로를 확인하고 처리 계획을 출력합니다. **AI 모델을 실행하거나 3D 결과를 생성하지는 않습니다.**

## 개발 계획

- [x] 프로젝트 제안서 작성
- [x] 입력 사진 확인 및 처리 계획 출력 코드 작성
- [ ] 깊이 추정 모델 실행 확인
- [ ] 기본 입체 화면과 좌우 시점 탐색 구현
- [ ] 가려진 영역 보완과 경계 왜곡 완화 비교
- [ ] 입체감 조절, 원본 비교, 결과 저장 구현

## 라이선스

이 저장소의 직접 작성한 코드는 [MIT License](LICENSE)를 따릅니다. 외부 코드와 모델을 도입할 때는 각 프로젝트의 이용 조건과 저작권 표시를 별도로 유지합니다. Depth Anything V2 Small은 Apache-2.0이며, 3D Photo Inpainting의 LICENSE에는 구성 요소의 비상업 조건도 포함되어 있으므로 도입 범위를 확인합니다.
