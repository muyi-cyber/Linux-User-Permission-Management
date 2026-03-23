#!/bin/bash

INPUT_FILE="../samples/users.txt"

if [[ $EUID -ne 0 ]]; then
  echo "Run as root or with sudo"
  exit 1
fi

if [[ ! -f "$INPUT_FILE" ]]; then
  echo "Users file not found!"
  exit 1
fi

while IFS=: read -r username group; do
  if id "$username" &>/dev/null; then
    echo "User $username already exists"
  else
    useradd -m -s /bin/bash "$username"
    echo "$username:TempPass123" | chpasswd
    echo "Created user $username"
  fi

  if getent group "$group" &>/dev/null; then
    usermod -aG "$group" "$username"
  else
    groupadd "$group"
    usermod -aG "$group" "$username"
  fi

  echo "Assigned $username to group $group"

done < "$INPUT_FILE"
