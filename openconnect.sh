#!/usr/bin/expect
spawn ./setserver.sh
#expect exact "[sudo] password for mmg:\r"
#send "toor\r"
expect exact "Enter 'yes' to accept, 'no' to abort; anything else to view:\r"
send "yes\r"
expect exact "Usrename:\r"
send "ir388476\r"
expect exact "Password:\r"
send "mrmmg127\r"
expect eof
sleep 1000000

