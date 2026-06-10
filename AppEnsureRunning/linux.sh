#!/usr/bin/env bash
set -euo pipefail

PROCESS_NAME="gedit"
APP_PATH="/usr/bin/gedit"

if [[ ! -x "$APP_PATH" ]]; then
  echo "Application not found or not executable: $APP_PATH"
  exit 1
fi

if pgrep -x "$PROCESS_NAME" >/dev/null 2>&1; then
  echo "$PROCESS_NAME already running."
  exit 0
fi

echo "Starting application: $APP_PATH"
"$APP_PATH" >/dev/null 2>&1 &
echo "Application is running."
