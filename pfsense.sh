#!/bin/bash 
#	@Author : Carlos Franisco Silva Junior
#	 send telegram notify script.

day=`date +"%m-%d-%y"` 
hour=`date +"%T"`


sendMsg(){

        local   token="000"
        local   chatID="000"
        local   msg=$1
        curl -s -X POST "https://api.telegram.org/bot$token/sendMessage" -d "chat_id=$chatID&text=""$msg"""  > /dev/null
}

alert=$day"-"$hour"
	PFsense Login:
	IP: $1
	Login: $2
	Status:$3 "

sendMsg "$alert"
