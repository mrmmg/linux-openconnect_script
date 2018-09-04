#!/usr/bin/expect
spawn ./setserver.sh
expect exact "Enter 'yes' to accept, 'no' to abort; anything else to view:\r"
send "yes\r"
expect exact "Usrename:\r"
#set your username here!
send "USERNAME\r"
expect exact "Password:\r"
#set your password here!
send "PASSWORD\r"
expect eof
sleep 1000000
