#!/usr/bin/env bash
set -euo pipefail

echo "Pinging 8.8.8.8 to verify connectivity..."
ping -c 3 8.8.8.8 >/dev/null
if [[ $? -ne 0 ]]; then
  echo "Internet connectivity check failed."
  exit 1
fi
echo "Internet connectivity OK."
