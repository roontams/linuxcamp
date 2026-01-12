# Vim Mission: Config 파일 수정하기

## 스토리
당신은 신입 시스템 관리자입니다.
선배가 갑자기 휴가를 떠나버렸고, 서버 설정 파일에 오류가 있다는 티켓이 들어왔습니다.
배포 전까지 반드시 5가지 문제를 수정해야 합니다!

## 미션 목표
`broken_config.txt` 파일에서 다음 5가지 문제를 수정하세요:

### Mission 1: 포트 번호 오타 수정
- WEB_PORT가 `800`으로 되어 있음 → `80`으로 수정
- Hint: `x`로 글자 삭제

### Mission 2: 테스트 줄 삭제
- "DELETE THIS LINE" 이 포함된 줄을 삭제
- Hint: 해당 줄로 이동 후 `dd`

### Mission 3: 보안 설정 수정 1
- ALLOW_ROOT_LOGIN이 `yes`로 되어 있음 → `no`로 수정
- Hint: `x`로 삭제 후 `i`로 입력, 또는 `cw`로 단어 변경

### Mission 4: 보안 설정 수정 2
- PASSWORD_MIN_LENGTH가 `4`로 되어 있음 → `8`로 수정
- Hint: `x`로 숫자 삭제 후 `i`로 새 숫자 입력

### Mission 5: 관리자 이름 변경
- `your_name_here`를 본인 이름(영어)으로 변경
- Hint: `cw` (change word) 사용

## 검증 방법
수정을 완료한 후 다음 명령어로 확인하세요:
```bash
bash check_mission.sh
```

## 필요한 Vim 명령어
| 키 | 기능 |
|-----|------|
| `h/j/k/l` | 좌/하/상/우 이동 |
| `x` | 글자 삭제 |
| `dd` | 줄 전체 삭제 |
| `i` | Insert 모드 진입 |
| `cw` | 단어 변경 (change word) |
| `Esc` | Normal 모드로 복귀 |
| `:w` | 저장 |
| `:wq` | 저장 후 종료 |
| `/word` | "word" 검색 |

## 시작하기
```bash
# 1. 파일 다운로드
wget https://raw.githubusercontent.com/roontams/linuxcamp/main/broken_config.txt
wget https://raw.githubusercontent.com/roontams/linuxcamp/main/check_mission.sh

# 2. Vim으로 파일 열기
vim broken_config.txt

# 3. 수정 후 검증
bash check_mission.sh
```

Good luck, admin!
