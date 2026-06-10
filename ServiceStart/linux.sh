#!/usr/bin/env bash
set -euo pipefail

SERVICE_NAME="cups"

echo "Starting service: $SERVICE_NAME"
if ! systemctl list-unit-files | grep -q "^${SERVICE_NAME}\\.service"; then
  echo "Service $SERVICE_NAME not found."
  exit 1
fi

if systemctl is-active --quiet "$SERVICE_NAME"; then
  echo "$SERVICE_NAME is already running."
  exit 0
fi

systemctl start "$SERVICE_NAME"
echo "Service $SERVICE_NAME started."
