#!/bin/bash
# Utility functions for vendor research automation

CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
STATE_DIR="/data/.openclaw/workspace/vendor-research/state"

# Load credentials
load_creds() {
    if [ ! -f "$CREDS_FILE" ]; then
        echo "Error: credentials.json not found"
        exit 1
    fi
    
    export GH_TOKEN=$(jq -r '.github.token' "$CREDS_FILE")
    export GH_REPO=$(jq -r '.github.repo' "$CREDS_FILE")
    export TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
    export TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")
    export TRELLO_BOARD=$(jq -r '.trello.board_id' "$CREDS_FILE")
}

# Trello list IDs
QUEUE_LIST="63103fac472492022179e439"
IN_PROGRESS_LIST="63103fade4228503b9c7cfb0"
COMPLETE_LIST="63103fadb104460344b38b0d"
BLOCKED_LIST="698ba7bd72f5b5eda240b1bb"

# Move Trello card
move_card() {
    local card_id="$1"
    local list_id="$2"
    
    curl -s -X PUT \
        "https://api.trello.com/1/cards/${card_id}?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}&idList=${list_id}" \
        > /dev/null
}

# Add comment to Trello card
add_comment() {
    local card_id="$1"
    local text="$2"
    
    curl -s -X POST \
        "https://api.trello.com/1/cards/${card_id}/actions/comments" \
        --data-urlencode "key=${TRELLO_KEY}" \
        --data-urlencode "token=${TRELLO_TOKEN}" \
        --data-urlencode "text=${text}" \
        > /dev/null
}

# Get vendor slug from name
get_slug() {
    local name="$1"
    echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-z0-9-]//g'
}

# Commit file to GitHub
commit_to_github() {
    local file_path="$1"
    local commit_msg="$2"
    local github_path="$3"
    
    # Read file content and base64 encode
    local content=$(base64 -w 0 "$file_path")
    
    # Check if file exists on GitHub
    local sha=$(curl -s -H "Authorization: token ${GH_TOKEN}" \
        "https://api.github.com/repos/${GH_REPO}/contents/${github_path}" \
        | jq -r '.sha // empty')
    
    # Prepare JSON payload
    local json_payload
    if [ -n "$sha" ]; then
        # File exists, include sha for update
        json_payload=$(jq -n \
            --arg msg "$commit_msg" \
            --arg content "$content" \
            --arg sha "$sha" \
            '{message: $msg, content: $content, sha: $sha}')
    else
        # New file
        json_payload=$(jq -n \
            --arg msg "$commit_msg" \
            --arg content "$content" \
            '{message: $msg, content: $content}')
    fi
    
    # Commit to GitHub
    curl -s -X PUT \
        -H "Authorization: token ${GH_TOKEN}" \
        -H "Content-Type: application/json" \
        "https://api.github.com/repos/${GH_REPO}/contents/${github_path}" \
        -d "$json_payload"
}

# Update vendor index
update_vendor_index() {
    local name="$1"
    local slug="$2"
    local status="$3"
    
    local index_file="${STATE_DIR}/vendor-index.json"
    local date=$(date -I)
    local timestamp=$(date -Iseconds)
    
    # Update or add vendor
    jq --arg name "$name" \
       --arg slug "$slug" \
       --arg status "$status" \
       --arg date "$date" \
       --arg ts "$timestamp" \
       '.vendors |= (map(select(.slug != $slug)) + [{
           name: $name,
           slug: $slug,
           status: $status,
           file: ("vendors/" + $slug + ".md"),
           last_updated: $date
       }]) | .last_sync = $ts' \
       "$index_file" > "${index_file}.tmp" && mv "${index_file}.tmp" "$index_file"
}

# Check if vendor exists
vendor_exists() {
    local name="$1"
    local slug=$(get_slug "$name")
    
    jq -e --arg slug "$slug" '.vendors[] | select(.slug == $slug)' \
        "${STATE_DIR}/vendor-index.json" > /dev/null 2>&1
}
