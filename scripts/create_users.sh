#!/bin/bash
#reads contents of the file in a numerical array
readarray accounts< <(cat ./users.txt)

#iterate over the array
for account in "${accounts[@]}"
do
	user=$(echo $account | cut -d: -f1)
	group=$(echo $account | cut -d: -f2)
	
	#To check if group doesn't exist
	if [[ -z "$(grep -w $group /etc/group)" ]]
	then
		groupadd $group
		echo "Group $group added successfully!"
	else
		echo "Group $group already exists!"
	fi
	
	#To check if user doesn't exist
	if [[ -z "$(grep -w $user /etc/passwd)" ]]
	then
		useradd -G $group $user
		echo "User $user added successfully!"
	else
		echo "User $user already exists!"
	fi
	
	echo "#############################"
	sleep 1

done

