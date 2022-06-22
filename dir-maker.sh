#!/bin/bash
password="8049renu"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
sudo su
echo "$pass"
mkdir /etc/teleport
cd /etc/teleport
touch test.txt