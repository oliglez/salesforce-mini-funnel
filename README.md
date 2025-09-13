## Salesforce Web-to-Lead Mini Funnel
A ligthweight implementation of Salesforce **Web-to-Lead**
This project demonstrate how to capture lead data from an external form and automatically create a Lead record in Salesforce.
---

## Overview
- Collects lead details via a responsive HTML form.
- Submits data securely to Salesforce using **Web-to-Lead**.
- Redirects users to a custom thank you page after submission.
- Designed for easy local testing and Salesforce Integration.

## How it works
1. **Form Submission**
   - Users fill out 'web-to-lead-form.html'.
   - The form posts data to Salesforce's Web-to-Lead endpoint.
2. **Salesforce Processing**
   - Salesforce creates a new **Lead record** with the submitted data.
   - The lead is automatically **added to a Campaign** using the 'Campaign_ID'.
3. **User Experience**
   - After submission, users are redirected to 'thank-you.html'.

## Setup
### Clone the Repository
'''bash 
git clone https://github.com/<your-username>/<your-repo-name>.git
   

 
  
