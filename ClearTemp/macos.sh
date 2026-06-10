#!/usr/bin/env bash
set -euo pipefail

TEMP_DIR="${TMPDIR:-/tmp}"
if [[ ! -d "$TEMP_DIR" ]]; then
  echo "Temp directory does not exist: $TEMP_DIR"
  exit 1
fi

echo "Cleaning TEMP: $TEMP_DIR"
rm -rf "$TEMP_DIR"/* 2>/dev/null || true
echo "TEMP cleanup complete."
