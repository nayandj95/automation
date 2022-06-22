#!/bin/bash
password="8049renu"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
whoami
echo "$pass"
su -
apt remove htop