#!/bin/sh

PUSHBULLET_KEY=""
NOTE_TITLE="Startup Notification"
NOTE_BODY="Hostname: $(hostname)\nIP: $(hostname -I)"

#curl -u $PUSHBULLET_KEY: https://api.pushbullet.com/v2/pushes -d type=note -d title="$NOTE_TITLE" -d body="$NOTE_BODY"
curl --header "Content-Type: application/json" --header "Access-Token: $PUSHBULLET_KEY" -X POST --data-binary '{"type":"note","title":"'"$NOTE_TITLE"'","body":"'"$NOTE_BODY"'"}' https://api.pushbullet.com/v2/pushes