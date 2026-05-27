#!/bin/bash

value=$(grep "^PASS_MAX_DAYS" /etc/login.defs | awk '{print $2}')

if [[ "$value" -le 60 ]]; then
    echo "[PASS] Password maximum age is compliant: $value days"
else
    echo "[FAIL] Password maximum age is not compliant: $value days"
fi