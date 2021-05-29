#!/bin/bash

# Change true to false for maximized option in bounds info
# ------------------------------------------------------------------------------
mattermost-minimized() {
  MATTERMOST_BOUNDS_FILE="$HOME/.config/Mattermost/bounds-info.json"
  sed -i 's/"maximized":true/"maximized":false/' "${MATTERMOST_BOUNDS_FILE}"
  sed -i 's/"maximized":false}/"maximized":false,"fullscreen":false}/' "${MATTERMOST_BOUNDS_FILE}"
}

# Open all chat apps
# ------------------------------------------------------------------------------
open-chats() {
  mattermost-minimized
  /snap/bin/mattermost-desktop &>/dev/null &
  /usr/bin/discord --start-minimized &>/dev/null &
  /opt/telegram/telegram -startintray &>/dev/null &
}

# Kill all chat apps
# ------------------------------------------------------------------------------
kill-chats() {
  pgrep -i Discord | xargs kill -9 &>/dev/null && printf "Closing %s..." "Discord"
  pgrep -i Telegram | xargs kill -9 &>/dev/null && printf "Closing %s..." "Telegram"
  pgrep -i Mattermost | xargs kill -9 &>/dev/null && printf "Closing %s..." "Mattermost"
}
