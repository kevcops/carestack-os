#!/usr/bin/env bash
set -euo pipefail

CONFIG_DIR="/var/lib/carestack-os"
ID_FILE="${CONFIG_DIR}/office_id"
WEBAPP_DIR="/usr/share/applications"
DESKTOP_FILE="${WEBAPP_DIR}/carestack.desktop"

# Ensure config directory exists
mkdir -p "${CONFIG_DIR}"

# Read the office ID (passed as first arg or from saved config)
if [[ -n "${1:-}" ]]; then
  OFFICE_ID="$1"
  echo "$OFFICE_ID" > "$ID_FILE"
elif [[ -f "$ID_FILE" ]]; then
  OFFICE_ID=$(cat "$ID_FILE")
else
  echo "No office ID provided or saved. Exiting."
  exit 1
fi

URL="https://${OFFICE_ID}.carestack.com"

# Create Chromium web app desktop entry
cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Name=CareStack
Exec=chromium --app=${URL}
Icon=web-browser
Terminal=false
Type=Application
Categories=Office;
StartupWMClass=Chromium
EOF

echo "CareStack web app created for: ${URL}"
