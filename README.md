## 📌 Project Overview
This project demonstrates proficiency in Linux system administration, security hardening, and Bash scripting. It simulates a real-world enterprise environment where a System Administrator must automate user onboarding, enforce Role-Based Access Control (RBAC), and secure the server against unauthorized access.
## 🛠 Features
• User & Group Automation: Bash scripts to provision users and organize them into functional groups (e.g., IT, Finance, HR).
• Permissions Logic: Implementation of "Least Privilege" access using chmod and chown to protect sensitive directories.
• SSH Hardening: Security configurations to disable root login and enforce key-based authentication.
• System Auditing: A log analysis tool that parses /var/log/auth.log to identify failed login attempts and potential brute-force attacks.
## 📁 Repository Structure
• scripts/: Contains the automation scripts (.sh).
• configs/: Example hardened configuration files (e.g., sshd_config).
• docs/: Detailed breakdown of commands and security logic.
## 🚀 How It Works
1. Provisioning: Run the setup_users.sh script to create the environment.
2. Hardening: Run secure_ssh.sh to update the server's security posture.
3. Auditing: Execute analyze_logs.sh to generate a report of recent security events.
## 📝 Key Commands Mastered
• Account Management: useradd, usermod, groupadd, passwd.
• Permissions: chmod (Symbolic & Numeric), chown, chgrp, umask.
• Security Tools: ssh-keygen, grep, awk, lastlog.
