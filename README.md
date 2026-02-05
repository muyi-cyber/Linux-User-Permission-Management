# Linux User & Permission Management

## Project Overview
This project demonstrates fundamental Linux system administration skills, including user and group management, file permissions, SSH hardening, and basic log analysis. The goal is to create reusable scripts that automate common sysadmin tasks while providing clear explanations for learning purposes.

---

## Skills Demonstrated
- Bash scripting
- Linux command-line operations
- User and group management
- File ownership and permissions
- SSH security configuration
- System log analysis

---

## Environment & Prerequisites
* Operating System: Linux (Tested on Ubuntu/Debian)
* Setup: This project was developed and tested within a Virtual Machine (VM) environment.
* Dependencies:
    * sudo privileges for user and permission management.
    * openssh-server (required for the SSH hardening script).

---

## Project Structure
```text
Linux-User-Permission-Management/
├── scripts/
│   ├── create_users.sh          # Script to create users & groups
│   ├── manage_permissions.sh    # Script to set file ownership & permissions
│   ├── ssh_hardening.sh         # Script to secure SSH configuration
│   └── log_analysis.sh          # Script to parse system logs
├── logs/
│   └── sample_log_output.txt    # Sample output from log_analysis.sh
|__Samples/
      |___users.txt
└── screenshots/
├── ssh_config_before.png
|── ssh_config_after.png

```

## Usage Instructions

1. Create Users & Groups
```bash
chmod +x scripts/create_users.sh
./scripts/create_users.sh
```
• Adds new users and groups
 • Assigns users to groups
 • Deletes users if needed

2. Manage File Permissions
```bash
chmod +x scripts/manage_permissions.sh
./scripts/manage_permissions.sh
   ```
 • Change file ownership
 • Set read/write/execute permissions
 • Example of numeric vs symbolic permissions
 
3. SSH Hardening
```
chmod +x scripts/ssh_hardening.sh
sudo ./scripts/ssh_hardening.sh
```
 • Disable root login
 • Change default SSH port
 • Enforce key-based authentication

4. Log Analysis
```
chmod +x scripts/log_analysis.sh
./scripts/log_analysis.sh
```
• Parse system logs for login attempts
 • Highlight suspicious activity
 • Sample output available in logs/sample_log_output.txt

Explanation of Key Commands
```text
 • useradd, groupadd, usermod → Manage users and groups
 • chmod, chown, chgrp → Manage file permissions and ownership
 • ssh-keygen, sshd_config → Configure SSH security
 • journalctl, grep, tail → Analyze system logs
```
 
   
   


