#!/bin/bash

sudo sed -i 's/^PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

sudo systemctl restart sshd

echo "[FLAW INTRODUCED] Root SSH login enabled."