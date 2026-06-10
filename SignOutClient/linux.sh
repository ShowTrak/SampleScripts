#!/usr/bin/env bash
set -euo pipefail

echo "Signing out current user session..."
if command -v loginctl >/dev/null 2>&1; then
  loginctl terminate-user "$USER"
else
  echo "loginctl not found; cannot sign out automatically."
  exit 1
fi
