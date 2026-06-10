#!/usr/bin/env bash
set -euo pipefail

SERVICE_NAME="cups"

echo "Stopping service: $SERVICE_NAME"
if ! systemctl list-unit-files | grep -q "^${SERVICE_NAME}\\.service"; then
  echo "Service $SERVICE_NAME not found."
  exit 1
fi

systemctl stop "$SERVICE_NAME"
echo "Service $SERVICE_NAME stopped."
