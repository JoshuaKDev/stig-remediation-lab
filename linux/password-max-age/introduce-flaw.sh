#!/bin/bash

sudo sed -i 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS 99999/' /etc/login.defs

echo "[FLAW INTRODUCED] Password maximum age set to non-compliant value."