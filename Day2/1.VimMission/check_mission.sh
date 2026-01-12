#!/bin/bash
# Vim Mission Checker
# Usage: bash check_mission.sh

FILE="broken_config.txt"
SCORE=0
TOTAL=5

echo "========================================"
echo "   Vim Mission Checker"
echo "========================================"
echo ""

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "[ERROR] File not found: $FILE"
    echo "Make sure you're in the right directory!"
    exit 1
fi

# Mission 1: WEB_PORT should be 80 (not 800)
if grep -q "WEB_PORT=80$" "$FILE"; then
    echo "[PASS] Mission 1: WEB_PORT fixed (800 -> 80)"
    ((SCORE++))
else
    echo "[FAIL] Mission 1: WEB_PORT should be 80, not 800"
fi

# Mission 2: Delete the test line
if ! grep -q "DELETE THIS LINE" "$FILE"; then
    echo "[PASS] Mission 2: Test line deleted"
    ((SCORE++))
else
    echo "[FAIL] Mission 2: Delete the line containing 'DELETE THIS LINE'"
fi

# Mission 3: ALLOW_ROOT_LOGIN should be no
if grep -q "ALLOW_ROOT_LOGIN=no" "$FILE"; then
    echo "[PASS] Mission 3: Root login disabled (security fix)"
    ((SCORE++))
else
    echo "[FAIL] Mission 3: ALLOW_ROOT_LOGIN should be 'no' for security"
fi

# Mission 4: PASSWORD_MIN_LENGTH should be 8 or more
if grep -qE "PASSWORD_MIN_LENGTH=(8|9|[1-9][0-9]+)" "$FILE"; then
    echo "[PASS] Mission 4: Password length increased"
    ((SCORE++))
else
    echo "[FAIL] Mission 4: PASSWORD_MIN_LENGTH should be 8 or more"
fi

# Mission 5: Admin name changed from your_name_here
if ! grep -q "your_name_here" "$FILE"; then
    echo "[PASS] Mission 5: Admin name updated"
    ((SCORE++))
else
    echo "[FAIL] Mission 5: Change 'your_name_here' to your name"
fi

echo ""
echo "========================================"
echo "   Score: $SCORE / $TOTAL"
echo "========================================"

if [ $SCORE -eq $TOTAL ]; then
    echo ""
    echo "  Congratulations! Mission Complete!"
    echo "  You are now a Vim survivor!"
    echo ""
else
    echo ""
    echo "  Keep trying! Open the file with:"
    echo "  vim $FILE"
    echo ""
fi
