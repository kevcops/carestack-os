#!/usr/bin/env bash
set -e

read -rp "Enter your CareStack Office ID (e.g. myoffice): " OFFICE_ID
WEBAPP_URL="https://${OFFICE_ID}.carestack.com"

mkdir -p ~/.local/share/applications

cat > ~/.local/share/applications/carestack-webapp.desktop <<EOF
[Desktop Entry]
Name=CareStack (${OFFICE_ID})
Exec=chromium --app=${WEBAPP_URL}
Icon=org.chromium.Chromium
Type=Application
Categories=Office;
EOF
