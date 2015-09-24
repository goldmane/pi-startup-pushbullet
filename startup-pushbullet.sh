#!/bin/sh

PUSHBULLET_KEY=""
NOTE_TITLE="Startup Notification"
NOTE_BODY="Hostname: $(hostname)<br />IP: $(hostname -I)"

curl -u $PUSHBULLET_KEY: https://api.pushbullet.com/v2/pushes -d type=note -d title="$NOTE_TITLE" -d body="$NOTE_BODY"