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


# Define the username for display
USERNAME=$(whoami)

# Date and time format (can adjust as needed)
TIME_FORMAT="%H:%M:%S"
DATE_FORMAT="%A, %B %d"

# Lock the screen using i3lock with the final image and simpler options
i3lock \
  -i "$IMG" \
  --indicator \
  --ring-color="#59cc33" \
  --inside-color="#80cc33" \
  --line-color="#ffffff" \
  --keyhl-color="#a6cc33" \
  --bshl-color="#cc3333" \
  --verif-text="Enter Password" \
  --wrong-text="Wrong Password" \
  --noinput-text="..." \
  --clock \
  --time-str="%H:%M:%S" \
  --date-str="%A, %B %d" \
  --greeter-text="$USERNAME" \
  --greeter-pos="w/2:h/2-60" \
  --time-pos="w/2:h/2" \
  --date-pos="w/2:h/2+60" \
  --radius=150 \
  --ring-width=8 \
  --ind-pos="w/2:h/2" \
  --show-failed-attempts \
  --ignore-empty-password \
  

  

