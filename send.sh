#!/bin/bash
# function : to read the userlist and run .exp

#to produce ssh-keygen
expect ssh1.exp

cat ./userlist|while read line
do
	ip=`echo $line|awk '{print $1}'`
	user=`echo $line|awk '{print $2}'`
	pass=`echo $line|awk '{print $3}'`
	expect ./send-ssh-key.exp $ip $user $pass
#run the .exp to copy sshkey from here

#to record the message to log 
	if [ $? -eq 0 ]
	then
		echo $ip had copy success>>./ssh_cp_log.sh
	else
		echo $ip fail!>>./ssh_cp_log.sh
	fi
done

