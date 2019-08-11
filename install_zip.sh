#!/bin/bash
#Install Http server
yum install -y httpd git
sudo cd /var/www/html
git clone $GIT_URL
rm -rf .git
systemctl restart httpd
