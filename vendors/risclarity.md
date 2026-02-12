# Risclarity

## Company Information

**Name:** Risclarity  
**Website:** https://www.risclarity.com/  
**Category:** Data Integration & Wealth Reporting Platform  

## Support Contact

**Email:** contact@risclarity.com  
**Phone:** 844-598-1100  

## Description

Risclarity is a financial technology company providing data integration and wealth reporting solutions for multi-family offices and registered investment advisor (RIA) firms. The platform specializes in interconnecting existing technology systems through a centralized data hub, enabling seamless integration between portfolio accounting, general ledger, CRM, attribution systems, financial institutions, and custodians.

The company offers comprehensive portfolio accounting capabilities designed to be flexible and adjustable to complex family structures and reporting needs, allowing wealth management firms to provide holistic client service and scale their operations.

## Pricing

| Tier | Price | Notes |
|------|-------|-------|
| **Custom Pricing** | Contact for quote | Pricing is not publicly disclosed. Quote-based on firm size, number of integrations, and service level requirements. |

**Free Trial:** Not publicly advertised (contact sales for demo)  
**Notes on Pricing:**
- Enterprise/custom pricing model typical for multi-family office and RIA solutions
- Pricing varies based on:
  - Firm size and AUM
  - Number of integrations required
  - Specific modules/solutions needed (GL Link, Re-Allocator, etc.)
  - Service level (platform-only vs. platform + back office services)
- Contact: 844-598-1100 or contact@risclarity.com

## Key Features

### Core Capabilities
- **DataHub Platform:** Centralized data integration hub connecting portfolio accounting, general ledger, CRM, custodians, and financial institutions
- **Data Aggregation:** Consolidate client investment data from custodians, alternative investments, and 3rd-party sources
- **Portfolio Accounting:** Flexible system adjustable to complex family structures and reporting needs
- **Client Reporting:** Customized wealth management and performance reporting
- **Custom Dashboards:** Centralized access to data from disparate systems with workflow integration

### Advanced Features
- **GL Link:** Automated investment data flow into financial accounting systems (reduces manual entry by 20-40 hours/month)
- **Re-Allocator:** Family office-specific rebalancing workflow tool with automated asset allocation shifting
- **New Account Onboarding:** One-click CRM integration for automated form population and e-signature workflow
- **Management Reporting:** Business reports combining financial and non-financial data from all systems
- **CRM Integrations:** Bi-directional sync with Salesforce, Practifi, and other CRMs

### Enterprise-Only Features
- **Back Office Services:** Dedicated client service team for account reconciliation, data management, and troubleshooting
- **Custom Solutions:** Platform can be extended and configured for firm-specific needs
- **API Integration:** Secure and scalable API for custom workflows

### Limitations
- No public pricing transparency (custom quotes only)
- Platform complexity may require dedicated IT resources or Risclarity's service team
- Primarily designed for multi-family offices and larger RIAs (may not be cost-effective for small firms)
- Integration setup can be time-intensive depending on existing tech stack
- Some features require professional services engagement

## Add-On Products & Services

### GL Link
**What it does:** Automates the flow of investment data from portfolio accounting systems into general ledger systems, converting single-entry investment transactions into dual-entry financial accounting entries.

**Key Features:**
- Secure and scalable API integration
- Advanced mapping engine for transaction categorization
- Cost basis tracking and reporting
- Multi-currency transaction support
- Automated reconciliation

**Pricing:** Included in custom pricing package (contact sales)

**Use Cases:**
- Family offices requiring investment-aware general ledger
- Firms needing to reduce manual data entry (20-40 hours/month savings)
- Organizations requiring holistic financial reporting combining investment and operational data
- Tax preparation workflow optimization

### Re-Allocator
**What it does:** Family office-specific portfolio rebalancing tool that reduces Excel dependency and automates asset allocation shifting and trade generation.

**Key Features:**
- Automated asset allocation analysis
- Trade order generation
- Multi-account rebalancing workflows
- Integration with portfolio accounting systems

**Pricing:** Included in custom pricing package (contact sales)

**Use Cases:**
- Family offices managing complex multi-account structures
- Firms requiring systematic rebalancing workflows
- Organizations seeking to reduce manual rebalancing processes

### Back Office Services
**What it does:** Dedicated client service team providing account reconciliation, data management, and troubleshooting support.

**Key Features:**
- Dedicated service team
- Account reconciliation services
- Data quality management
- Integration troubleshooting
- Ongoing platform support

**Pricing:** Custom pricing based on service level agreement

**Use Cases:**
- Firms requiring augmented back-office capacity
- Organizations transitioning to new technology platforms
- Family offices seeking to focus internal resources on client-facing activities

### Consulting Services
**What it does:** Professional services for system optimization, workflow design, and platform configuration.

**Key Features:**
- Technology stack assessment
- Workflow optimization
- Custom integration design
- Training and onboarding
- Best practice implementation

**Pricing:** Project-based or retainer pricing (contact sales)

**Use Cases:**
- Firms implementing new technology systems
- Organizations requiring custom integration development
- Family offices optimizing existing workflows

---

## Integration Overview

**Total Integrations:** 8 primary ecosystem partners + custom integrations via API

Risclarity's DataHub platform serves as a centralized data integration hub, connecting portfolio accounting, general ledger, CRM, custodians, and other wealth management systems. The platform supports both pre-built integrations with key ecosystem partners and custom integrations via secure API connections.

### Key Integration Partners

1. **AgilLink** - General Ledger System
2. **Addepar** - Portfolio Accounting & Wealth Management Platform
3. **Black Diamond Wealth Platform (SS&C)** - Portfolio Management & Reporting
4. **Summitas** - Client Portal
5. **Alkymi** - AI-Powered Document Processing
6. **Practifi** - CRM
7. **BNY Mellon Pershing** - Custodian
8. **Envestnet Tamarac** - Portfolio Management

---

## Detailed Integration Documentation

### 1. AgilLink (General Ledger)

**Integration Type:** Native API Integration  
**Direction:** Bi-directional  
**Category:** General Ledger / Financial Accounting

**What it does:**  
Connects AgilLink's multi-entity general ledger system with portfolio accounting and investment reporting systems, enabling automated flow of investment transaction data into financial accounting records.

**Data Synced:**
- Investment transactions (buys, sells, dividends, interest)
- Cost basis data
- Account balances
- Multi-currency transactions
- Entity-level allocations

**Setup Complexity:** Medium  
- Requires mapping of investment accounts to GL accounts
- Chart of accounts configuration
- Multi-entity structure setup if applicable
- Initial reconciliation and validation

**Limitations:**
- Requires AgilLink subscription
- Custom mapping may be needed for complex entity structures
- Historical data migration requires professional services engagement

**Documentation:** https://www.risclarity.com/partners/agillink

---

### 2. Addepar (Portfolio Accounting & Wealth Management)

**Integration Type:** Native API Integration  
**Direction:** One-way (Addepar → Risclarity)  
**Category:** Portfolio Accounting / Wealth Management Platform

**What it does:**  
Extracts portfolio data from Addepar's wealth management platform into Risclarity's DataHub for integration with general ledger systems, enabling investment-aware financial reporting and holistic wealth analysis.

**Data Synced:**
- Portfolio holdings and positions
- Transaction history
- Performance data
- Account structure and hierarchy
- Client information

**Setup Complexity:** Medium  
- API credentials and authentication setup
- Data mapping configuration
- Account hierarchy alignment
- Reconciliation procedures

**Limitations:**
- Requires Addepar subscription and API access
- One-way integration (Addepar is source of truth)
- May not include all custom Addepar attributes without additional configuration

**Documentation:** https://www.risclarity.com/partners/addepar

---

### 3. Black Diamond Wealth Platform (SS&C)

**Integration Type:** Native API Integration  
**Direction:** Bi-directional  
**Category:** Portfolio Management / Reporting / Rebalancing

**What it does:**  
Multi-workflow integration enabling general ledger data sync, advisor compensation reporting, and portfolio rebalancing workflows between Black Diamond and Risclarity's DataHub.

**Data Synced:**
- Portfolio data and holdings
- Transaction history
- Performance metrics
- Account information
- Billing and fee data
- Rebalancing recommendations

**Setup Complexity:** Medium to Hard  
- Multiple workflow configurations available
- API authentication and data mapping
- Workflow-specific setup (GL Link, compensation reporting, rebalancing)
- May require professional services for complex implementations

**Limitations:**
- Requires Black Diamond Wealth Platform subscription
- Complex setup for firms using multiple Black Diamond workflows
- Some features may require Risclarity professional services

**Documentation:** https://www.risclarity.com/partners/black-diamond-wealth-platform

---

### 4. Summitas (Client Portal)

**Integration Type:** Native API Integration  
**Direction:** One-way (Risclarity → Summitas)  
**Category:** Client Portal / Client Reporting

**What it does:**  
Provides front-to-back solution by pushing consolidated wealth data from Risclarity's DataHub into Summitas's award-winning client portal, enabling comprehensive client-facing reporting.

**Data Synced:**
- Consolidated portfolio data
- Account aggregation across custodians
- Performance reporting data
- Client-specific reporting metrics

**Setup Complexity:** Medium  
- Data feed configuration
- Report template customization
- User access and permissions setup
- Client portal branding alignment

**Limitations:**
- Requires Summitas portal subscription
- One-way integration (Risclarity pushes data)
- Custom reporting requirements may need additional configuration

**Documentation:** https://www.risclarity.com/partners

---

### 5. Alkymi (AI-Powered Document Processing)

**Integration Type:** Third-party API Integration  
**Direction:** One-way (Alkymi → Risclarity)  
**Category:** Document Processing / Data Capture

**What it does:**  
Leverages Alkymi's artificial intelligence to automatically process unstructured investment documents (statements, confirmations, K-1s) and convert them into structured accounting data for import into Risclarity's DataHub.

**Data Synced:**
- Extracted transaction data from statements
- Alternative investment K-1 data
- Trade confirmations
- Corporate actions
- Unstructured investment document data

**Setup Complexity:** Medium  
- Document processing rules configuration
- Data validation workflows
- Exception handling procedures
- Training AI models for specific document types

**Limitations:**
- Requires Alkymi subscription
- AI accuracy depends on document quality and training
- May require human review for complex or unusual documents
- Best suited for high-volume document processing scenarios

**Documentation:** https://www.risclarity.com/partners

---

### 6. Practifi (CRM)

**Integration Type:** Native API Integration  
**Direction:** Bi-directional  
**Category:** CRM / Client Relationship Management

**What it does:**  
Two-way integration enabling CRM data to flow into Risclarity for new account setup and investment data to flow back into Practifi for enhanced CRM dashboards and client insights.

**Data Synced:**
- **From Practifi to Risclarity:** Client contact information, household structures, account relationships, opportunity data
- **From Risclarity to Practifi:** Portfolio values, investment holdings, performance data, account balances

**Setup Complexity:** Medium  
- API authentication for both directions
- Field mapping configuration
- Workflow automation setup (new account onboarding)
- Dashboard configuration in Practifi

**Limitations:**
- Requires Practifi CRM subscription
- Custom field mapping may be needed for firm-specific data structures
- New account onboarding workflow requires custodian integration setup

**Documentation:** https://www.risclarity.com/partners

---

### 7. BNY Mellon Pershing (Custodian)

**Integration Type:** Native API Integration  
**Direction:** One-way (Pershing → Risclarity)  
**Category:** Custodian / Clearing & Custody Services

**What it does:**  
Direct integration with Pershing's custody platform enabling automated data aggregation of client investment accounts, eliminating manual statement processing and ensuring real-time data availability.

**Data Synced:**
- Account holdings and positions
- Transaction history
- Cash balances
- Corporate actions
- Cost basis information

**Setup Complexity:** Medium to Hard  
- Custodian relationship verification
- API credentials and security protocols
- Account linking and reconciliation
- Data validation workflows

**Limitations:**
- Requires Pershing custody relationship
- Setup requires coordination between Risclarity, client firm, and Pershing
- May require Pershing approval and onboarding process
- Real-time data availability depends on Pershing API capabilities

**Documentation:** https://www.risclarity.com/partners

---

### 8. Envestnet Tamarac (Portfolio Management)

**Integration Type:** Native API Integration  
**Direction:** Bi-directional  
**Category:** Portfolio Management / Billing / Revenue Tracking

**What it does:**  
Comprehensive integration providing general ledger data sync, new account setup automation, and enhanced reporting for client billing and revenue tracking workflows.

**Data Synced:**
- Portfolio data and holdings
- Billing and fee calculations
- Revenue tracking data
- Account information
- Client data for new account setup

**Setup Complexity:** Medium  
- API authentication setup
- Workflow selection (GL sync, new account setup, billing)
- Data mapping configuration
- Reconciliation procedures

**Limitations:**
- Requires Envestnet Tamarac subscription
- Complex implementations may require professional services
- Multiple workflow configurations available (firms must select relevant workflows)

**Documentation:** https://www.risclarity.com/partners

---

## Integration Types Available

- **Native API Integrations:** Direct, secure API connections with ecosystem partners
- **Custom API Integrations:** Bespoke integrations via Risclarity's open API
- **Data File Integrations:** File-based data exchange for systems without API access
- **Manual Data Entry:** Supported for alternative investments and non-integrated sources

---

## Integration Categories

- **Portfolio Accounting Systems:** Addepar, Black Diamond, Envestnet Tamarac
- **General Ledger Systems:** AgilLink
- **CRM Systems:** Practifi (Salesforce mentioned but not detailed on partner page)
- **Custodians:** BNY Mellon Pershing (others supported via data aggregation)
- **Client Portals:** Summitas
- **Document Processing:** Alkymi
- **Alternative Investments:** Via data aggregation and file import

---

## API & Developer Information

**API Access:** Available for custom integrations  
**Authentication:** Secure API key-based authentication  
**Documentation:** Access provided to clients and partners (not publicly available)  

**Key API Capabilities:**
- Data extraction from DataHub
- Data import into DataHub
- Workflow automation
- Custom report generation

**Rate Limits:** Not publicly disclosed (contact Risclarity for technical specifications)

**Technical Requirements:**
- HTTPS/TLS for all connections
- API key management
- Compliance with Risclarity security standards

**Developer Portal:** Not publicly available; access provided through client engagement

**Note on Public Documentation:**  
Risclarity's API documentation and technical specifications are provided to clients and partners under NDA. Public information is limited to ecosystem partner descriptions and solution overviews.

---

## Support & Documentation

### Support Channels
- **Phone:** 844-598-1100
- **Email:** contact@risclarity.com
- **Client Service Team:** Dedicated team for operations support clients

### Documentation Resources
- **Partner Pages:** https://www.risclarity.com/partners
- **Solution Pages:** https://www.risclarity.com/solutions
- **Blog & Insights:** https://insights.risclarity.com

### Training & Onboarding
- Professional services engagement for platform implementation
- Consulting services for workflow optimization
- Ongoing support through client service team (for operations support clients)

### Community & Learning
- **Family Wealth Alliance Partnership:** Industry networking and education
- **Blog & Podcasts:** Insights on integration, technology, and family office best practices

---

## Evaluation Notes

### Pros
1. **Centralized Data Hub:** Single source of truth connecting disparate systems
2. **Best-of-Breed Approach:** Enables firms to use specialized tools while maintaining data integration
3. **Proven Ecosystem Partners:** Integrations with leading family office and RIA technology providers
4. **Customization:** Platform can be extended for firm-specific needs
5. **GL Link Value Prop:** Significant time savings (20-40 hours/month) by automating investment-to-GL data flow
6. **Back Office Services:** Option to augment internal resources with Risclarity's service team
7. **Family Office Focus:** Purpose-built for complex, multi-entity family office structures

### Cons
1. **No Public Pricing:** Custom quotes only, making cost comparison difficult
2. **Implementation Complexity:** May require professional services and dedicated IT resources
3. **Limited Public Documentation:** API docs and technical specs not publicly available
4. **Enterprise Focus:** May not be cost-effective for smaller RIAs
5. **Integration Dependencies:** Value depends on having subscriptions to ecosystem partner platforms

### Alternatives
- **Addepar:** Offers portfolio accounting with some native integrations (competes in portfolio accounting space)
- **Black Diamond Wealth Platform:** Provides its own ecosystem of integrations (competes in integration hub space)
- **Orion Advisor Tech:** Portfolio accounting and CRM with integration capabilities
- **eMoney Advisor:** Financial planning with CRM and limited integration capabilities
- **Custom Integration Development:** Firms with strong IT teams may build proprietary integration solutions

### Use Cases

**Ideal For:**
- Multi-family offices with complex, multi-entity structures
- RIAs requiring integration between portfolio accounting and general ledger systems
- Firms seeking to reduce manual data entry and improve operational efficiency
- Organizations using best-of-breed technology stack requiring centralized data hub
- Family offices managing alternative investments requiring document processing automation

**Not Ideal For:**
- Solo advisors or small RIAs with simple technology needs
- Firms without existing portfolio accounting or general ledger systems
- Organizations seeking all-in-one platform (Risclarity is integration layer, not replacement)
- Firms with limited IT resources unable to manage complex integrations
- Practices with low AUM or limited budget for enterprise technology solutions

### Key Differentiators
1. **Centralized DataHub Architecture:** Purpose-built integration platform (not a portfolio accounting system trying to do integration)
2. **Family Office Specialization:** Deep understanding of complex multi-entity, alternative investment-heavy family office needs
3. **GL Link Automation:** Unique focus on investment-aware general ledger integration (reduces 20-40 hours/month manual work)
4. **Operations Support Services:** Option to outsource back-office operations, not just technology
5. **Proven Enterprise Partnerships:** Trusted by major custodians and portfolio accounting platforms (BNY Pershing, Black Diamond, Addepar)

---

## References

### Official Resources
- **Website:** https://www.risclarity.com
- **Partners Page:** https://www.risclarity.com/partners
- **Solutions Overview:** https://www.risclarity.com/solutions
- **GL Link:** https://www.risclarity.com/gl-link
- **New Account Onboarding:** https://www.risclarity.com/new-account-set-up-onboarding

### Support
- **Contact Email:** contact@risclarity.com
- **Phone:** 844-598-1100

### Additional Research
- **Blog & Insights:** https://insights.risclarity.com
- **LinkedIn:** https://www.linkedin.com/company/risclarity

---

## Research Methodology Notes

### Sources Accessed
- Risclarity official website (home, partners, solutions, individual partner pages)
- GL Link and New Account Onboarding product pages
- Web search results for integration mentions and partner relationships
- Industry publications mentioning Risclarity integrations

### Limitations Encountered
- **Limited Public API Documentation:** Technical specifications, rate limits, and developer docs are not publicly available (provided under NDA to clients)
- **No Public Pricing:** All pricing is custom/quote-based with no public tier information
- **Partner Page Depth Varies:** Some partners (Black Diamond, Addepar, AgilLink) have dedicated pages; others (Tamarac, Summitas, Alkymi, Practifi) only mentioned on main partners page
- **Custodian Integration Details:** Beyond Pershing, specific custodian integrations not detailed on website (likely available via data aggregation but not documented publicly)
- **No Integration Marketplace:** Unlike some competitors, Risclarity doesn't publish a comprehensive integration directory or marketplace

### Research Completeness
- **Ecosystem Partners:** ✅ Comprehensive (8 primary partners documented)
- **Integration Technical Details:** ⚠️ Partial (limited by lack of public API documentation)
- **Pricing Information:** ❌ Not Available (custom pricing only)
- **User Reviews:** ❌ Not Researched (out of scope for this assessment)

### Recommended Next Steps
1. **Contact Risclarity Sales** for demo, pricing quote, and technical documentation access
2. **Reference Checks:** Speak with current clients using Risclarity (especially in comparable firm size/structure)
3. **Custodian Integration Verification:** Confirm supported custodians beyond Pershing for data aggregation
4. **API Documentation Review:** Request access to developer portal and API specs if custom integrations are needed
5. **Professional Services Scoping:** If complex implementation anticipated, engage Risclarity consulting team for assessment

---

**Research Date:** 2026-02-12  
**Researcher:** OpenClaw AI (Allan)  
**Confidence Level:** High for documented ecosystem partners; Medium for technical implementation details due to limited public API documentation  

---

**Status:** ✅ COMPLETE - Integrations Assessment Finished  
**Date:** 2026-02-12 1:40 PM EST  
**Next Steps:** Move to Integrations Complete column
