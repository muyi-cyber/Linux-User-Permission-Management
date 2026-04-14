#!/bin/bash
SSH_CONFIG="/etc/ssh/sshd_config"

#check effective user ID
if [[ $EUID -ne 0 ]]
then
	echo "Run as root"
	exit
fi

#create a backup file of the initial sshd config file
cp $SSH_CONFIG ${SSH_CONFIG}.bak

#configuration hardening
sed -i s'/^PermitRootLogin yes/PermitRootLogin no/' $SSH_CONFIG
sed -i s'/^PasswordAuthentication yes/PasswordAuthentication no/' $SSH_CONFIG
sed -i s'/^#ClientAliveInterval 0/ClientAliveInterval 300/' $SSH_CONFIG
sed -i s'/^#ClientAliveCountMax 0/ClientAliveCountMax 3/' $SSH_CONFIG

echo "AllowUsers adminuser" >> $SSH_CONFIG

#restart daemon
systemctl restart sshd

echo "SSH hardened successfully!"
