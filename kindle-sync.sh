#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Kindle Sync
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 📖
# @raycast.packageName Raycast Script Commands

export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin"

/usr/local/bin/rclone bisync kindle:/mnt/us/documents/books/ ~/synkindle/ \
    -v \
    --compare size,modtime \
    --conflict-resolve newer
