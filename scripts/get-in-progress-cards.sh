#!/bin/bash
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
IN_PROGRESS_LIST="63103fade4228503b9c7cfb0"

TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")

curl -s "https://api.trello.com/1/lists/${IN_PROGRESS_LIST}/cards?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}" | jq '.[] | {id, name}'