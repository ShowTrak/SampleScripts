#!/usr/bin/env bash
set -euo pipefail

echo "Locking session..."
if command -v loginctl >/dev/null 2>&1; then
  loginctl lock-session
elif command -v xdg-screensaver >/dev/null 2>&1; then
  xdg-screensaver lock
else
  echo "No supported lock command found (loginctl/xdg-screensaver)."
  exit 1
fi
