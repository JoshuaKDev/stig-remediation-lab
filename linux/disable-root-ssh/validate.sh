#!/bin/bash

value=$(grep "^PermitRootLogin" /etc/ssh/sshd_config)

if [[ "$value" == "PermitRootLogin no" ]]; then
    echo "[PASS] Root SSH login is disabled."
else
    echo "[FAIL] Root SSH login is enabled."
fi