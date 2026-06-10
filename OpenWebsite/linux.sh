#!/usr/bin/env bash
set -euo pipefail

URL="https://example.com"
echo "Opening $URL in the default browser..."
if command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL" >/dev/null 2>&1 &
else
  echo "xdg-open not found."
  exit 1
fi
