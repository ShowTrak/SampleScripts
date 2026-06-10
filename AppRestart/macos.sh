#!/usr/bin/env bash
set -euo pipefail

APP_NAME="TextEdit"
PROCESS_NAME="TextEdit"

echo "Restarting application: $PROCESS_NAME"
pkill -x "$PROCESS_NAME" >/dev/null 2>&1 || true
sleep 1
open -a "$APP_NAME"
echo "Application restarted."
