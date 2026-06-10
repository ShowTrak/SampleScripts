#!/usr/bin/env bash
set -euo pipefail

APP_PATH="/usr/bin/gedit"

if [[ ! -x "$APP_PATH" ]]; then
  echo "Application not found or not executable: $APP_PATH"
  exit 1
fi

echo "Starting application: $APP_PATH"
"$APP_PATH" >/dev/null 2>&1 &
