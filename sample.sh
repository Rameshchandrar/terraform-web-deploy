#!/bin/bash

yum update -y
yum install httpd git -y
systemctl start httpd
systemctl enable httpd

cd /var/www/html/
git clone https://github.com/Rameshchandrar/Web-Tech.git .
systemctl restart httpd
