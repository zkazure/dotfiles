#!/usr/bin/env sh

if [ "$#" -ne 1 ]; then
    echo "How to use: $0 /path/to/your.AppImage"
    exit 1
fi

APPIMAGE="$1"
APP_NAME=$(basename "$APPIMAGE" .AppImage)
DESKTOP_FILE="$HOME/.local/share/applications/$APP_NAME.desktop"

mkdir -p "$HOME/.local/share/applications"

cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Type=Application
Name=$APP_NAME
Exec="$APPIMAGE" %U
Icon=$APP_NAME
Terminal=false
Categories=Utility;Application;
EOF

chmod +x "$DESKTOP_FILE"

echo "Success: $DESKTOP_FILE"
