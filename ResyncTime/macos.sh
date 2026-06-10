#!/usr/bin/env bash
set -euo pipefail

echo "Resyncing system time..."
sntp -sS time.apple.com
echo "Time resynced."
