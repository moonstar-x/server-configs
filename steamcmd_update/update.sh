#!/bin/bash

DIRECTORY=./scripts/

# SERVER_NAME
if [[ -z $1 ]]; then
	echo "[ * ] No server name was specified."
    exit 1
else
    for file in ${DIRECTORY}*.txt; do
        file_pref=${file/$DIRECTORY/}
        file_suff=${file_pref/.txt/}
        arrFiles+=("$file_suff")
    done
    if [[ " ${arrFiles[*]} " == *" $1 "* ]]; then
        SERVER_NAME=$1
    else
        echo "[ * ] Server name is not valid."
        exit 1
	fi
fi

# USERNAME
if [[ -n $2 ]]; then
    USERNAME=$2
else
    USERNAME="anonymous"
fi

echo "[ * ] Logging in as $USERNAME."
echo "[ * ] Updating $SERVER_NAME."

# SteamCMD runscript
./steamcmd.sh +login $USERNAME +runscript ./scripts/$SERVER_NAME.txt
