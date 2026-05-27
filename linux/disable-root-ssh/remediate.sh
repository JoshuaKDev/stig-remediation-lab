#!/bin/bash

sudo sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config

sudo systemctl restart sshd

echo "[PASS] Root SSH login disabled."