#!/bin/bash
# ========================================
# Day 2 - Period 2: Mission Validator
# Linux Infrastructure Camp
# ========================================

echo "========================================="
echo "  Period 2 - Mission Validator"
echo "========================================="
echo ""

PASS=0
FAIL=0

# Mission 1: Check DB_PASSWORD uncommented
echo -n "[Mission 1] DB_PASSWORD uncommented... "
if grep -q "^DB_PASSWORD" server.conf 2>/dev/null; then
    echo "PASS"
    ((PASS++))
else
    echo "FAIL"
    ((FAIL++))
fi

# Mission 2: Check Backup_Staging section exists
echo -n "[Mission 2] Backup_Staging section... "
if grep -q "Backup_Staging" server.conf 2>/dev/null; then
    echo "PASS"
    ((PASS++))
else
    echo "FAIL"
    ((FAIL++))
fi

# Mission 3: Check Deprecated section deleted
echo -n "[Mission 3] Deprecated section deleted... "
if ! grep -q "Deprecated" server.conf 2>/dev/null; then
    echo "PASS"
    ((PASS++))
else
    echo "FAIL"
    ((FAIL++))
fi

# Mission 4: Check MONITOR_ENABLED=true
echo -n "[Mission 4] MONITOR_ENABLED=true... "
if grep -q "MONITOR_ENABLED=true" server.conf 2>/dev/null; then
    echo "PASS"
    ((PASS++))
else
    echo "FAIL"
    ((FAIL++))
fi

echo ""
echo "========================================="
echo "  Result: $PASS/4 missions completed"
echo "========================================="

if [ $PASS -eq 4 ]; then
    echo ""
    echo "  All missions complete!"
    echo "  Raise your hand!"
    echo ""
fi
