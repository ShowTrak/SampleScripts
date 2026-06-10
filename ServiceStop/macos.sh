#!/usr/bin/env bash
set -euo pipefail

SERVICE_NAME="org.cups.cupsd"

echo "Stopping service: $SERVICE_NAME"
if ! launchctl print "system/$SERVICE_NAME" >/dev/null 2>&1; then
  echo "Service $SERVICE_NAME not found."
  exit 1
fi

sudo launchctl bootout "system/$SERVICE_NAME"
echo "Service $SERVICE_NAME stopped."
