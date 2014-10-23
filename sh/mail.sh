#!/bin/bash

#set -x

host=${HOSTNAME}
subject="[Workspace] $1"
content="$2\n\nFrom $host\n"
attach="$3"
mailto=username@server.com

# no argument
if [ $# -lt 1 ]
then
#	echo "usage: sendmail subject"
#	echo "       sendmail subject content"
#	echo "       sendmail subject content attach"
	subject="$subject""Empty message"
fi

# send without attachment
if [ $# -lt 3 ]
then
	echo -e "$content" | mutt -s "$subject" $mailto
fi

# send with attchment
if [ $# -gt 2 ]
then
	content="Attachment: $attach\n\n""$content"
	echo -e "$content" | mutt -s "$subject" -a $attach $mailto
fi
