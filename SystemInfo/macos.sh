#!/usr/bin/env bash
set -euo pipefail

HOST_NAME="$(scutil --get LocalHostName 2>/dev/null || hostname)"
OUT="/tmp/systeminfo_${HOST_NAME}.txt"

echo "Collecting system information to $OUT ..."
{
  echo "Hostname: $HOST_NAME"
  echo "Date: $(date -Is)"
  sw_vers
  echo
  uname -a
  echo
  system_profiler SPHardwareDataType SPSoftwareDataType
  echo
  df -h
} > "$OUT"

echo "System information saved to $OUT"
