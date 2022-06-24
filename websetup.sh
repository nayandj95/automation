#!/bin/bash
#Variables for the following setup
URl= 'https://www.tooplate.com/zip-template/2098_health.zip'
ART_NAME='2098_health'
TEMPDIR='/tmp/webfiles'

yum --help &> /dev/null
if [ $? -eq 0 ]; 
then
        #setting variable for centos
        PACKAGE_NAME="httpd wget unzip"
        SVC="httpd"

        echo "Running setup on Centos..."
        # installing Dependency
        echo "#############################################################"
        echo "Installing Packages...."
        echo "#############################################################"
        echo 8049renu | sudo -S -u root yum install $Packages -y >/dev/null
        echo

        # Start & enable service
        echo "#############################################################"
        echo "Start & Enable HTTPD service"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root systemctl start $SVC
        echo 8049renu | sudo -S -u root systemctl enable $SVC
        echo

        #creating Temp Directory
        echo "#############################################################"
        echo "Starting artifact development"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root mkdir -p $TEMPDIR
        echo 8049renu | sudo -S -u root cd $TEMPDIR
        echo

        echo 8049renu | sudo -S -u root wget $URl >/dev/null
        echo 8049renu | sudo -S -u root unzip $ART_NAME.zip> /dev/null
        echo 8049renu | sudo -S -u root cp -r $ART_NAME/* /var/www/html
        echo

        #restarting service
        echo "#############################################################"
        echo "Restarting HTTPD service"
        echo "#############################################################"
        echo 8049renu | sudo -S -u systemctl restart $SVC
        echo

        #clean up
        echo "#############################################################"
        echo "removing Temp files"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root rm $TEMPDIR
        echo

        echo 8049renu | sudo -S -u root systemctl status $SVC
        echo 8049renu | sudo -S -u root ls /var/www/html

else
        #setting variable for Debian
        PACKAGE_NAME="apache2 wget unzip"
        SVC="apache2"

        echo "Running setup on Centos..."
        # installing Dependency
        echo "#############################################################"
        echo "Installing Packages...."
        echo "#############################################################"
        echo 8049renu | sudo -S -u root apt update -y
        echo 8049renu | sudo -S -u root apt install $Packages -y >/dev/null
        echo

        # Start & enable service
        echo "#############################################################"
        echo "Start & Enable HTTPD service"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root systemctl start $SVC
        echo 8049renu | sudo -S -u root systemctl enable $SVC
        echo

        #creating Temp Directory
        echo "#############################################################"
        echo "Starting artifact development"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root mkdir -p $TEMPDIR
        echo 8049renu | sudo -S -u root cd $TEMPDIR
        echo

        echo 8049renu | sudo -S -u root wget $URl >/dev/null
        echo 8049renu | sudo -S -u root unzip $ART_NAME.zip> /dev/null
        echo 8049renu | sudo -S -u root cp -r $ART_NAME/* /var/www/html
        echo

        #restarting service
        echo "#############################################################"
        echo "Restarting HTTPD service"
        echo "#############################################################"
        echo 8049renu | sudo -S -u systemctl restart $SVC
        echo

        #clean up
        echo "#############################################################"
        echo "removing Temp files"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root rm $TEMPDIR
        echo

        echo 8049renu | sudo -S -u root systemctl status $SVC
        echo 8049renu | sudo -S -u root ls /var/www/html 
fi





