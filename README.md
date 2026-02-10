# SaaS Vendor Research Database

This repository contains detailed research on SaaS vendors, their pricing, features, and integrations.

## Workflow

### How to Request Research

1. **Add a card to Trello** in the "Queue" list
   - Card title: Vendor name
   - Add labels for category (optional)
   - Add any specific questions or focus areas in the description

2. **Allan monitors the queue** and will:
   - Move card to "In Progress" when starting
   - Research the vendor thoroughly
   - Create a markdown file using the template
   - Commit to this repo
   - Move card to "Complete" with a link to the file
   - Add a comment with key findings summary

3. **If blocked** (vendor info unavailable, need clarification):
   - Card moves to "Blocked" with explanation
   - You provide additional info or guidance
   - Returns to Queue when unblocked

## Repository Structure

```
vendor-spec/
├── vendors/          # Individual vendor markdown files
│   ├── salesforce.md
│   ├── hubspot.md
│   └── ...
├── templates/        # Template files
│   └── vendor-template.md
├── _integrations.md  # Cross-reference integration index
└── README.md         # This file
```

## Template Structure

Each vendor file includes:
- Overview & basic info
- Detailed pricing tiers with features
- Complete feature breakdown
- **Integration mappings** (what connects to what, and how)
- API & developer resources
- Evaluation notes & alternatives

## Trello Board

Access the board: https://trello.com/b/xYLraLGe/vendor-research-tracker

**Lists:**
- 📋 Queue - Vendors waiting for research
- 🔍 In Progress - Currently being researched
- ✅ Complete - Research done, filed committed
- ⏸️ Blocked - Need more information
