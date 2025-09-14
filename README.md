## Salesforce Web-to-Lead Mini Funnel
A ligthweight implementation of Salesforce **Web-to-Lead**
This project demonstrate how to capture lead data from an external form and automatically create a Lead record in Salesforce.
---

## Overview
- Collects lead details via a responsive HTML form.
- Submits data securely to Salesforce using **Web-to-Lead**.
- Redirects users to a custom thank you page after submission.
- Associates new leads with a scpecific **Campaign**.
- Sends an automated **Welcome Email** to the user.
- 

## How it works
1. **Form Submission**
   - Users fill out 'web-to-lead-form.html'.
   - The form posts data to Salesforce's Web-to-Lead endpoint.
2. **Salesforce Processing**
   - Salesforce creates a new **Lead record** with the submitted data.
   - The lead is automatically **added to a Campaign** using the 'Campaign_ID'.
   - A **Welcome Email** is sent via a Flow.
3. **User Experience**
   - After submission, users are redirected to 'thank-you.html'.
   - They receive a Welcome Email.

## Setup
### 1. Clone the Repository
'''bash 
git clone https://github.com/<your-username>/<your-repo-name>.git
cd <your-repo-name>

### 2. Create the Campaign Record
Create a Campaign called 'Mini Funnel'

### 3.Configure the form
Open docs/web-to-lead-form.html and update the hidden fields:

 name="oid" value="YOUR_SALESFORCE_ORG_ID"
 name="retURL" value="thank-you.html"
 name="campaign_ID" value="YOUR_CAMPAIGN_ID"
- YOUR_SALESFORCE_ORG_ID -> Org ID (Setup-> Company Information)
- YOUR_CAMPAIGN_ID -> Campaign ID from a Campaign called 'Mini Funnel' on your org.

### 4.Deploy files
Deploy the contents of the force-app\main\default folder to your org.

### 5.Test Locally
- Open docs/web-to-lead-form.html in a browser.
- Fill out and submit the form
- Verify in Salesforce:
  - Lead Record is created.
  - Lead appears under the Campaign.
  - Welcome Email is received.
- User is redirected to thank-you.html 

  
   

 
  
