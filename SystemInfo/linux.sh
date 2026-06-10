#!/usr/bin/env bash
set -euo pipefail

HOST_NAME="$(hostname)"
OUT="/tmp/systeminfo_${HOST_NAME}.txt"

echo "Collecting system information to $OUT ..."
{
  echo "Hostname: $HOST_NAME"
  echo "Date: $(date -Is)"
  uname -a
  echo
  if command -v lsb_release >/dev/null 2>&1; then
    lsb_release -a
  fi
  echo
  df -h
  echo
  free -h 2>/dev/null || true
} > "$OUT"

echo "System information saved to $OUT"
