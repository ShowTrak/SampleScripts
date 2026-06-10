#!/usr/bin/env bash
set -euo pipefail

PROCESS_NAME="TextEdit"

echo "Stopping application: $PROCESS_NAME"
if ! pgrep -x "$PROCESS_NAME" >/dev/null 2>&1; then
  echo "Process not running: $PROCESS_NAME"
  exit 0
fi

pkill -x "$PROCESS_NAME"
echo "Application stopped: $PROCESS_NAME"
