#!/bin/bash
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")

CARD_ID="$1"
curl -s "https://api.trello.com/1/cards/${CARD_ID}?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}" | jq '.desc'