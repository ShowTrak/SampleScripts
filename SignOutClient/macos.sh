#!/usr/bin/env bash
set -euo pipefail

echo "Signing out current user session..."
osascript -e "tell application \"System Events\" to log out"
