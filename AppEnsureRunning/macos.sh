#!/usr/bin/env bash
set -euo pipefail

APP_NAME="TextEdit"
PROCESS_NAME="TextEdit"

if pgrep -x "$PROCESS_NAME" >/dev/null 2>&1; then
  echo "$PROCESS_NAME already running."
  exit 0
fi

echo "Starting application: $APP_NAME"
open -a "$APP_NAME"
echo "Application is running."
