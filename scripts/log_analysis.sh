#!/bin/bash
LOG_FILE="/var/log/auth.log"
OUTPUT_FILE="../logs/sample_log_output.txt"
if [[ ! -f $LOG_FILE ]]
then
	echo "Log file not found"
	exit
fi

echo "Failed Login attempts:" > $OUTPUT_FILE
grep -ai "Failed Password" $LOG_FILE >> $OUTPUT_FILE
echo -e "\nSuccessful Logins:" >> $OUTPUT_FILE
grep -ai "Accepted password" $LOG_FILE >> $OUTPUT_FILE

echo "Log analysis complete. Output saved to $OUTPUT_FILE"
