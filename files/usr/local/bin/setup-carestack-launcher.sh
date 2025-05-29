#!/bin/bash
# This script stores the Office ID and creates a Chromium web app launcher

CONFIG_PATH="/etc/carestack-office-id.conf"
DESKTOP_PATH="/usr/share/applications/carestack.desktop"
BIN_PATH="/usr/local/bin/launch-carestack"

# Prompt for Office ID if not passed as argument
if [ -z "$1" ]; then
  echo "Usage: $0 <office-id>"
  exit 1
fi

OFFICE_ID="$1"

# Store Office ID in config
echo "$OFFICE_ID" | sudo tee "$CONFIG_PATH" > /dev/null

# Create the launcher script
sudo tee "$BIN_PATH" > /dev/null <<EOF
#!/bin/bash
ID=$(cat $CONFIG_PATH)
exec chromium --app="https://$ID.carestack.com"
EOF

# Make the script executable
sudo chmod +x "$BIN_PATH"

# Create the .desktop file
sudo tee "$DESKTOP_PATH" > /dev/null <<EOF
[Desktop Entry]
Name=Carestack
Exec=$BIN_PATH
Icon=chromium
Type=Application
Categories=Office;
StartupWMClass=Chromium
EOF

echo "Carestack launcher created successfully."
