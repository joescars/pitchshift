#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="$SCRIPT_DIR/pitchshift"
TARGET_FILE="/usr/local/bin/pitchshift"

if [ ! -f "$SOURCE_FILE" ]; then
    echo "Could not find pitchshift script at: $SOURCE_FILE"
    exit 1
fi

if [ ! -w "/usr/local/bin" ]; then
    echo "Permission denied writing to /usr/local/bin. Re-run with sudo."
    exit 1
fi

install -m 755 "$SOURCE_FILE" "$TARGET_FILE"
echo "Installed to $TARGET_FILE"
