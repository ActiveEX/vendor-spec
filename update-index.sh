#!/bin/bash

# Script to update vendor-index.json with all completed vendors
cd /data/.openclaw/workspace

# Get list of all vendor files
vendor_files=$(ls vendor-research/vendors/*.md 2>/dev/null | xargs -I {} basename {} .md)

# Get list of vendors already in index
index_vendors=$(cat vendor-research/state/vendor-index.json 2>/dev/null | jq -r '.vendors[] | .slug' 2>/dev/null)

# Check each vendor file
for vendor_file in $vendor_files; do
    # Check if vendor is already in index
    if ! echo "$index_vendors" | grep -q "^$vendor_file$"; then
        echo "Missing vendor: $vendor_file"
    fi
done

# Check vendors in index that don't have files
for index_vendor in $index_vendors; do
    if [ ! -f "vendor-research/vendors/${index_vendor}.md" ]; then
        echo "Index vendor missing file: $index_vendor"
    fi
done