#!/usr/bin/env bash
set -euo pipefail

SERVICE_NAME="cups"

echo "Ensuring service is running: $SERVICE_NAME"
if ! systemctl list-unit-files | grep -q "^${SERVICE_NAME}\\.service"; then
  echo "Service $SERVICE_NAME not found."
  exit 1
fi

if systemctl is-active --quiet "$SERVICE_NAME"; then
  echo "$SERVICE_NAME already running."
  exit 0
fi

systemctl start "$SERVICE_NAME"
echo "$SERVICE_NAME is now running."
