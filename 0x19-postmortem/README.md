
Postmortem Report: Outage of E-Commerce Website Checkout Service

Issue Summary

Duration: June 3, 2024, 08:30 AM - 10:15 AM (UTC)

Impact: The checkout service of our e-commerce website was down, preventing users from completing their purchases. Approximately 60% of users experienced issues with processing payments, leading to a significant drop in completed transactions and potential revenue loss.

Root Cause: A misconfiguration in the payment gateway API credentials following a routine update.

Timeline

08:30 AM: 🚨 Issue detected by a monitoring alert indicating a sudden drop in successful transactions.
08:35 AM: 🕵️ On-call engineer begins investigation by checking server health and logs.
08:45 AM: 💬 Customer complaints start coming in via support channels, confirming checkout issues.
09:00 AM: 🤔 Initial assumption: potential server overload or database issues due to high traffic.
09:15 AM: 🛑 Misleading path: Restarted the database server and web servers without any improvement.
09:30 AM: 📈 Escalation to the DevOps team to inspect load balancers and network configurations.
09:45 AM: 💡 Realization that recent update could have affected external integrations; focus shifts to payment gateway.
10:00 AM: 🔍 Confirmed that payment gateway API credentials were incorrectly configured during the update.
10:05 AM: 🔧 Correct credentials restored.
10:15 AM: ✅ Checkout service fully operational and monitoring confirms normal transaction levels.

Root Cause and Resolution

Root Cause

The root cause of the outage was an incorrectly configured API credential for our payment gateway. During a routine update, the credentials were mistakenly altered, leading to authentication failures and preventing the checkout service from processing payments.

Resolution

The resolution involved identifying the misconfigured credentials and restoring the correct ones. This allowed the checkout service to resume normal operations and process transactions successfully.


Corrective and Preventative Measures

Improvements and Fixes:

Credential Management: Implement a more robust credential management system to prevent unauthorized changes and ensure accuracy during updates.
Automated Testing: Enhance pre-deployment testing procedures to include validation of external API integrations.
Monitoring Enhancements: Improve monitoring to include specific checks for external service integrations to detect similar issues more quickly.
Task List:

Patch Nginx Server: Update Nginx configuration to log detailed API response codes for better diagnostics.
Add Monitoring: Implement monitoring on payment gateway API calls to detect and alert on authentication failures.
Credential Vault: Integrate a centralized, secure credential vault (e.g., HashiCorp Vault) to manage API credentials with automated rotation and auditing.
Pre-Deployment Tests: Develop automated tests to verify all third-party API integrations before deploying updates.
Incident Response Training: Conduct training sessions for the engineering team on effective incident response and debugging practices to handle similar issues more efficiently in the future.
Humor Break:

Why did the API credential go on vacation?

Because it needed some REST! 😅

By addressing these areas, we aim to reduce the risk of similar incidents occurring and improve our overall system reliability and response times.
