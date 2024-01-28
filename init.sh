# make notification on macos
# ls /System/Library/Sounds
osascript -e 'display notification "Init complete" with title "Success" sound name "Ping.aiff"'

source ./configs/git.sh
source ./configs/macos.sh