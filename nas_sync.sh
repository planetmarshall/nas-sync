#!/bin/bash
#
NAME=synology.lan
MAC_ADDRESS="00:11:32:AA:29:3A"
MOUNT_POINT=/mnt/synology

ping -c 1 $NAME > /dev/null

RESULT=$?

if [[ RESULT != 0 ]];
then
	wol ${MAC_ADDRESS}
fi

