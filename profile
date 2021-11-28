# Modify this file to add this line in order to notify when anyone ssh into your router
# Path to file /etc/profile

TOKEN=""
ID=""
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="Someone ssh into your router with the following IP $(echo $SSH_CLIENT | awk '{ print $1}').">/dev/null 2>&1