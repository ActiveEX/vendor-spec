#!/bin/bash
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")
QUEUE_LIST="63103fac472492022179e439"

add_card() {
    local name="$1"
    local desc="$2"
    echo "Adding card: $name"
    curl -s -X POST "https://api.trello.com/1/cards" \
        -G \
        --data-urlencode "key=$TRELLO_KEY" \
        --data-urlencode "token=$TRELLO_TOKEN" \
        --data-urlencode "idList=$QUEUE_LIST" \
        --data-urlencode "name=$name" \
        --data-urlencode "desc=$desc" \
        --data-urlencode "due=null" \
        --data-urlencode "pos=top" \
        > /dev/null
}

# Add missing vendors
add_card "Salentica" "Discovered from Bento Engine research"
add_card "AdvizorStack" "Discovered from Bento Engine research"
add_card "Caribou" "Discovered from Bento Engine research"
add_card "Conneqtor" "Discovered from Bento Engine research"
add_card "IntegratedAdvisor" "Discovered from Bento Engine research"
add_card "RIA in a Box" "Discovered from Bento Engine research"
add_card "Tamarak" "Discovered from Bento Engine research"
add_card "VisiWealth" "Discovered from Bento Engine research"

echo "New vendors added to Trello queue."