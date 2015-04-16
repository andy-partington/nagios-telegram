#!/bin/bash 
NAGMSG=$1
#Path to Telegram CLI
cd /home/nagios/telegram
#Need to do it this way to give the CLI to respond, the -W activates the session, could do echo 'contact_list' or something instead, this maybe improved upon 
(sleep 5; echo "msg <user to message> $NAGMSG"; echo 'safe_quit';) | bin/telegram-cli -W