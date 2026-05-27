#!/bin/bash

sudo sed -i 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS 60/' /etc/login.defs

echo "[PASS] Password maximum age configured to 60 days."