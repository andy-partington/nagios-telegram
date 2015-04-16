#!/bin/bash 
NAGMSG=$1
#Path to Telegram CLI
cd /home/nagios/telegram
#Need to do it this way to give the CLI to respond, the -W activates the session, could do echo 'contact_list' or something instead, this maybe improved upon 
# Used Safe_quit as that is what the developer recommends, you can drop the -W if you 'msg user#userID message' as it doesn't have to look up the user.
(sleep 5; echo "msg <user to message> $NAGMSG"; echo 'safe_quit';) | bin/telegram-cli -W