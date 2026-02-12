#!/bin/bash
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
BLOCKED_LIST="698ba7bd72f5b5eda240b1bb"
IN_PROGRESS_LIST="63103fade4228503b9c7cfb0"
QUEUE_LIST="63103fac472492022179e439"
COMPLETE_LIST="63103fadb104460344b38b0d"

TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")

CARD_ID="$1"
LIST_ID="$2"
if [ -z "$LIST_ID" ]; then
    LIST_ID="$BLOCKED_LIST"
fi
curl -s -X PUT "https://api.trello.com/1/cards/${CARD_ID}?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}&idList=${LIST_ID}"
echo "Moved card $CARD_ID to list $LIST_ID"