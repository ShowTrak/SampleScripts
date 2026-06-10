#!/usr/bin/env bash
set -euo pipefail

echo "Locking workstation..."
"/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession" -suspend
