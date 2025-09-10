**What this is:** 
A compact Salesforce demo that shows a small marketing funnel: Web-to-Lead capture, auto-assignment to a campaign (via an Apex/Flow handler), an email template, and a simple lead automation. This repo contains metadata you can deploy to a Developer Edition org for a live demo.

**Features**
- Web-to-Lead form (hostable on GitHub Pages)
- `Funnel_Source__c` custom field on Lead
- `LeadTrigger` + `LeadHandler` Apex to add new leads to a "Mini Funnel" Campaign
- HTML email template used for a quick nurture message
- Flow design described in `diagrams/` and `screenshots/` (Flow should be created in Flow Builder - see instructions)

**How to deploy (high-level)**
1. Create a free Salesforce Developer Org (if you don't have one).
2. Install Salesforce CLI.
3. Authorize your org: `sfdx auth:web:login -a MyDevOrg`
4. From repo root: `sfdx force:source:deploy -p force-app/main/default`
5. Create a Campaign named **Mini Funnel** in the org.
6. Open the Web-to-Lead setup in the org and generate a Web-to-Lead form OR use `forms/web-to-lead-form.html` (replace `oid` and `campaign` values).

**Quick demo steps**
- Host `forms/web-to-lead-form.html` with GitHub Pages (or open locally) and submit to create a Lead.
- Check `Leads` in Salesforce; a CampaignMember should be created by the Apex handler if `Funnel_Source__c` exists.
- Use the email template to send a manual or automated follow-up, or wire it into a Flow.

**Files**
- `force-app/main/default/classes/` - Apex handler & tests
- `force-app/main/default/objects/Lead/fields/` - custom field metadata
- `forms/web-to-lead-form.html` - demo web form
- `diagrams/funnel-architecture.mmd` - mermaid architecture diagram

**CV blurb sample**
"Built a Salesforce mini-funnel that demonstrates Web-to-Lead capture, Flow/Apex automation, email templates, and campaign ROI tracking. Repo: `https://github.com/<your-username>/salesforce-mini-funnel`"

---

Replace placeholders (Org Id, Campaign Id, your GitHub username) before deploying. Follow the detailed step list in the project root to reproduce.
Sent from my iPhone