# make notification on macos
# example
# notify "Done" "Setup complete"
# ls /System/Library/Sounds
function notify() {
  local title="$1"
  local text="$2"
  osascript -e "display notification \"$text\" with title \"$title\" sound name \"Ping.aiff\""
}
