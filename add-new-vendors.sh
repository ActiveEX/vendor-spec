#!/bin/bash
set -e

CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")
QUEUE_LIST="63103fac472492022179e439"

add_card() {
    local name="$1"
    echo "Adding card: $name"
    curl -s -X POST "https://api.trello.com/1/cards" \
        -G \
        --data-urlencode "key=$TRELLO_KEY" \
        --data-urlencode "token=$TRELLO_TOKEN" \
        --data-urlencode "idList=$QUEUE_LIST" \
        --data-urlencode "name=$name" \
        --data-urlencode "desc=Discovered from Income Lab research" \
        --data-urlencode "due=null" \
        --data-urlencode "pos=top" \
        > /dev/null
}

# Add new vendors
add_card "Betterment for Advisors"
add_card "Advyzon"
add_card "Orion"

echo "New vendors added to Trello queue."