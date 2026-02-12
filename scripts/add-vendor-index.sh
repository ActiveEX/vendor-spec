#!/bin/bash
INDEX_FILE="/data/.openclaw/workspace/vendor-research/state/vendor-index.json"
DATE=$(date -I)
TIMESTAMP=$(date -Iseconds)

# Function to add or update vendor
add_vendor() {
    local name="$1"
    local slug="$2"
    local status="$3"
    
    jq --arg name "$name" \
       --arg slug "$slug" \
       --arg status "$status" \
       --arg date "$DATE" \
       --arg ts "$TIMESTAMP" \
       '.vendors |= (map(select(.slug != $slug)) + [{
           name: $name,
           slug: $slug,
           status: $status,
           file: ("vendors/" + $slug + ".md"),
           last_updated: $date
       }]) | .last_sync = $ts' \
       "$INDEX_FILE" > "${INDEX_FILE}.tmp" && mv "${INDEX_FILE}.tmp" "$INDEX_FILE"
}

# Add Bento Engine (blocked)
add_vendor "Bento Engine" "bento-engine" "blocked"
# Add Betterment (blocked)
add_vendor "Betterment" "betterment" "blocked"

echo "Updated vendor-index.json"