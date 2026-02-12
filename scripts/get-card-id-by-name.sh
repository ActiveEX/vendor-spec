#!/bin/bash
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
QUEUE_LIST="63103fac472492022179e439"

TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")

NAME="$1"
curl -s "https://api.trello.com/1/lists/${QUEUE_LIST}/cards?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}&fields=name,pos" | jq -r --arg name "$NAME" '.[] | select(.name == $name) | .id'