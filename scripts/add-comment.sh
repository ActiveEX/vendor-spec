#!/bin/bash
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"

TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")

CARD_ID="$1"
TEXT="$2"
curl -s -X POST \
    "https://api.trello.com/1/cards/${CARD_ID}/actions/comments" \
    --data-urlencode "key=${TRELLO_KEY}" \
    --data-urlencode "token=${TRELLO_TOKEN}" \
    --data-urlencode "text=${TEXT}"