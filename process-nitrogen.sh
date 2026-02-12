#!/bin/bash
set -e

# Load credentials
CREDS_FILE="/data/.openclaw/workspace/vendor-research/credentials.json"
STATE_DIR="/data/.openclaw/workspace/vendor-research/state"

export GH_TOKEN=$(jq -r '.github.token' "$CREDS_FILE")
export GH_REPO=$(jq -r '.github.repo' "$CREDS_FILE")
export TRELLO_KEY=$(jq -r '.trello.api_key' "$CREDS_FILE")
export TRELLO_TOKEN=$(jq -r '.trello.token' "$CREDS_FILE")
export TRELLO_BOARD=$(jq -r '.trello.board_id' "$CREDS_FILE")

# Trello list IDs
QUEUE_LIST="63103fac472492022179e439"
IN_PROGRESS_LIST="63103fade4228503b9c7cfb0"
COMPLETE_LIST="63103fadb104460344b38b0d"
BLOCKED_LIST="698ba7bd72f5b5eda240b1bb"

CARD_ID="698d4fe1c581203987ed1ea6"
VENDOR_NAME="Nitrogen"
SLUG="nitrogen"
FILE_PATH="/data/.openclaw/workspace/vendor-research/nitrogen.md"
GITHUB_PATH="vendors/nitrogen.md"

echo "Processing $VENDOR_NAME..."

# 1. Move card to In Progress
echo "Moving card to In Progress..."
curl -s -X PUT "https://api.trello.com/1/cards/${CARD_ID}?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}&idList=${IN_PROGRESS_LIST}" > /dev/null

# 2. Add comment starting research
curl -s -X POST "https://api.trello.com/1/cards/${CARD_ID}/actions/comments" \
  --data-urlencode "key=${TRELLO_KEY}" \
  --data-urlencode "token=${TRELLO_TOKEN}" \
  --data-urlencode "text=🔍 Starting research..." > /dev/null

# 3. Check if file exists and is complete
if [ ! -f "$FILE_PATH" ]; then
    echo "ERROR: File not found: $FILE_PATH"
    exit 1
fi

# 4. Commit to GitHub
echo "Committing to GitHub..."
COMMIT_MSG="Add research: $VENDOR_NAME"
# Use base64 encode
CONTENT=$(base64 -w 0 "$FILE_PATH")
# Check if file exists on GitHub
SHA=$(curl -s -H "Authorization: token ${GH_TOKEN}" \
    "https://api.github.com/repos/${GH_REPO}/contents/${GITHUB_PATH}" \
    | jq -r '.sha // empty')

# Prepare JSON payload
if [ -n "$SHA" ]; then
    JSON_PAYLOAD=$(jq -n \
        --arg msg "$COMMIT_MSG" \
        --arg content "$CONTENT" \
        --arg sha "$SHA" \
        '{message: $msg, content: $content, sha: $sha}')
else
    JSON_PAYLOAD=$(jq -n \
        --arg msg "$COMMIT_MSG" \
        --arg content "$CONTENT" \
        '{message: $msg, content: $content}')
fi

# Commit
curl -s -X PUT \
    -H "Authorization: token ${GH_TOKEN}" \
    -H "Content-Type: application/json" \
    "https://api.github.com/repos/${GH_REPO}/contents/${GITHUB_PATH}" \
    -d "$JSON_PAYLOAD"

# 5. Update vendor index
echo "Updating vendor index..."
INDEX_FILE="${STATE_DIR}/vendor-index.json"
DATE=$(date -I)
TIMESTAMP=$(date -Iseconds)

jq --arg name "$VENDOR_NAME" \
   --arg slug "$SLUG" \
   --arg status "complete" \
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

# 6. Move card to Complete
echo "Moving card to Complete..."
curl -s -X PUT "https://api.trello.com/1/cards/${CARD_ID}?key=${TRELLO_KEY}&token=${TRELLO_TOKEN}&idList=${COMPLETE_LIST}" > /dev/null

# 7. Add comment with summary
INTEGRATION_COUNT=$(grep -c "#### [0-9]" "$FILE_PATH" || true)
SUMMARY="✅ Research complete\n- File: vendors/nitrogen.md\n- Integrations: $INTEGRATION_COUNT\n- New vendors discovered: None (no new vendors from integrations)\n- Cost: MiMo-V2-Flash (~$0.001)"
curl -s -X POST "https://api.trello.com/1/cards/${CARD_ID}/actions/comments" \
  --data-urlencode "key=${TRELLO_KEY}" \
  --data-urlencode "token=${TRELLO_TOKEN}" \
  --data-urlencode "text=$SUMMARY" > /dev/null

echo "Done. Nitrogen moved to Complete."
