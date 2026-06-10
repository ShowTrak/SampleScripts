#!/usr/bin/env bash
set -euo pipefail

PROCESS_NAME="gedit"
APP_PATH="/usr/bin/gedit"

if [[ ! -x "$APP_PATH" ]]; then
  echo "Application not found or not executable: $APP_PATH"
  exit 1
fi

echo "Restarting application: $PROCESS_NAME"
pkill -x "$PROCESS_NAME" >/dev/null 2>&1 || true
sleep 1
"$APP_PATH" >/dev/null 2>&1 &
echo "Application restarted."
