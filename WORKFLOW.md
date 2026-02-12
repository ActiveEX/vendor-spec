# Vendor Research Workflow

## Overview
This system researches SaaS vendors thoroughly, with extreme emphasis on integrations, and stores results in the GitHub repo as Obsidian-compatible markdown files.

## Critical Requirements
1. **Thorough** — Deep dive into every feature, pricing tier, and integration
2. **Accurate** — Cross-reference multiple sources, verify current pricing
3. **Cost-effective** — Minimize API calls, batch operations, use web_fetch strategically
4. **Integration-focused** — EXTREME emphasis on capturing ALL public integrations, including paginated lists

## Process Flow

### 1. Check Trello Queue
- Poll the "Queue" list for new cards
- Store queue state locally to avoid re-processing
- Process vendors in order (oldest first)

### 2. Move to "In Progress"
- Update card status via API
- Add comment: "🔍 Starting research..."

### 3. Vendor Research
- **Primary research sources:**
  - Official website
  - Pricing page
  - Integrations/partners page (**scan all pages if paginated**)
  - API documentation
  - Support/help docs
  - Product feature pages

- **Secondary sources (if needed):**
  - Reviews (G2, Capterra, TrustRadius)
  - Community forums
  - Recent news/announcements

- **Integration deep-dive:**
  - Check `/integrations`, `/partners`, `/marketplace` pages
  - Look for integration directories (often paginated!)
  - Scan through ALL pages of integrations
  - Document each integration with:
    - Type (native/API/webhook/third-party)
    - Direction (one-way/bi-directional)
    - What syncs
    - Setup complexity
    - Documentation links
  - Cross-reference discovered vendors with existing research queue

### 4. Cross-Reference Integrations
- For each integration partner discovered:
  - Check if already in repo (`vendors/` folder)
  - Check if already in Trello (any list)
  - If NEW → add to Trello Queue with label "discovered-integration"

### 5. Create Vendor File
- **CRITICAL:** Use template at `templates/vendor-template.md`
- **REFERENCE STANDARD:** Follow the EXACT structure and depth of `vendors/redtail-crm.md`
- Filename: `{vendor-name-slug}.md` (lowercase, hyphens)
- **REQUIRED SECTIONS (follow Redtail example exactly):**
  - Overview
  - Pricing Tiers (with annual AND monthly if available, user limits)
  - Key Features (Core, Advanced, Enterprise-Only, Limitations)
  - **Add-On Products & Services** (dedicated section for add-ons like AI features, document management, etc.)
  - Integrations:
    - Integration Overview summary
    - **5-7 key integrations documented in DETAIL** (Type, Direction, What it does, Data synced, Setup complexity, Limitations, Documentation)
    - Integration categories summary
    - Note any limitations in public documentation
  - API & Developer Info (detailed, note what's behind login)
  - Support & Documentation (comprehensive)
  - Evaluation Notes:
    - Pros (5+ items)
    - Cons (4+ items)
    - Alternatives (with brief comparisons)
    - **Use Cases - MUST have "Ideal For" and "Not Ideal For" subsections**
    - **Key Differentiators** (5 items)
  - References (Official Resources, Support, Parent Company, Additional Research Needed)
  - **Research Methodology Notes** (Sources Accessed, Limitations Encountered, Recommended Next Steps)
  - Footer with date, researcher, confidence level

**QUALITY STANDARD:** Every profile MUST match the thoroughness of the Redtail CRM profile. No shortcuts.

### 6. Commit to GitHub
- Create/update file in `vendors/` folder
- Commit message: `Add research: {Vendor Name}`
- Push to main branch

### 7. Update Trello Card
- Move to "Complete"
- Add comment with:
  - Link to committed file
  - Quick summary (3-5 bullets)
  - Count of integrations found
  - Any notable discoveries

### 8. Handle Blockers
- If vendor info unavailable or requires clarification:
  - Move to "Blocked"
  - Add comment explaining what's needed
  - Tag Joe if urgent

## Cost Optimization Strategies

### Web Research
- Use `web_fetch` for content extraction (cheaper than browser automation)
- Only use `browser` if:
  - Site blocks scrapers
  - JavaScript-heavy pagination required
  - Need to interact with UI elements

### Batch Operations
- Research 2-3 vendors in one session
- Batch GitHub commits when possible
- Minimize Trello API calls (batch card moves)

### Token Management
- Avoid reading entire docs into context
- Extract key sections only
- Use summaries for large pages
- Cache vendor research notes locally during session

## File Structure

```
vendor-research/
├── credentials.json          # API keys (git-ignored, already created)
├── WORKFLOW.md              # This file
├── state/
│   ├── queue-state.json     # Last processed queue state
│   ├── vendor-index.json    # All known vendors (for cross-ref)
│   └── session-notes/       # Temp research notes per session
└── scripts/
    ├── check-queue.sh       # Poll Trello for new vendors
    ├── commit-vendor.sh     # Push to GitHub
    └── update-card.sh       # Update Trello card status
```

## Quality Checklist

Before marking "Complete" - **EVERY item must be checked:**

### Structure & Completeness
- [ ] Follows `vendors/redtail-crm.md` structure EXACTLY
- [ ] All sections from template present
- [ ] Filename uses lowercase-hyphen convention (e.g., `wealthbox-crm.md`)
- [ ] Date is current
- [ ] Confidence level statement at bottom

### Pricing
- [ ] All tiers documented with names and features
- [ ] Both annual AND monthly pricing (if available)
- [ ] User limits specified
- [ ] Free trial details included
- [ ] Notes on pricing section completed

### Features
- [ ] Core capabilities listed
- [ ] Advanced features (tier-specific)
- [ ] Enterprise-only features
- [ ] Limitations documented

### Add-Ons
- [ ] **Dedicated "Add-On Products & Services" section exists**
- [ ] Each add-on has: What it does, Key Features, Pricing, Use Cases
- [ ] (N/A if no add-ons available)

### Integrations
- [ ] Integration overview with total count
- [ ] **5-7 key integrations documented IN DETAIL** (Type, Direction, What it does, Data synced, Setup complexity, Limitations, Documentation link)
- [ ] NOT just a long list - select most important ones for deep analysis
- [ ] Integration categories summarized
- [ ] Note on public documentation limitations (if any)

### API & Developer
- [ ] API availability documented
- [ ] Developer portal info
- [ ] Rate limits / auth methods (or note if behind login)
- [ ] Documentation quality assessment

### Support
- [ ] All support channels listed
- [ ] Documentation resources
- [ ] Training options
- [ ] Community/learning resources

### Evaluation
- [ ] **Pros:** 5+ items
- [ ] **Cons:** 4+ items
- [ ] **Alternatives:** List with brief comparisons
- [ ] **Use Cases:** Broken into "Ideal For" AND "Not Ideal For"
- [ ] **Key Differentiators:** 5 specific items

### References
- [ ] Official resources (website, pricing, products)
- [ ] Support portal and contact info
- [ ] Parent company info (if applicable)
- [ ] Additional research needed items listed

### Methodology
- [ ] **Research Methodology Notes section at end**
- [ ] Sources accessed documented
- [ ] Limitations encountered noted
- [ ] Recommended next steps listed (3-5 items)

### Cross-Reference
- [ ] New vendors from integrations added to Trello queue (if not already present)

## Daily Routine

### Morning Check (via heartbeat)
1. Check Trello queue for new additions
2. Process 1-2 vendors if queue has items
3. Update memory notes with progress

### Ad-hoc Research
- Joe may request priority research
- These get moved to top of queue
- Still follow same thorough process

## Notes on Integration Research

**Common patterns:**
- `/integrations` or `/partners` pages
- `/marketplace` for app ecosystems
- `/developers` for API documentation
- `/ecosystem` for partner programs

**Pagination indicators:**
- "Load more" buttons
- Page numbers (1, 2, 3...)
- "See all integrations" links
- Category filters (may hide some)

**Don't miss:**
- Beta integrations
- Regional-specific integrations
- Industry-specific partnerships
- API-only integrations (may not be in UI)

## Emergency Procedures

**If GitHub API fails:**
- Store research in `vendor-research/pending/` locally
- Retry commit later
- Log issue in daily memory

**If Trello API fails:**
- Continue research without status updates
- Batch update when API returns
- Don't lose research work

**If blocked on vendor info:**
- Document what's available
- Mark clearly what's missing
- Move to "Blocked" with explanation
- Continue to next vendor
