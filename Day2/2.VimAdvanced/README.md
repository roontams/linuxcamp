# Day 2 - Linux Infrastructure Camp

## 2교시: Vim 실전 - 설정 파일 마스터

### 📁 파일 목록

| 파일 | 설명 |
|------|------|
| `server.conf` | 미션 대상 설정 파일 |
| `check_period2.sh` | 미션 완료 검증 스크립트 |

### 🚀 사용 방법

```bash
# 1. 미션 파일 다운로드
wget https://raw.githubusercontent.com/YOUR_REPO/linux-camp/main/day2/server.conf -O ~/server.conf

# 2. Vim으로 편집
vim ~/server.conf

# 3. 미션 완료 후 검증
wget -qO- https://raw.githubusercontent.com/YOUR_REPO/linux-camp/main/day2/check_period2.sh | bash
```

### 🎯 미션 목록

1. **주석 해제** - DB 섹션의 `#`으로 시작하는 3줄 활성화
2. **섹션 복사** - Backup 섹션을 복사해서 Backup_Staging 생성
3. **섹션 삭제** - Deprecated 섹션 전체 삭제
4. **값 변경** - `MONITOR_ENABLED=false` → `true` 변경

### 📚 주요 명령어

| 명령어 | 설명 |
|--------|------|
| `Ctrl+v` | Visual Block 모드 (열 선택) |
| `V` | Visual Line 모드 (줄 선택) |
| `v` | Visual 모드 (문자 선택) |
| `d` | 선택 영역 삭제 |
| `y` | 선택 영역 복사 (yank) |
| `p` | 붙여넣기 (paste) |
| `u` | 되돌리기 (undo) |
| `Ctrl+r` | 다시 실행 (redo) |
