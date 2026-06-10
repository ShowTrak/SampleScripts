#!/usr/bin/env bash
set -euo pipefail

echo "Flushing DNS cache..."
dscacheutil -flushcache
killall -HUP mDNSResponder
echo "DNS cache flushed successfully."
