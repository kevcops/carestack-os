#!/usr/bin/env bash

set -e

OFFICE_ID="$1"

if [[ -z "$OFFICE_ID" ]]; then
  echo "Error: CareStack Office ID not provided."
  exit 1
fi

DESKTOP_ENTRY_PATH="/usr/share/applications/carestack.desktop"

cat <<EOF > "$DESKTOP_ENTRY_PATH"
[Desktop Entry]
Name=CareStack
Exec=chromium --app=https://$OFFICE_ID.carestack.com
Icon=web-browser
Terminal=false
Type=Application
Categories=Office;
EOF

chmod +x "$DESKTOP_ENTRY_PATH"
echo "CareStack shortcut created for office ID: $OFFICE_ID"
