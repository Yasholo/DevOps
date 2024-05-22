#!/bin/bash
sudo apt-get install mailutils
Recipient="myawesomeinbox@domain.tld"
Mysubject="Regarding our talk"
Mymessage="Call me"
`mail -s $Mysubject $Recipients <<< $Mymessage`
