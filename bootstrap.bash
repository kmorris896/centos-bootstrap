#!/bin/bash -xe

echo "Setting bash to print commands as they are executed"
echo "and to fastfail when an error occurs."
# https://tldp.org/LDP/abs/html/options.html
set -xe


# https://idroot.us/install-apache-centos-9-stream/
echo "Installing OS Updates"
yum update -y

echo "Installing apache"
yum install -y httpd httpd-tools

echo "Verifying apache installation"
httpd -v

echo "Adding to startup"
systemctl start httpd
systemctl enable httpd

echo "Installing php"
yum install -y php

echo "Verifying php installation"
php --version

echo "Getting machine IP..."
IP_ADDRESS=`curl http://checkip.amazonaws.com`

echo "If everything installed correctly, you should be able"
echo "to visit the default website of httpd.  You can do this"
echo "by visiting http://${IP_ADDRESS}"
echo "Remember HTTP, not https as certificates need to be"
echo "installed seperately."

