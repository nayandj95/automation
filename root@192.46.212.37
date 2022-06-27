#!/bin/bash
#Variables for the following setup
ART_NAME='2114_pixie'
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
        echo 8049renu | sudo -S -u root yum install -y $PACKAGE_NAME  >/dev/null
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

        echo 8049renu | sudo -S -u root wget https://www.tooplate.com/zip-templates/2114_pixie.zip >/dev/null
        echo 8049renu | sudo -S -u root unzip $ART_NAME.zip> /dev/null
        echo 8049renu | sudo -S -u root cp -r $ART_NAME/* /var/www/html
        echo

        #restarting service
        echo "#############################################################"
        echo "Restarting HTTPD service"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root systemctl restart $SVC
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

        echo "Running setup on Debian"
        # installing Dependency
        echo "#############################################################"
        echo "Installing Packages...."
        echo "#############################################################"
        echo 8049renu | sudo -S -u root apt update -y
        echo 8049renu | sudo -S -u root apt install $PACKAGE_NAME -y >/dev/null
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

        echo 8049renu | sudo -S -u root wget https://www.tooplate.com/zip-templates/2114_pixie.zip >/dev/null
        echo 8049renu | sudo -S -u root unzip $ART_NAME.zip> /dev/null
        echo 8049renu | sudo -S -u root cp -r $ART_NAME/* /var/www/html
        echo

        #restarting service
        echo "#############################################################"
        echo "Restarting HTTPD service"
        echo "#############################################################"
        echo 8049renu | sudo -S -u root systemctl restart $SVC
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





