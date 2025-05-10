#!/bin/bash

# Paths
IMG="$HOME/.config/i3/screenshots/lock.png"
BLUR="$HOME/.config/i3/screenshots/blur.png"
SCREENSHOT="$HOME/.config/i3/screenshots/current.png"
OVERLAY="$HOME/.config/i3/overlay.png"  # Change this path if needed

# Create the screenshots directory if it doesn't exist
mkdir -p "$HOME/.config/i3/screenshots"

# Delete old screenshot if it exists
if [ -f "$SCREENSHOT" ]; then
    rm "$SCREENSHOT"
fi

# Take screenshot of the current workspace
scrot "$SCREENSHOT"

# Apply blur using ImageMagick (use 'magick' instead of 'convert' for IMv7)
magick "$SCREENSHOT" -blur 0x4 "$BLUR"

# Add overlay logo (optional)
if [ -f "$OVERLAY" ]; then
    composite -gravity southeast "$OVERLAY" "$BLUR" "$IMG"
else
    cp "$BLUR" "$IMG"
fi

# Lock the screen using i3lock with the final image and simpler options
i3lock -i "$IMG" 
