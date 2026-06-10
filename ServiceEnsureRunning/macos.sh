#!/usr/bin/env bash
set -euo pipefail

SERVICE_NAME="org.cups.cupsd"

echo "Ensuring service is running: $SERVICE_NAME"
if launchctl print "system/$SERVICE_NAME" >/dev/null 2>&1; then
  echo "$SERVICE_NAME is available."
else
  echo "Service $SERVICE_NAME not found."
  exit 1
fi

sudo launchctl kickstart -k "system/$SERVICE_NAME"
echo "$SERVICE_NAME is now running."
