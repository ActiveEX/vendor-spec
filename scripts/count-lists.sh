#!/bin/bash
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
QUEUE_LIST="63103fac472492022179e439"
IN_PROGRESS_LIST="63103fade4228503b9c7cfb0"
COMPLETE_LIST="63103fadb104460344b38b0d"
BLOCKED_LIST="698ba7bd72f5b5eda240b1bb"

TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")

for list in QUEUE_LIST IN_PROGRESS_LIST COMPLETE_LIST BLOCKED_LIST; do
    list_id=$(eval echo \$$list)
    count=$(curl -s "https://api.trello.com/1/lists/${list_id}/cards?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}" | jq '. | length')
    echo "${list}: $count"
done