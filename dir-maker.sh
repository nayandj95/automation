#!/bin/bash
password="12345678"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
whoami
echo "$pass"
su -
apt remove htop