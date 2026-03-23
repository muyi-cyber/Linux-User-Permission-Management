#!/bin/bash
BASE_DIR="/secure_data"

#check effective user ID
if [[ $EUID -ne 0 ]]
then
	echo "Run as root"
fi

#Create Sub directories in secure data directory
mkdir -p $BASE_DIR/admin $BASE_DIR/dev $BASE_DIR/audit

#set ownership
chown root:admin $BASE_DIR/admin
chown root:dev $BASE_DIR/dev
chown root:audit $BASE_DIR/audit

#set permissions
chmod 770 $BASE_DIR/admin
chmod 750 $BASE_DIR/dev
chmod 740 $BASE_DIR/audit

echo "Permissions applied successfully"

