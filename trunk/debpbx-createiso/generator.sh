#!/bin/bash
#set -x

IFS=$'\x0A'$'\x0D'

if [ "$1" == "" -o "$2" == "" ]; then
	echo "Usage: $0 scrip-src script-dst"
	exit
fi

SCRIPT_SRC=$1
SCRIPT_DST=$2

if [ ! -f $SCRIPT_SRC ]; then
	echo "Sorce file doesn't exist!"
	exit
fi

> $SCRIPT_DST

TOTAL_LINES=$(cat $SCRIPT_SRC | wc -l)

COUNT=1;

for LINE in $(cat $SCRIPT_SRC); do

	if [ "$(echo $LINE | grep '^#TAG:.*$')" == "" ]; then
		echo "$LINE" >> $SCRIPT_DST
	else
		DESC=$(echo $LINE | cut -d':' -f2)
		PORC=$(( (COUNT * 100) / $TOTAL_LINES ))
		
		echo "echo \"$PORC\" | dialog --backtitle \"DebPBX - AutoInstall\" --gauge \"$DESC\" 10 70 0 >&2" >> $SCRIPT_DST

	fi
	COUNT=$(($COUNT+1))

done

echo "sleep 1" >> $SCRIPT_DST
echo "echo \"100\" | dialog --backtitle \"Complete\" --gauge \"DONE!\" 10 70 0 >&2" >> $SCRIPT_DST

chmod +x $SCRIPT_DST

