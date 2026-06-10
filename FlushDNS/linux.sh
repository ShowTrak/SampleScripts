#!/usr/bin/env bash
set -euo pipefail

echo "Flushing DNS cache..."
if command -v resolvectl >/dev/null 2>&1; then
  resolvectl flush-caches
elif command -v systemd-resolve >/dev/null 2>&1; then
  systemd-resolve --flush-caches
else
  echo "No supported DNS flush command found (resolvectl/systemd-resolve)."
  exit 1
fi
echo "DNS cache flushed successfully."
