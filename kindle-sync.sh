#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Kindle Sync
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 📖
# @raycast.packageName Raycast Script Commands

# 1. Fixed the PATH to include /usr/local/bin where your rclone lives
export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# 2. Use the correct path for rclone and ensured local path matches your previous setup
# Note: I changed ~/Documents/kindle-sync/ to ~/kindle-sync/ to match your previous prompts. 
# Make sure this matches where your books actually are!

/usr/local/bin/rclone bisync kindle:/mnt/us/documents/books/ ~/kindle-sync/ \
    -v \
    --compare size,modtime \
    --conflict-resolve newer
