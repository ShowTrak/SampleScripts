#!/usr/bin/env bash
set -euo pipefail

echo "Resyncing system time..."
if command -v timedatectl >/dev/null 2>&1; then
  timedatectl set-ntp true
elif command -v ntpdate >/dev/null 2>&1; then
  ntpdate -u pool.ntp.org
else
  echo "No supported time sync command found (timedatectl/ntpdate)."
  exit 1
fi
echo "Time resynced."
